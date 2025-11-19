uint64_t sub_1D2E7A084(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D2E7DE30;

  return v9(a1, a2);
}

uint64_t sub_1D2E7A188(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E7A220(a1);
}

uint64_t sub_1D2E7A220(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for SmartHolding_XPCMessage_StartHoldDetection() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1D2EE3EB8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AD8, &qword_1D2EF2198) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AE0, &qword_1D2EF21A0);
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E7A3D0, 0, 0);
}

uint64_t sub_1D2E7A3D0()
{
  v47 = v0;
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[2];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DA0);
  v6 = v2;
  v7 = *(v3 + 16);
  v7(v1, v4, v6);
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];
  if (v10)
  {
    v44 = v9;
    v15 = v0[8];
    v14 = v0[9];
    v16 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v16 = 136446210;
    v7(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    sub_1D2E5D050(v14, v15, &qword_1EC738AD8, &qword_1D2EF2198);
    v17 = (*(v12 + 48))(v15, 1, v13);
    v18 = v0[14];
    if (v17 == 1)
    {
      v20 = v0[10];
      v19 = v0[11];
      v21 = v0[9];
      sub_1D2E5D0B8(v0[8], &qword_1EC738AD8, &qword_1D2EF2198);
      sub_1D2E5D0B8(v21, &qword_1EC738AD8, &qword_1D2EF2198);
      (*(v19 + 8))(v18, v20);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v24 = v0[12];
      v25 = v0[13];
      v27 = v0[10];
      v26 = v0[11];
      v43 = v0[9];
      (*(v26 + 32))(v25, v0[8], v27);
      v7(v24, v25, v27);
      v28 = sub_1D2EE4AA8();
      v22 = v29;
      v30 = *(v26 + 8);
      v30(v25, v27);
      sub_1D2E5D0B8(v43, &qword_1EC738AD8, &qword_1D2EF2198);
      v30(v18, v27);
      v23 = v28;
    }

    v31 = sub_1D2E685B0(v23, v22, &v46);

    *(v16 + 4) = v31;
    _os_log_impl(&dword_1D2E46000, v8, v44, "Handling incoming SmartHolding_XPCMessage_StartHoldDetection %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1D38AF660](v45, -1, -1);
    MEMORY[0x1D38AF660](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v32 = v0[10];
  v34 = v0[6];
  v33 = v0[7];
  v36 = v0[4];
  v35 = v0[5];
  v37 = v0[2];
  v38 = v0[3];
  sub_1D2EE4648();
  (*(v34 + 32))(v33, v36, v35);
  v39 = *(v38 + 24);
  v40 = swift_task_alloc();
  v0[15] = v40;
  *v40 = v0;
  v40[1] = sub_1D2E7A7A4;
  v41 = v0[7];

  return sub_1D2E98E20(v41);
}

uint64_t sub_1D2E7A7A4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1D2E7DE18;
  }

  else
  {
    v3 = sub_1D2E7DE2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E7A8B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E7A950(a1);
}

uint64_t sub_1D2E7A950(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for SmartHolding_XPCMessage_StopHoldDetection() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1D2EE3EB8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AC8, &qword_1D2EF2180) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AD0, &qword_1D2EF2188);
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E7AB00, 0, 0);
}

uint64_t sub_1D2E7AB00()
{
  v47 = v0;
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[2];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DA0);
  v6 = v2;
  v7 = *(v3 + 16);
  v7(v1, v4, v6);
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];
  if (v10)
  {
    v44 = v9;
    v15 = v0[8];
    v14 = v0[9];
    v16 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v16 = 136446210;
    v7(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    sub_1D2E5D050(v14, v15, &qword_1EC738AC8, &qword_1D2EF2180);
    v17 = (*(v12 + 48))(v15, 1, v13);
    v18 = v0[14];
    if (v17 == 1)
    {
      v20 = v0[10];
      v19 = v0[11];
      v21 = v0[9];
      sub_1D2E5D0B8(v0[8], &qword_1EC738AC8, &qword_1D2EF2180);
      sub_1D2E5D0B8(v21, &qword_1EC738AC8, &qword_1D2EF2180);
      (*(v19 + 8))(v18, v20);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v24 = v0[12];
      v25 = v0[13];
      v27 = v0[10];
      v26 = v0[11];
      v43 = v0[9];
      (*(v26 + 32))(v25, v0[8], v27);
      v7(v24, v25, v27);
      v28 = sub_1D2EE4AA8();
      v22 = v29;
      v30 = *(v26 + 8);
      v30(v25, v27);
      sub_1D2E5D0B8(v43, &qword_1EC738AC8, &qword_1D2EF2180);
      v30(v18, v27);
      v23 = v28;
    }

    v31 = sub_1D2E685B0(v23, v22, &v46);

    *(v16 + 4) = v31;
    _os_log_impl(&dword_1D2E46000, v8, v44, "Handling incoming SmartHolding_XPCMessage_StopHoldDetection %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1D38AF660](v45, -1, -1);
    MEMORY[0x1D38AF660](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v32 = v0[10];
  v34 = v0[6];
  v33 = v0[7];
  v36 = v0[4];
  v35 = v0[5];
  v37 = v0[2];
  v38 = v0[3];
  sub_1D2EE4648();
  (*(v34 + 32))(v33, v36, v35);
  v39 = *(v38 + 24);
  v40 = swift_task_alloc();
  v0[15] = v40;
  *v40 = v0;
  v40[1] = sub_1D2E7AED4;
  v41 = v0[7];

  return sub_1D2E99314(v41);
}

uint64_t sub_1D2E7AED4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1D2E7B0BC;
  }

  else
  {
    v3 = sub_1D2E7AFE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E7AFE8()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D2E7B0BC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v7 = v0[1];
  v8 = v0[16];

  return v7();
}

uint64_t sub_1D2E7B190(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E7B228(a1);
}

uint64_t sub_1D2E7B228(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AB8, &qword_1D2EF2168) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738AC0, &qword_1D2EF2170);
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E7B350, 0, 0);
}

uint64_t sub_1D2E7B350()
{
  v39 = v0;
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DA0);
  v6 = v2;
  v7 = *(v3 + 16);
  v7(v1, v4, v6);
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[10];
  v13 = v0[6];
  v12 = v0[7];
  if (v10)
  {
    v36 = v9;
    v15 = v0[4];
    v14 = v0[5];
    v16 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v16 = 136446210;
    v7(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    sub_1D2E5D050(v14, v15, &qword_1EC738AB8, &qword_1D2EF2168);
    v17 = (*(v12 + 48))(v15, 1, v13);
    v18 = v0[10];
    if (v17 == 1)
    {
      v20 = v0[6];
      v19 = v0[7];
      v21 = v0[5];
      sub_1D2E5D0B8(v0[4], &qword_1EC738AB8, &qword_1D2EF2168);
      sub_1D2E5D0B8(v21, &qword_1EC738AB8, &qword_1D2EF2168);
      (*(v19 + 8))(v18, v20);
      v22 = 0xE300000000000000;
      v23 = 7104878;
    }

    else
    {
      v24 = v0[8];
      v25 = v0[9];
      v27 = v0[6];
      v26 = v0[7];
      v35 = v0[5];
      (*(v26 + 32))(v25, v0[4], v27);
      v7(v24, v25, v27);
      v28 = sub_1D2EE4AA8();
      v22 = v29;
      v30 = *(v26 + 8);
      v30(v25, v27);
      sub_1D2E5D0B8(v35, &qword_1EC738AB8, &qword_1D2EF2168);
      v30(v18, v27);
      v23 = v28;
    }

    v31 = sub_1D2E685B0(v23, v22, &v38);

    *(v16 + 4) = v31;
    _os_log_impl(&dword_1D2E46000, v8, v36, "Handling incoming SmartHolding_XPCMessage_Prewarm %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1D38AF660](v37, -1, -1);
    MEMORY[0x1D38AF660](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v32 = *(v0[3] + 24);
  v33 = swift_task_alloc();
  v0[11] = v33;
  *v33 = v0;
  v33[1] = sub_1D2E7B6EC;

  return sub_1D2E97A64();
}

uint64_t sub_1D2E7B6EC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v9 = *v0;

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1D2E7B87C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t Daemon.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1D2E5D0B8(v0 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, &unk_1EC738A10, &qword_1D2EF1E88);
  v3 = *(v0 + OBJC_IVAR____TtC16CallIntelligence6Daemon_voicemailClient);

  v4 = *(v0 + OBJC_IVAR____TtC16CallIntelligence6Daemon_callIntelligenceTrialManager + 8);
  v5 = *(v0 + OBJC_IVAR____TtC16CallIntelligence6Daemon_callIntelligenceTrialManager + 24);
  v6 = *(v0 + OBJC_IVAR____TtC16CallIntelligence6Daemon_callIntelligenceTrialManager + 40);

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_1D2E5D0B8(v0 + OBJC_IVAR____TtC16CallIntelligence6Daemon_smartActionsServer, &unk_1EC738A10, &qword_1D2EF1E88);
  v3 = *(v0 + OBJC_IVAR____TtC16CallIntelligence6Daemon_voicemailClient);

  v4 = *(v0 + OBJC_IVAR____TtC16CallIntelligence6Daemon_callIntelligenceTrialManager + 8);
  v5 = *(v0 + OBJC_IVAR____TtC16CallIntelligence6Daemon_callIntelligenceTrialManager + 24);
  v6 = *(v0 + OBJC_IVAR____TtC16CallIntelligence6Daemon_callIntelligenceTrialManager + 40);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2E7BAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34[3] = type metadata accessor for AssetManager();
  v34[4] = &off_1F4E93B18;
  v34[0] = a1;
  v33[3] = type metadata accessor for DisclosureGenerator();
  v33[4] = &off_1F4E93DB8;
  v33[0] = a2;
  swift_defaultActor_initialize();
  *(a6 + 296) = 0;
  *(a6 + 264) = 0u;
  *(a6 + 280) = 0u;
  *(a6 + 112) = a3;
  *(a6 + 120) = a4;
  sub_1D2E6912C(v34, a6 + 128);
  sub_1D2E6912C(v33, a6 + 168);
  v12 = *(a5 + 16);
  *(a6 + 208) = *a5;
  *(a6 + 224) = v12;
  *(a6 + 240) = *(a5 + 32);
  *(a6 + 256) = *(a5 + 48);
  v13 = objc_opt_self();

  sub_1D2E7BA9C(a5, &v27);
  v14 = [v13 defaultCenter];
  v15 = *MEMORY[0x1E69D8E08];
  v31 = sub_1D2E7DE00;
  v32 = a6;
  v27 = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D2EA47DC;
  v30 = &block_descriptor_152;
  v16 = _Block_copy(&v27);

  v17 = [v14 addObserverForName:v15 object:0 queue:0 usingBlock:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();

  v18 = [v13 defaultCenter];
  v19 = *MEMORY[0x1E69D8DF8];
  v31 = sub_1D2E7DE08;
  v32 = a6;
  v27 = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D2EA47DC;
  v30 = &block_descriptor_155;
  v20 = _Block_copy(&v27);

  v21 = [v18 addObserverForName:v19 object:0 queue:0 usingBlock:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();

  v22 = [v13 defaultCenter];
  v23 = *MEMORY[0x1E696A7D8];
  v31 = sub_1D2E7DE10;
  v32 = a6;
  v27 = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D2EA47DC;
  v30 = &block_descriptor_158;
  v24 = _Block_copy(&v27);

  v25 = [v22 addObserverForName:v23 object:0 queue:0 usingBlock:v24];
  _Block_release(v24);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return a6;
}

uint64_t sub_1D2E7BE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for AssetManager();
  v28[3] = v10;
  v28[4] = &off_1F4E93B18;
  v28[0] = a1;
  v26 = type metadata accessor for DisclosureGenerator();
  v27 = &off_1F4E93DB8;
  v25[0] = a2;
  type metadata accessor for HoldAssistServer();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  v13 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = v26;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_1D2E7BAF8(*v15, *v21, a3, a4, a5, v11);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v23;
}

uint64_t sub_1D2E7C0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for Daemon()
{
  result = qword_1EDECF880;
  if (!qword_1EDECF880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2E7C18C()
{
  sub_1D2E7C26C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D2E7C26C()
{
  if (!qword_1EDECFAC0)
  {
    type metadata accessor for SmartActionsServer();
    v0 = sub_1D2EE4E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECFAC0);
    }
  }
}

void sub_1D2E7C2C4()
{
  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DA0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Entering sandbox", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  sub_1D2E7E60C();
  if (v0)
  {
    v5 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = sub_1D2EE4AA8();
      v11 = sub_1D2E685B0(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D2E46000, v5, v6, "Failed to enter sandbox with error %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D38AF660](v8, -1, -1);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }
  }

  v12 = sub_1D2EE45F8();
  v13 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D2E46000, v12, v13, "Sandboxing passed", v14, 2u);
    MEMORY[0x1D38AF660](v14, -1, -1);
  }
}

unint64_t sub_1D2E7C52C()
{
  result = qword_1EDECF788;
  if (!qword_1EDECF788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDECF788);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D2E7C590(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E79214(a1);
}

uint64_t sub_1D2E7C628(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2E7DE28;

  return sub_1D2E79464(a1, v5);
}

uint64_t sub_1D2E7C6DC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E79558(a1, a2, v7);
}

uint64_t sub_1D2E7C7A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E7964C(a1);
}

uint64_t sub_1D2E7C83C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E78F2C(a1, a2, v7);
}

uint64_t sub_1D2E7C904(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E5BA34;

  return sub_1D2E79A8C(a1);
}

uint64_t sub_1D2E7C99C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E78F2C(a1, a2, v7);
}

uint64_t sub_1D2E7CA64(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D2E7DE28;

  return sub_1D2E79FDC(a1, a2, v2);
}

uint64_t sub_1D2E7CB10(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E7A084(a1, a2, v7);
}

uint64_t sub_1D2E7CBD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E7A188(a1);
}

uint64_t sub_1D2E7CC70(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E78F2C(a1, a2, v7);
}

uint64_t sub_1D2E7CD38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E7A8B8(a1);
}

uint64_t sub_1D2E7CDD0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E78F2C(a1, a2, v7);
}

uint64_t sub_1D2E7CE98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E7B190(a1);
}

uint64_t sub_1D2E7CF30(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E78F2C(a1, a2, v7);
}

uint64_t sub_1D2E7CFF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E5BA34;

  return sub_1D2E75B6C(a1);
}

uint64_t sub_1D2E7D090(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2E7DE28;

  return sub_1D2E75E70(a1, v5);
}

uint64_t sub_1D2E7D144(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E7605C(a1, a2, v7);
}

uint64_t sub_1D2E7D20C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D2E7DE28;

  return sub_1D2E76150(a1, a2);
}

uint64_t sub_1D2E7D2B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE38;

  return sub_1D2E766B8(a1);
}

uint64_t sub_1D2E7D350(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E76B34(a1, a2, v7);
}

uint64_t sub_1D2E7D418(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE38;

  return sub_1D2E76D3C(a1);
}

uint64_t sub_1D2E7D4B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E77378(a1, a2, v7);
}

uint64_t sub_1D2E7D578(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E77470(a1);
}

uint64_t sub_1D2E7D610(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E777A0(a1, a2, v7);
}

uint64_t sub_1D2E7D6D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7D770;

  return sub_1D2E77894(a1);
}

uint64_t sub_1D2E7D770(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1D2E7D86C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E7838C(a1, a2, v7);
}

uint64_t sub_1D2E7D934(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D2E7DE28;

  return sub_1D2E78484(a1);
}

uint64_t sub_1D2E7D9CC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E78F2C(a1, a2, v7);
}

uint64_t sub_1D2E7DA94(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1D2E7DAFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B00, &qword_1D2EF4A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B08, &qword_1D2EF21E0);
  sub_1D2EE4668();
  if (v13)
  {
    v0 = v13;
  }

  else
  {
    v0 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DA0);

  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = MEMORY[0x1D38AE680](v0, MEMORY[0x1E69E6158]);
    v8 = sub_1D2E685B0(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Received incoming XPC connection request processEntitlements=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v9 = (v0 + 40);
  v10 = *(v0 + 16) + 1;
  do
  {
    if (!--v10)
    {
      break;
    }

    if (*(v9 - 1) == 0x6F682D7472616D73 && *v9 == 0xED0000676E69646CLL)
    {
      break;
    }

    v9 += 2;
  }

  while ((sub_1D2EE5288() & 1) == 0);

  return v10 != 0;
}

