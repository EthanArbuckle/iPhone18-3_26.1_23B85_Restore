uint64_t sub_227A19B1C()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = *(v0 + 152);
  *(v0 + 56) = v3;
  v4 = (v0 + 16);
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  if (!swift_dynamicCast() || (v6 = *(v0 + 48) & 0xE0, sub_227A203A8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)), v4 = v3, v6 != 64))
  {
    sub_227A1387C();
    OUTLINED_FUNCTION_95_0();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_71_1(v7, v8);
  }

  v9 = *(v0 + 80);
  v10 = *(*(v0 + 88) + OBJC_IVAR___GKFastSyncTransport_reporter);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_108_0(v11);
  v12 = v4;
  OUTLINED_FUNCTION_29_1();

  v13 = *(v0 + 8);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_161();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_227A19C80(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_86();

  return sub_227A62CD4(v10, v11);
}

uint64_t sub_227A19D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_227A7273C();
  v3[5] = sub_227A7272C();
  v5 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A19D9C, v5, v4);
}

uint64_t sub_227A19D9C()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_104_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_26_2(v8);

  return FastSyncTransport.chooseBestHostingPlayer(with:)();
}

uint64_t sub_227A19E48()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = v1;
  OUTLINED_FUNCTION_36();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = v6[7];
  v8 = v6[4];
  v9 = v6[2];
  v10 = *v0;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  if (v2)
  {
    v12 = sub_227A724BC();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v4 + 48);
  v14 = v13[2];
  v15 = OUTLINED_FUNCTION_76();
  v16(v15);

  _Block_release(v13);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_161();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

void __swiftcall FastSyncTransport.voiceChat(withName:players:transportContext:)(GKVoiceChat_optional *__return_ptr retstr, Swift::String withName, Swift::OpaquePointer players, GKTransportContext *transportContext)
{
  if (qword_27D7DC4C8 != -1)
  {
    swift_once();
  }

  v4 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v4, qword_27D7DE1C8);
  v5 = sub_227A7226C();
  sub_227A728BC();
  v6 = OUTLINED_FUNCTION_41_1();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_28_0();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_36_1(v8);
    OUTLINED_FUNCTION_53_1(&dword_227904000, v9, v10, "<Warning>: VoiceChat is not available at this moment.");
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }
}

id FastSyncTransport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FastSyncTransport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227A1A264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for FastSyncActivity(0);
  v5[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  sub_227A7273C();
  v5[14] = sub_227A7272C();
  v9 = sub_227A726EC();
  v5[15] = v9;
  v5[16] = v8;

  return MEMORY[0x2822009F8](sub_227A1A334, v9, v8);
}

uint64_t sub_227A1A334()
{
  v62 = v0;
  v1 = *(v0 + 88);
  v2 = sub_227A1AA80(4u);
  v4 = v3;
  v5 = *(v0 + 56);
  v6 = sub_227A498C0(v2, v3, *(v0 + 80));
  if (!v6)
  {
    v10 = *(v0 + 112);

    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v11 = *(v0 + 80);
    v12 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v12, qword_27D7DE210);

    v13 = sub_227A7226C();
    v14 = sub_227A728AC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 80);
      v16 = OUTLINED_FUNCTION_106();
      v17 = OUTLINED_FUNCTION_107();
      v61[0] = v17;
      *v16 = 136315138;
      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      sub_227A23DEC();
      v18 = sub_227A7283C();
      v20 = sub_227A46730(v18, v19, v61);

      *(v16 + 4) = v20;
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

LABEL_9:
    v26 = *(v0 + 104);

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_68_1();

    __asm { BRAA            X1, X16 }
  }

  v7 = v6;
  v8 = *(v0 + 56);
  if (*(v8 + 136))
  {
    v9 = *(v0 + 112);

    goto LABEL_9;
  }

  v29 = *(v0 + 104);
  v60 = *(v0 + 96);
  v61[0] = 0;
  v30 = *(v0 + 64);
  v31 = *(v0 + 72);
  v61[1] = 0xE000000000000000;
  swift_bridgeObjectRetain_n();
  sub_227A72B1C();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x22AA9FE40](0xD00000000000001CLL, 0x8000000227A98F60);
  v32 = *(v8 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
  v58 = *(v8 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 8);
  v59 = *(v8 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type);
  *(v0 + 16) = v59;
  *(v0 + 24) = v58;
  v57 = v32;
  *(v0 + 32) = v32;
  sub_227A72C1C();
  v33 = *(v0 + 40);
  v34 = *(v0 + 48);
  sub_227A71EBC();
  v35 = (v29 + *(v60 + 20));
  *v35 = v30;
  v35[1] = v31;
  v36 = (v29 + *(v60 + 24));
  *v36 = v33;
  v36[1] = v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD040, &unk_227AA5CC0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();

  v40 = sub_227A1F2A4(v30, v31, v29, v7, v2, v4);
  *(v0 + 136) = v40;
  sub_227A1AB04(v40);
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v41 = *(v0 + 56);
  v42 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v42, qword_27D7DE210);

  v43 = sub_227A7226C();
  v44 = sub_227A7289C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_63_1();
    v61[0] = OUTLINED_FUNCTION_82_0();
    *v45 = 136315394;
    v46 = sub_227A49E0C(v59, v58, v57);
    sub_227A46730(v46, v47, v61);
    OUTLINED_FUNCTION_100_0();

    *(v45 + 4) = v37;
    *(v45 + 12) = 2080;
    v48 = sub_227A7283C();
    v50 = v49;

    v51 = sub_227A46730(v48, v50, v61);

    *(v45 + 14) = v51;
    _os_log_impl(&dword_227904000, v43, v44, "Joining group session provider on channel: %s.\nAll handles in the provider: %s", v45, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {
  }

  v52 = *(MEMORY[0x277CCB150] + 4);
  v53 = swift_task_alloc();
  *(v0 + 144) = v53;
  OUTLINED_FUNCTION_42_1(&qword_27D7DD048, &qword_27D7DD040, &unk_227AA5CC0);
  OUTLINED_FUNCTION_103_0();
  *v53 = v54;
  v53[1] = sub_227A1A87C;
  OUTLINED_FUNCTION_68_1();

  return MEMORY[0x28211FBF0]();
}

uint64_t sub_227A1A87C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_50_1();
  v7 = *(v6 + 128);
  v8 = *(v1 + 120);
  if (v0)
  {
    v9 = sub_227A1AA10;
  }

  else
  {
    v9 = sub_227A1A9A4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_227A1A9A4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[13];

  OUTLINED_FUNCTION_23();

  return v4();
}

uint64_t sub_227A1AA10()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[19];
  v4 = v0[13];

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_227A1AA80(unsigned __int8 a1)
{
  v3 = *(v1 + OBJC_IVAR___GKFastSyncTransport_syncLocalParticipantHandle);
  result = sub_227A14498();
  if (!v5)
  {
    sub_227A1387C();
    swift_allocError();
    *v6 = a1 | 0x40u;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 32;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_227A1AB04(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27[-1] - v6;
  if (qword_27D7DC4E0 != -1)
  {
    swift_once();
  }

  v8 = sub_227A7227C();
  __swift_project_value_buffer(v8, qword_27D7DE210);

  v9 = sub_227A7226C();
  v10 = sub_227A728AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_227A46730(*(v1 + 24), *(v1 + 32), v27);
    *(v11 + 12) = 2080;
    v13 = sub_227A1F624();
    v15 = v14;

    v16 = sub_227A46730(v13, v15, v27);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_227904000, v9, v10, "%s-> Setting provider: %s.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAA1930](v12, -1, -1);
    MEMORY[0x22AAA1930](v11, -1, -1);
  }

  else
  {
  }

  v17 = *(v2 + 136);
  *(v2 + 136) = a1;

  v27[0] = *(a1 + *(*a1 + 120));
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD050, &qword_227AA35D8);
  sub_2279F4CBC(&qword_27D7DD058, &qword_27D7DD050, &qword_227AA35D8);
  sub_227A722FC();

  swift_beginAccess();
  sub_227A722AC();
  swift_endAccess();

  v18 = sub_227A7276C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  sub_227A7273C();

  v20 = sub_227A7272C();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  v21[5] = a1;

  v23 = sub_227A20018(0, 0, v7, &unk_227AA35E8, v21);
  sub_2279F3774(v7, &qword_27D7DC5B8, &qword_227AA04D0);
  v24 = *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionObserverTask);
  *(v2 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_sessionObserverTask) = v23;
}

uint64_t sub_227A1AF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_227A7273C();
  v4[6] = sub_227A7272C();
  v6 = sub_227A726EC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_227A1AFA4, v6, v5);
}

uint64_t sub_227A1AFA4()
{
  OUTLINED_FUNCTION_132();
  v58 = v0;
  v1 = v0[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
    v51 = v0[6];
    goto LABEL_22;
  }

  v3 = *(v0[5] + OBJC_IVAR___GKFastSyncTransport_atomicGameChannel);
  sub_227A143B8();
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = v0[2];
  v5 = v0[3];
  v8 = *(v4 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type);
  v7 = *(v4 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 8);
  v9 = *(v4 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
  OUTLINED_FUNCTION_40_1();
  sub_227A23E54();

  if (v8 == v6 && v7 == v5)
  {
    v52 = v0[2];
    sub_227A23E5C();
    goto LABEL_21;
  }

  v11 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_40_1();
  sub_227A23E5C();
  if (v11)
  {
LABEL_21:
    v53 = v0[6];
    v54 = v0[9];
    swift_unknownObjectRelease();
LABEL_22:

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_69_1();

    __asm { BRAA            X1, X16 }
  }

LABEL_8:
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v13 = v0[3];
  v12 = v0[4];
  v14 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v14, qword_27D7DE210);

  v15 = sub_227A7226C();
  v16 = sub_227A7289C();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[3];
    v17 = v0[4];
    v19 = v0[2];
    v20 = OUTLINED_FUNCTION_63_1();
    v21 = OUTLINED_FUNCTION_82_0();
    *(v20 + 4) = OUTLINED_FUNCTION_109_0(4.8151e-34, v21, v22, v23, v24, v25, v26, v27, v28, v21);
    *(v20 + 12) = 2080;
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    v29 = sub_227A7283C();
    v31 = sub_227A46730(v29, v30, &v57);

    *(v20 + 14) = v31;
    OUTLINED_FUNCTION_107_0(&dword_227904000, v32, v33, "Create new game channel(matchID:%s with participants: %s");
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  v34 = v0[5];
  v35 = OBJC_IVAR___GKFastSyncTransport_gameChannelMigrationTask;
  v0[10] = OBJC_IVAR___GKFastSyncTransport_gameChannelMigrationTask;
  if (*(v34 + v35))
  {
    v36 = *(v34 + v35);

    sub_227A727DC();
  }

  sub_227A143B8();
  if (v37)
  {
    sub_227A49E78();
  }

  v38 = v0[5];
  v40 = v0[2];
  v39 = v0[3];
  sub_227A1440C();
  v41 = *(v38 + OBJC_IVAR___GKFastSyncTransport_daemonProxy);
  v42 = type metadata accessor for FastSyncChannel();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_82();
  sub_227A4C7E4();
  v0[11] = v45;

  sub_227A1440C();
  v46 = swift_task_alloc();
  v0[12] = v46;
  *v46 = v0;
  v46[1] = sub_227A1B348;
  v47 = v0[5];
  OUTLINED_FUNCTION_69_1();

  return sub_227A1B72C(v48);
}

uint64_t sub_227A1B348()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  v4 = *(v0 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_32();
  *v6 = v5;
  *(v8 + 104) = v7;

  OUTLINED_FUNCTION_74_1();
  v10 = *(v9 + 64);
  v11 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_227A1B458, v11, v10);
}

uint64_t sub_227A1B458()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85_0();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_227A1B4F0;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_108(v0[11]);

  return sub_227A1A264(v6, v7, v8, v9);
}

uint64_t sub_227A1B4F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v1 + 112);
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_50_1();
  v7 = *(v6 + 64);
  v8 = *(v1 + 56);
  if (v0)
  {
    v9 = sub_227A1B6B8;
  }

  else
  {
    v9 = sub_227A1B618;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_227A1B618()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[11];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  OUTLINED_FUNCTION_57_1();
  sub_227A49FA0();
  v6 = v0[11];
  v7 = v0[9];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_23();

  return v8();
}

uint64_t sub_227A1B6B8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41();
  v5 = v0[15];

  return v4();
}

uint64_t sub_227A1B72C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = sub_227A7273C();
  v2[6] = sub_227A7272C();
  v5 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A1B800, v5, v4);
}

uint64_t sub_227A1B800()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = sub_227A7276C();
  OUTLINED_FUNCTION_111_0(v6);
  OUTLINED_FUNCTION_110();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_227A7272C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v5;
  v9[5] = v7;

  v11 = OUTLINED_FUNCTION_57_1();
  sub_227A2EC1C(v11, v12, v3, v13, v9);
  OUTLINED_FUNCTION_13();

  v14 = v0[1];
  OUTLINED_FUNCTION_161();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_227A1B910(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_227A7273C();
  v2[4] = sub_227A7272C();
  v4 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A1B9A8, v4, v3);
}

uint64_t sub_227A1B9A8()
{
  OUTLINED_FUNCTION_132();
  v54 = v0;
  v2 = v0[3];
  v1 = v0[4];

  v3 = *(v2 + OBJC_IVAR___GKFastSyncTransport_atomicGameChannel);
  sub_227A143B8();
  if (!v4)
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v8 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v8, qword_27D7DE210);
    v9 = sub_227A7226C();
    v10 = sub_227A728AC();
    if (OUTLINED_FUNCTION_46_1(v10))
    {
      OUTLINED_FUNCTION_28_0();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_36_1(v11);
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    goto LABEL_24;
  }

  v5 = v4;
  v6 = v0[3];
  v7 = sub_227A1AA80(2u);
  v18 = sub_227A498C0(v7, v17, v0[2]);

  if (!v18)
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v32 = v0[2];
    v33 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v33, qword_27D7DE210);

    v9 = sub_227A7226C();
    sub_227A728AC();

    if (!OUTLINED_FUNCTION_143())
    {
      goto LABEL_23;
    }

    v34 = v0[2];
    OUTLINED_FUNCTION_106();
    v35 = OUTLINED_FUNCTION_100();
    v53[0] = v35;
    *v32 = 136315138;
    v36 = sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    v37 = sub_227A7283C();
    sub_227A46730(v37, v38, v53);
    OUTLINED_FUNCTION_100_0();

    *(v32 + 4) = v36;
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    goto LABEL_22;
  }

  if (!*(v5 + 136))
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v44 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v44, qword_27D7DE210);
    v9 = sub_227A7226C();
    v45 = sub_227A728AC();
    if (!OUTLINED_FUNCTION_27_0(v45))
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_28_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
LABEL_22:
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
LABEL_23:

