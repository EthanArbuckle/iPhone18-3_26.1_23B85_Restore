id sub_24A9DA8AC(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_onReceiveAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connection] = 0;
  *&v2[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_connectionTask] = 0;
  *&v2[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_assertion] = 0;
  *&v2[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_presentedAlertIdentifiers] = MEMORY[0x277D84FA0];
  swift_unknownObjectWeakAssign();
  sub_24A9C2DDC(a2, &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore25NotificationServiceClient_service]);
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

uint64_t sub_24A9DA9A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A9DAA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A9DAAA4(uint64_t a1)
{
  v2 = type metadata accessor for AlertIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A9DAB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A9DAC48()
{
  result = qword_27EF82A78;
  if (!qword_27EF82A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF82A70, &unk_24AA013D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82A78);
  }

  return result;
}

uint64_t sub_24A9DACAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24A9DACFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24A9CBD30;

  return sub_24A9CF188(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A9DADD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24A9CBD30;

  return sub_24A9D5FFC(v2, v3, v4);
}

uint64_t sub_24A9DAE84()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24A9CBD30;

  return sub_24A9D7E9C(v2, v3, v5);
}

uint64_t sub_24A9DAF44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A9CBD30;

  return sub_24A9D7F84(a1, v4, v5, v7);
}

uint64_t sub_24A9DB010(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A9DB078(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A9CBD30;

  return sub_24A9CB688(a1, v5);
}

uint64_t sub_24A9DB130(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A9CB4BC;

  return sub_24A9CB688(a1, v5);
}

uint64_t sub_24A9DB1E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24A9CBD30;

  return sub_24A9D55C4(v2, v3, v4);
}

uint64_t sub_24A9DB29C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A9DB2E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24A9CBD30;

  return sub_24A9D4CA8(v2, v3, v5, v4);
}

uint64_t sub_24A9DB3B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24A9CBD30;

  return sub_24A9D3D3C(v2, v3, v5, v4);
}

uint64_t sub_24A9DB470()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24A9CBD30;

  return sub_24A9D2E80(v2, v3, v5, v4);
}

uint64_t sub_24A9DB530()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24A9CBD30;

  return sub_24A9D2608(v2, v3, v5, v4);
}

uint64_t sub_24A9DB5F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24A9CBD30;

  return sub_24A9D1D2C(v2, v3, v5, v4);
}

uint64_t objectdestroy_55Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A9DB6FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24A9CBD30;

  return sub_24A9D0F04(v2, v3, v4);
}

uint64_t objectdestroy_110Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A9DB800()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24A9CB4BC;

  return sub_24A9D0580(v2, v3, v5, v4);
}

uint64_t objectdestroy_59Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A9DB900()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A9DB938(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24A9CBD30;

  return sub_24A9CEE50(a1, a2, v7);
}

uint64_t sub_24A9DB9FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24A9CBD30;

  return sub_24A9CEC88(a1, a2, a3, v9);
}

uint64_t sub_24A9DBACC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24A9DBB14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A9DBB54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A9CBD30;

  return sub_24A9D629C(a1, v4, v5, v6);
}

uint64_t sub_24A9DBC08()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A9DBC50(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24A9CBD30;

  return sub_24A9D6CE4(a1, a2, v6, v7, v8);
}

uint64_t sub_24A9DBD10()
{
  MEMORY[0x24C2231C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_222(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of XPCServiceConfiguration.makeConnection()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24A9DBF9C;

  return v9(a1, a2);
}

uint64_t sub_24A9DBF9C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_24A9DC10C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24A9FEA90();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_24A9FEA80();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_24A9DC1E8()
{
  v0 = [objc_allocWithZone(type metadata accessor for ConversationChangeNotifier()) init];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 conversationManager];

  sub_24A9DC5E4();
  v3 = v0;
  v4 = sub_24A9FEDD0();
  [v2 addDelegate:v3 queue:v4];

  qword_27EF82AD0 = v3;
}

id ConversationChangeNotifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ConversationChangeNotifier.shared.getter()
{
  if (qword_27EF82690 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF82AD0;

  return v1;
}

uint64_t ConversationChangeNotifier.conversationManager(_:activeRemoteParticipantsChangedFor:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore26ConversationChangeNotifier_activeRemoteParticipantsChangedPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AE0, &qword_24AA00CD0);
  sub_24A9DC39C();
  return sub_24A9FEAF0();
}

unint64_t sub_24A9DC39C()
{
  result = qword_27EF82AE8;
  if (!qword_27EF82AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF82AE0, &qword_24AA00CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82AE8);
  }

  return result;
}

id ConversationChangeNotifier.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore26ConversationChangeNotifier_activeRemoteParticipantsChangedPublisher;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AE0, &qword_24AA00CD0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *&v0[v2] = sub_24A9FEAD0();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ConversationChangeNotifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A9DC5E4()
{
  result = qword_27EF82B58;
  if (!qword_27EF82B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF82B58);
  }

  return result;
}

unint64_t sub_24A9DC630()
{
  type metadata accessor for MessageService();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 2;
  result = sub_24A9DD644(MEMORY[0x277D84F90]);
  *(v0 + 120) = result;
  qword_27EF82BC0 = v0;
  return result;
}

uint64_t static MessageService.shared.getter()
{
  if (qword_27EF82698 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24A9DC6E0()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    LOBYTE(v1) = [objc_opt_self() isAvailable];
    *(v0 + 112) = v1;
  }

  return v1 & 1;
}

uint64_t sub_24A9DC720(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x2822009F8](sub_24A9DC744, v2, 0);
}

uint64_t sub_24A9DC744()
{
  v1 = v0[23];
  if ((sub_24A9DC6E0() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v2 = v0[23];
  swift_beginAccess();
  v3 = *(v2 + 120);
  if (*(v3 + 16))
  {
    v5 = v0[21];
    v4 = v0[22];

    v6 = sub_24A9DCCBC(v5, v4);
    if (v7)
    {
      v8 = *(*(v3 + 56) + v6);

      v9 = v8;
LABEL_6:
      v10 = v0[1];

      return v10(v9);
    }
  }

  v13 = v0[21];
  v12 = v0[22];
  v14 = objc_opt_self();
  v15 = sub_24A9FEC30();
  v0[24] = v15;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_24A9DC934;
  v16 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A48, &qword_24AA012A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24A9D53E0;
  v0[13] = &block_descriptor_0;
  v0[14] = v16;
  [v14 canMessageDestination:v15 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A9DC934()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24A9DCA28, v1, 0);
}

uint64_t sub_24A9DCA28()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 200);

  swift_beginAccess();
  v5 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 120);
  *(v1 + 120) = 0x8000000000000000;
  sub_24A9DD0A4(v4, v3, v2, isUniquelyReferenced_nonNull_native);
  *(v1 + 120) = v9;
  swift_endAccess();
  v7 = *(v0 + 8);

  return v7(v4);
}

void sub_24A9DCAF8()
{
  v0 = objc_opt_self();
  v1 = sub_24A9FEC30();
  v2 = sub_24A9FEC30();
  [v0 sendMessage:v1 to:v2];
}

uint64_t MessageService.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageService.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24A9DCC14(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24A9C3E08;

  return sub_24A9DC720(a1, a2);
}

unint64_t sub_24A9DCCBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24A9FF1E0();
  sub_24A9FECA0();
  v6 = sub_24A9FF210();

  return sub_24A9DCD4C(a1, a2, v6);
}

unint64_t sub_24A9DCD4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24A9FF170())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24A9DCE04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82BC8, &unk_24AA01738);
  v38 = a2;
  result = sub_24A9FF0B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_24A9FF1E0();
      sub_24A9FECA0();
      result = sub_24A9FF210();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_24A9DD0A4(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24A9DCCBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24A9DCE04(v16, a4 & 1);
      v20 = *v5;
      result = sub_24A9DCCBC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_24A9FF190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_24A9DD4DC();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t dispatch thunk of MessageServiceProtocol.available(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24A9DD740;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MessageService.available(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24A9C3E08;

  return v10(a1, a2);
}

void *sub_24A9DD4DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82BC8, &unk_24AA01738);
  v2 = *v0;
  v3 = sub_24A9FF0A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_24A9DD644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82BC8, &unk_24AA01738);
    v3 = sub_24A9FF0C0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24A9DCCBC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t FTNCallCenter.disconnect<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a5 + 168))(v9, a2, a3, a5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DD808(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_24A9FEEE0();
    v5 = v4;
    v6 = sub_24A9FEF50();
    v8 = v7;
    v9 = MEMORY[0x24C2227A0](v3, v5, v6, v7);
    sub_24A9C96CC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_24A9C96CC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_24A9FEEB0();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24A9C9720(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_24A9C96CC(v3, v5, v2 != 0);
  return v13;
}

void sub_24A9DD924(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCall_];

  *a2 = v4;
}

id (*sub_24A9DD99C(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 behavior];
  return sub_24A9DD9F0;
}

uint64_t sub_24A9DDA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.answer<A>(_:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.answer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 136))(v7, a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DDB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.answer<A>(with:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.answer<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_24A9FEE70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  v14 = *(*(a3 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v26 - v20;
  (*(v22 + 16))(v17, a1, a3);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v24(v13, 0, 1, AssociatedTypeWitness);
    (*(v18 + 32))(v21, v13, AssociatedTypeWitness);
    (*(a4 + 144))(v21, v26, a4);
    return (*(v18 + 8))(v21, AssociatedTypeWitness);
  }

  else
  {
    v24(v13, 1, 1, AssociatedTypeWitness);
    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_24A9DDE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.answerAsAudio<A>(_:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.answerAsAudio<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 152))(v7, a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DDF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.disconnect<A>(_:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.disconnect<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 160))(v7, a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DE09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.disconnect<A>(_:with:)(a1, a2, a3, AssociatedTypeWitness, a4);
}

uint64_t sub_24A9DE118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.unhold<A>(_:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.unhold<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 184))(v7, a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DE240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.canGroup<A, B>(_:with:)(a1, a2, a3, AssociatedTypeWitness, AssociatedTypeWitness, a4);
}

uint64_t FTNCallCenter.canGroup<A, B>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v8 = (*(a6 + 192))(v10, v10, a3, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t sub_24A9DE3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.group<A, B>(_:with:)(a1, a2, a3, AssociatedTypeWitness, AssociatedTypeWitness, a4);
}

uint64_t FTNCallCenter.group<A, B>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      (*(a6 + 200))(v9, v9, a3, a6);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DE558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.requestVideoUpgrade<A>(for:originatingUIType:)(a1, a2, a3, AssociatedTypeWitness, a4);
}

uint64_t FTNCallCenter.requestVideoUpgrade<A>(for:originatingUIType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a5 + 208))(v9, a2, a3, a5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DE698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.activeConversation<A>(for:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.activeConversation<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v6 = (*(a4 + 216))(v8, a2, a4);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_24A9DE7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.openShare<A>(for:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.openShare<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 240))(v7, a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DE8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.requestToShare<A>(for:in:)(a1, a2, a3, AssociatedTypeWitness, a4);
}

uint64_t FTNCallCenter.requestToShare<A>(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    (*(a5 + 248))(a1, v9, a3, a5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9DEA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return FTNCallCenter.requestToShareSupported<A>(for:)(a1, a2, AssociatedTypeWitness, a3);
}

uint64_t FTNCallCenter.requestToShareSupported<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v6 = (*(a4 + 256))(v8, a2, a4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void TUCallCenter.answerAsAudio(_:)()
{
  v1 = [v0 incomingVideoCall];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277D6EDC0]) initWithCall_];
    [v3 setBehavior_];
    [v0 answerWithRequest_];
  }
}

void TUCallCenter.openShare(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82900, &qword_24AA01280);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_24A9FEA40();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 activeConversationForCall_];
  if (v12)
  {
    v13 = v12;
    v19 = [v1 conversationManager];
    [v19 requestScreenSharingPickerForConversation:v13 withContentStyle:0];

    v14 = v19;
  }

  else
  {
    v15 = [a1 callUUID];
    sub_24A9FEC40();

    sub_24A9FE9E0();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_24A9DEEA4(v6);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v16 = [v1 conversationManager];
      v17 = sub_24A9FEA00();
      [v16 requestScreenSharingPickerForCallUUID:v17 withContentStyle:0];

      (*(v8 + 8))(v11, v7);
    }
  }
}

uint64_t sub_24A9DEEA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82900, &qword_24AA01280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void TUCallCenter.requestToShare(for:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 activeConversationForCall_];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 conversationManager];
    [v7 requestParticipantToShareScreen:a1 forConversation:v6];
  }
}

id TUCallCenter.requestToShareSupported(for:)(uint64_t a1)
{
  v2 = [v1 activeConversationForCall_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 activeRemoteParticipants];
  sub_24A9C27EC(0, &qword_27EF82878, 0x277D6EEA8);
  sub_24A9DF0C0();
  v5 = sub_24A9FED60();

  v6 = sub_24A9DD808(v5);

  if (v6)
  {
    v7 = [v6 capabilities];
    v8 = [v7 supportsRequestToScreenShare];

    v3 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

unint64_t sub_24A9DF0C0()
{
  result = qword_27EF82BD0;
  if (!qword_27EF82BD0)
  {
    sub_24A9C27EC(255, &qword_27EF82878, 0x277D6EEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82BD0);
  }

  return result;
}

id sub_24A9DF16C()
{
  v1 = [*v0 currentVideoCall];

  return v1;
}

uint64_t sub_24A9DF1C0(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, uint64_t *a5)
{
  v8 = [*v5 *a3];
  sub_24A9C27EC(0, a4, a5);
  v9 = sub_24A9FECE0();

  return v9;
}

id sub_24A9DF248()
{
  v1 = *v0;
  v2 = sub_24A9FEC30();
  v3 = [v1 callWithUniqueProxyIdentifier_];

  return v3;
}

uint64_t sub_24A9DF298(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v11[4] = sub_24A9DFBB4;
  v11[5] = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A9DF3EC;
  v11[3] = &block_descriptor_1;
  v7 = _Block_copy(v11);

  v8 = [v5 callsPassingTest_];
  _Block_release(v7);
  sub_24A9C27EC(0, &qword_27EF826C8, 0x277D6EDE0);
  v9 = sub_24A9FECE0();

  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A9DF3EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  LOBYTE(v2) = v3();

  return v2 & 1;
}

id sub_24A9DF430()
{
  v1 = [*v0 incomingVideoCall];

  return v1;
}

id sub_24A9DF4B0(uint64_t a1)
{
  v2 = [*v1 dialWithRequest_];

  return v2;
}

void sub_24A9DF53C()
{
  v1 = *v0;
  v2 = [*v0 incomingVideoCall];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D6EDC0]) initWithCall_];
    [v4 setBehavior_];
    [v1 answerWithRequest_];
  }
}