uint64_t sub_1D2E7DD38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2E7DD98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2E7DEC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2E7DF24()
{
  v0 = sub_1D2EE4638();
  __swift_allocate_value_buffer(v0, qword_1EDED2DD0);
  v1 = __swift_project_value_buffer(v0, qword_1EDED2DD0);
  *v1 = 0xD000000000000023;
  v1[1] = 0x80000001D2EE6A10;
  v2 = *MEMORY[0x1E69937B8];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_1D2E7DFC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDED0460 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4638();
  v3 = __swift_project_value_buffer(v2, qword_1EDED2DD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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

uint64_t sub_1D2E7E0E4@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_1D2EE4AF8();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1D2E7E148(uint64_t *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1D2E7EA2C(v6, v5);
      *v21 = v6;
      *&v21[8] = v5;
      v21[10] = BYTE2(v5);
      v21[11] = BYTE3(v5);
      v21[12] = BYTE4(v5);
      v21[13] = BYTE5(v5);
      v21[14] = BYTE6(v5);
      result = sub_1D2E7E0E4(v21, a2, &v22);
      if (!v2)
      {
        result = v22;
      }

      v9 = *&v21[8] | ((*&v21[12] | (v21[14] << 16)) << 32);
      *a1 = *v21;
      a1[1] = v9;
      goto LABEL_20;
    }

    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D2E7EA2C(v6, v5);
    *a1 = xmmword_1D2EF2280;
    sub_1D2E7EA2C(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_1D2EE3C58() && __OFSUB__(v6, sub_1D2EE3C88()))
      {
LABEL_24:
        __break(1u);
      }

      v14 = sub_1D2EE3C98();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_1D2EE3C38();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_1D2E7E4B8(v6, v6 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v11;
        result = v18;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {
    v10 = *a1;

    sub_1D2E7EA2C(v6, v5);
    v22 = v6;
    v23 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1D2EF2280;
    sub_1D2E7EA2C(0, 0xC000000000000000);
    sub_1D2EE3D98();
    v6 = v22;
    result = sub_1D2E7E4B8(*(v22 + 16), *(v22 + 24), v23, a2);
    v11 = v23 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v22;
      a1[1] = v11;
      goto LABEL_20;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v11;
    goto LABEL_20;
  }

  memset(v21, 0, 15);
  result = sub_1D2E7E0E4(v21, a2, &v22);
  if (!v2)
  {
    result = v22;
  }

LABEL_20:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2E7E4B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_1D2EE3C58();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_1D2EE3C88();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1D2EE3C78();
  result = sub_1D2E7E0E4((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1D2E7E564(int *a1, int a2)
{
  result = sub_1D2EE3DB8();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_1D2EE3C58();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_1D2EE3C88();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_1D2EE3C78();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_1D2E7E60C()
{
  sub_1D2EE4AB8();
  v0 = _set_user_dir_suffix();

  if (v0)
  {
    v1 = NSTemporaryDirectory();
    v2 = sub_1D2EE4A68();
    v4 = v3;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = sub_1D2EE3C98();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      v26 = 0x40000000000;
      v27 = sub_1D2EE3C68();
      sub_1D2E7E564(&v26, 0);
      v27 |= 0x4000000000000000uLL;
      sub_1D2E7E148(&v26, 65537);
      v10 = v9;
      sub_1D2E7EA2C(v26, v27);
      if (v10)
      {
        v11 = sub_1D2EE4AB8();

        v12 = realpath_DARWIN_EXTSN((v11 + 32), 0);

        if (v12)
        {
          sub_1D2EE4AF8();
          MEMORY[0x1D38AF660](v12, -1, -1);

          return v12;
        }
      }

      if (qword_1EDECFF00 != -1)
      {
        swift_once();
      }

      v17 = sub_1D2EE4618();
      __swift_project_value_buffer(v17, qword_1EDED2DA0);
      v18 = sub_1D2EE45F8();
      v19 = sub_1D2EE4DB8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D2E46000, v18, v19, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed", v20, 2u);
        MEMORY[0x1D38AF660](v20, -1, -1);
      }

      v12 = 2;
    }

    else
    {
      if (qword_1EDECFF00 != -1)
      {
        swift_once();
      }

      v21 = sub_1D2EE4618();
      __swift_project_value_buffer(v21, qword_1EDED2DA0);
      v22 = sub_1D2EE45F8();
      v23 = sub_1D2EE4DB8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1D2E46000, v22, v23, "Unable to create temp directory", v24, 2u);
        MEMORY[0x1D38AF660](v24, -1, -1);
      }

      v12 = 1;
    }

    LOBYTE(v26) = v12;
    sub_1D2E7E9D8();
    swift_willThrowTypedImpl();
    return v12;
  }

  if (qword_1EDECFF00 != -1)
  {
    swift_once();
  }

  v13 = sub_1D2EE4618();
  __swift_project_value_buffer(v13, qword_1EDED2DA0);
  v14 = sub_1D2EE45F8();
  v15 = sub_1D2EE4DB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D2E46000, v14, v15, "Sandbox: _set_user_dir_suffix returned nil", v16, 2u);
    MEMORY[0x1D38AF660](v16, -1, -1);
  }

  LOBYTE(v26) = 0;
  sub_1D2E7E9D8();
  swift_willThrowTypedImpl();
  return 0;
}

unint64_t sub_1D2E7E9D8()
{
  result = qword_1EC738B30;
  if (!qword_1EC738B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738B30);
  }

  return result;
}

uint64_t sub_1D2E7EA2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for SandboxError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SandboxError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2E7EBD4()
{
  result = qword_1EC738B38;
  if (!qword_1EC738B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738B38);
  }

  return result;
}

void sub_1D2E7EC28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  if (*(v0 + 160))
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2EE4618();
    __swift_project_value_buffer(v5, qword_1EDED2DB8);
    v15 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v15, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D2E46000, v15, v6, "Asset download already in progress, skipping duplicate request", v7, 2u);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }

    v8 = v15;
  }

  else
  {
    v9 = sub_1D2EE4CB8();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = sub_1D2E828E8();
    v11 = swift_allocObject();
    v11[2] = v0;
    v11[3] = v10;
    v11[4] = v0;
    swift_retain_n();
    v12 = sub_1D2EA4398(0, 0, v4, &unk_1D2EF2490, v11);
    v13 = *(v0 + 160);
    *(v0 + 160) = v12;
  }
}

uint64_t sub_1D2E7EE4C()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Starting asset download", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1D2E7EF98;
  v6 = *(v0 + 16);

  return sub_1D2E7F114();
}

uint64_t sub_1D2E7EF98()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2E7F0A8, v2, 0);
}

uint64_t sub_1D2E7F0A8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 160);
  *(v1 + 160) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D2E7F134()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = sub_1D2E7FBB0() & 1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D2E7F1D4;
  v3 = *(v0 + 16);

  return sub_1D2E7FE88();
}

uint64_t sub_1D2E7F1D4(char a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 49) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2E7F2EC, v3, 0);
}

uint64_t sub_1D2E7F2EC()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 49);
    v5 = *(v0 + 48);
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = v5;
    *(v6 + 8) = 1024;
    *(v6 + 10) = v4;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Asset available: naturalLanguageAvailable=%{BOOL}d asrAvailable=%{BOOL}d", v6, 0xEu);
    MEMORY[0x1D38AF660](v6, -1, -1);
  }

  v7 = *(v0 + 49);
  v8 = *(v0 + 48);

  if (v8 == 1 && (v7 & 1) != 0)
  {
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 49);
    v12 = *(v0 + 48);
    v13 = *(v0 + 16);
    sub_1D2E828E8();
    v14 = swift_task_alloc();
    *(v0 + 32) = v14;
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    *(v14 + 32) = v11;
    v15 = *(MEMORY[0x1E69E88A0] + 4);
    v16 = swift_task_alloc();
    *(v0 + 40) = v16;
    *v16 = v0;
    v16[1] = sub_1D2E7F518;

    return MEMORY[0x1EEE6DD58]();
  }
}

void sub_1D2E7F518()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 16);

    MEMORY[0x1EEE6DFA0](sub_1D2E7F658, v6, 0);
  }
}

uint64_t sub_1D2E7F66C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 41) = a5;
  *(v5 + 40) = a3;
  *(v5 + 16) = a2;
  *(v5 + 24) = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460) - 8) + 64) + 15;
  *(v5 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E7F714, a4, 0);
}

uint64_t sub_1D2E7F714()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    v3 = *(v0 + 16);
    v4 = sub_1D2EE4CB8();
    (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v2;

    sub_1D2E7F950(v1, &unk_1D2EF2470, v5);
    sub_1D2E82AB8(v1);
  }

  if ((*(v0 + 41) & 1) == 0)
  {
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = sub_1D2EE4CB8();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;

    sub_1D2E7F950(v6, &unk_1D2EF2480, v10);
    sub_1D2E82AB8(v6);
  }

  v11 = *(v0 + 32);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D2E7F8C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D2E7DE28;

  return sub_1D2E806D4();
}

uint64_t sub_1D2E7F950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  sub_1D2E82BD4(a1, v20 - v9);
  v11 = sub_1D2EE4CB8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D2E82AB8(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1D2EE4C28();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D2EE4CA8();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1D2E7FB20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D2E5BA34;

  return sub_1D2E81100();
}

uint64_t sub_1D2E7FBB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738B70, &qword_1D2EF1E70);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v1 = (inited + 24);
  *(inited + 16) = 0;
  v2 = (inited + 16);
  os_unfair_lock_lock((inited + 24));
  sub_1D2E82478(v2);
  os_unfair_lock_unlock(v1);
  sub_1D2E7FC7C(&v5);
  os_unfair_lock_lock(v1);
  sub_1D2EA38A8(v2);
  os_unfair_lock_unlock(v1);
  swift_setDeallocating();
  v3 = *v2;
  swift_unknownObjectRelease();
  return v5;
}

void sub_1D2E7FC7C(_BYTE *a1@<X8>)
{
  v2 = sub_1D2E69864();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() contextualEmbeddingWithLanguage_];
    if (v4)
    {
      v5 = v4;
      v16 = sub_1D2E68D80();
      v17 = &off_1F4E93D38;
      *&v15 = v5;
      sub_1D2E4C014(&v15, v18);
      sub_1D2E82498(v18);
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      LOBYTE(v5) = sub_1D2E68508();

      *a1 = v5 & 1;
      __swift_destroy_boxed_opaque_existential_1(v18);
      return;
    }

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EDED2DB8);
    v7 = v3;
    v8 = sub_1D2EE45F8();
    v9 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136446210;
      v12 = sub_1D2EE4A68();
      v14 = sub_1D2E685B0(v12, v13, v18);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1D2E46000, v8, v9, "Failed to construct a language for identifier %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D38AF660](v11, -1, -1);
      MEMORY[0x1D38AF660](v10, -1, -1);
    }

    else
    {
    }
  }

  *a1 = 0;
}

uint64_t sub_1D2E7FE88()
{
  v1[20] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B60, &qword_1D2EF2430);
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E7FF54, v0, 0);
}

uint64_t sub_1D2E7FF54()
{
  v1 = sub_1D2E69864();
  v0[24] = v1;
  if (!v1)
  {
    if (qword_1EDECFF10 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v2 = objc_opt_self();
  v0[25] = v2;
  v3 = [v2 systemClientId];
  if (!v3)
  {
    sub_1D2EE4A68();
    v3 = sub_1D2EE4A38();
  }

  v0[26] = v3;
  v4 = *(v0[20] + 152);
  v0[27] = v4;
  v5 = *(v4 + 16);
  v0[28] = v5;
  if (v5)
  {
    v6 = v0[22];
    v0[29] = 0;
    if (*(v4 + 16))
    {
      v17 = v0[25];
      v7 = v0[23];
      v8 = v0[21];
      v9 = [objc_allocWithZone(MEMORY[0x1E697B9B8]) initWithLanguage:v0[24] assetType:*(v4 + 32)];
      v0[30] = v9;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_1D2E802DC;
      swift_continuation_init();
      v0[17] = v8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B68, qword_1D2EF2438);
      sub_1D2EE4C38();
      (*(v6 + 32))(boxed_opaque_existential_0, v7, v8);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1D2E80660;
      v0[13] = &block_descriptor_14;
      [v17 pathToAssetWithConfig:v9 clientIdentifier:v3 completion:?];
      (*(v6 + 8))(boxed_opaque_existential_0, v8);

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_10:
    v11 = sub_1D2EE4618();
    __swift_project_value_buffer(v11, qword_1EDED2DB8);
    v3 = sub_1D2EE45F8();
    v12 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v3, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D2E46000, v3, v12, "Error checking availability of ASR assets because language code is nil", v13, 2u);
      MEMORY[0x1D38AF660](v13, -1, -1);
    }

    goto LABEL_13;
  }

LABEL_13:
  v14 = v0[23];

  v15 = v0[1];

  return v15(v1 != 0);
}

uint64_t sub_1D2E802DC()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2E803D0, v1, 0);
}

uint64_t sub_1D2E803D0()
{
  v1 = *(v0 + 152);
  if (v1 && (v2 = *(v0 + 224), v3 = *(v0 + 232) + 1, v4 = *(v0 + 152), v5 = , v3 != v2))
  {
    *(v0 + 232) = v3;
    v10 = *(v0 + 216);
    if (v3 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v16 = *(v0 + 200);
      v17 = *(v0 + 208);
      v11 = *(v0 + 184);
      v13 = *(v0 + 168);
      v12 = *(v0 + 176);
      v14 = [objc_allocWithZone(MEMORY[0x1E697B9B8]) initWithLanguage:*(v0 + 192) assetType:*(v10 + 8 * v3 + 32)];
      *(v0 + 240) = v14;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1D2E802DC;
      swift_continuation_init();
      *(v0 + 136) = v13;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B68, qword_1D2EF2438);
      sub_1D2EE4C38();
      (*(v12 + 32))(boxed_opaque_existential_0, v11, v13);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D2E80660;
      *(v0 + 104) = &block_descriptor_14;
      [v16 pathToAssetWithConfig:v14 clientIdentifier:v17 completion:?];
      (*(v12 + 8))(boxed_opaque_existential_0, v13);
      v5 = v0 + 16;
    }

    return MEMORY[0x1EEE6DEC8](v5);
  }

  else
  {
    v6 = *(v0 + 192);

    v7 = *(v0 + 184);

    v8 = *(v0 + 8);

    return v8(v1 != 0);
  }
}

uint64_t sub_1D2E80660(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1D2EE4A68();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B60, &qword_1D2EF2430);
  return sub_1D2EE4C58();
}

uint64_t sub_1D2E806D4()
{
  v1[23] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B58, &qword_1D2EF2428);
  v1[24] = v2;
  v3 = *(v2 - 8);
  v1[25] = v3;
  v4 = *(v3 + 64) + 15;
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E807A0, v0, 0);
}

uint64_t sub_1D2E807A0()
{
  v25 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[27] = __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Downloading NaturalLanguage assets", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = sub_1D2E69864();
  v0[28] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() contextualEmbeddingWithLanguage_];
    v0[29] = v7;
    if (v7)
    {
      v8 = v7;
      v10 = v0[25];
      v9 = v0[26];
      v11 = v0[24];
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_1D2E80B7C;
      swift_continuation_init();
      v0[17] = v11;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
      type metadata accessor for AssetsResult(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      sub_1D2EE4C38();
      (*(v10 + 32))(boxed_opaque_existential_0, v9, v11);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1D2E8105C;
      v0[13] = &block_descriptor_11;
      [v8 requestEmbeddingAssetsWithCompletionHandler_];
      (*(v10 + 8))(boxed_opaque_existential_0, v11);

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    v13 = v6;
    v14 = sub_1D2EE45F8();
    v15 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446210;
      v18 = sub_1D2EE4A68();
      v20 = sub_1D2E685B0(v18, v19, &v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D2E46000, v14, v15, "Failed to construct a language for identifier %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1D38AF660](v17, -1, -1);
      MEMORY[0x1D38AF660](v16, -1, -1);
    }

    else
    {
    }
  }

  v21 = v0[26];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D2E80B7C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = sub_1D2E80D9C;
  }

  else
  {
    v5 = sub_1D2E80C9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D2E80C9C()
{
  v1 = v0[27];
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  v6 = v0[29];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Successfully downloaded Natural Language assets", v7, 2u);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  else
  {

    v2 = v5;
  }

  v8 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D2E80D9C()
{
  v29 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  swift_willThrow();
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 240);
    v27 = *(v0 + 232);
    v25 = v6;
    v26 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v7 = 136446210;
    swift_getErrorValue();
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = sub_1D2EE4E58();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    v14 = *(v9 - 8);
    (*(v14 + 16))(v13, v8, v9);
    (*(v14 + 56))(v13, 0, 1, v9);
    v15 = sub_1D2EE2754(v13, v9);
    v17 = v16;
    (*(v11 + 8))(v13, v10);

    v18 = sub_1D2E685B0(v15, v17, &v28);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error downloading Natural Language assets: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1D38AF660](v24, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 224);
  }

  v21 = *(v0 + 208);

  v22 = *(v0 + 8);

  return v22();
}

void sub_1D2E8105C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B58, &qword_1D2EF2428);
    sub_1D2EE4C48();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B58, &qword_1D2EF2428);
    sub_1D2EE4C58();
  }
}

uint64_t sub_1D2E81100()
{
  v1[31] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B48, &qword_1D2EF2418);
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E811CC, v0, 0);
}

uint64_t sub_1D2E811CC()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[35] = __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Downloading ASR assets", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v0[36] = v5;
  v6 = [v5 systemClientId];
  if (!v6)
  {
    sub_1D2EE4A68();
    v6 = sub_1D2EE4A38();
  }

  v0[37] = v6;
  v7 = sub_1D2E69864();
  v0[38] = v7;
  if (v7)
  {
    v8 = *(v0[31] + 152);
    v0[39] = v8;
    v9 = *(v8 + 16);
    v0[40] = v9;
    if (v9)
    {
      v10 = v0[33];
      v0[41] = 0;
      if (*(v8 + 16))
      {
        v25 = v0[37];
        v24 = v0[36];
        v11 = v0[34];
        v12 = v0[32];
        v13 = *(v8 + 32);
        v0[42] = v13;
        v14 = [objc_allocWithZone(MEMORY[0x1E697B9B8]) initWithLanguage:v7 assetType:v13];
        v0[43] = v14;
        v15 = swift_allocObject();
        *(v15 + 16) = v13;
        v0[22] = sub_1D2E823C8;
        v0[23] = v15;
        v0[18] = MEMORY[0x1E69E9820];
        v0[19] = 1107296256;
        v0[20] = sub_1D2E82250;
        v0[21] = &block_descriptor_0;
        v16 = _Block_copy(v0 + 18);
        v0[44] = v16;
        v17 = v0[23];

        v0[2] = v0;
        v0[7] = (v0 + 27);
        v0[3] = sub_1D2E81658;
        swift_continuation_init();
        v0[17] = v12;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
        sub_1D2EE4C38();
        (*(v10 + 32))(boxed_opaque_existential_0, v11, v12);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1D2E822A4;
        v0[13] = &block_descriptor_8;
        [v24 fetchAssetWithConfig:v14 clientIdentifier:v25 progress:v16 completion:?];
        (*(v10 + 8))(boxed_opaque_existential_0, v12);
        v7 = v0 + 2;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DEC8](v7);
    }
  }

  else
  {

    v6 = sub_1D2EE45F8();
    v19 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v6, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D2E46000, v6, v19, "Error triggering ASR asset download because language code is nil", v20, 2u);
      MEMORY[0x1D38AF660](v20, -1, -1);
    }
  }

  v21 = v0[34];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D2E81658()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 360) = v3;
  v4 = *(v1 + 248);
  if (v3)
  {
    v5 = sub_1D2E81B1C;
  }

  else
  {
    v5 = sub_1D2E81778;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D2E81778()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 280);
  v3 = *(v0 + 224);

  _Block_release(v1);
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DD8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 344);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Successfully downloaded ASR assets", v8, 2u);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  v10 = *(v0 + 328) + 1;
  if (v10 == *(v0 + 320))
  {
    v11 = *(v0 + 304);

    v12 = *(v0 + 272);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    *(v0 + 328) = v10;
    v15 = *(v0 + 312);
    if (v10 >= *(v15 + 16))
    {
      __break(1u);
    }

    else
    {
      v16 = *(v0 + 304);
      v27 = *(v0 + 296);
      v26 = *(v0 + 288);
      v17 = *(v0 + 264);
      v18 = *(v0 + 272);
      v19 = *(v0 + 256);
      v20 = *(v15 + 8 * v10 + 32);
      *(v0 + 336) = v20;
      v21 = [objc_allocWithZone(MEMORY[0x1E697B9B8]) initWithLanguage:v16 assetType:v20];
      *(v0 + 344) = v21;
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v0 + 176) = sub_1D2E823C8;
      *(v0 + 184) = v22;
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1D2E82250;
      *(v0 + 168) = &block_descriptor_0;
      v23 = _Block_copy((v0 + 144));
      *(v0 + 352) = v23;
      v24 = *(v0 + 184);

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 216;
      *(v0 + 24) = sub_1D2E81658;
      swift_continuation_init();
      *(v0 + 136) = v19;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      sub_1D2EE4C38();
      (*(v17 + 32))(boxed_opaque_existential_0, v18, v19);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D2E822A4;
      *(v0 + 104) = &block_descriptor_8;
      [v26 fetchAssetWithConfig:v21 clientIdentifier:v27 progress:v23 completion:?];
      (*(v17 + 8))(boxed_opaque_existential_0, v19);
      v9 = v0 + 16;
    }

    return MEMORY[0x1EEE6DEC8](v9);
  }
}