LABEL_24:

    goto LABEL_25;
  }

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v19 = v0[2];
  v20 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v20, qword_27D7DE210);

  v21 = sub_227A7226C();
  sub_227A728AC();

  if (OUTLINED_FUNCTION_143())
  {
    v22 = v0[2];
    OUTLINED_FUNCTION_106();
    v23 = OUTLINED_FUNCTION_100();
    v53[0] = v23;
    *v19 = 136315138;
    v24 = sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    v25 = sub_227A7283C();
    sub_227A46730(v25, v26, v53);
    OUTLINED_FUNCTION_100_0();

    *(v19 + 4) = v24;
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  sub_227A4A708(v0[2]);

LABEL_25:
  OUTLINED_FUNCTION_23();

  return v51();
}

uint64_t sub_227A1BDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_227A7273C();
  v4[6] = sub_227A7272C();
  v6 = sub_227A726EC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_227A1BE54, v6, v5);
}

uint64_t sub_227A1BE54()
{
  OUTLINED_FUNCTION_132();
  v56 = v0;
  v1 = v0[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (!Strong)
  {
LABEL_21:
    v52 = v0[6];

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_69_1();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0[5] + OBJC_IVAR___GKFastSyncTransport_atomicLobbyChannel);
  sub_227A143B8();
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = v0[2];
  v5 = v0[3];
  v8 = *(v4 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type);
  v7 = *(v4 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 8);
  v9 = *(v4 + OBJC_IVAR____TtC20GameCenterFoundation15FastSyncChannel_type + 16);
  OUTLINED_FUNCTION_40_1();
  sub_227A23E54();

  if (v8 == v6 && v7 == v5)
  {
    v51 = v0[2];
    sub_227A23E5C();
    goto LABEL_20;
  }

  v11 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_40_1();
  sub_227A23E5C();
  if (v11)
  {
LABEL_20:
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

LABEL_8:
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v13 = v0[3];
  v12 = v0[4];
  v14 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v14, qword_27D7DE210);

  v15 = sub_227A7226C();
  v16 = sub_227A7289C();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[3];
    v17 = v0[4];
    v19 = v0[2];
    v20 = OUTLINED_FUNCTION_63_1();
    v21 = OUTLINED_FUNCTION_82_0();
    *(v20 + 4) = OUTLINED_FUNCTION_109_0(4.8151e-34, v21, v22, v23, v24, v25, v26, v27, v28, v21);
    *(v20 + 12) = 2080;
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    sub_227A23DEC();
    v29 = sub_227A7283C();
    v31 = sub_227A46730(v29, v30, &v55);

    *(v20 + 14) = v31;
    OUTLINED_FUNCTION_107_0(&dword_227904000, v32, v33, "Create new lobby channel(sessionID:%s with participants: %s");
    OUTLINED_FUNCTION_86_0();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  v34 = v0[5];
  v35 = OBJC_IVAR___GKFastSyncTransport_lobbyChannelMigrationTask;
  v0[10] = OBJC_IVAR___GKFastSyncTransport_lobbyChannelMigrationTask;
  if (*(v34 + v35))
  {
    v36 = *(v34 + v35);

    sub_227A727DC();
  }

  sub_227A143B8();
  if (v37)
  {
    sub_227A49E78();
  }

  v38 = v0[5];
  v40 = v0[2];
  v39 = v0[3];
  sub_227A1440C();
  v41 = *(v38 + OBJC_IVAR___GKFastSyncTransport_daemonProxy);
  v42 = type metadata accessor for FastSyncChannel();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_82();
  sub_227A4C7E4();
  v0[11] = v45;

  sub_227A1440C();
  v46 = swift_task_alloc();
  v0[12] = v46;
  *v46 = v0;
  v46[1] = sub_227A1C1EC;
  v47 = v0[5];
  OUTLINED_FUNCTION_69_1();

  return sub_227A1B72C(v48);
}

uint64_t sub_227A1C1EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  v4 = *(v0 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_32();
  *v6 = v5;
  *(v8 + 104) = v7;

  OUTLINED_FUNCTION_74_1();
  v10 = *(v9 + 64);
  v11 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_227A1C2FC, v11, v10);
}

uint64_t sub_227A1C2FC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85_0();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_227A1C394;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_108(v0[11]);

  return sub_227A1A264(v6, v7, v8, v9);
}

uint64_t sub_227A1C394()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v1 + 112);
  *v4 = *v2;
  *(v3 + 120) = v0;

  OUTLINED_FUNCTION_50_1();
  v7 = *(v6 + 64);
  v8 = *(v1 + 56);
  if (v0)
  {
    v9 = sub_227A24298;
  }

  else
  {
    v9 = sub_227A1C4BC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_227A1C4BC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[11];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  OUTLINED_FUNCTION_9_2();
  sub_227A49FA0();
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_227A1C56C;
  v6 = v0[5];
  v7 = OUTLINED_FUNCTION_108(v0[11]);

  return sub_227A1C70C(v7);
}

uint64_t sub_227A1C56C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_2_7();
  *v3 = v2;
  v4 = *(v0 + 128);
  v5 = *v1;
  OUTLINED_FUNCTION_32();
  *v6 = v5;
  *(v8 + 136) = v7;

  OUTLINED_FUNCTION_74_1();
  v10 = *(v9 + 64);
  v11 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_227A1C67C, v11, v10);
}

uint64_t sub_227A1C67C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  swift_unknownObjectRelease();

  v6 = *(v5 + OBJC_IVAR___GKFastSyncTransport_newChannelObservationTask);
  *(v5 + OBJC_IVAR___GKFastSyncTransport_newChannelObservationTask) = v1;

  OUTLINED_FUNCTION_23();

  return v7();
}

uint64_t sub_227A1C70C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = sub_227A7273C();
  v2[6] = sub_227A7272C();
  v5 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A1C7E0, v5, v4);
}

uint64_t sub_227A1C7E0()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = sub_227A7276C();
  OUTLINED_FUNCTION_111_0(v6);
  OUTLINED_FUNCTION_110();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_227A7272C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v5;
  v9[5] = v7;

  v11 = OUTLINED_FUNCTION_57_1();
  sub_227A2EC1C(v11, v12, v3, v13, v9);
  OUTLINED_FUNCTION_13();

  v14 = v0[1];
  OUTLINED_FUNCTION_161();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_227A1C8F0()
{
  OUTLINED_FUNCTION_31();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for ChannelMigrationActionMessage(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_227A7273C();
  v1[6] = OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_13();
  sub_227A726EC();
  OUTLINED_FUNCTION_73_1();
  v1[7] = v5;
  v1[8] = v6;
  v7 = OUTLINED_FUNCTION_72_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227A1C9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_1();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_132();
  a18 = v20;
  v24 = v20[4];
  v25 = sub_227A085C8(*(v20[2] + *(v24 + 20)));
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v26 = v20[5];
  v27 = v20[2];
  v28 = sub_227A7227C();
  __swift_project_value_buffer(v28, qword_27D7DE210);
  OUTLINED_FUNCTION_31_1();
  sub_227A24238(v27, v26);
  v29 = sub_227A7226C();
  v30 = sub_227A7289C();
  v31 = OUTLINED_FUNCTION_27_0(v30);
  v32 = v20[5];
  if (v31)
  {
    OUTLINED_FUNCTION_106();
    v33 = OUTLINED_FUNCTION_100();
    a9 = v33;
    *v21 = 136315138;
    v34 = sub_227A08414(*(v32 + *(v24 + 20)));
    v36 = v35;
    OUTLINED_FUNCTION_1_11();
    sub_227A241E4();
    v37 = sub_227A46730(v34, v36, &a9);

    *(v21 + 4) = v37;
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {

    OUTLINED_FUNCTION_1_11();
    sub_227A241E4();
  }

  v43 = v20[4];
  v44 = v20[2];
  v45 = (v44 + *(v43 + 24));
  v46 = *v45;
  v47 = v45[1];
  v48 = *(v44 + *(v43 + 28));
  a9 = MEMORY[0x277D84FA0];
  sub_227A46E58(v48);
  v20[9] = a9;
  if (v25)
  {
    v49 = swift_task_alloc();
    v20[10] = v49;
    *v49 = v20;
    OUTLINED_FUNCTION_44_1(v49);
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_34_1();

    return sub_227A1BDB8(v50, v51, v52);
  }

  else
  {
    v55 = swift_task_alloc();
    v20[12] = v55;
    *v55 = v20;
    OUTLINED_FUNCTION_44_1(v55);
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_34_1();

    return sub_227A1AF08(v56, v57, v58);
  }
}

uint64_t sub_227A1CC14()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_227A1CE7C;
  }

  else
  {
    v12 = v3[9];

    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_227A1CD18;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A1CD18()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_23();

  return v3();
}

uint64_t sub_227A1CD78()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_227A1CEF4;
  }

  else
  {
    v12 = v3[9];

    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_227A24290;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A1CE7C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_227A1CEF4()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[13];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  OUTLINED_FUNCTION_41();

  return v5();
}

uint64_t sub_227A1CF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for ChannelMigrationActionMessage(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D0, &qword_227AA3660) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0D8, &qword_227AA3668);
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E0, &qword_227AA3670);
  v5[15] = v12;
  v13 = *(v12 - 8);
  v5[16] = v13;
  v14 = *(v13 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = sub_227A7273C();
  v5[19] = sub_227A7272C();
  v16 = sub_227A726EC();
  v5[20] = v16;
  v5[21] = v15;

  return MEMORY[0x2822009F8](sub_227A1D158, v16, v15);
}

uint64_t sub_227A1D158()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_81_0();
  sub_227A4B89C();
  OUTLINED_FUNCTION_139();
  sub_227A7278C();
  (*(v3 + 8))(v0, v2);
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v4 = *(v1 + 144);
  v5 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v5);
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_6_6(v8);
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_227A1D224()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[23];
  v3 = v0[22];
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  OUTLINED_FUNCTION_74_1();
  v7 = *(v6 + 168);
  v8 = v0[20];

  return MEMORY[0x2822009F8](sub_227A1D354, v8, v7);
}

uint64_t sub_227A1D354()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = v0[11];
  if (__swift_getEnumTagSinglePayload(v2, 1, v0[7]) == 1)
  {
    v3 = OUTLINED_FUNCTION_96_0();
    v4(v3);

LABEL_8:
    OUTLINED_FUNCTION_112_0();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_161();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v5 = v0[6];
  sub_227A2418C(v2, v0[10]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    OUTLINED_FUNCTION_113_0();
    OUTLINED_FUNCTION_1_11();
    sub_227A241E4();
    v10 = *(v1 + 8);
    v11 = OUTLINED_FUNCTION_115();
    v12(v11);
    goto LABEL_8;
  }

  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_227A1D4D8;
  OUTLINED_FUNCTION_108(v0[10]);
  OUTLINED_FUNCTION_161();

  return sub_227A1C8F0();
}

uint64_t sub_227A1D4D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v1 + 200);
  *v4 = *v2;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_50_1();
  v7 = *(v6 + 168);
  v8 = *(v1 + 160);
  if (v0)
  {
    v9 = sub_227A1D69C;
  }

  else
  {
    v9 = sub_227A1D600;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_227A1D600()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_1_11();
  sub_227A241E4();
  v2 = *(v0 + 144);
  v3 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v3);
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_227A1D69C()
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = sub_227A7227C();
  __swift_project_value_buffer(v4, qword_27D7DE210);
  OUTLINED_FUNCTION_31_1();
  v5 = OUTLINED_FUNCTION_115();
  sub_227A24238(v5, v6);
  v7 = v1;
  v8 = sub_227A7226C();
  v9 = sub_227A728BC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 208);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  if (v10)
  {
    v40 = *(v0 + 208);
    v41 = *(v0 + 192);
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    OUTLINED_FUNCTION_63_1();
    v16 = OUTLINED_FUNCTION_90_0();
    v42 = OUTLINED_FUNCTION_107();
    *v13 = 136315394;
    sub_227A24238(v12, v14);
    OUTLINED_FUNCTION_98_0();
    sub_227A7251C();
    OUTLINED_FUNCTION_114_0();
    v17 = OUTLINED_FUNCTION_98_0();
    v20 = sub_227A46730(v17, v18, v19);

    OUTLINED_FUNCTION_87_0(v21, v22, v23, v24, v25, v26, v27, v28, v39, v40);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v29;
    *v16 = v29;
    OUTLINED_FUNCTION_115_0(&dword_227904000, v30, v31, "Failed to handle migration message: %s. Error: %@");
    sub_2279F3774(v16, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {

    sub_227A241E4();
    OUTLINED_FUNCTION_101_0();
  }

  sub_227A241E4();
  v32 = *(v0 + 144);
  v33 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v33);
  v34 = *(MEMORY[0x277D85798] + 4);
  v35 = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_17_2(v35);
  *v36 = v37;
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_227A1D90C()
{
  OUTLINED_FUNCTION_31();
  v1[2] = v2;
  v1[3] = v0;
  sub_227A7273C();
  v1[4] = OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_13();
  sub_227A726EC();
  OUTLINED_FUNCTION_73_1();
  v1[5] = v3;
  v1[6] = v4;
  v5 = OUTLINED_FUNCTION_72_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227A1D98C()
{
  v1 = v0[2];
  v2 = type metadata accessor for JoinChannelActionMessage(0);
  v3 = sub_227A085C8(*(v1 + v2[5]));
  v4 = (v1 + v2[6]);
  v5 = *v4;
  v6 = v4[1];
  v16 = MEMORY[0x277D84FA0];
  sub_227A46E58(*(v1 + v2[7]));
  v0[7] = v16;
  if (v3)
  {
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_44_1(v7);
    OUTLINED_FUNCTION_75_1();

    return sub_227A1BDB8(v8, v9, v10);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    OUTLINED_FUNCTION_44_1(v12);
    OUTLINED_FUNCTION_75_1();

    return sub_227A1AF08(v13, v14, v15);
  }
}

uint64_t sub_227A1DAF0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = v3[6];
    v11 = sub_227A1DCF8;
  }

  else
  {
    v12 = v3[7];

    v9 = v3[5];
    v10 = v3[6];
    v11 = sub_227A2429C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A1DBF4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = v3[6];
    v11 = sub_227A1DD60;
  }

  else
  {
    v12 = v3[7];

    v9 = v3[5];
    v10 = v3[6];
    v11 = sub_227A2429C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_227A1DCF8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];

  OUTLINED_FUNCTION_41();

  return v4();
}

uint64_t sub_227A1DD60()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[4];

  OUTLINED_FUNCTION_41();

  return v4();
}

uint64_t sub_227A1DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for JoinChannelActionMessage(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0E8, &qword_227AA36A0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0F0, &qword_227AA36A8);
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0F8, &qword_227AA36B0);
  v5[15] = v12;
  v13 = *(v12 - 8);
  v5[16] = v13;
  v14 = *(v13 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = sub_227A7273C();
  v5[19] = sub_227A7272C();
  v16 = sub_227A726EC();
  v5[20] = v16;
  v5[21] = v15;

  return MEMORY[0x2822009F8](sub_227A1DFB4, v16, v15);
}