id sub_24A9DF69C(uint64_t a1)
{
  v2 = [*v1 activeConversationForCall_];

  return v2;
}

id sub_24A9DF6D8()
{
  v1 = [*v0 conversationManager];

  return v1;
}

id sub_24A9DF710()
{
  v1 = [*v0 providerManager];

  return v1;
}

void sub_24A9DF76C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = [*v2 activeConversationForCall_];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 conversationManager];
    [v7 requestParticipantToShareScreen:a1 forConversation:v6];
  }
}

id sub_24A9DF848()
{
  v1 = [*v0 callServicesClientCapabilities];

  return v1;
}

void sub_24A9DF890()
{
  v1 = *v0;
  v2 = sub_24A9FEC30();
  [v1 sendReceptionistReply_];
}

uint64_t sub_24A9DFBB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DownstreamAction.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id DownstreamAction.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownstreamAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DownstreamAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownstreamAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double ResizeViewAction.size.getter()
{
  result = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size);
  v2 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size + 8);
  return result;
}

id ResizeViewAction.__allocating_init(size:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ResizeViewAction.init(size:)(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ResizeViewAction.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  [a1 decodeSize];
  v4 = &v3[OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size];
  *v4 = v5;
  *(v4 + 1) = v6;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DownstreamAction();
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id ResizeViewAction.init(coder:)(void *a1)
{
  [a1 decodeSize];
  v3 = &v1[OBJC_IVAR____TtC24FaceTimeNotificationCore16ResizeViewAction_size];
  *v3 = v4;
  *(v3 + 1) = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DownstreamAction();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

double StartDraggingAction.frame.getter()
{
  result = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame);
  v2 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame + 8);
  v3 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame + 16);
  v4 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame + 24);
  return result;
}

double StartDraggingAction.position.getter()
{
  result = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position);
  v2 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position + 8);
  return result;
}

uint64_t StartDraggingAction.keypadDialed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed);
  v2 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed + 8);

  return v1;
}

id StartDraggingAction.__allocating_init(frame:position:showingRTT:showingKeypad:keypadDialed:showingLiveReply:showingReceptionist:)(int8x16_t *a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, double a8, double a9)
{
  v26 = *a1;
  v27 = a1[1];
  v19 = objc_allocWithZone(v9);
  if (a1[2].i8[0])
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21 = vdupq_n_s64(v20);
  v22 = &v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame];
  *v22 = vbicq_s8(v26, v21);
  v22[1] = vbicq_s8(v27, v21);
  v23 = &v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position];
  *v23 = a8;
  v23[1] = a9;
  v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingRTT] = a2;
  v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingKeypad] = a3;
  v24 = &v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed];
  *v24 = a4;
  v24[1] = a5;
  v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingLiveReply] = a6;
  v19[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingReceptionist] = a7;
  v28.receiver = v19;
  v28.super_class = v9;
  return [(int8x16_t *)&v28 init:*&v26];
}

id StartDraggingAction.init(frame:position:showingRTT:showingKeypad:keypadDialed:showingLiveReply:showingReceptionist:)(__int128 *a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  v20 = 0uLL;
  v21 = 0uLL;
  if ((a1[2] & 1) == 0)
  {
    v20 = *a1;
    v21 = a1[1];
  }

  v22 = &v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame];
  *v22 = v20;
  v22[1] = v21;
  v23 = &v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position];
  *v23 = a8;
  v23[1] = a9;
  v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingRTT] = a2 & 1;
  v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingKeypad] = a3 & 1;
  v24 = &v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed];
  *v24 = a4;
  v24[1] = a5;
  v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingLiveReply] = a6 & 1;
  v9[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingReceptionist] = a7 & 1;
  v26.receiver = v9;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, sel_init);
}

Swift::Void __swiftcall StartDraggingAction.encode(with:)(NSCoder with)
{
  [(objc_class *)with.super.isa encodeRect:*(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame), *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame + 8), *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame + 16), *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame + 24)];
  v3 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position);
  v4 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position + 8);
  v5 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodePoint:v5 forKey:v3, v4];

  v6 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingRTT);
  v7 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v6 forKey:v7];

  v8 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingLiveReply);
  v9 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v8 forKey:v9];

  v10 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingReceptionist);
  v11 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v10 forKey:v11];

  v12 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingKeypad);
  v13 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v12 forKey:v13];

  if (*(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed + 8))
  {
    v14 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed);
    v15 = sub_24A9FEC30();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();
}

id StartDraggingAction.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24A9E1CB0(a1);

  return v4;
}

id StartDraggingAction.init(coder:)(void *a1)
{
  v2 = sub_24A9E1CB0(a1);

  return v2;
}

uint64_t NoticeButtonClickAction.noticeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_noticeIdentifier;
  v4 = sub_24A9FEA40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NoticeButtonClickAction.buttonIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier + 8);

  return v1;
}

id NoticeButtonClickAction.__allocating_init(noticeIdentifier:buttonIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_noticeIdentifier;
  v9 = sub_24A9FEA40();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  v11 = &v7[OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v10 + 8))(a1, v9);
  return v12;
}

id NoticeButtonClickAction.init(noticeIdentifier:buttonIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_noticeIdentifier;
  v9 = sub_24A9FEA40();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  v11 = &v3[OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v10 + 8))(a1, v9);
  return v12;
}

Swift::Void __swiftcall NoticeButtonClickAction.encode(with:)(NSCoder with)
{
  v2 = v1;
  sub_24A9FE9F0();
  v4 = sub_24A9FEC30();

  v5 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier);
  v7 = *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier + 8);
  v8 = sub_24A9FEC30();
  v9 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
}

id NoticeButtonClickAction.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF82900, &qword_24AA01280);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_24A9FEA40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
  v13 = swift_allocObject();
  v31 = xmmword_24AA00690;
  *(v13 + 16) = xmmword_24AA00690;
  v14 = sub_24A9E1EF8();
  *(v13 + 32) = v14;
  sub_24A9FEE40();

  if (!v37)
  {
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_24A9FE9E0();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v15 = &unk_27EF82900;
    v16 = &qword_24AA01280;
    v17 = v7;
LABEL_10:
    sub_24A9C994C(v17, v15, v16);
    goto LABEL_11;
  }

  (*(v9 + 32))(v12, v7, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = v31;
  *(v18 + 32) = v14;
  sub_24A9FEE40();

  if (!v37)
  {
    (*(v9 + 8))(v12, v8);
LABEL_9:
    v15 = &qword_27EF826D0;
    v16 = "*4";
    v17 = &v36;
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v19 = v34;
    v20 = v35;
    (*(v9 + 16))(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_noticeIdentifier, v12, v8);
    v21 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier);
    *v21 = v19;
    v21[1] = v20;
    v22 = type metadata accessor for DownstreamAction();
    v33.receiver = v2;
    v33.super_class = v22;
    v23 = objc_msgSendSuper2(&v33, sel_init);

    (*(v9 + 8))(v12, v8);
    return v23;
  }

  (*(v9 + 8))(v12, v8);
LABEL_11:
  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v25 = sub_24A9FEA90();
  __swift_project_value_buffer(v25, qword_27EF84B68);
  v26 = sub_24A9FEA70();
  v27 = sub_24A9FED90();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_24A9BF000, v26, v27, "Failed to decode NoticeButtonClickAction.", v28, 2u);
    MEMORY[0x24C223120](v28, -1, -1);
  }

  v29 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v30 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_24A9E0FE0()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_noticeIdentifier;
  v2 = sub_24A9FEA40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore23NoticeButtonClickAction_buttonIdentifier + 8);
}

id OpenMessagesAction.__allocating_init(declineCall:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id OpenMessagesAction.init(declineCall:)(char a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall OpenMessagesAction.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall);
  v4 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];
}

id OpenMessagesAction.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24A9FEC30();
  v5 = [a1 decodeBoolForKey_];

  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall] = v5;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for DownstreamAction();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id OpenMessagesAction.init(coder:)(void *a1)
{
  v3 = sub_24A9FEC30();
  v4 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC24FaceTimeNotificationCore18OpenMessagesAction_declineCall] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DownstreamAction();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id NotificationClickedAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_24A9E1584()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_24A9E15BC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_24A9E1610(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = type metadata accessor for DownstreamAction();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id sub_24A9E166C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DownstreamAction();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id sub_24A9E16B8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DownstreamAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t PresentConfirmationAlertAction.conflictingCallId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId);
  v2 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId + 8);

  return v1;
}

id PresentConfirmationAlertAction.__allocating_init(type:conflictingCallId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_type] = *a1;
  v8 = &v7[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PresentConfirmationAlertAction.init(type:conflictingCallId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_type] = *a1;
  v8 = &v3[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall PresentConfirmationAlertAction.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_type);
  v4 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId);
  v6 = *(v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId + 8);
  v7 = sub_24A9FEC30();
  v8 = sub_24A9FEC30();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id PresentConfirmationAlertAction.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_24A9FEC30();
  v5 = [a1 decodeIntegerForKey_];

  if (v5 <= 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF826C0, &unk_24AA006A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_24AA00690;
    *(v6 + 32) = sub_24A9E1EF8();
    sub_24A9FEE40();

    if (v19)
    {
      if (swift_dynamicCast())
      {
        v2[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_type] = v5;
        v7 = v17;
        v8 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore30PresentConfirmationAlertAction_conflictingCallId];
        *v8 = v16;
        v8[1] = v7;
        v15.receiver = v2;
        v15.super_class = type metadata accessor for DownstreamAction();
        v9 = objc_msgSendSuper2(&v15, sel_init);

        return v9;
      }
    }

    else
    {
      sub_24A9C994C(v18, &qword_27EF826D0, "*4");
    }
  }

  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v11 = sub_24A9FEA90();
  __swift_project_value_buffer(v11, qword_27EF84B68);
  v12 = sub_24A9FEA70();
  v13 = sub_24A9FED90();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24A9BF000, v12, v13, "Failed to decode PresentConfirmationAlertAction.", v14, 2u);
    MEMORY[0x24C223120](v14, -1, -1);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id sub_24A9E1CB0(void *a1)
{
  v2 = v1;
  [a1 decodeRect];
  v4 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_frame];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v9 = sub_24A9FEC30();
  [a1 decodePointForKey_];
  v11 = v10;
  v13 = v12;

  v14 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_position];
  *v14 = v11;
  v14[1] = v13;
  v15 = sub_24A9FEC30();
  v16 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingRTT] = v16;
  v17 = sub_24A9FEC30();
  v18 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingLiveReply] = v18;
  v19 = sub_24A9FEC30();
  v20 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingReceptionist] = v20;
  v21 = sub_24A9FEC30();
  v22 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_showingKeypad] = v22;
  sub_24A9E1EF8();
  v23 = sub_24A9FEE30();
  if (v23)
  {
    v24 = v23;
    v25 = sub_24A9FEC40();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = &v2[OBJC_IVAR____TtC24FaceTimeNotificationCore19StartDraggingAction_keypadDialed];
  *v28 = v25;
  v28[1] = v27;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for DownstreamAction();
  return objc_msgSendSuper2(&v30, sel_init);
}

unint64_t sub_24A9E1EF8()
{
  result = qword_27EF82920;
  if (!qword_27EF82920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF82920);
  }

  return result;
}

uint64_t dispatch thunk of StartDraggingAction.__allocating_init(frame:position:showingRTT:showingKeypad:keypadDialed:showingLiveReply:showingReceptionist:)(uint64_t a1)
{
  v2 = *(v1 + 160);
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  return v2(v6);
}

uint64_t type metadata accessor for NoticeButtonClickAction()
{
  result = qword_27EF82C38;
  if (!qword_27EF82C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A9E20DC()
{
  result = sub_24A9FEA40();
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

id static TUCallProvider.telephony.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v1 = sub_24A9FEC30();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t FTNMockCall.recordingAvailability.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void *FTNMockCall.recordingSession.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void FTNMockCall.recordingSession.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t FTNMockCall.contactIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FTNMockCall.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FTNMockCall.isIncoming.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t FTNMockCall.eligibleForScreening.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 49) = a1;
  return result;
}

uint64_t FTNMockCall.eligibleForManualScreening.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 50) = a1;
  return result;
}

uint64_t FTNMockCall.isScreening.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 51) = a1;
  return result;
}

uint64_t FTNMockCall.isHostedOnCurrentDevice.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 52) = a1;
  return result;
}

uint64_t FTNMockCall.receptionistState.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

void *FTNMockCall.smartHoldingSession.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void FTNMockCall.smartHoldingSession.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t FTNMockCall.isRelay.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t FTNMockCall.isThumper.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 73) = a1;
  return result;
}

uint64_t FTNMockCall.isReceptionistCapable.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 74) = a1;
  return result;
}

