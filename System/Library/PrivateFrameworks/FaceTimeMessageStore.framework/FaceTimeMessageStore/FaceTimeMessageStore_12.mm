uint64_t sub_1BC89DE3C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC89DF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC89DFD4, a3, 0);
}

uint64_t sub_1BC89DFD4()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_41_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_107_1(v7);
  v8 = OUTLINED_FUNCTION_177_0();
  sub_1BC89D9E0(v8, v9, v7);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
  OUTLINED_FUNCTION_41_0();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_107_1(v13);
  v14 = OUTLINED_FUNCTION_177_0();
  sub_1BC89D9E0(v14, v15, v13);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v16, v17);
  v18 = *(MEMORY[0x1E69E8578] + 4);
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_183_0(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6550, &qword_1BC9076D0);
  OUTLINED_FUNCTION_127_0();
  *v2 = v20;
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6D898](v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_1BC89E150()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89E848();
}

uint64_t sub_1BC89E1E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89F3E4();
}

uint64_t sub_1BC89E278()
{
  v1 = v0;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EBD067C8);
  v3 = sub_1BC8F7714();
  sub_1BC8F8204();
  v4 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v7 = swift_slowAlloc();
    aBlock[0] = v7;
    *v6 = 136446210;
    OUTLINED_FUNCTION_31_0();
    *(v6 + 4) = sub_1BC7A9A4C(0xD000000000000016, v8, aBlock);
    OUTLINED_FUNCTION_25_9();
    _os_log_impl(v9, v10, v11, v12, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    v13 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = __swift_project_boxed_opaque_existential_1((v1 + 152), *(v1 + 176));
  v15 = *(*v14 + 72);
  v16 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  os_unfair_lock_lock(v15 + 4);
  sub_1BC7A9F74(v17);
  os_unfair_lock_unlock(v15 + 4);
  v18 = [objc_opt_self() defaultCenter];
  if (qword_1EBCF4770 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBD067F0;
  OUTLINED_FUNCTION_21_4();
  v20 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BC8B4380;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BC8E7474;
  aBlock[3] = &block_descriptor_6;
  v21 = _Block_copy(aBlock);

  v22 = [v18 addObserverForName:v19 object:0 queue:0 usingBlock:v21];
  _Block_release(v21);

  v23 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver);
  *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver) = v22;
  return swift_unknownObjectRelease();
}

uint64_t sub_1BC89E54C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1BC8F7FC4();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1BC8333D4();
  }

  return result;
}

uint64_t sub_1BC89E648()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89E6D8(v1);
}

uint64_t sub_1BC89E6F0()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EBD067C8);
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v5 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000022, v6, v7);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v13 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_138_1(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_78_5(v15);
  OUTLINED_FUNCTION_40_4();

  return sub_1BC89F3E4();
}

uint64_t sub_1BC89E848()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 80) = v0;
  *(v1 + 168) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *(v1 + 88) = v3;
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_47_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  *(v1 + 104) = v6;
  OUTLINED_FUNCTION_26(v6);
  *(v1 + 112) = v7;
  v9 = *(v8 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_47_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v10);
  v12 = *(v11 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_47_3();
  v13 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BC89E958()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 80);
  v2 = *(v0 + 168);
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageFetchTask;
  *(v0 + 136) = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageFetchTask;
  v4 = *(v1 + v3);
  if (v2 == 1)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_191_0(v1);

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_190();

      __asm { BRAA            X1, X16 }
    }

    *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingMessageRefetch) = 0;
  }

  else
  {
    if (v4)
    {
      v7 = *(v1 + v3);

      sub_1BC8F8024();

      v1 = *(v0 + 80);
    }

    *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingMessageRefetch) = 0;
    v8 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pageSize);
  }

  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v13, v14);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_104_1(v15);
  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
  OUTLINED_FUNCTION_194_0(v16);

  v17 = *(MEMORY[0x1E69E86C0] + 4);
  v18 = swift_task_alloc();
  *(v0 + 152) = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_166_0(v18);
  OUTLINED_FUNCTION_190();

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1BC89EB3C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[10];
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_120_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC89EC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_185_0();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_38();
  a20 = v23;
  OUTLINED_FUNCTION_148_0();
  if ((v22 & 1) == 0)
  {
    v28 = v23[10];
    v29 = v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_initialFetch;
    *(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_initialFetch) = 1;
    if ((*(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_didEmitFinishedInitialFetch) & 1) == 0 && *(v29 + 1) == 1)
    {
      v30 = v23[10];
      *(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_didEmitFinishedInitialFetch) = 1;
      OUTLINED_FUNCTION_70_4(OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion);
      v31 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();

      OUTLINED_FUNCTION_9_14();
      sub_1BC7AA12C(v32);
      v33 = *(*(v30 + v31) + 16);
      v34 = OUTLINED_FUNCTION_103_0();
      sub_1BC7AA600(v34, v24);
      OUTLINED_FUNCTION_102_0();
      if (v33 >= 0x64)
      {
        OUTLINED_FUNCTION_37_5();
        swift_beginAccess();
        v35 = OUTLINED_FUNCTION_103_0();
        sub_1BC8ABD58(v35);
        swift_endAccess();
      }

      if (qword_1EBCF4760 != -1)
      {
        OUTLINED_FUNCTION_0_25();
        swift_once();
      }

      v36 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v36, qword_1EBD067C8);

      v37 = sub_1BC8F7714();
      v38 = sub_1BC8F8204();

      if (os_log_type_enabled(v37, v38))
      {
        OUTLINED_FUNCTION_9();
        swift_slowAlloc();
        OUTLINED_FUNCTION_23_11();
        v63 = swift_slowAlloc();
        a11 = v25;
        *v30 = 136315138;
        a12 = &unk_1F3B36C30;

        VersionedChange.description.getter();
        OUTLINED_FUNCTION_37_3();

        v39 = OUTLINED_FUNCTION_12_5();
        sub_1BC7A9A4C(v39, v40, v41);
        OUTLINED_FUNCTION_100();

        *(v30 + 4) = &a11;
        OUTLINED_FUNCTION_205();
        _os_log_impl(v42, v43, v44, v45, v46, v47);
        __swift_destroy_boxed_opaque_existential_1(v63);
        v48 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v48);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v50 = v23[14];
      v49 = v23[15];
      v51 = v23[12];
      v52 = v23[11];
      sub_1BC7D9558(v23[10] + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v51, &qword_1EBCF63B8, &qword_1BC906990);
      v53 = *(v52 + 48);
      v23[8] = v25;
      v23[9] = &unk_1F3B36C30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
      OUTLINED_FUNCTION_152();
      v54 = OUTLINED_FUNCTION_57_3();
      v55(v54);
      OUTLINED_FUNCTION_10(&unk_1F3B36C30);
      (*(v56 + 8))(v51 + v53, &unk_1F3B36C30);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
      OUTLINED_FUNCTION_42(v57);
      (*(v58 + 8))(v51);
    }
  }

  v59 = swift_task_alloc();
  v23[20] = v59;
  *v59 = v23;
  v59[1] = sub_1BC89EF80;
  v60 = v23[10];
  OUTLINED_FUNCTION_186_0();

  return sub_1BC8A46A8(v61);
}

uint64_t sub_1BC89EF80()
{
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = v1[16];
  v6 = v1[15];
  v7 = v1[12];

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_1BC89F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1BC89F0E8, a4, 0);
}

uint64_t sub_1BC89F0E8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_34();
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_34();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_183_0(v4);
  *(v5 + 16) = sub_1BC8B4350;
  *(v5 + 24) = 0;

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_133(v6);
  *v7 = v8;
  v7[1] = sub_1BC89F218;
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);
  OUTLINED_FUNCTION_112();

  return v17(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1BC89F218()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  OUTLINED_FUNCTION_27();

  return v7();
}

id sub_1BC89F388@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for HistoryItem();
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t sub_1BC89F3E4()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 80) = v0;
  *(v1 + 168) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *(v1 + 88) = v3;
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_47_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  *(v1 + 104) = v6;
  OUTLINED_FUNCTION_26(v6);
  *(v1 + 112) = v7;
  v9 = *(v8 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_47_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v10);
  v12 = *(v11 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_47_3();
  v13 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1BC89F4F4()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 80);
  v2 = *(v0 + 168);
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callFetchTask;
  *(v0 + 136) = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callFetchTask;
  v4 = *(v1 + v3);
  if (v2 == 1)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_191_0(v1);

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_190();

      __asm { BRAA            X1, X16 }
    }

    *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch) = 0;
  }

  else
  {
    if (v4)
    {
      v7 = *(v1 + v3);

      sub_1BC8F8024();

      v1 = *(v0 + 80);
    }

    *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch) = 0;
    v8 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pageSize);
  }

  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v13, v14);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_104_1(v15);
  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
  OUTLINED_FUNCTION_194_0(v16);

  v17 = *(MEMORY[0x1E69E86C0] + 4);
  v18 = swift_task_alloc();
  *(v0 + 152) = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_166_0(v18);
  OUTLINED_FUNCTION_190();

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1BC89F6D8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = v1[19];
  v3 = v1[18];
  v4 = v1[10];
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_120_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC89F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_185_0();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_38();
  a20 = v23;
  OUTLINED_FUNCTION_148_0();
  if ((v22 & 1) == 0)
  {
    v28 = v23[10];
    v29 = (v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_initialFetch);
    *(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_initialFetch + 1) = 1;
    if ((*(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_didEmitFinishedInitialFetch) & 1) == 0 && *v29 == 1)
    {
      v30 = v23[10];
      *(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_didEmitFinishedInitialFetch) = 1;
      OUTLINED_FUNCTION_70_4(OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion);
      v31 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();

      OUTLINED_FUNCTION_9_14();
      sub_1BC7AA12C(v32);
      v33 = *(*(v30 + v31) + 16);
      v34 = OUTLINED_FUNCTION_103_0();
      sub_1BC7AA600(v34, v24);
      OUTLINED_FUNCTION_102_0();
      if (v33 >= 0x64)
      {
        OUTLINED_FUNCTION_37_5();
        swift_beginAccess();
        v35 = OUTLINED_FUNCTION_103_0();
        sub_1BC8ABD58(v35);
        swift_endAccess();
      }

      if (qword_1EBCF4760 != -1)
      {
        OUTLINED_FUNCTION_0_25();
        swift_once();
      }

      v36 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v36, qword_1EBD067C8);

      v37 = sub_1BC8F7714();
      v38 = sub_1BC8F8204();

      if (os_log_type_enabled(v37, v38))
      {
        OUTLINED_FUNCTION_9();
        swift_slowAlloc();
        OUTLINED_FUNCTION_23_11();
        v63 = swift_slowAlloc();
        a11 = v25;
        *v30 = 136315138;
        a12 = &unk_1F3B36C60;

        VersionedChange.description.getter();
        OUTLINED_FUNCTION_37_3();

        v39 = OUTLINED_FUNCTION_12_5();
        sub_1BC7A9A4C(v39, v40, v41);
        OUTLINED_FUNCTION_100();

        *(v30 + 4) = &a11;
        OUTLINED_FUNCTION_205();
        _os_log_impl(v42, v43, v44, v45, v46, v47);
        __swift_destroy_boxed_opaque_existential_1(v63);
        v48 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v48);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v50 = v23[14];
      v49 = v23[15];
      v51 = v23[12];
      v52 = v23[11];
      sub_1BC7D9558(v23[10] + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v51, &qword_1EBCF63B8, &qword_1BC906990);
      v53 = *(v52 + 48);
      v23[8] = v25;
      v23[9] = &unk_1F3B36C60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
      OUTLINED_FUNCTION_152();
      v54 = OUTLINED_FUNCTION_57_3();
      v55(v54);
      OUTLINED_FUNCTION_10(&unk_1F3B36C60);
      (*(v56 + 8))(v51 + v53, &unk_1F3B36C60);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
      OUTLINED_FUNCTION_42(v57);
      (*(v58 + 8))(v51);
    }
  }

  v59 = swift_task_alloc();
  v23[20] = v59;
  *v59 = v23;
  v59[1] = sub_1BC8B4804;
  v60 = v23[10];
  OUTLINED_FUNCTION_186_0();

  return sub_1BC8A46A8(v61);
}

uint64_t sub_1BC89FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1BC89FB40, a4, 0);
}

uint64_t sub_1BC89FB40()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_34();
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1BC89FC4C;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return sub_1BC8A0E9C(0, v5, sub_1BC8B4298, v3, sub_1BC8B42A0, 0);
}

uint64_t sub_1BC89FC4C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_27();

  return v6();
}

uint64_t sub_1BC89FD48(void *a1)
{
  v1 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, a1[17]);
  return sub_1BC8F7364();
}

uint64_t sub_1BC89FDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7324();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for HistoryItem();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BC89FE3C(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 64) = a4;
  *(v7 + 72) = a5;
  *(v7 + 56) = a3;
  *(v7 + 273) = a2;
  *(v7 + 272) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *(v7 + 96) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v10 = sub_1BC8F7F84();
  *(v7 + 112) = v10;
  v11 = *(v10 - 8);
  *(v7 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  v13 = *(type metadata accessor for HistoryItem() - 8);
  *(v7 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6588, &qword_1BC907760);
  *(v7 + 152) = v15;
  v16 = *(v15 - 8);
  *(v7 + 160) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6590, &qword_1BC907768);
  *(v7 + 176) = v18;
  v19 = *(v18 - 8);
  *(v7 + 184) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8A0070, v6, 0);
}

uint64_t sub_1BC8A0070()
{
  v45 = v1;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v4 = OUTLINED_FUNCTION_100_1();
  *(v1 + 200) = __swift_project_value_buffer(v4, qword_1EBD067C8);
  v5 = sub_1BC8F7714();
  sub_1BC8F8204();
  v6 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 273);
    v9 = *(v1 + 272);
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_147();
    *v10 = 136315394;
    if (v9)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v0 = v2;
      v11 = 0xE500000000000000;
    }

    sub_1BC7A9A4C(v0, v11, &v44);

    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v17 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v17);
    v18 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v18);
  }

  else
  {
    v19 = *(v1 + 272);

    if (v19)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v0 = v2;
      v11 = 0xE500000000000000;
    }
  }

  *(v1 + 208) = v11;
  *(v1 + 216) = v0;
  v20 = *(v1 + 192);
  v22 = *(v1 + 160);
  v21 = *(v1 + 168);
  v23 = *(v1 + 152);
  v24 = *(v1 + 64);
  (*(v1 + 56))();
  sub_1BC8F7FF4();
  v25 = *(v22 + 8);
  v26 = OUTLINED_FUNCTION_81_0();
  v27(v26);
  OUTLINED_FUNCTION_1_25();
  *(v1 + 224) = sub_1BC8B3DC4(v28, v29);
  v30 = *(v1 + 88);
  v31 = *(MEMORY[0x1E69E87A8] + 4);
  v32 = swift_task_alloc();
  *(v1 + 232) = v32;
  *v32 = v1;
  OUTLINED_FUNCTION_19_17(v32);
  v33 = *(v1 + 192);
  v34 = *(v1 + 176);
  v35 = OUTLINED_FUNCTION_134_1();

  return MEMORY[0x1EEE6DB90](v35, v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_1BC8A029C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 240) = v0;

  v9 = *(v3 + 88);
  if (v0)
  {
    v10 = sub_1BC8A0990;
  }

  else
  {
    v10 = sub_1BC8A039C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

void sub_1BC8A039C()
{
  OUTLINED_FUNCTION_38();
  v99 = v0;
  v3 = *(v0 + 16);
  if (!v3)
  {
    v28 = OUTLINED_FUNCTION_126_0();
    v29(v28);
    goto LABEL_22;
  }

  v4 = *(v0 + 240);
  sub_1BC8F8044();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_126_0();
    v6(v5);

    v7 = *(v0 + 128);
    v8 = *(v0 + 112);
    *(v0 + 32) = v4;
    v9 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 200);

      v11 = sub_1BC8F7714();
      sub_1BC8F8204();
      v12 = OUTLINED_FUNCTION_36_0();
      if (os_log_type_enabled(v12, v13))
      {
        v15 = *(v0 + 208);
        v14 = *(v0 + 216);
        OUTLINED_FUNCTION_9();
        swift_slowAlloc();
        OUTLINED_FUNCTION_23_11();
        swift_slowAlloc();
        OUTLINED_FUNCTION_147();
        *v1 = 136315138;
        v16 = OUTLINED_FUNCTION_81_0();
        sub_1BC7A9A4C(v16, v17, v18);
        OUTLINED_FUNCTION_157();
        *(v1 + 4) = v14;
        OUTLINED_FUNCTION_49_10();
        OUTLINED_FUNCTION_205();
        _os_log_impl(v19, v20, v21, v22, v23, v24);
        __swift_destroy_boxed_opaque_existential_1(v2);
        v25 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v25);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v26 = OUTLINED_FUNCTION_124_0();
      v27(v26);
    }

    else
    {
      v48 = *(v0 + 96);
      v47 = *(v0 + 104);
      v49 = *(v0 + 88);

      sub_1BC7D9558(v49 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v47, &qword_1EBCF63B8, &qword_1BC906990);
      v50 = *(v48 + 48);
      *(v0 + 40) = v4;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
      sub_1BC8F8074();
      OUTLINED_FUNCTION_30_12();
      (*(v52 + 8))(v47 + v50, v51);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
      OUTLINED_FUNCTION_42(v53);
      (*(v54 + 8))(v47);
    }

LABEL_22:
    OUTLINED_FUNCTION_149_0();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_62_1();

    __asm { BRAA            X1, X16 }
  }

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v30)
  {
LABEL_10:
    *(v0 + 48) = MEMORY[0x1E69E7CC0];
    sub_1BC7DDA7C();
    if (v30 < 0)
    {
      __break(1u);
      return;
    }

    v31 = 0;
    v32 = *(v0 + 48);
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v33 = OUTLINED_FUNCTION_27_0();
        v34 = MEMORY[0x1BFB29A00](v33);
      }

      else
      {
        if ((v31 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v30 = sub_1BC8F8504();
          if (!v30)
          {
            break;
          }

          goto LABEL_10;
        }

        if (v31 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v34 = *(v3 + 8 * v31 + 32);
      }

      v35 = v34;
      v36 = *(v0 + 144);
      v37 = *(v0 + 72);
      v38 = *(v0 + 80);
      v98 = v34;
      v37(&v98);

      *(v0 + 48) = v32;
      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_37(v39);
        sub_1BC7DDA7C();
        v32 = *(v0 + 48);
      }

      v42 = *(v0 + 136);
      v41 = *(v0 + 144);
      ++v31;
      *(v32 + 16) = v40 + 1;
      v43 = *(v42 + 80);
      OUTLINED_FUNCTION_123();
      sub_1BC7FBC68(v46, v45 + *(v44 + 72) * v40);
      if (v30 == v31)
      {

        goto LABEL_29;
      }
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_29:
  *(v0 + 248) = v32;
  v57 = *(v0 + 200);

  v58 = sub_1BC8F7714();
  sub_1BC8F8204();
  v59 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v59, v60))
  {
    v62 = *(v0 + 208);
    v61 = *(v0 + 216);
    OUTLINED_FUNCTION_11_2();
    v63 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v64 = swift_slowAlloc();
    v98 = v64;
    OUTLINED_FUNCTION_192_0(3.8521e-34);
    *(v63 + 12) = 2080;
    v65 = OUTLINED_FUNCTION_125();
    v68 = sub_1BC7A9A4C(v65, v66, v67);

    *(v63 + 14) = v68;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v69, v70, v71, v72, v73, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v74 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v74);
  }

  else
  {
  }

  v75 = *(v0 + 200);
  v76 = *(v0 + 272);

  v77 = sub_1BC8F7714();
  sub_1BC8F8204();
  v78 = OUTLINED_FUNCTION_36_0();
  v80 = os_log_type_enabled(v78, v79);
  if (v76)
  {
    if (v80)
    {
      OUTLINED_FUNCTION_9();
      v81 = swift_slowAlloc();
      OUTLINED_FUNCTION_67_3(v81, 3.852e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
      v87 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v87);
    }

    else
    {
    }

    v95 = swift_task_alloc();
    *(v0 + 264) = v95;
    *v95 = v0;
    OUTLINED_FUNCTION_167_0(v95);
  }

  else
  {
    if (v80)
    {
      OUTLINED_FUNCTION_9();
      v88 = swift_slowAlloc();
      OUTLINED_FUNCTION_67_3(v88, 3.852e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v89, v90, v91, v92, v93, 0xCu);
      v94 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v94);
    }

    else
    {
    }

    v96 = swift_task_alloc();
    *(v0 + 256) = v96;
    *v96 = v0;
    OUTLINED_FUNCTION_167_0(v96);
  }

  OUTLINED_FUNCTION_62_1();

  sub_1BC8A2454();
}