uint64_t sub_1D2E81B1C()
{
  v48 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 280);
  swift_willThrow();
  _Block_release(v2);
  v4 = v1;
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 360);
    v43 = v7;
    v45 = *(v0 + 344);
    v41 = *(v0 + 336);
    v8 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47[0] = v42;
    *v8 = 136446466;
    swift_getErrorValue();
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v11 = sub_1D2EE4E58();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64) + 15;
    v14 = swift_task_alloc();
    v15 = *(v10 - 8);
    (*(v15 + 16))(v14, v9, v10);
    (*(v15 + 56))(v14, 0, 1, v10);
    v16 = sub_1D2EE2754(v14, v10);
    v18 = v17;
    (*(v12 + 8))(v14, v11);

    v19 = sub_1D2E685B0(v16, v18, v47);

    *(v8 + 4) = v19;
    *(v8 + 12) = 2080;
    *(v0 + 240) = v41;
    type metadata accessor for SFEntitledAssetType(0);
    v20 = sub_1D2EE4AA8();
    v22 = sub_1D2E685B0(v20, v21, v47);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Error downloading ASR assets: %{public}s, %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v42, -1, -1);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  else
  {
    v24 = *(v0 + 360);
  }

  v25 = *(v0 + 328) + 1;
  if (v25 == *(v0 + 320))
  {
    v26 = *(v0 + 304);

    v27 = *(v0 + 272);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    *(v0 + 328) = v25;
    v30 = *(v0 + 312);
    if (v25 >= *(v30 + 16))
    {
      __break(1u);
    }

    else
    {
      v31 = *(v0 + 304);
      v46 = *(v0 + 296);
      v44 = *(v0 + 288);
      v32 = *(v0 + 264);
      v33 = *(v0 + 272);
      v34 = *(v0 + 256);
      v35 = *(v30 + 8 * v25 + 32);
      *(v0 + 336) = v35;
      v36 = [objc_allocWithZone(MEMORY[0x1E697B9B8]) initWithLanguage:v31 assetType:v35];
      *(v0 + 344) = v36;
      v37 = swift_allocObject();
      *(v37 + 16) = v35;
      *(v0 + 176) = sub_1D2E823C8;
      *(v0 + 184) = v37;
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1D2E82250;
      *(v0 + 168) = &block_descriptor_0;
      v38 = _Block_copy((v0 + 144));
      *(v0 + 352) = v38;
      v39 = *(v0 + 184);

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 216;
      *(v0 + 24) = sub_1D2E81658;
      swift_continuation_init();
      *(v0 + 136) = v34;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      sub_1D2EE4C38();
      (*(v32 + 32))(boxed_opaque_existential_0, v33, v34);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D2E822A4;
      *(v0 + 104) = &block_descriptor_8;
      [v44 fetchAssetWithConfig:v36 clientIdentifier:v46 progress:v38 completion:?];
      (*(v32 + 8))(boxed_opaque_existential_0, v34);
      v23 = v0 + 16;
    }

    return MEMORY[0x1EEE6DEC8](v23);
  }
}

void sub_1D2E820C0(uint64_t a1)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DB8);
  oslog = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 134349314;
    *(v4 + 4) = a1;
    *(v4 + 12) = 2080;
    type metadata accessor for SFEntitledAssetType(0);
    v6 = sub_1D2EE4AA8();
    v8 = sub_1D2E685B0(v6, v7, &v10);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_1D2E46000, oslog, v3, "ASR asset download progress=%{public}ld, %s", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D2E82250(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1D2E822A4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B48, &qword_1D2EF2418);
    sub_1D2EE4C48();
  }

  else
  {
    sub_1D2EE4A68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B48, &qword_1D2EF2418);
    sub_1D2EE4C58();
  }
}

uint64_t sub_1D2E82350()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = v0[19];

  v2 = v0[20];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1D2E82478(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  sub_1D2EA3668(a1);
}

void sub_1D2E82498(void *a1)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DB8);
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2E46000, v3, v4, "Compiling NLContextualEmbedding model if needed", v5, 2u);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 24))(v6, v7);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 32))(v8, v9);
  v12 = sub_1D2EE45F8();
  v10 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v12, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D2E46000, v12, v10, "NLContextualEmbedding model already compiled and available", v11, 2u);
    MEMORY[0x1D38AF660](v11, -1, -1);
  }
}

unint64_t sub_1D2E828E8()
{
  result = qword_1EDECFCC0;
  if (!qword_1EDECFCC0)
  {
    type metadata accessor for AssetManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFCC0);
  }

  return result;
}

uint64_t sub_1D2E8293C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D2E5BA34;

  return sub_1D2E7F66C(a1, a2, v6, v7, v8);
}

uint64_t sub_1D2E82A04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D2E7DE28;

  return sub_1D2E7F8C0();
}

uint64_t sub_1D2E82AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2E82B20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D2E7DE28;

  return sub_1D2E7FB20();
}

uint64_t sub_1D2E82BD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D2E82C84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E7DE28;

  return sub_1D2E7EE2C(a1, v4, v5, v6);
}

uint64_t sub_1D2E82D48(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E5BA34;

  return v9(a1, a2);
}

uint64_t sub_1D2E82E60()
{
  sub_1D2EE5338();
  sub_1D2EE3F78();
  sub_1D2E87A04(&unk_1EC738CF0, MEMORY[0x1E6969770]);
  sub_1D2EE49F8();
  v1 = *(v0 + *(type metadata accessor for LanguageDetectorResult(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D38AEDF0](*&v1);
  return sub_1D2EE5378();
}

uint64_t sub_1D2E82F14(uint64_t a1, uint64_t a2)
{
  sub_1D2EE3F78();
  sub_1D2E87A04(&unk_1EC738CF0, MEMORY[0x1E6969770]);
  sub_1D2EE49F8();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1D38AEDF0](*&v4);
}

uint64_t sub_1D2E82FB0(uint64_t a1, uint64_t a2)
{
  sub_1D2EE5338();
  sub_1D2EE3F78();
  sub_1D2E87A04(&unk_1EC738CF0, MEMORY[0x1E6969770]);
  sub_1D2EE49F8();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1D38AEDF0](*&v4);
  return sub_1D2EE5378();
}

double sub_1D2E830B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D2E5D0B8(a1, &qword_1EC738C60, &qword_1D2EF25C0);
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2EE4618();
  __swift_project_value_buffer(v6, qword_1EDED2DB8);
  v7 = sub_1D2EE45F8();
  v8 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a2;
    _os_log_impl(&dword_1D2E46000, v7, v8, "Starting captions client for stream token %ld", v9, 0xCu);
    MEMORY[0x1D38AF660](v9, -1, -1);
  }

  v10 = *(a3 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionClientFactory);
  if (v10)
  {
    v11 = *(a3 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionClientFactory + 8);

    v10(&v25, a3, a2);
    sub_1D2E48CF8(v10);
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E6986570]) initWithDelegate:a3 streamToken:a2];
    v13 = v12;
    if (v12)
    {
      v12 = sub_1D2E85E48();
      v14 = &off_1F4E93D18;
    }

    else
    {
      v14 = 0;
    }

    v25 = v13;
    *&v26 = 0;
    *(&v26 + 1) = v12;
    v27 = v14;
  }

  sub_1D2E5D050(&v25, v22, &qword_1EC738C78, &qword_1D2EF25D8);
  v15 = v23;
  if (v23)
  {
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = sub_1D2E85CF4();
    (*(v16 + 24))(v17, v15, v16);

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_1D2E5D0B8(v22, &qword_1EC738C78, &qword_1D2EF25D8);
  }

  sub_1D2E5D050(&v25, v22, &qword_1EC738C78, &qword_1D2EF25D8);
  v18 = v23;
  if (v23)
  {
    v19 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v19 + 16))(1, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_1D2E5D0B8(v22, &qword_1EC738C78, &qword_1D2EF25D8);
  }

  result = *&v25;
  v21 = v26;
  *a1 = v25;
  *(a1 + 16) = v21;
  *(a1 + 32) = v27;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

double sub_1D2E8337C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) >= 2uLL)
  {
    sub_1D2E6912C(a1, &v27);
    v6 = *(&v28 + 1);
    v7 = v29;
    __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    (v7[2])(0, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v8 = sub_1D2EE4618();
  __swift_project_value_buffer(v8, qword_1EDED2DB8);
  v9 = sub_1D2EE45F8();
  v10 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a2;
    _os_log_impl(&dword_1D2E46000, v9, v10, "Reconfiguring captions client for stream token %ld", v11, 0xCu);
    MEMORY[0x1D38AF660](v11, -1, -1);
  }

  v12 = *(a3 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionClientFactory);
  if (v12)
  {
    v13 = *(a3 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionClientFactory + 8);

    v12(&v27, a3, a2);
    sub_1D2E48CF8(v12);
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E6986570]) initWithDelegate:a3 streamToken:a2];
    v15 = v14;
    if (v14)
    {
      v14 = sub_1D2E85E48();
      v16 = &off_1F4E93D18;
    }

    else
    {
      v16 = 0;
    }

    v27 = v15;
    *&v28 = 0;
    *(&v28 + 1) = v14;
    v29 = v16;
  }

  sub_1D2E5D050(&v27, v24, &qword_1EC738C78, &qword_1D2EF25D8);
  v17 = v25;
  if (v25)
  {
    v18 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v19 = sub_1D2E85CF4();
    (*(v18 + 24))(v19, v17, v18);

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_1D2E5D0B8(v24, &qword_1EC738C78, &qword_1D2EF25D8);
  }

  sub_1D2E5D050(&v27, v24, &qword_1EC738C78, &qword_1D2EF25D8);
  v20 = v25;
  if (v25)
  {
    v21 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v21 + 16))(1, v20, v21);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_1D2E5D0B8(v24, &qword_1EC738C78, &qword_1D2EF25D8);
  }

  sub_1D2E5D0B8(a1, &qword_1EC738C60, &qword_1D2EF25C0);
  result = *&v27;
  v23 = v28;
  *a1 = v27;
  *(a1 + 16) = v23;
  *(a1 + 32) = v29;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1D2E8369C(uint64_t a1)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DB8);
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2E46000, v3, v4, "Stopping captions client", v5, 2u);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  v6 = *(a1 + 24);
  if (v6 != 1)
  {
    if (*(a1 + 40))
    {
      v7 = *(a1 + 40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      sub_1D2EE4D38();

      v6 = *(a1 + 24);
    }

    if (v6 >= 2)
    {
      sub_1D2E6912C(a1, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v9 + 16))(0, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  sub_1D2E5D0B8(a1, &qword_1EC738C60, &qword_1D2EF25C0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738C68, &unk_1D2EF25C8);
  return sub_1D2EE4CE8();
}

uint64_t sub_1D2E83890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738598, &unk_1D2EF2600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v57 - v4;
  v5 = sub_1D2EE3F58();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D2EE3EF8();
  v68 = *(v66 - 8);
  v8 = v68[8];
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA0, &qword_1D2EF5D80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - v15;
  v17 = sub_1D2EE3F78();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v60 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v57 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v57 - v28;
  v30 = *(v18 + 16);
  v30(&v57 - v28, a1, v17);
  v31 = *(a1 + *(type metadata accessor for LanguageDetectorResult(0) + 20));
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v32 = sub_1D2EE4618();
  v33 = __swift_project_value_buffer(v32, qword_1EDED2DB8);
  v70 = v29;
  v30(v27, v29, v17);
  v61 = v33;
  v34 = sub_1D2EE45F8();
  v35 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v34, v35))
  {
    v59 = v35;
    v36 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v71[0] = v58;
    *v36 = 136315650;
    *(v36 + 4) = sub_1D2E685B0(0xD000000000000024, 0x80000001D2EE6D90, v71);
    *(v36 + 12) = 2080;
    v30(v16, v27, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    sub_1D2E5D050(v16, v14, &qword_1EC738CA0, &qword_1D2EF5D80);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {
      sub_1D2E5D0B8(v14, &qword_1EC738CA0, &qword_1D2EF5D80);
      sub_1D2E5D0B8(v16, &qword_1EC738CA0, &qword_1D2EF5D80);
      v37 = *(v18 + 8);
      v37(v27, v17);
      v38 = 0xE300000000000000;
      v39 = 7104878;
    }

    else
    {
      (*(v18 + 32))(v24, v14, v17);
      v30(v60, v24, v17);
      v60 = sub_1D2EE4AA8();
      v38 = v40;
      v37 = *(v18 + 8);
      v37(v24, v17);
      sub_1D2E5D0B8(v16, &qword_1EC738CA0, &qword_1D2EF5D80);
      v37(v27, v17);
      v39 = v60;
    }

    v41 = sub_1D2E685B0(v39, v38, v71);

    *(v36 + 14) = v41;
    *(v36 + 22) = 2048;
    *(v36 + 24) = v31;
    _os_log_impl(&dword_1D2E46000, v34, v59, "%s dominantLocale=%s dominantLocaleConfidence=%f", v36, 0x20u);
    v42 = v58;
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v42, -1, -1);
    MEMORY[0x1D38AF660](v36, -1, -1);
  }

  else
  {

    v37 = *(v18 + 8);
    v37(v27, v17);
  }

  v43 = v67;
  v44 = v68;
  v45 = v69;
  v46 = v70;
  if (*(v69 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_config + 40) > v31)
  {
    v47 = v70;
    return (v37)(v47, v17);
  }

  v48 = v63;
  sub_1D2EE3F68();
  sub_1D2EE3F48();
  (*(v64 + 8))(v48, v65);
  v49 = v66;
  if ((v44[6])(v43, 1, v66) == 1)
  {
    sub_1D2E5D0B8(v43, &qword_1EC738598, &unk_1D2EF2600);
    v50 = sub_1D2EE45F8();
    v51 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1D2E46000, v50, v51, "Invalid language code", v52, 2u);
      MEMORY[0x1D38AF660](v52, -1, -1);
    }

    v47 = v70;
    return (v37)(v47, v17);
  }

  v54 = v62;
  v55 = (v44[4])(v62, v43, v49);
  v68 = &v57;
  v56 = *(v45 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
  MEMORY[0x1EEE9AC00](v55);
  *(&v57 - 4) = v45;
  *(&v57 - 3) = v54;
  *(&v57 - 2) = v31;
  os_unfair_lock_lock(v56 + 17);
  sub_1D2E878E0(&v56[4]);
  os_unfair_lock_unlock(v56 + 17);
  v37(v46, v17);
  return (v44[1])(v54, v49);
}

uint64_t sub_1D2E840AC(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CaptionEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738C88, &unk_1D2EF25E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  sub_1D2E5D050(a1, &v24, &qword_1EC738C60, &qword_1D2EF25C0);
  if (*(&v25 + 1) == 1)
  {
    return sub_1D2E5D0B8(&v24, &qword_1EC738C60, &qword_1D2EF25C0);
  }

  v29 = v27;
  v28[0] = v24;
  v28[1] = v25;
  v28[2] = v26;
  if (v27 == 1)
  {
    v23 = OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_eventStreamContinuation;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610) + 48);
    v18 = sub_1D2EE3EF8();
    (*(*(v18 - 8) + 16))(v10, a4, v18);
    *&v10[v17] = a2;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738C68, &unk_1D2EF25C8);
    sub_1D2EE4CD8();
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v19 = sub_1D2EE4618();
    __swift_project_value_buffer(v19, qword_1EDED2DB8);
    v20 = sub_1D2EE45F8();
    v21 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D2E46000, v20, v21, "Dropping language detection event", v22, 2u);
      MEMORY[0x1D38AF660](v22, -1, -1);
    }
  }

  return sub_1D2E87834(v28);
}

void sub_1D2E84508()
{
  sub_1D2E84654(319, &qword_1EC738BC0, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D2E84654(319, &qword_1EC738BC8, MEMORY[0x1E69E8660]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D2E84654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CaptionEvent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D2E8490C(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for CaptionEvent(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738C88, &unk_1D2EF25E0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  sub_1D2E5D050(a1, &v41, &qword_1EC738C60, &qword_1D2EF25C0);
  if (*(&v42 + 1) == 1)
  {
    return sub_1D2E5D0B8(&v41, &qword_1EC738C60, &qword_1D2EF25C0);
  }

  v38 = v11;
  sub_1D2E5D0B8(a1, &qword_1EC738C60, &qword_1D2EF25C0);
  v45[0] = v41;
  v45[1] = v42;
  v46 = v43;
  v47 = v44;
  if (*(&v43 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
    sub_1D2EE4D38();
  }

  v47 = 1;
  if (a2)
  {
    *v15 = v39;
    *(v15 + 1) = a5;
    v15[16] = 1;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738C68, &unk_1D2EF25C8);
    sub_1D2EE4CD8();
    (*(v17 + 8))(v20, v16);
    v47 = 0;
  }

  else
  {
    v37 = a1;
    v22 = v39;
    if (sub_1D2E84E38(v39, a5))
    {
      *v15 = v22;
      *(v15 + 1) = a5;
      v15[16] = 0;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738C68, &unk_1D2EF25C8);
      sub_1D2EE4CD8();
      (*(v17 + 8))(v20, v16);
      a1 = v37;
    }

    else
    {
      if (qword_1EDECFF10 != -1)
      {
        swift_once();
      }

      v23 = sub_1D2EE4618();
      __swift_project_value_buffer(v23, qword_1EDED2DB8);
      v24 = sub_1D2EE45F8();
      v25 = sub_1D2EE4DD8();
      v26 = os_log_type_enabled(v24, v25);
      a1 = v37;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v41 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1D2E685B0(0xD00000000000002BLL, 0x80000001D2EE6CD0, &v41);
        _os_log_impl(&dword_1D2E46000, v24, v25, "%s task added", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1D38AF660](v28, -1, -1);
        MEMORY[0x1D38AF660](v27, -1, -1);
      }

      v30 = v39;
      v29 = v40;
      v31 = sub_1D2EE4CB8();
      v32 = v38;
      (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      *(v33 + 48) = a5;
      *(v33 + 56) = 0;

      v34 = v29;
      v35 = sub_1D2E85698(0, 0, v32, &unk_1D2EF25F8, v33);
      sub_1D2E5D0B8(v32, &qword_1EC739040, &qword_1D2EF2460);

      *(&v46 + 1) = v35;
    }
  }

  sub_1D2E877FC(v45, a1);
  return sub_1D2E87834(v45);
}

uint64_t sub_1D2E84E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_useCharacterCountCriteria) == 1)
  {
    result = sub_1D2EE4AD8();
    v5 = *(v2 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_config + 24);
    v6 = (v5 * 3) >> 64;
    v7 = 3 * v5;
    if (v6 != v7 >> 63)
    {
      __break(1u);
      return result;
    }

    v8 = result < v7;
  }

  else
  {
    v17[0] = a1;
    v17[1] = a2;
    v9 = sub_1D2E4EED4();
    v10 = *(MEMORY[0x1D38AE920](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v9) + 16);

    v8 = v10 < *(v3 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_config + 24);
  }

  v11 = !v8;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v12 = sub_1D2EE4618();
  __swift_project_value_buffer(v12, qword_1EDED2DB8);
  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1D2E685B0(0xD000000000000022, 0x80000001D2EE6D00, v17);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v11;
    _os_log_impl(&dword_1D2E46000, v13, v14, "%s=%{BOOL}d", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1D38AF660](v16, -1, -1);
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  return v11;
}