uint64_t FTNMockCall.changesPublisher.getter()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C48, &qword_24AA01A30);
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v31 - v4;
  v35 = sub_24A9FEAA0();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C50, &qword_24AA01A38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C58, &qword_24AA01A40);
  v34 = *(v31 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C60, &qword_24AA01A48);
  v17 = *(v16 - 8);
  v32 = v16;
  v33 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  sub_24A9E3310();
  v40 = sub_24A9FEAC0();
  sub_24A9C27EC(0, &qword_27EF82B58, 0x277D85C78);
  v21 = sub_24A9FEDD0();
  v39 = v21;
  v22 = sub_24A9FEDB0();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  sub_24A9FEAE0();
  sub_24A9E33B4();
  sub_24A9FEBC0();
  sub_24A9C994C(v12, &qword_27EF82C50, &qword_24AA01A38);

  v23 = v35;
  (*(v5 + 104))(v8, *MEMORY[0x277CBCBD0], v35);
  v25 = v36;
  v24 = v37;
  v26 = v38;
  (*(v37 + 104))(v36, *MEMORY[0x277CBCBE8], v38);
  sub_24A9C9AB0(&qword_27EF82C78, &qword_27EF82C58, &qword_24AA01A40);
  v27 = v31;
  sub_24A9FEBB0();
  (*(v24 + 8))(v25, v26);
  (*(v5 + 8))(v8, v23);
  (*(v34 + 8))(v15, v27);
  sub_24A9C9AB0(&qword_27EF82C80, &qword_27EF82C60, &qword_24AA01A48);
  v28 = v32;
  v29 = sub_24A9FEB70();
  (*(v33 + 8))(v20, v28);
  return v29;
}

unint64_t sub_24A9E3310()
{
  result = qword_27EF82C68;
  if (!qword_27EF82C68)
  {
    type metadata accessor for FTNMockCall();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82C68);
  }

  return result;
}

uint64_t type metadata accessor for FTNMockCall()
{
  result = qword_27EF82DA8;
  if (!qword_27EF82DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24A9E33B4()
{
  result = qword_27EF82C70;
  if (!qword_27EF82C70)
  {
    sub_24A9C27EC(255, &qword_27EF82B58, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82C70);
  }

  return result;
}

uint64_t FTNMockCall.uniqueProxyIdentifier.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

uint64_t sub_24A9E3490@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24A9E3514(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCall.uniqueProxyIdentifier.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.uniqueProxyIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E36D8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C98, &qword_24AA01AA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C90, &qword_24AA01A98);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$uniqueProxyIdentifier.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C98, &qword_24AA01AA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C90, &qword_24AA01A98);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$uniqueProxyIdentifier.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C98, &qword_24AA01AA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__uniqueProxyIdentifier;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C90, &qword_24AA01A98);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E3C08(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CB0, &qword_24AA01AF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$status.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CB0, &qword_24AA01AF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$status.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CB0, &qword_24AA01AF8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.handle.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

uint64_t sub_24A9E40BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  *a2 = v5;
  return result;
}

uint64_t sub_24A9E4140(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_24A9FEB50();
}

uint64_t FTNMockCall.handle.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.handle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E42EC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC8, &qword_24AA01B50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$handle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC8, &qword_24AA01B50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$handle.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC8, &qword_24AA01B50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.contacts.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

uint64_t sub_24A9E478C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  *a2 = v5;
  return result;
}

uint64_t sub_24A9E4810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCall.contacts.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.contacts.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E49C0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CE0, &qword_24AA01BA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$contacts.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CE0, &qword_24AA01BA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$contacts.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CE0, &qword_24AA01BA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.isVideo.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E4F04(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$isVideo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isVideo.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.isSharePlayCapable.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FTNMockCall.isSharePlayCapable.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id FTNMockCall.model.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void FTNMockCall.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

BOOL FTNMockCall.isOnHold.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1 == 2;
}

BOOL FTNMockCall.isConnected.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  v4 = sub_24A9FE9D0();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_24A9C994C(v3, &qword_27EF827E0, &qword_24AA00C90);
  return v5;
}

uint64_t FTNMockCall.dateConnected.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();
}

uint64_t FTNMockCall.displayName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  if (v5 >> 62)
  {
    result = sub_24A9FEF30();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x24C222870](0);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v1 = *(v5 + 32);
  }

  v2 = v1;

  v3 = [v2 displayName];

  if (v3)
  {
    v4 = sub_24A9FEC40();

    return v4;
  }

  return 0;
}

uint64_t FTNMockCall.suggestedDisplayName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

double sub_24A9E58E8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_24A9E5968(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCall.suggestedDisplayName.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.suggestedDisplayName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E5B28(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D18, &qword_24AA01CA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$suggestedDisplayName.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D18, &qword_24AA01CA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$suggestedDisplayName.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D18, &qword_24AA01CA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.provider.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

uint64_t sub_24A9E5FC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  *a2 = v5;
  return result;
}

uint64_t sub_24A9E6048(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_24A9FEB50();
}

uint64_t FTNMockCall.provider.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.provider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

id static TUCallProvider.faceTime.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v1 = sub_24A9FEC30();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_24A9E625C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D30, &qword_24AA01D00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$provider.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D30, &qword_24AA01D00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$provider.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D30, &qword_24AA01D00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.serviceString.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  v0 = [v3 isTelephonyProvider];

  if (v0)
  {
    return 0xD000000000000010;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  v2 = [v3 isFaceTimeProvider];

  if (!v2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return 0x656D695465636146;
}

uint64_t (*FTNMockCall.isUplinkMuted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E6928(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$isUplinkMuted.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isUplinkMuted.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.isSendingVideo.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E6E64(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$isSendingVideo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isSendingVideo.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.isConferenced.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E73A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$isConferenced.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isConferenced.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.isVoicemail.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E78DC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$isVoicemail.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isVoicemail.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t (*FTNMockCall.isEmergency.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E7E18(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$isEmergency.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isEmergency.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t sub_24A9E8258()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

uint64_t sub_24A9E82D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  *a2 = v5;
  return result;
}

uint64_t sub_24A9E8368(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t sub_24A9E83EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.isSharingScreen.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E8518(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$isSharingScreen.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$isSharingScreen.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF8, &unk_24AA01C00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t sub_24A9E8944(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();
}

uint64_t sub_24A9E89C0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_24A9DB010(a1, &v13 - v9, &qword_27EF827E0, &qword_24AA00C90);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v10, v8, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();
  return sub_24A9C994C(v10, &qword_27EF827E0, &qword_24AA00C90);
}

uint64_t FTNMockCall.dateConnected.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(a1, v5, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();
  return sub_24A9C994C(a1, &qword_27EF827E0, &qword_24AA00C90);
}

uint64_t (*FTNMockCall.dateConnected.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9E8CA0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D70, &qword_24AA01EC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$dateConnected.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D70, &qword_24AA01EC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$dateConnected.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D70, &qword_24AA01EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9F51DC;
}

uint64_t FTNMockCall.isOutgoing.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FTNMockCall.isOutgoing.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id FTNMockCall.dialRequestForRedial.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  v0 = [objc_allocWithZone(MEMORY[0x277D6EED0]) initWithProvider_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  [v0 setHandle_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  [v0 setVideo_];
  [v0 setOriginatingUIType_];
  return v0;
}

uint64_t FTNMockCall.metadataSubtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  result = sub_24A9F474C(v4, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
  return result;
}

uint64_t FTNMockCall.metadataSubtitle.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = *(a1 + 32);
  return sub_24A9F4790(v4, v5);
}

uint64_t sub_24A9E9648@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_24A9DB010(v4 + v8, a4, a2, a3);
}

uint64_t sub_24A9E96D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_24A9F47D4(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_24A9E97B0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_24A9E9810(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_24A9E98E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

uint64_t sub_24A9E9960@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  *a2 = v5;
  return result;
}

uint64_t sub_24A9E99F0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t sub_24A9E9A74()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*FTNMockCall.faceTimeIDStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9E9B84;
}

uint64_t sub_24A9E9BA4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_24A9FEB10();
  return swift_endAccess();
}

uint64_t sub_24A9E9C1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_24A9FEB10();
  return swift_endAccess();
}

uint64_t sub_24A9E9C98(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D88, &qword_24AA01F18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCall.$faceTimeIDStatus.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D88, &qword_24AA01F18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*FTNMockCall.$faceTimeIDStatus.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D88, &qword_24AA01F18);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9EA0C4;
}

void sub_24A9EA0C8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_24A9FEB20();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_24A9FEB20();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t FTNMockCall.isWaitOnHoldActive.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FTNMockCall.isWaitOnHoldActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FTNMockCall.__allocating_init(uniqueProxyIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  FTNMockCall.init(uniqueProxyIdentifier:)(a1, a2);
  return v7;
}

uint64_t FTNMockCall.init(uniqueProxyIdentifier:)(uint64_t a1, uint64_t a2)
{
  v90 = a1;
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v3);
  v87 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v6);
  v84 = &v70 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v9 = *(*(v83 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v83);
  v82 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v13);
  v78 = &v70 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v76 = *(v16 - 8);
  v77 = v16;
  v17 = *(v76 + 64);
  MEMORY[0x28223BE20](v16);
  v75 = &v70 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v19 = *(v74 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v74);
  v22 = &v70 - v21;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v72 = *(v73 - 8);
  v23 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v25 = &v70 - v24;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v26 = *(v71 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v71);
  v29 = &v70 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v70 - v33;
  *(v2 + 16) = 2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
  *(v2 + 48) = 131585;
  *(v2 + 52) = 1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 71) = 0;
  v35 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v94) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v31 + 32))(v2 + v35, v34, v30);
  v36 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v94 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  sub_24A9FEB00();
  (*(v26 + 32))(v2 + v36, v29, v71);
  v37 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v94 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  sub_24A9FEB00();
  (*(v72 + 32))(v2 + v37, v25, v73);
  v38 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v94) = 0;
  sub_24A9FEB00();
  v39 = *(v19 + 32);
  v40 = v74;
  v39(v2 + v38, v22, v74);
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v41 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v2 + v41) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v42 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v94 = 0;
  v95 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v43 = v75;
  sub_24A9FEB00();
  (*(v76 + 32))(v2 + v42, v43, v77);
  v44 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v45 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v46 = sub_24A9FEC30();
  v47 = [v45 initWithIdentifier_];

  v94 = v47;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v48 = v78;
  sub_24A9FEB00();
  (*(v79 + 32))(v2 + v44, v48, v80);
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v94) = 0;
  sub_24A9FEB00();
  v39(v2 + v49, v22, v40);
  v50 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v94) = 0;
  sub_24A9FEB00();
  v39(v2 + v50, v22, v40);
  v51 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v94) = 0;
  sub_24A9FEB00();
  v39(v2 + v51, v22, v40);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v94) = 0;
  sub_24A9FEB00();
  v39(v2 + v52, v22, v40);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v94) = 0;
  sub_24A9FEB00();
  v39(v2 + v53, v22, v40);
  v54 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v94) = 0;
  sub_24A9FEB00();
  v39(v2 + v54, v22, v40);
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v56 = sub_24A9FE9D0();
  v57 = v81;
  (*(*(v56 - 8) + 56))(v81, 1, 1, v56);
  sub_24A9DB010(v57, v82, &qword_27EF827E0, &qword_24AA00C90);
  v58 = v84;
  sub_24A9FEB00();
  sub_24A9C994C(v57, &qword_27EF827E0, &qword_24AA00C90);
  (*(v85 + 32))(v2 + v55, v58, v86);
  v59 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID;
  v60 = sub_24A9FEA40();
  (*(*(v60 - 8) + 56))(v2 + v59, 1, 1, v60);
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v61 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v61 = 0;
  v61[1] = 0;
  v62 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v62 = 0;
  v62[1] = 0;
  v63 = v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *v63 = 0u;
  *(v63 + 16) = 0u;
  *(v63 + 32) = 0;
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v65 = sub_24A9FE960();
  (*(*(v65 - 8) + 56))(v2 + v64, 1, 1, v65);
  v66 = (v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v66 = 0;
  v66[1] = 0;
  v67 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v94) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v68 = v87;
  sub_24A9FEB00();
  (*(v88 + 32))(v2 + v67, v68, v89);
  *(v2 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v92 = v90;
  v93 = v91;
  sub_24A9FEB00();
  swift_endAccess();
  return v2;
}