uint64_t sub_1BC8A0990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_71();
  v13 = OUTLINED_FUNCTION_126_0();
  v14(v13);
  OUTLINED_FUNCTION_131_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  if (OUTLINED_FUNCTION_151())
  {
    v15 = *(v10 + 200);

    v16 = sub_1BC8F7714();
    sub_1BC8F8204();
    v17 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v10 + 208);
      v19 = *(v10 + 216);
      OUTLINED_FUNCTION_9();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_11();
      swift_slowAlloc();
      OUTLINED_FUNCTION_147();
      *v11 = 136315138;
      v21 = OUTLINED_FUNCTION_81_0();
      sub_1BC7A9A4C(v21, v22, v23);
      OUTLINED_FUNCTION_157();
      *(v11 + 1) = v19;
      OUTLINED_FUNCTION_49_10();
      OUTLINED_FUNCTION_205();
      _os_log_impl(v24, v25, v26, v27, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v30 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x1BFB2AA50](v30);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v31 = OUTLINED_FUNCTION_124_0();
    v32(v31);
  }

  else
  {
    v34 = *(v10 + 96);
    v33 = *(v10 + 104);
    v35 = *(v10 + 88);

    sub_1BC7D9558(v35 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v33, &qword_1EBCF63B8, &qword_1BC906990);
    v36 = *(v34 + 48);
    *(v10 + 40) = v11;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
    OUTLINED_FUNCTION_81_0();
    sub_1BC8F8074();
    OUTLINED_FUNCTION_10(v37);
    (*(v38 + 8))(v33 + v36, v37);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
    OUTLINED_FUNCTION_42(v39);
    (*(v40 + 8))(v33);
  }

  OUTLINED_FUNCTION_149_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48_4();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_1BC8A0BBC()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_3_1();
  *v2 = v0;
  v3 = v0[32];
  v4 = v0[31];
  *v2 = *v1;

  OUTLINED_FUNCTION_164_0();
  v6 = *(v5 + 224);
  v7 = v0[11];
  v8 = *(MEMORY[0x1E69E87A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_173();
  v0[29] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_19_17();
  v11 = v0[24];
  v12 = v0[22];
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6DB90](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1BC8A0D2C()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_3_1();
  *v2 = v0;
  v3 = v0[33];
  v4 = v0[31];
  *v2 = *v1;

  OUTLINED_FUNCTION_164_0();
  v6 = *(v5 + 224);
  v7 = v0[11];
  v8 = *(MEMORY[0x1E69E87A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_173();
  v0[29] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_19_17();
  v11 = v0[24];
  v12 = v0[22];
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6DB90](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1BC8A0E9C(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 64) = a4;
  *(v7 + 72) = a5;
  *(v7 + 56) = a3;
  *(v7 + 297) = a2;
  *(v7 + 296) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *(v7 + 96) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v10 = sub_1BC8F7F84();
  *(v7 + 112) = v10;
  v11 = *(v10 - 8);
  *(v7 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  v13 = sub_1BC8F7324();
  *(v7 + 136) = v13;
  v14 = *(v13 - 8);
  *(v7 + 144) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v16 = *(type metadata accessor for HistoryItem() - 8);
  *(v7 + 160) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6578, &qword_1BC907738);
  *(v7 + 176) = v18;
  v19 = *(v18 - 8);
  *(v7 + 184) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6580, &qword_1BC907740);
  *(v7 + 200) = v21;
  v22 = *(v21 - 8);
  *(v7 + 208) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8A112C, v6, 0);
}

uint64_t sub_1BC8A112C()
{
  v45 = v1;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v4 = OUTLINED_FUNCTION_100_1();
  *(v1 + 224) = __swift_project_value_buffer(v4, qword_1EBD067C8);
  v5 = sub_1BC8F7714();
  sub_1BC8F8204();
  v6 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 297);
    v9 = *(v1 + 296);
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_147();
    *v10 = 136315394;
    if (v9)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v0 = v2;
      v11 = 0xE500000000000000;
    }

    sub_1BC7A9A4C(v0, v11, &v44);

    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v17 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v17);
    v18 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v18);
  }

  else
  {
    v19 = *(v1 + 296);

    if (v19)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v0 = v2;
      v11 = 0xE500000000000000;
    }
  }

  *(v1 + 232) = v11;
  *(v1 + 240) = v0;
  v20 = *(v1 + 216);
  v22 = *(v1 + 184);
  v21 = *(v1 + 192);
  v23 = *(v1 + 176);
  v24 = *(v1 + 64);
  (*(v1 + 56))();
  sub_1BC8F7FF4();
  v25 = *(v22 + 8);
  v26 = OUTLINED_FUNCTION_81_0();
  v27(v26);
  OUTLINED_FUNCTION_1_25();
  *(v1 + 248) = sub_1BC8B3DC4(v28, v29);
  v30 = *(v1 + 88);
  v31 = *(MEMORY[0x1E69E87A8] + 4);
  v32 = swift_task_alloc();
  *(v1 + 256) = v32;
  *v32 = v1;
  OUTLINED_FUNCTION_18_14(v32);
  v33 = *(v1 + 216);
  v34 = *(v1 + 200);
  v35 = OUTLINED_FUNCTION_134_1();

  return MEMORY[0x1EEE6DB90](v35, v36, v37, v38, v39, v40, v41, v42);
}

uint64_t sub_1BC8A1358()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v3 + 264) = v0;

  v9 = *(v3 + 88);
  if (v0)
  {
    v10 = sub_1BC8A1AA4;
  }

  else
  {
    v10 = sub_1BC8A1458;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

void sub_1BC8A1458()
{
  v2 = v0;
  v3 = *(v0 + 16);
  if (!v3)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    goto LABEL_17;
  }

  v4 = *(v0 + 264);
  sub_1BC8F8044();
  if (v4)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v5 = *(v0 + 128);
    v6 = *(v0 + 112);
    *(v0 + 32) = v4;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 224);

      v9 = sub_1BC8F7714();
      sub_1BC8F8204();
      v10 = OUTLINED_FUNCTION_36_0();
      if (os_log_type_enabled(v10, v11))
      {
        v13 = *(v0 + 232);
        v12 = *(v0 + 240);
        OUTLINED_FUNCTION_9();
        swift_slowAlloc();
        OUTLINED_FUNCTION_23_11();
        v107 = swift_slowAlloc();
        *v1 = 136315138;
        v14 = OUTLINED_FUNCTION_81_0();
        sub_1BC7A9A4C(v14, v15, v16);
        OUTLINED_FUNCTION_157();
        *(v1 + 4) = v12;
        OUTLINED_FUNCTION_49_10();
        OUTLINED_FUNCTION_205();
        _os_log_impl(v17, v18, v19, v20, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(v107);
        v23 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v23);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    }

    else
    {
      v49 = *(v0 + 96);
      v48 = *(v0 + 104);
      v50 = *(v0 + 88);

      sub_1BC7D9558(v50 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v48, &qword_1EBCF63B8, &qword_1BC906990);
      v51 = *(v49 + 48);
      *(v0 + 40) = v4;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
      sub_1BC8F8074();
      OUTLINED_FUNCTION_30_12();
      (*(v53 + 8))(v48 + v51, v52);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
      OUTLINED_FUNCTION_42(v54);
      (*(v55 + 8))(v48);
    }

LABEL_17:
    v56 = *(v0 + 216);
    v57 = *(v0 + 192);
    v58 = *(v0 + 168);
    v59 = *(v0 + 152);
    v60 = *(v0 + 128);
    v61 = *(v0 + 104);

    v62 = *(v0 + 8);
    OUTLINED_FUNCTION_32_7();

    __asm { BRAA            X1, X16 }
  }

  v24 = *(v3 + 16);
  if (v24)
  {
    v25 = *(v0 + 144);
    *(v0 + 48) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_14_3();
    sub_1BC7DDA7C();
    v26 = 0;
    v27 = *(v0 + 48);
    v28 = *(v25 + 80);
    OUTLINED_FUNCTION_25_1();
    v105 = v3 + v29;
    v106 = v3;
    while (v26 < *(v3 + 16))
    {
      v30 = v24;
      v31 = *(v2 + 168);
      v32 = *(v2 + 144);
      v33 = *(v2 + 152);
      v35 = *(v2 + 72);
      v34 = *(v2 + 80);
      (*(v32 + 16))(v33, v105 + *(v32 + 72) * v26, *(v2 + 136));
      v35(v33);
      v36 = *(v32 + 8);
      v37 = OUTLINED_FUNCTION_125();
      v38(v37);
      *(v2 + 48) = v27;
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      if (v40 >= v39 >> 1)
      {
        OUTLINED_FUNCTION_37(v39);
        sub_1BC7DDA7C();
        v27 = *(v2 + 48);
      }

      v42 = *(v2 + 160);
      v41 = *(v2 + 168);
      ++v26;
      *(v27 + 16) = v40 + 1;
      v43 = *(v42 + 80);
      OUTLINED_FUNCTION_123();
      sub_1BC7FBC68(v46, v45 + *(v44 + 72) * v40);
      v24 = v30;
      v47 = v30 == v26;
      v3 = v106;
      if (v47)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
LABEL_21:
    *(v2 + 272) = v27;
    v65 = *(v2 + 224);

    v66 = sub_1BC8F7714();
    sub_1BC8F8204();
    v67 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v67, v68))
    {
      v70 = *(v2 + 232);
      v69 = *(v2 + 240);
      OUTLINED_FUNCTION_11_2();
      v71 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v108 = swift_slowAlloc();
      OUTLINED_FUNCTION_192_0(3.8521e-34);
      *(v71 + 12) = 2080;
      v72 = OUTLINED_FUNCTION_125();
      v75 = sub_1BC7A9A4C(v72, v73, v74);

      *(v71 + 14) = v75;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v76, v77, v78, v79, v80, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v108);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v81 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v81);
    }

    else
    {
    }

    v82 = *(v2 + 224);
    v83 = *(v2 + 296);

    v84 = sub_1BC8F7714();
    sub_1BC8F8204();
    v85 = OUTLINED_FUNCTION_36_0();
    v87 = os_log_type_enabled(v85, v86);
    if (v83)
    {
      if (v87)
      {
        OUTLINED_FUNCTION_9();
        v88 = swift_slowAlloc();
        OUTLINED_FUNCTION_67_3(v88, 3.852e-34);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v89, v90, v91, v92, v93, 0xCu);
        v94 = OUTLINED_FUNCTION_13_2();
        MEMORY[0x1BFB2AA50](v94);
      }

      else
      {
      }

      v102 = swift_task_alloc();
      *(v2 + 288) = v102;
      *v102 = v2;
      OUTLINED_FUNCTION_168_0(v102);
    }

    else
    {
      if (v87)
      {
        OUTLINED_FUNCTION_9();
        v95 = swift_slowAlloc();
        OUTLINED_FUNCTION_67_3(v95, 3.852e-34);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v96, v97, v98, v99, v100, 0xCu);
        v101 = OUTLINED_FUNCTION_13_2();
        MEMORY[0x1BFB2AA50](v101);
      }

      else
      {
      }

      v103 = swift_task_alloc();
      *(v2 + 280) = v103;
      *v103 = v2;
      OUTLINED_FUNCTION_168_0(v103);
    }

    OUTLINED_FUNCTION_32_7();

    sub_1BC8A2454();
  }
}

uint64_t sub_1BC8A1AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_71();
  (*(*(v10 + 208) + 8))(*(v10 + 216), *(v10 + 200));
  OUTLINED_FUNCTION_131_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  if (OUTLINED_FUNCTION_151())
  {
    v13 = *(v10 + 224);

    v14 = sub_1BC8F7714();
    sub_1BC8F8204();
    v15 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v10 + 232);
      v17 = *(v10 + 240);
      OUTLINED_FUNCTION_9();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_11();
      swift_slowAlloc();
      OUTLINED_FUNCTION_147();
      *v11 = 136315138;
      v19 = OUTLINED_FUNCTION_81_0();
      sub_1BC7A9A4C(v19, v20, v21);
      OUTLINED_FUNCTION_157();
      *(v11 + 1) = v17;
      OUTLINED_FUNCTION_49_10();
      OUTLINED_FUNCTION_205();
      _os_log_impl(v22, v23, v24, v25, v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v28 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x1BFB2AA50](v28);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v29 = OUTLINED_FUNCTION_124_0();
    v30(v29);
  }

  else
  {
    v32 = *(v10 + 96);
    v31 = *(v10 + 104);
    v33 = *(v10 + 88);

    sub_1BC7D9558(v33 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v31, &qword_1EBCF63B8, &qword_1BC906990);
    v34 = *(v32 + 48);
    *(v10 + 40) = v11;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
    OUTLINED_FUNCTION_81_0();
    sub_1BC8F8074();
    OUTLINED_FUNCTION_10(v35);
    (*(v36 + 8))(v31 + v34, v35);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
    OUTLINED_FUNCTION_42(v37);
    (*(v38 + 8))(v31);
  }

  v39 = *(v10 + 216);
  v40 = *(v10 + 192);
  v41 = *(v10 + 168);
  v42 = *(v10 + 152);
  v43 = *(v10 + 128);
  v44 = *(v10 + 104);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48_4();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10);
}

uint64_t sub_1BC8A1CF8()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_3_1();
  *v2 = v0;
  v3 = v0[35];
  v4 = v0[34];
  *v2 = *v1;

  OUTLINED_FUNCTION_164_0();
  v6 = *(v5 + 248);
  v7 = v0[11];
  v8 = *(MEMORY[0x1E69E87A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_173();
  v0[32] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_18_14();
  v11 = v0[27];
  v12 = v0[25];
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6DB90](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1BC8A1E68()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_3_1();
  *v2 = v0;
  v3 = v0[36];
  v4 = v0[34];
  *v2 = *v1;

  OUTLINED_FUNCTION_164_0();
  v6 = *(v5 + 248);
  v7 = v0[11];
  v8 = *(MEMORY[0x1E69E87A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_173();
  v0[32] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_18_14();
  v11 = v0[27];
  v12 = v0[25];
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6DB90](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t (*sub_1BC8A1FD8(char a1, uint64_t a2))()
{
  if (a1)
  {
    v3 = sub_1BC8A214C;
  }

  else
  {
    v3 = sub_1BC8A208C;
  }

  if (a1)
  {
    v4 = sub_1BC8B47F8;
  }

  else
  {
    v4 = sub_1BC8B41D0;
  }

  OUTLINED_FUNCTION_41_0();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = 0;
  v5[4] = a2;

  return v4;
}

BOOL sub_1BC8A208C(uint64_t a1)
{
  v2 = type metadata accessor for HistoryItem();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BC8B3E70(a1, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HistoryItem);
  v5 = swift_getEnumCaseMultiPayload() != 1;
  sub_1BC7C0224();
  return v5;
}

BOOL sub_1BC8A214C(uint64_t a1)
{
  v2 = type metadata accessor for HistoryItem();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BC8B3E70(a1, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HistoryItem);
  v5 = swift_getEnumCaseMultiPayload() == 1;
  sub_1BC7C0224();
  return v5;
}

void sub_1BC8A220C()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_1BC8F7324();
  v7 = OUTLINED_FUNCTION_0(v6);
  v29 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  v14 = type metadata accessor for HistoryItem();
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_0();
  v18 = sub_1BC8F7264();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_139();
  if (v3(v5))
  {
    sub_1BC8B3E70(v5, v1, type metadata accessor for HistoryItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *v1;
      v25 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      (*(v21 + 16))(v0, &v24[v25], v18);
    }

    else
    {
      (*(v29 + 32))(v13, v1, v6);
      sub_1BC8F7314();
      v26 = *(v29 + 8);
      v27 = OUTLINED_FUNCTION_143();
      v28(v27);
    }

    sub_1BC89A360();
    (*(v21 + 8))(v0, v18);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8A2454()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 249) = v2;
  *(v1 + 112) = v3;
  *(v1 + 120) = v0;
  *(v1 + 248) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *(v1 + 128) = v5;
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_47_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  *(v1 + 144) = v8;
  OUTLINED_FUNCTION_26(v8);
  *(v1 + 152) = v9;
  v11 = *(v10 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_47_3();
  v12 = sub_1BC8F7324();
  *(v1 + 168) = v12;
  OUTLINED_FUNCTION_26(v12);
  *(v1 + 176) = v13;
  v15 = *(v14 + 64);
  *(v1 + 184) = OUTLINED_FUNCTION_47_3();
  v16 = type metadata accessor for HistoryItem();
  *(v1 + 192) = v16;
  OUTLINED_FUNCTION_26(v16);
  *(v1 + 200) = v17;
  v19 = *(v18 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_200_0();
  *(v1 + 216) = swift_task_alloc();
  v20 = sub_1BC8F7264();
  *(v1 + 224) = v20;
  OUTLINED_FUNCTION_26(v20);
  *(v1 + 232) = v21;
  v23 = *(v22 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_47_3();
  v24 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1BC8A262C()
{
  v108 = v0;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EBD067C8);

  v3 = sub_1BC8F7714();
  sub_1BC8F8204();
  v4 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 249);
    v7 = *(v0 + 112);
    v8 = *(v0 + 248);
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v10 = swift_slowAlloc();
    v107[0] = v10;
    *v9 = 134218498;
    *(v9 + 4) = *(v7 + 16);

    *(v9 + 12) = 2080;
    if (v8)
    {
      v11 = 0x736567617373656DLL;
    }

    else
    {
      v11 = 0x736C6C6163;
    }

    if (v8)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = sub_1BC7A9A4C(v11, v12, v107);

    *(v9 + 14) = v13;
    *(v9 + 22) = 1024;
    *(v9 + 24) = v6;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v19 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v19);
    v20 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v20);
  }

  else
  {
    v21 = *(v0 + 112);
  }

  if (*(v0 + 249) == 1)
  {
    v22 = *(v0 + 112);
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v0 + 232);
      v25 = *(v0 + 200);
      v26 = *(v0 + 176);
      v107[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_14_3();
      sub_1BC7DDB5C();
      v27 = v107[0];
      v28 = *(v25 + 80);
      OUTLINED_FUNCTION_25_1();
      v30 = v22 + v29;
      v103 = (v26 + 32);
      v104 = *(v25 + 72);
      v102 = (v26 + 8);
      do
      {
        v32 = *(v0 + 208);
        v31 = *(v0 + 216);
        v33 = *(v0 + 192);
        sub_1BC8B3E70(v30, v31, type metadata accessor for HistoryItem);
        sub_1BC8B3E70(v31, v32, type metadata accessor for HistoryItem);
        OUTLINED_FUNCTION_45_2();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v35 = *(v0 + 240);
        if (EnumCaseMultiPayload == 1)
        {
          v36 = *(v0 + 224);
          v37 = **(v0 + 208);
          v38 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
          OUTLINED_FUNCTION_13();
          swift_beginAccess();
          (*(v24 + 16))(v35, &v37[v38], v36);
        }

        else
        {
          (*v103)(*(v0 + 184), *(v0 + 208), *(v0 + 168));
          sub_1BC8F7314();
          v39 = *v102;
          v40 = OUTLINED_FUNCTION_45_2();
          v41(v40);
        }

        v42 = *(v0 + 216);
        OUTLINED_FUNCTION_10_21();
        sub_1BC7C0224();
        v107[0] = v27;
        v44 = *(v27 + 16);
        v43 = *(v27 + 24);
        if (v44 >= v43 >> 1)
        {
          OUTLINED_FUNCTION_37(v43);
          sub_1BC7DDB5C();
          v27 = v107[0];
        }

        v45 = *(v0 + 240);
        v46 = *(v0 + 224);
        *(v27 + 16) = v44 + 1;
        v47 = *(v24 + 80);
        OUTLINED_FUNCTION_25_1();
        (*(v24 + 32))(v27 + v48 + *(v24 + 72) * v44);
        v30 += v104;
        --v23;
      }

      while (v23);
    }

    v50 = *(v0 + 248);
    sub_1BC899C68();
    v49 = sub_1BC8A1FD8(v50 & 1, v51);
  }

  else
  {
    v49 = 0;
  }

  v53 = *(v0 + 112);
  v52 = *(v0 + 120);
  v54 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
  v55 = *(v52 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets);

  v57 = sub_1BC8A2DEC(v56, v49);
  v58 = sub_1BC8A30E8(v53, v57);
  v59 = *(v0 + 249);

  OUTLINED_FUNCTION_45_2();
  sub_1BC8A38C0();
  v61 = v60;

  if (*(v61 + 16))
  {
    v62 = *(v0 + 120);
    v63 = *(v52 + v54);
    *(v52 + v54) = v58;

    v64 = *(v62 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) + 1;
    *(v62 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) = v64;
    v65 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();

    sub_1BC7AA12C(sub_1BC7F723C);
    v66 = *(*(v62 + v65) + 16);
    v67 = OUTLINED_FUNCTION_45_2();
    sub_1BC7AA600(v67, v68);
    v69 = *(v62 + v65);
    *(v69 + 16) = v66 + 1;
    v70 = v69 + 16 * v66;
    *(v70 + 32) = v64;
    *(v70 + 40) = v61;
    *(v62 + v65) = v69;
    swift_endAccess();
    if (v66 >= 0x64)
    {
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      sub_1BC8ABD58(v66 - 99);
      swift_endAccess();
    }

    v71 = sub_1BC8F7714();
    v72 = sub_1BC8F8204();

    v105 = v64;
    if (os_log_type_enabled(v71, v72))
    {
      OUTLINED_FUNCTION_9();
      v73 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v74 = swift_slowAlloc();
      v106 = v74;
      v107[0] = v64;
      *v73 = 136315138;
      v107[1] = v61;

      v75 = VersionedChange.description.getter();
      v77 = v76;

      v78 = sub_1BC7A9A4C(v75, v77, &v106);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_1BC7A3000, v71, v72, "Emitting event: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v80 = *(v0 + 152);
    v79 = *(v0 + 160);
    v81 = *(v0 + 136);
    v82 = *(v0 + 144);
    v83 = *(v0 + 128);
    OUTLINED_FUNCTION_205_0(&qword_1EBCF63B8, &qword_1BC906990, *(v0 + 120));
    v84 = *(v83 + 48);
    *(v0 + 88) = v105;
    *(v0 + 96) = v61;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
    sub_1BC8F8064();
    v86 = OUTLINED_FUNCTION_27_0();
    sub_1BC7BE108(v86);
    v87 = *(v80 + 8);
    v88 = OUTLINED_FUNCTION_45_2();
    v89(v88);
    OUTLINED_FUNCTION_30_12();
    (*(v90 + 8))(v81 + v84, v85);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
    OUTLINED_FUNCTION_42(v91);
    (*(v92 + 8))(v81);
  }

  else
  {
    v101 = OUTLINED_FUNCTION_27_0();
    sub_1BC7BE108(v101);
  }

  v93 = *(v0 + 240);
  v94 = *(v0 + 208);
  v95 = *(v0 + 216);
  v96 = *(v0 + 184);
  v97 = *(v0 + 160);
  v98 = *(v0 + 136);

  OUTLINED_FUNCTION_27();

  return v99();
}

uint64_t sub_1BC8A2DEC(uint64_t a1, uint64_t a2)
{
  if (qword_1EBCF4760 != -1)
  {
LABEL_21:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v3 = sub_1BC8F7734();
  __swift_project_value_buffer(v3, qword_1EBD067C8);

  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();
  v6 = OUTLINED_FUNCTION_36_0();
  v8 = &unk_1BC8FE000;
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_9();
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1BC7A3000, v4, v5, "Pruning %ld buckets", v9, 0xCu);
    v10 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v10);
  }

  else
  {
  }

  if (a2)
  {
    sub_1BC8B2D98();

    v11 = sub_1BC8F7AD4();
    v12 = *(a1 + 64);
    v13 = *(a1 + 32);
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_171_0();
    v15 = v14 >> 6;

    v16 = 0;
    while (1)
    {
      v17 = v16;
      if (!v8)
      {
        break;
      }

LABEL_11:
      OUTLINED_FUNCTION_178_0();
      v19 = v18 | (v16 << 6);
      v20 = *(*(a1 + 48) + 8 * v19);
      v36 = *(*(a1 + 56) + 16 * v19);

      sub_1BC7F3D28();

      if (v37)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v37 = v11;
        v21 = OUTLINED_FUNCTION_48_1();
        sub_1BC83DE8C(v21, v22, v20);
      }
    }

    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v16 >= v15)
      {
        break;
      }

      v8 = *(a1 + 64 + 8 * v16);
      ++v17;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    v23 = sub_1BC8F7714();
    sub_1BC8F8204();
    v24 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_9();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_121_1(v26, 3.852e-34);

      OUTLINED_FUNCTION_88_3();
      _os_log_impl(v27, v28, v29, v30, v31, v32);
      v33 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v33);
    }

    else
    {
    }

    sub_1BC7BE108(a2);
  }

  else
  {

    return a1;
  }

  return v11;
}