uint64_t sub_1D2E85020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 120) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  v8 = type metadata accessor for CaptionEvent(0);
  *(v7 + 40) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 48) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738C88, &unk_1D2EF25E0);
  *(v7 + 56) = v10;
  v11 = *(v10 - 8);
  *(v7 + 64) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  v13 = sub_1D2EE5088();
  *(v7 + 80) = v13;
  v14 = *(v13 - 8);
  *(v7 + 88) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E85180, 0, 0);
}

uint64_t sub_1D2E85180()
{
  v1 = v0[12];
  v2 = *(v0[2] + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_config + 32);
  v3 = 1000000000000000 * v2;
  v4 = (v2 * 0x38D7EA4C68000uLL) >> 64;
  v5 = (v2 >> 63) & 0xFFFC72815B398000;
  sub_1D2EE52E8();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1D2E85288;
  v7 = v0[12];

  return (sub_1D2EB3930)(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_1D2E85288()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D2E8561C;
  }

  else
  {
    v6 = sub_1D2E853F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D2E853F8()
{
  v20 = v0;
  if (sub_1D2EE4D48())
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v1 = sub_1D2EE4618();
    __swift_project_value_buffer(v1, qword_1EDED2DB8);
    v2 = sub_1D2EE45F8();
    v3 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_1D2E685B0(0xD00000000000002BLL, 0x80000001D2EE6CD0, &v19);
      _os_log_impl(&dword_1D2E46000, v2, v3, "%s task cancelled", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x1D38AF660](v5, -1, -1);
      MEMORY[0x1D38AF660](v4, -1, -1);
    }
  }

  else
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 120);
    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    v13 = *(v0 + 16);
    *v9 = *(v0 + 24);
    *(v9 + 8) = v12;
    *(v9 + 16) = v10;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738C68, &unk_1D2EF25C8);
    sub_1D2EE4CD8();
    (*(v7 + 8))(v6, v8);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D2E8561C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_1D2E85698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D2E5D050(a3, v24 - v10, &qword_1EC739040, &qword_1D2EF2460);
  v12 = sub_1D2EE4CB8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D2E5D0B8(v11, &qword_1EC739040, &qword_1D2EF2460);
  }

  else
  {
    sub_1D2EE4CA8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D2EE4C28();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D2EE4AB8() + 32;

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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t get_enum_tag_for_layout_string_16CallIntelligence16CaptionProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D2E85A20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D2E85A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1D2E85B40()
{
  sub_1D2E85BC8();
  if (v0 <= 0x3F)
  {
    sub_1D2E85C28();
    if (v1 <= 0x3F)
    {
      sub_1D2E85C90();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D2E85BC8()
{
  if (!qword_1EC738C40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC738C40);
    }
  }
}

void sub_1D2E85C28()
{
  if (!qword_1EC738C48)
  {
    sub_1D2EE3EF8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC738C48);
    }
  }
}

unint64_t sub_1D2E85C90()
{
  result = qword_1EC738C50;
  if (!qword_1EC738C50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC738C50);
  }

  return result;
}

id sub_1D2E85CF4()
{
  v0 = sub_1D2EE3F78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E6986578]) init];
  [v5 setUsage_];
  [v5 setLanguageDetectorEnabled_];
  sub_1D2EE3F38();
  v6 = sub_1D2EE3F08();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  [v5 setTaskHint_];
  [v5 setLanguageDetectorReportingFrequency_];
  return v5;
}

unint64_t sub_1D2E85E48()
{
  result = qword_1EC738C80;
  if (!qword_1EC738C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC738C80);
  }

  return result;
}

id sub_1D2E85E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v61 = a3;
  v65 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_1D2EE3F58();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D2EE3F78();
  v57 = *(v59 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738598, &unk_1D2EF2600);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v52 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CB8, &qword_1D2EF2620);
  v11 = *(v66 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738C68, &unk_1D2EF25C8);
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CB0, &qword_1D2EF2618);
  v68 = *(v19 - 8);
  v20 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - v21;
  v23 = OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 1;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738CC0, &qword_1D2EF2628);
  v24 = swift_allocObject();
  *(v24 + 68) = 0;
  sub_1D2E5D050(&v70, v24 + 16, &qword_1EC738C60, &qword_1D2EF25C0);
  v25 = v53;
  sub_1D2E5D0B8(&v70, &qword_1EC738C60, &qword_1D2EF25C0);
  v26 = v55;
  *&v55[v23] = v24;
  v27 = v15;
  v28 = v26;
  type metadata accessor for CaptionEvent(0);
  v29 = v66;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8650], v66);
  sub_1D2EE4CC8();
  (*(v11 + 8))(v14, v29);
  v30 = *(v68 + 16);
  v64 = v22;
  v66 = v19;
  v31 = v19;
  v32 = v54;
  v30(&v28[OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_eventStream], v22, v31);
  (*(v25 + 16))(&v28[OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_eventStreamContinuation], v18, v27);
  v33 = &v28[OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionClientFactory];
  v34 = v60;
  v35 = v61;
  *v33 = v60;
  v33[1] = v35;
  sub_1D2E48CE8(v34);
  v36 = v56;
  sub_1D2EE3F38();
  v37 = v58;
  sub_1D2EE3F68();
  (*(v57 + 8))(v36, v59);
  sub_1D2EE3F48();
  (*(v62 + 8))(v37, v63);
  v38 = sub_1D2EE3EF8();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v32, 1, v38) == 1)
  {
    v40 = sub_1D2E5D0B8(v32, &qword_1EC738598, &unk_1D2EF2600);
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  else
  {
    v41 = sub_1D2EE3ED8();
    v42 = v43;
    v40 = (*(v39 + 8))(v32, v38);
  }

  v70 = v41;
  v71 = v42;
  MEMORY[0x1EEE9AC00](v40);
  *(&v52 - 2) = &v70;
  v44 = sub_1D2E7B87C(sub_1D2E87900, (&v52 - 4), &unk_1F4E912E0);
  swift_arrayDestroy();

  v28[OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_useCharacterCountCriteria] = v44 & 1;
  v45 = &v28[OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_config];
  v46 = v65;
  v47 = *(v65 + 80);
  *(v45 + 4) = *(v65 + 64);
  *(v45 + 5) = v47;
  *(v45 + 6) = *(v46 + 96);
  *(v45 + 14) = *(v46 + 112);
  v48 = *(v46 + 16);
  *v45 = *v46;
  *(v45 + 1) = v48;
  v49 = *(v46 + 48);
  *(v45 + 2) = *(v46 + 32);
  *(v45 + 3) = v49;
  v69.receiver = v28;
  v69.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v69, sel_init);
  (*(v25 + 8))(v18, v27);
  (*(v68 + 8))(v64, v66);
  return v50;
}

uint64_t sub_1D2E86560()
{
  v0 = type metadata accessor for CaptionEvent(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738C88, &unk_1D2EF25E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v9 = sub_1D2EE4618();
  __swift_project_value_buffer(v9, qword_1EDED2DB8);
  v10 = sub_1D2EE45F8();
  v11 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1D2E685B0(0xD000000000000018, 0x80000001D2EE6E50, &v18);
    _os_log_impl(&dword_1D2E46000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  sub_1D2E876D0();
  v14 = swift_allocError();
  *v15 = 5;
  *v3 = v14;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738C68, &unk_1D2EF25C8);
  sub_1D2EE4CD8();
  (*(v5 + 8))(v8, v4);
  return sub_1D2EE4CE8();
}

void sub_1D2E86810(char a1)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EDED2DB8);
  oslog = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_1D2E685B0(0xD000000000000025, 0x80000001D2EE6E20, &v7);
    *(v4 + 12) = 1024;
    *(v4 + 14) = a1 & 1;
    _os_log_impl(&dword_1D2E46000, oslog, v3, "%s gibberish=%{BOOL}d", v4, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }
}

void sub_1D2E8696C()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2EE4618();
  __swift_project_value_buffer(v0, qword_1EDED2DB8);
  oslog = sub_1D2EE45F8();
  v1 = sub_1D2EE4DD8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_1D2E685B0(0xD000000000000028, 0x80000001D2EE6DF0, &v8);
    *(v2 + 12) = 2080;
    type metadata accessor for AVCCaptionsReason(0);
    v4 = sub_1D2EE4AA8();
    v6 = sub_1D2E685B0(v4, v5, &v8);

    *(v2 + 14) = v6;
    _os_log_impl(&dword_1D2E46000, oslog, v1, "%s reason=%s", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v3, -1, -1);
    MEMORY[0x1D38AF660](v2, -1, -1);
  }

  else
  {
  }
}

void sub_1D2E86B2C()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2EE4618();
  __swift_project_value_buffer(v0, qword_1EDED2DB8);
  oslog = sub_1D2EE45F8();
  v1 = sub_1D2EE4DD8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_1D2E685B0(0xD000000000000029, 0x80000001D2EE6DC0, &v8);
    *(v2 + 12) = 2080;
    type metadata accessor for AVCCaptionsReason(0);
    v4 = sub_1D2EE4AA8();
    v6 = sub_1D2E685B0(v4, v5, &v8);

    *(v2 + 14) = v6;
    _os_log_impl(&dword_1D2E46000, oslog, v1, "%s reason=%s", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v3, -1, -1);
    MEMORY[0x1D38AF660](v2, -1, -1);
  }

  else
  {
  }
}

void sub_1D2E86CEC(char a1, void *a2)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  v5 = a2;
  oslog = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_1D2E685B0(0xD00000000000002ALL, 0x80000001D2EE6D60, &v15);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    *(v7 + 18) = 2080;
    if (a2)
    {
      v9 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      v10 = sub_1D2EE4AA8();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_1D2E685B0(v10, v12, &v15);

    *(v7 + 20) = v13;
    _os_log_impl(&dword_1D2E46000, oslog, v6, "%s enabled=%{BOOL}d error=%s", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D2E86EFC(char a1, void *a2)
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  v5 = a2;
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_1D2E685B0(0xD00000000000002BLL, 0x80000001D2EE6D30, &v16);
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    *(v8 + 18) = 2080;
    if (a2)
    {
      v10 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      v11 = sub_1D2EE4AA8();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_1D2E685B0(v11, v13, &v16);

    *(v8 + 20) = v14;
    _os_log_impl(&dword_1D2E46000, v6, v7, "%s enabled=%{BOOL}d error=%s", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v9, -1, -1);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738C68, &unk_1D2EF25C8);
  return sub_1D2EE4CE8();
}

void sub_1D2E8710C(void *a1)
{
  v2 = v1;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2DB8);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1D2E685B0(0xD00000000000002BLL, 0x80000001D2EE6CD0, &v18);
    _os_log_impl(&dword_1D2E46000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v9 = [a1 text];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D2EE4A68();
    v13 = v12;

    LOBYTE(v10) = [a1 utteranceComplete];
    v14 = *&v2[OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex];
    os_unfair_lock_lock(v14 + 17);
    sub_1D2E8490C(&v14[4], v10, v2, v11, v13);
    os_unfair_lock_unlock(v14 + 17);
  }

  else
  {
    oslog = sub_1D2EE45F8();
    v15 = sub_1D2EE4DC8();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D2E46000, oslog, v15, "Captions text is nil. Returning.", v16, 2u);
      MEMORY[0x1D38AF660](v16, -1, -1);
    }
  }
}

uint64_t sub_1D2E87384(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CaptionEvent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738C88, &unk_1D2EF25E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - v11;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v13 = sub_1D2EE4618();
  __swift_project_value_buffer(v13, qword_1EDED2DB8);
  v14 = a1;
  v15 = sub_1D2EE45F8();
  v16 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v15, v16))
  {
    v27[0] = v8;
    v27[1] = v2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_1D2E685B0(0xD000000000000033, 0x80000001D2EE6C90, &v28);
    *(v17 + 12) = 2080;
    if (a1)
    {
      v27[2] = a1;
      v19 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      v20 = sub_1D2EE4AA8();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = sub_1D2E685B0(v20, v22, &v28);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_1D2E46000, v15, v16, "%s error=%s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v18, -1, -1);
    MEMORY[0x1D38AF660](v17, -1, -1);

    v8 = v27[0];
  }

  else
  {
  }

  sub_1D2E876D0();
  v24 = swift_allocError();
  *v25 = 7;
  *v7 = v24;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738C68, &unk_1D2EF25C8);
  sub_1D2EE4CD8();
  (*(v9 + 8))(v12, v8);
  return sub_1D2EE4CE8();
}

unint64_t sub_1D2E876D0()
{
  result = qword_1EC738C90;
  if (!qword_1EC738C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738C90);
  }

  return result;
}

uint64_t sub_1D2E87724(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D2E5BA34;

  return sub_1D2E85020(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D2E87884(uint64_t a1)
{
  v2 = type metadata accessor for LanguageDetectorResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2E87948()
{
  result = sub_1D2EE3F78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2E87A04(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D2E87AD8()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if ([v0 loadWithError_])
  {
    result = v4[0];
  }

  else
  {
    v2 = v4[0];
    sub_1D2EE3CE8();

    result = swift_willThrow();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2E87BA4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E7D770;

  return v9(a1, a2);
}

uint64_t sub_1D2E87D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1D2EE4088();
}

uint64_t sub_1D2E87E6C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
    return sub_1D2EE4C48();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
    return sub_1D2EE4C58();
  }
}

uint64_t sub_1D2E87EE0(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808) - 8) + 80);

  return sub_1D2E87E6C(a1);
}

uint64_t sub_1D2E87F5C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E5BA34;

  return v9(a1, a2);
}

uint64_t sub_1D2E88094()
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Generating disclosure if needed", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = sub_1D2E88420();
  v0[3] = v6;
  v7 = sub_1D2E8870C();
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = v7 & 1;
    _os_log_impl(&dword_1D2E46000, v8, v9, "isGenerationNeeded=%{BOOL,public}d", v10, 8u);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }

  if (v7)
  {
    v11 = swift_task_alloc();
    v0[4] = v11;
    *v11 = v0;
    v11[1] = sub_1D2E882C4;
    v12 = v0[2];

    return sub_1D2E88FC8();
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D2E882C4()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2E883C0, 0, 0);
}

uint64_t sub_1D2E883C0()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_1D2E88420()
{
  v1 = sub_1D2EE3F78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EE3F38();
  sub_1D2EE3EC8();
  (*(v2 + 8))(v5, v1);
  v6 = [*(v0 + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_assistantPreferences) outputVoice];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 name];
    if (v8)
    {
      v9 = v8;
      sub_1D2EE4A68();

      v10 = [v7 languageCode];
      if (v10)
      {
        v11 = v10;

        sub_1D2EE4A68();
      }

      else
      {
      }
    }
  }

  v12 = objc_allocWithZone(sub_1D2EE40F8());
  v13 = sub_1D2EE40D8();
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v14 = sub_1D2EE4618();
  __swift_project_value_buffer(v14, qword_1EDED2DB8);
  v15 = v13;
  v16 = sub_1D2EE45F8();
  v17 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v15;
    v26 = v19;
    *v18 = 136315138;
    v20 = v15;
    v21 = sub_1D2EE4AA8();
    v23 = sub_1D2E685B0(v21, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1D2E46000, v16, v17, "Current Siri voice = %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38AF660](v19, -1, -1);
    MEMORY[0x1D38AF660](v18, -1, -1);
  }

  return v15;
}

uint64_t sub_1D2E8870C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_defaults);
  os_unfair_lock_lock((v1 + 24));
  sub_1D2E8A984((v1 + 16), &v29);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v30;
  if (!v30)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v21 = sub_1D2EE4618();
    __swift_project_value_buffer(v21, qword_1EDED2DB8);
    v22 = sub_1D2EE45F8();
    v23 = sub_1D2EE4DD8();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_21;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "No existing disclosure hash";
    goto LABEL_20;
  }

  v3 = v29;
  v4 = [objc_opt_self() defaultManager];
  v5 = v0 + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_persistenceConfiguration;
  v6 = v5 + *(type metadata accessor for PersistenceConfiguration() + 24);
  sub_1D2EE3D58();
  v7 = sub_1D2EE4A38();

  LODWORD(v6) = [v4 fileExistsAtPath_];

  if (!v6)
  {

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v26 = sub_1D2EE4618();
    __swift_project_value_buffer(v26, qword_1EDED2DB8);
    v22 = sub_1D2EE45F8();
    v23 = sub_1D2EE4DD8();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_21;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "No existing disclosure file on disk";
LABEL_20:
    _os_log_impl(&dword_1D2E46000, v22, v23, v25, v24, 2u);
    MEMORY[0x1D38AF660](v24, -1, -1);
LABEL_21:

    v20 = 1;
    return v20 & 1;
  }

  v8 = sub_1D2E88C24();
  v10 = v9;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D2EE4618();
  __swift_project_value_buffer(v11, qword_1EDED2DB8);

  v12 = sub_1D2EE45F8();
  v13 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1D2E685B0(v3, v2, &v29);
    _os_log_impl(&dword_1D2E46000, v12, v13, "currentDisclosureHash=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1D38AF660](v15, -1, -1);
    MEMORY[0x1D38AF660](v14, -1, -1);
  }

  v16 = sub_1D2EE45F8();
  v17 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D2E685B0(v8, v10, &v29);
    _os_log_impl(&dword_1D2E46000, v16, v17, "newDisclosureHash=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38AF660](v19, -1, -1);
    MEMORY[0x1D38AF660](v18, -1, -1);
  }

  if (v3 == v8 && v2 == v10)
  {

    v20 = 0;
  }

  else
  {
    v28 = sub_1D2EE5288();

    v20 = v28 ^ 1;
  }

  return v20 & 1;
}