uint64_t FTNMockCall.__allocating_init(uniqueProxyIdentifier:status:handle:contacts:isVideo:suggestedDisplayName:provider:isUplinkMuted:dateConnected:isWaitOnHoldActive:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, int a6, void *a7, uint64_t a8, void *a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v110 = a7;
  v111 = a8;
  v109 = a6;
  v107 = a4;
  v108 = a5;
  v106 = a3;
  v104 = a1;
  v105 = a2;
  v115 = a12;
  v114 = a11;
  v113 = a10;
  v112 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v102 = *(v14 - 8);
  v103 = v14;
  v15 = *(v102 + 64);
  MEMORY[0x28223BE20](v14);
  v101 = &v85 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v99 = *(v100 - 8);
  v17 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v85 - v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v19 = *(*(v97 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v97);
  v116 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v96 = &v85 - v22;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v94 = *(v95 - 8);
  v23 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v85 - v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v91 = *(v92 - 8);
  v25 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v85 - v26;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v27 = *(v89 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v89);
  v30 = &v85 - v29;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v87 = *(v88 - 8);
  v31 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v33 = &v85 - v32;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v34 = *(v86 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v86);
  v37 = &v85 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v85 - v41;
  v43 = *(v13 + 48);
  v44 = *(v13 + 52);
  v45 = swift_allocObject();
  *(v45 + 16) = 2;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  *(v45 + 24) = 0;
  *(v45 + 48) = 131585;
  *(v45 + 52) = 1;
  *(v45 + 56) = 0;
  *(v45 + 64) = 0;
  *(v45 + 71) = 0;
  v46 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v119) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v39 + 32))(v45 + v46, v42, v38);
  v47 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v119 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  sub_24A9FEB00();
  (*(v34 + 32))(v45 + v47, v37, v86);
  v48 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v119 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  sub_24A9FEB00();
  (*(v87 + 32))(v45 + v48, v33, v88);
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v50 = *(v27 + 32);
  v51 = v89;
  v50(v45 + v49, v30, v89);
  *(v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v45 + v52) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v119 = 0;
  v120 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v54 = v90;
  sub_24A9FEB00();
  (*(v91 + 32))(v45 + v53, v54, v92);
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v56 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v57 = sub_24A9FEC30();
  v58 = [v56 initWithIdentifier_];

  v119 = v58;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v59 = v93;
  sub_24A9FEB00();
  (*(v94 + 32))(v45 + v55, v59, v95);
  v60 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v50(v45 + v60, v30, v51);
  v61 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v50(v45 + v61, v30, v51);
  v62 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v50(v45 + v62, v30, v51);
  v63 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v50(v45 + v63, v30, v51);
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v50(v45 + v64, v30, v51);
  v65 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v119) = 0;
  sub_24A9FEB00();
  v50(v45 + v65, v30, v51);
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v67 = sub_24A9FE9D0();
  v68 = v96;
  (*(*(v67 - 8) + 56))(v96, 1, 1, v67);
  sub_24A9DB010(v68, v116, &qword_27EF827E0, &qword_24AA00C90);
  v69 = v98;
  sub_24A9FEB00();
  sub_24A9C994C(v68, &qword_27EF827E0, &qword_24AA00C90);
  (*(v99 + 32))(v45 + v66, v69, v100);
  v70 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID;
  v71 = sub_24A9FEA40();
  (*(*(v71 - 8) + 56))(v45 + v70, 1, 1, v71);
  *(v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v72 = (v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v72 = 0;
  v72[1] = 0;
  v73 = (v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v73 = 0;
  v73[1] = 0;
  v74 = v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v74 + 32) = 0;
  *v74 = 0u;
  *(v74 + 16) = 0u;
  v75 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v76 = sub_24A9FE960();
  (*(*(v76 - 8) + 56))(v45 + v75, 1, 1, v76);
  v77 = (v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v77 = 0;
  v77[1] = 0;
  v78 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v119) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v79 = v101;
  sub_24A9FEB00();
  (*(v102 + 32))(v45 + v78, v79, v103);
  v103 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v45 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v117 = v104;
  v118 = v105;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v119) = v106;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v119 = v107;
  v107 = v107;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v119 = v108;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v119) = v109;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v119 = v110;
  v120 = v111;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v112;
  v119 = v112;

  v81 = v80;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v119) = v113;

  sub_24A9FEB50();
  v82 = v114;
  sub_24A9DB010(v114, v68, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v68, v116, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v82, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v68, &qword_27EF827E0, &qword_24AA00C90);
  v83 = v103;
  swift_beginAccess();
  *(v45 + v83) = v115;
  return v45;
}

uint64_t FTNMockCall.init(uniqueProxyIdentifier:status:handle:contacts:isVideo:suggestedDisplayName:provider:isUplinkMuted:dateConnected:isWaitOnHoldActive:)(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, int a6, void *a7, uint64_t a8, void *a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12)
{
  v106 = a7;
  v107 = a8;
  v105 = a6;
  v103 = a4;
  v104 = a5;
  v102 = a3;
  v100 = a1;
  v101 = a2;
  v111 = a12;
  v110 = a11;
  v109 = a10;
  v108 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v98 = *(v13 - 8);
  v99 = v13;
  v14 = *(v98 + 64);
  MEMORY[0x28223BE20](v13);
  v97 = &v81 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v95 = *(v96 - 8);
  v16 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v81 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v18 = *(*(v93 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v93);
  v112 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v92 = &v81 - v21;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v90 = *(v91 - 8);
  v22 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v81 - v23;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v87 = *(v88 - 8);
  v24 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v81 - v25;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v26 = *(v85 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v85);
  v29 = &v81 - v28;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v83 = *(v84 - 8);
  v30 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v32 = &v81 - v31;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v33 = *(v82 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v82);
  v36 = &v81 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v81 - v40;
  *(v12 + 16) = 2;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 24) = 0;
  *(v12 + 48) = 131585;
  *(v12 + 52) = 1;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 71) = 0;
  v42 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v115) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v38 + 32))(v12 + v42, v41, v37);
  v43 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v115 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  sub_24A9FEB00();
  (*(v33 + 32))(v12 + v43, v36, v82);
  v44 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v115 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  sub_24A9FEB00();
  (*(v83 + 32))(v12 + v44, v32, v84);
  v45 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v115) = 0;
  sub_24A9FEB00();
  v46 = *(v26 + 32);
  v47 = v85;
  v46(v12 + v45, v29, v85);
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v48 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v12 + v48) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v115 = 0;
  v116 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v50 = v86;
  sub_24A9FEB00();
  (*(v87 + 32))(v12 + v49, v50, v88);
  v51 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v52 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v53 = sub_24A9FEC30();
  v54 = [v52 initWithIdentifier_];

  v115 = v54;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v55 = v89;
  sub_24A9FEB00();
  (*(v90 + 32))(v12 + v51, v55, v91);
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v115) = 0;
  sub_24A9FEB00();
  v46(v12 + v56, v29, v47);
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v115) = 0;
  sub_24A9FEB00();
  v46(v12 + v57, v29, v47);
  v58 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v115) = 0;
  sub_24A9FEB00();
  v46(v12 + v58, v29, v47);
  v59 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v115) = 0;
  sub_24A9FEB00();
  v46(v12 + v59, v29, v47);
  v60 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v115) = 0;
  sub_24A9FEB00();
  v46(v12 + v60, v29, v47);
  v61 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v115) = 0;
  sub_24A9FEB00();
  v46(v12 + v61, v29, v47);
  v62 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v63 = sub_24A9FE9D0();
  v64 = v92;
  (*(*(v63 - 8) + 56))(v92, 1, 1, v63);
  sub_24A9DB010(v64, v112, &qword_27EF827E0, &qword_24AA00C90);
  v65 = v94;
  sub_24A9FEB00();
  sub_24A9C994C(v64, &qword_27EF827E0, &qword_24AA00C90);
  (*(v95 + 32))(v12 + v62, v65, v96);
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID;
  v67 = sub_24A9FEA40();
  (*(*(v67 - 8) + 56))(v12 + v66, 1, 1, v67);
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v68 = (v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v68 = 0;
  v68[1] = 0;
  v69 = (v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v69 = 0;
  v69[1] = 0;
  v70 = v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *v70 = 0u;
  *(v70 + 16) = 0u;
  *(v70 + 32) = 0;
  v71 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v72 = sub_24A9FE960();
  (*(*(v72 - 8) + 56))(v12 + v71, 1, 1, v72);
  v73 = (v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v73 = 0;
  v73[1] = 0;
  v74 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v115) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v75 = v97;
  sub_24A9FEB00();
  (*(v98 + 32))(v12 + v74, v75, v99);
  v99 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v12 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v113 = v100;
  v114 = v101;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v115) = v102;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v103;
  v103 = v103;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v104;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v115) = v105;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v106;
  v116 = v107;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = v108;
  v115 = v108;

  v77 = v76;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v115) = v109;

  sub_24A9FEB50();
  v78 = v110;
  sub_24A9DB010(v110, v64, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v64, v112, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v78, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v64, &qword_27EF827E0, &qword_24AA00C90);
  v79 = v99;
  swift_beginAccess();
  *(v12 + v79) = v111;
  return v12;
}

uint64_t FTNMockCall.answerRequest()@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FTNMockAnswerRequest();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  a1[3] = v3;
  a1[4] = &protocol witness table for FTNMockAnswerRequest;
  *a1 = v4;
}

Swift::Void __swiftcall FTNMockCall.toggleScreenSharing()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB50();
}

uint64_t FTNMockCall.deinit()
{
  v1 = *(v0 + 40);

  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__uniqueProxyIdentifier;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82C90, &qword_24AA01A98);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);

  v13 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v12(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted, v11);
  v12(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo, v11);
  v12(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced, v11);
  v12(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail, v11);
  v12(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency, v11);
  v12(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen, v11);
  v17 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  sub_24A9C994C(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, &unk_27EF82900, &qword_24AA01280);
  v19 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle + 8);

  v20 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage + 8);

  v21 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle + 16);
  v22 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle + 24);
  v23 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle + 32);
  sub_24A9F4790(*(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle), *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle + 8));
  sub_24A9C994C(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL, &qword_27EF82820, &qword_24AA00CB0);
  v24 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName + 8);

  v25 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  return v0;
}

uint64_t FTNMockCall.__deallocating_deinit()
{
  FTNMockCall.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24A9ED108()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

uint64_t sub_24A9ED190@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID;
  swift_beginAccess();
  return sub_24A9DB010(v1 + v3, a1, &unk_27EF82900, &qword_24AA01280);
}

BOOL sub_24A9ED1F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  v4 = sub_24A9FE9D0();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_24A9C994C(v3, &qword_27EF827E0, &qword_24AA00C90);
  return v5;
}

BOOL sub_24A9ED350()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1 == 2;
}

uint64_t (*sub_24A9ED3F4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

uint64_t sub_24A9ED4C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t (*sub_24A9ED52C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9F51D8;
}

void sub_24A9ED5D0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

id sub_24A9ED710()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_24A9ED770@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for FTNMockAnswerRequest();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  a1[3] = v3;
  a1[4] = &protocol witness table for FTNMockAnswerRequest;
  *a1 = v4;
}

uint64_t sub_24A9ED7EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

uint64_t sub_24A9ED870()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

void *sub_24A9ED948()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_24A9ED9C0()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_24A9EDA38()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_24A9EDA7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24A9FEAC0();
  *a1 = result;
  return result;
}

uint64_t sub_24A9EDAF0()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v3;
}

uint64_t sub_24A9EDB68()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v3;
}

uint64_t sub_24A9EDBE0()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v3;
}

uint64_t sub_24A9EDC58()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();
}

uint64_t sub_24A9EDCD4()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v3;
}

uint64_t sub_24A9EDD4C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_24A9EDD94()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_24A9EDDDC()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v3;
}

uint64_t sub_24A9EDE90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  result = sub_24A9F474C(v4, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24A9EDF1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  swift_beginAccess();
  return sub_24A9DB010(v3 + v4, a1, &qword_27EF82820, &qword_24AA00CB0);
}

uint64_t sub_24A9EDF94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_24A9EDFEC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t sub_24A9EE03C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 51);
}

uint64_t sub_24A9EE07C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t static FTNMockCall.incomingFaceTimeAudio()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v120 = *(v0 - 1);
  v121 = v0;
  v1 = *(v120 + 64);
  MEMORY[0x28223BE20](v0);
  v119 = &v87 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v115 = *(v3 - 8);
  v116 = v3;
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v3);
  v114 = &v87 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v111 = *(v6 - 8);
  v112 = v6;
  v7 = *(v111 + 64);
  MEMORY[0x28223BE20](v6);
  v108 = &v87 - v8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v104 = *(v105 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = &v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v87 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v94 = *(v95 - 8);
  v16 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v87 - v17;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v90 = *(v92 - 8);
  v18 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v87 - v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v87 = *(v88 - 8);
  v20 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v22 = &v87 - v21;
  v23 = sub_24A9FEA40();
  v101 = v23;
  v100 = *(v23 - 8);
  v24 = v100;
  v25 = *(v100 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v28 = *(*(v106 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v106);
  v122 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v103 = &v87 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v87 - v33;
  v118 = &v87 - v33;
  v91 = "ionAlertAction";
  v35 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v36 = sub_24A9FEC30();
  v117 = [v35 initWithIdentifier_];

  v98 = sub_24A9FE9D0();
  v37 = *(v98 - 8);
  v97 = *(v37 + 56);
  v99 = v37 + 56;
  v97(v34, 1, 1, v98);
  sub_24A9FEA30();
  v38 = sub_24A9FE9F0();
  v109 = v39;
  v110 = v38;
  (*(v24 + 8))(v27, v23);
  v40 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v41 = sub_24A9FEC30();
  v113 = [v40 initWithType:3 value:v41];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_24AA01220;
  v107 = v42;
  v43 = sub_24A9FEC30();
  v44 = sub_24A9FEC30();
  v45 = [objc_opt_self() contactWithDisplayName:v43 emailOrPhoneNumber:v44];

  *(v42 + 32) = v45;
  v46 = *(v96 + 48);
  v47 = *(v96 + 52);
  v48 = swift_allocObject();
  *(v48 + 16) = 2;
  *(v48 + 32) = 0;
  *(v48 + 40) = 0;
  *(v48 + 24) = 0;
  *(v48 + 48) = 131585;
  *(v48 + 52) = 1;
  *(v48 + 56) = 0;
  *(v48 + 64) = 0;
  *(v48 + 71) = 0;
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v125) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v87 + 32))(v48 + v49, v22, v88);
  v50 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v125 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v51 = v89;
  sub_24A9FEB00();
  (*(v90 + 32))(v48 + v50, v51, v92);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v125 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v53 = v93;
  sub_24A9FEB00();
  (*(v94 + 32))(v48 + v52, v53, v95);
  v54 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55 = *(v12 + 32);
  v55(v48 + v54, v15, v11);
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v48 + v56) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v125 = 0;
  v126 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v58 = v102;
  sub_24A9FEB00();
  (*(v104 + 32))(v48 + v57, v58, v105);
  v59 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v60 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v61 = sub_24A9FEC30();
  v62 = [v60 initWithIdentifier_];

  v125 = v62;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v63 = v108;
  sub_24A9FEB00();
  (*(v111 + 32))(v48 + v59, v63, v112);
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v64, v15, v11);
  v65 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v65, v15, v11);
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v66, v15, v11);
  v67 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v67, v15, v11);
  v68 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v68, v15, v11);
  v69 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v69, v15, v11);
  v70 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v71 = v103;
  v97(v103, 1, 1, v98);
  sub_24A9DB010(v71, v122, &qword_27EF827E0, &qword_24AA00C90);
  v72 = v114;
  sub_24A9FEB00();
  sub_24A9C994C(v71, &qword_27EF827E0, &qword_24AA00C90);
  (*(v115 + 32))(v48 + v70, v72, v116);
  (*(v100 + 56))(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v101);
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v73 = (v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v73 = 0;
  v73[1] = 0;
  v74 = (v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v74 = 0;
  v74[1] = 0;
  v75 = v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v75 + 32) = 0;
  *v75 = 0u;
  *(v75 + 16) = 0u;
  v76 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v77 = sub_24A9FE960();
  (*(*(v77 - 8) + 56))(v48 + v76, 1, 1, v77);
  v78 = (v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v78 = 0;
  v78[1] = 0;
  v79 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v125) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v80 = v119;
  sub_24A9FEB00();
  (*(v120 + 32))(v48 + v79, v80, v121);
  v81 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v123 = v110;
  v124 = v109;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v125) = 4;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v113;
  v125 = v113;

  v121 = v82;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v125 = v107;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v125) = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v125 = 0;
  v126 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v117;
  v125 = v117;

  v84 = v83;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v125) = 0;

  sub_24A9FEB50();
  v85 = v118;
  sub_24A9DB010(v118, v71, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v71, v122, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v71, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v85, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v48 + v81) = 0;
  return v48;
}