uint64_t sub_1BC8A30E8(unint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_1EBCF4760 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v6 = sub_1BC8F7734();
    __swift_project_value_buffer(v6, qword_1EBD067C8);

    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F8204();
    v9 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_11_2();
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = *(a1 + 16);

      *(v11 + 12) = 2048;
      *(v11 + 14) = a2[2];

      _os_log_impl(&dword_1BC7A3000, v7, v8, "Merging %ld items into %ld existing buckets", v11, 0x16u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {
    }

    sub_1BC8A4F64();
    isUniquelyReferenced_nonNull_native = v3;
    if (v3)
    {
      break;
    }

    v3 = v12;
    v15 = v12 + 64;
    v14 = *(v12 + 64);
    v16 = 1 << *(v12 + 32);
    OUTLINED_FUNCTION_64_4();
    if (v21 != v22)
    {
      v19 = ~v20;
    }

    a1 = v19 & v17;
    v23 = (v18 + 63) >> 6;

    v25 = a1;
    v26 = 0;
    v85 = v15;
    v86 = v24;
    v87 = v23;
    if (a1)
    {
      do
      {
LABEL_15:
        v90 = v25;
        v88 = v26;
        v28 = (v26 << 9) | (8 * __clz(__rbit64(v25)));
        v29 = *(*(v3 + 48) + v28);
        a1 = *(v29 + 16);
        v89 = *(*(v3 + 56) + v28);
        if (a1)
        {
          v83 = isUniquelyReferenced_nonNull_native;
          v84 = a2;
          *&v100 = MEMORY[0x1E69E7CC0];

          sub_1BC7AD404();
          v30 = v100;
          v3 = sub_1BC83053C(v29);
          v33 = 0;
          v96 = v29 + 56;
          v92 = v29 + 64;
          v93 = v29;
          if ((v3 & 0x8000000000000000) == 0)
          {
            while (v3 < 1 << *(v29 + 32))
            {
              v34 = v3 >> 6;
              if ((*(v96 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
              {
                goto LABEL_66;
              }

              if (*(v29 + 36) != v31)
              {
                goto LABEL_67;
              }

              v101 = v32;
              v94 = v33;
              v95 = v31;
              v35 = (*(v29 + 48) + 32 * v3);
              a2 = *v35;
              isUniquelyReferenced_nonNull_native = v35[1];
              *&v100 = v30;
              v37 = *(v30 + 16);
              v36 = *(v30 + 24);

              if (v37 >= v36 >> 1)
              {
                sub_1BC7AD404();
                v30 = v100;
              }

              *(v30 + 16) = v37 + 1;
              v38 = v30 + 16 * v37;
              *(v38 + 32) = a2;
              *(v38 + 40) = isUniquelyReferenced_nonNull_native;
              if (v101)
              {
                goto LABEL_78;
              }

              v29 = v93;
              v39 = 1 << *(v93 + 32);
              if (v3 >= v39)
              {
                goto LABEL_68;
              }

              v40 = *(v96 + 8 * v34);
              if ((v40 & (1 << v3)) == 0)
              {
                goto LABEL_69;
              }

              if (*(v93 + 36) != v95)
              {
                goto LABEL_70;
              }

              v41 = v40 & (-2 << (v3 & 0x3F));
              if (v41)
              {
                v39 = __clz(__rbit64(v41)) | v3 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                a2 = (v34 << 6);
                v42 = v34 + 1;
                v43 = (v92 + 8 * v34);
                while (v42 < (v39 + 63) >> 6)
                {
                  v45 = *v43++;
                  v44 = v45;
                  a2 += 8;
                  ++v42;
                  if (v45)
                  {
                    sub_1BC7FBED8(v3, v95, 0);
                    v39 = a2 + __clz(__rbit64(v44));
                    goto LABEL_33;
                  }
                }

                sub_1BC7FBED8(v3, v95, 0);
              }

LABEL_33:
              v33 = v94 + 1;
              if (v94 + 1 == a1)
              {
                isUniquelyReferenced_nonNull_native = v83;
                a2 = v84;
                goto LABEL_38;
              }

              v32 = 0;
              v31 = *(v93 + 36);
              v3 = v39;
              if (v39 < 0)
              {
                break;
              }
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v30 = MEMORY[0x1E69E7CC0];
LABEL_38:
        *&v100 = v30;

        sub_1BC7F8024(&v100);
        v91 = (v90 - 1) & v90;

        v46 = v100;
        if (a2[2] && (v47 = sub_1BC83CAE8(v100), (v48 & 1) != 0))
        {
          v49 = v47;

          v99 = *(a2[7] + 16 * v49);

          sub_1BC7F3F64();

          v97 = v100;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = sub_1BC83CAE8(v46);
          OUTLINED_FUNCTION_159_0(v50, v51);
          if (v22)
          {
            goto LABEL_76;
          }

          v54 = v52;
          a1 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
          if (sub_1BC8F8734())
          {
            v55 = sub_1BC83CAE8(v46);
            if ((a1 & 1) != (v56 & 1))
            {
              goto LABEL_79;
            }

            v54 = v55;
          }

          isUniquelyReferenced_nonNull_native = 0;
          v23 = v87;
          if ((a1 & 1) == 0)
          {
            OUTLINED_FUNCTION_37_10(&a2[v54 >> 6]);
            *(a2[6] + 8 * v54) = v46;
            *(a2[7] + 16 * v54) = v97;
            OUTLINED_FUNCTION_160_0();
            if (v22)
            {
              goto LABEL_77;
            }

            goto LABEL_58;
          }

          v57 = (a2[7] + 16 * v54);
          v59 = *v57;
          v58 = v57[1];
          *v57 = v97;
        }

        else
        {
          if (!*(v89 + 16))
          {
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);

            __break(1u);
LABEL_79:
            result = sub_1BC8F8B44();
            __break(1u);
            return result;
          }

          a1 = v46;
          *&v100 = v89;

          sub_1BC7F80E4(&v100);

          v98 = v100;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v100 = a2;
          v60 = sub_1BC83CAE8(v46);
          OUTLINED_FUNCTION_159_0(v60, v61);
          if (v22)
          {
            goto LABEL_74;
          }

          v64 = v62;
          v65 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
          if (sub_1BC8F8734())
          {
            v66 = sub_1BC83CAE8(v46);
            if ((v65 & 1) != (v67 & 1))
            {
              goto LABEL_79;
            }

            v64 = v66;
          }

          isUniquelyReferenced_nonNull_native = 0;
          v23 = v87;
          if ((v65 & 1) == 0)
          {
            a2 = v100;
            OUTLINED_FUNCTION_37_10(v100 + 8 * (v64 >> 6));
            *(a2[6] + 8 * v64) = v46;
            v71 = (a2[7] + 16 * v64);
            *v71 = v29;
            v71[1] = v98;
            OUTLINED_FUNCTION_160_0();
            if (v22)
            {
              goto LABEL_75;
            }

LABEL_58:
            a2[2] = v72;
            goto LABEL_59;
          }

          a2 = v100;
          v68 = (*(v100 + 56) + 16 * v64);
          v70 = *v68;
          v69 = v68[1];
          *v68 = v29;
          v68[1] = v98;
        }

LABEL_59:
        v15 = v85;
        v3 = v86;
        v26 = v88;
        v25 = v91;
      }

      while (v91);
    }

    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v23)
      {

        v73 = sub_1BC8F7714();
        v74 = sub_1BC8F8204();
        if (os_log_type_enabled(v73, v74))
        {
          OUTLINED_FUNCTION_9();
          v75 = swift_slowAlloc();
          OUTLINED_FUNCTION_121_1(v75, 3.852e-34);
          OUTLINED_FUNCTION_88_3();
          _os_log_impl(v76, v77, v78, v79, v80, v81);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        return a2;
      }

      v25 = *(v15 + 8 * v27);
      ++v26;
      if (v25)
      {
        v26 = v27;
        goto LABEL_15;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  return a2;
}

void sub_1BC8A38C0()
{
  OUTLINED_FUNCTION_29_0();
  v162 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_172_0();
  v174 = sub_1BC8F7324();
  v5 = OUTLINED_FUNCTION_0(v174);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v170 = v11 - v10;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC8, &qword_1BC9083B0);
  OUTLINED_FUNCTION_4_1(v181);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v161[-v15];
  v17 = type metadata accessor for HistoryItem();
  v18 = OUTLINED_FUNCTION_0(v17);
  v185 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_20_0();
  v173 = (v22 - v23);
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_4();
  v175 = v25;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_20_4();
  v188 = v27;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v161[-v29];
  v190 = MEMORY[0x1E69E7CD0];
  v32 = v4 + 64;
  v31 = *(v4 + 64);
  v33 = *(v4 + 32);
  OUTLINED_FUNCTION_45_0();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;
  v169 = (v7 + 32);
  v172 = (v7 + 8);
  v166 = v4;

  v39 = v38;
  v40 = 0;
  v167 = MEMORY[0x1E69E7CC8];
  v171 = MEMORY[0x1E69E7CC8];
  v176 = v17;
  v186 = v30;
  v165 = v4 + 64;
  v164 = v39;
  v163 = v1;
  if (v36)
  {
    while (1)
    {
LABEL_6:
      v42 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v43 = v42 | (v40 << 6);
      v32 = *(*(v166 + 48) + 8 * v43);
      v179 = *(*(v166 + 56) + 16 * v43);
      v44 = *(v1 + 16);

      v177 = v179;

      v187 = *(&v179 + 1);

      v178 = v32;
      if (v44 && (v45 = sub_1BC83CAE8(v32), (v46 & 1) != 0))
      {
        v47 = (*(v1 + 56) + 16 * v45);
        v48 = *v47;
        v4 = v47[1];

        v168 = v48;
        sub_1BC7F5C04(v177, v48);
        if (v49)
        {
          v50 = *(v187 + 16);
          if (v50 == *(v4 + 16))
          {
            if (v50 && v187 != v4)
            {
              v51 = 0;
              v52 = *(v185 + 80);
              OUTLINED_FUNCTION_25_1();
              v183 = v4;
              v184 = v187 + v53;
              v182 = v4 + v53;
              v180 = v50;
              do
              {
                v41 = *(v187 + 16);
                if (v51 >= v41)
                {
                  goto LABEL_98;
                }

                v0 = *(v185 + 72) * v51;
                OUTLINED_FUNCTION_6_18();
                sub_1BC8B3E70(v184 + v0, v30, v54);
                v41 = *(v4 + 16);
                if (v51 >= v41)
                {
                  goto LABEL_99;
                }

                OUTLINED_FUNCTION_20_13();
                v55 = v188;
                sub_1BC8B3E70(v182 + v0, v188, v56);
                v0 = *(v181 + 48);
                sub_1BC8B3E70(v30, v16, v4);
                sub_1BC8B3E70(v55, &v16[v0], v4);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  OUTLINED_FUNCTION_6_18();
                  v57 = v173;
                  sub_1BC8B3E70(v16, v173, v58);
                  v59 = *v57;
                  if (swift_getEnumCaseMultiPayload() != 1)
                  {

                    OUTLINED_FUNCTION_20_13();
                    sub_1BC7C0224();
                    sub_1BC7C0224();
                    goto LABEL_32;
                  }

                  v60 = *&v16[v0];
                  sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
                  OUTLINED_FUNCTION_27_0();
                  v61 = sub_1BC8F83A4();

                  v0 = type metadata accessor for HistoryItem;
                  sub_1BC7C0224();
                  v30 = v186;
                  OUTLINED_FUNCTION_27_0();
                  sub_1BC7C0224();
                  if ((v61 & 1) == 0)
                  {
                    goto LABEL_23;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_6_18();
                  v62 = v175;
                  sub_1BC8B3E70(v16, v175, v63);
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                    OUTLINED_FUNCTION_20_13();
                    sub_1BC7C0224();
                    sub_1BC7C0224();
                    (*v172)(v175, v174);
LABEL_32:
                    sub_1BC7F1790(v16, &qword_1EBCF4FC8, &qword_1BC9083B0);
                    v1 = v163;
                    goto LABEL_33;
                  }

                  v64 = v170;
                  v65 = v174;
                  (*v169)(v170, &v16[v0], v174);
                  v66 = MEMORY[0x1BFB28700](v62, v64);
                  v0 = *v172;
                  v67 = OUTLINED_FUNCTION_125();
                  (v0)(v67);
                  sub_1BC7C0224();
                  v30 = v186;
                  sub_1BC7C0224();
                  (v0)(v62, v65);
                  v32 = v178;
                  if ((v66 & 1) == 0)
                  {
LABEL_23:
                    OUTLINED_FUNCTION_10_21();
                    sub_1BC7C0224();
                    v1 = v163;
                    goto LABEL_33;
                  }
                }

                ++v51;
                OUTLINED_FUNCTION_10_21();
                sub_1BC7C0224();
                v4 = v183;
              }

              while (v180 != v51);
            }

            v1 = v163;
            goto LABEL_43;
          }
        }

LABEL_33:

        v4 = v171;
        swift_isUniquelyReferenced_nonNull_native();
        v189 = v4;
        sub_1BC83CAE8(v32);
        OUTLINED_FUNCTION_52_5();
        if (__OFADD__(v41, v80))
        {
          goto LABEL_101;
        }

        v72 = v78;
        v32 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
        OUTLINED_FUNCTION_144_0();
        if (sub_1BC8F8734())
        {
          v4 = v189;
          v81 = sub_1BC83CAE8(v178);
          v30 = v186;
          if ((v32 & 1) != (v82 & 1))
          {
            goto LABEL_106;
          }

          v72 = v81;
          if (v32)
          {
LABEL_41:

            v83 = v189;
            v171 = v189;
LABEL_42:
            v84 = (*(v83 + 56) + 16 * v72);
            v86 = *v84;
            v85 = v84[1];
            *v84 = v179;

            goto LABEL_43;
          }
        }

        else
        {
          v30 = v186;
          if (v32)
          {
            goto LABEL_41;
          }
        }

        OUTLINED_FUNCTION_37_10(&v189[v72 >> 6]);
        OUTLINED_FUNCTION_87_4();
        if (v77)
        {
          goto LABEL_102;
        }

        v171 = v76;
      }

      else
      {
        v4 = v167;
        swift_isUniquelyReferenced_nonNull_native();
        v189 = v4;
        sub_1BC83CAE8(v32);
        OUTLINED_FUNCTION_52_5();
        if (__OFADD__(v70, v71))
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          sub_1BC8F8B44();
          __break(1u);
          return;
        }

        v72 = v68;
        v73 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
        OUTLINED_FUNCTION_144_0();
        if (sub_1BC8F8734())
        {
          v4 = v189;
          v74 = sub_1BC83CAE8(v178);
          v30 = v186;
          if ((v73 & 1) != (v75 & 1))
          {
            goto LABEL_106;
          }

          v72 = v74;
          if (v73)
          {
LABEL_46:

            v83 = v189;
            v167 = v189;
            goto LABEL_42;
          }
        }

        else
        {
          v30 = v186;
          if (v73)
          {
            goto LABEL_46;
          }
        }

        OUTLINED_FUNCTION_37_10(&v189[v72 >> 6]);
        OUTLINED_FUNCTION_87_4();
        if (v77)
        {
          goto LABEL_105;
        }

        v167 = v76;
      }

      *(v76 + 16) = v41;
LABEL_43:
      v32 = v165;
      v39 = v164;
      if (!v36)
      {
        goto LABEL_2;
      }
    }
  }

  while (1)
  {
LABEL_2:
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (v41 >= v39)
    {
      break;
    }

    v36 = *(v32 + 8 * v41);
    ++v40;
    if (v36)
    {
      v40 = v41;
      goto LABEL_6;
    }
  }

  v36 = v166;

  isUniquelyReferenced_nonNull_native = v167;
  if ((v162 & 1) == 0)
  {
LABEL_59:
    v36 = isUniquelyReferenced_nonNull_native + 64;
    v98 = *(isUniquelyReferenced_nonNull_native + 64);
    v99 = *(isUniquelyReferenced_nonNull_native + 32);
    OUTLINED_FUNCTION_45_0();
    v32 = v101 & v100;
    v103 = (v102 + 63) >> 6;

    v104 = 0;
    v40 = &unk_1EBCF6560;
    v105 = &type metadata for ParticipantKey;
    v0 = &type metadata for GroupedHistoryItem;
    while (v32)
    {
LABEL_65:
      v106 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v107 = *(v167 + 48);
      v108 = OUTLINED_FUNCTION_196_0(v106);
      v109 = sub_1BC83CAE8(v108);
      v4 = v110;

      if (v4)
      {
        v111 = v171;
        LODWORD(v188) = swift_isUniquelyReferenced_nonNull_native();
        v189 = v111;
        v112 = v0;
        v113 = v105;
        v114 = *(v111 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
        OUTLINED_FUNCTION_144_0();
        v105 = v113;
        v0 = v112;
        sub_1BC8F8734();
        isUniquelyReferenced_nonNull_native = v189;
        v115 = *(v189[6] + 8 * v109);

        v116 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v109);
        v4 = *v116;
        v117 = v116[1];

        sub_1BC8B2D98();
        v171 = isUniquelyReferenced_nonNull_native;
        sub_1BC8F8754();
      }
    }

    while (1)
    {
      v41 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        goto LABEL_96;
      }

      if (v41 >= v103)
      {
        v118 = v167;

        v0 = v190;
        v119 = *(v190 + 56);
        v32 = v190 + 56;
        v120 = *(v190 + 32);
        OUTLINED_FUNCTION_45_0();
        v123 = v122 & v121;
        v40 = (v124 + 63) >> 6;

        v125 = 0;
        v36 = v171;
        v188 = v0;
        while (v123)
        {
LABEL_73:
          v126 = *(v0 + 48);
          v127 = OUTLINED_FUNCTION_196_0(__clz(__rbit64(v123)));
          v128 = sub_1BC83CAE8(v127);
          if (v129)
          {
            v130 = v128;
            swift_isUniquelyReferenced_nonNull_native();
            v189 = v118;
            v131 = v118[3];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
            OUTLINED_FUNCTION_144_0();
            v0 = v188;
            sub_1BC8F8734();
            v118 = v189;
            v132 = *(v189[6] + 8 * v130);

            v133 = (v118[7] + 16 * v130);
            v135 = *v133;
            v134 = v133[1];

            sub_1BC8B2D98();
            sub_1BC8F8754();
          }

          v123 &= v123 - 1;
          v136 = sub_1BC83CAE8(isUniquelyReferenced_nonNull_native);
          v4 = v137;

          if (v4)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v189 = v36;
            v138 = *(v36 + 24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
            OUTLINED_FUNCTION_144_0();
            sub_1BC8F8734();
            v36 = v189;
            v139 = *(v189[6] + 8 * v136);

            v140 = (*(v36 + 56) + 16 * v136);
            v4 = *v140;
            v141 = v140[1];

            sub_1BC8B2D98();
            OUTLINED_FUNCTION_48_1();
            sub_1BC8F8754();
          }
        }

        while (1)
        {
          v41 = v125 + 1;
          if (__OFADD__(v125, 1))
          {
            goto LABEL_97;
          }

          if (v41 >= v40)
          {

            if (!v118[2])
            {
              v144 = MEMORY[0x1E69E7CC0];
              goto LABEL_81;
            }

            v4 = sub_1BC899BD8(v142);
            sub_1BC7F73FC();
            v144 = v143;
            v32 = *(v143 + 16);
            v41 = *(v143 + 24);
            v40 = v32 + 1;
            if (v32 >= v41 >> 1)
            {
              goto LABEL_103;
            }

            goto LABEL_79;
          }

          v123 = *(v32 + 8 * v41);
          ++v125;
          if (v123)
          {
            v125 = v41;
            goto LABEL_73;
          }
        }
      }

      v32 = *(v36 + 8 * v41);
      ++v104;
      if (v32)
      {
        v104 = v41;
        goto LABEL_65;
      }
    }
  }

  v32 = v1 + 64;
  v88 = *(v1 + 64);
  v89 = *(v1 + 32);
  OUTLINED_FUNCTION_45_0();
  v0 = v91 & v90;
  v40 = (v92 + 63) >> 6;

  v93 = 0;
  while (v0)
  {
LABEL_54:
    v94 = __clz(__rbit64(v0));
    v0 &= v0 - 1;
    v95 = *(*(v1 + 48) + ((v93 << 9) | (8 * v94)));
    v96 = *(v36 + 16);

    if (v96 && (v4 = v36, sub_1BC83CAE8(v95), (v97 & 1) != 0))
    {
    }

    else
    {
      v4 = &v190;
      sub_1BC8AEE10(&v189, v95);
    }
  }

  while (1)
  {
    v41 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      break;
    }

    if (v41 >= v40)
    {

      goto LABEL_59;
    }

    v0 = *(v32 + 8 * v41);
    ++v93;
    if (v0)
    {
      v93 = v41;
      goto LABEL_54;
    }
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  OUTLINED_FUNCTION_37(v41);
  sub_1BC7F73FC();
  v144 = v154;
LABEL_79:
  *(v144 + 16) = v40;
  v145 = v144 + 16 * v32;
  *(v145 + 32) = v4;
  *(v145 + 40) = 0;
LABEL_81:
  if (*(v36 + 16))
  {

    v147 = sub_1BC899BD8(v146);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = *(v144 + 16);
      OUTLINED_FUNCTION_128_1();
      sub_1BC7F73FC();
      v144 = v156;
    }

    v149 = *(v144 + 16);
    v148 = *(v144 + 24);
    if (v149 >= v148 >> 1)
    {
      OUTLINED_FUNCTION_37(v148);
      sub_1BC7F73FC();
      v144 = v157;
    }

    *(v144 + 16) = v149 + 1;
    v150 = v144 + 16 * v149;
    *(v150 + 32) = v147;
    *(v150 + 40) = 1;
  }

  if (*(v0 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v158 = *(v144 + 16);
      OUTLINED_FUNCTION_128_1();
      sub_1BC7F73FC();
      v144 = v159;
    }

    v152 = *(v144 + 16);
    v151 = *(v144 + 24);
    if (v152 >= v151 >> 1)
    {
      OUTLINED_FUNCTION_37(v151);
      sub_1BC7F73FC();
      v144 = v160;
    }

    *(v144 + 16) = v152 + 1;
    v153 = v144 + 16 * v152;
    *(v153 + 32) = v0;
    *(v153 + 40) = 2;
  }

  else
  {
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8A46C0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingMessageRefetch);
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch;
  if ((v2 & 1) != 0 || *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch))
  {
    v6 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch) | ~v2;
    *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingMessageRefetch) = 0;
    *(v1 + v3) = 0;
    OUTLINED_FUNCTION_1_25();
    sub_1BC8B3DC4(v7, v8);
    v9 = swift_task_alloc();
    v0[3] = v9;
    *(v9 + 16) = v2;
    *(v9 + 24) = v1;
    *(v9 + 32) = v6 & 1;
    v10 = *(MEMORY[0x1E69E87D8] + 4);
    v11 = swift_task_alloc();
    v0[4] = v11;
    *v11 = v0;
    v11[1] = sub_1BC8A4830;
    OUTLINED_FUNCTION_53_7();
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DBF8]();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v4();
  }
}