void sub_1D2E88BA0(void **a1, uint64_t a2)
{
  v3 = *a1;
  sub_1D2E88C24();
  v4 = sub_1D2EE4A38();

  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = sub_1D2EE4A38();
  [v3 setValue:v4 forKey:v7];
}

uint64_t sub_1D2E88C24()
{
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  MEMORY[0x1D38AE570](95, 0xE100000000000000);
  v1 = sub_1D2EE40E8();
  MEMORY[0x1D38AE570](v1);

  MEMORY[0x1D38AE570](95, 0xE100000000000000);
  v2 = sub_1D2EE40B8();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  MEMORY[0x1D38AE570](v2, v4);

  MEMORY[0x1D38AE570](95, 0xE100000000000000);
  sub_1D2EE40C8();
  sub_1D2EE40A8();
  v5 = sub_1D2EE5258();
  MEMORY[0x1D38AE570](v5);

  return v7;
}

void sub_1D2E88D28(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = sub_1D2EE4A38();
  v8 = [v4 stringForKey_];

  if (v8)
  {
    v9 = sub_1D2EE4A68();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *a3 = v9;
  a3[1] = v11;
}

uint64_t sub_1D2E88DBC()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_1D2E88F6C(v0 + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_persistenceConfiguration);

  v3 = *(v0 + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_defaults);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DisclosureGenerator()
{
  result = qword_1EDECFA58;
  if (!qword_1EDECFA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2E88EB4()
{
  result = type metadata accessor for PersistenceConfiguration();
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

uint64_t sub_1D2E88F6C(uint64_t a1)
{
  v2 = type metadata accessor for PersistenceConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2E88FC8()
{
  v11 = *MEMORY[0x1E69E9840];
  v1[19] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393B0, &unk_1D2EF28C0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = sub_1D2EE3CF8();
  v1[23] = v3;
  v4 = *(v3 - 8);
  v1[24] = v4;
  v5 = *(v4 + 64) + 15;
  v1[25] = swift_task_alloc();
  v6 = sub_1D2EE3D88();
  v1[26] = v6;
  v7 = *(v6 - 8);
  v1[27] = v7;
  v8 = *(v7 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D2E8919C, 0, 0);
}

uint64_t sub_1D2E8919C()
{
  v116 = v0;
  v115[1] = *MEMORY[0x1E69E9840];
  v1 = v0[33];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[19] + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_persistenceConfiguration;
  v5 = *(type metadata accessor for PersistenceConfiguration() + 24);
  v6 = *(v3 + 16);
  v0[34] = v6;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v114 = v6;
  v6(v1, (v4 + v5), v2);
  v7 = objc_opt_self();
  v0[36] = v7;
  v8 = 0x1E8423000uLL;
  v9 = [v7 defaultManager];
  sub_1D2EE3D58();
  v10 = sub_1D2EE4A38();

  v11 = 0x1E8423000uLL;
  LOBYTE(v3) = [v9 fileExistsAtPath_];

  if ((v3 & 1) == 0)
  {
    v12 = [v7 defaultManager];
    v13 = sub_1D2EE3D28();
    v0[13] = 0;
    v14 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v0 + 13];

    v15 = v0[13];
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v17 = v15;
      v18 = sub_1D2EE3CE8();

      swift_willThrow();
      if (qword_1EDECFF10 != -1)
      {
        swift_once();
      }

      v19 = sub_1D2EE4618();
      __swift_project_value_buffer(v19, qword_1EDED2DB8);
      v20 = v18;
      v21 = sub_1D2EE45F8();
      v22 = sub_1D2EE4DB8();

      if (os_log_type_enabled(v21, v22))
      {
        bufa = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v115[0] = v110;
        *bufa = 136315138;
        swift_getErrorValue();
        v23 = v0[8];
        v24 = v0[9];
        v25 = sub_1D2EE4E58();
        loga = v22;
        v26 = *(v25 - 8);
        v27 = *(v26 + 64) + 15;
        v28 = swift_task_alloc();
        v29 = *(v24 - 8);
        (*(v29 + 16))(v28, v23, v24);
        (*(v29 + 56))(v28, 0, 1, v24);
        v30 = sub_1D2EE2754(v28, v24);
        v32 = v31;
        v33 = v25;
        v8 = 0x1E8423000;
        (*(v26 + 8))(v28, v33);

        v34 = sub_1D2E685B0(v30, v32, v115);

        *(bufa + 4) = v34;
        v11 = 0x1E8423000;
        _os_log_impl(&dword_1D2E46000, v21, loga, "Failed to create directry structure with error %s", bufa, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v110);
        MEMORY[0x1D38AF660](v110, -1, -1);
        MEMORY[0x1D38AF660](bufa, -1, -1);
      }

      else
      {
      }
    }
  }

  v35 = v0[33];
  v36 = [v7 *(v8 + 2640)];
  sub_1D2EE3D58();
  v37 = sub_1D2EE4A38();

  LODWORD(v35) = [v36 *(v11 + 2648)];

  if (v35)
  {
    v38 = v0[33];
    v39 = [v7 *(v8 + 2640)];
    v40 = sub_1D2EE3D28();
    v0[17] = 0;
    v41 = [v39 removeItemAtURL:v40 error:v0 + 17];

    v42 = v0[17];
    if (v41)
    {
      v43 = v42;
    }

    else
    {
      v44 = v42;
      v45 = sub_1D2EE3CE8();

      swift_willThrow();
      if (qword_1EDECFF10 != -1)
      {
        swift_once();
      }

      v46 = v0[33];
      v47 = v0[28];
      v48 = v0[26];
      v49 = sub_1D2EE4618();
      __swift_project_value_buffer(v49, qword_1EDED2DB8);
      v114(v47, v46, v48);
      v50 = sub_1D2EE45F8();
      v51 = sub_1D2EE4DB8();
      v52 = os_log_type_enabled(v50, v51);
      v54 = v0[27];
      v53 = v0[28];
      v55 = v0[26];
      if (v52)
      {
        v56 = swift_slowAlloc();
        bufb = swift_slowAlloc();
        v115[0] = bufb;
        *v56 = 136315138;
        sub_1D2E8A854();
        logb = v50;
        v57 = v8;
        v58 = sub_1D2EE5258();
        v111 = v45;
        v60 = v59;
        (*(v54 + 8))(v53, v55);
        v61 = v58;
        v8 = v57;
        v62 = sub_1D2E685B0(v61, v60, v115);

        *(v56 + 4) = v62;
        _os_log_impl(&dword_1D2E46000, logb, v51, "Failed to remove existing disclosure at url %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(bufb);
        MEMORY[0x1D38AF660](bufb, -1, -1);
        MEMORY[0x1D38AF660](v56, -1, -1);
      }

      else
      {

        (*(v54 + 8))(v53, v55);
      }
    }
  }

  v64 = v0[31];
  v63 = v0[32];
  v65 = v0[27];
  bufc = v63;
  v112 = v0[26];
  v66 = v0[24];
  v67 = v0[25];
  v68 = v0[22];
  v69 = v0[23];
  v70 = v0[19];
  v71 = [v7 *(v8 + 2640)];
  v72 = [v71 temporaryDirectory];

  sub_1D2EE3D48();
  v0[11] = 0xD00000000000001ALL;
  v0[12] = 0x80000001D2EE6F70;
  (*(v66 + 104))(v67, *MEMORY[0x1E6968F70], v69);
  sub_1D2E4EED4();
  sub_1D2EE3D78();
  (*(v66 + 8))(v67, v69);
  v73 = *(v65 + 8);
  v0[37] = v73;
  v0[38] = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v73(v64, v112);
  v74 = sub_1D2E88420();
  v0[39] = v74;
  v75 = *(v70 + 16);
  v76 = *(v70 + 24);
  objc_allocWithZone(sub_1D2EE4118());

  v77 = v74;
  log = v75;
  v78 = sub_1D2EE4108();
  v0[40] = v78;
  v114(v68, bufc, v112);
  (*(v65 + 56))(v68, 0, 1, v112);
  sub_1D2EE4078();
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v79 = v0[19];
  v80 = sub_1D2EE4618();
  v0[41] = __swift_project_value_buffer(v80, qword_1EDED2DB8);
  v81 = v78;

  v82 = sub_1D2EE45F8();
  v83 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v82, v83))
  {
    v113 = v83;
    v102 = v73;
    v85 = v0[26];
    v84 = v0[27];
    v87 = v0[20];
    v86 = v0[21];
    v88 = swift_slowAlloc();
    buf = swift_slowAlloc();
    v115[0] = buf;
    *v88 = 136315394;
    *(v88 + 4) = sub_1D2E685B0(log, v76, v115);
    *(v88 + 12) = 2080;
    sub_1D2EE4068();
    sub_1D2E8A8AC(v86, v87);
    if ((*(v84 + 48))(v87, 1, v85) == 1)
    {
      sub_1D2E8A91C(v0[20]);
      v89 = 0xE300000000000000;
      v90 = 7104878;
    }

    else
    {
      v92 = v0[30];
      v91 = v0[31];
      v93 = v0[26];
      (*(v0[27] + 32))(v92, v0[20], v93);
      v114(v91, v92, v93);
      v90 = sub_1D2EE4AA8();
      v89 = v94;
      v102(v92, v93);
    }

    sub_1D2E8A91C(v0[21]);
    v95 = sub_1D2E685B0(v90, v89, v115);

    *(v88 + 14) = v95;
    _os_log_impl(&dword_1D2E46000, v82, v113, "Generating disclosure for string %s at url %s", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](buf, -1, -1);
    MEMORY[0x1D38AF660](v88, -1, -1);
  }

  v96 = *(v0[19] + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_speechSynthesizer);
  v97 = swift_task_alloc();
  v0[42] = v97;
  *(v97 + 16) = v96;
  *(v97 + 24) = v81;
  v98 = *(MEMORY[0x1E69E8920] + 4);
  v99 = swift_task_alloc();
  v0[43] = v99;
  *v99 = v0;
  v99[1] = sub_1D2E89CE4;
  v100 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D2E89CE4()
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_1D2E8A49C;
  }

  else
  {
    v5 = *(v2 + 336);

    v4 = sub_1D2E89E34;
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D2E89E34()
{
  v87 = v0;
  v86[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 328);
  v2 = *(v0 + 280);
  (*(v0 + 272))(*(v0 + 232), *(v0 + 264), *(v0 + 208));
  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 296);
  v7 = *(v0 + 304);
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  if (v5)
  {
    v84 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v86[0] = v11;
    *v10 = 136315138;
    sub_1D2E8A854();
    v12 = sub_1D2EE5258();
    v14 = v13;
    v6(v8, v9);
    v15 = sub_1D2E685B0(v12, v14, v86);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D2E46000, v3, v84, "Successfully generated disclosure at url %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D38AF660](v11, -1, -1);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }

  else
  {

    v6(v8, v9);
  }

  v16 = *(v0 + 328);
  v17 = sub_1D2EE45F8();
  v18 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D2E46000, v17, v18, "Moving disclosure to permanent location", v19, 2u);
    MEMORY[0x1D38AF660](v19, -1, -1);
  }

  v20 = *(v0 + 288);
  v21 = *(v0 + 256);
  v22 = *(v0 + 264);

  v23 = [v20 defaultManager];
  v24 = sub_1D2EE3D28();
  v25 = sub_1D2EE3D28();
  *(v0 + 120) = 0;
  LODWORD(v22) = [v23 moveItemAtURL:v24 toURL:v25 error:v0 + 120];

  v26 = *(v0 + 120);
  if (v22)
  {
    v27 = *(v0 + 352);
    v28 = *(v0 + 312);
    v29 = *(v0 + 152);
    v30 = *(v29 + OBJC_IVAR____TtC16CallIntelligence19DisclosureGenerator_defaults);
    v31 = swift_task_alloc();
    *(v31 + 16) = v29;
    *(v31 + 24) = v28;
    v32 = v26;
    os_unfair_lock_lock((v30 + 24));
    sub_1D2E8A838((v30 + 16));
    os_unfair_lock_unlock((v30 + 24));
    if (v27)
    {
      v33 = *MEMORY[0x1E69E9840];
      return;
    }

    v59 = *(v0 + 320);
    v61 = *(v0 + 296);
    v60 = *(v0 + 304);
    v63 = *(v0 + 256);
    v62 = *(v0 + 264);
    v64 = *(v0 + 208);

    v61(v63, v64);
    v61(v62, v64);
  }

  else
  {
    v34 = *(v0 + 328);
    v35 = v26;
    v36 = sub_1D2EE3CE8();

    swift_willThrow();
    v37 = v36;
    v38 = sub_1D2EE45F8();
    LOBYTE(v34) = sub_1D2EE4DB8();

    v85 = v34;
    v39 = os_log_type_enabled(v38, v34);
    v40 = *(v0 + 312);
    v41 = *(v0 + 320);
    v43 = *(v0 + 296);
    v42 = *(v0 + 304);
    v45 = *(v0 + 256);
    v44 = *(v0 + 264);
    v46 = *(v0 + 208);
    if (v39)
    {
      v83 = *(v0 + 312);
      v47 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v86[0] = v79;
      *v47 = 136315138;
      swift_getErrorValue();
      v81 = v41;
      v49 = *(v0 + 40);
      v48 = *(v0 + 48);
      v82 = v44;
      v50 = sub_1D2EE4E58();
      v80 = v45;
      v51 = *(v50 - 8);
      v52 = *(v51 + 64) + 15;
      v77 = v46;
      v78 = v43;
      v53 = swift_task_alloc();
      v54 = *(v48 - 8);
      (*(v54 + 16))(v53, v49, v48);
      (*(v54 + 56))(v53, 0, 1, v48);
      v55 = sub_1D2EE2754(v53, v48);
      v57 = v56;
      (*(v51 + 8))(v53, v50);

      v58 = sub_1D2E685B0(v55, v57, v86);

      *(v47 + 4) = v58;
      _os_log_impl(&dword_1D2E46000, v38, v85, "Failed to move disclosure %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x1D38AF660](v79, -1, -1);
      MEMORY[0x1D38AF660](v47, -1, -1);

      v78(v80, v77);
      v78(v82, v77);
    }

    else
    {

      v43(v45, v46);
      v43(v44, v46);
    }
  }

  v66 = *(v0 + 256);
  v65 = *(v0 + 264);
  v68 = *(v0 + 240);
  v67 = *(v0 + 248);
  v70 = *(v0 + 224);
  v69 = *(v0 + 232);
  v71 = *(v0 + 200);
  v73 = *(v0 + 168);
  v72 = *(v0 + 176);
  v74 = *(v0 + 160);

  v75 = *(v0 + 8);
  v76 = *MEMORY[0x1E69E9840];

  v75();
}

uint64_t sub_1D2E8A49C()
{
  v51 = v0;
  v50[1] = *MEMORY[0x1E69E9840];
  v1 = v0[44];
  v3 = v0[41];
  v2 = v0[42];

  v4 = v1;
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[44];
    v42 = v7;
    v43 = v0[40];
    v46 = v0[39];
    v47 = v0[37];
    v48 = v0[38];
    v49 = v0[33];
    v44 = v0[26];
    v45 = v0[32];
    v8 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50[0] = v41;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = sub_1D2EE4E58();
    v12 = *(v11 - 8);
    v13 = *(v12 + 64) + 15;
    v14 = swift_task_alloc();
    v15 = *(v9 - 8);
    (*(v15 + 16))(v14, v10, v9);
    (*(v15 + 56))(v14, 0, 1, v9);
    v16 = sub_1D2EE2754(v14, v9);
    v18 = v17;
    (*(v12 + 8))(v14, v11);

    v19 = sub_1D2E685B0(v16, v18, v50);

    *(v8 + 4) = v19;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Failed to generate disclosure %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1D38AF660](v41, -1, -1);
    MEMORY[0x1D38AF660](v8, -1, -1);

    v47(v45, v44);
    v47(v49, v44);
  }

  else
  {
    v20 = v0[44];
    v22 = v0[39];
    v21 = v0[40];
    v24 = v0[37];
    v23 = v0[38];
    v26 = v0[32];
    v25 = v0[33];
    v27 = v0[26];

    v24(v26, v27);
    v24(v25, v27);
  }

  v29 = v0[32];
  v28 = v0[33];
  v31 = v0[30];
  v30 = v0[31];
  v33 = v0[28];
  v32 = v0[29];
  v34 = v0[25];
  v36 = v0[21];
  v35 = v0[22];
  v37 = v0[20];

  v38 = v0[1];
  v39 = *MEMORY[0x1E69E9840];

  return v38();
}

uint64_t sub_1D2E8A830(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D2E87D1C(a1);
}

unint64_t sub_1D2E8A854()
{
  result = qword_1EDECFD88;
  if (!qword_1EDECFD88)
  {
    sub_1D2EE3D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECFD88);
  }

  return result;
}