uint64_t sub_227A1DFB4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_81_0();
  sub_227A4B8D8();
  OUTLINED_FUNCTION_139();
  sub_227A7278C();
  (*(v3 + 8))(v0, v2);
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  v4 = *(v1 + 144);
  v5 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v5);
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_5_4(v8);
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_227A1E080()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[23];
  v3 = v0[22];
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  OUTLINED_FUNCTION_74_1();
  v7 = *(v6 + 168);
  v8 = v0[20];

  return MEMORY[0x2822009F8](sub_227A1E1B0, v8, v7);
}

uint64_t sub_227A1E1B0()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = v0[11];
  if (__swift_getEnumTagSinglePayload(v2, 1, v0[7]) == 1)
  {
    v3 = OUTLINED_FUNCTION_96_0();
    v4(v3);

LABEL_8:
    OUTLINED_FUNCTION_112_0();

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_161();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v5 = v0[6];
  sub_227A2418C(v2, v0[10]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    OUTLINED_FUNCTION_113_0();
    OUTLINED_FUNCTION_32_1();
    sub_227A241E4();
    v10 = *(v1 + 8);
    v11 = OUTLINED_FUNCTION_115();
    v12(v11);
    goto LABEL_8;
  }

  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_227A1E334;
  OUTLINED_FUNCTION_108(v0[10]);
  OUTLINED_FUNCTION_161();

  return sub_227A1D90C();
}

uint64_t sub_227A1E334()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v1 + 200);
  *v4 = *v2;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_50_1();
  v7 = *(v6 + 168);
  v8 = *(v1 + 160);
  if (v0)
  {
    v9 = sub_227A1E4F8;
  }

  else
  {
    v9 = sub_227A1E45C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_227A1E45C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_32_1();
  sub_227A241E4();
  v2 = *(v0 + 144);
  v3 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v3);
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8]();
}

uint64_t sub_227A1E4F8()
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = sub_227A7227C();
  __swift_project_value_buffer(v4, qword_27D7DE210);
  v5 = OUTLINED_FUNCTION_115();
  sub_227A24238(v5, v6);
  v7 = v1;
  v8 = sub_227A7226C();
  v9 = sub_227A728BC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 208);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  if (v10)
  {
    v40 = *(v0 + 208);
    v41 = *(v0 + 192);
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    OUTLINED_FUNCTION_63_1();
    v16 = OUTLINED_FUNCTION_90_0();
    v42 = OUTLINED_FUNCTION_107();
    *v13 = 136315394;
    sub_227A24238(v12, v14);
    OUTLINED_FUNCTION_98_0();
    sub_227A7251C();
    OUTLINED_FUNCTION_114_0();
    v17 = OUTLINED_FUNCTION_98_0();
    v20 = sub_227A46730(v17, v18, v19);

    OUTLINED_FUNCTION_87_0(v21, v22, v23, v24, v25, v26, v27, v28, v39, v40);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v29;
    *v16 = v29;
    OUTLINED_FUNCTION_115_0(&dword_227904000, v30, v31, "Failed to handle join new channel message: %s. Error: %@");
    sub_2279F3774(v16, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  else
  {

    sub_227A241E4();
    OUTLINED_FUNCTION_101_0();
  }

  sub_227A241E4();
  v32 = *(v0 + 144);
  v33 = sub_227A7272C();
  OUTLINED_FUNCTION_58_1(v33);
  v34 = *(MEMORY[0x277D85798] + 4);
  v35 = swift_task_alloc();
  v36 = OUTLINED_FUNCTION_17_2(v35);
  *v36 = v37;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x2822003E8]();
}

uint64_t FastSyncTransport.nearbyConnectionData.getter()
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v0 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v0, qword_27D7DE210);
  v1 = sub_227A7226C();
  sub_227A728BC();
  v2 = OUTLINED_FUNCTION_41_1();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_28_0();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_36_1(v4);
    OUTLINED_FUNCTION_53_1(&dword_227904000, v5, v6, "nearbyConnectionData is not supported");
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  return 0;
}

Swift::Bool __swiftcall FastSyncTransport.connect(toGuestPlayer:withHostPlayer:)(GKPlayer toGuestPlayer, GKPlayer withHostPlayer)
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v2 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v2, qword_27D7DE210);
  v3 = sub_227A7226C();
  sub_227A728BC();
  v4 = OUTLINED_FUNCTION_41_1();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_28_0();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_36_1(v6);
    OUTLINED_FUNCTION_53_1(&dword_227904000, v7, v8, "connect toGuestPlayer is not supported");
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  return 0;
}

void FastSyncTransport.connect(toNearbyPlayer:withConnectionData:)()
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v0 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v0, qword_27D7DE210);
  oslog = sub_227A7226C();
  v1 = sub_227A728BC();
  if (os_log_type_enabled(oslog, v1))
  {
    OUTLINED_FUNCTION_28_0();
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_227904000, oslog, v1, "connect toNearbyPlayer is not supported", v2, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }
}

uint64_t FastSyncTransport.enrichPeerDictionaries(forPlayersConnection:)()
{
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v0 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v0, qword_27D7DE210);
  v1 = sub_227A7226C();
  v2 = sub_227A728BC();
  if (OUTLINED_FUNCTION_27_0(v2))
  {
    OUTLINED_FUNCTION_28_0();
    v3 = swift_slowAlloc();
    *v3 = 0;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v4, v5, v6, v7, v3, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }
}

uint64_t FastSyncTransport.localConnectionData()()
{
  OUTLINED_FUNCTION_31();
  sub_227A7273C();
  *(v0 + 16) = OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_13();
  v2 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A1ECC8, v2, v1);
}

uint64_t sub_227A1ECC8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);

  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v2 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v2, qword_27D7DE210);
  v3 = sub_227A7226C();
  v4 = sub_227A728BC();
  if (OUTLINED_FUNCTION_46_1(v4))
  {
    OUTLINED_FUNCTION_28_0();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_36_1(v5);
    OUTLINED_FUNCTION_10_4();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
  }

  v11 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  sub_227A202AC(0x636E797374736166, 0xE800000000000000, 1, 0);
  swift_willThrow();
  OUTLINED_FUNCTION_41();

  return v12();
}

uint64_t sub_227A1EE64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_227A7273C();
  v2[4] = sub_227A7272C();
  v4 = sub_227A726EC();

  return MEMORY[0x2822009F8](sub_227A1EEFC, v4, v3);
}

uint64_t sub_227A1EEFC()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_227A1EFA4;

  return FastSyncTransport.localConnectionData()();
}

uint64_t sub_227A1EFA4()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  v2 = v0;
  OUTLINED_FUNCTION_36();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *(v6 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;

  if (v2)
  {
    v11 = sub_227A71A4C();

    v12 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    v13 = sub_227A71B8C();
    v14 = OUTLINED_FUNCTION_30_1();
    sub_2279E3FA4(v14, v15);
    v12 = v13;
  }

  v16 = *(v4 + 40);
  v17 = v16[2];
  v18 = OUTLINED_FUNCTION_76();
  v19(v18);

  _Block_release(v16);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_161();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27);
}

uint64_t sub_227A1F208(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD100, &qword_227AA36C8);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v1 + 16) = v3;
  return v1;
}

void *sub_227A1F254(uint64_t a1, uint64_t a2)
{
  v2[2] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

void *sub_227A1F2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *v6;
  v31[1] = v14;
  v32 = sub_227A71F6C();
  v15 = *(v32 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v32);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[2] = a1;
  v7[3] = a2;
  v19 = v7 + *(v14 + 104);
  v33 = a3;
  sub_227A24238(a3, v19);
  *(&v35 + 1) = sub_227A7212C();
  v36 = sub_227A20870(&qword_27D7DD0A0, MEMORY[0x277CCB290]);
  __swift_allocate_boxed_opaque_existential_1(&v34);

  sub_227A7211C();
  v20 = v7 + *(*v7 + 112);
  v21 = v35;
  *v20 = v34;
  *(v20 + 1) = v21;
  *(v20 + 4) = v36;
  v22 = (v7 + *(*v7 + 128));
  *v22 = a5;
  v22[1] = a6;
  sub_227A140A0(a4);

  *&v34 = sub_227A17D18();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0B0, &qword_227AA3640);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v7 + *(*v7 + 136)) = sub_227A722EC();
  (*(v15 + 104))(v18, *MEMORY[0x277CCB1A8], v32);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD050, &qword_227AA35D8);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_227A722EC();
  sub_227A241E4();
  *(v7 + *(*v7 + 120)) = v29;
  return v7;
}

uint64_t sub_227A1F624()
{
  v1 = v0;
  sub_227A72B1C();

  MEMORY[0x22AA9FE40](v1[2], v1[3]);
  MEMORY[0x22AA9FE40](0xD000000000000011, 0x8000000227A98F80);
  v2 = (v1 + *(*v1 + 128));
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x22AA9FE40](v3, v4);

  return 0x72656469766F7250;
}

uint64_t sub_227A1F6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD060, &qword_227AA3600);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD068, &qword_227AA3608);
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = sub_227A7273C();
  v5[18] = sub_227A7272C();
  v13 = sub_227A726EC();
  v5[19] = v13;
  v5[20] = v12;

  return MEMORY[0x2822009F8](sub_227A1F88C, v13, v12);
}

uint64_t sub_227A1F88C()
{
  v32 = v0;
  v2 = v0[8];
  OUTLINED_FUNCTION_9_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v4 = Strong;
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v5 = sub_227A7227C();
    v0[22] = OUTLINED_FUNCTION_104(v5, qword_27D7DE210);

    v6 = sub_227A7226C();
    sub_227A728AC();
    OUTLINED_FUNCTION_94_0();

    if (OUTLINED_FUNCTION_143())
    {
      OUTLINED_FUNCTION_106();
      v7 = OUTLINED_FUNCTION_100();
      v31 = v7;
      *v1 = 136315138;
      v9 = *(v4 + 24);
      v8 = *(v4 + 32);

      v10 = sub_227A46730(v9, v8, &v31);

      *(v1 + 4) = v10;
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    v16 = v0[16];
    v18 = v0[12];
    v17 = v0[13];
    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[9];
    OUTLINED_FUNCTION_42_1(&qword_27D7DD048, &qword_27D7DD040, &unk_227AA5CC0);
    sub_227A71E3C();
    OUTLINED_FUNCTION_139();
    sub_227A7204C();
    (*(v18 + 8))(v17, v19);
    v22 = v0[17];
    v0[23] = sub_227A7272C();
    OUTLINED_FUNCTION_28(&qword_27D7DD070, &qword_27D7DD068, &qword_227AA3608);
    v23 = *(MEMORY[0x277D856D0] + 4);
    v24 = swift_task_alloc();
    v0[24] = v24;
    *v24 = v0;
    v25 = OUTLINED_FUNCTION_22_1(v24);

    return MEMORY[0x282200308](v25);
  }

  else
  {
    v26 = v0[18];

    v27 = v0[16];
    v28 = v0[13];

    OUTLINED_FUNCTION_41();

    return v29();
  }
}

uint64_t sub_227A1FB08()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *(v2 + 192);
  *v4 = *v1;
  *(v3 + 200) = v0;

  v6 = *(v2 + 184);
  if (v0)
  {
    if (v6)
    {
      swift_getObjectType();
      v7 = sub_227A726EC();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = sub_227A1FF90;
  }

  else
  {
    if (v6)
    {
      swift_getObjectType();
      v7 = sub_227A726EC();
      v9 = v10;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = sub_227A1FC88;
  }

  return MEMORY[0x2822009F8](v11, v7, v9);
}

uint64_t sub_227A1FC88()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[23];

  v0[26] = v0[5];
  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x2822009F8](sub_227A1FCF0, v2, v3);
}

uint64_t sub_227A1FCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_132();
  a18 = v20;
  v23 = v20[26];
  if (v23)
  {
    v25 = v20[21];
    v24 = v20[22];

    v26 = sub_227A7226C();
    v27 = sub_227A7289C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v20[21];
      v29 = OUTLINED_FUNCTION_63_1();
      a10 = OUTLINED_FUNCTION_82_0();
      *v29 = 136315394;
      v30 = *(v28 + 24);
      v31 = *(v28 + 32);

      v32 = sub_227A46730(v30, v31, &a10);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      v20[7] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD078, &unk_227AA3610);
      sub_2279F4CBC(&qword_27D7DD080, &qword_27D7DD078, &unk_227AA3610);
      v33 = sub_227A72E1C();
      v35 = sub_227A46730(v33, v34, &a10);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_227904000, v26, v27, "%s-> Received session: %s.", v29, 0x16u);
      OUTLINED_FUNCTION_86_0();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }

    v36 = v20[21];

    sub_227A4D850();

    v37 = v20[17];
    v20[23] = sub_227A7272C();
    OUTLINED_FUNCTION_28(&qword_27D7DD070, &qword_27D7DD068, &qword_227AA3608);
    v38 = *(MEMORY[0x277D856D0] + 4);
    v39 = swift_task_alloc();
    v20[24] = v39;
    *v39 = v20;
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_34_1();

    return MEMORY[0x282200308](v40);
  }

  else
  {
    v42 = v20[21];
    v43 = v20[18];
    (*(v20[15] + 8))(v20[16], v20[14]);

    v44 = v20[16];
    v45 = v20[13];

    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_34_1();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
  }
}