uint64_t sub_1BC8A4830()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_120_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8A4944(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 49) = a5;
  *(v5 + 48) = a3;
  *(v5 + 16) = a2;
  *(v5 + 24) = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140) - 8) + 64) + 15;
  *(v5 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8A49EC, a4, 0);
}

uint64_t sub_1BC8A49EC()
{
  OUTLINED_FUNCTION_32();
  if (*(v1 + 48) == 1)
  {
    v0 = *(v1 + 24);
    v3 = *(v1 + 32);
    OUTLINED_FUNCTION_204_0();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    OUTLINED_FUNCTION_41_0();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_188(v8);
    sub_1BC89D9E0(v3, &unk_1BC9076F0, v2);
    sub_1BC7F1790(v3, &qword_1EBCF63D0, &qword_1BC902140);
  }

  if (*(v1 + 49) == 1)
  {
    v0 = *(v1 + 24);
    v9 = *(v1 + 32);
    OUTLINED_FUNCTION_204_0();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_41_0();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_188(v14);
    sub_1BC89D9E0(v9, &unk_1BC9076E0, v2);
    sub_1BC7F1790(v9, &qword_1EBCF63D0, &qword_1BC902140);
  }

  v15 = *(v1 + 24);
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v16, v17);
  v18 = *(MEMORY[0x1E69E8578] + 4);
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_183_0(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6550, &qword_1BC9076D0);
  OUTLINED_FUNCTION_127_0();
  *v0 = v20;
  OUTLINED_FUNCTION_118_0();
  v21 = OUTLINED_FUNCTION_143();

  return MEMORY[0x1EEE6D898](v21, v22, v23, v24, v25, v26, v27, v28);
}

void sub_1BC8A4B9C()
{
  OUTLINED_FUNCTION_22();
  v68 = v1;
  OUTLINED_FUNCTION_114();
  v3 = sub_1BC8F73D4();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_0();
  v60 = (v9 - v10);
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_4();
  v59 = v12;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_4();
  v66 = v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v53 - v23;
  v24 = MEMORY[0x1E69E7CD0];
  v71 = MEMORY[0x1E69E7CD0];
  v57 = *(v0 + 16);
  if (!v57)
  {
    goto LABEL_21;
  }

  v54 = v2;
  v67 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_handleToPerson;
  v25 = type metadata accessor for HistoryItem();
  OUTLINED_FUNCTION_26(v25);
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_123();
  v56 = v28;
  v70 = v6 + 16;
  v61 = v6 + 32;
  v62 = (v6 + 8);
  OUTLINED_FUNCTION_42_12();
  v55 = *(v30 + 72);
  v31 = v66;
  v63 = v3;
  v64 = v6;
  while (2)
  {
    v58 = v29 + 1;
    HistoryItem.handles.getter();
    v34 = v32 + 56;
    v33 = *(v32 + 56);
    v69 = v32;
    v35 = 1 << *(v32 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & v33;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v38 = 0;
    v39 = (v35 + 63) >> 6;
    while (v37)
    {
LABEL_12:
      v41 = *(v6 + 16);
      v42 = v65;
      v41(v65, *(v69 + 48) + *(v6 + 72) * (__clz(__rbit64(v37)) | (v38 << 6)), v3);
      (*(v6 + 32))(v31, v42, v3);
      sub_1BC8F73A4();
      if (!v43)
      {
        sub_1BC8F73C4();
      }

      v44 = sub_1BC8F7C84();
      v46 = v45;

      v37 &= v37 - 1;
      if (*(*(v68 + v67) + 16))
      {
        v47 = *(v68 + v67);

        sub_1BC803CBC(v44, v46);
        v49 = v48;

        if ((v49 & 1) == 0)
        {
          goto LABEL_18;
        }

        v3 = v63;
        v31 = v66;
        (*v62)(v66, v63);
        v6 = v64;
      }

      else
      {

LABEL_18:
        v50 = v60;
        v31 = v66;
        v3 = v63;
        v41(v60, v66, v63);
        v51 = v59;
        sub_1BC8AE91C(v59, v50);
        v52 = *v62;
        (*v62)(v51, v3);
        v52(v31, v3);
        v6 = v64;
      }
    }

    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        return;
      }

      if (v40 >= v39)
      {
        break;
      }

      v37 = *(v34 + 8 * v40);
      ++v38;
      if (v37)
      {
        v38 = v40;
        goto LABEL_12;
      }
    }

    v29 = v58;
    if (v58 != v57)
    {
      continue;
    }

    break;
  }

  v24 = v71;
LABEL_21:
  if (*(v24 + 16))
  {
    sub_1BC8A5C20(v24, v16, v17, v18, v19, v20, v21, v22, v53, v54);
  }

  OUTLINED_FUNCTION_23();
}

void sub_1BC8A4F64()
{
  OUTLINED_FUNCTION_22();
  v3 = v1;
  v4 = v0;
  v6 = v5;
  v110 = sub_1BC8F73D4();
  v7 = OUTLINED_FUNCTION_0(v110);
  v107 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  isUniquelyReferenced_nonNull_native = v12 - v11;
  v14 = type metadata accessor for HistoryItem();
  v15 = OUTLINED_FUNCTION_26(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v88 - v21;
  if (qword_1EBCF4760 != -1)
  {
LABEL_43:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v23 = sub_1BC8F7734();
  v24 = __swift_project_value_buffer(v23, qword_1EBD067C8);

  v93 = v24;
  v25 = sub_1BC8F7714();
  v26 = sub_1BC8F8204();
  v27 = OUTLINED_FUNCTION_36_0();
  v29 = os_log_type_enabled(v27, v28);
  v104 = v4;
  v109 = isUniquelyReferenced_nonNull_native;
  if (v29)
  {
    OUTLINED_FUNCTION_11_2();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v31 = swift_slowAlloc();
    v111 = v31;
    *v30 = 136315394;
    OUTLINED_FUNCTION_31_0();
    *(v30 + 4) = sub_1BC7A9A4C(0xD000000000000018, v32, &v111);
    *(v30 + 12) = 2048;
    *(v30 + 14) = *(v6 + 16);

    _os_log_impl(&dword_1BC7A3000, v25, v26, "%s: Creating map for %ld items", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v4 = v104;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
  }

  sub_1BC8A4B9C();
  if (v3)
  {
LABEL_40:
    OUTLINED_FUNCTION_23();
  }

  else
  {
    v33 = v17;
    v88[1] = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6520, &unk_1BC9076A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55E0, &qword_1BC900680);
    sub_1BC8B3E0C();
    v35 = sub_1BC8F7AD4();
    v99 = *(v6 + 16);
    if (!v99)
    {
      v36 = 0;
      goto LABEL_37;
    }

    v88[0] = v34;
    v36 = 0;
    v108 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_handleToPerson;
    v37 = *(v33 + 80);
    OUTLINED_FUNCTION_25_1();
    v95 = v39;
    v96 = v22;
    v97 = v2;
    v98 = v6 + v39;
    v40 = *(v33 + 72);
    v105 = (v107 + 8);
    v106 = v107 + 16;
    v94 = v40;
    while (1)
    {
      v101 = v36;
      v102 = v35;
      v100 = v38 + 1;
      OUTLINED_FUNCTION_6_18();
      sub_1BC8B3E70(v41, v22, v42);
      HistoryItem.handles.getter();
      v2 = v43;
      v6 = v43 + 56;
      v44 = *(v43 + 56);
      v45 = *(v43 + 32);
      OUTLINED_FUNCTION_108_1();
      v3 = v47 & v46;

      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v17 = 0;
      v22 = ((v40 + 63) >> 6);
      v103 = MEMORY[0x1E69E7CC0];
LABEL_9:
      isUniquelyReferenced_nonNull_native = v109;
      if (v3)
      {
        goto LABEL_14;
      }

      while (1)
      {
LABEL_10:
        v48 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v48 >= v22)
        {
          break;
        }

        v3 = *(v6 + 8 * v48);
        ++v17;
        if (v3)
        {
          v17 = v48;
          while (1)
          {
LABEL_14:
            (*(v107 + 16))(isUniquelyReferenced_nonNull_native, *(v2 + 48) + *(v107 + 72) * (__clz(__rbit64(v3)) | (v17 << 6)), v110);
            sub_1BC8F73A4();
            if (!v49)
            {
              sub_1BC8F73C4();
            }

            v50 = sub_1BC8F7C84();
            v52 = v51;

            v3 &= v3 - 1;
            v53 = *(v4 + v108);
            if (*(v53 + 16))
            {
              v54 = *(v4 + v108);

              v55 = sub_1BC803CBC(v50, v52);
              v57 = v56;

              if (v57)
              {
                v58 = (*(v53 + 56) + 32 * v55);
                v59 = v58[1];
                v92 = *v58;
                v61 = v58[2];
                v60 = v58[3];
                v62 = *v105;
                v91 = v59;

                v90 = v61;

                v89 = v60;

                v62(v109, v110);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v69 = *(v103 + 16);
                  OUTLINED_FUNCTION_128_1();
                  sub_1BC7F7334();
                  v103 = v70;
                }

                v4 = v104;
                v64 = *(v103 + 16);
                v63 = *(v103 + 24);
                if (v64 >= v63 >> 1)
                {
                  OUTLINED_FUNCTION_37(v63);
                  sub_1BC7F7334();
                  v103 = v71;
                }

                v65 = v103;
                *(v103 + 16) = v64 + 1;
                v66 = (v65 + 32 * v64);
                v67 = v91;
                v66[4] = v92;
                v66[5] = v67;
                v68 = v89;
                v66[6] = v90;
                v66[7] = v68;
                goto LABEL_9;
              }

              v4 = v104;
            }

            else
            {
            }

            isUniquelyReferenced_nonNull_native = v109;
            (*v105)(v109, v110);
            if (!v3)
            {
              goto LABEL_10;
            }
          }
        }
      }

      v6 = sub_1BC899E9C(v103);
      OUTLINED_FUNCTION_6_18();
      v22 = v96;
      v2 = v97;
      sub_1BC8B3E70(v96, v97, v72);
      sub_1BC7BE108(v101);
      v73 = v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BC83CB14(v6);
      OUTLINED_FUNCTION_52_5();
      v3 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
        goto LABEL_42;
      }

      v78 = v74;
      v79 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6538, &unk_1BC9076B0);
      v35 = v73;
      if ((sub_1BC8F8734() & 1) == 0)
      {
        goto LABEL_31;
      }

      v80 = sub_1BC83CB14(v6);
      if ((v79 & 1) != (v81 & 1))
      {
        break;
      }

      v78 = v80;
LABEL_31:
      if (v79)
      {
      }

      else
      {
        sub_1BC83E8D0(v78, v6, MEMORY[0x1E69E7CC0], v73);
      }

      v82 = *(v73 + 56) + 8 * v78;
      sub_1BC7AA12C(sub_1BC7F726C);
      v83 = *(*v82 + 16);
      sub_1BC7AA600(v83, sub_1BC7F726C);
      OUTLINED_FUNCTION_10_21();
      sub_1BC7C0224();
      v84 = *v82;
      *(v84 + 16) = v83 + 1;
      v40 = v94;
      sub_1BC7FBC68(v2, v84 + v95 + v83 * v94);
      v36 = sub_1BC8A56EC;
      v38 = v100;
      v4 = v104;
      if (v100 == v99)
      {
LABEL_37:
        v85 = sub_1BC8F7714();
        v86 = sub_1BC8F8204();
        if (os_log_type_enabled(v85, v86))
        {
          OUTLINED_FUNCTION_9();
          v87 = swift_slowAlloc();
          OUTLINED_FUNCTION_121_1(v87, 3.852e-34);
          _os_log_impl(&dword_1BC7A3000, v85, v86, "Created map with %ld key/value pairs", v87, 0xCu);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        sub_1BC7BE108(v36);
        goto LABEL_40;
      }
    }

    sub_1BC8F8B44();
    __break(1u);
  }
}