uint64_t sub_1D2E8A8AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393B0, &unk_1D2EF28C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2E8A91C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393B0, &unk_1D2EF28C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2E8A9B4()
{
  v1 = 0x6975716552746F6ELL;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1D2E8AA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2E8BE24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2E8AA70(uint64_t a1)
{
  v2 = sub_1D2E8B100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E8AAAC(uint64_t a1)
{
  v2 = sub_1D2E8B100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E8AAE8(uint64_t a1)
{
  v2 = sub_1D2E8B154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E8AB24(uint64_t a1)
{
  v2 = sub_1D2E8B154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E8AB60(uint64_t a1)
{
  v2 = sub_1D2E8B250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E8AB9C(uint64_t a1)
{
  v2 = sub_1D2E8B250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E8ABD8(uint64_t a1)
{
  v2 = sub_1D2E8B1FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E8AC14(uint64_t a1)
{
  v2 = sub_1D2E8B1FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E8AC50(uint64_t a1)
{
  v2 = sub_1D2E8B1A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E8AC8C(uint64_t a1)
{
  v2 = sub_1D2E8B1A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RequiresUserAttentionReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D08, &qword_1D2EF28D0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D10, &qword_1D2EF28D8);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D18, &qword_1D2EF28E0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D20, &qword_1D2EF28E8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D28, &qword_1D2EF28F0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E8B100();
  sub_1D2EE53C8();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1D2E8B1A8();
      v24 = v33;
      sub_1D2EE51D8();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1D2E8B154();
      v24 = v36;
      sub_1D2EE51D8();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1D2E8B1FC();
    v24 = v30;
    sub_1D2EE51D8();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1D2E8B250();
  sub_1D2EE51D8();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1D2E8B100()
{
  result = qword_1EC738D30;
  if (!qword_1EC738D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738D30);
  }

  return result;
}

unint64_t sub_1D2E8B154()
{
  result = qword_1EC738D38;
  if (!qword_1EC738D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738D38);
  }

  return result;
}

unint64_t sub_1D2E8B1A8()
{
  result = qword_1EC738D40;
  if (!qword_1EC738D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738D40);
  }

  return result;
}

unint64_t sub_1D2E8B1FC()
{
  result = qword_1EC738D48;
  if (!qword_1EC738D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738D48);
  }

  return result;
}

unint64_t sub_1D2E8B250()
{
  result = qword_1EC738D50;
  if (!qword_1EC738D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738D50);
  }

  return result;
}

uint64_t RequiresUserAttentionReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D2EE5338();
  MEMORY[0x1D38AEDD0](v1);
  return sub_1D2EE5378();
}

uint64_t RequiresUserAttentionReason.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D58, &qword_1D2EF28F8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D60, &qword_1D2EF2900);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D68, &qword_1D2EF2908);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D70, &qword_1D2EF2910);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D78, &unk_1D2EF2918);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D2E8B100();
  v21 = v53;
  sub_1D2EE53B8();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1D2EE51C8();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1D2E52DD0();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1D2EE5008();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC737F80, &qword_1D2EECD20) + 48);
      *v34 = &type metadata for RequiresUserAttentionReason;
      sub_1D2EE5148();
      sub_1D2EE4FF8();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1D2E8B1FC();
        v39 = v42;
        sub_1D2EE5138();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1D2E8B250();
        v31 = v42;
        sub_1D2EE5138();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1D2E8B1A8();
      v38 = v42;
      sub_1D2EE5138();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1D2E8B154();
      v40 = v42;
      sub_1D2EE5138();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t sub_1D2E8B9A8()
{
  result = qword_1EC738D80;
  if (!qword_1EC738D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738D80);
  }

  return result;
}

unint64_t sub_1D2E8BA60()
{
  result = qword_1EC738D88;
  if (!qword_1EC738D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738D88);
  }

  return result;
}

unint64_t sub_1D2E8BAB8()
{
  result = qword_1EC738D90;
  if (!qword_1EC738D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738D90);
  }

  return result;
}

unint64_t sub_1D2E8BB10()
{
  result = qword_1EC738D98;
  if (!qword_1EC738D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738D98);
  }

  return result;
}

unint64_t sub_1D2E8BB68()
{
  result = qword_1EC738DA0;
  if (!qword_1EC738DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738DA0);
  }

  return result;
}

unint64_t sub_1D2E8BBC0()
{
  result = qword_1EC738DA8;
  if (!qword_1EC738DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738DA8);
  }

  return result;
}

unint64_t sub_1D2E8BC18()
{
  result = qword_1EC738DB0;
  if (!qword_1EC738DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738DB0);
  }

  return result;
}

unint64_t sub_1D2E8BC70()
{
  result = qword_1EC738DB8;
  if (!qword_1EC738DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738DB8);
  }

  return result;
}

unint64_t sub_1D2E8BCC8()
{
  result = qword_1EC738DC0;
  if (!qword_1EC738DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738DC0);
  }

  return result;
}

unint64_t sub_1D2E8BD20()
{
  result = qword_1EC738DC8;
  if (!qword_1EC738DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738DC8);
  }

  return result;
}

unint64_t sub_1D2E8BD78()
{
  result = qword_1EC738DD0;
  if (!qword_1EC738DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738DD0);
  }

  return result;
}

unint64_t sub_1D2E8BDD0()
{
  result = qword_1EC738DD8;
  if (!qword_1EC738DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738DD8);
  }

  return result;
}

uint64_t sub_1D2E8BE24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6975716552746F6ELL && a2 == 0xEB00000000646572;
  if (v4 || (sub_1D2EE5288() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D2EE6FB0 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D2EE6FD0 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2EE5288();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AsyncSerialQueue.init(priority:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v29 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738DE0, &qword_1D2EF2E50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738DE8, &qword_1D2EF2E58);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v30);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738DF0, &qword_1D2EF2E60);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738DF8, &qword_1D2EF2E68);
  v21 = *(v20 - 8);
  (*(v21 + 56))(v19, 1, 1, v20);
  v31 = v4;
  (*(v4 + 16))(v7, v33, v3);
  v34 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E00, &qword_1D2EF2E70);
  sub_1D2EE4D28();
  sub_1D2E5D050(v19, v17, &qword_1EC738DF0, &qword_1D2EF2E60);
  result = (*(v21 + 48))(v17, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v21 + 32))(v29, v17, v20);
    v23 = v28;
    v24 = v30;
    (*(v8 + 16))(v28, v12, v30);
    v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    (*(v8 + 32))(v26 + v25, v23, v24);
    v27 = v32;
    sub_1D2E8CB18(0, 0, v32, &unk_1D2EF2E80, v26);

    (*(v31 + 8))(v33, v3);
    sub_1D2E5D0B8(v27, &qword_1EC739040, &qword_1D2EF2460);
    (*(v8 + 8))(v12, v24);
    return sub_1D2E5D0B8(v19, &qword_1EC738DF0, &qword_1D2EF2E60);
  }

  return result;
}

uint64_t sub_1D2E8C3B0(uint64_t a1, uint64_t a2)
{
  sub_1D2E5D0B8(a2, &qword_1EC738DF0, &qword_1D2EF2E60);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738DF8, &qword_1D2EF2E68);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_1D2E8C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E28, &unk_1D2EF2F50);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2E8C560, 0, 0);
}

uint64_t sub_1D2E8C560()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738DE8, &qword_1D2EF2E58);
  sub_1D2EE4D08();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1D2E8C62C;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1D2E8C62C()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2E8C728, 0, 0);
}

uint64_t sub_1D2E8C728()
{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v6 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1D2E8C878;

    return v6();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D2E8C878()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  sub_1D2E48CF8(v4);
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v5;
  v7[1] = sub_1D2E8C62C;
  v8 = v1[7];
  v9 = v1[5];

  return MEMORY[0x1EEE6D9C8](v1 + 2, 0, 0, v9);
}

uint64_t sub_1D2E8CA1C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738DE8, &qword_1D2EF2E58) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E8C494(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D2E8CB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D2E5D050(a3, v27 - v11, &qword_1EC739040, &qword_1D2EF2460);
  v13 = sub_1D2EE4CB8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D2E5D0B8(v12, &qword_1EC739040, &qword_1D2EF2460);
  }

  else
  {
    sub_1D2EE4CA8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D2EE4C28();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D2EE4AB8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t AsyncSerialQueue.perform(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E08, &qword_1D2EF2E90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[0] = &unk_1D2EF2EA0;
  v11[1] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738DF8, &qword_1D2EF2E68);
  sub_1D2EE4CD8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D2E8CF04(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D2E5BA34;

  return v6();
}

uint64_t sub_1D2E8CFEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2E7DE28;

  return sub_1D2E8CF04(a1, v5);
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2E8D0CC, 0, 0);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2E8D838, 0, 0);
}

uint64_t sub_1D2E8D0CC()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1D2E8D1B4;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return sub_1D2E8D5FC(v5, 0, 0, sub_1D2E8D2C4, v1);
}

uint64_t sub_1D2E8D1B4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1D2E8D324(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[4] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1D2E8D44C;

  return v11(v7);
}

uint64_t sub_1D2E8D44C()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2E8D548, 0, 0);
}

uint64_t sub_1D2E8D548()
{
  (*(*(v0[3] - 8) + 32))(*(*(v0[2] + 64) + 40), v0[4]);
  swift_continuation_resume();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D2E8D5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1D2EE4C28();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D2E8D690, v6, v8);
}

uint64_t sub_1D2E8D690()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1D2E8D738;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D2E8D738()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_1D2E8D838()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1D2E8D920;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return sub_1D2E8E0B0(v5, 0, 0, sub_1D2E8DC24, v1);
}

uint64_t sub_1D2E8D920()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2E8DA5C, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D2E8DA5C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1D2E8DAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[0] = a8;
  v21[1] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E08, &qword_1D2EF2E90);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = v21[0];
  *(v19 + 24) = v18;
  v21[2] = a9;
  v21[3] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738DF8, &qword_1D2EF2E68);
  sub_1D2EE4CD8();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1D2E8DC84(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v6 = *(a4 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v4[6] = v8;
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = sub_1D2E8DDB0;

  return v12(v8);
}

uint64_t sub_1D2E8DDB0()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1D2E8DF74;
  }

  else
  {
    v3 = sub_1D2E8DEC4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2E8DEC4()
{
  v1 = v0[4];
  (*(v0[5] + 32))(*(*(v0[3] + 64) + 40), v0[6]);
  swift_continuation_throwingResume();
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2E8DF74()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
  sub_1D2E8E01C((v0 + 2), v1, v2, v3);
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D2E8E01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return MEMORY[0x1EEE6DEE8](a2, v7);
}

uint64_t sub_1D2E8E0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1D2EE4C28();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D2E8E144, v6, v8);
}

uint64_t sub_1D2E8E144()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1D2E8E1EC;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D2E8E1EC()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t type metadata accessor for AsyncSerialQueue()
{
  result = qword_1EC738E10;
  if (!qword_1EC738E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2E8E368()
{
  sub_1D2E8E3D4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D2E8E3D4()
{
  if (!qword_1EC738E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC738E00, &qword_1D2EF2E70);
    v0 = sub_1D2EE4CF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC738E20);
    }
  }
}

uint64_t sub_1D2E8E438()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D2E5BA34;

  return sub_1D2E8DC84(v3, v5, v4, v2);
}

uint64_t sub_1D2E8E4E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D2E7DE28;

  return sub_1D2E8D324(v3, v5, v4, v2);
}

uint64_t sub_1D2E8E590(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2E7DE28;

  return sub_1D2EDB12C(a1, v5);
}

uint64_t sub_1D2E8E648(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2E5BA34;

  return sub_1D2EDB12C(a1, v5);
}

double sub_1D2E8E700()
{
  v1 = type metadata accessor for ReturnToCallPredictorEvent();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2EE4E28();
  v6 = sub_1D2EA4644(v5);
  if (!v7)
  {
    goto LABEL_6;
  }

  if (!*(v5 + 16) || (v8 = sub_1D2E4FC44(v6, v7), (v9 & 1) == 0))
  {

LABEL_6:

    sub_1D2EE0C2C(1, v4, 0.0);
    v14[3] = v1;
    v14[4] = &off_1F4E95C98;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
    sub_1D2E8E8DC(v4, boxed_opaque_existential_0);
    sub_1D2EDFAC8();
    sub_1D2E8E940(v14);
    sub_1D2E876D0();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    sub_1D2E8E994(v4);
    return v0;
  }

  v0 = *(*(v5 + 56) + 8 * v8);

  return v0;
}

uint64_t sub_1D2E8E8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnToCallPredictorEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2E8E994(uint64_t a1)
{
  v2 = type metadata accessor for ReturnToCallPredictorEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1D2E8EA38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = *v3;
  v6 = sub_1D2EE3D88();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = (&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v76 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E30, &unk_1D2EF3080);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - v17;
  v19 = sub_1D2EE3E48();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[7] = sub_1D2EDD210(MEMORY[0x1E69E7CC0]);
  *(v3 + 184) = 0;
  sub_1D2EE3E38();
  v24 = *(v15 + 56);
  *v18 = 1;
  (*(v20 + 32))(&v18[v24], v23, v19);
  v25 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E38, &qword_1D2EF3090);
  v27 = *(v26 + 52);
  v28 = (*(v26 + 48) + 3) & 0x1FFFFFFFCLL;
  v29 = swift_allocObject();
  *(v29 + ((*(*v29 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D2E91148(v18, v29 + *(*v29 + *MEMORY[0x1E69E6B68] + 16));
  v3[24] = v29;
  v30 = *(a2 + 80);
  *(v3 + 8) = *(a2 + 64);
  *(v3 + 9) = v30;
  *(v3 + 10) = *(a2 + 96);
  v3[22] = *(a2 + 112);
  v31 = *(a2 + 16);
  *(v3 + 4) = *a2;
  *(v3 + 5) = v31;
  v32 = *(a2 + 48);
  *(v3 + 6) = *(a2 + 32);
  *(v3 + 7) = v32;
  sub_1D2E911B8(a1, &v85);
  if (v86)
  {
    sub_1D2E4C014(&v85, &v87);
    sub_1D2E4C014(&v87, (v3 + 2));
    v33 = v3[19];
    if ((v33 & 0x8000000000000000) == 0)
    {
LABEL_3:
      sub_1D2E5D0B8(v25, &qword_1EC738E40, qword_1D2EF3098);
      v3[25] = MEMORY[0x1E69E7CC0];
      v3[26] = v33;
      return v3;
    }

    goto LABEL_19;
  }

  v34 = v13;
  v35 = v80;
  v36 = v81;
  sub_1D2E5D0B8(&v85, &qword_1EC738E40, qword_1D2EF3098);
  v37 = TUCurrentLocaleIdentifier();
  v15 = sub_1D2EE4A68();
  v18 = v38;

  *&v87 = v15;
  *(&v87 + 1) = v18;
  MEMORY[0x1EEE9AC00](v39);
  *(&v76 - 2) = &v87;
  v40 = v82;
  v41 = sub_1D2E7B87C(sub_1D2E91228, (&v76 - 4), &unk_1F4E91230);
  if (v41)
  {
    v42 = v40;

    v18 = sub_1D2E9129C();
    type metadata accessor for ReturnToCallClassifierEnUsCa();
    sub_1D2EE35E8();
    v43 = v34;
  }

  else
  {
    *&v87 = v15;
    *(&v87 + 1) = v18;
    MEMORY[0x1EEE9AC00](v41);
    *(&v76 - 2) = &v87;
    v44 = sub_1D2E7B87C(sub_1D2E912E8, (&v76 - 4), &unk_1F4E91170);
    if (v44)
    {
      v42 = v40;

      v18 = sub_1D2E9129C();
      type metadata accessor for ReturnToCallClassifier();
      sub_1D2EE2DCC();
      v43 = v35;
    }

    else
    {
      *&v87 = v15;
      *(&v87 + 1) = v18;
      MEMORY[0x1EEE9AC00](v44);
      *(&v76 - 2) = &v87;
      if ((sub_1D2E7B87C(sub_1D2E912E8, (&v76 - 4), &unk_1F4E911F0) & 1) == 0)
      {
LABEL_20:
        if (qword_1EDECFF10 != -1)
        {
          swift_once();
        }

        v69 = sub_1D2EE4618();
        __swift_project_value_buffer(v69, qword_1EDED2DB8);

        v70 = sub_1D2EE45F8();
        v71 = sub_1D2EE4DB8();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *&v87 = v73;
          *v72 = 136315138;
          v74 = sub_1D2E685B0(v15, v18, &v87);

          *(v72 + 4) = v74;
          _os_log_impl(&dword_1D2E46000, v70, v71, "Unsupported locale %s for ReturnToCallDetectorModel", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v73);
          MEMORY[0x1D38AF660](v73, -1, -1);
          MEMORY[0x1D38AF660](v72, -1, -1);
        }

        else
        {
        }

        sub_1D2E876D0();
        v46 = swift_allocError();
        *v75 = 4;
        swift_willThrow();
        goto LABEL_12;
      }

      v42 = v40;

      *(v3 + 184) = 1;
      v18 = sub_1D2E9129C();
      type metadata accessor for ReturnToCallClassifierCJ();
      sub_1D2EE3220();
      v43 = v36;
    }
  }

  v45 = sub_1D2E8F3E8(v43);
  if (!v42)
  {
    v88 = v18;
    v89 = &off_1F4E940A8;
    *&v87 = v45;
    sub_1D2E4C014(&v87, (v3 + 2));
    v33 = v3[19];
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v46 = v42;
LABEL_12:
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v47 = sub_1D2EE4618();
  __swift_project_value_buffer(v47, qword_1EDED2DB8);
  v48 = v46;
  v49 = sub_1D2EE45F8();
  v50 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v87 = v81;
    *v51 = 136315138;
    swift_getErrorValue();
    v77 = v83;
    v82 = v25;
    v52 = v84;
    v53 = sub_1D2EE4E58();
    v80 = &v76;
    v54 = *(v53 - 8);
    v55 = *(v54 + 64);
    MEMORY[0x1EEE9AC00](v53);
    v57 = &v76 - v56;
    v58 = *(v52 - 8);
    v78 = v50;
    v59 = v58;
    (*(v58 + 16))(&v76 - v56, v77, v52);
    (*(v59 + 56))(v57, 0, 1, v52);
    v60 = sub_1D2EE2754(v57, v52);
    v62 = v61;
    (*(v54 + 8))(v57, v53);
    v63 = sub_1D2E685B0(v60, v62, &v87);
    v25 = v82;

    *(v51 + 4) = v63;
    _os_log_impl(&dword_1D2E46000, v49, v78, "Failed to initializer ReturnToCallDetectorModel with error %s", v51, 0xCu);
    v64 = v81;
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x1D38AF660](v64, -1, -1);
    MEMORY[0x1D38AF660](v51, -1, -1);
  }

  sub_1D2E876D0();
  swift_allocError();
  *v65 = 0;
  swift_willThrow();

  sub_1D2E5D0B8(v25, &qword_1EC738E40, qword_1D2EF3098);
  v66 = v3[7];

  v67 = v3[24];

  swift_deallocPartialClassInstance();
  return v3;
}

id sub_1D2E8F3E8(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D2EE3D28();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1D2EE3D88();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_1D2EE3CE8();

    swift_willThrow();
    v9 = sub_1D2EE3D88();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1D2E8F540(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  if (*(v4 + 112) >= *(*(v4 + 56) + 16))
  {
    swift_beginAccess();

    v15 = *(v4 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v4 + 56);
    *(v4 + 56) = 0x8000000000000000;
    sub_1D2EC8D44(a3, a4 & 1, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v4 + 56) = v19;
    swift_endAccess();
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v17 = sub_1D2EE4618();
    __swift_project_value_buffer(v17, qword_1EDED2DB8);
    v11 = sub_1D2EE45F8();
    v12 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Adding utterance to cached Utterances";
      goto LABEL_10;
    }
  }

  else
  {
    v9 = qword_1EDECFF10;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1D2EE4618();
    __swift_project_value_buffer(v10, qword_1EDED2DB8);
    v11 = sub_1D2EE45F8();
    v12 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "limit on number Of cached utterances reached, not adding utterance to cached utterances";
LABEL_10:
      _os_log_impl(&dword_1D2E46000, v11, v12, v14, v13, 2u);
      MEMORY[0x1D38AF660](v13, -1, -1);
    }
  }
}