uint64_t sub_227A1FF90()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 48) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_227A20018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC5B8, &qword_227AA04D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_227A046CC(a3, v26 - v11);
  v13 = sub_227A7276C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2279F3774(v12, &qword_27D7DC5B8, &qword_227AA04D0);
  }

  else
  {
    sub_227A7275C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_227A726EC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_227A7253C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
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

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id sub_227A202AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_227A724BC();

  if (a4)
  {
    v8 = sub_227A7240C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void sub_227A203A8(void *a1, uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  switch(a5 >> 5)
  {
    case 0:
    case 2:
      goto LABEL_6;
    case 3:

      sub_227A20464(a3, a4, a5 & 0x1F);
      break;
    case 4:

      a1 = a3;
LABEL_6:

      break;
    default:
      return;
  }
}

void sub_227A20464(int a1, id a2, char a3)
{
  if (!a3)
  {
  }
}

uint64_t sub_227A20508()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52(v3);
  *v4 = v5;
  v4[1] = sub_2279F50E8;
  v6 = OUTLINED_FUNCTION_86();

  return v7(v6);
}

uint64_t sub_227A205A8()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_52(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_5(v5);

  return v8(v7);
}

uint64_t sub_227A2063C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_52(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_5(v5);

  return v8(v7);
}

uint64_t objectdestroy_14Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227A20718()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_52(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_5(v5);

  return v8(v7);
}

void sub_227A207AC()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = *(type metadata accessor for DataMessage(v2) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_227A1885C(v0, v8, v1 + v4, v10, v11, v12, v13, v14);
}

uint64_t sub_227A20870(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_227A208B8()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = *(type metadata accessor for DataMessage(v2) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_227A190F4(v0, v1 + v4, v6, v7);
}

BOOL sub_227A2095C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_227A72F2C();
  sub_227A7255C();
  sub_227A72F4C();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_55_1();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_227A72E5C() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_227A22178(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

BOOL sub_227A20AA4(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_227A7212C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_227A20870(&qword_27D7DD0B8, MEMORY[0x277CCB290]);
  v30 = a2;
  v11 = sub_227A7244C();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_227A222E0(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_227A20870(&qword_27D7DD0C0, MEMORY[0x277CCB290]);
    v17 = sub_227A7248C();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_227A20D6C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    OUTLINED_FUNCTION_101_0();
    v9 = sub_227A72A5C();

    if (v9)
    {

      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      result = 0;
      *a1 = v26;
    }

    else
    {
      result = sub_227A72A4C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v19 = sub_227A21288(v7, result + 1);
        v20 = *(v19 + 16);
        if (*(v19 + 24) <= v20)
        {
          sub_227A21A18(v20 + 1);
        }

        v21 = v8;
        sub_227A220F8(v21, v19);

        *v3 = v19;
LABEL_16:
        *a1 = v21;
        return 1;
      }
    }
  }

  else
  {
    sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
    v11 = *(v6 + 40);
    sub_227A7298C();
    v12 = *(v6 + 32);
    OUTLINED_FUNCTION_55_1();
    v15 = ~v14;
    while (1)
    {
      v16 = v13 & v15;
      if (((*(v6 + 56 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v15)) & 1) == 0)
      {
        v22 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *v3;
        v21 = a2;
        sub_227A22590(v21, v16, isUniquelyReferenced_nonNull_native);
        *v3 = v27;
        goto LABEL_16;
      }

      v17 = *(*(v6 + 48) + 8 * v16);
      v18 = sub_227A7299C();

      if (v18)
      {
        break;
      }

      v13 = v16 + 1;
    }

    v24 = *(*(v6 + 48) + 8 * v16);
    *a1 = v24;
    v25 = v24;
    return 0;
  }

  return result;
}

uint64_t sub_227A20F88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = *(*v6 + 40);
  sub_227A72F2C();
  sub_227A7255C();
  v14 = sub_227A72F4C();
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v12 + 48);
    while (1)
    {
      v19 = v18 + 32 * v16;
      v20 = *(v19 + 16) == a4 && *(v19 + 24) == a5;
      if (v20 || (sub_227A72E5C() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v24 = (*(v12 + 48) + 32 * v16);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    *a1 = *v24;
    a1[1] = v25;
    a1[2] = v26;
    a1[3] = v27;

    return 0;
  }

  else
  {
LABEL_9:
    v21 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;

    sub_227A226F4(a2, a3, a4, a5, v16, isUniquelyReferenced_nonNull_native);
    *v6 = v28;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

BOOL sub_227A2111C(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_227A72F2C();
  sub_227A727CC();
  sub_227A72F4C();
  v6 = *(v4 + 32);
  OUTLINED_FUNCTION_55_1();
  v9 = ~v8;
  while (1)
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(v4 + 56 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      v14 = *v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v18;

      sub_227A22888(v16, v10, isUniquelyReferenced_nonNull_native);
      *v18 = v20;
      *a1 = a2;
      return v11 == 0;
    }

    v12 = *(*(v4 + 48) + 8 * v10);

    v13 = sub_227A727BC();

    if (v13)
    {
      break;
    }

    v7 = v10 + 1;
  }

  *a1 = *(*(v4 + 48) + 8 * v10);

  return v11 == 0;
}

uint64_t sub_227A21288(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
    v2 = sub_227A72AEC();
    v16 = v2;
    sub_227A72A3C();
    while (1)
    {
      if (!sub_227A72A7C())
      {

        return v2;
      }

      sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_227A21A18(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_227A7298C();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_227A21464(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD020, &qword_227AA35B0);
  result = sub_227A72ADC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_227A58C28(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_227A72F2C();
    sub_227A7255C();
    result = sub_227A72F4C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227A216C0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_227A7212C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0C8, &qword_227AA3648);
  result = sub_227A72ADC();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_227A58C28(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_227A20870(&qword_27D7DD0B8, MEMORY[0x277CCB290]);
    result = sub_227A7244C();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227A21A18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
  result = sub_227A72ADC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_43_1();
        v11 = v17 & v16;
        goto LABEL_14;
      }
    }

    v28 = *(v3 + 32);
    OUTLINED_FUNCTION_80_0();
    if (v29 >= 64)
    {
      sub_227A58C28(0, (v29 + 63) >> 6, v3 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_55_1();
      *v8 = v30;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_93_0();
LABEL_14:
    v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = *(v6 + 40);
    result = sub_227A7298C();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v6 + 48) + 8 * v23) = v18;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v13 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227A21C20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD038, &qword_227AA35C0);
  result = sub_227A72ADC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_227A58C28(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v34 = v17[3];
    v21 = *(v6 + 40);
    sub_227A72F2C();
    sub_227A7255C();
    result = sub_227A72F4C();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v6 + 48) + 32 * v25);
    *v30 = v18;
    v30[1] = v19;
    v30[2] = v20;
    v30[3] = v34;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227A21E90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD090, &qword_227AA3628);
  result = sub_227A72ADC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_227A58C28(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_227A72F2C();
    sub_227A727CC();
    result = sub_227A72F4C();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_227A220F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_227A7298C();
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_55_1();
  result = sub_227A72A2C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_227A22178(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_227A21464(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_227A231A4(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_227A72F2C();
      sub_227A7255C();
      v17 = sub_227A72F4C();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_227A72E5C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_227A22A38();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_227A72E9C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_227A222E0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_227A7212C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227A216C0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_227A233D8(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_227A20870(&qword_27D7DD0B8, MEMORY[0x277CCB290]);
      v15 = sub_227A7244C();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_227A20870(&qword_27D7DD0C0, MEMORY[0x277CCB290]);
        v17 = sub_227A7248C();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_227A22F98(MEMORY[0x277CCB290], &qword_27D7DD0C8, &qword_227AA3648);
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_227A72E9C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_227A22590(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227A21A18(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_227A236F0(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      result = sub_227A7298C();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_2279FF044(0, &qword_27D7DD028, off_2785DBD78);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_227A7299C();

        if (v12)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_227A22B68();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_227A72E9C();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

uint64_t sub_227A226F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v12 = result;
  v13 = *(*v6 + 16);
  v14 = *(*v6 + 24);
  if (v14 > v13 && (a6 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a6)
  {
    sub_227A21C20(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      result = sub_227A22CB8();
      goto LABEL_16;
    }

    sub_227A23900(v13 + 1);
  }

  v15 = *v6;
  v16 = *(*v6 + 40);
  sub_227A72F2C();
  sub_227A7255C();
  result = sub_227A72F4C();
  v17 = v15 + 56;
  v18 = -1 << *(v15 + 32);
  a5 = result & ~v18;
  if ((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v19 = ~v18;
    v20 = *(v15 + 48);
    do
    {
      v21 = v20 + 32 * a5;
      if (*(v21 + 16) == a3 && *(v21 + 24) == a4)
      {
        goto LABEL_19;
      }

      result = sub_227A72E5C();
      if (result)
      {
        goto LABEL_19;
      }

      a5 = (a5 + 1) & v19;
    }

    while (((*(v17 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v24 = (*(v23 + 48) + 32 * a5);
  *v24 = v12;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_227A72E9C();
  __break(1u);
  return result;
}

uint64_t sub_227A22888(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227A21E90(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_227A23B4C(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      sub_227A72F2C();
      sub_227A727CC();
      result = sub_227A72F4C();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8E8, &qword_227AA3620);
        v11 = *(*(v8 + 48) + 8 * a2);

        v12 = sub_227A727BC();

        if (v12)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_227A22E20();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_227A72E9C();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

void sub_227A22A38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD020, &qword_227AA35B0);
  v2 = *v0;
  v3 = sub_227A72ACC();
  if (*(v2 + 16))
  {
    v4 = *(v3 + 32);
    OUTLINED_FUNCTION_80_0();
    v7 = (v6 + 63) >> 6;
    if (v3 != v2 || v5 >= v2 + 56 + 8 * v7)
    {
      memmove(v5, (v2 + 56), 8 * v7);
    }

    v9 = 0;
    *(v3 + 16) = *(v2 + 16);
    v10 = *(v2 + 32);
    OUTLINED_FUNCTION_80_0();
    v11 = *(v2 + 56);
    OUTLINED_FUNCTION_102_0();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_93_0();
LABEL_15:
        v21 = v17 | (v9 << 6);
        v22 = (*(v2 + 48) + 16 * v21);
        v23 = v22[1];
        v24 = (*(v3 + 48) + 16 * v21);
        *v24 = *v22;
        v24[1] = v23;
      }

      while (v14);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        goto LABEL_17;
      }

      ++v18;
      if (*(v2 + 56 + 8 * v9))
      {
        OUTLINED_FUNCTION_43_1();
        v14 = v20 & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v3;
  }
}

id sub_227A22B68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
  v2 = *v0;
  v3 = sub_227A72ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_227A22CB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD038, &qword_227AA35C0);
  v2 = *v0;
  v3 = sub_227A72ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_227A22E20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD090, &qword_227AA3628);
  v2 = *v0;
  v3 = sub_227A72ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_227A22F98(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v7 = v3;
  v8 = a1(0);
  v9 = OUTLINED_FUNCTION_70_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v36 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *v3;
  v17 = sub_227A72ACC();
  if (*(v16 + 16))
  {
    v37 = v7;
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_80_0();
    v21 = (v20 + 63) >> 6;
    if (v17 != v16 || v19 >= v16 + 56 + 8 * v21)
    {
      memmove(v19, (v16 + 56), 8 * v21);
    }

    v23 = 0;
    *(v17 + 16) = *(v16 + 16);
    v24 = *(v16 + 32);
    OUTLINED_FUNCTION_80_0();
    v25 = *(v16 + 56);
    OUTLINED_FUNCTION_102_0();
    v28 = v27 & v26;
    v30 = (v29 + 63) >> 6;
    v38 = v11 + 32;
    v39 = v11 + 16;
    if ((v27 & v26) != 0)
    {
      do
      {
        v31 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
LABEL_15:
        v35 = *(v11 + 72) * (v31 | (v23 << 6));
        (*(v11 + 16))(v15, *(v16 + 48) + v35, v4);
        (*(v11 + 32))(*(v17 + 48) + v35, v15, v4);
      }

      while (v28);
    }

    v32 = v23;
    while (1)
    {
      v23 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v23 >= v30)
      {

        v7 = v37;
        goto LABEL_19;
      }

      ++v32;
      if (*(v16 + 56 + 8 * v23))
      {
        OUTLINED_FUNCTION_43_1();
        v28 = v34 & v33;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v7 = v17;
  }
}

uint64_t sub_227A231A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD020, &qword_227AA35B0);
  result = sub_227A72ADC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_227A72F2C();

        sub_227A7255C();
        result = sub_227A72F4C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_227A233D8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_227A7212C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0C8, &qword_227AA3648);
  v10 = sub_227A72ADC();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_227A20870(&qword_27D7DD0B8, MEMORY[0x277CCB290]);
        result = sub_227A7244C();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_227A236F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD088, &unk_227AA5EC0);
  result = sub_227A72ADC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_227A7298C();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_227A23900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD038, &qword_227AA35C0);
  result = sub_227A72ADC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[3];
        v33 = v17[2];
        v21 = *(v6 + 40);
        sub_227A72F2C();

        sub_227A7255C();
        result = sub_227A72F4C();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v6 + 48) + 32 * v25);
        *v30 = v18;
        v30[1] = v19;
        v3 = v32;
        v30[2] = v33;
        v30[3] = v20;
        ++*(v6 + 16);
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_227A23B4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD090, &qword_227AA3628);
  result = sub_227A72ADC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_227A72F2C();

        sub_227A727CC();
        result = sub_227A72F4C();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_227A23D8C(void *a1)
{
  v1 = [a1 matchID];
  if (v1)
  {
    v2 = v1;
    sub_227A724EC();
  }

  return OUTLINED_FUNCTION_86();
}

unint64_t sub_227A23DEC()
{
  result = qword_27D7DD030;
  if (!qword_27D7DD030)
  {
    sub_2279FF044(255, &qword_27D7DD028, off_2785DBD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD030);
  }

  return result;
}

uint64_t sub_227A23E6C()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A1F6F8(v3, v4, v5, v6, v7);
}

uint64_t sub_227A23EF8()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_51_1(v4);

  return v7(v6);
}

uint64_t sub_227A23F8C()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_51_1(v4);

  return v7(v6);
}

uint64_t sub_227A24020(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_227A2402C()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A1CF6C(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_49Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227A24100()
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_65_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_24(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_3(v1);
  OUTLINED_FUNCTION_161();

  return sub_227A1DDC8(v3, v4, v5, v6, v7);
}

uint64_t sub_227A2418C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_78_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_51(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_86();
  v9(v8);
  return a2;
}

uint64_t sub_227A241E4()
{
  v1 = OUTLINED_FUNCTION_105_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_51(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_227A24238(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_78_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_51(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_86();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1)
{
  *(a1 + 8) = sub_227A1E080;
  v2 = v1[17];
  v3 = v1[15];
  return v1[11];
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1)
{
  *(a1 + 8) = sub_227A1D224;
  v2 = v1[17];
  v3 = v1[15];
  return v1[11];
}

void OUTLINED_FUNCTION_7_7()
{
  v1[12] = sub_227A17638;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_8_8(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_9_6()
{
  *(v0 + 24) = sub_227A1736C;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1)
{
  *(a1 + 8) = sub_227A1FB08;
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  return v1 + 40;
}

uint64_t OUTLINED_FUNCTION_26_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

void *OUTLINED_FUNCTION_29_1()
{

  return sub_2279FA2E8(v0, 0, 0, sub_2279FCD60, v1);
}

uint64_t OUTLINED_FUNCTION_42_1(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_2279F4CBC(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

BOOL OUTLINED_FUNCTION_46_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void OUTLINED_FUNCTION_53_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_64_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 80);
  return result;
}

void OUTLINED_FUNCTION_65_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

void OUTLINED_FUNCTION_71_1(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 64;
}

void OUTLINED_FUNCTION_81_0()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[5];
  v6 = v0[6];
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85_0()
{
  v2 = v0[10];
  v3 = v0[5];
  v4 = *(v3 + v2);
  *(v3 + v2) = v0[13];
}

uint64_t OUTLINED_FUNCTION_86_0()
{

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_87_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  *(v11 + 4) = v10;
  *(v11 + 12) = 2112;

  return a10;
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return sub_227A7272C();
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1)
{
  *(v1 + 232) = a1;
}

uint64_t OUTLINED_FUNCTION_90_0()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_91_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_96_0()
{
  v1 = v0[19];
  result = v0[17];
  v3 = v0[15];
  v4 = *(v0[16] + 8);
  return result;
}

void OUTLINED_FUNCTION_107_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

id OUTLINED_FUNCTION_108_0(void *a1)
{
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;

  return v1;
}

uint64_t OUTLINED_FUNCTION_109_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_227A46730(v12, v11, &a10);
}

uint64_t OUTLINED_FUNCTION_110_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_227A72E5C();
}

uint64_t OUTLINED_FUNCTION_111_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_112_0()
{
  v2 = v0[17];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
}

uint64_t OUTLINED_FUNCTION_113_0()
{
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[10];
}

uint64_t OUTLINED_FUNCTION_114_0()
{

  return sub_227A241E4();
}

void OUTLINED_FUNCTION_115_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t static GKDevice.zeroOutVersion(deviceType:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD108, &qword_227AA36D0);
  v3 = OUTLINED_FUNCTION_92(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD110, &qword_227AA36D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD118, &qword_227AA36E0);
  v15 = OUTLINED_FUNCTION_92(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v26 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D7DD120, &qword_227AA36E8);
  sub_227A7213C();
  sub_227A7214C();
  (*(v5 + 8))(v9, v2);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_227A24D40(v13);
  }

  else
  {
    (*(v17 + 32))(v21, v13, v14);
    swift_getKeyPath();
    sub_227A7215C();

    v23 = MEMORY[0x22AA9FE00](v26[1], v26[2], v26[3], v26[4]);
    v25 = v24;

    v27 = v23;
    v28 = v25;
    MEMORY[0x22AA9FE40](3157040, 0xE300000000000000);
    a1 = v27;
    (*(v17 + 8))(v21, v14);
  }

  return a1;
}

uint64_t sub_227A24D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD110, &qword_227AA36D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227A24E60()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_227A24E80()
{
  sub_227A24E60();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_227A24ECC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_227A24F70()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_227A24FF0()
{
  sub_227A24F70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_227A25094(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7DD240, &qword_227AA37D0);
    v2 = sub_227A72CDC();
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2279F4900(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2279FF11C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2279FF11C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2279FF11C(v32, v33);
    v15 = *(v2 + 40);
    result = sub_227A72A9C();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_2279FF11C(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_227A25358(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7DD240, &qword_227AA37D0);
    v2 = sub_227A72CDC();
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = (*(a1 + 48) + v11);
    v13 = v12[1];
    v14 = (*(a1 + 56) + v11);
    v16 = *v14;
    v15 = v14[1];
    *&v35[0] = *v12;
    *(&v35[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_2279FF11C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_2279FF11C(v34, v35);
    v17 = *(v2 + 40);
    result = sub_227A72A9C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v2 + 48) + 40 * v21;
    *v26 = v27;
    *(v26 + 16) = v28;
    *(v26 + 32) = v29;
    result = sub_2279FF11C(v35, (*(v2 + 56) + 32 * v21));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_227A2561C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_227A25B5C(a1, &v38);
  v6 = v39;
  if (v39)
  {
    v7 = v41;
    v8 = v42;
    v9 = v44;
    v36 = v43;
    v10 = v38;
    v45 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD230, &qword_227AA37C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA0BF0;
    *(inited + 32) = 0x707954746E657665;
    *(inited + 40) = 0xE900000000000065;
    strcpy((inited + 48), "inviteActivity");
    *(inited + 63) = -18;
    *(inited + 64) = 0x7069636974726170;
    *(inited + 72) = 0xEF65707954746E61;
    *&v46 = v10;
    *(&v46 + 1) = v6;
    v12 = v45;
    *(inited + 80) = v46;
    *(inited + 96) = 0x79546E6F69746361;
    *(inited + 104) = 0xEA00000000006570;
    *v47 = v12;
    *(inited + 112) = v12;
    *(inited + 128) = 0x7954657469766E69;
    *(inited + 136) = 0xEA00000000006570;
    *(inited + 144) = 0x6E69646E65697266;
    *(inited + 152) = 0xE900000000000067;
    sub_227A25F94(&v46, v37);
    sub_227A25F94(v47, v37);
    v13 = sub_227A7243C();
    if (a1 <= 1)
    {
      if (a3)
      {

        swift_isUniquelyReferenced_nonNull_native();
        v37[0] = v13;
        sub_227A62750(a2, a3, 0x70704174736F68, 0xE700000000000000);
        v13 = v37[0];
      }

      else
      {
        if (qword_27D7DC4E8 != -1)
        {
          OUTLINED_FUNCTION_0_16();
        }

        v25 = sub_227A7227C();
        __swift_project_value_buffer(v25, qword_27D7DE228);
        v26 = sub_227A7226C();
        v27 = sub_227A728BC();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v37[0] = v35;
          *v28 = 136315138;
          v29 = [swift_getObjCClassFromMetadata() stringForStage_];
          v30 = sub_227A724EC();
          v32 = v31;

          v33 = sub_227A46730(v30, v32, v37);

          *(v28 + 4) = v33;
          _os_log_impl(&dword_227904000, v26, v27, "FriendInviteActivityEvent: Expected a hostApp as we're in a sent stage, but no hostApp was provided. Stage: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v35);
          OUTLINED_FUNCTION_103();
          OUTLINED_FUNCTION_103();
        }
      }
    }

    if (v8)
    {

      swift_isUniquelyReferenced_nonNull_native();
      v37[0] = v13;
      sub_227A62750(v7, v8, 0x6574616974696E69, 0xEC00000065707954);
      v13 = v37[0];
    }

    if (v9)
    {

      sub_227A25FF0(&v38);
      swift_isUniquelyReferenced_nonNull_native();
      v37[0] = v13;
      sub_227A62750(v36, v9, 0x65736E6F70736572, 0xEC00000065707954);
      v13 = v37[0];
    }

    else
    {
      sub_227A25FF0(&v38);
    }

    v34 = sub_227A25358(v13);

    return v34;
  }

  else
  {
    if (qword_27D7DC4E8 != -1)
    {
      OUTLINED_FUNCTION_0_16();
    }

    v14 = sub_227A7227C();
    __swift_project_value_buffer(v14, qword_27D7DE228);
    v15 = sub_227A7226C();
    v16 = sub_227A728BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47[0] = v18;
      *v17 = 136315138;
      v19 = [swift_getObjCClassFromMetadata() stringForStage_];
      v20 = sub_227A724EC();
      v22 = v21;

      v23 = sub_227A46730(v20, v22, v47);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_227904000, v15, v16, "Unknown stage encountered when trying to build metrics fields for inviteActivity stage %s, bailing", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    return sub_227A7243C();
  }
}

unint64_t sub_227A25B5C@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (result > 8)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v2 = *&aSender_1[8 * result];
    v3 = qword_227AA3878[result];
    v4 = *&aInitiateinitia[8 * result];
    v5 = qword_227AA3908[result];
    v6 = *&aPush_0[8 * result];
    v7 = qword_227AA3998[result];
    v8 = qword_227AA39E0[result];
    v9 = qword_227AA3A28[result];
  }

  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  a2[7] = v9;
  return result;
}

unint64_t sub_227A25CB4(uint64_t a1)
{
  result = 0x50616956746E6573;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0x4D616956746E6573;
    case 2:
      v3 = 5;
      goto LABEL_9;
    case 3:
      v3 = 9;
      goto LABEL_9;
    case 4:
      return 0xD00000000000001CLL;
    case 5:
      return 0xD000000000000020;
    case 6:
      v3 = 11;
LABEL_9:
      result = v3 | 0xD000000000000010;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      strcpy(v5, "unknownStage(");
      v4 = sub_227A72E1C();
      MEMORY[0x22AA9FE40](v4);

      result = v5[0];
      break;
  }

  return result;
}

GKFriendInviteActivityEvent __swiftcall GKFriendInviteActivityEvent.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for GKFriendInviteActivityEvent()
{
  result = qword_27D7DD228;
  if (!qword_27D7DD228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DD228);
  }

  return result;
}

uint64_t sub_227A25FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD238, &qword_227AA37C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_227A2606C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227A260AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_once();
}

id sub_227A2612C()
{
  result = [objc_allocWithZone(type metadata accessor for MatchBackgroundAssertionManager()) init];
  qword_27D7DD250 = result;
  return result;
}

id static MatchBackgroundAssertionManager.shared.getter()
{
  if (qword_27D7DC000 != -1)
  {
    swift_once();
  }

  v1 = qword_27D7DD250;

  return v1;
}

id sub_227A261E0()
{
  sub_2279FF044(0, &qword_27D7DD2E8, 0x277D46E38);
  result = sub_227A26258();
  qword_27D7DD258 = result;
  return result;
}

id sub_227A26258()
{
  v0 = sub_227A724BC();

  v1 = sub_227A724BC();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

void *MatchBackgroundAssertionManager.activeAssertion.getter()
{
  v1 = OBJC_IVAR___GKMatchBackgroundAssertionManager_activeAssertion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MatchBackgroundAssertionManager.activeAssertion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GKMatchBackgroundAssertionManager_activeAssertion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_227A26480()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___GKMatchBackgroundAssertionManager_activeAssertion] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id MatchBackgroundAssertionManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  MatchBackgroundAssertionManager.invalidate()();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall MatchBackgroundAssertionManager.invalidate()()
{
  v1 = v0;
  v2 = OBJC_IVAR___GKMatchBackgroundAssertionManager_activeAssertion;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v3;
    if ([v4 isValid])
    {
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v5 = sub_227A7227C();
      __swift_project_value_buffer(v5, qword_280B54DB8);
      v6 = v4;
      v7 = sub_227A7226C();
      v8 = sub_227A728AC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = OUTLINED_FUNCTION_106();
        v10 = OUTLINED_FUNCTION_107();
        v31 = v10;
        *v9 = 136315138;
        v11 = [v6 explanation];
        v12 = sub_227A724EC();
        v14 = v13;

        v15 = sub_227A46730(v12, v14, &v31);

        *(v9 + 4) = v15;
        OUTLINED_FUNCTION_1_3(&dword_227904000, v16, v17, "Invalidating assertion: %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      [v6 removeObserver_];
      [v6 invalidate];
    }

    else
    {
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v18 = sub_227A7227C();
      __swift_project_value_buffer(v18, qword_280B54DB8);
      v6 = v4;
      v19 = sub_227A7226C();
      v20 = sub_227A728AC();

      if (!os_log_type_enabled(v19, v20))
      {

        goto LABEL_14;
      }

      v21 = OUTLINED_FUNCTION_106();
      v22 = OUTLINED_FUNCTION_107();
      v31 = v22;
      *v21 = 136315138;
      v23 = [v6 explanation];
      v24 = sub_227A724EC();
      v26 = v25;

      v27 = sub_227A46730(v24, v26, &v31);

      *(v21 + 4) = v27;
      OUTLINED_FUNCTION_1_3(&dword_227904000, v28, v29, "Skipping invalidation of already invalid assertion: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

LABEL_14:
    v30 = *(v1 + v2);
    *(v1 + v2) = 0;
  }
}

Swift::Void __swiftcall MatchBackgroundAssertionManager.acquire()()
{
  v1 = v0;
  v72 = *MEMORY[0x277D85DE8];
  MatchBackgroundAssertionManager.invalidate()();
  v2 = [objc_opt_self() processInfo];
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v3 = sub_227A7227C();
  __swift_project_value_buffer(v3, qword_280B54DB8);
  v4 = v2;
  v5 = sub_227A7226C();
  v6 = sub_227A728AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_107();
    v70 = v8;
    *v7 = 67109378;
    *(v7 + 4) = [v4 processIdentifier];

    *(v7 + 8) = 2080;
    v9 = [v4 processName];
    v10 = sub_227A724EC();
    v11 = v1;
    v12 = v4;
    v14 = v13;

    v15 = sub_227A46730(v10, v14, &v70);
    v4 = v12;
    v1 = v11;

    *(v7 + 10) = v15;
    _os_log_impl(&dword_227904000, v5, v6, "Acquiring assertion for process id:%d name:%s", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
  }

  else
  {
  }

  if (qword_27D7DC008 != -1)
  {
    swift_once();
  }

  v16 = qword_27D7DD258;
  v17 = [qword_27D7DD258 name];
  v18 = sub_227A724EC();
  v20 = v19;

  v70 = v18;
  v71 = v20;
  MEMORY[0x22AA9FE40](23328, 0xE200000000000000);
  LODWORD(v69) = [v4 &selRef_openHTTPsUniversalLink_];
  v21 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v21);

  MEMORY[0x22AA9FE40](8250, 0xE200000000000000);
  v22 = [v4 processName];
  v23 = sub_227A724EC();
  v25 = v24;

  MEMORY[0x22AA9FE40](v23, v25);

  MEMORY[0x22AA9FE40](93, 0xE100000000000000);
  v26 = v70;
  v27 = v71;
  v28 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD268, &unk_227AA3A80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_227AA3A70;
  *(v29 + 32) = v16;
  objc_allocWithZone(MEMORY[0x277D46DB8]);
  v30 = v16;
  v31 = sub_227A270F8(v26, v27, v28);
  [v31 addObserver_];
  v70 = 0;
  v32 = [v31 acquireWithError_];
  v33 = v70;
  if (v32)
  {
    v34 = OBJC_IVAR___GKMatchBackgroundAssertionManager_activeAssertion;
    swift_beginAccess();
    v35 = v1;
    v36 = *(v1 + v34);
    *(v35 + v34) = v31;
    v37 = v33;
    v38 = v31;

    v39 = v38;
    v40 = sub_227A7226C();
    LOBYTE(v36) = sub_227A728AC();

    if (os_log_type_enabled(v40, v36))
    {
      v41 = OUTLINED_FUNCTION_106();
      v42 = OUTLINED_FUNCTION_107();
      v69 = v42;
      *v41 = 136315138;
      v43 = [v39 explanation];
      v44 = sub_227A724EC();
      v46 = v45;

      v47 = sub_227A46730(v44, v46, &v69);

      *(v41 + 4) = v47;
      OUTLINED_FUNCTION_1_3(&dword_227904000, v48, v49, "Successfully acquired assertion: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    else
    {
    }
  }

  else
  {
    v50 = v70;
    v51 = sub_227A71A5C();

    swift_willThrow();
    v52 = v31;
    v53 = v51;
    v54 = sub_227A7226C();
    v55 = sub_227A728BC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = OUTLINED_FUNCTION_107();
      v70 = v68;
      *v56 = 136315394;
      v57 = v4;
      v58 = [v52 explanation];
      v59 = v1;
      v60 = sub_227A724EC();
      v62 = v61;

      v4 = v57;
      v63 = sub_227A46730(v60, v62, &v70);

      *(v56 + 4) = v63;
      v1 = v59;
      *(v56 + 12) = 2112;
      v64 = v51;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 14) = v65;
      *v67 = v65;
      _os_log_impl(&dword_227904000, v54, v55, "Failed to acquire assertion: %s, error: %@", v56, 0x16u);
      sub_227A271C4(v67);
      OUTLINED_FUNCTION_103();
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
    }

    [v52 removeObserver_];
  }

  v66 = *MEMORY[0x277D85DE8];
}

void MatchBackgroundAssertionManager.assertionWillInvalidate(_:)(void *a1)
{
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v2 = sub_227A7227C();
  __swift_project_value_buffer(v2, qword_280B54DB8);
  v3 = a1;
  oslog = sub_227A7226C();
  v4 = sub_227A728AC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = OUTLINED_FUNCTION_106();
    v6 = OUTLINED_FUNCTION_107();
    v13 = v6;
    *v5 = 136315138;
    v7 = [v3 explanation];
    v8 = sub_227A724EC();
    v10 = v9;

    v11 = sub_227A46730(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_227904000, oslog, v4, "Assertion is about to invalidate: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
  }
}

id sub_227A270F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_227A724BC();

  sub_2279FF044(0, &qword_27D7DD2E0, 0x277D46DD8);
  v6 = sub_227A7268C();

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:v6];

  return v7;
}

void *sub_227A271A0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_227A271C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7DD270, &qword_227AA10E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227A2722C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_227A272A4(uint64_t a1)
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](a1);
  return sub_227A72F4C();
}

uint64_t sub_227A272EC()
{
  sub_227A72F2C();
  sub_227A277A8();
  return sub_227A72F4C();
}

uint64_t sub_227A27340(char a1)
{
  sub_227A72F2C();
  sub_227A3611C(a1);
  OUTLINED_FUNCTION_0_17();

  return sub_227A72F4C();
}

uint64_t sub_227A27390(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 10:
      OUTLINED_FUNCTION_3_7();
      break;
    default:
      break;
  }

  sub_227A7255C();
}

uint64_t sub_227A27530()
{
  sub_227A7255C();
}

uint64_t sub_227A275B8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_3_7();
      break;
    default:
      break;
  }

  sub_227A7255C();
}

uint64_t sub_227A276A4(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_12();
  }

  sub_227A7255C();
}