void sub_1BC8A56FC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v54 = *MEMORY[0x1E69E9840];
  if (!sub_1BC7C0454(v0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56B0, &unk_1BC9083A0);
    v39 = sub_1BC8F73D4();
    OUTLINED_FUNCTION_0(v39);
    v41 = v40;
    v43 = *(v42 + 72);
    v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1BC8FC230;
    (*(v41 + 16))(v45 + v44, v3, v39);
    sub_1BC8C1870();
    v46 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_24();

    Person.init(contacts:handles:)(v47, v48, v49);
    return;
  }

  v6 = v1 & 0xC000000000000001;
  sub_1BC8E2358(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_28:
    v7 = MEMORY[0x1BFB29A00](0, v1);
  }

  else
  {
    v7 = *(v1 + 32);
  }

  v8 = v7;
  v9 = sub_1BC7C0454(v1);
  v10 = MEMORY[0x1E69E7CC0];
  v51[1] = v1;
  v52 = v5;
  if (v9)
  {
    v11 = v9;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDD64(0, v9 & ~(v9 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
    }

    v12 = 0;
    v10 = v53;
    do
    {
      if (v6)
      {
        v13 = MEMORY[0x1BFB29A00](v12, v1);
      }

      else
      {
        v13 = *(v1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = sub_1BC8A5B44();

      v53 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        v18 = OUTLINED_FUNCTION_37(v16);
        sub_1BC7DDD64(v18, v17 + 1, 1);
        v10 = v53;
      }

      ++v12;
      *(v10 + 16) = v17 + 1;
      *(v10 + 8 * v17 + 32) = v15;
    }

    while (v11 != v12);
  }

  v51[0] = v8;
  v5 = sub_1BC8A5B44();
  v19 = 0;
  v6 = *(v10 + 16);
  v1 = 1;
  while (1)
  {
    if (v6 == v19)
    {

      Person.init(contacts:handles:)(v37, v5, v52);

      v38 = *MEMORY[0x1E69E9840];
      OUTLINED_FUNCTION_24();
      return;
    }

    if (v19 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v20 = *(v10 + 8 * v19 + 32);
    v21 = *(v5 + 32);
    v22 = v21 & 0x3F;
    v23 = ((1 << v21) + 63) >> 6;
    swift_bridgeObjectRetain_n();

    if (v22 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    swift_slowAlloc();

    OUTLINED_FUNCTION_175();
    v36 = sub_1BC8B1550(v32, v33, v34, v35);
    v30 = v23;
    if (v23)
    {
      goto LABEL_31;
    }

    v31 = v36;

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
LABEL_19:
    v5 = v31;

    ++v19;
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_1BC8D83A8(0, v23, v51 - ((8 * v23 + 15) & 0x3FFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_175();
  sub_1BC8D9EA4(v25, v26, v27, v28);
  v30 = v23;
  if (!v23)
  {
    v31 = v29;

    goto LABEL_19;
  }

  swift_willThrow();

  __break(1u);
LABEL_31:

  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1BFB2AA50]();
  __break(1u);
}

uint64_t sub_1BC8A5B44()
{
  v6 = MEMORY[0x1E69E7CD0];
  v1 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6500, &qword_1BC907690);
  v2 = sub_1BC8F7E54();

  sub_1BC89A734(v2);

  v3 = [v0 emailAddressStrings];
  v4 = sub_1BC8F7E54();

  sub_1BC89A514(v4);

  return v6;
}

void sub_1BC8A5C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_22();
  v164 = v11;
  v14 = v10;
  OUTLINED_FUNCTION_172_0();
  v15 = sub_1BC8F73D4();
  v16 = OUTLINED_FUNCTION_0(v15);
  v144 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_0();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_4();
  v147 = v25;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v26);
  v143 = v138 - v27;
  v28 = v10[27];
  v29 = v10[28];
  __swift_project_boxed_opaque_existential_1(v10 + 24, v28);
  v30 = v164;
  v31 = (*(v29 + 24))(v13, v10[29], v28, v29);
  if (v30)
  {
    goto LABEL_50;
  }

  v140 = v31;
  v138[1] = 0;
  v150 = v12;
  v32 = v13;
  v34 = v13 + 56;
  v33 = *(v13 + 56);
  v35 = *(v13 + 32);
  OUTLINED_FUNCTION_108_1();
  v146 = v37 & v36;
  v38 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_handleToPerson;

  v164 = v38;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v39 = 0;
  v40 = (v13 + 63) >> 6;
  v41 = v144;
  v155 = v144 + 4;
  v156 = v144 + 2;
  v154 = (v144 + 1);
  v158 = v14;
  v159 = v22;
  v42 = v143;
  v142 = v34;
  v141 = v40;
  v139 = v32;
  v148 = v15;
  while (1)
  {
    v43 = v146;
    if (!v146)
    {
      while (1)
      {
        v44 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_52;
        }

        if (v44 >= v40)
        {
          break;
        }

        v43 = *(v34 + 8 * v44);
        ++v39;
        if (v43)
        {
          goto LABEL_8;
        }
      }

LABEL_50:
      OUTLINED_FUNCTION_23();
      return;
    }

    v44 = v39;
LABEL_8:
    v45 = v43;
    v145 = v44;
    v46 = v41[9];
    v47 = *(v32 + 48) + v46 * (__clz(__rbit64(v43)) | (v44 << 6));
    v152 = v41[2];
    v153 = v46;
    v152(v42, v47, v15);
    v151 = v41[4];
    v151(v147, v42, v15);
    sub_1BC8F73A4();
    if (!v48)
    {
      sub_1BC8F73C4();
    }

    v49 = sub_1BC8F7C84();
    v51 = v50;

    v146 = (v45 - 1) & v45;
    if (!*(*(v14 + v164) + 16))
    {
      break;
    }

    v52 = *(v14 + v164);

    sub_1BC803CBC(v49, v51);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      goto LABEL_14;
    }

    v55 = *v154;
    v56 = OUTLINED_FUNCTION_48_1();
    v57(v56);
    v39 = v145;
LABEL_48:
    v41 = v144;
    v42 = v143;
    v34 = v142;
    v40 = v141;
  }

LABEL_14:
  sub_1BC8F73A4();
  if (!v58)
  {
    sub_1BC8F73C4();
  }

  v59 = sub_1BC8F7C84();
  v61 = v60;

  sub_1BC8E73C0(v59, v61, v140);

  sub_1BC8A56FC();

  v62 = v166;
  v161 = v165;
  v64 = v167;
  v63 = v168;
  v65 = sub_1BC8F73A4();
  v160 = v63;
  v162 = v64;
  v163 = v62;
  if (v66)
  {
    v67 = v65;
    v68 = v66;
    OUTLINED_FUNCTION_158_0();
    if (v69)
    {
      v70 = v164;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();

      v63 = v160;

      v71 = *(v14 + v70);
      swift_isUniquelyReferenced_nonNull_native();
      v72 = OUTLINED_FUNCTION_86_1();
      sub_1BC83DFD0(v72, v73, v74, v75, v67, v68);
      *(v14 + v70) = a10;

      swift_endAccess();
    }

    else
    {

      v63 = v160;
    }
  }

  v76 = sub_1BC8F73C4();
  v78 = v77;
  v79 = v164;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v80 = *(v14 + v79);
  swift_isUniquelyReferenced_nonNull_native();
  v81 = OUTLINED_FUNCTION_86_1();
  sub_1BC83DFD0(v81, v82, v83, v84, v76, v78);
  *(v14 + v79) = a10;

  swift_endAccess();
  v86 = v63 + 7;
  v85 = v63[7];
  v87 = *(v63 + 32);
  OUTLINED_FUNCTION_40_10();
  OUTLINED_FUNCTION_171_0();
  v157 = v88 >> 6;

  v89 = 0;
  v90 = v150;
  v91 = v159;
  v149 = v63 + 7;
  while (2)
  {
    if (v79)
    {
LABEL_26:
      v152(v90, v63[6] + (__clz(__rbit64(v79)) | (v89 << 6)) * v153, v15);
      v151(v91, v90, v15);
      v93 = sub_1BC8F73A4();
      if (!v94)
      {
        goto LABEL_38;
      }

      v95 = v93;
      v96 = v94;
      OUTLINED_FUNCTION_158_0();
      if (!v97)
      {

        goto LABEL_38;
      }

      v98 = v164;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      v99 = *(v14 + v98);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_133_1();
      v100 = OUTLINED_FUNCTION_48_1();
      sub_1BC803CBC(v100, v101);
      OUTLINED_FUNCTION_52_5();
      if (__OFADD__(v104, v105))
      {
        goto LABEL_55;
      }

      v106 = v102;
      v14 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF65A0, &qword_1BC9077C0);
      if (OUTLINED_FUNCTION_193_0())
      {
        v107 = OUTLINED_FUNCTION_48_1();
        v109 = sub_1BC803CBC(v107, v108);
        if ((v14 & 1) != (v110 & 1))
        {
          goto LABEL_57;
        }

        v106 = v109;
        if ((v14 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if ((v14 & 1) == 0)
      {
LABEL_32:
        OUTLINED_FUNCTION_37_10(&a10[v106 >> 6]);
        v111 = (a10[6] + 16 * v106);
        *v111 = v95;
        v111[1] = v96;
        v112 = v162;
        OUTLINED_FUNCTION_184_0((a10[7] + 32 * v106));
        v113 = v160;
        *(v114 + 16) = v112;
        *(v114 + 24) = v113;
        OUTLINED_FUNCTION_160_0();
        if (v116)
        {
          goto LABEL_56;
        }

        a10[2] = v115;

        goto LABEL_37;
      }

      OUTLINED_FUNCTION_137_0();
      v117 = v162;
      OUTLINED_FUNCTION_184_0(v118);
      v14 = v160;
      *(v119 + 16) = v117;
      *(v119 + 24) = v14;

LABEL_37:
      OUTLINED_FUNCTION_195_0();
LABEL_38:
      v120 = sub_1BC8F73C4();
      v122 = v121;
      v123 = v164;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      v124 = *(v14 + v123);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_133_1();
      sub_1BC803CBC(v120, v122);
      OUTLINED_FUNCTION_52_5();
      if (__OFADD__(v127, v128))
      {
        goto LABEL_53;
      }

      v129 = v125;
      v14 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF65A0, &qword_1BC9077C0);
      if (OUTLINED_FUNCTION_193_0())
      {
        v130 = sub_1BC803CBC(v120, v122);
        v91 = v159;
        if ((v14 & 1) != (v131 & 1))
        {
          goto LABEL_57;
        }

        v129 = v130;
        if ((v14 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v91 = v159;
        if ((v14 & 1) == 0)
        {
LABEL_42:
          OUTLINED_FUNCTION_37_10(&a10[v129 >> 6]);
          v132 = (a10[6] + 16 * v129);
          *v132 = v120;
          v132[1] = v122;
          v133 = v162;
          OUTLINED_FUNCTION_184_0((a10[7] + 32 * v129));
          v63 = v160;
          *(v134 + 16) = v133;
          *(v134 + 24) = v63;
          OUTLINED_FUNCTION_160_0();
          if (v116)
          {
            goto LABEL_54;
          }

          a10[2] = v135;

          goto LABEL_46;
        }
      }

      OUTLINED_FUNCTION_137_0();
      v14 = v162;
      OUTLINED_FUNCTION_184_0(v136);
      v63 = v160;
      *(v137 + 16) = v14;
      *(v137 + 24) = v63;

LABEL_46:
      v79 &= v79 - 1;
      OUTLINED_FUNCTION_195_0();
      v15 = v148;
      (*v154)(v91, v148);
      v90 = v150;
      v86 = v149;
      continue;
    }

    break;
  }

  while (1)
  {
    v92 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      break;
    }

    if (v92 >= v157)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      (*v154)(v147, v15);

      v39 = v145;
      v32 = v139;
      goto LABEL_48;
    }

    v79 = v86[v92];
    ++v89;
    if (v79)
    {
      v89 = v92;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_1BC8F8B44();
  __break(1u);
}

uint64_t sub_1BC8A65A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC8A6644();
}

uint64_t sub_1BC8A6644()
{
  OUTLINED_FUNCTION_5();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  v1[15] = v3;
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  v1[16] = OUTLINED_FUNCTION_47_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  v1[17] = v6;
  OUTLINED_FUNCTION_26(v6);
  v1[18] = v7;
  v9 = *(v8 + 64);
  v1[19] = OUTLINED_FUNCTION_47_3();
  v10 = type metadata accessor for HistoryItem();
  v1[20] = v10;
  OUTLINED_FUNCTION_26(v10);
  v1[21] = v11;
  v13 = *(v12 + 64);
  v1[22] = OUTLINED_FUNCTION_47_3();
  v14 = sub_1BC8F7264();
  v1[23] = v14;
  OUTLINED_FUNCTION_26(v14);
  v1[24] = v15;
  v17 = *(v16 + 64);
  v1[25] = OUTLINED_FUNCTION_47_3();
  v18 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

void sub_1BC8A67BC()
{
  v121 = v1;
  if (qword_1EBCF4760 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v3 = *(v1 + 104);
    v4 = sub_1BC8F7734();
    v5 = __swift_project_value_buffer(v4, qword_1EBD067C8);

    v6 = sub_1BC8F7714();
    v7 = sub_1BC8F8204();

    v114 = v5;
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v1 + 104);
      OUTLINED_FUNCTION_11_2();
      swift_slowAlloc();
      v9 = OUTLINED_FUNCTION_153_0();
      v120[0] = v9;
      *v0 = 136446466;
      OUTLINED_FUNCTION_31_0();
      v11 = sub_1BC7A9A4C(0xD000000000000017, v10, v120);
      OUTLINED_FUNCTION_119_1(v11);
      v12 = sub_1BC7C0454(v8);
      v13 = MEMORY[0x1E69E7CC0];
      if (v12)
      {
        v14 = v12;
        v118 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_75_3();
        sub_1BC7DDB5C();
        if (v14 < 0)
        {
          goto LABEL_46;
        }

        v110 = v9;
        HIDWORD(v111) = v7;
        v112 = v0;
        v113 = v6;
        v15 = 0;
        v16 = *(v1 + 192);
        v17 = *(v1 + 104);
        OUTLINED_FUNCTION_179_0();
        v116 = v16 + 32;
        v117 = v18;
        do
        {
          if (v117)
          {
            v19 = MEMORY[0x1BFB29A00](v15, *(v1 + 104));
          }

          else
          {
            v19 = *(v115 + 8 * v15);
          }

          v20 = v19;
          v21 = *(v1 + 200);
          v22 = *(v1 + 184);
          v23 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
          OUTLINED_FUNCTION_13();
          swift_beginAccess();
          (*(v16 + 16))(v21, &v20[v23], v22);

          OUTLINED_FUNCTION_180_0();
          if (v24)
          {
            sub_1BC7DDB5C();
            v13 = v118;
          }

          v25 = *(v1 + 200);
          v26 = *(v1 + 184);
          ++v15;
          *(v13 + 16) = v20;
          v27 = *(v16 + 80);
          OUTLINED_FUNCTION_25_1();
          (*(v16 + 32))(v13 + v28 + *(v16 + 72) * v21);
        }

        while (v14 != v15);
        v6 = v113;
        v0 = v112;
        LOBYTE(v7) = BYTE4(v111);
      }

      MEMORY[0x1BFB29280](v13, *(v1 + 184));
      v2 = v29;

      v30 = OUTLINED_FUNCTION_48_1();
      v33 = sub_1BC7A9A4C(v30, v31, v32);

      *(v0 + 14) = v33;
      _os_log_impl(&dword_1BC7A3000, v6, v7, "%{public}s: %s", v0, 0x16u);
      OUTLINED_FUNCTION_82_4();
      v34 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v34);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v35 = *(v1 + 104);
    v36 = *(v1 + 112) + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageRequest;
    v118 = *(v36 + *(type metadata accessor for MessageStoreFetchRequest() + 20));
    sub_1BC7A5AB4(v118);
    sub_1BC7E70B4(v35, v37, v38, v39, v40, v41, v42, v43, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120[0], v120[1], v120[2], v120[3], v120[4]);
    v0 = v44;
    sub_1BC7B0EFC(v118);
    if (!sub_1BC7C0454(v0))
    {

      v58 = sub_1BC8F7714();
      sub_1BC8F8204();
      v59 = OUTLINED_FUNCTION_36_0();
      if (os_log_type_enabled(v59, v60))
      {
        OUTLINED_FUNCTION_45();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_4();
        _os_log_impl(v61, v62, v63, v64, v65, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      goto LABEL_39;
    }

    v45 = sub_1BC7C0454(v0);
    if (!v45)
    {
      break;
    }

    v46 = v45;
    v118 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_75_3();
    sub_1BC7DDA7C();
    if (v46 < 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return;
    }

    v47 = 0;
    v48 = *(v1 + 168);
    v49 = v118;
    v2 = v0 & 0xC000000000000001;
    while (1)
    {
      if (v2)
      {
        v50 = MEMORY[0x1BFB29A00](v47, v0);
        goto LABEL_23;
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v47 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v50 = *(v0 + 8 * v47 + 32);
LABEL_23:
      v51 = *(v1 + 160);
      **(v1 + 176) = v50;
      swift_storeEnumTagMultiPayload();
      v118 = v49;
      v53 = *(v49 + 16);
      v52 = *(v49 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_37(v52);
        sub_1BC7DDA7C();
        v49 = v118;
      }

      v54 = *(v1 + 176);
      ++v47;
      *(v49 + 16) = v53 + 1;
      v55 = *(v48 + 80);
      OUTLINED_FUNCTION_25_1();
      sub_1BC7FBC68(v57, v49 + v56 + *(v48 + 72) * v53);
      if (v46 == v47)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v49 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v66 = *(v1 + 112);
  v67 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
  v68 = *(v66 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets);

  v69 = sub_1BC8A30E8(v49, v68);

  OUTLINED_FUNCTION_125();
  sub_1BC8A38C0();
  v71 = v70;

  if (*(v71 + 16))
  {
    v72 = *(v1 + 112);
    v73 = *(v66 + v67);
    *(v66 + v67) = v69;

    OUTLINED_FUNCTION_70_4(OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion);
    v74 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();

    OUTLINED_FUNCTION_60_7();
    sub_1BC7AA12C(v75);
    v76 = *(*(v72 + v74) + 16);
    v77 = OUTLINED_FUNCTION_143();
    sub_1BC7AA600(v77, v78);
    OUTLINED_FUNCTION_109_1();
    swift_endAccess();
    if (v76 >= 0x64)
    {
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      v79 = OUTLINED_FUNCTION_103_0();
      sub_1BC8ABD58(v79);
      swift_endAccess();
    }

    v80 = sub_1BC8F7714();
    sub_1BC8F8204();
    OUTLINED_FUNCTION_199_0();
    if (os_log_type_enabled(v80, v76))
    {
      OUTLINED_FUNCTION_9();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_11();
      v81 = swift_slowAlloc();
      v119 = v71;
      v120[0] = v81;
      *v72 = 136315138;
      v118 = v2;

      VersionedChange.description.getter();
      OUTLINED_FUNCTION_37_3();

      v82 = OUTLINED_FUNCTION_12_5();
      sub_1BC7A9A4C(v82, v83, v84);
      OUTLINED_FUNCTION_100();

      *(v72 + 4) = &v118;
      OUTLINED_FUNCTION_205();
      _os_log_impl(v85, v86, v87, v88, v89, v90);
      __swift_destroy_boxed_opaque_existential_1(v81);
      v91 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x1BFB2AA50](v91);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v93 = *(v1 + 144);
    v92 = *(v1 + 152);
    v94 = *(v1 + 128);
    v95 = *(v1 + 136);
    v96 = *(v1 + 120);
    OUTLINED_FUNCTION_205_0(&qword_1EBCF63B8, &qword_1BC906990, *(v1 + 112));
    v97 = *(v96 + 48);
    *(v1 + 88) = v2;
    *(v1 + 96) = v71;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
    OUTLINED_FUNCTION_150_0();
    v99 = OUTLINED_FUNCTION_57_3();
    v100(v99);
    OUTLINED_FUNCTION_30_12();
    (*(v101 + 8))(v94 + v97, v98);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
    OUTLINED_FUNCTION_42(v102);
    (*(v103 + 8))(v94);
  }

  else
  {
  }

LABEL_39:
  v104 = *(v1 + 200);
  v105 = *(v1 + 176);
  v106 = *(v1 + 152);
  v107 = *(v1 + 128);

  OUTLINED_FUNCTION_27();

  v108();
}

uint64_t sub_1BC8A705C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC8A70F8();
}

uint64_t sub_1BC8A70F8()
{
  OUTLINED_FUNCTION_5();
  v1[16] = v2;
  v1[17] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  v1[18] = v3;
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  v1[19] = OUTLINED_FUNCTION_47_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  v1[20] = v6;
  OUTLINED_FUNCTION_26(v6);
  v1[21] = v7;
  v9 = *(v8 + 64);
  v1[22] = OUTLINED_FUNCTION_47_3();
  v10 = type metadata accessor for HistoryItem();
  v1[23] = v10;
  OUTLINED_FUNCTION_26(v10);
  v1[24] = v11;
  v13 = *(v12 + 64);
  v1[25] = OUTLINED_FUNCTION_47_3();
  v14 = sub_1BC8F7264();
  v1[26] = v14;
  OUTLINED_FUNCTION_26(v14);
  v1[27] = v15;
  v17 = *(v16 + 64);
  v1[28] = OUTLINED_FUNCTION_200_0();
  v1[29] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

void sub_1BC8A727C()
{
  v141 = v2;
  if (qword_1EBCF4760 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v3 = *(v2 + 128);
    v4 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v4, qword_1EBD067C8);

    v134 = v0;
    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F8204();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v2 + 128);
      OUTLINED_FUNCTION_11_2();
      swift_slowAlloc();
      v8 = OUTLINED_FUNCTION_153_0();
      v140[0] = v8;
      *v1 = 136446466;
      OUTLINED_FUNCTION_31_0();
      v10 = sub_1BC7A9A4C(0xD000000000000019, v9, v140);
      OUTLINED_FUNCTION_119_1(v10);
      v11 = sub_1BC7C0454(v7);
      v12 = MEMORY[0x1E69E7CC0];
      if (v11)
      {
        v13 = v11;
        v138 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_75_3();
        sub_1BC7DDB5C();
        if (v13 < 0)
        {
          goto LABEL_55;
        }

        v130 = v8;
        HIDWORD(v131) = v6;
        v132 = v1;
        v133 = v5;
        v14 = 0;
        v15 = *(v2 + 216);
        v16 = *(v2 + 128);
        OUTLINED_FUNCTION_179_0();
        v136 = v15 + 32;
        v137 = v17;
        do
        {
          if (v137)
          {
            v18 = MEMORY[0x1BFB29A00](v14, *(v2 + 128));
          }

          else
          {
            v18 = *(v135 + 8 * v14);
          }

          v19 = v18;
          v20 = *(v2 + 232);
          v21 = *(v2 + 208);
          v22 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
          OUTLINED_FUNCTION_13();
          swift_beginAccess();
          (*(v15 + 16))(v20, &v19[v22], v21);

          OUTLINED_FUNCTION_180_0();
          if (v23)
          {
            sub_1BC7DDB5C();
            v12 = v138;
          }

          v24 = *(v2 + 232);
          v25 = *(v2 + 208);
          ++v14;
          *(v12 + 16) = v19;
          v26 = *(v15 + 80);
          OUTLINED_FUNCTION_25_1();
          (*(v15 + 32))(v12 + v27 + *(v15 + 72) * v20);
        }

        while (v13 != v14);
        v1 = v132;
        v5 = v133;
      }

      MEMORY[0x1BFB29280](v12, *(v2 + 208));

      v28 = OUTLINED_FUNCTION_48_1();
      v31 = sub_1BC7A9A4C(v28, v29, v30);

      *(v1 + 14) = v31;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "%{public}s: %s", v1, 0x16u);
      OUTLINED_FUNCTION_82_4();
      v32 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v32);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v33 = *(v2 + 128);
    v34 = *(v2 + 136) + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageRequest;
    v138 = *(v34 + *(type metadata accessor for MessageStoreFetchRequest() + 20));
    sub_1BC7A5AB4(v138);
    sub_1BC7E70B4(v33, v35, v36, v37, v38, v39, v40, v41, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140[0], v140[1], v140[2], v140[3], v140[4]);
    v43 = v42;
    sub_1BC7B0EFC(v138);
    if (!sub_1BC7C0454(v43))
    {
      break;
    }

    v136 = v43;
    v44 = sub_1BC7C0454(v43);
    v45 = MEMORY[0x1E69E7CC0];
    v137 = v44;
    if (v44)
    {
      v138 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_14_3();
      sub_1BC7DDB5C();
      if (v44 < 0)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return;
      }

      v46 = 0;
      v47 = *(v2 + 216);
      v48 = v138;
      do
      {
        if ((v136 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x1BFB29A00](v46, v136);
        }

        else
        {
          v49 = *(v136 + 8 * v46 + 32);
        }

        v50 = v49;
        v51 = *(v2 + 224);
        v52 = *(v2 + 208);
        v53 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        (*(v47 + 16))(v51, &v50[v53], v52);

        v138 = v48;
        v55 = *(v48 + 16);
        v54 = *(v48 + 24);
        if (v55 >= v54 >> 1)
        {
          OUTLINED_FUNCTION_37(v54);
          sub_1BC7DDB5C();
          v48 = v138;
        }

        v56 = *(v2 + 224);
        v57 = *(v2 + 208);
        ++v46;
        *(v48 + 16) = v55 + 1;
        v58 = *(v47 + 80);
        OUTLINED_FUNCTION_25_1();
        (*(v47 + 32))(v48 + v59 + *(v47 + 72) * v55);
        v44 = v137;
      }

      while (v137 != v46);
      v45 = MEMORY[0x1E69E7CC0];
    }

    v68 = *(v2 + 136);
    sub_1BC899C68();
    v70 = v69;
    v135 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
    v71 = *(v68 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets);
    OUTLINED_FUNCTION_21_4();
    *(swift_allocObject() + 16) = v70;

    sub_1BC8A2DEC(v72, sub_1BC8B45E8);

    if (!v44)
    {
LABEL_38:

      v84 = *(v2 + 136);
      v85 = OUTLINED_FUNCTION_125();
      v87 = sub_1BC8A30E8(v85, v86);

      v88 = *(v68 + v135);

      sub_1BC8A38C0();
      v90 = v89;

      if (*(v90 + 16))
      {
        v91 = *(v2 + 136);
        v92 = *(v68 + v135);
        *(v68 + v135) = v87;

        OUTLINED_FUNCTION_70_4(OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion);
        v93 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
        OUTLINED_FUNCTION_37_5();
        swift_beginAccess();

        OUTLINED_FUNCTION_60_7();
        sub_1BC7AA12C(v94);
        v95 = *(*(v91 + v93) + 16);
        v96 = OUTLINED_FUNCTION_143();
        sub_1BC7AA600(v96, v97);
        OUTLINED_FUNCTION_109_1();
        swift_endAccess();
        if (v95 >= 0x64)
        {
          OUTLINED_FUNCTION_37_5();
          swift_beginAccess();
          v98 = OUTLINED_FUNCTION_103_0();
          sub_1BC8ABD58(v98);
          swift_endAccess();
        }

        v99 = sub_1BC8F7714();
        sub_1BC8F8204();
        OUTLINED_FUNCTION_199_0();
        if (os_log_type_enabled(v99, v95))
        {
          OUTLINED_FUNCTION_9();
          swift_slowAlloc();
          OUTLINED_FUNCTION_23_11();
          v100 = swift_slowAlloc();
          v139 = v90;
          v140[0] = v100;
          *v91 = 136315138;
          v138 = v45;

          VersionedChange.description.getter();
          OUTLINED_FUNCTION_37_3();

          v101 = OUTLINED_FUNCTION_12_5();
          sub_1BC7A9A4C(v101, v102, v103);
          OUTLINED_FUNCTION_100();

          *(v91 + 4) = &v138;
          OUTLINED_FUNCTION_205();
          _os_log_impl(v104, v105, v106, v107, v108, v109);
          __swift_destroy_boxed_opaque_existential_1(v100);
          v110 = OUTLINED_FUNCTION_17_11();
          MEMORY[0x1BFB2AA50](v110);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        v112 = *(v2 + 168);
        v111 = *(v2 + 176);
        v113 = *(v2 + 152);
        v114 = *(v2 + 160);
        v115 = *(v2 + 144);
        OUTLINED_FUNCTION_205_0(&qword_1EBCF63B8, &qword_1BC906990, *(v2 + 136));
        v116 = *(v115 + 48);
        *(v2 + 112) = v45;
        *(v2 + 120) = v90;
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
        OUTLINED_FUNCTION_150_0();
        v118 = OUTLINED_FUNCTION_57_3();
        v119(v118);
        OUTLINED_FUNCTION_30_12();
        (*(v120 + 8))(v113 + v116, v117);
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
        OUTLINED_FUNCTION_42(v121);
        (*(v122 + 8))(v113);
      }

      else
      {
      }

      goto LABEL_47;
    }

    v138 = v45;
    OUTLINED_FUNCTION_14_3();
    sub_1BC7DDA7C();
    if (v44 < 0)
    {
      goto LABEL_54;
    }

    v133 = v68;
    v73 = 0;
    v74 = *(v2 + 192);
    v75 = v138;
    v0 = v136;
    v1 = v136 & 0xC000000000000001;
    while (1)
    {
      if (v1)
      {
        v76 = MEMORY[0x1BFB29A00](v73, v0);
        goto LABEL_35;
      }

      if ((v73 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v73 >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v76 = *(v0 + 8 * v73 + 32);
LABEL_35:
      v77 = *(v2 + 184);
      **(v2 + 200) = v76;
      swift_storeEnumTagMultiPayload();
      v138 = v75;
      v79 = *(v75 + 16);
      v78 = *(v75 + 24);
      v45 = v79 + 1;
      if (v79 >= v78 >> 1)
      {
        OUTLINED_FUNCTION_37(v78);
        sub_1BC7DDA7C();
        v0 = v136;
        v75 = v138;
      }

      v80 = *(v2 + 200);
      ++v73;
      *(v75 + 16) = v45;
      v81 = *(v74 + 80);
      OUTLINED_FUNCTION_25_1();
      sub_1BC7FBC68(v83, v75 + v82 + *(v74 + 72) * v79);
      if (v137 == v73)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v60 = sub_1BC8F7714();
  sub_1BC8F8204();
  v61 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v61, v62))
  {
    OUTLINED_FUNCTION_45();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v63, v64, v65, v66, v67, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

LABEL_47:
  v124 = *(v2 + 224);
  v123 = *(v2 + 232);
  v125 = *(v2 + 200);
  v126 = *(v2 + 176);
  v127 = *(v2 + 152);

  OUTLINED_FUNCTION_27();

  v128();
}

uint64_t sub_1BC8A7CBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  v6 = sub_1BC8F7E54();

  a5(v6);
}

uint64_t sub_1BC8A7D5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC8A7DF8();
}

uint64_t sub_1BC8A7DF8()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1BC8F7264();
  v1[7] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_47_3();
  v7 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8A7E9C()
{
  v1 = v0[5];
  v2 = v0[6] + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageRequest;
  v49 = *(v2 + *(type metadata accessor for MessageStoreFetchRequest() + 20));
  sub_1BC7A5AB4(v49);
  sub_1BC7E70B4(v1, v3, v4, v5, v6, v7, v8, v9, v43, v44, v45, v47, v49, v52, v53, v54, v55, v56, v57, v58, v59, v0, v60, v61);
  v11 = v10;
  sub_1BC7B0EFC(v50);
  if (!sub_1BC7C0454(v11))
  {

    if (qword_1EBCF4760 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  v12 = sub_1BC7C0454(v11);
  if (!v12)
  {

    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v13 = v12;
  v51 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDB5C();
  if (v13 < 0)
  {
    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_0_25();
    swift_once();
LABEL_13:
    v27 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v27, qword_1EBD067C8);
    v28 = sub_1BC8F7714();
    sub_1BC8F8204();
    v29 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_45();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v36 = v0[9];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_32_7();

    __asm { BRAA            X1, X16 }
  }

  v14 = 0;
  v15 = v0[8];
  v16 = v51;
  v46 = v11 & 0xC000000000000001;
  v48 = v11;
  do
  {
    if (v46)
    {
      v17 = MEMORY[0x1BFB29A00](v14, v11);
    }

    else
    {
      v17 = *(v11 + 8 * v14 + 32);
    }

    v18 = v17;
    v19 = v0[9];
    v20 = v0[7];
    v21 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    (*(v15 + 16))(v19, &v18[v21], v20);

    v22 = *(v51 + 16);
    if (v22 >= *(v51 + 24) >> 1)
    {
      sub_1BC7DDB5C();
    }

    v23 = v0[9];
    v24 = v0[7];
    ++v14;
    *(v51 + 16) = v22 + 1;
    v25 = *(v15 + 80);
    OUTLINED_FUNCTION_25_1();
    (*(v15 + 32))(v51 + v26 + *(v15 + 72) * v22);
    v11 = v48;
  }

  while (v13 != v14);

LABEL_19:
  v0[10] = v16;
  v39 = swift_task_alloc();
  v0[11] = v39;
  *v39 = v0;
  v39[1] = sub_1BC8A81C0;
  v40 = v0[6];
  OUTLINED_FUNCTION_32_7();

  return sub_1BC8A84B0();
}

uint64_t sub_1BC8A81C0()
{
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  v6 = *(v1 + 72);

  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_1BC8A8334(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = a1;

  sub_1BC8333D4();
}

uint64_t sub_1BC8A8414()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC8A84B0();
}

uint64_t sub_1BC8A84B0()
{
  OUTLINED_FUNCTION_5();
  v1[10] = v2;
  v1[11] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  v1[12] = v3;
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  v1[13] = OUTLINED_FUNCTION_47_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  v1[14] = v6;
  OUTLINED_FUNCTION_26(v6);
  v1[15] = v7;
  v9 = *(v8 + 64);
  v1[16] = OUTLINED_FUNCTION_47_3();
  v10 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BC8A8590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_185_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_38();
  a20 = v22;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v26 = v22[10];
  v27 = sub_1BC8F7734();
  __swift_project_value_buffer(v27, qword_1EBD067C8);

  v28 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_199_0();
  if (os_log_type_enabled(v28, v23))
  {
    v29 = v22[10];
    OUTLINED_FUNCTION_11_2();
    swift_slowAlloc();
    a11 = OUTLINED_FUNCTION_153_0();
    *v26 = 136446466;
    OUTLINED_FUNCTION_31_0();
    v31 = sub_1BC7A9A4C(0xD00000000000001DLL, v30, &a11);
    OUTLINED_FUNCTION_119_1(v31);
    v32 = sub_1BC8F7264();
    v33 = MEMORY[0x1BFB29280](v29, v32);
    v35 = sub_1BC7A9A4C(v33, v34, &a11);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_1BC7A3000, v28, v23, "%{public}s: %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v36 = v22[10];
  v37 = v22[11];
  v38 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
  v39 = *(v37 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets);
  OUTLINED_FUNCTION_21_4();
  *(swift_allocObject() + 16) = v36;

  v41 = sub_1BC8A2DEC(v40, sub_1BC8B45E0);

  v42 = *(v37 + v38);

  sub_1BC8A38C0();
  OUTLINED_FUNCTION_157();
  if (*(v39 + 16))
  {
    v43 = v22[11];
    v44 = *(v37 + v38);
    *(v37 + v38) = v41;

    v45 = *(v43 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) + 1;
    *(v43 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) = v45;
    v46 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();

    OUTLINED_FUNCTION_9_14();
    sub_1BC7AA12C(v47);
    v48 = *(*(v43 + v46) + 16);
    v49 = OUTLINED_FUNCTION_27_0();
    sub_1BC7AA600(v49, v50);
    v51 = *(v43 + v46);
    *(v51 + 16) = v48 + 1;
    v52 = v51 + 16 * v48;
    *(v52 + 32) = v45;
    *(v52 + 40) = v39;
    *(v43 + v46) = v51;
    swift_endAccess();
    if (v48 > 0x63)
    {
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      sub_1BC8ABD58(v48 - 99);
      swift_endAccess();
    }

    v53 = sub_1BC8F7714();
    sub_1BC8F8204();
    OUTLINED_FUNCTION_199_0();
    if (os_log_type_enabled(v53, (v48 - 99)))
    {
      OUTLINED_FUNCTION_9();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_11();
      a10 = swift_slowAlloc();
      a11 = v45;
      *v48 = 136315138;
      a12 = v39;

      VersionedChange.description.getter();
      OUTLINED_FUNCTION_37_3();

      v54 = OUTLINED_FUNCTION_12_5();
      sub_1BC7A9A4C(v54, v55, v56);
      OUTLINED_FUNCTION_100();

      *(v48 + 4) = &a11;
      OUTLINED_FUNCTION_205();
      _os_log_impl(v57, v58, v59, v60, v61, v62);
      __swift_destroy_boxed_opaque_existential_1(a10);
      v63 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x1BFB2AA50](v63);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v65 = v22[15];
    v64 = v22[16];
    v66 = v22[13];
    v67 = v22[14];
    v68 = v22[12];
    OUTLINED_FUNCTION_205_0(&qword_1EBCF63B8, &qword_1BC906990, v22[11]);
    v69 = *(v68 + 48);
    v22[8] = v45;
    v22[9] = v39;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
    OUTLINED_FUNCTION_150_0();
    v71 = OUTLINED_FUNCTION_57_3();
    v72(v71);
    OUTLINED_FUNCTION_30_12();
    (*(v73 + 8))(v66 + v69, v70);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
    OUTLINED_FUNCTION_42(v74);
    (*(v75 + 8))(v66);
  }

  else
  {
  }

  v76 = v22[16];
  v77 = v22[13];

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_186_0();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BC8A8A5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0168;

  return sub_1BC8A8AEC(v1);
}

uint64_t sub_1BC8A8B04()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EBD067C8);
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v5 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v5 + 4) = sub_1BC7A9A4C(0xD00000000000001DLL, v6, v7);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v13 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_138_1(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_78_5(v15);
  OUTLINED_FUNCTION_40_4();

  return sub_1BC89E848();
}

uint64_t sub_1BC8A8C94()
{
  OUTLINED_FUNCTION_140();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33_2();
  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_41_0();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;

  sub_1BC8333D4();
}

uint64_t sub_1BC8A8D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC8A8DE0(v1);
}

uint64_t sub_1BC8A8DF8()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EBD067C8);
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v5 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v5 + 4) = sub_1BC7A9A4C(0xD00000000000001BLL, v6, v7);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v13 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_138_1(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_78_5(v15);
  OUTLINED_FUNCTION_40_4();

  return sub_1BC89E848();
}

uint64_t sub_1BC8A8F68(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1BC8A8FAC(uint64_t a1)
{
  v2 = sub_1BC8F7324();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HistoryItem();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1BC8F7264();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC8B3E70(a1, v10, type metadata accessor for HistoryItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v10;
    v17 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    swift_beginAccess();
    (*(v12 + 16))(v15, &v16[v17], v11);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1BC8F7314();
    (*(v3 + 8))(v6, v2);
  }

  sub_1BC89A360();
  v19 = v18;
  (*(v12 + 8))(v15, v11);
  return v19 & 1;
}

BOOL sub_1BC8A9220(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8F7324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoryItem();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1BC8F7264();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC8B3E70(a1, v12, type metadata accessor for HistoryItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v12;
    v19 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    swift_beginAccess();
    (*(v14 + 16))(v17, &v18[v19], v13);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1BC8F7314();
    v20 = (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x1EEE9AC00](v20);
  *(&v23 - 2) = v17;
  v21 = sub_1BC7ECB3C(sub_1BC7E8C64, (&v23 - 4), a2);
  (*(v14 + 8))(v17, v13);
  return v21;
}

uint64_t HistoryCoalescingManager.deleteAllRecentCalls()()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_1BC8F7344();
  v1[3] = v2;
  OUTLINED_FUNCTION_26(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_47_3();
  v6 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC8A9578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_71();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v12 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v12, qword_1EBD067C8);
  v13 = sub_1BC8F7714();
  sub_1BC8F8204();
  v14 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_9();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v16 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v16 + 4) = sub_1BC7A9A4C(0xD000000000000016, v17, v18);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v24 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v24);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v26 = v10[4];
  v25 = v10[5];
  v27 = v10[2];
  v28 = v10[3];
  v29 = v27[18];
  __swift_project_boxed_opaque_existential_1(v27 + 14, v27[17]);
  (*(v26 + 104))(v25, *MEMORY[0x1E69934F8], v28);
  v30 = *(MEMORY[0x1E6993510] + 4);
  v31 = swift_task_alloc();
  v32 = OUTLINED_FUNCTION_133(v31);
  *v32 = v33;
  OUTLINED_FUNCTION_8_4(v32);
  OUTLINED_FUNCTION_48_4();

  return MEMORY[0x1EEDF2730](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
}

uint64_t sub_1BC8A9720()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  v5[7] = v0;

  if (v0)
  {
    v11 = v5[2];
    (*(v5[4] + 8))(v5[5], v5[3]);
    v12 = OUTLINED_FUNCTION_16_13();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {
    (*(v5[4] + 8))(v5[5], v5[3]);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t HistoryCoalescingManager.deleteRecentCalls(uniqueIDs:)()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1BC8F7344();
  v1[4] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_47_3();
  v7 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8A992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_71();
  v45 = v10;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v12 = v10[2];
  v13 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v13, qword_1EBD067C8);

  v14 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_202_0();
  if (OUTLINED_FUNCTION_137())
  {
    v15 = v10[2];
    OUTLINED_FUNCTION_11_2();
    swift_slowAlloc();
    v44 = OUTLINED_FUNCTION_115_1();
    *v12 = 136315394;
    OUTLINED_FUNCTION_31_0();
    v17 = sub_1BC7A9A4C(0xD00000000000001DLL, v16, &v44);
    OUTLINED_FUNCTION_74_4(v17);
    v18 = sub_1BC8F7264();
    v19 = MEMORY[0x1BFB29280](v15, v18);
    sub_1BC7A9A4C(v19, v20, &v44);
    OUTLINED_FUNCTION_206_0();
    *(v12 + 14) = v11;
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_203_0(v21, v22, v23, v24);
    OUTLINED_FUNCTION_82_4();
    v25 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v25);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v26);
  }

  v28 = v10[5];
  v27 = v10[6];
  v29 = v10[3];
  v30 = v10[4];
  v31 = v10[2];
  v32 = v29[17];
  v33 = v29[18];
  __swift_project_boxed_opaque_existential_1(v29 + 14, v32);
  OUTLINED_FUNCTION_21_4();
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *v27 = v34;
  (*(v28 + 104))(v27, *MEMORY[0x1E6993508], v30);
  v35 = *(MEMORY[0x1E6993510] + 4);

  v36 = swift_task_alloc();
  v10[7] = v36;
  *v36 = v10;
  v36[1] = sub_1BC8A9B50;
  v42 = v10[6];

  return MEMORY[0x1EEDF2730](v42, v32, v33, v37, v38, v39, v40, v41, a9, a10);
}