uint64_t static FTNMockCall.incomingFaceTimeVideo()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v126 = *(v0 - 1);
  v127 = v0;
  v1 = *(v126 + 64);
  MEMORY[0x28223BE20](v0);
  v125 = &v91 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v119 = *(v3 - 8);
  v120 = v3;
  v4 = *(v119 + 64);
  MEMORY[0x28223BE20](v3);
  v118 = &v91 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v115 = *(v6 - 8);
  v116 = v6;
  v7 = *(v115 + 64);
  MEMORY[0x28223BE20](v6);
  v112 = &v91 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v109 = *(v110 - 8);
  v9 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v107 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v91 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v99 = *(v100 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v91 - v17;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v94 = *(v96 - 8);
  v18 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v93 = &v91 - v19;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v91 = *(v92 - 8);
  v20 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v22 = &v91 - v21;
  v23 = sub_24A9FEA40();
  v106 = v23;
  v105 = *(v23 - 8);
  v24 = v105;
  v25 = *(v105 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v28 = *(*(v111 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v111);
  v128 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v108 = &v91 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v91 - v33;
  v122 = &v91 - v33;
  v95 = "ionAlertAction";
  v35 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v36 = sub_24A9FEC30();
  v121 = [v35 initWithIdentifier_];

  v103 = sub_24A9FE9D0();
  v37 = *(v103 - 8);
  v102 = *(v37 + 56);
  v104 = v37 + 56;
  v102(v34, 1, 1, v103);
  sub_24A9FEA30();
  v114 = sub_24A9FE9F0();
  v113 = v38;
  (*(v24 + 8))(v27, v23);
  v39 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v40 = sub_24A9FEC30();
  v117 = [v39 initWithType:3 value:v40];

  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v41 = swift_allocObject();
  v123 = xmmword_24AA01220;
  *(v41 + 16) = xmmword_24AA01220;
  v42 = v41;
  v97 = v41;
  v43 = sub_24A9FEC30();
  v44 = sub_24A9FEC30();
  v45 = [objc_opt_self() contactWithDisplayName:v43 emailOrPhoneNumber:v44];

  *(v42 + 32) = v45;
  v46 = *(v101 + 48);
  v47 = *(v101 + 52);
  v48 = swift_allocObject();
  *(v48 + 16) = 2;
  *(v48 + 32) = 0;
  *(v48 + 40) = 0;
  *(v48 + 24) = 0;
  *(v48 + 48) = 131585;
  *(v48 + 52) = 1;
  *(v48 + 56) = 0;
  *(v48 + 64) = 0;
  *(v48 + 71) = 0;
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v131) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v91 + 32))(v48 + v49, v22, v92);
  v50 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v131 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v51 = v93;
  sub_24A9FEB00();
  (*(v94 + 32))(v48 + v50, v51, v96);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v131 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v53 = v98;
  sub_24A9FEB00();
  (*(v99 + 32))(v48 + v52, v53, v100);
  v54 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v131) = 0;
  sub_24A9FEB00();
  v55 = *(v12 + 32);
  v55(v48 + v54, v15, v11);
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v48 + v56) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v131 = 0;
  v132 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v58 = v107;
  sub_24A9FEB00();
  (*(v109 + 32))(v48 + v57, v58, v110);
  v59 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v60 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v61 = sub_24A9FEC30();
  v62 = [v60 initWithIdentifier_];

  v131 = v62;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v63 = v112;
  sub_24A9FEB00();
  (*(v115 + 32))(v48 + v59, v63, v116);
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v131) = 0;
  sub_24A9FEB00();
  v55(v48 + v64, v15, v11);
  v65 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v131) = 0;
  sub_24A9FEB00();
  v55(v48 + v65, v15, v11);
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v131) = 0;
  sub_24A9FEB00();
  v55(v48 + v66, v15, v11);
  v67 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v131) = 0;
  sub_24A9FEB00();
  v55(v48 + v67, v15, v11);
  v68 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v131) = 0;
  sub_24A9FEB00();
  v55(v48 + v68, v15, v11);
  v69 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v131) = 0;
  sub_24A9FEB00();
  v55(v48 + v69, v15, v11);
  v70 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v71 = v108;
  v102(v108, 1, 1, v103);
  sub_24A9DB010(v71, v128, &qword_27EF827E0, &qword_24AA00C90);
  v72 = v118;
  sub_24A9FEB00();
  sub_24A9C994C(v71, &qword_27EF827E0, &qword_24AA00C90);
  (*(v119 + 32))(v48 + v70, v72, v120);
  (*(v105 + 56))(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v106);
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v73 = (v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v73 = 0;
  v73[1] = 0;
  v74 = (v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v74 = 0;
  v74[1] = 0;
  v75 = v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v75 + 32) = 0;
  *v75 = 0u;
  *(v75 + 16) = 0u;
  v76 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v77 = sub_24A9FE960();
  (*(*(v77 - 8) + 56))(v48 + v76, 1, 1, v77);
  v78 = (v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v78 = 0;
  v78[1] = 0;
  v79 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v131) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v80 = v125;
  sub_24A9FEB00();
  (*(v126 + 32))(v48 + v79, v80, v127);
  v81 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v129 = v114;
  v130 = v113;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v131) = 4;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v117;
  v131 = v117;

  v127 = v82;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v131 = v97;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v131) = 1;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v131 = 0;
  v132 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v121;
  v131 = v121;

  v84 = v83;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v131) = 0;

  sub_24A9FEB50();
  v85 = v122;
  sub_24A9DB010(v122, v71, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v71, v128, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v71, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v85, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v48 + v81) = 0;
  v86 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v87 = sub_24A9FEC30();
  [v86 setGivenName_];

  v88 = sub_24A9FEC30();
  [v86 setFamilyName_];

  v89 = swift_allocObject();
  *(v89 + 16) = v123;
  *(v89 + 32) = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  v129 = v89;

  sub_24A9FEB50();
  return v48;
}

uint64_t static FTNMockCall.activeFaceTimeAudio()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v120 = *(v0 - 1);
  v121 = v0;
  v1 = *(v120 + 64);
  MEMORY[0x28223BE20](v0);
  v119 = &v87 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v115 = *(v3 - 8);
  v116 = v3;
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v3);
  v114 = &v87 - v5;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v111 = *(v113 - 8);
  v6 = *(v111 + 64);
  MEMORY[0x28223BE20](v113);
  v108 = &v87 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v104 = *(v105 - 8);
  v8 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v87 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v94 = *(v95 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v87 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v90 = *(v92 - 8);
  v17 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v87 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v87 = *(v88 - 8);
  v19 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v21 = &v87 - v20;
  v22 = sub_24A9FEA40();
  v101 = v22;
  v100 = *(v22 - 8);
  v23 = v100;
  v24 = *(v100 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v27 = *(*(v106 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v106);
  v122 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v103 = &v87 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v87 - v32;
  v91 = "ionAlertAction";
  v34 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v35 = sub_24A9FEC30();
  v117 = [v34 initWithIdentifier_];

  v118 = v33;
  sub_24A9FE9C0();
  v98 = sub_24A9FE9D0();
  v36 = *(v98 - 8);
  v97 = *(v36 + 56);
  v99 = v36 + 56;
  v97(v33, 0, 1, v98);
  sub_24A9FEA30();
  v37 = sub_24A9FE9F0();
  v109 = v38;
  v110 = v37;
  (*(v23 + 8))(v26, v22);
  v39 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v40 = sub_24A9FEC30();
  v112 = [v39 initWithType:3 value:v40];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_24AA01220;
  v42 = v41;
  v107 = v41;
  v43 = sub_24A9FEC30();
  v44 = sub_24A9FEC30();
  v45 = [objc_opt_self() contactWithDisplayName:v43 emailOrPhoneNumber:v44];

  *(v42 + 32) = v45;
  v46 = *(v96 + 48);
  v47 = *(v96 + 52);
  v48 = swift_allocObject();
  *(v48 + 16) = 2;
  *(v48 + 32) = 0;
  *(v48 + 40) = 0;
  *(v48 + 24) = 0;
  *(v48 + 48) = 131585;
  *(v48 + 52) = 1;
  *(v48 + 56) = 0;
  *(v48 + 64) = 0;
  *(v48 + 71) = 0;
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v125) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v87 + 32))(v48 + v49, v21, v88);
  v50 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v125 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v51 = v89;
  sub_24A9FEB00();
  (*(v90 + 32))(v48 + v50, v51, v92);
  v52 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v125 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v53 = v93;
  sub_24A9FEB00();
  (*(v94 + 32))(v48 + v52, v53, v95);
  v54 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55 = *(v11 + 32);
  v55(v48 + v54, v14, v10);
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v48 + v56) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v57 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v125 = 0;
  v126 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v58 = v102;
  sub_24A9FEB00();
  (*(v104 + 32))(v48 + v57, v58, v105);
  v59 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v60 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v61 = sub_24A9FEC30();
  v62 = [v60 initWithIdentifier_];

  v125 = v62;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v63 = v108;
  sub_24A9FEB00();
  (*(v111 + 32))(v48 + v59, v63, v113);
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v64, v14, v10);
  v65 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v65, v14, v10);
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v66, v14, v10);
  v67 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v67, v14, v10);
  v68 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v68, v14, v10);
  v69 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v125) = 0;
  sub_24A9FEB00();
  v55(v48 + v69, v14, v10);
  v70 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v71 = v103;
  v97(v103, 1, 1, v98);
  sub_24A9DB010(v71, v122, &qword_27EF827E0, &qword_24AA00C90);
  v72 = v114;
  sub_24A9FEB00();
  sub_24A9C994C(v71, &qword_27EF827E0, &qword_24AA00C90);
  (*(v115 + 32))(v48 + v70, v72, v116);
  (*(v100 + 56))(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v101);
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v73 = (v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v73 = 0;
  v73[1] = 0;
  v74 = (v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v74 = 0;
  v74[1] = 0;
  v75 = v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v75 + 32) = 0;
  *v75 = 0u;
  *(v75 + 16) = 0u;
  v76 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v77 = sub_24A9FE960();
  (*(*(v77 - 8) + 56))(v48 + v76, 1, 1, v77);
  v78 = (v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v78 = 0;
  v78[1] = 0;
  v79 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v125) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v80 = v119;
  sub_24A9FEB00();
  (*(v120 + 32))(v48 + v79, v80, v121);
  v81 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v48 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v123 = v110;
  v124 = v109;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v125) = 1;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v112;
  v125 = v112;

  v121 = v82;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v125 = v107;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v125) = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v125 = 0;
  v126 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v117;
  v125 = v117;

  v84 = v83;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v125) = 0;

  sub_24A9FEB50();
  v85 = v118;
  sub_24A9DB010(v118, v71, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v71, v122, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v71, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v85, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v48 + v81) = 0;
  return v48;
}