void sub_1D2E8F764(uint64_t a1, void *a2, int a3)
{
  v5 = v3;
  v105 = a3;
  v112 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v109 = &v100 - v9;
  v10 = type metadata accessor for ReturnToCallPredictorEvent();
  v106 = *(v10 - 8);
  v11 = *(v106 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v103 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v102 = &v100 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v107 = v18;
  v108 = &v100 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v100 - v19;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v21 = sub_1D2EE4618();
  v111 = __swift_project_value_buffer(v21, qword_1EDED2DB8);
  v22 = sub_1D2EE45F8();
  v23 = sub_1D2EE4DD8();
  v24 = os_log_type_enabled(v22, v23);
  v110 = a1;
  if (v24)
  {
    v25 = v10;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v113 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1D2E685B0(0xD000000000000039, 0x80000001D2EE7140, &v113);
    _os_log_impl(&dword_1D2E46000, v22, v23, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D38AF660](v27, -1, -1);
    v28 = v26;
    v10 = v25;
    MEMORY[0x1D38AF660](v28, -1, -1);
  }

  v29 = *(v5 + 192);
  v30 = *(*v29 + *MEMORY[0x1E69E6B68] + 16);
  v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v29 + v31));
  sub_1D2E90718((v29 + v30), &v113);
  v32 = v112;
  if (v4)
  {
    goto LABEL_41;
  }

  os_unfair_lock_unlock((v29 + v31));
  v104 = v113;
  swift_beginAccess();
  v33 = *(v5 + 56);
  v34 = v110;
  if (*(v33 + 16))
  {
    v35 = sub_1D2E4FC44(v110, v32);
    if (v36)
    {
      v37 = *(v33 + 56) + 16 * v35;
      v103 = *v37;
      v38 = *(v37 + 8);
      swift_endAccess();
      v39 = sub_1D2EE45F8();
      v40 = sub_1D2EE4DD8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1D2E46000, v39, v40, "Utterance is cached, skipping calling the CoreML model", v41, 2u);
        MEMORY[0x1D38AF660](v41, -1, -1);
      }

      v111 = *(*(v5 + 56) + 16);
      if (*(v5 + 184) == 1)
      {
        v42 = sub_1D2EE4AD8();
      }

      else
      {
        v113 = v34;
        v114 = v112;
        v71 = sub_1D2E4EED4();
        v42 = *(MEMORY[0x1D38AE920](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v71) + 16);
      }

      v72 = sub_1D2EE4AD8();
      v73 = &v20[*(v10 + 104)];
      sub_1D2EE3E38();
      v74 = 0;
      *v20 = 0xD000000000000030;
      v112 = &unk_1D2EF3078;
      v53 = 0.0;
      v75 = 1;
LABEL_30:
      *(v20 + 1) = 0x80000001D2EE7080;
      *(v20 + 2) = 0x69685F6568636163;
      *(v20 + 3) = 0xE900000000000074;
      *(v20 + 4) = 0x69735F6568636163;
      v80 = v105 & 1;
      *(v20 + 5) = 0xEA0000000000657ALL;
      *(v20 + 6) = 0xD000000000000010;
      *(v20 + 7) = 0x80000001D2EE70C0;
      strcpy(v20 + 64, "failure_reason");
      v20[79] = -18;
      *(v20 + 10) = 0xD000000000000015;
      *(v20 + 11) = 0x80000001D2EE70E0;
      *(v20 + 12) = 0xD000000000000012;
      *(v20 + 13) = 0x80000001D2EE7100;
      *(v20 + 14) = 0x746C75736572;
      *(v20 + 15) = 0xE600000000000000;
      *(v20 + 16) = 0x7463615F72657375;
      *(v20 + 17) = 0xEB000000006E6F69;
      strcpy(v20 + 144, "utterance_size");
      v20[159] = -18;
      *(v20 + 20) = 0xD000000000000010;
      *(v20 + 21) = 0x80000001D2EE7120;
      *(v20 + 22) = 0x6574636172616863;
      *(v20 + 23) = 0xEF746E756F635F72;
      v20[192] = v75;
      *(v20 + 25) = v111;
      v20[208] = 0;
      v81 = v103;
      *(v20 + 27) = v104;
      *(v20 + 112) = 2048;
      v20[226] = v80;
      *(v20 + 29) = v74;
      v20[240] = v75;
      *(v20 + 31) = v81;
      v20[256] = v38;
      v20[257] = 3;
      *(v20 + 33) = v42;
      v20[272] = 0;
      *(v20 + 35) = v72;
      v20[288] = 0;
      *&v20[*(v10 + 108)] = v53;
      v82 = sub_1D2EE4CB8();
      v83 = v109;
      (*(*(v82 - 8) + 56))(v109, 1, 1, v82);
      v84 = v108;
      sub_1D2E8E8DC(v20, v108);
      v85 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v86 = swift_allocObject();
      *(v86 + 16) = 0;
      *(v86 + 24) = 0;
      sub_1D2E90A64(v84, v86 + v85);
      sub_1D2E8CB18(0, 0, v83, v112, v86);

      sub_1D2E5D0B8(v83, &qword_1EC739040, &qword_1D2EF2460);
      sub_1D2E8E994(v20);
      return;
    }
  }

  swift_endAccess();
  v43 = sub_1D2EE45F8();
  v44 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1D2E46000, v43, v44, "Utterance is not cached, calling the CoreML model", v45, 2u);
    MEMORY[0x1D38AF660](v45, -1, -1);
  }

  v46 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v47 = *(v5 + 40);
  v48 = *(v5 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v47);
  v49 = (*(v48 + 8))(v34, v32, v47, v48);
  v51 = v50;
  v53 = v52;
  v29 = v49;
  v54 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v31 = v54 - v46;
  if (v54 < v46)
  {
    __break(1u);
LABEL_41:
    os_unfair_lock_unlock((v29 + v31));
    __break(1u);
    return;
  }

  v100 = v29;
  v56 = sub_1D2EE4A98();
  v57 = v55;
  v101 = v10;
  if (v56 == 7562617 && v55 == 0xE300000000000000 || (sub_1D2EE5288() & 1) != 0)
  {

    v58 = 0;
LABEL_19:
    v59 = (v31 * 0x431BDE82D7B634DBuLL) >> 64;
    sub_1D2E9047C(*&v53, v58);
    v60 = sub_1D2E905AC();
    v61 = v60;
    v62 = 1.0 - v53;
    if (v60)
    {
      v62 = v53;
    }

    v103 = *&v62;
    LODWORD(v63) = v58 | v60 ^ 1;

    v64 = sub_1D2EE45F8();
    v65 = sub_1D2EE4DD8();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      LODWORD(v111) = v63;
      v63 = v67;
      v113 = v67;
      *v66 = 136315650;
      v68 = v59;
      v69 = sub_1D2E685B0(v100, v51, &v113);

      *(v66 + 4) = v69;
      v59 = v68;
      *(v66 + 12) = 2048;
      *(v66 + 14) = v53;
      *(v66 + 22) = 1024;
      *(v66 + 24) = v61 & 1;
      _os_log_impl(&dword_1D2E46000, v64, v65, "Predicted ReturnToCallRequired: %s, confidence: %f, isValid: %{BOOL}d", v66, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      v70 = v63;
      LOBYTE(v63) = v111;
      MEMORY[0x1D38AF660](v70, -1, -1);
      MEMORY[0x1D38AF660](v66, -1, -1);
    }

    else
    {
    }

    v74 = v59 >> 18;
    v38 = v63 & 1;
    v76 = v110;
    v77 = v112;
    sub_1D2E8F540(v110, v112, v103, v63 & 1);
    v111 = *(*(v5 + 56) + 16);
    if (*(v5 + 184) == 1)
    {
      v42 = sub_1D2EE4AD8();
    }

    else
    {
      v113 = v76;
      v114 = v77;
      v78 = sub_1D2E4EED4();
      v42 = *(MEMORY[0x1D38AE920](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v78) + 16);
    }

    v72 = sub_1D2EE4AD8();
    v10 = v101;
    v20 = v102;
    v79 = &v102[*(v101 + 104)];
    sub_1D2EE3E38();
    v75 = 0;
    *v20 = 0xD000000000000030;
    v112 = &unk_1D2EF3070;
    goto LABEL_30;
  }

  if (v56 == 28526 && v57 == 0xE200000000000000)
  {

LABEL_35:
    v58 = 1;
    goto LABEL_19;
  }

  v87 = sub_1D2EE5288();

  if (v87)
  {
    goto LABEL_35;
  }

  v88 = sub_1D2EE45F8();
  v89 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v113 = v91;
    *v90 = 136315138;
    v92 = sub_1D2E685B0(v100, v51, &v113);

    *(v90 + 4) = v92;
    _os_log_impl(&dword_1D2E46000, v88, v89, "Invalid prediction result: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
    MEMORY[0x1D38AF660](v91, -1, -1);
    MEMORY[0x1D38AF660](v90, -1, -1);
  }

  else
  {
  }

  v93 = v108;
  sub_1D2EE0C2C(2, v108, v53);
  v94 = sub_1D2EE4CB8();
  v95 = v109;
  (*(*(v94 - 8) + 56))(v109, 1, 1, v94);
  v96 = v103;
  sub_1D2E8E8DC(v93, v103);
  v97 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  *(v98 + 24) = 0;
  sub_1D2E90A64(v96, v98 + v97);
  sub_1D2E8CB18(0, 0, v95, &unk_1D2EF3068, v98);

  sub_1D2E5D0B8(v95, &qword_1EC739040, &qword_1D2EF2460);
  sub_1D2E876D0();
  swift_allocError();
  *v99 = 2;
  swift_willThrow();
  sub_1D2E8E994(v93);
}

uint64_t sub_1D2E9047C(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(v2 + 208);
  if (v5)
  {
    v6 = *(v2 + 200);
    if (*(v6 + 2) == v5)
    {
      sub_1D2E91070(0, 1, sub_1D2EC813C, sub_1D2E90FC8);
      v6 = *(v2 + 200);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 200) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1D2EC813C(0, *(v6 + 2) + 1, 1, v6);
      *(v2 + 200) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1D2EC813C((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[16 * v9];
    *(v10 + 4) = a1;
    v10[40] = a2 & 1;
    *(v2 + 200) = v6;
  }

  return swift_endAccess();
}

uint64_t sub_1D2E905AC()
{
  result = swift_beginAccess();
  v2 = v0[25];
  v3 = *(v2 + 16);
  v4 = v0[19];
  if (v3 < v4)
  {
    return 1;
  }

  v5 = v0[18];
  if (v4 < v5)
  {
    if (qword_1EDECFF10 != -1)
    {
LABEL_18:
      swift_once();
    }

    v6 = sub_1D2EE4618();
    __swift_project_value_buffer(v6, qword_1EDED2DB8);
    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D2E46000, v7, v8, "Error: Buffer size lesser than threshold", v9, 2u);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }

    return 1;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v5 >= v3)
    {
      v5 = *(v2 + 16);
    }

    v10 = ~v5 + v3;
    for (i = (v2 - 16 * v5 + 16 * v3 + 40); ; i += 16)
    {
      result = v5 == 0;
      if (!v5)
      {
        break;
      }

      if (++v10 >= v3)
      {
        __break(1u);
        goto LABEL_18;
      }

      v12 = *i;
      --v5;
      if (v12)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D2E90718@<X0>(_BYTE *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1D2EE3E48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E30, &unk_1D2EF3080);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  if (*a1 == 1)
  {
    v16 = *(v9 + 48);
    *v15 = 0;
    sub_1D2EE3E38();
    sub_1D2E91148(v15, v13);
    v17 = *(v9 + 48);
    *a1 = *v13;
    result = (*(v5 + 40))(&a1[*(v9 + 48)], &v13[v17], v4);
    v19 = 0;
LABEL_7:
    *a2 = v19;
    return result;
  }

  sub_1D2EE3E38();
  v20 = *(v9 + 48);
  result = sub_1D2EE3E08();
  v22 = v21 * 1000.0;
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v22 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v22 < 1.84467441e19)
  {
    v19 = v22;
    *a1 = 0;
    result = (*(v5 + 40))(&a1[v20], v8, v4);
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D2E9095C()
{
  v1 = v0[7];
  v0[5] = type metadata accessor for ReturnToCallPredictorEvent();
  v0[6] = &off_1F4E95C98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D2E8E8DC(v1, boxed_opaque_existential_0);
  sub_1D2EDFAC8();
  sub_1D2E8E940((v0 + 2));
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D2E909F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[24];

  v3 = v0[25];

  return swift_deallocClassInstance();
}

uint64_t sub_1D2E90A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnToCallPredictorEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2E90AC8(uint64_t a1)
{
  v4 = *(type metadata accessor for ReturnToCallPredictorEvent() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2E9093C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for ReturnToCallPredictorEvent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 88);

  v12 = *(v0 + v3 + 104);

  v13 = *(v0 + v3 + 120);

  v14 = *(v0 + v3 + 136);

  v15 = *(v0 + v3 + 152);

  v16 = *(v0 + v3 + 168);

  v17 = *(v0 + v3 + 184);

  v18 = v1[28];
  v19 = sub_1D2EE3E48();
  (*(*(v19 - 8) + 8))(v0 + v3 + v18, v19);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D2E90D00(uint64_t a1)
{
  v4 = *(type metadata accessor for ReturnToCallPredictorEvent() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2E5BA34;

  return sub_1D2E9093C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D2E90DF0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2EE5288() & 1;
  }
}

unint64_t sub_1D2E90E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1D2E90FC8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  v11 = 16 * v9;
  if (result != v10 || result >= v10 + v11)
  {
    v13 = a3;
    result = memmove(result, v10, v11);
    a3 = v13;
  }

  v14 = *(v6 + 16);
  v8 = __OFADD__(v14, v5);
  v15 = v14 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v15;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D2E91070(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1D2E91148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E30, &unk_1D2EF3080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2E911B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E40, qword_1D2EF3098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2E91244(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2EE5288() & 1;
  }
}

unint64_t sub_1D2E9129C()
{
  result = qword_1EC738E48;
  if (!qword_1EC738E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC738E48);
  }

  return result;
}

unint64_t sub_1D2E91318()
{
  result = qword_1EC738E50;
  if (!qword_1EC738E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738E50);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ReturnToCallRequired(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ReturnToCallRequired(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1D2E91430(void *a1, uint64_t a2, int a3)
{
  v25 = a3;
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E90, &qword_1D2EF3290);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E98, &qword_1D2EF3298);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738EA0, &qword_1D2EF32A0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2E920D8();
  sub_1D2EE53C8();
  if (v25)
  {
    v27 = 1;
    sub_1D2E9212C();
    sub_1D2EE51D8();
    v18 = v23;
    sub_1D2EE5228();
    (*(v22 + 8))(v7, v18);
  }

  else
  {
    v26 = 0;
    sub_1D2E92180();
    sub_1D2EE51D8();
    sub_1D2EE5228();
    (*(v21 + 8))(v11, v8);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1D2E91754(uint64_t a1, uint64_t a2, char a3)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1D38AEDD0](a3 & 1);
  return MEMORY[0x1D38AEDF0](v3);
}

uint64_t sub_1D2E9178C()
{
  if (*v0)
  {
    result = 0x6975716552746F6ELL;
  }

  else
  {
    result = 0x6465726975716572;
  }

  *v0;
  return result;
}

uint64_t sub_1D2E917D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465726975716572 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D2EE5288() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6975716552746F6ELL && a2 == 0xEB00000000646572)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2EE5288();

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

uint64_t sub_1D2E918B0(uint64_t a1)
{
  v2 = sub_1D2E920D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E918EC(uint64_t a1)
{
  v2 = sub_1D2E920D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E91928(uint64_t a1)
{
  v2 = sub_1D2E9212C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E91964(uint64_t a1)
{
  v2 = sub_1D2E9212C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E919A0(uint64_t a1)
{
  v2 = sub_1D2E92180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2E919DC(uint64_t a1)
{
  v2 = sub_1D2E92180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2E91A18()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D2EE5338();
  sub_1D2E91754(v4, v1, v2);
  return sub_1D2EE5378();
}

uint64_t sub_1D2E91A74()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D2EE5338();
  sub_1D2E91754(v4, v1, v2);
  return sub_1D2EE5378();
}

void *sub_1D2E91AC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D2E91BC0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1D2E91B14(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      v5 = *a1;
      v6 = *a2;
      if (v2 == v3)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    v8 = *a1;
    v9 = *a2;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D2E91B6C()
{
  result = qword_1EC738E58;
  if (!qword_1EC738E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738E58);
  }

  return result;
}

void *sub_1D2E91BC0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E60, &qword_1D2EF3270);
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E68, &qword_1D2EF3278);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738E70, &unk_1D2EF3280);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v40 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D2E920D8();
  v19 = v39;
  sub_1D2EE53B8();
  if (v19)
  {
    goto LABEL_7;
  }

  v39 = v12;
  v20 = sub_1D2EE51C8();
  v21 = (2 * *(v20 + 16)) | 1;
  v42 = v20;
  v43 = v20 + 32;
  v44 = 0;
  v45 = v21;
  v22 = sub_1D2E53404();
  if (v22 == 2 || v44 != v45 >> 1)
  {
    v25 = sub_1D2EE5008();
    swift_allocError();
    v26 = v11;
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC737F80, &qword_1D2EECD20) + 48);
    *v28 = &type metadata for ReturnToCallRequired;
    v18 = v15;
    sub_1D2EE5148();
    sub_1D2EE4FF8();
    (*(*(v25 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v15, v26);
    swift_unknownObjectRelease();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v40);
    return v18;
  }

  if (v22)
  {
    v41 = 1;
    sub_1D2E9212C();
    v23 = v6;
    sub_1D2EE5138();
    v24 = v39;
    v32 = v37;
    sub_1D2EE5198();
    v34 = v33;
    (*(v38 + 8))(v23, v32);
    (*(v24 + 8))(v15, v11);
  }

  else
  {
    v41 = 0;
    sub_1D2E92180();
    sub_1D2EE5138();
    v31 = v39;
    sub_1D2EE5198();
    v34 = v35;
    (*(v36 + 8))(v10, v7);
    (*(v31 + 8))(v15, v11);
  }

  swift_unknownObjectRelease();
  v18 = v34;
  __swift_destroy_boxed_opaque_existential_1(v40);
  return v18;
}

unint64_t sub_1D2E920D8()
{
  result = qword_1EC738E78;
  if (!qword_1EC738E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738E78);
  }

  return result;
}

unint64_t sub_1D2E9212C()
{
  result = qword_1EC738E80;
  if (!qword_1EC738E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738E80);
  }

  return result;
}