uint64_t sub_1BC8A9B50()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  v5 = v2[7];
  v6 = *v1;
  *v4 = *v1;
  v3[8] = v0;

  v7 = v2[6];
  v8 = v2[5];
  v9 = v2[4];
  if (v0)
  {
    v10 = v3[3];
    (*(v8 + 8))(v2[6], v9);
    OUTLINED_FUNCTION_71_3();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    (*(v8 + 8))(v2[6], v9);

    v15 = v6[1];
    OUTLINED_FUNCTION_71_3();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t HistoryCoalescingManager.markRecentCallsAsRead()()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_1BC8F7344();
  v1[3] = v2;
  OUTLINED_FUNCTION_26(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_47_3();
  v6 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC8A9DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_71();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v12 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v12, qword_1EBD067C8);
  v13 = sub_1BC8F7714();
  sub_1BC8F8204();
  v14 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_9();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v16 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v16 + 4) = sub_1BC7A9A4C(0xD000000000000017, v17, v18);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v24 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v24);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v26 = v10[4];
  v25 = v10[5];
  v27 = v10[2];
  v28 = v10[3];
  v29 = v27[18];
  __swift_project_boxed_opaque_existential_1(v27 + 14, v27[17]);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *v25 = v30;
  (*(v26 + 104))(v25, *MEMORY[0x1E6993500], v28);
  v31 = *(MEMORY[0x1E6993518] + 4);
  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_133(v32);
  *v33 = v34;
  OUTLINED_FUNCTION_8_4(v33);
  OUTLINED_FUNCTION_48_4();

  return MEMORY[0x1EEDF2740](v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_1BC8A9F68()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = v5[6];
  v7 = v5[5];
  v8 = v5[4];
  v9 = v5[3];
  v10 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v11 = v10;
  v3[7] = v0;

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_81_0();
  v14(v13);
  if (v0)
  {
    v15 = v3[2];
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  else
  {
    v20 = v3[5];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

uint64_t HistoryCoalescingManager.markRecentVideoCallsAsRead()()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_1BC8F7344();
  v1[3] = v2;
  OUTLINED_FUNCTION_26(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_47_3();
  v6 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC8AA188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  v51 = v10;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v11 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v11, qword_1EBD067C8);
  v12 = sub_1BC8F7714();
  sub_1BC8F8204();
  v13 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_9();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v16 = swift_slowAlloc();
    v50 = v16;
    *v15 = 136315138;
    OUTLINED_FUNCTION_31_0();
    *(v15 + 4) = sub_1BC7A9A4C(0xD00000000000001CLL, v17, &v50);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v23 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v23);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v25 = v10[4];
  v24 = v10[5];
  v26 = v10[2];
  v27 = v10[3];
  v49 = v26[18];
  __swift_project_boxed_opaque_existential_1(v26 + 14, v26[17]);
  OUTLINED_FUNCTION_21_4();
  v28 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E0, &qword_1BC906A58);
  OUTLINED_FUNCTION_172_0();
  v29 = sub_1BC8F73E4();
  OUTLINED_FUNCTION_0(v29);
  v31 = v30;
  v33 = *(v32 + 72);
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1BC8FC230;
  (*(v31 + 104))(v35 + v34, *MEMORY[0x1E6993558], v29);
  *(v28 + 16) = v35;
  *v24 = v28;
  (*(v25 + 104))(v24, *MEMORY[0x1E69934F0], v27);
  v36 = *(MEMORY[0x1E6993518] + 4);
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_133(v37);
  *v38 = v39;
  OUTLINED_FUNCTION_8_4(v38);
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEDF2740](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1BC8AA408()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = v5[6];
  v7 = v5[5];
  v8 = v5[4];
  v9 = v5[3];
  v10 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v11 = v10;
  v3[7] = v0;

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_81_0();
  v14(v13);
  if (v0)
  {
    v15 = v3[2];
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  else
  {
    v20 = v3[5];

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HistoryCoalescingManager.refreshContacts()()
{
  OUTLINED_FUNCTION_22();
  v146 = v2;
  v147 = v3;
  v4 = v1;
  v5 = v0;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  OUTLINED_FUNCTION_4_1(v136);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v130 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  OUTLINED_FUNCTION_0(v11);
  v135 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v134 = v16;
  if (qword_1EBCF4760 != -1)
  {
LABEL_62:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v17 = sub_1BC8F7734();
  v139 = __swift_project_value_buffer(v17, qword_1EBD067C8);
  v18 = sub_1BC8F7714();
  v19 = sub_1BC8F8204();
  v20 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_45();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1BC7A3000, v18, v19, "Refreshing contacts for all existing people", v22, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v23 = *(v5 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets);
  if (!v23[2].isa)
  {
LABEL_40:
    v81 = sub_1BC8F7714();
    v82 = sub_1BC8F8204();
    v83 = OUTLINED_FUNCTION_36_0();
    if (!os_log_type_enabled(v83, v84))
    {
LABEL_45:

      goto LABEL_49;
    }

    OUTLINED_FUNCTION_45();
    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "No buckets found to refresh contacts for";
LABEL_44:
    _os_log_impl(&dword_1BC7A3000, v81, v82, v86, v85, 2u);
    v89 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v89);
    goto LABEL_45;
  }

  v132 = v10;
  v133 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
  v137 = v4;
  v138 = v5;
  v131 = v11;
  v143 = MEMORY[0x1E69E7CC0];
  v11 = &v23[8];
  isa = v23[8].isa;
  isa_low = LOBYTE(v23[4].isa);
  OUTLINED_FUNCTION_40_10();
  OUTLINED_FUNCTION_171_0();
  v5 = v26 >> 6;
  swift_bridgeObjectRetain_n();
  v27 = 0;
  v140 = v23 + 8;
  v141 = v23;
  if (!v10)
  {
    while (1)
    {
      v4 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v4 >= v5)
      {
        break;
      }

      v10 = *(v11 + 8 * v4);
      ++v27;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v44 = sub_1BC899F98(v143);
    if (*(v44 + 16))
    {
      v45 = sub_1BC8F7714();
      v46 = sub_1BC8F8204();
      v47 = OUTLINED_FUNCTION_36_0();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v137;
      if (v49)
      {
        OUTLINED_FUNCTION_9();
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        *(v51 + 4) = *(v44 + 16);
        _os_log_impl(&dword_1BC7A3000, v45, v46, "Refreshing contacts for %ld handles", v51, 0xCu);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v5 = v138;
      v52 = *(v138 + v133);
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63F0, &qword_1BC906A68);
      sub_1BC8F7AF4();
      swift_endAccess();
      sub_1BC8A5C20(v44, v53, v54, v55, v56, v57, v58, v59, v130, v131);
      v4 = v50;

      if (v50)
      {
LABEL_48:

        goto LABEL_49;
      }

      v137 = 0;
      v61 = v52 + 8;
      v60 = v52[8];
      v62 = *(v52 + 32);
      OUTLINED_FUNCTION_45_0();
      v11 = v64 & v63;
      v10 = ((v65 + 63) >> 6);

      v66 = MEMORY[0x1E69E7CC0];
      v142 = v52;
      while (v11)
      {
LABEL_29:
        v68 = v52[7] + ((v4 << 10) | (16 * __clz(__rbit64(v11))));
        v69 = *(v68 + 8);
        v70 = *(v69 + 16);
        v71 = *(v66 + 16);
        if (__OFADD__(v71, v70))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          return;
        }

        v72 = *(v68 + 8);

        if (!swift_isUniquelyReferenced_nonNull_native() || v71 + v70 > *(v66 + 24) >> 1)
        {
          sub_1BC7F726C();
          v66 = v73;
        }

        v5 = v138;
        v11 &= v11 - 1;
        if (*(v69 + 16))
        {
          v74 = (*(v66 + 24) >> 1) - *(v66 + 16);
          v75 = *(type metadata accessor for HistoryItem() - 8);
          if (v74 < v70)
          {
            goto LABEL_64;
          }

          v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
          v77 = *(v75 + 72);
          swift_arrayInitWithCopy();

          v5 = v138;
          v52 = v142;
          if (v70)
          {
            v78 = *(v66 + 16);
            v79 = __OFADD__(v78, v70);
            v80 = v78 + v70;
            if (v79)
            {
              goto LABEL_65;
            }

            *(v66 + 16) = v80;
          }
        }

        else
        {

          v52 = v142;
          if (v70)
          {
            __break(1u);
            goto LABEL_40;
          }
        }
      }

      while (1)
      {
        v67 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_61;
        }

        if (v67 >= v10)
        {

          sub_1BC8B2D98();
          v90 = sub_1BC8F7AD4();
          v91 = v137;
          sub_1BC8A30E8(v66, v90);
          v4 = v91;
          if (v91)
          {

            goto LABEL_48;
          }

          OUTLINED_FUNCTION_100();

          v40 = sub_1BC899BD8(v92);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6400, &qword_1BC906A70);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1BC8FC230;
          *(v33 + 32) = v40;
          *(v33 + 40) = 3;
          v93 = *(v5 + v133);
          *(v5 + v133) = v5;

          v31 = *(v5 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) + 1;
          *(v5 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) = v31;
          v94 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
          OUTLINED_FUNCTION_37_5();
          swift_beginAccess();

          OUTLINED_FUNCTION_9_14();
          sub_1BC7AA12C(v95);
          v96 = *(*(v5 + v94) + 16);
          sub_1BC7AA600(v96, v66);
          v97 = *(v5 + v94);
          *(v97 + 16) = v96 + 1;
          v98 = v97 + 16 * v96;
          *(v98 + 32) = v31;
          *(v98 + 40) = v33;
          *(v5 + v94) = v97;
          swift_endAccess();
          if (v96 > 0x63)
          {
            OUTLINED_FUNCTION_37_5();
            swift_beginAccess();
            sub_1BC8ABD58(v96 - 99);
            swift_endAccess();
          }

          v30 = sub_1BC8F7714();
          v99 = sub_1BC8F8204();

          if (os_log_type_enabled(v30, v99))
          {
            OUTLINED_FUNCTION_9();
            v100 = swift_slowAlloc();
            OUTLINED_FUNCTION_8_2();
            v142 = swift_slowAlloc();
            v143 = v31;
            v145 = v142;
            *v100 = 136315138;
            v144 = v33;

            v141 = v30;
            v101 = VersionedChange.description.getter();
            v102 = v40;
            v103 = v99;
            v105 = v104;

            v106 = sub_1BC7A9A4C(v101, v105, &v145);

            *(v100 + 4) = v106;
            v107 = v103;
            v40 = v102;
            v108 = v141;
            _os_log_impl(&dword_1BC7A3000, v141, v107, "Emitting event: %s", v100, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v142);
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();
            OUTLINED_FUNCTION_6_0();
            MEMORY[0x1BFB2AA50]();

            goto LABEL_56;
          }

          goto LABEL_55;
        }

        v11 = v61[v67];
        ++v4;
        if (v11)
        {
          v4 = v67;
          goto LABEL_29;
        }
      }
    }

    v81 = sub_1BC8F7714();
    v82 = sub_1BC8F8204();
    v87 = OUTLINED_FUNCTION_36_0();
    if (!os_log_type_enabled(v87, v88))
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_45();
    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "No handles found to refresh contacts for";
    goto LABEL_44;
  }

LABEL_6:
  v4 = v27;
LABEL_10:
  OUTLINED_FUNCTION_178_0();
  v29 = (v23[7].isa + ((v4 << 10) | (16 * v28)));
  v31 = *v29;
  v30 = v29[1];
  v145 = MEMORY[0x1E69E7CC0];
  v33 = v31 + 56;
  v32 = *(v31 + 56);
  v34 = *(v31 + 32);
  OUTLINED_FUNCTION_40_10();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v142 = v30;

  v40 = 0;
  if (!v37)
  {
    goto LABEL_12;
  }

  do
  {
    v41 = v40;
LABEL_16:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = *(*(v31 + 48) + ((v41 << 11) | (32 * v42)) + 24);

    v30 = &v145;
    sub_1BC7F3744();
  }

  while (v37);
LABEL_12:
  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {

      swift_bridgeObjectRelease_n();
      sub_1BC7F3614(v145);
      v27 = v4;
      v23 = v141;
      goto LABEL_6;
    }

    v37 = *(v33 + 8 * v41);
    v40 = (v40 + 1);
    if (v37)
    {
      v40 = v41;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_55:

LABEL_56:
  v109 = v132;
  v110 = v136;
  sub_1BC7D9558(v5 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v132, &qword_1EBCF63B8, &qword_1BC906990);
  v111 = v109;
  v112 = *(v110 + 48);
  v143 = v31;
  v144 = v33;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
  v114 = v134;
  sub_1BC8F8064();
  (*(v135 + 8))(v114, v131);
  OUTLINED_FUNCTION_10(v113);
  (*(v115 + 8))(v111 + v112, v113);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
  OUTLINED_FUNCTION_42(v116);
  (*(v117 + 8))(v111);

  v118 = sub_1BC8F7714();
  LOBYTE(v113) = sub_1BC8F8204();

  if (os_log_type_enabled(v118, v113))
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_23_11();
    v119 = swift_slowAlloc();
    v145 = v119;
    *v4 = 136315138;
    v143 = v40;
    LOBYTE(v144) = 3;
    HistoryChangeEvent.description.getter();
    OUTLINED_FUNCTION_37_3();

    v120 = OUTLINED_FUNCTION_12_5();
    sub_1BC7A9A4C(v120, v121, v122);
    OUTLINED_FUNCTION_100();

    *(v4 + 4) = &v143;
    OUTLINED_FUNCTION_205();
    _os_log_impl(v123, v124, v125, v126, v127, v128);
    __swift_destroy_boxed_opaque_existential_1(v119);
    v129 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v129);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
  }