uint64_t sub_227A2772C()
{
  sub_227A7255C();
}

uint64_t sub_227A277A8()
{
  sub_227A7255C();
}

uint64_t sub_227A27878()
{
  sub_227A72F2C();
  sub_227A277A8();
  return sub_227A72F4C();
}

uint64_t sub_227A278BC()
{
  OUTLINED_FUNCTION_2_8();
  sub_227A7255C();

  return sub_227A72F4C();
}

uint64_t sub_227A27944(uint64_t a1, unsigned __int8 a2)
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](a2);
  return sub_227A72F4C();
}

uint64_t sub_227A27988()
{
  OUTLINED_FUNCTION_2_8();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_12();
  }

  sub_227A7255C();

  return sub_227A72F4C();
}

uint64_t sub_227A27A1C()
{
  OUTLINED_FUNCTION_2_8();
  sub_227A3611C(v0);
  OUTLINED_FUNCTION_0_17();

  return sub_227A72F4C();
}

uint64_t sub_227A27A60()
{
  OUTLINED_FUNCTION_2_8();
  sub_227A7255C();

  return sub_227A72F4C();
}

uint64_t sub_227A27AF4(uint64_t a1, uint64_t a2)
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](a2);
  return sub_227A72F4C();
}

uint64_t sub_227A27B38()
{
  OUTLINED_FUNCTION_2_8();
  ACAccount.GKConstants.rawValue.getter();
  OUTLINED_FUNCTION_0_17();

  return sub_227A72F4C();
}