uint64_t static FTNMockCall.activeTelephony()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v119 = *(v0 - 1);
  v120 = v0;
  v1 = *(v119 + 64);
  MEMORY[0x28223BE20](v0);
  v118 = &v86 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = *(v114 + 64);
  MEMORY[0x28223BE20](v3);
  v113 = &v86 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v110 = *(v112 - 8);
  v6 = *(v110 + 64);
  MEMORY[0x28223BE20](v112);
  v107 = &v86 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v103 = *(v104 - 8);
  v8 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v86 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v86 - v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v93 = *(v94 - 8);
  v15 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v86 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v90 = *(v91 - 8);
  v17 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v86 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v87 = *(v88 - 8);
  v19 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v21 = &v86 - v20;
  v22 = sub_24A9FEA40();
  v100 = v22;
  v99 = *(v22 - 8);
  v23 = v99;
  v24 = *(v99 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v27 = *(*(v105 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v105);
  v121 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v102 = &v86 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v86 - v32;
  v34 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v35 = sub_24A9FEC30();
  v116 = [v34 initWithIdentifier_];

  v117 = v33;
  sub_24A9FE9C0();
  v97 = sub_24A9FE9D0();
  v36 = *(v97 - 8);
  v96 = *(v36 + 56);
  v98 = v36 + 56;
  v96(v33, 0, 1, v97);
  sub_24A9FEA30();
  v37 = sub_24A9FE9F0();
  v108 = v38;
  v109 = v37;
  (*(v23 + 8))(v26, v22);
  v39 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v40 = sub_24A9FEC30();
  v111 = [v39 initWithType:3 value:v40];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_24AA01220;
  v106 = v41;
  v42 = sub_24A9FEC30();
  v43 = sub_24A9FEC30();
  v44 = [objc_opt_self() contactWithDisplayName:v42 emailOrPhoneNumber:v43];

  *(v41 + 32) = v44;
  v45 = *(v95 + 48);
  v46 = *(v95 + 52);
  v47 = swift_allocObject();
  *(v47 + 16) = 2;
  *(v47 + 32) = 0;
  *(v47 + 40) = 0;
  *(v47 + 24) = 0;
  *(v47 + 48) = 131585;
  *(v47 + 52) = 1;
  *(v47 + 56) = 0;
  *(v47 + 64) = 0;
  *(v47 + 71) = 0;
  v48 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v124) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v87 + 32))(v47 + v48, v21, v88);
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v124 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v50 = v89;
  sub_24A9FEB00();
  (*(v90 + 32))(v47 + v49, v50, v91);
  v51 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v124 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v52 = v92;
  sub_24A9FEB00();
  (*(v93 + 32))(v47 + v51, v52, v94);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v124) = 0;
  sub_24A9FEB00();
  v54 = *(v11 + 32);
  v54(v47 + v53, v14, v10);
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v47 + v55) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v124 = 0;
  v125 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v57 = v101;
  sub_24A9FEB00();
  (*(v103 + 32))(v47 + v56, v57, v104);
  v58 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v59 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v60 = sub_24A9FEC30();
  v61 = [v59 initWithIdentifier_];

  v124 = v61;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v62 = v107;
  sub_24A9FEB00();
  (*(v110 + 32))(v47 + v58, v62, v112);
  v63 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v124) = 0;
  sub_24A9FEB00();
  v54(v47 + v63, v14, v10);
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v124) = 0;
  sub_24A9FEB00();
  v54(v47 + v64, v14, v10);
  v65 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v124) = 0;
  sub_24A9FEB00();
  v54(v47 + v65, v14, v10);
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v124) = 0;
  sub_24A9FEB00();
  v54(v47 + v66, v14, v10);
  v67 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v124) = 0;
  sub_24A9FEB00();
  v54(v47 + v67, v14, v10);
  v68 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v124) = 0;
  sub_24A9FEB00();
  v54(v47 + v68, v14, v10);
  v69 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v70 = v102;
  v96(v102, 1, 1, v97);
  sub_24A9DB010(v70, v121, &qword_27EF827E0, &qword_24AA00C90);
  v71 = v113;
  sub_24A9FEB00();
  sub_24A9C994C(v70, &qword_27EF827E0, &qword_24AA00C90);
  (*(v114 + 32))(v47 + v69, v71, v115);
  (*(v99 + 56))(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v100);
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v72 = (v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v72 = 0;
  v72[1] = 0;
  v73 = (v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v73 = 0;
  v73[1] = 0;
  v74 = v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v74 + 32) = 0;
  *v74 = 0u;
  *(v74 + 16) = 0u;
  v75 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v76 = sub_24A9FE960();
  (*(*(v76 - 8) + 56))(v47 + v75, 1, 1, v76);
  v77 = (v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v77 = 0;
  v77[1] = 0;
  v78 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v124) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v79 = v118;
  sub_24A9FEB00();
  (*(v119 + 32))(v47 + v78, v79, v120);
  v80 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v122 = v109;
  v123 = v108;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v124) = 1;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v111;
  v124 = v111;

  v120 = v81;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v124 = v106;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v124) = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v124 = 0;
  v125 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v116;
  v124 = v116;

  v83 = v82;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v124) = 0;

  sub_24A9FEB50();
  v84 = v117;
  sub_24A9DB010(v117, v70, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v70, v121, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v70, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v84, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v47 + v80) = 0;
  return v47;
}

uint64_t static FTNMockCall.waitOnHoldCall()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v127 = *(v0 - 1);
  v128 = v0;
  v1 = *(v127 + 64);
  MEMORY[0x28223BE20](v0);
  v124 = &v91 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = *(v120 + 64);
  MEMORY[0x28223BE20](v3);
  v119 = &v91 - v5;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v116 = *(v118 - 8);
  v6 = *(v116 + 64);
  MEMORY[0x28223BE20](v118);
  v113 = &v91 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v110 = *(v111 - 8);
  v8 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v108 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v91 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v100 = *(v101 - 8);
  v15 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v91 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v95 = *(v97 - 8);
  v17 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v94 = &v91 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v92 = *(v93 - 8);
  v19 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v21 = &v91 - v20;
  v22 = sub_24A9FEA40();
  v107 = v22;
  v106 = *(v22 - 8);
  v23 = v106;
  v24 = *(v106 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v27 = *(*(v112 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v112);
  v129 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v109 = &v91 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v91 - v32;
  v96 = "ionAlertAction";
  v34 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v35 = sub_24A9FEC30();
  v122 = [v34 initWithIdentifier_];

  v123 = v33;
  sub_24A9FE9C0();
  v104 = sub_24A9FE9D0();
  v36 = *(v104 - 8);
  v103 = *(v36 + 56);
  v105 = v36 + 56;
  v103(v33, 0, 1, v104);
  sub_24A9FEA30();
  v115 = sub_24A9FE9F0();
  v114 = v37;
  (*(v23 + 8))(v26, v22);
  v38 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v39 = sub_24A9FEC30();
  v117 = [v38 initWithType:3 value:v39];

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v40 = swift_allocObject();
  v125 = xmmword_24AA01220;
  *(v40 + 16) = xmmword_24AA01220;
  v41 = v40;
  v98 = v40;
  v42 = sub_24A9FEC30();
  v43 = sub_24A9FEC30();
  v44 = [objc_opt_self() contactWithDisplayName:v42 emailOrPhoneNumber:v43];

  *(v41 + 32) = v44;
  v45 = *(v102 + 48);
  v46 = *(v102 + 52);
  v47 = swift_allocObject();
  *(v47 + 16) = 2;
  *(v47 + 32) = 0;
  *(v47 + 40) = 0;
  *(v47 + 24) = 0;
  *(v47 + 48) = 131585;
  *(v47 + 52) = 1;
  *(v47 + 56) = 0;
  *(v47 + 64) = 0;
  *(v47 + 71) = 0;
  v48 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v132) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v92 + 32))(v47 + v48, v21, v93);
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v132 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v50 = v94;
  sub_24A9FEB00();
  (*(v95 + 32))(v47 + v49, v50, v97);
  v51 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v132 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v52 = v99;
  sub_24A9FEB00();
  (*(v100 + 32))(v47 + v51, v52, v101);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54 = *(v11 + 32);
  v54(v47 + v53, v14, v10);
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v47 + v55) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v132 = 0;
  v133 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v57 = v108;
  sub_24A9FEB00();
  (*(v110 + 32))(v47 + v56, v57, v111);
  v58 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v59 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v60 = sub_24A9FEC30();
  v61 = [v59 initWithIdentifier_];

  v132 = v61;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v62 = v113;
  sub_24A9FEB00();
  (*(v116 + 32))(v47 + v58, v62, v118);
  v63 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v63, v14, v10);
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v64, v14, v10);
  v65 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v65, v14, v10);
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v66, v14, v10);
  v67 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v67, v14, v10);
  v68 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v68, v14, v10);
  v69 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v70 = v109;
  v103(v109, 1, 1, v104);
  sub_24A9DB010(v70, v129, &qword_27EF827E0, &qword_24AA00C90);
  v71 = v119;
  sub_24A9FEB00();
  sub_24A9C994C(v70, &qword_27EF827E0, &qword_24AA00C90);
  (*(v120 + 32))(v47 + v69, v71, v121);
  (*(v106 + 56))(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v107);
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v72 = (v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v72 = 0;
  v72[1] = 0;
  v73 = (v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v73 = 0;
  v73[1] = 0;
  v74 = v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v74 + 32) = 0;
  *v74 = 0u;
  *(v74 + 16) = 0u;
  v75 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v76 = sub_24A9FE960();
  (*(*(v76 - 8) + 56))(v47 + v75, 1, 1, v76);
  v77 = (v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v77 = 0;
  v77[1] = 0;
  v78 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v132) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v79 = v124;
  sub_24A9FEB00();
  (*(v127 + 32))(v47 + v78, v79, v128);
  v80 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v130 = v115;
  v131 = v114;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v132) = 1;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v117;
  v132 = v117;

  v128 = v81;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = v98;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v132) = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = 0;
  v133 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v122;
  v132 = v122;

  v83 = v82;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v132) = 0;

  sub_24A9FEB50();
  v84 = v123;
  sub_24A9DB010(v123, v70, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v70, v129, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v70, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v84, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v47 + v80) = 1;
  v85 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v86 = sub_24A9FEC30();
  [v85 setGivenName_];

  v87 = sub_24A9FEC30();
  [v85 setFamilyName_];

  v88 = sub_24A9FEC30();
  [v85 setOrganizationName_];

  v89 = swift_allocObject();
  *(v89 + 16) = v125;
  *(v89 + 32) = v85;
  swift_getKeyPath();
  swift_getKeyPath();
  v130 = v89;

  sub_24A9FEB50();
  return v47;
}

uint64_t static FTNMockCall.incomingRelayCall()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D80, &qword_24AA01F10);
  v126 = *(v0 - 1);
  v127 = v0;
  v1 = *(v126 + 64);
  MEMORY[0x28223BE20](v0);
  v123 = &v90 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D68, &qword_24AA01EB8);
  v119 = *(v3 - 8);
  v120 = v3;
  v4 = *(v119 + 64);
  MEMORY[0x28223BE20](v3);
  v118 = &v90 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D28, &qword_24AA01CF8);
  v115 = *(v116 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v112 = &v90 - v7;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D10, &qword_24AA01CA0);
  v109 = *(v110 - 8);
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v107 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CF0, &qword_24AA01BF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v90 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CD8, &qword_24AA01BA0);
  v99 = *(v100 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v90 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CC0, &qword_24AA01B48);
  v94 = *(v96 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v93 = &v90 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82CA8, &qword_24AA01AF0);
  v91 = *(v92 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v21 = &v90 - v20;
  v22 = sub_24A9FEA40();
  v106 = v22;
  v105 = *(v22 - 8);
  v23 = v105;
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v27 = *(*(v111 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v111);
  v128 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v108 = &v90 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v90 - v32;
  v122 = &v90 - v32;
  v95 = "ionAlertAction";
  v34 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v35 = sub_24A9FEC30();
  v121 = [v34 initWithIdentifier_];

  v103 = sub_24A9FE9D0();
  v36 = *(v103 - 8);
  v102 = *(v36 + 56);
  v104 = v36 + 56;
  v102(v33, 1, 1, v103);
  sub_24A9FEA30();
  v114 = sub_24A9FE9F0();
  v113 = v37;
  (*(v23 + 8))(v26, v22);
  v38 = objc_allocWithZone(MEMORY[0x277D6EEE8]);
  v39 = sub_24A9FEC30();
  v117 = [v38 initWithType:3 value:v39];

  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v40 = swift_allocObject();
  v124 = xmmword_24AA01220;
  *(v40 + 16) = xmmword_24AA01220;
  v41 = v40;
  v97 = v40;
  v42 = sub_24A9FEC30();
  v43 = sub_24A9FEC30();
  v44 = [objc_opt_self() contactWithDisplayName:v42 emailOrPhoneNumber:v43];

  *(v41 + 32) = v44;
  v45 = *(v101 + 48);
  v46 = *(v101 + 52);
  v47 = swift_allocObject();
  *(v47 + 16) = 2;
  *(v47 + 32) = 0;
  *(v47 + 40) = 0;
  *(v47 + 24) = 0;
  *(v47 + 48) = 131585;
  *(v47 + 52) = 1;
  *(v47 + 56) = 0;
  *(v47 + 64) = 0;
  *(v47 + 71) = 0;
  v48 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__status;
  LODWORD(v132) = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24A9FEB00();
  (*(v91 + 32))(v47 + v48, v21, v92);
  v49 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__handle;
  v132 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D90, &unk_24AA01F20);
  v50 = v93;
  sub_24A9FEB00();
  (*(v94 + 32))(v47 + v49, v50, v96);
  v51 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__contacts;
  v132 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82810, &qword_24AA00CA8);
  v52 = v98;
  sub_24A9FEB00();
  (*(v99 + 32))(v47 + v51, v52, v100);
  v53 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVideo;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54 = *(v11 + 32);
  v54(v47 + v53, v14, v10);
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isSharePlayCapable) = 0;
  v55 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_model;
  *(v47 + v55) = [objc_allocWithZone(MEMORY[0x277D6EE18]) init];
  v56 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__suggestedDisplayName;
  v132 = 0;
  v133 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82D98, &unk_24AA01F30);
  v57 = v107;
  sub_24A9FEB00();
  (*(v109 + 32))(v47 + v56, v57, v110);
  v58 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__provider;
  v59 = objc_allocWithZone(MEMORY[0x277D6EE20]);
  v60 = sub_24A9FEC30();
  v61 = [v59 initWithIdentifier_];

  v132 = v61;
  sub_24A9C27EC(0, &qword_27EF82DA0, 0x277D6EE20);
  v62 = v112;
  sub_24A9FEB00();
  (*(v115 + 32))(v47 + v58, v62, v116);
  v63 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isUplinkMuted;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v63, v14, v10);
  v64 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSendingVideo;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v64, v14, v10);
  v65 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isConferenced;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v65, v14, v10);
  v66 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isVoicemail;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v66, v14, v10);
  v67 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isEmergency;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v67, v14, v10);
  v68 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__isSharingScreen;
  LOBYTE(v132) = 0;
  sub_24A9FEB00();
  v54(v47 + v68, v14, v10);
  v69 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__dateConnected;
  v70 = v108;
  v102(v108, 1, 1, v103);
  sub_24A9DB010(v70, v128, &qword_27EF827E0, &qword_24AA00C90);
  v71 = v118;
  sub_24A9FEB00();
  sub_24A9C994C(v70, &qword_27EF827E0, &qword_24AA00C90);
  (*(v119 + 32))(v47 + v69, v71, v120);
  (*(v105 + 56))(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_conversationID, 1, 1, v106);
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isRTT) = 0;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isTTY) = 0;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsTTYWithVoice) = 0;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_supportsRequestToScreenShare) = 1;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isOutgoing) = 0;
  v72 = (v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertTitle);
  *v72 = 0;
  v72[1] = 0;
  v73 = (v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_errorAlertMessage);
  *v73 = 0;
  v73[1] = 0;
  v74 = v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_metadataSubtitle;
  *(v74 + 32) = 0;
  *v74 = 0u;
  *(v74 + 16) = 0u;
  v75 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_imageURL;
  v76 = sub_24A9FE960();
  (*(*(v76 - 8) + 56))(v47 + v75, 1, 1, v76);
  v77 = (v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_senderIdentityShortName);
  *v77 = 0;
  v77[1] = 0;
  v78 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall__faceTimeIDStatus;
  LODWORD(v132) = 2;
  type metadata accessor for TUCallFaceTimeIDStatus(0);
  v79 = v123;
  sub_24A9FEB00();
  (*(v126 + 32))(v47 + v78, v79, v127);
  v80 = OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive;
  *(v47 + OBJC_IVAR____TtC24FaceTimeNotificationCore11FTNMockCall_isWaitOnHoldActive) = 0;
  swift_beginAccess();
  v130 = v114;
  v131 = v113;
  sub_24A9FEB00();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LODWORD(v132) = 4;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v117;
  v132 = v117;

  v127 = v81;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = v97;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v132) = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v132 = 0;
  v133 = 0;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v121;
  v132 = v121;

  v83 = v82;
  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v132) = 0;

  sub_24A9FEB50();
  v84 = v122;
  sub_24A9DB010(v122, v70, &qword_27EF827E0, &qword_24AA00C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9DB010(v70, v128, &qword_27EF827E0, &qword_24AA00C90);

  sub_24A9FEB50();

  sub_24A9C994C(v70, &qword_27EF827E0, &qword_24AA00C90);
  sub_24A9C994C(v84, &qword_27EF827E0, &qword_24AA00C90);
  swift_beginAccess();
  *(v47 + v80) = 0;
  swift_beginAccess();
  *(v47 + 72) = 1;
  v85 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v86 = sub_24A9FEC30();
  [v85 setGivenName_];

  v87 = sub_24A9FEC30();
  [v85 setFamilyName_];

  v88 = swift_allocObject();
  *(v88 + 16) = v124;
  *(v88 + 32) = v85;
  swift_getKeyPath();
  swift_getKeyPath();
  v129 = v88;

  sub_24A9FEB50();
  return v47;
}