LABEL_49:
  OUTLINED_FUNCTION_23();
}

uint64_t HistoryCoalescingManager.deleteMessages(uniqueIDs:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_11_4(a1, v1);
}

uint64_t sub_1BC8AB05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_142();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_71();
  a16 = v18;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v22 = v18[3];
  v23 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v23, qword_1EBD067C8);

  v24 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_202_0();
  if (OUTLINED_FUNCTION_137())
  {
    v25 = v18[3];
    OUTLINED_FUNCTION_11_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_115_1();
    OUTLINED_FUNCTION_30_5();
    *v22 = 136315394;
    OUTLINED_FUNCTION_9_3();
    v28 = sub_1BC7A9A4C(0xD00000000000001ALL, v26, v27);
    OUTLINED_FUNCTION_74_4(v28);
    v29 = sub_1BC8F7264();
    v30 = MEMORY[0x1BFB29280](v25, v29);
    sub_1BC7A9A4C(v30, v31, &a10);
    OUTLINED_FUNCTION_206_0();
    *(v22 + 14) = v19;
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_203_0(v32, v33, v34, v35);
    OUTLINED_FUNCTION_82_4();
    v36 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v36);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v37 = v18[3];
  v38 = __swift_project_boxed_opaque_existential_1((v18[4] + 152), *(v18[4] + 176));
  OUTLINED_FUNCTION_21_4();
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  v18[2] = v39 | 0x1000000000000000;
  v40 = *v38;

  v41 = swift_task_alloc();
  v18[5] = v41;
  *v41 = v18;
  v41[1] = sub_1BC8AB234;
  OUTLINED_FUNCTION_48_4();

  return MessageStoreController.deleteMessages(query:)(v42);
}

uint64_t sub_1BC8AB234()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v3[6] = v0;

  sub_1BC7B0EFC(v3[2]);
  if (v0)
  {
    v9 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1BC809228, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t HistoryCoalescingManager.markMessagesAsRead(with:)()
{
  OUTLINED_FUNCTION_5();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_47_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_47_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v9);
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_200_0();
  v1[12] = swift_task_alloc();
  v12 = sub_1BC8F7264();
  v1[13] = v12;
  OUTLINED_FUNCTION_26(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = OUTLINED_FUNCTION_200_0();
  v1[16] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1BC8AB498()
{
  v63 = v0;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EBD067C8);

  v3 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_202_0();
  if (OUTLINED_FUNCTION_137())
  {
    v4 = v0[13];
    v5 = v0[7];
    OUTLINED_FUNCTION_11_2();
    swift_slowAlloc();
    v60 = OUTLINED_FUNCTION_115_1();
    *v1 = 136315394;
    OUTLINED_FUNCTION_31_0();
    v7 = sub_1BC7A9A4C(0xD000000000000019, v6, &v60);
    OUTLINED_FUNCTION_74_4(v7);
    v8 = MEMORY[0x1BFB29280](v5, v4);
    sub_1BC7A9A4C(v8, v9, &v60);
    OUTLINED_FUNCTION_206_0();
    *(v1 + 14) = v5;
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_203_0(v10, v11, v12, v13);
    OUTLINED_FUNCTION_82_4();
    v14 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v14);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v15 = v0[7];
  sub_1BC87CA98(v0[8] + 152, (v0 + 2));
  v16 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v17 = *(v15 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v53 = v16;
    v19 = v0[14];
    v20 = v0[7];
    v59 = MEMORY[0x1E69E7CC0];
    sub_1BC8F8684();
    v21 = *(v19 + 16);
    v19 += 16;
    v22 = *(v19 + 64);
    OUTLINED_FUNCTION_25_1();
    v24 = v20 + v23;
    v55 = *(v19 + 56);
    v56 = v25;
    v54 = (v19 - 8);
    do
    {
      v26 = v0[15];
      v27 = v0[16];
      v28 = v0[12];
      v29 = v0[13];
      v30 = v17;
      v31 = v0[11];
      v57 = v0[10];
      v58 = v0[9];
      v56(v27, v24, v29);
      v56(v26, v27, v29);
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v29);
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v29);
      sub_1BC8F7014();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
      sub_1BC8F71E4();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
      v46 = type metadata accessor for MessageUpdate();
      v60 = 0;
      v61 = 0u;
      v47 = objc_allocWithZone(v46);
      v62 = 1;
      MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:dateCreated:voicemailID:summary:undelete:)(v26, v28, v31, 0, 0, 0, 1, 1, 0, 1, v52, 0, 1, 0, 0, 0, 1, 0, 2, v57, 0, 0, v58, 0, 1, &v60, 0);
      (*v54)(v27, v29);
      sub_1BC8F8654();
      v48 = *(v59 + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      v24 += v55;
      v17 = v30 - 1;
    }

    while (v30 != 1);
    v18 = v59;
    v16 = v53;
  }

  v0[17] = v18;
  v49 = *v16;
  v50 = swift_task_alloc();
  v0[18] = v50;
  *v50 = v0;
  v50[1] = sub_1BC8AB868;

  return MessageStoreController.updateMessages(_:)();
}

uint64_t sub_1BC8AB868()
{
  OUTLINED_FUNCTION_32();
  v2 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v5 = v2[18];
  v6 = v2[17];
  *v4 = *v1;
  *(v3 + 152) = v0;

  v7 = v2[8];
  if (v0)
  {
    v8 = sub_1BC8ABA2C;
  }

  else
  {
    v8 = sub_1BC8AB9A4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1BC8AB9A4()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_207_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_71_3();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1BC8ABA2C()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_207_0();

  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_71_3();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t HistoryCoalescingManager.saveToPhotoLibrary(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_11_4(a1, v1);
}

uint64_t sub_1BC8ABACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_142();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_71();
  a16 = v18;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v22 = v18[2];
  v23 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v23, qword_1EBD067C8);

  v24 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_202_0();
  if (OUTLINED_FUNCTION_137())
  {
    v25 = v18[2];
    OUTLINED_FUNCTION_11_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_115_1();
    OUTLINED_FUNCTION_30_5();
    *v22 = 136315394;
    OUTLINED_FUNCTION_9_3();
    v28 = sub_1BC7A9A4C(0xD000000000000016, v26, v27);
    OUTLINED_FUNCTION_74_4(v28);
    v29 = sub_1BC8F7264();
    v30 = MEMORY[0x1BFB29280](v25, v29);
    sub_1BC7A9A4C(v30, v31, &a10);
    OUTLINED_FUNCTION_206_0();
    *(v22 + 14) = v19;
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_203_0(v32, v33, v34, v35);
    OUTLINED_FUNCTION_82_4();
    v36 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v36);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v37 = *__swift_project_boxed_opaque_existential_1((v18[3] + 152), *(v18[3] + 176));
  v38 = swift_task_alloc();
  v18[4] = v38;
  *v38 = v18;
  v38[1] = sub_1BC8ABC78;
  v39 = v18[2];
  OUTLINED_FUNCTION_48_4();

  return MessageStoreController.saveMessagesToPhotoLibrary(messageUUIDs:)(v40);
}

uint64_t sub_1BC8ABC78()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_1BC8ABD58(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1BC830538(0, result, *(*v1 + 16), *v1);
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_1BC8B223C(0, result);
}

uint64_t sub_1BC8ABDC0()
{
  result = sub_1BC8F7BE4();
  qword_1EBD067F0 = result;
  return result;
}

uint64_t sub_1BC8ABDF8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BC7B0968;

  return v7(a1);
}

uint64_t sub_1BC8ABF08(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1BC8F7E94();
  }

  return result;
}

void sub_1BC8ABF4C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BC8DC0D0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_1BC8ABFB8(v5);
  *a1 = v2;
}