GameCenterFoundation::AppMetadataGameCenterFeature_optional __swiftcall AppMetadataGameCenterFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_227A72CFC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppMetadataGameCenterFeature.rawValue.getter()
{
  result = 0x676E656C6C616863;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x6F6272656461656CLL;
      break;
    case 3:
      result = 0x6D65766569686361;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_227A27C84()
{
  result = qword_27D7DD350;
  if (!qword_27D7DD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD350);
  }

  return result;
}

unint64_t sub_227A27CFC@<X0>(unint64_t *a1@<X8>)
{
  result = AppMetadataGameCenterFeature.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AppMetadataGameCenterFeature(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return sub_227A7255C();
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return sub_227A72F2C();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.appleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_86();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.token.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_86();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.playerID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_86();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.alias.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_86();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.firstName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_86();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.lastName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_86();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.dsid.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_86();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.altDSID.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_86();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.contactsAssociationID.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_86();
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.serviceLastUpdatedTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationPluginResponseHandler.ServiceData() + 60);

  return sub_227A28088(v3, a1);
}

uint64_t type metadata accessor for AuthenticationPluginResponseHandler.ServiceData()
{
  result = qword_27D7DD370;
  if (!qword_27D7DD370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227A28088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AuthenticationPluginResponseHandler.ServiceData.init(response:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v78 - v4;
  v83[0] = 0x737574617473;
  v83[1] = 0xE600000000000000;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (v86)
  {
    if (OUTLINED_FUNCTION_1_13())
    {
      v6 = v83[0];
      if (v83[0])
      {
        strcpy(v85, "status-message");
        HIBYTE(v85[1]) = -18;
        OUTLINED_FUNCTION_13_3();
        OUTLINED_FUNCTION_2_9();

        sub_2279FEFC8(v84);
        if (v86)
        {
          v7 = OUTLINED_FUNCTION_1_13();
          if (v7)
          {
            v8 = v83[0];
          }

          else
          {
            v8 = 0;
          }

          if (v7)
          {
            v9 = v83[1];
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
          v8 = 0;
          v9 = 0;
        }

        sub_227A28D2C();
        OUTLINED_FUNCTION_95_0();
        swift_allocError();
        *v24 = v6;
        v24[1] = v8;
        v24[2] = v9;
        return swift_willThrow();
      }
    }
  }

  else
  {
    sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
  }

  strcpy(v83, "service-data");
  BYTE5(v83[1]) = 0;
  HIWORD(v83[1]) = -5120;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();

  sub_2279FEFC8(v84);
  if (!v86)
  {
    sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD010, &qword_227AA3C00);
  if ((OUTLINED_FUNCTION_1_13() & 1) == 0)
  {
LABEL_19:
    sub_227A28D2C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 3;
    return swift_willThrow();
  }

  v85[0] = 0x7361696C61;
  v85[1] = 0xE500000000000000;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (v86)
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_4_4();
    if (v12)
    {
      v11 = 0;
    }
  }

  else
  {
    sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
    v10 = 0;
    v11 = 0;
  }

  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  v87 = v11;
  strcpy(v85, "firstName");
  WORD1(v85[1]) = 0;
  HIDWORD(v85[1]) = -385875968;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (v86)
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_4_4();
    if (v12)
    {
      v15 = 0;
    }
  }

  else
  {
    sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
    v14 = 0;
    v15 = 0;
  }

  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  v82 = v15;
  strcpy(v85, "lastName");
  BYTE1(v85[1]) = 0;
  WORD1(v85[1]) = 0;
  HIDWORD(v85[1]) = -402653184;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (v86)
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_4_4();
    if (v12)
    {
      v17 = 0;
    }
  }

  else
  {
    sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
    v16 = 0;
    v17 = 0;
  }

  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  v81 = v17;
  v85[0] = 1684632420;
  v85[1] = 0xE400000000000000;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (v86)
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_4_4();
    if (v12)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }
  }

  else
  {
    sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
    v18 = 0;
    v20 = 0;
  }

  *(a1 + 96) = v18;
  *(a1 + 104) = v20;
  strcpy(v83, "altDSID");
  v83[1] = 0xE700000000000000;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (v86)
  {
    if (OUTLINED_FUNCTION_1_13())
    {
      v21 = v83[0];
      v22 = v83[1];
      goto LABEL_50;
    }
  }

  else
  {
    sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
  }

  strcpy(v83, "alternate-dsid");
  HIBYTE(v83[1]) = -18;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (v86)
  {
    v23 = OUTLINED_FUNCTION_1_13();
    v21 = v83[0];
    if (v23)
    {
      v22 = v83[1];
    }

    else
    {
      v22 = 0;
    }

    if (!v23)
    {
      v21 = 0;
    }
  }

  else
  {
    sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
    v22 = 0;
    v21 = 0;
  }

LABEL_50:
  *(a1 + 112) = v21;
  *(a1 + 120) = v22;
  v83[0] = 7761509;
  v83[1] = 0xE300000000000000;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (v86)
  {
    if (OUTLINED_FUNCTION_1_13())
    {
      v26 = sub_227A724BC();

      goto LABEL_55;
    }
  }

  else
  {
    sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
  }

  v26 = 0;
LABEL_55:
  v27 = [objc_opt_self() environmentForString_];

  *(a1 + 128) = v27;
  strcpy(v83, "apple-id");
  BYTE1(v83[1]) = 0;
  WORD1(v83[1]) = 0;
  HIDWORD(v83[1]) = -402653184;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (!v86)
  {
LABEL_65:

    sub_227A04918(v85, &qword_27D7DC610, &qword_227AA0590);
LABEL_69:
    sub_227A28D2C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    *v32 = 0;
    v32[1] = 0;
    v32[2] = 4;
    swift_willThrow();
  }

  if ((OUTLINED_FUNCTION_1_13() & 1) == 0)
  {
LABEL_68:

    goto LABEL_69;
  }

  v29 = v83[0];
  v28 = v83[1];
  strcpy(v83, "auth-token");
  BYTE3(v83[1]) = 0;
  HIDWORD(v83[1]) = -369098752;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (!v86)
  {
LABEL_64:

    goto LABEL_65;
  }

  if ((OUTLINED_FUNCTION_1_13() & 1) == 0)
  {
LABEL_67:

    goto LABEL_68;
  }

  v79 = v83[0];
  v80 = v29;
  v30 = v83[1];
  strcpy(v83, "player-id");
  WORD1(v83[1]) = 0;
  HIDWORD(v83[1]) = -385875968;
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  if (!v86)
  {

    goto LABEL_64;
  }

  if ((OUTLINED_FUNCTION_1_13() & 1) == 0)
  {

    goto LABEL_67;
  }

  v31 = v83[1];
  if (!(v20 | v22))
  {

    goto LABEL_67;
  }

  v33 = v83[0];
  v34 = v79;
  *a1 = v80;
  *(a1 + 8) = v28;
  *(a1 + 16) = v34;
  *(a1 + 24) = v30;
  *(a1 + 32) = v33;
  *(a1 + 40) = v31;
  v85[0] = sub_227A724EC();
  v85[1] = v35;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  v36 = v86;
  if (v86)
  {
    __swift_project_boxed_opaque_existential_1(v85, v86);
    OUTLINED_FUNCTION_10_5();
    v38 = v37;
    v40 = *(v39 + 64);
    MEMORY[0x28223BE20](v41);
    OUTLINED_FUNCTION_1_2();
    v44 = v43 - v42;
    (*(v38 + 16))(v43 - v42);
    v45 = sub_227A72E4C();
    (*(v38 + 8))(v44, v36);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
  }

  else
  {
    v45 = 0;
  }

  v46 = objc_opt_self();
  v47 = [v46 associationIDFromServerResult_];
  swift_unknownObjectRelease();
  if (v47)
  {
    v48 = sub_227A724EC();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  *(a1 + 144) = v48;
  *(a1 + 152) = v50;
  v85[0] = sub_227A724EC();
  v85[1] = v51;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();
  sub_2279FEFC8(v84);
  v52 = v86;
  if (v86)
  {
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v87 = v46;
    OUTLINED_FUNCTION_10_5();
    v54 = v53;
    v56 = *(v55 + 64);
    MEMORY[0x28223BE20](v57);
    OUTLINED_FUNCTION_1_2();
    v60 = v59 - v58;
    (*(v54 + 16))(v59 - v58);
    v61 = sub_227A72E4C();
    (*(v54 + 8))(v60, v52);
    v46 = v87;
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
  }

  else
  {
    v61 = 0;
  }

  v62 = [v46 integrationConsentValueFromServerResult_];
  swift_unknownObjectRelease();
  *(a1 + 136) = v62;
  v85[0] = sub_227A724EC();
  v85[1] = v63;
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_2_9();

  sub_2279FEFC8(v84);
  v64 = v86;
  if (v86)
  {
    __swift_project_boxed_opaque_existential_1(v85, v86);
    OUTLINED_FUNCTION_10_5();
    v66 = v65;
    v68 = *(v67 + 64);
    MEMORY[0x28223BE20](v69);
    OUTLINED_FUNCTION_1_2();
    v72 = v71 - v70;
    (*(v66 + 16))(v71 - v70);
    v73 = sub_227A72E4C();
    (*(v66 + 8))(v72, v64);
    __swift_destroy_boxed_opaque_existential_0Tm(v85);
  }

  else
  {
    v73 = 0;
  }

  v74 = [v46 dateFromServerResult_];
  swift_unknownObjectRelease();
  if (v74)
  {
    sub_227A71C0C();

    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  v76 = sub_227A71C2C();
  __swift_storeEnumTagSinglePayload(v5, v75, 1, v76);
  v77 = type metadata accessor for AuthenticationPluginResponseHandler.ServiceData();
  return sub_227A28D80(v5, a1 + *(v77 + 60));
}

unint64_t sub_227A28D2C()
{
  result = qword_27D7DD360;
  if (!qword_27D7DD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD360);
  }

  return result;
}