uint64_t sub_24A9F474C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24A9F4790(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24A9F47D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_24A9F4B58()
{
  sub_24A9F5068(319, &qword_27EF82DB8);
  if (v1 <= 0x3F)
  {
    v23 = *(v0 - 8) + 64;
    sub_24A9F5170(319, &qword_27EF82DC0, type metadata accessor for TUCallStatus, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v24 = *(v2 - 8) + 64;
      sub_24A9F511C(319, &qword_27EF82DC8, &qword_27EF82D90, &unk_24AA01F20);
      if (v5 <= 0x3F)
      {
        v25 = *(v4 - 8) + 64;
        sub_24A9F511C(319, &qword_27EF82DD0, &qword_27EF82810, &qword_24AA00CA8);
        if (v7 <= 0x3F)
        {
          v26 = *(v6 - 8) + 64;
          sub_24A9F5068(319, &qword_27EF82DD8);
          if (v9 <= 0x3F)
          {
            v10 = *(v8 - 8) + 64;
            sub_24A9F511C(319, &qword_27EF82DE0, &qword_27EF82D98, &unk_24AA01F30);
            if (v12 <= 0x3F)
            {
              v27 = *(v11 - 8) + 64;
              sub_24A9F50B4();
              if (v14 <= 0x3F)
              {
                v28 = *(v13 - 8) + 64;
                sub_24A9F511C(319, &qword_27EF82DF0, &qword_27EF827E0, &qword_24AA00C90);
                if (v16 <= 0x3F)
                {
                  v29 = *(v15 - 8) + 64;
                  sub_24A9F5170(319, &qword_27EF82DF8, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
                  if (v18 <= 0x3F)
                  {
                    v30 = *(v17 - 8) + 64;
                    sub_24A9F5170(319, &qword_27EF82E00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
                    if (v20 <= 0x3F)
                    {
                      v31 = *(v19 - 8) + 64;
                      sub_24A9F5170(319, qword_27EF82E08, type metadata accessor for TUCallFaceTimeIDStatus, MEMORY[0x277CBCED0]);
                      if (v22 <= 0x3F)
                      {
                        v32 = *(v21 - 8) + 64;
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
    }
  }
}

void sub_24A9F5068(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24A9FEB60();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_24A9F50B4()
{
  if (!qword_27EF82DE8)
  {
    sub_24A9C27EC(255, &qword_27EF82DA0, 0x277D6EE20);
    v0 = sub_24A9FEB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF82DE8);
    }
  }
}

void sub_24A9F511C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24A9FEB60();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A9F5170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t BaseServiceProvider.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24A9F5234(void **a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  v5 = v1[2];
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v9[3] = type metadata accessor for BaseServiceProvider();
  v9[0] = v2;

  XPCConnectionHolder.setConnection(_:exportedObject:)(v4, v9);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_24A9F52DC()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong remoteObjectProxy];
    sub_24A9FEE90();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA0, &qword_24AA022A8);
    if (swift_dynamicCast())
    {

      return v13;
    }

    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v9 = sub_24A9FEA90();
    __swift_project_value_buffer(v9, qword_27EF84B68);
    v10 = sub_24A9FEA70();
    v11 = sub_24A9FED90();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A9BF000, v10, v11, "Wrong remoteObjectProxy type.", v12, 2u);
      MEMORY[0x24C223120](v12, -1, -1);
    }
  }

  else
  {
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v6 = sub_24A9FEA90();
    __swift_project_value_buffer(v6, qword_27EF84B68);
    v3 = sub_24A9FEA70();
    v7 = sub_24A9FED90();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24A9BF000, v3, v7, "No valid XPC connection.", v8, 2u);
      MEMORY[0x24C223120](v8, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_24A9F5518@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = sub_24A9FEE70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = v1[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong remoteObjectProxy];
    sub_24A9FEE90();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {

      v13 = *(v3 - 8);
      v14 = *(v13 + 56);
      v14(v8, 0, 1, v3);
      (*(v13 + 32))(a1, v8, v3);
      return (v14)(a1, 0, 1, v3);
    }

    else
    {
      v20 = *(*(v3 - 8) + 56);
      v20(v8, 1, 1, v3);
      (*(v5 + 8))(v8, v4);
      if (qword_27EF82680 != -1)
      {
        swift_once();
      }

      v21 = sub_24A9FEA90();
      __swift_project_value_buffer(v21, qword_27EF84B68);
      v22 = sub_24A9FEA70();
      v23 = sub_24A9FED90();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_24A9BF000, v22, v23, "Wrong remoteObjectProxy type.", v24, 2u);
        MEMORY[0x24C223120](v24, -1, -1);
      }

      return (v20)(a1, 1, 1, v3);
    }
  }

  else
  {
    if (qword_27EF82680 != -1)
    {
      swift_once();
    }

    v16 = sub_24A9FEA90();
    __swift_project_value_buffer(v16, qword_27EF84B68);
    v17 = sub_24A9FEA70();
    v18 = sub_24A9FED90();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24A9BF000, v17, v18, "No valid XPC connection.", v19, 2u);
      MEMORY[0x24C223120](v19, -1, -1);
    }

    return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  }
}

BOOL sub_24A9F5924()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
  }

  return v3 != 0;
}

uint64_t BaseServiceProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24A9F5A04@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A9F6CC0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A9CF0A8(v4);
}

uint64_t sub_24A9F5A98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A9F6C98;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  *(v7 + 24) = v6;
  *(v7 + 32) = v5;
  sub_24A9CF0A8(v3);
  return sub_24A9CF118(v8);
}

uint64_t sub_24A9F5B54()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_24A9CF0A8(v1);
  return v1;
}

uint64_t sub_24A9F5BA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_24A9CF118(v5);
}

uint64_t sub_24A9F5C48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24A9F6C6C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24A9CF0A8(v4);
}

uint64_t sub_24A9F5CDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24A9F6C34;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_24A9CF0A8(v3);
  return sub_24A9CF118(v8);
}

uint64_t sub_24A9F5D98()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_24A9CF0A8(v1);
  return v1;
}

uint64_t sub_24A9F5DE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_24A9CF118(v5);
}

uint64_t ExtensionXPC.__allocating_init()()
{
  v0 = swift_allocObject();
  ExtensionXPC.init()();
  return v0;
}

uint64_t ExtensionXPC.init()()
{
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  v1 = objc_opt_self();
  v2 = [v1 interfaceWithProtocol_];
  v3 = [v1 interfaceWithProtocol_];
  v4 = type metadata accessor for XPCConnectionHolder();
  v5 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_onInvalidate];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_remoteInterface] = v2;
  *&v5[OBJC_IVAR____TtC24FaceTimeNotificationCore19XPCConnectionHolder_exportedInterface] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  *(v0 + 16) = objc_msgSendSuper2(&v8, sel_init);
  return v0;
}

uint64_t sub_24A9F5FCC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 32);
    v5 = OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value;

    v3(a1 + v5);
    return sub_24A9CF118(v3);
  }

  else
  {
    result = sub_24A9FF080();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A9F6094(uint64_t a1, uint64_t a2, char *a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value;
    v8 = a3;

    sub_24A9CF0A8(v5);
    v5(&a3[v7]);

    return sub_24A9CF118(v5);
  }

  else
  {
    result = sub_24A9FF080();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A9F618C(void *a1)
{
  v2 = v1;
  if (qword_27EF82680 != -1)
  {
    swift_once();
  }

  v4 = sub_24A9FEA90();
  __swift_project_value_buffer(v4, qword_27EF84B68);
  v5 = a1;
  v6 = sub_24A9FEA70();
  v7 = sub_24A9FEDA0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    type metadata accessor for UpstreamAction();
    v10 = v5;
    v11 = sub_24A9FEC80();
    v13 = sub_24A9D83EC(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24A9BF000, v6, v7, "ExtensionXPC: Send action %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x24C223120](v9, -1, -1);
    MEMORY[0x24C223120](v8, -1, -1);
  }

  swift_beginAccess();
  v14 = *(v2 + 40);
  if (v14)
  {
    v15 = *(v2 + 48);

    v14(v5);
    return sub_24A9CF118(v14);
  }

  else
  {
    result = sub_24A9FF080();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A9F638C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_24A9F618C(v3);
}

uint64_t sub_24A9F63DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertIdentifier(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24A9F52DC();
  if (result)
  {
    v9 = result;
    sub_24A9DAA40(a1, v7);
    v10 = type metadata accessor for WrappedAlertIdentifier(0);
    v11 = objc_allocWithZone(v10);
    sub_24A9DAA40(v7, v11 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value);
    v13.receiver = v11;
    v13.super_class = v10;
    v12 = objc_msgSendSuper2(&v13, sel_init);
    sub_24A9DAAA4(v7);
    [v9 receivedActionWithIdentifier:v12 action:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9F6514()
{
  v1 = v0[4];
  sub_24A9CF118(v0[3]);
  v2 = v0[5];
  v3 = v0[6];

  return sub_24A9CF118(v2);
}

uint64_t ExtensionXPC.deinit()
{
  v1 = *(v0 + 32);
  sub_24A9CF118(*(v0 + 24));
  v2 = *(v0 + 48);
  sub_24A9CF118(*(v0 + 40));
  return v0;
}

uint64_t ExtensionXPC.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_24A9CF118(v1);
  v3 = *(v0 + 48);
  sub_24A9CF118(*(v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_24A9F65E4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_24A9CF0A8(v2);
  return v2;
}

uint64_t sub_24A9F6638(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  return sub_24A9CF118(v6);
}

uint64_t (*sub_24A9F6690())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24A9F66E4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AlertIdentifier(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  result = sub_24A9F52DC();
  if (result)
  {
    v11 = result;
    sub_24A9DAA40(a1, v8);
    v12 = type metadata accessor for WrappedAlertIdentifier(0);
    v13 = objc_allocWithZone(v12);
    sub_24A9DAA40(v8, v13 + OBJC_IVAR____TtC24FaceTimeNotificationCore22WrappedAlertIdentifier_value);
    v15.receiver = v13;
    v15.super_class = v12;
    v14 = objc_msgSendSuper2(&v15, sel_init);
    sub_24A9DAAA4(v8);
    [v11 receivedActionWithIdentifier:v14 action:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A9F680C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24A9F6854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ExtensionXPC()
{
  result = qword_27EF82E90;
  if (!qword_27EF82E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A9F6BFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A9F6C34(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_24A9F6C6C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_24A9F6C98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24A9F6CC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t FTNMockAnswerRequest.__allocating_init(call:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t FTNMockAnswerRequest.behavior.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t FTNMockAnswerRequest.init(call:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t FTNMockAnswerRequest.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FTNMockAnswerRequest.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_24A9F6E9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *a2 = result;
  return result;
}

uint64_t sub_24A9F6EE0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t sub_24A9F6F20(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 24) = a1;
  return result;
}

uint64_t (*sub_24A9F6F64())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

id FTNMockCallCenter.callServicesClientCapabilities.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void FTNMockCallCenter.callServicesClientCapabilities.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t FTNMockCallCenter.currentAudioAndVideoCallGroups.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t FTNMockCallCenter.currentAudioAndVideoCallGroups.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t FTNMockCallCenter.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  FTNMockCallCenter.init()();
  return v3;
}

char *FTNMockCallCenter.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D6EE38]) init];
  v7 = MEMORY[0x277D84F90];
  *(v0 + 2) = v6;
  *(v0 + 3) = v7;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0;
  v8 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter__currentCalls;
  v10[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EB8, &qword_24AA022B8);
  sub_24A9FEB00();
  (*(v2 + 32))(&v0[v8], v5, v1);
  *&v0[OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_answerRequest] = 0;
  v0[OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isAddCallAllowed] = 1;
  v0[OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isHoldAndAnswerAllowed] = 1;
  return v0;
}

uint64_t FTNMockCallCenter.currentVideoCall.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t FTNMockCallCenter.currentVideoCall.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t FTNMockCallCenter.incomingVideoCall.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t FTNMockCallCenter.incomingVideoCall.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_24A9F74A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  *a2 = v5;
  return result;
}

uint64_t sub_24A9F752C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCallCenter.currentCalls.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

void (*FTNMockCallCenter.currentCalls.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24A9FEB30();
  return sub_24A9ED5D0;
}

uint64_t FTNMockCallCenter.$currentCalls.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  sub_24A9FEB10();
  return swift_endAccess();
}

uint64_t sub_24A9F7734(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  sub_24A9FEB10();
  return swift_endAccess();
}

uint64_t sub_24A9F77AC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EC0, &qword_24AA02308);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t FTNMockCallCenter.$currentCalls.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EC0, &qword_24AA02308);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  sub_24A9FEB20();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*FTNMockCallCenter.$currentCalls.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EC0, &qword_24AA02308);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter__currentCalls;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  sub_24A9FEB10();
  swift_endAccess();
  return sub_24A9EA0C8;
}

uint64_t _s24FaceTimeNotificationCore17FTNMockCallCenterC12currentCallsSayAA0eF0CGvg_0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v1;
}

id FTNMockCallCenter.conversationManager.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE98]);

  return [v0 init];
}