unint64_t sub_1D2E92180()
{
  result = qword_1EC738E88;
  if (!qword_1EC738E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738E88);
  }

  return result;
}

unint64_t sub_1D2E92208()
{
  result = qword_1EC738EA8;
  if (!qword_1EC738EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738EA8);
  }

  return result;
}

unint64_t sub_1D2E92260()
{
  result = qword_1EC738EB0;
  if (!qword_1EC738EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738EB0);
  }

  return result;
}

unint64_t sub_1D2E922B8()
{
  result = qword_1EC738EB8;
  if (!qword_1EC738EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738EB8);
  }

  return result;
}

unint64_t sub_1D2E92310()
{
  result = qword_1EC738EC0;
  if (!qword_1EC738EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738EC0);
  }

  return result;
}

unint64_t sub_1D2E92368()
{
  result = qword_1EC738EC8;
  if (!qword_1EC738EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738EC8);
  }

  return result;
}

unint64_t sub_1D2E923C0()
{
  result = qword_1EC738ED0;
  if (!qword_1EC738ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738ED0);
  }

  return result;
}

unint64_t sub_1D2E92418()
{
  result = qword_1EC738ED8;
  if (!qword_1EC738ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738ED8);
  }

  return result;
}

unint64_t sub_1D2E92470()
{
  result = qword_1EC738EE0;
  if (!qword_1EC738EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738EE0);
  }

  return result;
}

unint64_t sub_1D2E924C8()
{
  result = qword_1EC738EE8;
  if (!qword_1EC738EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738EE8);
  }

  return result;
}

id sub_1D2E9251C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E6986538]);

  return [v6 initWithConfiguration:a1 delegate:a2 delegateQueue:a3];
}

uint64_t sub_1D2E9257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for AnsweringMachineState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock;
  active = type metadata accessor for ActiveAnsweringMachineState(0);
  (*(*(active - 8) + 56))(v12, 1, 1, active);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738FE0, &unk_1D2EF36C0);
  v16 = *(v15 + 52);
  v17 = (*(v15 + 48) + 3) & 0x1FFFFFFFCLL;
  v18 = swift_allocObject();
  *(v18 + ((*(*v18 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D2E94C8C(v12, v18 + *(*v18 + *MEMORY[0x1E69E6B68] + 16), type metadata accessor for AnsweringMachineState);
  *(v4 + v13) = v18;
  v19 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v19;
  v20 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v20;
  *(v4 + 128) = *(a1 + 112);
  v21 = *(a1 + 96);
  *(v4 + 96) = *(a1 + 80);
  *(v4 + 112) = v21;
  *(v4 + 80) = *(a1 + 64);
  sub_1D2E948A8(a2, v4 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_persistenceConfiguration, type metadata accessor for PersistenceConfiguration);
  v22 = (v4 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_answeringMachineFactory);
  *v22 = a3;
  v22[1] = a4;
  v23 = [objc_allocWithZone(type metadata accessor for WrappedAVCAnsweringMachineDelegate()) init];
  sub_1D2E94470(a2, type metadata accessor for PersistenceConfiguration);
  *(v4 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_delegate) = v23;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = &v23[OBJC_IVAR____TtC16CallIntelligence34WrappedAVCAnsweringMachineDelegate_onAnsweringMachineDidFinishAnnouncement];
  v26 = *&v23[OBJC_IVAR____TtC16CallIntelligence34WrappedAVCAnsweringMachineDelegate_onAnsweringMachineDidFinishAnnouncement + 8];
  *v25 = sub_1D2E94CF4;
  v25[1] = v24;

  return v4;
}

uint64_t sub_1D2E92800()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
    v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v1 + v3));
    sub_1D2E928D8(v1 + v2);
    os_unfair_lock_unlock((v1 + v3));
  }

  return result;
}

void sub_1D2E928D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738FA0, &qword_1D2EF3698);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v25 - v4;
  active = type metadata accessor for ActiveAnsweringMachineState(0);
  v7 = *(active - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](active);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnsweringMachineState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2E948A8(a1, v14, type metadata accessor for AnsweringMachineState);
  if ((*(v7 + 48))(v14, 1, active) == 1)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v15 = sub_1D2EE4618();
    __swift_project_value_buffer(v15, qword_1EDED2DB8);
    v16 = sub_1D2EE45F8();
    v17 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D2E46000, v16, v17, "Dropping announcement finish notification as we're now idle", v18, 2u);
      MEMORY[0x1D38AF660](v18, -1, -1);
    }
  }

  else
  {
    sub_1D2E94C8C(v14, v10, type metadata accessor for ActiveAnsweringMachineState);
    if (v10[8] == 1)
    {
      sub_1D2E94470(a1, type metadata accessor for AnsweringMachineState);
      sub_1D2EE3E38();
      v19 = sub_1D2EE3E48();
      (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
      sub_1D2E94CFC(v5, &v10[*(active + 24)]);
      v10[8] = 0;
      sub_1D2E948A8(v10, a1, type metadata accessor for ActiveAnsweringMachineState);
      (*(v7 + 56))(a1, 0, 1, active);
      v20 = v10;
    }

    else
    {
      if (qword_1EDECFF10 != -1)
      {
        swift_once();
      }

      v21 = sub_1D2EE4618();
      __swift_project_value_buffer(v21, qword_1EDED2DB8);
      v22 = sub_1D2EE45F8();
      v23 = sub_1D2EE4DD8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1D2E46000, v22, v23, "Dropping announcement finish notification as it was for the boop", v24, 2u);
        MEMORY[0x1D38AF660](v24, -1, -1);
      }

      v20 = v10;
    }

    sub_1D2E94470(v20, type metadata accessor for ActiveAnsweringMachineState);
  }
}

NSObject *sub_1D2E92CE8@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W2>, NSObject **a3@<X8>)
{
  v7 = type metadata accessor for AnsweringMachineState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2E948A8(a1, v10, type metadata accessor for AnsweringMachineState);
  active = type metadata accessor for ActiveAnsweringMachineState(0);
  if ((*(*(active - 8) + 48))(v10, 1, active) == 1)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v12 = sub_1D2EE4618();
    __swift_project_value_buffer(v12, qword_1EDED2DB8);
    v13 = sub_1D2EE45F8();
    v14 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D2E46000, v13, v14, "Starting answering machine", v15, 2u);
      MEMORY[0x1D38AF660](v15, -1, -1);
    }

    result = sub_1D2E92FA8(a1, a2);
    if (!v3)
    {
      *a3 = result;
    }
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v17 = sub_1D2EE4618();
    __swift_project_value_buffer(v17, qword_1EDED2DB8);
    v18 = sub_1D2EE45F8();
    v19 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D2E46000, v18, v19, "Failed to start answering machine - we already have an active one", v20, 2u);
      MEMORY[0x1D38AF660](v20, -1, -1);
    }

    sub_1D2E94910();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    return sub_1D2E94470(v10, type metadata accessor for AnsweringMachineState);
  }

  return result;
}

NSObject *sub_1D2E92FA8(uint64_t a1, unsigned __int8 a2)
{
  active = type metadata accessor for ActiveAnsweringMachineState(0);
  v6 = *(active - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](active);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E6986540]) init];
  [v10 setUsage_];
  [v10 setIsMessageCaptioningEnabled_];
  [v10 setSource_];
  v11 = *(v2 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_answeringMachineFactory + 8);
  v12 = (*(v2 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_answeringMachineFactory))(v10, *(v2 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_delegate), 0);
  if (v12)
  {
    v13 = v12;
    sub_1D2E94470(a1, type metadata accessor for AnsweringMachineState);
    [v13 start];
    v14 = *(active + 24);
    v15 = sub_1D2EE3E48();
    (*(*(v15 - 8) + 56))(&v9[v14], 1, 1, v15);
    *v9 = v13;
    v9[8] = 0;
    sub_1D2E948A8(v9, a1, type metadata accessor for ActiveAnsweringMachineState);
    (*(v6 + 56))(a1, 0, 1, active);
    v16 = v13;
    sub_1D2E949B8(1886351202, 0xE400000000000000, v16);
    v17 = [v16 messageAudioToken];

    sub_1D2E94470(v9, type metadata accessor for ActiveAnsweringMachineState);
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v18 = sub_1D2EE4618();
    __swift_project_value_buffer(v18, qword_1EDED2DB8);
    v17 = sub_1D2EE45F8();
    v19 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v17, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D2E46000, v17, v19, "Failed to create an AVCAnsweringMachine", v20, 2u);
      MEMORY[0x1D38AF660](v20, -1, -1);
    }

    sub_1D2E94964();
    swift_allocError();
    swift_willThrow();
  }

  return v17;
}

void sub_1D2E932DC(uint64_t a1)
{
  active = type metadata accessor for ActiveAnsweringMachineState(0);
  v3 = *(active - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](active);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AnsweringMachineState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2E948A8(a1, v10, type metadata accessor for AnsweringMachineState);
  if ((*(v3 + 48))(v10, 1, active) == 1)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v11 = sub_1D2EE4618();
    __swift_project_value_buffer(v11, qword_1EDED2DB8);
    v12 = sub_1D2EE45F8();
    v13 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D2E46000, v12, v13, "Failed to stop answering machine - we don't have an active one", v14, 2u);
      MEMORY[0x1D38AF660](v14, -1, -1);
    }
  }

  else
  {
    sub_1D2E94470(a1, type metadata accessor for AnsweringMachineState);
    sub_1D2E94C8C(v10, v6, type metadata accessor for ActiveAnsweringMachineState);
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v15 = sub_1D2EE4618();
    __swift_project_value_buffer(v15, qword_1EDED2DB8);
    v16 = sub_1D2EE45F8();
    v17 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D2E46000, v16, v17, "Stopping answering machine", v18, 2u);
      MEMORY[0x1D38AF660](v18, -1, -1);
    }

    [*v6 stop];
    sub_1D2E94470(v6, type metadata accessor for ActiveAnsweringMachineState);
    (*(v3 + 56))(a1, 1, 1, active);
  }
}

uint64_t sub_1D2E93618(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738FA0, &qword_1D2EF3698);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v51 - v5;
  v7 = sub_1D2EE3E48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v51 - v13;
  active = type metadata accessor for ActiveAnsweringMachineState(0);
  v15 = *(active - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](active);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for AnsweringMachineState(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  sub_1D2E948A8(a1, v22, type metadata accessor for AnsweringMachineState);
  v55 = v15;
  if ((*(v15 + 48))(v22, 1, active) != 1)
  {
    sub_1D2E94C8C(v22, v18, type metadata accessor for ActiveAnsweringMachineState);
    v29 = *(active + 24);
    sub_1D2E944D0(v18 + v29, v6);
    v30 = v7;
    v31 = v8;
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v32 = v56;
      sub_1D2E94470(v56, type metadata accessor for AnsweringMachineState);
      sub_1D2E94540(v6);
      v33 = v57;
    }

    else
    {
      v52 = v29;
      v34 = v54;
      (*(v8 + 32))(v54, v6, v7);
      sub_1D2EE3E38();
      sub_1D2EE3E08();
      v35 = *(v8 + 8);
      v35(v12, v7);
      sub_1D2EE5408();
      v33 = v57;
      v36 = *(v57 + 32);
      if (sub_1D2EE53E8())
      {
        v37 = v35;
        if (qword_1EDECFF10 != -1)
        {
          swift_once();
        }

        v38 = sub_1D2EE4618();
        __swift_project_value_buffer(v38, qword_1EDED2DB8);
        v39 = sub_1D2EE45F8();
        v40 = sub_1D2EE4DD8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1D2E46000, v39, v40, "Skipping return to call disclosure it was played recently", v41, 2u);
          MEMORY[0x1D38AF660](v41, -1, -1);
        }

        v37(v34, v30);
        return sub_1D2E94470(v18, type metadata accessor for ActiveAnsweringMachineState);
      }

      v32 = v56;
      sub_1D2E94470(v56, type metadata accessor for AnsweringMachineState);
      v35(v34, v30);
      v31 = v8;
      v29 = v52;
    }

    v53 = v31;
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v42 = sub_1D2EE4618();
    __swift_project_value_buffer(v42, qword_1EDED2DB8);
    v43 = sub_1D2EE45F8();
    v44 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v30;
      v46 = v29;
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1D2E46000, v43, v44, "Playing return to call disclosure", v47, 2u);
      v48 = v47;
      v29 = v46;
      v30 = v45;
      MEMORY[0x1D38AF660](v48, -1, -1);
    }

    v49 = v33 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_persistenceConfiguration;
    v50 = type metadata accessor for PersistenceConfiguration();
    sub_1D2E945A8(v49 + *(v50 + 24), *v18);
    *(v18 + 8) = 1;
    sub_1D2E94540(v18 + v29);
    (*(v53 + 56))(v18 + v29, 1, 1, v30);
    sub_1D2E948A8(v18, v32, type metadata accessor for ActiveAnsweringMachineState);
    (*(v55 + 56))(v32, 0, 1, active);
    return sub_1D2E94470(v18, type metadata accessor for ActiveAnsweringMachineState);
  }

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v23 = sub_1D2EE4618();
  __swift_project_value_buffer(v23, qword_1EDED2DB8);
  v24 = sub_1D2EE45F8();
  v25 = sub_1D2EE4DB8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1D2E46000, v24, v25, "Couldn't play return to call disclosure - no active answering machine", v26, 2u);
    MEMORY[0x1D38AF660](v26, -1, -1);
  }

  sub_1D2E94910();
  swift_allocError();
  *v27 = 0;
  return swift_willThrow();
}

uint64_t sub_1D2E93D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, NSObject **a4@<X8>)
{
  v5 = v4;
  active = type metadata accessor for ActiveAnsweringMachineState(0);
  v11 = *(active - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](active);
  v14 = (v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for AnsweringMachineState(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2E948A8(a1, v18, type metadata accessor for AnsweringMachineState);
  if ((*(v11 + 48))(v18, 1, active) == 1)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v19 = sub_1D2EE4618();
    __swift_project_value_buffer(v19, qword_1EDED2DB8);
    v20 = sub_1D2EE45F8();
    v21 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D2E46000, v20, v21, "Can't reconfigure the answering machine, it's already idle", v22, 2u);
      MEMORY[0x1D38AF660](v22, -1, -1);
    }

    sub_1D2E94910();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  else
  {
    v34 = a3;
    sub_1D2E94470(a1, type metadata accessor for AnsweringMachineState);
    sub_1D2E94C8C(v18, v14, type metadata accessor for ActiveAnsweringMachineState);
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v25 = sub_1D2EE4618();
    __swift_project_value_buffer(v25, qword_1EDED2DB8);
    v26 = sub_1D2EE45F8();
    v27 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v33[1] = a2;
      v29 = a4;
      v30 = v28;
      *v28 = 0;
      _os_log_impl(&dword_1D2E46000, v26, v27, "Reconfiguring answering machine from active state", v28, 2u);
      v31 = v30;
      a4 = v29;
      v5 = v4;
      MEMORY[0x1D38AF660](v31, -1, -1);
    }

    [*v14 stop];
    (*(v11 + 56))(a1, 1, 1, active);
    v32 = sub_1D2E92FA8(a1, v34);
    result = sub_1D2E94470(v14, type metadata accessor for ActiveAnsweringMachineState);
    if (!v5)
    {
      *a4 = v32;
    }
  }

  return result;
}

uint64_t sub_1D2E940C0()
{
  sub_1D2E94470(v0 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_persistenceConfiguration, type metadata accessor for PersistenceConfiguration);
  v1 = *(v0 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);

  v2 = *(v0 + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_answeringMachineFactory + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2E94194()
{
  result = type metadata accessor for PersistenceConfiguration();
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

uint64_t sub_1D2E942C0()
{
  active = type metadata accessor for ActiveAnsweringMachineState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return active;
}

void sub_1D2E94340()
{
  sub_1D2E943CC();
  if (v0 <= 0x3F)
  {
    sub_1D2E94418();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D2E943CC()
{
  result = qword_1EC738FC0;
  if (!qword_1EC738FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC738FC0);
  }

  return result;
}

void sub_1D2E94418()
{
  if (!qword_1EC738FC8)
  {
    sub_1D2EE3E48();
    v0 = sub_1D2EE4E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC738FC8);
    }
  }
}

uint64_t sub_1D2E94470(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2E944D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738FA0, &qword_1D2EF3698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2E94540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738FA0, &qword_1D2EF3698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D2E945A8(uint64_t a1, void *a2)
{
  v3 = sub_1D2EE3D28();
  v4 = [a2 addAnnouncementAsset_];

  if (v4)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2EE4618();
    __swift_project_value_buffer(v5, qword_1EDED2DB8);
    v6 = v4;
    v23 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v23, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = v24;
      v11 = v25;
      v12 = sub_1D2EE4E58();
      v22[1] = v22;
      v13 = *(v12 - 8);
      v14 = *(v13 + 64);
      MEMORY[0x1EEE9AC00](v12);
      v16 = v22 - v15;
      v17 = *(v11 - 8);
      (*(v17 + 16))(v22 - v15, v10, v11);
      (*(v17 + 56))(v16, 0, 1, v11);
      v18 = sub_1D2EE2754(v16, v11);
      v20 = v19;
      (*(v13 + 8))(v16, v12);
      v21 = sub_1D2E685B0(v18, v20, &v26);

      *(v8 + 4) = v21;
      _os_log_impl(&dword_1D2E46000, v23, v7, "Error playing asset  - %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1D38AF660](v9, -1, -1);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D2E948A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D2E94910()
{
  result = qword_1EC738FD0;
  if (!qword_1EC738FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738FD0);
  }

  return result;
}

unint64_t sub_1D2E94964()
{
  result = qword_1EC738FD8;
  if (!qword_1EC738FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738FD8);
  }

  return result;
}

void sub_1D2E949B8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1D2EE3D88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WaitOnHoldSession();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_1D2EE4A38();
  v14 = sub_1D2EE4A38();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    sub_1D2EE3D48();

    sub_1D2E945A8(v10, a3);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v16 = sub_1D2EE4618();
    __swift_project_value_buffer(v16, qword_1EDED2DB8);

    v21 = sub_1D2EE45F8();
    v17 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v21, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1D2E685B0(a1, a2, &v22);
      _os_log_impl(&dword_1D2E46000, v21, v17, "Error getting url for assset %s.caf", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D38AF660](v19, -1, -1);
      MEMORY[0x1D38AF660](v18, -1, -1);
    }

    else
    {
      v20 = v21;
    }
  }
}

uint64_t sub_1D2E94C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2E94CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC738FA0, &qword_1D2EF3698);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2E94D80()
{
  result = qword_1EC738FE8;
  if (!qword_1EC738FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC738FE8);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D2E94E00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2E94E20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 120) = v3;
  return result;
}