uint64_t sub_227A28D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AuthenticationPluginResponseHandler.ResponseError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  switch(v3)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_26;
      }

      v7 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v7, v8, 1);
      v9 = OUTLINED_FUNCTION_7_8();
      sub_227A2906C(v9, v10, 1);
      return v6;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_26;
      }

      v20 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v20, v21, 2);
      v13 = OUTLINED_FUNCTION_7_8();
      v15 = 2;
      goto LABEL_14;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_26;
      }

      v16 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v16, v17, 3);
      v13 = OUTLINED_FUNCTION_7_8();
      v15 = 3;
      goto LABEL_14;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_26;
      }

      v18 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v18, v19, 4);
      v13 = OUTLINED_FUNCTION_7_8();
      v15 = 4;
      goto LABEL_14;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_26;
      }

      v11 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v11, v12, 5);
      v13 = OUTLINED_FUNCTION_7_8();
      v15 = 5;
      goto LABEL_14;
    case 6:
      if (v6 != 6)
      {
        goto LABEL_26;
      }

      v22 = OUTLINED_FUNCTION_76();
      sub_227A2906C(v22, v23, 6);
      v13 = OUTLINED_FUNCTION_7_8();
      v15 = 6;
      goto LABEL_14;
    default:
      if ((v6 - 1) >= 6 && v2 == v5)
      {
        if (v3)
        {
          if (v6)
          {
            if (a1[1] == v4 && v3 == v6)
            {
              v66 = OUTLINED_FUNCTION_0_18();
              sub_227A29054(v66, v67, v68);
              v69 = OUTLINED_FUNCTION_0_18();
              sub_227A29054(v69, v70, v71);
              v72 = OUTLINED_FUNCTION_0_18();
              sub_227A2906C(v72, v73, v74);
              v13 = OUTLINED_FUNCTION_0_18();
LABEL_14:
              sub_227A2906C(v13, v14, v15);
            }

            else
            {
              v25 = a1[1];
              v26 = sub_227A72E5C();
              v27 = OUTLINED_FUNCTION_6_7();
              sub_227A29054(v27, v28, v29);
              v30 = OUTLINED_FUNCTION_0_18();
              sub_227A29054(v30, v31, v32);
              v33 = OUTLINED_FUNCTION_0_18();
              sub_227A2906C(v33, v34, v35);
              v36 = OUTLINED_FUNCTION_6_7();
              sub_227A2906C(v36, v37, v38);
              if ((v26 & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }

          sub_227A29054(*a1, a2[1], 0);
          sub_227A29054(v2, v4, 0);
          v60 = OUTLINED_FUNCTION_0_18();
          sub_227A29054(v60, v61, v62);
          v63 = OUTLINED_FUNCTION_0_18();
          sub_227A2906C(v63, v64, v65);
        }

        else
        {
          v49 = a2[2];

          v50 = OUTLINED_FUNCTION_6_7();
          sub_227A29054(v50, v51, v52);
          v53 = OUTLINED_FUNCTION_76();
          sub_227A29054(v53, v54, 0);
          v55 = OUTLINED_FUNCTION_76();
          sub_227A2906C(v55, v56, 0);
          v57 = OUTLINED_FUNCTION_6_7();
          sub_227A2906C(v57, v58, v59);
          if (!v6)
          {
            return 1;
          }
        }

        v47 = v2;
      }

      else
      {
LABEL_26:
        v39 = OUTLINED_FUNCTION_7_8();
        sub_227A29054(v39, v40, v6);
        v41 = OUTLINED_FUNCTION_0_18();
        sub_227A29054(v41, v42, v43);
        v44 = OUTLINED_FUNCTION_0_18();
        sub_227A2906C(v44, v45, v46);
        v47 = v5;
      }

      sub_227A2906C(v47, v4, v6);
      return 0;
  }
}

uint64_t sub_227A29054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 6)
  {
  }

  return result;
}

uint64_t sub_227A2906C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 1) >= 6)
  {
  }

  return result;
}

uint64_t AuthenticationPluginResponseHandler.__allocating_init(preferences:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AuthenticationPluginResponseHandler.process(response:account:store:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = *(*(type metadata accessor for AuthenticationPluginResponseHandler.ServiceData() - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A29168, 0, 0);
}

uint64_t sub_227A29168()
{
  v92 = v0;
  if (qword_27D7DC4C0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = sub_227A7227C();
  __swift_project_value_buffer(v3, qword_27D7DE1B0);
  v4 = v1;

  v5 = sub_227A7226C();
  v6 = sub_227A728AC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_107();
    v91[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = v8;
    v13 = sub_227A7242C();
    v15 = sub_227A46730(v13, v14, v91);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_227904000, v5, v6, "Processing account %@ with parameters %s.", v9, 0x16u);
    sub_227A04918(v10, &unk_27D7DD270, &qword_227AA10E0);
    OUTLINED_FUNCTION_103();
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
  }

  v16 = *(v0 + 192);
  v17 = *(v0 + 152);

  AuthenticationPluginResponseHandler.ServiceData.init(response:)(v16);
  v18 = *(*(v0 + 176) + 16);
  if ((sub_227A29B78() & 1) == 0)
  {
    v22 = [*(v0 + 160) accountType];
    if (!v22)
    {
      __break(1u);
      return MEMORY[0x282200938](v22, v23, v24, v25, v26, v27, v28, v29);
    }

    v30 = sub_227A2A5D8(v22);
    v32 = v31;
    v33 = *MEMORY[0x277CB8C38];
    v34 = sub_227A724EC();
    if (v32)
    {
      if (v30 == v34 && v32 == v35)
      {

        goto LABEL_18;
      }

      v37 = sub_227A72E5C();

      if (v37)
      {
LABEL_18:
        sub_227A2A6A4(*(v0 + 192), *(v0 + 184));
        v38 = sub_227A7226C();
        v39 = sub_227A728AC();
        v40 = os_log_type_enabled(v38, v39);
        v41 = *(v0 + 184);
        if (v40)
        {
          v42 = swift_slowAlloc();
          v43 = OUTLINED_FUNCTION_107();
          *v42 = 136315138;
          v44 = v41[1];
          v89 = *v41;
          v91[0] = v43;

          sub_227A2A648(v41);
          v45 = sub_227A46730(v89, v44, v91);

          *(v42 + 4) = v45;
          _os_log_impl(&dword_227904000, v38, v39, "Looking for GC account with username: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v43);
          OUTLINED_FUNCTION_103();
          OUTLINED_FUNCTION_103();
        }

        else
        {

          sub_227A2A648(v41);
        }

        v46 = *(v0 + 168);
        v47 = sub_227A724EC();
        v49 = sub_227A2A708(v47, v48, v46);
        if (v49)
        {
          v50 = v49;
          v51 = *(v0 + 192);
          v52 = v51[14];
          v53 = v51[15];
          v55 = v51[12];
          v54 = v51[13];
          Array<A>.gkExistingAccount(matchingAltDSID:matchingDSID:matchingUserName:)(v52, v53, v55, v54, *v51, v51[1], v49);
          *(v0 + 200) = v56;
          if (v56)
          {
            v57 = v56;
            v88 = v52;
            v58 = *(v0 + 192);
            v59 = *(v0 + 176);
            Array<A>.gkHasPrimaryAccount(in:)(v58[16], v50);
            v90 = v57;
            LOBYTE(v57) = v60;

            v61 = v57 & 1;
            v62 = v90;
            sub_227A29BB8(v90, v61, v58);
            v67 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
            *(v0 + 208) = v67;
            if (v53)
            {

              v68 = sub_227A7226C();
              v69 = sub_227A7289C();

              if (os_log_type_enabled(v68, v69))
              {
                v70 = swift_slowAlloc();
                v71 = OUTLINED_FUNCTION_107();
                v91[0] = v71;
                *v70 = 136315138;
                *(v70 + 4) = sub_227A46730(v88, v53, v91);
                OUTLINED_FUNCTION_14_4(&dword_227904000, v72, v73, "Telling authkit account is in use using altDSID: %s");
                __swift_destroy_boxed_opaque_existential_0Tm(v71);
                OUTLINED_FUNCTION_103();
                OUTLINED_FUNCTION_103();
              }

              if (!v67)
              {
                goto LABEL_42;
              }

              v74 = v67;
              v75 = sub_227A724BC();
              [v74 setAppleIDWithAltDSID:v75 inUse:1 forService:6];
            }

            else
            {
              if (!v54)
              {
                goto LABEL_42;
              }

              v75 = sub_227A724BC();

              v76 = sub_227A7226C();
              v77 = sub_227A7289C();
              if (os_log_type_enabled(v76, v77))
              {
                v78 = swift_slowAlloc();
                v79 = OUTLINED_FUNCTION_107();
                v91[0] = v79;
                *v78 = 136315138;
                v80 = sub_227A46730(v55, v54, v91);

                *(v78 + 4) = v80;
                OUTLINED_FUNCTION_14_4(&dword_227904000, v81, v82, "Telling authkit account is in use using DSID: %s");
                __swift_destroy_boxed_opaque_existential_0Tm(v79);
                v62 = v90;
                OUTLINED_FUNCTION_103();
                OUTLINED_FUNCTION_103();
              }

              else
              {
              }

              if (!v67)
              {
LABEL_41:

LABEL_42:
                v86 = *(v0 + 168);
                *(v0 + 16) = v0;
                *(v0 + 56) = v0 + 144;
                *(v0 + 24) = sub_227A29998;
                v87 = swift_continuation_init();
                *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD368, &unk_227AA3C10);
                *(v0 + 80) = MEMORY[0x277D85DD0];
                *(v0 + 88) = 1107296256;
                *(v0 + 96) = sub_227A2A164;
                *(v0 + 104) = &block_descriptor_4;
                *(v0 + 112) = v87;
                [v86 gkSaveAccount:v62 verify:0 withCompletion:v0 + 80];
                v22 = (v0 + 16);

                return MEMORY[0x282200938](v22, v23, v24, v25, v26, v27, v28, v29);
              }

              v83 = v67;
              v84 = [v75 longLongValue];
              v85 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
              [v83 setAppleIDWithDSID:v85 inUse:1 forService:6];
            }

            goto LABEL_41;
          }
        }

        v19 = *(v0 + 192);
        sub_227A28D2C();
        OUTLINED_FUNCTION_95_0();
        swift_allocError();
        *v20 = 0;
        v20[1] = 0;
        v21 = 6;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v19 = *(v0 + 192);
    sub_227A28D2C();
    OUTLINED_FUNCTION_95_0();
    swift_allocError();
    *v20 = 0;
    v20[1] = 0;
    v21 = 2;
    goto LABEL_26;
  }

  v19 = *(v0 + 192);
  sub_227A28D2C();
  OUTLINED_FUNCTION_95_0();
  swift_allocError();
  *v20 = 0;
  v20[1] = 0;
  v21 = 1;
LABEL_26:
  v20[2] = v21;
  swift_willThrow();
  sub_227A2A648(v19);
  v64 = *(v0 + 184);
  v63 = *(v0 + 192);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_227A29998()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227A29A78, 0, 0);
}

uint64_t sub_227A29A78()
{
  v1 = v0[18];
  v2 = [v1 error];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  if (v2)
  {
    swift_willThrow();

    sub_227A2A648(v5);
    v7 = v0[23];
    v6 = v0[24];
  }

  else
  {
    v9 = v0[23];
    sub_227A2A648(v0[24]);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_227A29B78()
{
  if ([v0 isAccountModificationRestricted])
  {
    return 1;
  }

  else
  {
    return [v0 isGameCenterRestricted];
  }
}

void sub_227A29BB8(void *a1, char a2, uint64_t *a3)
{
  if (qword_27D7DC4C0 != -1)
  {
    swift_once();
  }

  v6 = sub_227A7227C();
  __swift_project_value_buffer(v6, qword_27D7DE1B0);
  v7 = a1;
  v8 = sub_227A7226C();
  v9 = sub_227A728DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = a2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v51 = v12;
    *v11 = 136315138;
    v13 = sub_227A2AAE0(v7);
    v15 = v14;

    if (!v15)
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = sub_227A46730(v13, v15, &v51);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_227904000, v8, v9, "Updating token for account %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AAA1930](v12, -1, -1);
    MEMORY[0x22AAA1930](v11, -1, -1);

    a2 = v10;
  }

  else
  {
  }

  [v7 setAuthenticated_];
  v17 = a3[16];
  if (v17 != 5)
  {
    v23 = a3[2];
    v24 = a3[3];
    v25 = sub_227A724BC();
    v51 = 0x6B6F54766E454B47;
    v52 = 0xEB000000002D6E65;
    v53 = v17;
    v26 = sub_227A72E1C();
    MEMORY[0x22AA9FE40](v26);

    sub_227A2A55C(v25, v51, v52, v7);

    goto LABEL_11;
  }

  v18 = [v7 credential];
  if (!v18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = a3[2];
  v21 = a3[3];
  v22 = sub_227A724BC();
  [v19 setToken_];

LABEL_11:
  v27 = 14;
  if (a2)
  {
    if ((ACAccount.gkScope(for:)(v17) & 0x100000004) == 4)
    {
      v27 = 14;
    }

    else
    {
      v27 = 2;
    }
  }

  v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  sub_227A2A4D8(v28, 0xD000000000000011, 0x8000000227A96BA0, v17, v7);

  if (a3[15])
  {
    v29 = a3[14];
    v30 = a3[15];
    v31 = sub_227A724BC();
    sub_227A2A4D8(v31, 0x44495344746C61, 0xE700000000000000, v17, v7);
    swift_unknownObjectRelease();
    v32 = sub_227A724BC();
  }

  else
  {
    sub_227A2A4D8(0, 0x44495344746C61, 0xE700000000000000, v17, v7);
    v32 = 0;
  }

  sub_227A2A55C(v32, 0x44495344746C61, 0xE700000000000000, v7);
  swift_unknownObjectRelease();
  if (a3[13])
  {
    v33 = a3[12];
    v34 = sub_227A724BC();
  }

  else
  {
    v34 = 0;
  }

  sub_227A2A55C(v34, 1684632420, 0xE400000000000000, v7);
  swift_unknownObjectRelease();
  v35 = a3[4];
  v36 = a3[5];
  v37 = sub_227A724BC();
  sub_227A2A55C(v37, 0x692D726579616C70, 0xE900000000000064, v7);

  v38 = v7;
  v39 = sub_227A7226C();
  v40 = sub_227A728DC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    v43 = [v38 accountProperties];
    *(v41 + 4) = v43;
    *v42 = v43;
    _os_log_impl(&dword_227904000, v39, v40, "All account properties %@", v41, 0xCu);
    sub_227A04918(v42, &unk_27D7DD270, &qword_227AA10E0);
    MEMORY[0x22AAA1930](v42, -1, -1);
    MEMORY[0x22AAA1930](v41, -1, -1);
  }

  v44 = *a3;
  v45 = a3[1];
  v46 = sub_227A724BC();
  [v38 setUsername_];

  v47 = sub_227A724BC();
  [v38 setAccountDescription_];

  v48 = [v38 _gkPlayerInternal];
  if (v48)
  {
    v49 = v48;
    sub_227A2A1D0(v48, a3);
    [v38 _gkSetPlayerInternal_];
  }

  else
  {
    sub_227A28D2C();
    swift_allocError();
    *v50 = 0;
    v50[1] = 0;
    v50[2] = 5;
    swift_willThrow();
  }
}

uint64_t sub_227A2A164(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_227A2A1B0(v3, v4);
}

void sub_227A2A1D0(void *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  if (a2[19])
  {
    v8 = a2[18];
    v9 = sub_227A724BC();
  }

  else
  {
    v9 = 0;
  }

  [a1 setContactsAssociationID_];

  v10 = type metadata accessor for AuthenticationPluginResponseHandler.ServiceData();
  sub_227A28088(a2 + *(v10 + 60), v7);
  v11 = sub_227A71C2C();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) != 1)
  {
    v12 = sub_227A71BDC();
    (*(*(v11 - 8) + 8))(v7, v11);
  }

  [a1 setServiceLastUpdatedTimestamp_];

  [a1 setContactsIntegrationConsent_];
  if (a2[7])
  {
    v13 = a2[6];
    v14 = sub_227A724BC();
  }

  else
  {
    v14 = 0;
  }

  [a1 setAlias_];

  v15 = a2[8];
  v16 = a2[9];
  if (v16)
  {
    v17 = a2[8];
    v18 = a2[9];
    v19 = sub_227A724BC();
  }

  else
  {
    v19 = 0;
  }

  [a1 setFirstName_];

  v20 = a2[10];
  v21 = a2[11];
  if (v21)
  {
    v22 = a2[10];
    v23 = a2[11];
    v24 = sub_227A724BC();
  }

  else
  {
    v24 = 0;
  }

  [a1 setLastName_];

  if (!v16)
  {
    v25 = 0;
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v25 = sub_227A724BC();
  if (!v21)
  {
    goto LABEL_19;
  }

LABEL_17:
  v26 = sub_227A724BC();
LABEL_20:
  v27 = [objc_opt_self() compositeNameForFirstName:v25 lastName:v26];

  [a1 setCompositeName_];
  v28 = *a2;
  v29 = a2[1];
  v30 = sub_227A724BC();
  [a1 setAccountName_];
}

uint64_t AuthenticationPluginResponseHandler.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_227A2A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_227A724BC();

  [a5 _gkSetProperty_forKey_environment_];
}

void sub_227A2A55C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_227A724BC();

  [a4 setAccountProperty:a1 forKey:v6];
}

uint64_t sub_227A2A5D8(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_227A724EC();

  return v3;
}

uint64_t sub_227A2A648(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticationPluginResponseHandler.ServiceData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227A2A6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationPluginResponseHandler.ServiceData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227A2A708(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_227A724BC();

  v5 = [a3 accountsWithAccountTypeIdentifier_];

  if (!v5)
  {
    return 0;
  }

  sub_227A2AB44();
  v6 = sub_227A7269C();

  return v6;
}

uint64_t sub_227A2A824()
{
  sub_227A2A904();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for GKContactsIntegrationConsent(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_227A2A954();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_227A2A904()
{
  if (!qword_27D7DD380)
  {
    v0 = sub_227A729BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7DD380);
    }
  }
}

void sub_227A2A954()
{
  if (!qword_280B55108)
  {
    sub_227A71C2C();
    v0 = sub_227A729BC();
    if (!v1)
    {
      atomic_store(v0, &qword_280B55108);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20GameCenterFoundation35AuthenticationPluginResponseHandlerC0F5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_227A2A9E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 24))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 5;
  if (v5 >= 7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227A2AA4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 6;
    }
  }

  return result;
}

void *sub_227A2AAA0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_227A2AAE0(void *a1)
{
  v1 = [a1 shortDebugName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_227A724EC();

  return v3;
}

unint64_t sub_227A2AB44()
{
  result = qword_27D7DD388;
  if (!qword_27D7DD388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DD388);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_13()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_9()
{

  return sub_2279F91B8(v0, (v1 - 112));
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_227A72ABC();
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return sub_227A72ABC();
}

void OUTLINED_FUNCTION_14_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

id Bool.asNSNumber.getter(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithBool_];
}

id Int.asNSNumber.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithInteger_];
}