id FTNMockCallCenter.providerManager.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE28]);

  return [v0 init];
}

uint64_t FTNMockCallCenter.call(withUniqueProxyIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTNMockCall();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  return FTNMockCall.init(uniqueProxyIdentifier:)(a1, a2);
}

uint64_t FTNMockCallCenter.calls(passingTest:)(uint64_t (*a1)(void), uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  v4 = v20;
  v21 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_16:
    v5 = sub_24A9FEF30();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
      v19 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v7)
        {
          v9 = MEMORY[0x24C222870](v6, v4);
          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v17 = v21;
            goto LABEL_18;
          }
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v9 = *(v4 + 8 * v6 + 32);

          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        if (a1(v9))
        {
          sub_24A9FF020();
          v11 = v7;
          v12 = v5;
          v13 = v4;
          v14 = a1;
          v15 = a2;
          v16 = *(v21 + 16);
          sub_24A9FF050();
          a2 = v15;
          a1 = v14;
          v4 = v13;
          v5 = v12;
          v7 = v11;
          v8 = v19;
          sub_24A9FF060();
          sub_24A9FF030();
        }

        else
        {
        }

        ++v6;
        if (v10 == v5)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_18:

  return v17;
}

uint64_t FTNMockCallCenter.answerRequest.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_answerRequest;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t FTNMockCallCenter.answerRequest.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_answerRequest;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t FTNMockCallCenter.answer(with:)(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_answerRequest;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  swift_beginAccess();
  if (*(a1 + 24) != 2)
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB40();

  v5 = v19;
  v20 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = a1;
  if (!v6)
  {
LABEL_19:
    v10 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

LABEL_4:
  a1 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C222870](a1, v5);
      v8 = a1 + 1;
      if (!__OFADD__(a1, 1))
      {
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:

      goto LABEL_35;
    }

    if (a1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_18:
      v6 = sub_24A9FEF30();
      v17 = a1;
      if (!v6)
      {
        goto LABEL_19;
      }

      goto LABEL_4;
    }

    v7 = *(v5 + 8 * a1 + 32);

    v8 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A9FEB40();

    if (v18 == 1)
    {
      sub_24A9FF020();
      v9 = *(v20 + 16);
      sub_24A9FF050();
      sub_24A9FF060();
      sub_24A9FF030();
    }

    else
    {
    }

    ++a1;
  }

  while (v8 != v6);
  v10 = v20;
LABEL_20:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v11 = *(v10 + 16);
  if (v11)
  {
LABEL_23:
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C222870](v12, v10);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_32;
        }

        v13 = *(v10 + 8 * v12 + 32);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v11 = sub_24A9FEF30();
          if (!v11)
          {
            break;
          }

          goto LABEL_23;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A9FEB50();
      ++v12;
    }

    while (v14 != v11);
  }

  a1 = v17;
LABEL_35:
  v15 = *(a1 + 16);
  return _s24FaceTimeNotificationCore17FTNMockCallCenterC6answeryyAA0eF0CF_0();
}

uint64_t FTNMockCallCenter.answerAsAudio(_:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB50();
  return _s24FaceTimeNotificationCore17FTNMockCallCenterC6answeryyAA0eF0CF_0();
}

uint64_t FTNMockCallCenter.isAddCallAllowed.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isAddCallAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FTNMockCallCenter.isAddCallAllowed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isAddCallAllowed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FTNMockCallCenter.isHoldAndAnswerAllowed.getter()
{
  v1 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isHoldAndAnswerAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FTNMockCallCenter.isHoldAndAnswerAllowed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isHoldAndAnswerAllowed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FTNMockCallCenter.disconnect(_:with:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t sub_24A9F85E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

Swift::Void __swiftcall FTNMockCallCenter.swapCalls()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  v0 = v4;
  if (v4 >> 62)
  {
    v1 = sub_24A9FEF30();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v1 >= 1)
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C222870](v2, v0);
      }

      else
      {
        v3 = *(v0 + 8 * v2 + 32);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A9FEB40();

      swift_getKeyPath();
      swift_getKeyPath();
      if (v4 == 2)
      {
        LODWORD(v4) = 1;
      }

      else
      {
        sub_24A9FEB40();

        if (v4 != 1)
        {

          goto LABEL_7;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        LODWORD(v4) = 2;
      }

      sub_24A9FEB50();
LABEL_7:
      if (v1 == ++v2)
      {
        goto LABEL_16;
      }
    }
  }

  __break(1u);
}

uint64_t FTNMockCallCenter.requestVideoUpgrade(for:originatingUIType:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCallCenter.openShare(for:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t FTNMockCallCenter.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter__currentCalls;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_answerRequest);

  return v0;
}

uint64_t FTNMockCallCenter.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter__currentCalls;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EA8, &qword_24AA022B0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_answerRequest);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_24A9F8B74()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t sub_24A9F8BB8()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  return v3;
}

uint64_t sub_24A9F8C30()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

uint64_t sub_24A9F8C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTNMockCall();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  return FTNMockCall.init(uniqueProxyIdentifier:)(a1, a2);
}

uint64_t sub_24A9F8CF4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);
}

uint64_t sub_24A9F8D38()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isAddCallAllowed;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_24A9F8D80()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC24FaceTimeNotificationCore17FTNMockCallCenter_isHoldAndAnswerAllowed;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_24A9F8DFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB50();
  return _s24FaceTimeNotificationCore17FTNMockCallCenterC6answeryyAA0eF0CF_0();
}

uint64_t sub_24A9F8E7C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t sub_24A9F8F1C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

uint64_t sub_24A9F8F90()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

id sub_24A9F9044()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE98]);

  return [v0 init];
}

id sub_24A9F907C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6EE28]);

  return [v0 init];
}

uint64_t sub_24A9F90B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A9FEB50();
}

id sub_24A9F917C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t _s24FaceTimeNotificationCore17FTNMockCallCenterC6answeryyAA0eF0CF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-v5];
  sub_24A9FE9C0();
  v7 = sub_24A9FE9D0();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9F9618(v6, v4);

  sub_24A9FEB50();
  sub_24A9F9688(v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = 1;

  sub_24A9FEB50();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A9FEB40();

  v8 = v10[11];
  swift_getKeyPath();
  swift_getKeyPath();
  v10[10] = v8;

  return sub_24A9FEB50();
}

uint64_t type metadata accessor for FTNMockCallCenter()
{
  result = qword_27EF82EC8;
  if (!qword_27EF82EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A9F94BC()
{
  sub_24A9F95AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24A9F95AC()
{
  if (!qword_27EF82ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF82EB8, &qword_24AA022B8);
    v0 = sub_24A9FEB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF82ED8);
    }
  }
}

uint64_t sub_24A9F9618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A9F9688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF827E0, &qword_24AA00C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Reminder.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Reminder.dialUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Reminder() + 20);
  v4 = sub_24A9FE960();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Reminder()
{
  result = qword_27EF82EF8;
  if (!qword_27EF82EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EventKitCallsReminder.add(reminder:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24A9CB4BC;

  return sub_24A9FA19C(a1);
}

uint64_t sub_24A9F98E4(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82A80, &unk_24AA02770);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

void sub_24A9F99B0(void *a1)
{
  v2 = v1;
  v43[1] = *MEMORY[0x277D85DE8];
  v39 = sub_24A9FE9D0();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v39);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A9FE910();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v40 = a1;
  v13 = [v12 reminderWithEventStore_];
  v14 = *v1;
  v15 = v1[1];
  v16 = v13;
  v17 = sub_24A9FEC30();
  [v16 setTitle_];

  v18 = type metadata accessor for Reminder();
  v19 = *(v18 + 20);
  v20 = sub_24A9FE940();
  [v16 setURL_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82AB0, &qword_24AA01588);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_24AA01220;
  v22 = [objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_];
  if (!v22)
  {
    __break(1u);
  }

  *(v21 + 32) = v22;
  sub_24A9FAB84();
  v23 = sub_24A9FECD0();

  [v16 setAlarms_];

  v24 = sub_24A9FE940();
  [v16 setAction_];

  v25 = [objc_opt_self() calendarWithIdentifier_];
  if (v25)
  {
    v26 = v25;
    v27 = *(v2 + *(v18 + 24));
    sub_24A9FE9A0();
    v28 = sub_24A9FE990();
    (*(v4 + 8))(v7, v39);
    v29 = [v26 components:636 fromDate:v28];

    sub_24A9FE900();
    v30 = sub_24A9FE8F0();
    [v16 setDueDateComponents_];

    v31 = v40;
    v32 = [v40 defaultCalendarForNewReminders];
    [v16 setCalendar_];

    v43[0] = 0;
    if ([v31 saveReminder:v16 error:v43])
    {
      v33 = *(v41 + 8);
      v34 = v43[0];
      v33(v11, v42);
    }

    else
    {
      v36 = v43[0];
      sub_24A9FE930();

      swift_willThrow();
      (*(v41 + 8))(v11, v42);
    }
  }

  else
  {

    sub_24A9FA5FC();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A9F9E4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24A9CBD30;

  return sub_24A9FA19C(a1);
}

uint64_t FTNCall.reminder(timeIntervalSinceNow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v35 = a3;
  v8 = sub_24A9FE960();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = &v32 - v13;
  (*(a2 + 176))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82EE0, &qword_24AA025F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24AA00690;
  v36 = v4;
  v15 = (*(*(a2 + 8) + 8))(a1);
  v17 = v16;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_24A9FA5A8();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v18 = sub_24A9FEC50();
  v20 = v19;

  v21 = (*(a2 + 184))(a1, a2);
  v22 = [v21 URL];

  if (v22)
  {
    sub_24A9FE950();

    v23 = v32;
    v24 = *(v33 + 32);
    v25 = v12;
    v26 = v18;
    v27 = v34;
    v24(v32, v25, v34);
    v28 = type metadata accessor for Reminder();
    v29 = v35;
    result = (v24)(v35 + *(v28 + 20), v23, v27);
    *v29 = v26;
    v29[1] = v20;
    *(v29 + *(v28 + 24)) = a4;
  }

  else
  {

    sub_24A9FA5FC();
    swift_allocError();
    *v31 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24A9FA1BC()
{
  if (qword_27EF82688 != -1)
  {
    swift_once();
  }

  v1 = sub_24A9FEA90();
  __swift_project_value_buffer(v1, qword_27EF84B80);
  v2 = sub_24A9FEA70();
  v3 = sub_24A9FEDA0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A9BF000, v2, v3, "Add reminder for call.", v4, 2u);
    MEMORY[0x24C223120](v4, -1, -1);
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v0[19] = v5;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_24A9FA3A4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF82F10, &unk_24AA02760);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24A9F98E4;
  v0[13] = &block_descriptor_2;
  v0[14] = v6;
  [v5 requestWriteOnlyAccessToEventsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24A9FA3A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_24A9FA538;
  }

  else
  {
    v3 = sub_24A9FA4B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A9FA4B4()
{
  v1 = *(v0 + 144);
  sub_24A9F99B0(*(v0 + 152));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24A9FA538()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[20];
  v4 = v0[1];

  return v4();
}

unint64_t sub_24A9FA5A8()
{
  result = qword_27EF82EE8;
  if (!qword_27EF82EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82EE8);
  }

  return result;
}

unint64_t sub_24A9FA5FC()
{
  result = qword_27EF82EF0;
  if (!qword_27EF82EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82EF0);
  }

  return result;
}

uint64_t sub_24A9FA664(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24A9FE960();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A9FA724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A9FE960();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24A9FA7C8()
{
  result = sub_24A9FE960();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of CallsReminder.add(reminder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24A9CB4BC;

  return v11(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for EventKitReminderError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventKitReminderError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A9FAB18()
{
  result = qword_27EF82F08;
  if (!qword_27EF82F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF82F08);
  }

  return result;
}