void sub_1BC8ABFB8(uint64_t *a1)
{
  v66 = sub_1BC8F7324();
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for HistoryItem();
  v69 = *(v78 - 8);
  v6 = *(v69 + 64);
  v7 = MEMORY[0x1EEE9AC00](v78);
  v64 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v68 = &v53 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v67 = sub_1BC8F71E4();
  v15 = *(v67 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v67);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v53 - v20;
  v21 = a1[1];
  v22 = sub_1BC8F8A44();
  if (v22 < v21)
  {
    if (v21 >= -1)
    {
      v23 = v22;
      if (v21 <= 1)
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v24 = sub_1BC8F7EB4();
        *(v24 + 16) = v21 / 2;
      }

      v77[0] = (v24 + 32);
      v77[1] = (v21 / 2);
      sub_1BC8AC6E0(v77, v76, a1, v23);
      *(v24 + 16) = 0;

      return;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v21 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (v21 >= 2)
  {
    v63 = v14;
    v53 = v1;
    v25 = *a1;
    v62 = (v3 + 32);
    v61 = (v3 + 8);
    v60 = (v15 + 16);
    v58 = (v15 + 8);
    v26 = -1;
    v27 = 1;
    v71 = v25;
    v28 = v70;
    v59 = v19;
    v54 = v21;
    while (2)
    {
      v56 = v27;
      v29 = *(v71 + 16 * v27);
      v57 = v26;
      v55 = v25;
      do
      {
        if (!*(*(&v29 + 1) + 16))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v75 = v29;
        v30 = *v25;
        v31 = *(v25 + 8);
        v32 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v33 = v63;
        sub_1BC8B3E70(*(&v29 + 1) + v32, v63, type metadata accessor for HistoryItem);
        sub_1BC8B3E70(v33, v28, type metadata accessor for HistoryItem);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          sub_1BC7C0224();
          v34 = *v28;
          v35 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          swift_beginAccess();
          v36 = v67;
          (*v60)(v74, &v34[v35], v67);
        }

        else
        {
          v37 = v65;
          v38 = v28;
          v39 = v66;
          (*v62)(v65, v38, v66);

          sub_1BC8F7304();
          (*v61)(v37, v39);
          sub_1BC7C0224();
          v36 = v67;
        }

        v40 = v68;
        if (!*(v31 + 16))
        {
          goto LABEL_27;
        }

        v72 = v31;
        sub_1BC8B3E70(v31 + v32, v68, type metadata accessor for HistoryItem);
        v41 = v64;
        sub_1BC8B3E70(v40, v64, type metadata accessor for HistoryItem);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v73 = v30;
        if (EnumCaseMultiPayload == 1)
        {
          sub_1BC7C0224();
          v43 = *v41;
          v44 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          swift_beginAccess();
          v45 = v59;
          (*v60)(v59, &v43[v44], v36);
        }

        else
        {
          v46 = v65;
          v47 = v66;
          (*v62)(v65, v41, v66);
          v45 = v59;
          sub_1BC8F7304();
          (*v61)(v46, v47);
          sub_1BC7C0224();
        }

        v48 = v74;
        v49 = sub_1BC8F7184();
        v50 = *v58;
        (*v58)(v45, v36);
        v50(v48, v36);

        v28 = v70;
        if ((v49 & 1) == 0)
        {
          break;
        }

        if (!v71)
        {
          goto LABEL_30;
        }

        v51 = *v25;
        v29 = *(v25 + 16);
        *v25 = v29;
        *(v25 + 16) = v51;
        v25 -= 16;
      }

      while (!__CFADD__(v26++, 1));
      v27 = v56 + 1;
      v25 = v55 + 16;
      v26 = v57 - 1;
      if (v56 + 1 != v54)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BC8AC6E0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v178 = a1;
  v202 = sub_1BC8F7324();
  v6 = *(v202 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v201 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for HistoryItem();
  v203 = *(v213 - 8);
  v9 = *(v203 + 64);
  v10 = MEMORY[0x1EEE9AC00](v213);
  v195 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v172 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v205 = &v172 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v172 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v184 = &v172 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v172 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v183 = (&v172 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v172 - v27;
  v206 = sub_1BC8F71E4();
  v29 = *(*(v206 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v206);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v209 = &v172 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v188 = &v172 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v175 = &v172 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v174 = &v172 - v41;
  v187 = a3;
  v42 = a3[1];
  if (v42 >= 1)
  {
    v179 = v40;
    v181 = v28;
    v180 = v24;
    v43 = 0;
    v204 = (v38 + 8);
    v200 = (v6 + 32);
    v199 = (v6 + 8);
    v198 = (v38 + 16);
    v44 = MEMORY[0x1E69E7CC0];
    v176 = a4;
    v193 = v14;
    v45 = v205;
    v194 = v19;
    v192 = v39;
LABEL_3:
    v46 = v43++;
    v177 = v44;
    v186 = v46;
    if (v43 < v42)
    {
      v47 = *v187;
      v48 = (*v187 + 16 * v46);
      v173 = 16 * v46;
      v210 = *(v47 + 16 * v43);
      v212 = v210;
      v208 = v210;
      v191 = v42;

      v197 = *(&v210 + 1);

      v50 = *v48;
      v49 = v48 + 3;
      v210 = v50;
      v207 = v50;

      v51 = v174;
      GroupedHistoryItem.date.getter();
      v211 = v210;
      v52 = v175;
      GroupedHistoryItem.date.getter();
      LODWORD(v185) = sub_1BC8F7184();
      v53 = *v204;
      v6 = v206;
      (*v204)(v52, v206);
      v54 = v51;
      v46 = v186;
      v182 = v53;
      v53(v54, v6);

      v55 = v191;
      v56 = v46 + 2;
      while (1)
      {
        v57 = v56;
        if (v43 + 1 >= v55)
        {
          break;
        }

        v58 = v49[2];
        if (!*(v58 + 16))
        {
          goto LABEL_123;
        }

        v59 = v49[1];
        v60 = *(v49 - 1);
        *&v210 = *v49;
        v197 = (*(v203 + 80) + 32) & ~*(v203 + 80);
        v61 = v181;
        sub_1BC8B3E70(v58 + v197, v181, type metadata accessor for HistoryItem);
        v62 = v183;
        sub_1BC8B3E70(v61, v183, type metadata accessor for HistoryItem);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v190 = v43;
        v208 = v60;
        v207 = v59;
        if (EnumCaseMultiPayload == 1)
        {

          v64 = v210;

          sub_1BC7C0224();
          v6 = *v62;
          v65 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          swift_beginAccess();
          (*v198)(v188, v6 + v65, v206);
        }

        else
        {
          v6 = v201;
          v66 = v62;
          v67 = v202;
          (*v200)(v201, v66, v202);

          v64 = v210;

          sub_1BC8F7304();
          (*v199)(v6, v67);
          sub_1BC7C0224();
        }

        v45 = v184;
        if (!*(v64 + 16))
        {
          goto LABEL_124;
        }

        v68 = v180;
        sub_1BC8B3E70(v64 + v197, v180, type metadata accessor for HistoryItem);
        sub_1BC8B3E70(v68, v45, type metadata accessor for HistoryItem);
        v69 = swift_getEnumCaseMultiPayload();
        v196 = v57;
        if (v69 == 1)
        {
          sub_1BC7C0224();
          v70 = *v45;
          v71 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          swift_beginAccess();
          v72 = &v70[v71];
          v73 = v179;
          v74 = v206;
          (*v198)(v179, v72, v206);

          v45 = v205;
        }

        else
        {
          v75 = v201;
          v76 = v45;
          v77 = v202;
          (*v200)(v201, v76, v202);
          v73 = v179;
          sub_1BC8F7304();
          (*v199)(v75, v77);
          sub_1BC7C0224();
          v45 = v205;
          v74 = v206;
        }

        v78 = v188;
        v6 = sub_1BC8F7184() & 1;
        v79 = v182;
        v182(v73, v74);
        v79(v78, v74);

        v49 += 2;
        v43 = v190 + 1;
        v57 = v196;
        v56 = v196 + 1;
        v46 = v186;
        v55 = v191;
        if ((v185 & 1) != v6)
        {
          goto LABEL_17;
        }
      }

      v43 = v55;
      if ((v185 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_17:
      if (v43 < v46)
      {
        goto LABEL_148;
      }

      if (v46 < v43)
      {
        if (v55 >= v57)
        {
          v80 = v57;
        }

        else
        {
          v80 = v55;
        }

        v81 = 16 * v80 - 16;
        v82 = v43;
        v83 = v46;
        a4 = v176;
        v44 = v177;
        v84 = v173;
        do
        {
          if (v83 != --v82)
          {
            v85 = *v187;
            if (!*v187)
            {
              goto LABEL_153;
            }

            v86 = *(v85 + v84);
            *(v85 + v84) = *(v85 + v81);
            *(v85 + v81) = v86;
          }

          ++v83;
          v81 -= 16;
          v84 += 16;
        }

        while (v83 < v82);
      }

      else
      {
LABEL_29:
        a4 = v176;
        v44 = v177;
      }
    }

    v87 = v187[1];
    if (v43 >= v87)
    {
      goto LABEL_56;
    }

    if (__OFSUB__(v43, v46))
    {
      goto LABEL_145;
    }

    if (v43 - v46 >= a4)
    {
      goto LABEL_56;
    }

    v88 = v46 + a4;
    if (__OFADD__(v46, a4))
    {
      goto LABEL_146;
    }

    if (v88 >= v87)
    {
      v88 = v187[1];
    }

    if (v88 < v46)
    {
      goto LABEL_147;
    }

    if (v43 == v88)
    {
      goto LABEL_56;
    }

    v196 = *v187;
    v89 = v46 - v43;
    v90 = v196 + 16 * v43 - 16;
    v191 = v88;
LABEL_39:
    v197 = v89;
    v190 = v43;
    v91 = *(v196 + 16 * v43);
    v92 = v89;
    v185 = v90;
    while (*(*(&v91 + 1) + 16))
    {
      v210 = v91;
      v93 = *v90;
      v94 = *(v90 + 8);
      v95 = (*(v203 + 80) + 32) & ~*(v203 + 80);
      v96 = v194;
      sub_1BC8B3E70(*(&v91 + 1) + v95, v194, type metadata accessor for HistoryItem);
      sub_1BC8B3E70(v96, v45, type metadata accessor for HistoryItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_1BC7C0224();
        v6 = *v45;
        v97 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        v98 = v206;
        (*v198)(v209, v6 + v97, v206);
      }

      else
      {
        v6 = v201;
        v99 = v45;
        v100 = v202;
        (*v200)(v201, v99, v202);

        sub_1BC8F7304();
        (*v199)(v6, v100);
        sub_1BC7C0224();
        v98 = v206;
      }

      v45 = v195;
      if (!*(v94 + 16))
      {
        goto LABEL_122;
      }

      v207 = v94;
      v101 = v94 + v95;
      v102 = v193;
      sub_1BC8B3E70(v101, v193, type metadata accessor for HistoryItem);
      sub_1BC8B3E70(v102, v45, type metadata accessor for HistoryItem);
      v103 = swift_getEnumCaseMultiPayload();
      v208 = v93;
      if (v103 == 1)
      {
        sub_1BC7C0224();
        v104 = *v45;
        v105 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        v106 = v192;
        (*v198)(v192, &v104[v105], v98);

        v107 = v209;
      }

      else
      {
        v108 = v201;
        v109 = v45;
        v110 = v202;
        (*v200)(v201, v109, v202);
        v111 = v192;
        sub_1BC8F7304();
        (*v199)(v108, v110);
        v106 = v111;
        v107 = v209;
        sub_1BC7C0224();
      }

      v6 = sub_1BC8F7184();
      v112 = *v204;
      (*v204)(v106, v98);
      v112(v107, v98);

      if ((v6 & 1) == 0)
      {
        v45 = v205;
        v113 = v191;
        v114 = v197;
LABEL_54:
        v43 = v190 + 1;
        v90 = v185 + 16;
        v89 = v114 - 1;
        if (v190 + 1 != v113)
        {
          goto LABEL_39;
        }

        v43 = v113;
        v44 = v177;
        v46 = v186;
LABEL_56:
        if (v43 < v46)
        {
          goto LABEL_144;
        }

        v6 = v44;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v44 = v6;
        }

        else
        {
          v161 = *(v6 + 16);
          sub_1BC7F6FCC();
          v44 = v162;
        }

        v117 = v44[2];
        v118 = v117 + 1;
        if (v117 >= v44[3] >> 1)
        {
          sub_1BC7F6FCC();
          v44 = v163;
        }

        v44[2] = v118;
        v119 = v44 + 4;
        v120 = &v44[2 * v117 + 4];
        *v120 = v46;
        v120[1] = v43;
        *&v210 = *v178;
        if (!v210)
        {
          goto LABEL_154;
        }

        if (v117)
        {
          v190 = v43;
          while (1)
          {
            v121 = v118 - 1;
            v122 = &v119[2 * v118 - 2];
            v123 = &v44[2 * v118];
            if (v118 >= 4)
            {
              break;
            }

            if (v118 == 3)
            {
              v124 = v44[4];
              v125 = v44[5];
              v134 = __OFSUB__(v125, v124);
              v126 = v125 - v124;
              v127 = v134;
LABEL_77:
              if (v127)
              {
                goto LABEL_131;
              }

              v139 = *v123;
              v138 = v123[1];
              v140 = __OFSUB__(v138, v139);
              v141 = v138 - v139;
              v142 = v140;
              if (v140)
              {
                goto LABEL_134;
              }

              v143 = v122[1];
              v144 = v143 - *v122;
              if (__OFSUB__(v143, *v122))
              {
                goto LABEL_137;
              }

              if (__OFADD__(v141, v144))
              {
                goto LABEL_139;
              }

              if (v141 + v144 >= v126)
              {
                if (v126 < v144)
                {
                  v121 = v118 - 2;
                }

                goto LABEL_99;
              }

              goto LABEL_92;
            }

            if (v118 < 2)
            {
              goto LABEL_133;
            }

            v146 = *v123;
            v145 = v123[1];
            v134 = __OFSUB__(v145, v146);
            v141 = v145 - v146;
            v142 = v134;
LABEL_92:
            if (v142)
            {
              goto LABEL_136;
            }

            v148 = *v122;
            v147 = v122[1];
            v134 = __OFSUB__(v147, v148);
            v149 = v147 - v148;
            if (v134)
            {
              goto LABEL_138;
            }

            if (v149 < v141)
            {
              goto LABEL_106;
            }

LABEL_99:
            if (v121 - 1 >= v118)
            {
              goto LABEL_125;
            }

            if (!*v187)
            {
              goto LABEL_151;
            }

            v153 = v44;
            v154 = &v119[2 * v121 - 2];
            v155 = *v154;
            v156 = v119;
            v6 = v121;
            v157 = &v119[2 * v121];
            v158 = *(v157 + 1);
            v159 = v189;
            sub_1BC8AD9A0((*v187 + 16 * *v154), (*v187 + 16 * *v157), (*v187 + 16 * v158), v210);
            v189 = v159;
            if (v159)
            {
              goto LABEL_120;
            }

            if (v158 < v155)
            {
              goto LABEL_126;
            }

            v160 = v153[2];
            if (v6 > v160)
            {
              goto LABEL_127;
            }

            *v154 = v155;
            v154[1] = v158;
            if (v6 >= v160)
            {
              goto LABEL_128;
            }

            v118 = v160 - 1;
            sub_1BC8D950C(v157 + 16, v160 - 1 - v6, v157);
            v44 = v153;
            v153[2] = v160 - 1;
            v43 = v190;
            v119 = v156;
            if (v160 <= 2)
            {
              goto LABEL_106;
            }
          }

          v128 = &v119[2 * v118];
          v129 = *(v128 - 8);
          v130 = *(v128 - 7);
          v134 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          if (v134)
          {
            goto LABEL_129;
          }

          v133 = *(v128 - 6);
          v132 = *(v128 - 5);
          v134 = __OFSUB__(v132, v133);
          v126 = v132 - v133;
          v127 = v134;
          if (v134)
          {
            goto LABEL_130;
          }

          v135 = v123[1];
          v136 = v135 - *v123;
          if (__OFSUB__(v135, *v123))
          {
            goto LABEL_132;
          }

          v134 = __OFADD__(v126, v136);
          v137 = v126 + v136;
          if (v134)
          {
            goto LABEL_135;
          }

          if (v137 >= v131)
          {
            v151 = *v122;
            v150 = v122[1];
            v134 = __OFSUB__(v150, v151);
            v152 = v150 - v151;
            if (v134)
            {
              goto LABEL_143;
            }

            if (v126 < v152)
            {
              v121 = v118 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_77;
        }

LABEL_106:
        v42 = v187[1];
        a4 = v176;
        if (v43 >= v42)
        {
          goto LABEL_110;
        }

        goto LABEL_3;
      }

      v45 = v205;
      v113 = v191;
      v114 = v197;
      if (!v196)
      {
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      v115 = *v90;
      v91 = *(v90 + 16);
      *v90 = v91;
      *(v90 + 16) = v115;
      v90 -= 16;
      if (__CFADD__(v92++, 1))
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
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
    goto LABEL_149;
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_110:
  v45 = *v178;
  if (!*v178)
  {
LABEL_155:
    __break(1u);
    return;
  }

  v6 = v44;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_149:
    v6 = sub_1BC8D94F4(v6);
  }

  v164 = (v6 + 16);
  v165 = *(v6 + 16);
  while (v165 >= 2)
  {
    if (!*v187)
    {
      goto LABEL_152;
    }

    v166 = v6;
    v167 = (v6 + 16 * v165);
    v168 = *v167;
    v6 = &v164[2 * v165];
    v169 = *(v6 + 8);
    v170 = v189;
    sub_1BC8AD9A0((*v187 + 16 * *v167), (*v187 + 16 * *v6), (*v187 + 16 * v169), v45);
    v189 = v170;
    if (v170)
    {
      break;
    }

    if (v169 < v168)
    {
      goto LABEL_140;
    }

    if (v165 - 2 >= *v164)
    {
      goto LABEL_141;
    }

    *v167 = v168;
    v167[1] = v169;
    v171 = *v164 - v165;
    if (*v164 < v165)
    {
      goto LABEL_142;
    }

    v165 = *v164 - 1;
    sub_1BC8D950C((v6 + 16), v171, v6);
    *v164 = v165;
    v6 = v166;
  }

LABEL_120:
}

void sub_1BC8AD9A0(char *a1, char *a2, char *a3, char *a4)
{
  v118 = sub_1BC8F7324();
  v8 = *(v118 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for HistoryItem();
  v119 = *(v127 - 8);
  v11 = *(v119 + 64);
  v12 = MEMORY[0x1EEE9AC00](v127);
  v108 = (&v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v102 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v107 = (&v102 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v109 = &v102 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v102 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v106 = &v102 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v102 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v110 = &v102 - v29;
  v126 = sub_1BC8F71E4();
  v30 = *(*(v126 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v126);
  v105 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v113 = &v102 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v35);
  v120 = &v102 - v37;
  v38 = (a2 - a1) / 16;
  v115 = (v8 + 8);
  v116 = (v8 + 32);
  v114 = (v39 + 16);
  v112 = (v39 + 8);
  v40 = (a3 - a2) / 16;
  if (v38 >= v40)
  {
    sub_1BC7DD5E4(a2, (a3 - a2) / 16, a4);
    v41 = &a4[16 * v40];
    v124 = a4;
    v71 = v109;
    v42 = a4;
    v123 = a1;
    v103 = v16;
LABEL_22:
    v72 = a3 - 16;
    v125 = a2;
    v106 = a2 - 16;
    while (v41 > v42 && a2 > a1)
    {
      v74 = *(v41 - 1);
      v120 = *(v41 - 2);
      if (!*(v74 + 16))
      {
        goto LABEL_50;
      }

      v122 = v72;
      v76 = *(a2 - 2);
      v75 = *(a2 - 1);
      v110 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      sub_1BC8B3E70(v74 + v110, v71, type metadata accessor for HistoryItem);
      v77 = v107;
      sub_1BC8B3E70(v71, v107, type metadata accessor for HistoryItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v111 = v76;
      if (EnumCaseMultiPayload == 1)
      {

        sub_1BC7C0224();
        v79 = *v77;
        v80 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        (*v114)(v113, &v79[v80], v126);
      }

      else
      {
        v81 = v117;
        v82 = v77;
        v83 = v118;
        (*v116)(v117, v82, v118);

        sub_1BC8F7304();
        (*v115)(v81, v83);
        sub_1BC7C0224();
      }

      v84 = v108;
      if (!*(v75 + 16))
      {
        goto LABEL_51;
      }

      v85 = v75 + v110;
      v86 = v103;
      sub_1BC8B3E70(v85, v103, type metadata accessor for HistoryItem);
      sub_1BC8B3E70(v86, v84, type metadata accessor for HistoryItem);
      v87 = swift_getEnumCaseMultiPayload();
      v121 = v41;
      if (v87 == 1)
      {
        sub_1BC7C0224();
        v88 = *v84;
        v89 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        v90 = v105;
        v91 = v126;
        (*v114)(v105, &v88[v89], v126);
      }

      else
      {
        v92 = v117;
        v93 = v84;
        v94 = v118;
        (*v116)(v117, v93, v118);
        v90 = v105;
        sub_1BC8F7304();
        (*v115)(v92, v94);
        sub_1BC7C0224();
        v91 = v126;
      }

      v95 = v113;
      v96 = sub_1BC8F7184();
      v97 = *v112;
      (*v112)(v90, v91);
      v97(v95, v91);

      if (v96)
      {
        a3 = v122;
        a1 = v123;
        v42 = v124;
        v99 = v106;
        v41 = v121;
        a2 = v106;
        v71 = v109;
        if (v122 + 16 != v125)
        {
          *v122 = *v106;
          a2 = v99;
        }

        goto LABEL_22;
      }

      v98 = v122;
      v42 = v124;
      v71 = v109;
      if (v121 != v122 + 16)
      {
        *v122 = *(v41 - 1);
      }

      v72 = v98 - 16;
      v41 -= 16;
      a1 = v123;
      a2 = v125;
    }

LABEL_43:
    v100 = (v41 - v42) / 16;
    if (a2 != v42 || a2 >= &v42[16 * v100])
    {
      memmove(a2, v42, 16 * v100);
    }
  }

  else
  {
    v108 = v36;
    sub_1BC7DD5E4(a1, (a2 - a1) / 16, a4);
    v41 = &a4[16 * v38];
    v121 = v41;
    v104 = v23;
    v109 = v28;
    v42 = a4;
    v122 = a3;
    while (1)
    {
      if (v42 >= v41 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_43;
      }

      v44 = *(a2 + 1);
      if (!*(v44 + 16))
      {
        break;
      }

      v123 = a1;
      v124 = v42;
      v45 = *a2;
      v46 = *v42;
      v47 = *(v42 + 1);
      v48 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v49 = v110;
      sub_1BC8B3E70(v44 + v48, v110, type metadata accessor for HistoryItem);
      sub_1BC8B3E70(v49, v28, type metadata accessor for HistoryItem);
      v50 = swift_getEnumCaseMultiPayload();
      v113 = v46;
      v111 = v45;
      if (v50 == 1)
      {

        sub_1BC7C0224();
        v51 = *v28;
        v52 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        (*v114)(v120, &v51[v52], v126);
      }

      else
      {
        v53 = v117;
        v54 = v28;
        v55 = v118;
        (*v116)(v117, v54, v118);

        sub_1BC8F7304();
        (*v115)(v53, v55);
        sub_1BC7C0224();
      }

      v56 = v104;
      if (!*(v47 + 16))
      {
        goto LABEL_52;
      }

      v125 = a2;
      v57 = v106;
      sub_1BC8B3E70(v47 + v48, v106, type metadata accessor for HistoryItem);
      sub_1BC8B3E70(v57, v56, type metadata accessor for HistoryItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1BC7C0224();
        v58 = *v56;
        v59 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        swift_beginAccess();
        v60 = v108;
        v61 = v126;
        (*v114)(v108, &v58[v59], v126);

        a3 = v122;
      }

      else
      {
        v62 = v117;
        v63 = v56;
        v64 = v118;
        (*v116)(v117, v63, v118);
        v60 = v108;
        sub_1BC8F7304();
        (*v115)(v62, v64);
        sub_1BC7C0224();
        a3 = v122;
        v61 = v126;
      }

      v65 = v120;
      v66 = sub_1BC8F7184();
      v67 = *v112;
      (*v112)(v60, v61);
      v67(v65, v61);

      if (v66)
      {
        v42 = v124;
        v68 = v125;
        a2 = v125 + 16;
        v69 = v123;
        v70 = v123 == v125;
      }

      else
      {
        v69 = v123;
        v68 = v124;
        v42 = v124 + 16;
        v70 = v123 == v124;
        a2 = v125;
      }

      v41 = v121;
      v28 = v109;
      if (!v70)
      {
        *v69 = *v68;
      }

      a1 = v69 + 16;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }
}

void sub_1BC8AE558()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v28 = v4;
  v5 = sub_1BC8F7264();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_139();
  v27 = v0;
  v11 = *v0;
  v12 = *(*v0 + 40);
  OUTLINED_FUNCTION_3_23();
  sub_1BC8B3DC4(v13, v14);
  OUTLINED_FUNCTION_176_0();
  v15 = sub_1BC8F7B54();
  v29 = v11;
  v30 = v11 + 56;
  v16 = ~(-1 << *(v11 + 32));
  while (1)
  {
    v17 = v15 & v16;
    if (((1 << (v15 & v16)) & *(v30 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v23 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v8 + 16))(v1, v3, v5);
      v31 = *v27;
      v25 = OUTLINED_FUNCTION_125();
      sub_1BC8AFDD0(v25, v26, isUniquelyReferenced_nonNull_native);
      *v27 = v31;
      (*(v8 + 32))(v28, v3, v5);
      goto LABEL_7;
    }

    v18 = *(v8 + 72) * v17;
    v19 = *(v8 + 16);
    v19(v1, *(v29 + 48) + v18, v5);
    OUTLINED_FUNCTION_3_23();
    sub_1BC8B3DC4(&unk_1EDC205F0, v20);
    v21 = sub_1BC8F7BC4();
    v22 = *(v8 + 8);
    v22(v1, v5);
    if (v21)
    {
      break;
    }

    v15 = v17 + 1;
  }

  v22(v3, v5);
  v19(v28, *(v29 + 48) + v18, v5);
LABEL_7:
  OUTLINED_FUNCTION_24();
}

BOOL sub_1BC8AE7D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1BC8F8C04();
  sub_1BC8F7CD4();
  v9 = sub_1BC8F8C64();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1BC8F8AA4() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1BC8B005C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_1BC8AE91C(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_1BC8F73D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1BC8B3DC4(&qword_1EBCF5678, MEMORY[0x1E6993530]);
  v30 = a2;
  v11 = sub_1BC8F7B54();
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
      sub_1BC8B01C4(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_1BC8B3DC4(&qword_1EBCF6510, MEMORY[0x1E6993530]);
    v17 = sub_1BC8F7BC4();
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

uint64_t sub_1BC8AEBE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = *(*v5 + 40);
  sub_1BC8F8C04();
  Person.hash(into:)();
  v10 = sub_1BC8F8C64();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    do
    {
      v14 = (*(v8 + 48) + 32 * v12);
      v15 = v14[2];
      v16 = v14[3];
      v17 = *v14 == a2 && v14[1] == a3;
      if (v17 || (v18 = v14[1], (sub_1BC8F8AA4() & 1) != 0))
      {

        if (sub_1BC7DAD3C(v15, a4))
        {
          sub_1BC7F56A4();
          v20 = v19;

          if (v20)
          {

            v23 = (*(v8 + 48) + 32 * v12);
            v24 = v23[1];
            v25 = v23[2];
            v26 = v23[3];
            *a1 = *v23;
            a1[1] = v24;
            a1[2] = v25;
            a1[3] = v26;

            return 0;
          }
        }

        else
        {
        }
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  v21 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v28;

  sub_1BC8B0450(a2, a3, a4, a5, v12, isUniquelyReferenced_nonNull_native);
  *v28 = v32;
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  return 1;
}

uint64_t sub_1BC8AEE10(uint64_t *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1BC8F8C04();
  sub_1BC7DEC58(v22, a2);
  v6 = sub_1BC8F8C64();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_15:
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *v2;

    sub_1BC8B065C(v18, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v22[0];
    *a1 = a2;
    return 1;
  }

  v20 = ~v7;
  v9 = *(a2 + 16);
  v10 = *(v4 + 48);
  while (1)
  {
    v11 = *(v10 + 8 * v8);
    if (*(v11 + 16) == v9)
    {
      break;
    }

LABEL_14:
    v8 = (v8 + 1) & v20;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v9 && v11 != a2)
  {
    v12 = (v11 + 40);
    v13 = (a2 + 40);
    v14 = v9;
    do
    {
      v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
      if (!v15 && (sub_1BC8F8AA4() & 1) == 0)
      {
        goto LABEL_14;
      }

      v12 += 2;
      v13 += 2;
    }

    while (--v14);
  }

  *a1 = *(*(v4 + 48) + 8 * v8);

  return 0;
}

uint64_t sub_1BC8AEFA8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1BC8F7264();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF64F0, &unk_1BC907680);
  result = sub_1BC8F8564();
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
      sub_1BC8D83A8(0, (v33 + 63) >> 6, v12);
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
    sub_1BC8B3DC4(&unk_1EDC20600, MEMORY[0x1E69695A8]);
    result = sub_1BC8F7B54();
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

uint64_t sub_1BC8AF300(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6598, &qword_1BC909C50);
  result = sub_1BC8F8564();
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
      sub_1BC8D83A8(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_1BC8F8C04();
    sub_1BC8F7CD4();
    result = sub_1BC8F8C64();
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

uint64_t sub_1BC8AF55C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1BC8F73D4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6518, &qword_1BC907698);
  result = sub_1BC8F8564();
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
      sub_1BC8D83A8(0, (v33 + 63) >> 6, v12);
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
    sub_1BC8B3DC4(&qword_1EBCF5678, MEMORY[0x1E6993530]);
    result = sub_1BC8F7B54();
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

uint64_t sub_1BC8AF8B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6548, &unk_1BC909C40);
  result = sub_1BC8F8564();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v3;
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
      sub_1BC8D83A8(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = *(v6 + 40);
    v33 = *v17;
    sub_1BC8F8C04();
    Person.hash(into:)();
    result = sub_1BC8F8C64();
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
    *v30 = v33;
    v30[1] = v18;
    v30[2] = v19;
    v30[3] = v20;
    ++*(v6 + 16);
    v3 = v32;
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

uint64_t sub_1BC8AFB30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6570, &qword_1BC907718);
  result = sub_1BC8F8564();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_32:

    *v2 = v6;
    return result;
  }

  v33 = v2;
  v34 = v3;
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
        goto LABEL_34;
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
        v35 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      sub_1BC8D83A8(0, (v32 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v35 = (v11 - 1) & v11;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = v6;
    v19 = *(v6 + 40);
    sub_1BC8F8C04();
    MEMORY[0x1BFB2A020](*(v17 + 16));
    v20 = *(v17 + 16);
    if (v20)
    {
      v21 = (v17 + 40);
      do
      {
        v22 = *(v21 - 1);
        v23 = *v21;

        sub_1BC8F7CD4();

        v21 += 2;
        --v20;
      }

      while (v20);
    }

    result = sub_1BC8F8C64();
    v6 = v18;
    v24 = -1 << *(v18 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v13 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v18 + 48) + 8 * v27) = v17;
    ++*(v18 + 16);
    v3 = v34;
    v11 = v35;
    if (!v35)
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
    v31 = *(v13 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_26;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1BC8AFDD0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1BC8F7264();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BC8AEFA8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1BC8B0814(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1BC8B3DC4(&unk_1EDC20600, MEMORY[0x1E69695A8]);
      v15 = sub_1BC8F7B54();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1BC8B3DC4(&unk_1EDC205F0, MEMORY[0x1E69695A8]);
        v17 = sub_1BC8F7BC4();
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

    sub_1BC8D9638();
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
    result = sub_1BC8F8B34();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_1BC8B005C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BC8AF300(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1BC8B0B2C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1BC8F8C04();
      sub_1BC8F7CD4();
      v17 = sub_1BC8F8C64();
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
        if (v20 || (sub_1BC8F8AA4() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_1BC8D9660();
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
    sub_1BC8F8B34();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}