id Double.asNSNumber.getter(double a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  return [v2 initWithDouble_];
}

uint64_t NSXPCConnection.gkPerformSynchronously(_:errorHandler:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  [v4 setGkIsSynchronous_];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v12[4] = sub_227A2AE84;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_227A2AEAC;
  v12[3] = &block_descriptor_5;
  v9 = _Block_copy(v12);

  v10 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_227A729EC();
  swift_unknownObjectRelease();
  a1(v12);
  [v4 setGkIsSynchronous_];
  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t sub_227A2AE84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_227A2AEAC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_227A2AF2C(void *a1, int a2, void *aBlock, const void *a4)
{
  v6 = _Block_copy(aBlock);
  v7 = _Block_copy(a4);
  v10[2] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a1;
  NSXPCConnection.gkPerformSynchronously(_:errorHandler:)(sub_227A2B1C0, v10, sub_227A2B1C8, v8);

  _Block_release(v6);
}

uint64_t sub_227A2AFE8(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_227A72E4C();
  (*(a2 + 16))(a2, v3);

  return swift_unknownObjectRelease();
}

void sub_227A2B048(uint64_t a1, uint64_t a2)
{
  v3 = sub_227A71A4C();
  (*(a2 + 16))(a2, v3);
}

void sub_227A2B0AC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_227A2B100(a3);
}

uint64_t sub_227A2B100(char a1)
{
  v2 = sub_22790AB28();
  v3 = xmmword_27D7DD390;

  if (a1)
  {
    v4 = sub_227A72E8C();
  }

  else
  {
    v4 = 0;
  }

  [v2 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_227A2B1D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_227A2B244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_227A2B284(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 64) + 40);
  v4 = sub_227A71ADC();
  (*(*(v4 - 8) + 32))(v3, a2, v4);

  return swift_continuation_throwingResume();
}

uint64_t static GKGameKitDirectories.fetchImage(imageURL:gameKitDirectoryURLHint:)()
{
  OUTLINED_FUNCTION_31();
  v0[20] = v1;
  v0[21] = v2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A0, &qword_227AA48E0) - 8) + 64) + 15;
  v0[22] = swift_task_alloc();
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227A2B3AC()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = [objc_opt_self() proxyForLocalPlayer];
  v5 = [v4 gameKitDirectoryServicePrivate];
  v0[23] = v5;

  v6 = sub_227A71AAC();
  v0[24] = v6;
  sub_227A2B7B4(v2, v1);
  v7 = sub_227A71ADC();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) != 1)
  {
    v9 = v0[22];
    v8 = sub_227A71AAC();
    (*(*(v7 - 8) + 8))(v9, v7);
  }

  v0[25] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_227A2B59C;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A8, &qword_227AA3DC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227A2B824;
  v0[13] = &block_descriptor_6;
  v0[14] = v10;
  [v5 fetchImageForURL:v6 gameKitDirectoryURLHint:v8 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_227A2B59C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227A2B698()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[18];
  v6 = v0[19];
  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7(v5, v6);
}

uint64_t sub_227A2B728()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41();
  v7 = v0[26];

  return v6();
}

uint64_t sub_227A2B7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A0, &qword_227AA48E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227A2B824(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_227A2B1D4(v5, a3);
  }

  v7 = a2;
  v8 = sub_227A71B9C();
  v10 = v9;

  return sub_227A2B244(v5, v8, v10);
}

uint64_t sub_227A2B8E8()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[20];
  v2 = [objc_opt_self() proxyForLocalPlayer];
  v3 = [v2 gameKitDirectoryServicePrivate];
  v0[21] = v3;

  v4 = sub_227A71AAC();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_227A2BA5C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A8, &qword_227AA3DC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_227A2B824;
  v0[13] = &block_descriptor_4;
  v0[14] = v5;
  [v3 fetchMetadataForGameKitDirectoryURL:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_227A2BA5C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227A2BB58()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5(v4, v3);
}

uint64_t sub_227A2BBD0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41();
  v5 = v0[23];

  return v4();
}

uint64_t static GKGameKitDirectories.listGameKitDirectories(bundleID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_1_14();
}

uint64_t sub_227A2BC58()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_opt_self() proxyForLocalPlayer];
  v4 = [v3 gameKitDirectoryServicePrivate];
  v0[21] = v4;

  v5 = sub_227A724BC();
  v0[22] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_227A2BDC8;
  v6 = swift_continuation_init();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3B0, &qword_227AA3DD8);
  OUTLINED_FUNCTION_0_19(v7);
  v0[11] = 1107296256;
  v0[12] = sub_227A2BF30;
  v0[13] = &block_descriptor_8;
  v0[14] = v6;
  [v4 listGameKitDirectoriesForBundleID:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_227A2BDC8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227A2BEC4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_227A2BF30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_227A2B1D4(v4, a3);
  }

  sub_227A71ADC();
  v6 = sub_227A7269C();

  return sub_227A2B264(v4, v6);
}

uint64_t static GKGameKitDirectories.fetchAppIconURL(bundleID:)()
{
  OUTLINED_FUNCTION_31();
  v0[19] = v1;
  v0[20] = v2;
  v0[18] = v3;
  v4 = sub_227A71ADC();
  v0[21] = v4;
  v5 = *(v4 - 8);
  v0[22] = v5;
  v6 = *(v5 + 64) + 15;
  v0[23] = swift_task_alloc();
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227A2C078()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = [objc_opt_self() proxyForLocalPlayer];
  v5 = [v4 gameKitDirectoryServicePrivate];
  v0[24] = v5;

  v6 = sub_227A724BC();
  v0[25] = v6;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_227A2C1E8;
  v7 = swift_continuation_init();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3B8, qword_227AA3DE8);
  OUTLINED_FUNCTION_0_19(v8);
  v0[11] = 1107296256;
  v0[12] = sub_227A2C3FC;
  v0[13] = &block_descriptor_12_0;
  v0[14] = v7;
  [v5 fetchAppIconURLForBundleID:v6 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_227A2C1E8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_18_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_124();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227A2C2E4()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[24];
  v2 = v0[25];
  (*(v0[22] + 32))(v0[18], v0[23], v0[21]);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_227A2C378()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_41();
  v6 = v0[26];

  return v5();
}

uint64_t sub_227A2C3FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_227A71ADC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_227A2B1D4(v9, a3);
  }

  sub_227A71ABC();
  return sub_227A2B284(v9, v8);
}

_BYTE *storeEnumTagSinglePayload for GKGameKitDirectories(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t ExponentialBackoffTask.State.hashValue.getter()
{
  v1 = *v0;
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](v1);
  return sub_227A72F4C();
}

uint64_t sub_227A2C650@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_227A2C6C4(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_227A2C68C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_227A2C710(&v4);
}

uint64_t sub_227A2C6C4@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state;
  result = OUTLINED_FUNCTION_126();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_227A2C710(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state;
  result = OUTLINED_FUNCTION_11_2();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_227A2C888()
{
  OUTLINED_FUNCTION_11_2();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_227A2C8DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return sub_227A2C888();
}

void (*sub_227A2C908(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_227A018C0;
}

id ExponentialBackoffTask.init(name:queue:initialDelay:maxDelay:maxRetryCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_retryCount] = 0;
  v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state] = 0;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_timer] = 0;
  swift_unknownObjectWeakInit();
  sub_227A72B1C();

  v16 = a1;
  v17 = a2;
  MEMORY[0x22AA9FE40](0xD000000000000018, 0x8000000227A99320);
  v13 = &v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name];
  *v13 = a1;
  v13[1] = a2;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_queue] = a3;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_delay] = a5;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_initialDelay] = a5;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_maxDelay] = a6;
  *&v6[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_maxRetryCount] = a4;
  v15.receiver = v6;
  v15.super_class = type metadata accessor for ExponentialBackoffTask();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_227A2CBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_227A7232C();
  v10 = OUTLINED_FUNCTION_92(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_2();
  v17 = v16 - v15;
  v32 = sub_227A7237C();
  v18 = OUTLINED_FUNCTION_92(v32);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_2();
  v25 = v24 - v23;
  v31 = *&v4[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_queue];
  v26 = swift_allocObject();
  v26[2] = v4;
  v26[3] = a1;
  v26[4] = a2;
  v26[5] = a3;
  v26[6] = a4;
  OUTLINED_FUNCTION_1_15(v26);
  OUTLINED_FUNCTION_2_10(COERCE_DOUBLE(1107296256));
  v34 = v27;
  v35 = &block_descriptor_7;
  v28 = _Block_copy(aBlock);
  v29 = v4;

  sub_227A7235C();
  sub_227A2CFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A2D040();
  OUTLINED_FUNCTION_5_5();
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v25, v17, v28);
  _Block_release(v28);
  (*(v12 + 8))(v17, v9);
  (*(v20 + 8))(v25, v32);
}

void sub_227A2CE0C(void *a1, void (*a2)(uint64_t (*)(), void *), uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  v10 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state;
  swift_beginAccess();
  if (*(a1 + v10))
  {
    if (qword_280B54DB0 != -1)
    {
      swift_once();
    }

    v11 = sub_227A7227C();
    __swift_project_value_buffer(v11, qword_280B54DB8);
    v12 = sub_227A728DC();
    v13 = a1;
    v14 = sub_227A7226C();

    if (os_log_type_enabled(v14, v12))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_227A46730(*&v13[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name], *&v13[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name + 8], &v17);
      _os_log_impl(&dword_227904000, v14, v12, "%s isn't free yet. We can't run a new task.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AAA1930](v16, -1, -1);
      MEMORY[0x22AAA1930](v15, -1, -1);
    }
  }

  else
  {
    sub_227A2E364();
    *(a1 + v10) = 1;
    sub_227A2D238(a2, a3, a4, a5);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_227A2CFE8()
{
  result = qword_27D7DC910;
  if (!qword_27D7DC910)
  {
    sub_227A7232C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC910);
  }

  return result;
}

unint64_t sub_227A2D040()
{
  result = qword_27D7DC920;
  if (!qword_27D7DC920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7DC918, &qword_227AA0EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DC920);
  }

  return result;
}

uint64_t sub_227A2D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_227A01434;
  v7[3] = &block_descriptor_64;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

void *sub_227A2D238(void (*a1)(uint64_t (*)(), void *), uint64_t a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_state;
  result = OUTLINED_FUNCTION_126();
  if (v5[v10] == 1)
  {
    if (*&v5[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_retryCount] >= *&v5[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_maxRetryCount])
    {
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v20 = sub_227A7227C();
      __swift_project_value_buffer(v20, qword_280B54DB8);
      v21 = v5;
      v22 = sub_227A7226C();
      v23 = sub_227A728AC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_227A46730(*&v21[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name], *&v21[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name + 8], v30);
        OUTLINED_FUNCTION_3_4(&dword_227904000, v26, v27, "%s has reached maximum retry count. Ending task.");
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      sub_227A2E364();
      OUTLINED_FUNCTION_126();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result retryLimitHit];
        return swift_unknownObjectRelease();
      }
    }

    else if (a3(result))
    {
      if (qword_280B54DB0 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v12 = sub_227A7227C();
      __swift_project_value_buffer(v12, qword_280B54DB8);
      v13 = v5;
      v14 = sub_227A7226C();
      v15 = sub_227A728AC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v30[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_227A46730(*&v13[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name], *&v13[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_name + 8], v30);
        OUTLINED_FUNCTION_3_4(&dword_227904000, v18, v19, "%s has succeeded. Ending task.");
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_103();
      }

      return sub_227A2E364();
    }

    else
    {
      v28 = swift_allocObject();
      v28[2] = v5;
      v28[3] = a1;
      v28[4] = a2;
      v28[5] = a3;
      v28[6] = a4;
      v29 = v5;

      a1(sub_227A2E8B8, v28);
    }
  }

  return result;
}

uint64_t sub_227A2D540(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_227A7232C();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_227A7237C();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v19 = *&a1[OBJC_IVAR____TtC20GameCenterFoundation22ExponentialBackoffTask_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_227A2E8D0;
  *(v20 + 24) = v18;
  aBlock[4] = sub_227A030DC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227A01434;
  aBlock[3] = &block_descriptor_37;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  sub_227A7235C();
  v27 = MEMORY[0x277D84F90];
  sub_227A2CFE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC918, &qword_227AA0EA0);
  sub_227A2D040();
  sub_227A729FC();
  MEMORY[0x22AAA01F0](0, v17, v13, v21);
  _Block_release(v21);

  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v17, v25);
}