uint64_t sub_1D2EAFDB4(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a3;
  v5 = sub_1D2EE46C8();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2EE46F8();
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  sub_1D2E9D860(0, &qword_1EDECF788, 0x1E69E9610);
  v26 = sub_1D2EE4DE8();
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_1D2EB3E0C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2EB06E4;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);

  v22 = v20;
  sub_1D2EE46E8();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D2EB3E94(&qword_1EC739278, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739280, &qword_1D2EF43E0);
  sub_1D2EB3EDC();
  sub_1D2EE4EB8();
  v23 = v26;
  MEMORY[0x1D38AE890](0, v12, v8, v21);
  _Block_release(v21);

  (*(v29 + 8))(v8, v5);
  (*(v27 + 8))(v12, v28);
}

uint64_t sub_1D2EB0158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  sub_1D2EE4C98();
  sub_1D2EE4C88();
  sub_1D2EE4C28();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a1 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callCenter);
  (*(v7 + 16))(v10, a3, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1D2EB3F40;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2EB0678;
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);

  [v11 _performSmartHoldingRequest_completion_];
  _Block_release(v14);
}

uint64_t sub_1D2EB0384(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2EE4618();
    __swift_project_value_buffer(v5, qword_1EDED2DB8);
    v6 = a1;
    v7 = sub_1D2EE45F8();
    v8 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v9 = 136446210;
      swift_getErrorValue();
      v10 = v28;
      v11 = v29;
      v12 = sub_1D2EE4E58();
      v25 = &v25;
      v13 = *(v12 - 8);
      v27 = a2;
      v14 = v13;
      v15 = *(v13 + 64);
      MEMORY[0x1EEE9AC00](v12);
      v17 = &v25 - v16;
      v18 = *(v11 - 8);
      (*(v18 + 16))(&v25 - v16, v10, v11);
      (*(v18 + 56))(v17, 0, 1, v11);
      v19 = sub_1D2EE2754(v17, v11);
      v21 = v20;
      (*(v14 + 8))(v17, v12);
      v22 = sub_1D2E685B0(v19, v21, &v30);

      *(v9 + 4) = v22;
      _os_log_impl(&dword_1D2E46000, v7, v8, "Error performing TUSmartHoldingRequest %{public}s", v9, 0xCu);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D38AF660](v23, -1, -1);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }

    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
    return sub_1D2EE4C48();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808);
    return sub_1D2EE4C58();
  }
}

void sub_1D2EB0678(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1D2EB06E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1D2EB0728(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1D2EE3EB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2E9D860(0, &qword_1EDECF788, 0x1E69E9610);
  v10 = sub_1D2EE4DE8();
  v22 = v3;
  v23 = a1;
  sub_1D2EE4DF8();

  if (!v2 && !v24)
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v11 = sub_1D2EE4618();
    __swift_project_value_buffer(v11, qword_1EDED2DB8);
    (*(v6 + 16))(v9, a1, v5);
    v12 = sub_1D2EE45F8();
    v13 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
      v16 = sub_1D2EE5258();
      v18 = v17;
      (*(v6 + 8))(v9, v5);
      v19 = sub_1D2E685B0(v16, v18, &v24);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1D2E46000, v12, v13, "Invalid downlink stream token %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D38AF660](v15, -1, -1);
      MEMORY[0x1D38AF660](v14, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    sub_1D2E94910();
    swift_allocError();
    *v20 = 6;
    swift_willThrow();
  }
}

void sub_1D2EB0A40(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EE4C98();
  v26[1] = sub_1D2EE4C88();
  sub_1D2EE4C28();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a1 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callCenter);
  [v11 fetchCurrentCalls];
  sub_1D2EE3E68();
  v12 = sub_1D2EE4A38();

  v13 = [v11 callWithUniqueProxyIdentifier_];

  if (v13)
  {
    v14 = [v13 tokens];
    v15 = [v14 downlinkStreamToken];

    *a3 = v15;
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v16 = sub_1D2EE4618();
    __swift_project_value_buffer(v16, qword_1EDED2DB8);
    (*(v7 + 16))(v10, a2, v6);
    v17 = sub_1D2EE45F8();
    v18 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
      v21 = sub_1D2EE5258();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = sub_1D2E685B0(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1D2E46000, v17, v18, "Unknown callUUID %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D38AF660](v20, -1, -1);
      MEMORY[0x1D38AF660](v19, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    sub_1D2E94910();
    swift_allocError();
    *v25 = 5;
    swift_willThrow();
  }
}

uint64_t sub_1D2EB0DF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1D2EE3EB8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v2[7] = *(v5 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EB0F00, 0, 0);
}

void sub_1D2EB0F00()
{
  v44 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EDED2DB8);
  v42 = *(v3 + 16);
  v42(v1, v4, v2);
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[5];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v12 = 136446210;
    sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
    v14 = sub_1D2EE5258();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_1D2E685B0(v14, v16, &v43);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1D2E46000, v6, v7, "Starting hold detection for call %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D38AF660](v13, -1, -1);
    MEMORY[0x1D38AF660](v12, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = *(*(v0[3] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
  os_unfair_lock_lock(v18 + 9);
  sub_1D2EB3FBC(&v18[4]);
  os_unfair_lock_unlock(v18 + 9);
  v19 = v0[8];
  v39 = v0[7];
  v21 = v0[5];
  v20 = v0[6];
  v23 = v0[3];
  v22 = v0[4];
  v41 = v22;
  v24 = v0[2];
  v25 = sub_1D2EE4CB8();
  v40 = *(*(v25 - 8) + 56);
  v40(v22, 1, 1, v25);
  v26 = v19;
  v42(v19, v24, v21);
  v27 = *(v20 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = xmmword_1D2EF4220;
  *(v28 + 48) = v23;
  v38 = *(v20 + 32);
  v29 = v21;
  v38(v28 + ((v27 + 56) & ~v27), v26, v21);

  v30 = sub_1D2EA4398(0, 0, v41, &unk_1D2EF4400, v28);
  v0[10] = v30;
  v40(v41, 1, 1, v25);
  v42(v26, v24, v21);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = xmmword_1D2EF4220;
  *(v31 + 48) = xmmword_1D2EF4230;
  *(v31 + 64) = v23;
  v38(v31 + ((v27 + 72) & ~v27), v26, v29);

  v32 = sub_1D2EA4398(0, 0, v41, &unk_1D2EF4410, v31);
  v0[11] = v32;
  v33 = *(v23 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_holdDetectionState);
  v34 = swift_task_alloc();
  *(v34 + 16) = v30;
  *(v34 + 24) = v32;
  os_unfair_lock_lock((v33 + 32));
  sub_1D2EB4650((v33 + 16));
  os_unfair_lock_unlock((v33 + 32));

  v35 = swift_task_alloc();
  v0[12] = v35;
  *v35 = v0;
  v35[1] = sub_1D2EB147C;
  v36 = v0[2];
  v37 = v0[3];

  sub_1D2EA7C90(v36);
}

uint64_t sub_1D2EB147C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1D2EB1624;
  }

  else
  {
    v3 = sub_1D2EB1590;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2EB1590()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D2EB1624()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D2EB16B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_1D2EE4C68();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v11 = sub_1D2EE5088();
  v7[10] = v11;
  v12 = *(v11 - 8);
  v7[11] = v12;
  v13 = *(v12 + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EB17D4, 0, 0);
}

uint64_t sub_1D2EB17D4()
{
  v18 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[13] = __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v8 = sub_1D2EE53D8();
    v10 = sub_1D2E685B0(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Starting initial hold detection delay of %{public}s seconds", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38AF660](v7, -1, -1);
    MEMORY[0x1D38AF660](v6, -1, -1);
  }

  v11 = v0[12];
  sub_1D2EE52E8();
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1D2EB19C4;
  v13 = v0[12];
  v15 = v0[3];
  v14 = v0[4];

  return sub_1D2EB3930(v15, v14, 0, 0, 1);
}

uint64_t sub_1D2EB19C4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v5 = sub_1D2EB1CC0;
  }

  else
  {
    v5 = sub_1D2EB1B2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1D2EB1B2C()
{
  v1 = v0[13];
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Hold Detection delay completed, starting sound analysis", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v0[15];
  v7 = v0[5];
  v6 = v0[6];

  sub_1D2EB0728(v6);
  if (!v5)
  {
    v12 = v8;
    v13 = *(v0[5] + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
    v14 = &v13[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex];
    os_unfair_lock_lock(&v13[OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex]);
    sub_1D2E9F418(v14 + 1, v12, v13, 0);
    os_unfair_lock_unlock(v14);
    v15 = v0[5];
    sub_1D2EA814C(0);
  }

  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  v11();
}

uint64_t sub_1D2EB1CC0()
{
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 104);

    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2E46000, v6, v7, "Initial Hold Detection task cancelled", v8, 2u);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }

    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);

    (*(v10 + 8))(v9, v11);
    v12 = *(v0 + 96);
    v13 = *(v0 + 72);

    v14 = *(v0 + 8);
  }

  else
  {

    v15 = *(v0 + 120);
    v16 = *(v0 + 96);
    v17 = *(v0 + 72);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_1D2EB1E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v17;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v9 = sub_1D2EE4C68();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = sub_1D2EE5088();
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EB1F78, 0, 0);
}

uint64_t sub_1D2EB1F78()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = sub_1D2EE53F8();
  v8 = v7;
  sub_1D2EE52E8();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1D2EB2058;
  v10 = v0[14];

  return sub_1D2EB3930(v6, v8, 0, 0, 1);
}

uint64_t sub_1D2EB2058()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D2EB2318;
  }

  else
  {
    v6 = sub_1D2EB21C8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D2EB21C8()
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
    _os_log_impl(&dword_1D2E46000, v2, v3, "Maximum Hold Detection duration reached", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1D2EB24E8;
  v7 = v0[7];
  v6 = v0[8];

  return sub_1D2EAEEE8(v6);
}

uint64_t sub_1D2EB2318()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
  if (swift_dynamicCast())
  {

    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2EE4618();
    __swift_project_value_buffer(v5, qword_1EDED2DB8);
    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2E46000, v6, v7, "Maximum Hold Detection duration task cancelled", v8, 2u);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }

    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 72);

    (*(v10 + 8))(v9, v11);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);

    v14 = *(v0 + 8);
  }

  else
  {

    v15 = *(v0 + 128);
    v16 = *(v0 + 112);
    v17 = *(v0 + 88);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_1D2EB24E8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v7 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 88);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1D2EB261C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;

  *a1 = a2;
  v7 = a1[1];

  a1[1] = a3;
  return result;
}

void sub_1D2EB2684(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EE4C98();
  v38[1] = sub_1D2EE4C88();
  sub_1D2EE4C28();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a1 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callCenter);
  [v11 fetchCurrentCalls];
  sub_1D2EE3E68();
  v12 = sub_1D2EE4A38();

  v13 = [v11 callWithUniqueProxyIdentifier_];

  if (v13)
  {
    v14 = v13;
    v15 = sub_1D2EB5CB0(v14);
    v16 = [v14 remoteParticipantHandles];
    sub_1D2E9D860(0, &qword_1EC7392D8, 0x1E69D8C00);
    sub_1D2EB5D88();
    v17 = sub_1D2EE4D78();

    v18 = sub_1D2EA46C0(v17);

    if (v18)
    {

      v19 = [v18 value];
      v20 = sub_1D2EE4A68();
      v22 = v21;

      *a3 = v15;
      *(a3 + 8) = v20;
      *(a3 + 16) = v22;
    }

    else
    {
      if (qword_1EDECFF10 != -1)
      {
        swift_once();
      }

      v32 = sub_1D2EE4618();
      __swift_project_value_buffer(v32, qword_1EDED2DB8);
      v33 = sub_1D2EE45F8();
      v34 = sub_1D2EE4DB8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1D2E46000, v33, v34, "No remote participants in call", v35, 2u);
        MEMORY[0x1D38AF660](v35, -1, -1);
      }

      sub_1D2E94910();
      swift_allocError();
      *v36 = 5;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v23 = sub_1D2EE4618();
    __swift_project_value_buffer(v23, qword_1EDED2DB8);
    (*(v7 + 16))(v10, a2, v6);
    v24 = sub_1D2EE45F8();
    v25 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
      v28 = sub_1D2EE5258();
      v30 = v29;
      (*(v7 + 8))(v10, v6);
      v31 = sub_1D2E685B0(v28, v30, &v39);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1D2E46000, v24, v25, "Unknown callUUID %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1D38AF660](v27, -1, -1);
      MEMORY[0x1D38AF660](v26, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    sub_1D2E94910();
    swift_allocError();
    *v37 = 5;
    swift_willThrow();
  }
}

uint64_t sub_1D2EB2BB4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EB2BD8, 0, 0);
}

uint64_t sub_1D2EB2BD8()
{
  v19 = v0;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_1EDED2DB8);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1D2E685B0(0xD00000000000001FLL, 0x80000001D2EE7B50, &v18);
    _os_log_impl(&dword_1D2E46000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D38AF660](v5, -1, -1);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  if (*(v0 + 40))
  {
    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2E46000, v6, v7, "Continue detecting wait on hold", v8, 2u);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v10 = *(*(*(v0 + 16) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_stateMachine) + 16);
    os_unfair_lock_lock(v10 + 9);
    sub_1D2EB47A8(&v10[4]);
    os_unfair_lock_unlock(v10 + 9);
    v12 = *(*(v0 + 16) + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
    v13 = v12 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
    os_unfair_lock_lock((v12 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
    sub_1D2EA18B0((v13 + 8), v12);
    os_unfair_lock_unlock(v13);
    v14 = *(v0 + 16);
    v15 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_callUUID;
    v16 = swift_task_alloc();
    *(v0 + 32) = v16;
    *v16 = v0;
    v16[1] = sub_1D2EB2EE4;
    v17 = *(v0 + 16);

    return sub_1D2EA7C90(v14 + v15);
  }
}

uint64_t sub_1D2EB2EE4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EB3014, 0, 0);
  }
}

uint64_t sub_1D2EB3014()
{
  v1 = *(v0 + 24);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Prompt user to Enable Wait on Hold", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D2EB30E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 105) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739298, &qword_1D2EF4438);
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EB31B8, 0, 0);
}

uint64_t sub_1D2EB31B8()
{
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391B0, &qword_1D2EF3FF0);
  sub_1D2EE4D08();
  v3 = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider;
  v0[7] = OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_musicDetectorLock;
  v0[8] = v3;
  v0[9] = 0;
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1D2EB329C;
  v6 = v0[6];
  v7 = v0[4];

  return MEMORY[0x1EEE6D9C8](v0 + 13, 0, 0, v7);
}

uint64_t sub_1D2EB329C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D2EB3398, 0, 0);
}

void sub_1D2EB3398()
{
  v26 = v0;
  v1 = *(v0 + 104);
  if (v1 == 4)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

    v2 = *(v0 + 8);

    v2();
    return;
  }

  if (*(v0 + 105))
  {
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v3 = sub_1D2EE4618();
    __swift_project_value_buffer(v3, qword_1EDED2DB8);
    v4 = sub_1D2EE45F8();
    v5 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1D2E685B0(0xD000000000000021, 0x80000001D2EE7B20, &v25);
      _os_log_impl(&dword_1D2E46000, v4, v5, "%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1D38AF660](v7, -1, -1);
      MEMORY[0x1D38AF660](v6, -1, -1);
    }

    v8 = *(*(v0 + 24) + *(v0 + 56));
    os_unfair_lock_lock((v8 + 32));
    *(v8 + 16) = v1;
    if (v1 && v1 != 3)
    {
      v19 = *(v8 + 24);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        __break(1u);
LABEL_24:
        MEMORY[0x1EEE6D9C8](v9, v10, v11, v12);
        return;
      }

      v22 = *(v0 + 24);
      *(v8 + 24) = v21;
      v13 = *(v0 + 72);
      if (v21 >= *(v22 + 112))
      {
        v23 = *(*(v0 + 24) + *(v0 + 64));
        v24 = v23 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex;
        os_unfair_lock_lock((v23 + OBJC_IVAR____TtC16CallIntelligence34SoundClassificationResultsProvider_mediaAnalyzerMutex));
        sub_1D2EA18B0((v24 + 8), v23);
        os_unfair_lock_unlock(v24);
        if (v13)
        {
          return;
        }
      }
    }

    else
    {
      *(v8 + 24) = 0;
      v13 = *(v0 + 72);
    }

    os_unfair_lock_unlock((v8 + 32));
    *(v0 + 72) = v13;
    v14 = *(MEMORY[0x1E69E8678] + 4);
    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = sub_1D2EB329C;
    v16 = *(v0 + 48);
    v12 = *(v0 + 32);
    v9 = v0 + 104;
    v10 = 0;
    v11 = 0;

    goto LABEL_24;
  }

  v17 = swift_task_alloc();
  *(v0 + 88) = v17;
  *v17 = v0;
  v17[1] = sub_1D2EB370C;
  v18 = *(v0 + 24);

  sub_1D2EB2BB4(v1);
}

uint64_t sub_1D2EB370C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EB3894, 0, 0);
  }

  else
  {
    v3[9] = 0;
    v4 = *(MEMORY[0x1E69E8678] + 4);
    v5 = swift_task_alloc();
    v3[10] = v5;
    *v5 = v3;
    v5[1] = sub_1D2EB329C;
    v6 = v3[6];
    v7 = v3[4];

    return MEMORY[0x1EEE6D9C8](v3 + 13, 0, 0, v7);
  }
}

uint64_t sub_1D2EB3894()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[12];

  return v1();
}

uint64_t sub_1D2EB3930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D2EE5078();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D2EB3A30, 0, 0);
}

uint64_t sub_1D2EB3A30()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1D2EE5088();
  v7 = sub_1D2EB3E94(&qword_1EC7391C8, MEMORY[0x1E69E8820]);
  sub_1D2EE52C8();
  sub_1D2EB3E94(&qword_1EC7391D0, MEMORY[0x1E69E87E8]);
  sub_1D2EE5098();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D2EB3BC0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1D2EB3BC0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2EB3D7C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1D2EB3D7C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1D2EB3E0C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1D2EB0158(v2, v3, v4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D2EB3E94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2EB3EDC()
{
  result = qword_1EC739288;
  if (!qword_1EC739288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC739280, &qword_1D2EF43E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739288);
  }

  return result;
}

uint64_t sub_1D2EB3F40(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738D00, &qword_1D2EF2808) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D2EB0384(a1, v4);
}

void sub_1D2EB3FD8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D38AE9B0](a1, a2, v7);
      sub_1D2E9D860(0, &qword_1EC7392D8, 0x1E69D8C00);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D2E9D860(0, &qword_1EC7392D8, 0x1E69D8C00);
    if (sub_1D2EE4F08() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D2EE4F18();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_1D2EE4E38();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_1D2EE4E48();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_1D2EB41FC(char a1)
{
  v2 = type metadata accessor for AudioHistEvent();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v6[*(v4 + 84)];
  sub_1D2EE3E38();
  *v6 = 0xD000000000000037;
  *(v6 + 1) = 0x80000001D2EE7580;
  *(v6 + 2) = 0xD000000000000011;
  *(v6 + 3) = 0x80000001D2EE75C0;
  *(v6 + 4) = 0xD000000000000014;
  *(v6 + 5) = 0x80000001D2EE75E0;
  *(v6 + 6) = 0xD000000000000011;
  *(v6 + 7) = 0x80000001D2EE7600;
  *(v6 + 8) = 0xD000000000000013;
  *(v6 + 9) = 0x80000001D2EE7620;
  *(v6 + 10) = 0xD000000000000012;
  *(v6 + 11) = 0x80000001D2EE7640;
  *(v6 + 12) = 0x6F6365725F706974;
  *(v6 + 13) = 0xEF6465646E656D6DLL;
  *(v6 + 14) = 0x726573755F706974;
  *(v6 + 15) = 0xEF6E6F697463615FLL;
  strcpy(v6 + 128, "failure_reason");
  v6[143] = -18;
  *(v6 + 18) = 0;
  v6[152] = 1;
  *(v6 + 20) = 0;
  v6[168] = 1;
  *(v6 + 22) = 0;
  v6[184] = 1;
  *(v6 + 24) = 0;
  v6[200] = 1;
  *(v6 + 26) = 0;
  v6[216] = 1;
  *(v6 + 217) = 768;
  v6[219] = a1;
  v11[3] = v2;
  v11[4] = &off_1F4E95AF8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  sub_1D2EB5DFC(v6, boxed_opaque_existential_0, type metadata accessor for AudioHistEvent);
  sub_1D2EDFAC8();
  sub_1D2E8E940(v11);
  return sub_1D2EB5664(v6, type metadata accessor for AudioHistEvent);
}

uint64_t sub_1D2EB441C(uint64_t a1)
{
  v4 = *(sub_1D2EE3EB8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D2E7DE28;

  return sub_1D2EB16B4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1D2EB4528(uint64_t a1)
{
  v4 = *(sub_1D2EE3EB8() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1 + ((*(v4 + 80) + 72) & ~*(v4 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1D2E5BA34;

  return sub_1D2EB1E4C(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D2EB466C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7391B0, &qword_1D2EF3FF0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D2E7DE28;

  return sub_1D2EB30E8(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1D2EB47FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E5BA34;

  return sub_1D2EAE1AC(a1, v4, v5, v6);
}

uint64_t sub_1D2EB48E8(uint64_t a1)
{
  v3 = *(sub_1D2EE3EB8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D2EA6C70(a1, v4, v5);
}

void sub_1D2EB4984(uint64_t a1)
{
  v3 = *(sub_1D2EE3EB8() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = *v7;

  sub_1D2EA9F68(a1, v5, v6, v1 + v4, v10);
}

uint64_t sub_1D2EB4A2C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1D2EB4A80(uint64_t a1, char a2)
{
  v75 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CB0, &qword_1D2EF2618);
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  v12 = sub_1D2EE3EB8();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v64 - v17;
  v18 = v2;
  v19 = *(*(v2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine) + OBJC_IVAR____TtC16CallIntelligence26AnsweringMachineController_lock);
  v78 = *(v2 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_answeringMachine);
  v79 = a2;
  v20 = *(*v19 + *MEMORY[0x1E69E6B68] + 16);
  v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v19 + v21));
  v22 = v74;
  sub_1D2EB5238(v19 + v20, &v80);
  if (v22)
  {
    v74 = v22;
    os_unfair_lock_unlock((v19 + v21));
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v23 = sub_1D2EE4618();
    __swift_project_value_buffer(v23, qword_1EDED2DB8);
    v24 = v76;
    v25 = v72;
    v26 = v77;
    (*(v76 + 16))(v72, v75, v77);
    v27 = sub_1D2EE45F8();
    v28 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v80 = v30;
      *v29 = 136315138;
      sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
      v31 = sub_1D2EE5258();
      v33 = v32;
      (*(v24 + 8))(v25, v26);
      v34 = sub_1D2E685B0(v31, v33, &v80);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1D2E46000, v27, v28, "Error starting answering machine for call %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1D38AF660](v30, -1, -1);
      MEMORY[0x1D38AF660](v29, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v25, v26);
    }

    swift_willThrow();
  }

  else
  {
    v69 = v8;
    v70 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v74 = v7;
    os_unfair_lock_unlock((v19 + v21));
    v35 = v80;
    v36 = *(v18 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_captionProvider);
    v37 = *(v36 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_captionMutex);
    os_unfair_lock_lock(v37 + 17);
    sub_1D2E830B4(&v37[4], v35, v36);
    v72 = 0;
    v67 = v18;
    v68 = v35;
    os_unfair_lock_unlock(v37 + 17);
    v38 = v74;
    v39 = v11;
    v65 = *(v73 + 16);
    v66 = v73 + 16;
    v65(v11, v36 + OBJC_IVAR____TtC16CallIntelligence15CaptionProvider_eventStream, v74);
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v40 = sub_1D2EE4618();
    __swift_project_value_buffer(v40, qword_1EDED2DB8);
    v41 = v76;
    v42 = v16;
    v43 = v77;
    (*(v76 + 16))(v16, v75, v77);
    v44 = sub_1D2EE45F8();
    v45 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v80 = v47;
      *v46 = 136315138;
      sub_1D2EB3E94(&qword_1EC7384D8, MEMORY[0x1E69695A8]);
      v48 = sub_1D2EE5258();
      v49 = v42;
      v51 = v50;
      (*(v41 + 8))(v49, v43);
      v52 = sub_1D2E685B0(v48, v51, &v80);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_1D2E46000, v44, v45, "Successfully started WaitOnHoldSession for call %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1D38AF660](v47, -1, -1);
      v53 = v46;
      v38 = v74;
      MEMORY[0x1D38AF660](v53, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v42, v43);
    }

    v54 = v73;
    v56 = v70;
    v55 = v71;
    v57 = sub_1D2EE4CB8();
    (*(*(v57 - 8) + 56))(v55, 1, 1, v57);
    v65(v56, v39, v38);
    v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v59 = v39;
    v60 = (v69 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = 0;
    (*(v54 + 32))(v61 + v58, v56, v38);
    v62 = v67;
    *(v61 + v60) = v67;

    sub_1D2ED7FB0(0, 0, v55, &unk_1D2EF4498, v61);

    v63 = *(v62 + OBJC_IVAR____TtC16CallIntelligence17WaitOnHoldSession_soundClassificationResultsProvider);
    sub_1D2EA1A0C(v68, 1);
    (*(v54 + 8))(v59, v38);
  }
}

uint64_t sub_1D2EB5258(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CB0, &qword_1D2EF2618) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D2E7DE28;

  return sub_1D2EA8488(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D2EB5384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2EB53EC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D2E7DE28;

  return sub_1D2EAC548();
}

uint64_t sub_1D2EB5498()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D2E7DE28;

  return sub_1D2EAC3E4();
}

uint64_t sub_1D2EB55A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2E7DE28;

  return sub_1D2EAC814(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2EB5664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2EB56E0(uint64_t a1)
{
  v2 = sub_1D2EE3EF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = &v29 - v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = *(v11 + 80);
    v33 = *(v11 + 72);
    v34 = a1 + ((v16 + 32) & ~v16);
    v31 = v13;
    v32 = (v3 + 32);
    v30 = v3;
    v38 = v3 + 16;
    v39 = (v3 + 8);
    while (1)
    {
      v36 = v15;
      v17 = v35;
      sub_1D2E5D050(v34 + v33 * v14, v35, &qword_1EC738CA8, &qword_1D2EF2610);
      (*v32)(v40, v17, v2);
      if (qword_1EC737C58 != -1)
      {
        swift_once();
      }

      v37 = v14 + 1;
      v18 = qword_1EC746650;
      if (*(qword_1EC746650 + 16) && (v19 = *(qword_1EC746650 + 40), sub_1D2EB3E94(&qword_1EC7392C0, MEMORY[0x1E6969610]), v20 = sub_1D2EE49E8(), v21 = -1 << *(v18 + 32), v22 = v20 & ~v21, ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
      {
        v23 = ~v21;
        v24 = *(v30 + 72);
        v25 = *(v30 + 16);
        while (1)
        {
          v25(v7, *(v18 + 48) + v24 * v22, v2);
          sub_1D2EB3E94(&qword_1EC7392C8, MEMORY[0x1E6969610]);
          v26 = sub_1D2EE4A08();
          v27 = *v39;
          (*v39)(v7, v2);
          if (v26)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v27(v40, v2);
        v15 = 0;
        result = 0;
      }

      else
      {
LABEL_10:
        result = (*v39)(v40, v2);
        v15 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          return result;
        }

        result = v36 + 1;
      }

      v14 = v37;
      if (v37 == v31)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1D2EB5ACC()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D2E7DE28;

  return sub_1D2EAC6AC(v4);
}

_OWORD *sub_1D2EB5B88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D2EB5B98(uint64_t a1)
{
  v4 = *(sub_1D2EE3EB8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D2E7DE28;

  return sub_1D2EA7528(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D2EB5CB0(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isTelephonyProvider];

  if (v3 && ([a1 isUsingBaseband] & 1) != 0)
  {
    return 1;
  }

  v5 = [a1 provider];
  v6 = [v5 isFaceTimeProvider];

  if (v6)
  {
    return 2;
  }

  v7 = [a1 callSubType];
  if (v7 <= 4)
  {
    return (0x504030100uLL >> (8 * v7));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D2EB5D88()
{
  result = qword_1EC7392E0;
  if (!qword_1EC7392E0)
  {
    sub_1D2E9D860(255, &qword_1EC7392D8, 0x1E69D8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7392E0);
  }

  return result;
}

uint64_t sub_1D2EB5DF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D2EB5DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2EB5E64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D2EB5ECC(uint64_t a1, int a2)
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

uint64_t sub_1D2EB5F14(uint64_t result, int a2, int a3)
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

uint64_t sub_1D2EB5FF4(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2EE4618();
  __swift_project_value_buffer(v6, qword_1EDED2DB8);
  sub_1D2E637F8(v3, v4, v5);

  v7 = sub_1D2EE45F8();
  v8 = sub_1D2EE4DB8();
  sub_1D2E63814(v3, v4, v5);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446466;
    sub_1D2E637F8(v3, v4, v5);
    v11 = sub_1D2EE4AA8();
    v13 = sub_1D2E685B0(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v19 = *(v2 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739320, qword_1D2EF4628);
    v14 = sub_1D2EE4AA8();
    v16 = sub_1D2E685B0(v14, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1D2E46000, v7, v8, "Invalid transition: attemptedState=%{public}s currentState=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v10, -1, -1);
    MEMORY[0x1D38AF660](v9, -1, -1);
  }

  sub_1D2E94910();
  swift_allocError();
  *v17 = 0;
  return swift_willThrow();
}

void sub_1D2EB6228(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v3 = *a1;
  v2 = *(a1 + 8);
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 8);

    sub_1D2E63814(v3, v2, 1u);
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return;
  }

  if (__PAIR128__(v2, v3) < 3)
  {
    sub_1D2E63814(*a1, v2, 2u);
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (qword_1EDECFF10 != -1)
    {
      swift_once();
    }

    v5 = sub_1D2EE4618();
    __swift_project_value_buffer(v5, qword_1EDED2DB8);
    v6 = sub_1D2EE45F8();
    v7 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2E46000, v6, v7, "State transitioned to .screening", v8, 2u);
      MEMORY[0x1D38AF660](v8, -1, -1);
    }

    if (qword_1EC737C40 != -1)
    {
      swift_once();
    }

    if (*(qword_1EC746628 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739310, &qword_1D2EF4618);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D2EF3D10;
      v12 = 0x737574617473;
      v13 = 0xE600000000000000;
      v10 = MEMORY[0x1E69E6158];
      sub_1D2EE4F68();
      *(inited + 96) = v10;
      *(inited + 72) = 0x69737341646C6F48;
      *(inited + 80) = 0xEF74726174537473;
      sub_1D2EDCD5C(inited);
      swift_setDeallocating();
      sub_1D2EB73F8(inited + 32);
      v11 = sub_1D2EE49A8();

      PPSSendTelemetry();
    }
  }

  else
  {
LABEL_13:
    v12 = MEMORY[0x1E69E7CC0];
    v13 = 0;
    v14 = 0;
    sub_1D2EB5FF4(&v12);
    sub_1D2E63814(v12, v13, v14);
  }
}

uint64_t sub_1D2EB64D0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (*a1 == 1)
      {
        v4 = *(a1 + 8);

        result = sub_1D2E63814(v2, v3, 1u);
        *a1 = 1;
        *(a1 + 8) = v3;
        *(a1 + 16) = 1;
      }

      else
      {
        if (qword_1EDECFF10 != -1)
        {
          swift_once();
        }

        v8 = sub_1D2EE4618();
        __swift_project_value_buffer(v8, qword_1EDED2DB8);
        v9 = sub_1D2EE45F8();
        v10 = sub_1D2EE4DB8();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v17 = v12;
          *v11 = 136315138;
          v20 = v2;
          v13 = sub_1D2EE4AA8();
          v15 = sub_1D2E685B0(v13, v14, &v17);

          *(v11 + 4) = v15;
          _os_log_impl(&dword_1D2E46000, v9, v10, "Can't transition to remoteAgentDetected from %s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x1D38AF660](v12, -1, -1);
          MEMORY[0x1D38AF660](v11, -1, -1);
        }

        sub_1D2E94910();
        swift_allocError();
        *v16 = 0;
        return swift_willThrow();
      }
    }

    else
    {
      v17 = 1;
      v18 = MEMORY[0x1E69E7CC0];
      v19 = 1;
      sub_1D2EB5FF4(&v17);
      return sub_1D2E63814(v17, v18, v19);
    }
  }

  else
  {
    v6 = *a1;

    result = sub_1D2E63814(v7, v3, 0);
    *a1 = 1;
    *(a1 + 8) = v2;
    *(a1 + 16) = 1;
  }

  return result;
}

void sub_1D2EB6700(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      v11 = 2;
      v12 = MEMORY[0x1E69E7CC0];
      v13 = 1;
      sub_1D2EB5FF4(&v11);
      sub_1D2E63814(v11, v12, v13);
      return;
    }

    v2 = *a1;
    v4 = *(a1 + 8);

    sub_1D2E63814(v2, v1, 1u);
    *a1 = 2;
    *(a1 + 8) = v1;
    *(a1 + 16) = 1;
  }

  else
  {
    sub_1D2E63814(*a1, v1, 0);
    v6 = MEMORY[0x1E69E7CC0];
    *a1 = 2;
    *(a1 + 8) = v6;
    *(a1 + 16) = 1;
  }

  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v7 = sub_1D2EE4618();
  __swift_project_value_buffer(v7, qword_1EDED2DB8);
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D2E46000, v8, v9, "State transitioned to .requiresUserInput", v10, 2u);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }
}

void sub_1D2EB689C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 2;
    sub_1D2EB5FF4(&v10);
  }

  else
  {
    sub_1D2E63814(*a1, *(a1 + 8), v1);
    if (qword_1EC737C40 != -1)
    {
      swift_once();
    }

    if (*(qword_1EC746628 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739310, &qword_1D2EF4618);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D2EF3D10;
      v10 = 0x737574617473;
      v11 = 0xE600000000000000;
      v4 = MEMORY[0x1E69E6158];
      sub_1D2EE4F68();
      *(inited + 96) = v4;
      strcpy((inited + 72), "HoldAssistStop");
      *(inited + 87) = -18;
      sub_1D2EDCD5C(inited);
      swift_setDeallocating();
      sub_1D2EB73F8(inited + 32);
      v5 = sub_1D2EE49A8();

      PPSSendTelemetry();
    }

    *a1 = xmmword_1D2EF45A0;
    *(a1 + 16) = 2;
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
      *v9 = 0;
      _os_log_impl(&dword_1D2E46000, v7, v8, "State transitioned to .finished", v9, 2u);
      MEMORY[0x1D38AF660](v9, -1, -1);
    }
  }
}

void sub_1D2EB6AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 2;
    sub_1D2EB5FF4(&v7);
  }

  else
  {
    sub_1D2E63814(*a1, *(a1 + 8), v1);
    if (qword_1EC737C40 != -1)
    {
      swift_once();
    }

    if (*(qword_1EC746628 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739310, &qword_1D2EF4618);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D2EF3D10;
      v7 = 0x737574617473;
      v8 = 0xE600000000000000;
      v4 = MEMORY[0x1E69E6158];
      sub_1D2EE4F68();
      *(inited + 96) = v4;
      strcpy((inited + 72), "HoldAssistStop");
      *(inited + 87) = -18;
      sub_1D2EDCD5C(inited);
      swift_setDeallocating();
      sub_1D2EB73F8(inited + 32);
      v5 = sub_1D2EE49A8();

      PPSSendTelemetry();
    }

    v6 = MEMORY[0x1E69E7CC0];
    *a1 = 3;
    *(a1 + 8) = v6;
    *(a1 + 16) = 1;
  }
}

double sub_1D2EB6CAC(uint64_t a1)
{
  if (*(a1 + 16) >= 2u && *a1 == 0)
  {
    sub_1D2E63814(*a1, *(a1 + 8), 2u);
    *&result = 1;
    *a1 = xmmword_1D2EF45B0;
    *(a1 + 16) = 2;
  }

  else
  {
    v4 = xmmword_1D2EF45B0;
    v5 = 2;
    sub_1D2EB5FF4(&v4);
  }

  return result;
}

uint64_t sub_1D2EB6D84(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (v2 < 2 || (*a1 - 1) > 1)
  {
    v6[0] = 0;
    v6[1] = 0;
    v7 = 2;
    return sub_1D2EB5FF4(v6);
  }

  else
  {
    result = sub_1D2E63814(*a1, *(a1 + 8), v2);
    *a1 = a2;
    *(a1 + 16) = 2;
  }

  return result;
}

double sub_1D2EB6E1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 <= 1)
  {
    sub_1D2E63814(*a1, *(a1 + 8), v2);
    if (qword_1EC737C40 != -1)
    {
      swift_once();
    }

    if (*(qword_1EC746628 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739310, &qword_1D2EF4618);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D2EF3D10;
      v4 = MEMORY[0x1E69E6158];
      sub_1D2EE4F68();
      *(inited + 96) = v4;
      strcpy((inited + 72), "HoldAssistStop");
      *(inited + 87) = -18;
      sub_1D2EDCD5C(inited);
      swift_setDeallocating();
      sub_1D2EB73F8(inited + 32);
      v5 = sub_1D2EE49A8();

      PPSSendTelemetry();
    }
  }

  *&result = 3;
  *a1 = xmmword_1D2EF45A0;
  *(a1 + 16) = 2;
  return result;
}

uint64_t sub_1D2EB6FA8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v42 = a6;
  v9 = type metadata accessor for HoldAssistEvent();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v18 != 1)
    {
      v45 = MEMORY[0x1E69E7CC0];
      v46 = 0;
      v47 = 0;
      sub_1D2EB5FF4(&v45);
      return sub_1D2E63814(v45, v46, v47);
    }

    v19 = *(a1 + 8);

    sub_1D2E63814(v16, v17, 1u);
    v20 = *(v17 + 16);
    if (!v20)
    {
      goto LABEL_9;
    }

    v15 = ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v21 = *(v44 + 72);
    v22 = *&v15[v17 + 16 + v21 * (v20 - 1)];
    if (v22 & 0x8000000000000000) == 0 || (v22)
    {
      goto LABEL_9;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = *(v17 + 16);
      if (v23)
      {
LABEL_8:
        v24 = &v15[v17 + (v23 - 1) * v21];
        v25 = v23 - 1;
        sub_1D2E61F20(v24);
        *(v17 + 16) = v25;
LABEL_9:
        v26 = v42 & 1 | 0x8000000000000000;
        v27 = *(v9 + 20);

        sub_1D2EE3E38();
        *v13 = v43;
        *(v13 + 8) = a5;
        *(v13 + 16) = v26;
        *(v13 + 24) = a2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1D2EC8538(0, *(v17 + 16) + 1, 1, v17);
        }

        v29 = *(v17 + 16);
        v28 = *(v17 + 24);
        if (v29 >= v28 >> 1)
        {
          v17 = sub_1D2EC8538(v28 > 1, v29 + 1, 1, v17);
        }

        *(v17 + 16) = v29 + 1;
        result = sub_1D2EB7460(v13, v17 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v29);
        v16 = v16;
LABEL_25:
        *a1 = v16;
        *(a1 + 8) = v17;
        *(a1 + 16) = v18;
        return result;
      }
    }

    else
    {
      v17 = sub_1D2EB73E4(v17);
      v23 = *(v17 + 16);
      if (v23)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_29:
    result = sub_1D2EB73E4(v16);
    v16 = result;
    v35 = *(result + 16);
    if (!v35)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v31 = *a1;

  sub_1D2E63814(v32, v17, 0);
  v33 = *(v16 + 16);
  if (!v33)
  {
    goto LABEL_20;
  }

  v21 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v13 = *(v44 + 72);
  v34 = *(v16 + v21 + v13 * (v33 - 1) + 16);
  if (v34 & 0x8000000000000000) == 0 || (v34)
  {
    goto LABEL_20;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_29;
  }

  v35 = *(v16 + 16);
  if (v35)
  {
LABEL_19:
    v36 = v35 - 1;
    sub_1D2E61F20(v16 + v21 + (v35 - 1) * v13);
    *(v16 + 16) = v36;
LABEL_20:
    v37 = v42 & 1 | 0x8000000000000000;
    v38 = *(v9 + 20);

    sub_1D2EE3E38();
    *v15 = v43;
    *(v15 + 1) = a5;
    *(v15 + 2) = v37;
    *(v15 + 3) = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1D2EC8538(0, *(v16 + 16) + 1, 1, v16);
    }

    v40 = *(v16 + 16);
    v39 = *(v16 + 24);
    if (v40 >= v39 >> 1)
    {
      v16 = sub_1D2EC8538(v39 > 1, v40 + 1, 1, v16);
    }

    *(v16 + 16) = v40 + 1;
    result = sub_1D2EB7460(v15, v16 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40);
    v17 = 0;
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D2EB7388()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2EB73F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739318, &qword_1D2EF4620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2EB7460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HoldAssistEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D2EB750C()
{
  sub_1D2EE3EB8();
  if (v0 <= 0x3F)
  {
    sub_1D2EB7590();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D2EB7590()
{
  if (!qword_1EC739338)
  {
    sub_1D2EB75E8();
    v0 = sub_1D2EE4E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC739338);
    }
  }
}

unint64_t sub_1D2EB75E8()
{
  result = qword_1EC739340;
  if (!qword_1EC739340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC739340);
  }

  return result;
}

uint64_t sub_1D2EB7634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v95 = *MEMORY[0x1E69E9840];
  v3 = sub_1D2EE3CF8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2EE3D88();
  v89 = *(v8 - 8);
  v9 = *(v89 + 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v75 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = (&v74 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v74 - v17;
  v19 = type metadata accessor for WaitOnHoldTranscriptLogger(0);
  v85 = *(v19 - 8);
  v86 = v19;
  v20 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D2EE3EB8();
  v82 = *(v23 - 8);
  v83 = v23;
  v24 = *(v82 + 16);
  v84 = v22;
  v25 = v22;
  v26 = a1;
  v24(v25, a1);
  sub_1D2EE3D18();
  v93 = 0x6F486E4F74696157;
  v94 = 0xEA0000000000646CLL;
  v27 = *MEMORY[0x1E6968F58];
  v77 = v4[13];
  v77(v7, v27, v3);
  sub_1D2E4EED4();
  sub_1D2EE3D68();
  v28 = v4[1];
  v79 = v3;
  v78 = v4 + 1;
  v28(v7, v3);
  v29 = *(v89 + 1);
  v90 = v8;
  v81 = v89 + 8;
  v80 = v29;
  v29(v16, v8);
  v30 = objc_opt_self();
  v31 = [v30 defaultManager];
  sub_1D2EE3D58();
  v32 = sub_1D2EE4A38();

  LOBYTE(v16) = [v31 fileExistsAtPath:v32 isDirectory:0];

  v33 = v18;
  if (v16)
  {
    goto LABEL_4;
  }

  v76 = a1;
  v34 = [v30 defaultManager];
  v35 = sub_1D2EE3D28();
  v93 = 0;
  v36 = [v34 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:&v93];

  if (v36)
  {
    v37 = v93;
    v26 = v76;
LABEL_4:
    v93 = sub_1D2EE3E68();
    v94 = v38;
    v39 = v79;
    v77(v7, *MEMORY[0x1E6968F68], v79);
    v40 = v88;
    sub_1D2EE3D68();
    v28(v7, v39);

    sub_1D2EE3DF8();
    sub_1D2EB75E8();
    v41 = v90;
    v42 = v75;
    (*(v89 + 2))(v75, v40, v90);
    v68 = sub_1D2EB8C84(v42);
    (*(v82 + 8))(v26, v83);
    v69 = v80;
    v80(v40, v41);
    v69(v33, v41);
    v70 = v86;
    v71 = v84;
    *&v84[*(v86 + 20)] = v68;
    v72 = v87;
    sub_1D2EB8E30(v71, v87);
    (*(v85 + 56))(v72, 0, 1, v70);
    result = sub_1D2EB8E94(v71, type metadata accessor for WaitOnHoldTranscriptLogger);
    goto LABEL_11;
  }

  v43 = v93;
  v44 = sub_1D2EE3CE8();

  swift_willThrow();
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v45 = sub_1D2EE4618();
  __swift_project_value_buffer(v45, qword_1EDED2DB8);
  v46 = v44;
  v47 = sub_1D2EE45F8();
  v48 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v93 = v88;
    *v49 = 136315138;
    swift_getErrorValue();
    v50 = v91;
    v51 = v92;
    v52 = sub_1D2EE4E58();
    v89 = v18;
    v53 = v52;
    v79 = &v74;
    v54 = *(v52 - 8);
    v55 = *(v54 + 64);
    MEMORY[0x1EEE9AC00](v52);
    v57 = &v74 - v56;
    v58 = *(v51 - 8);
    (*(v58 + 16))(&v74 - v56, v50, v51);
    (*(v58 + 56))(v57, 0, 1, v51);
    v59 = sub_1D2EE2754(v57, v51);
    v61 = v60;
    (*(v54 + 8))(v57, v53);
    v62 = sub_1D2E685B0(v59, v61, &v93);

    *(v49 + 4) = v62;
    _os_log_impl(&dword_1D2E46000, v47, v48, "Error setting up log directory structure: %s", v49, 0xCu);
    v63 = v88;
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x1D38AF660](v63, -1, -1);
    MEMORY[0x1D38AF660](v49, -1, -1);

    v64 = v83;
    v65 = *(v82 + 8);
    v65(v76, v83);
    v66 = v89;
  }

  else
  {

    v64 = v83;
    v65 = *(v82 + 8);
    v65(v76, v83);
    v66 = v18;
  }

  v80(v66, v90);
  v65(v84, v64);
  result = (*(v85 + 56))(v87, 1, 1, v86);
LABEL_11:
  v67 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2EB82A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v38 = a3;
  LODWORD(v39) = a4;
  v6 = type metadata accessor for TranscriptLog(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2EE3E48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v15 setDateStyle_];
  [v15 setTimeStyle_];
  sub_1D2EE3E38();
  v16 = sub_1D2EE3E18();
  v40 = v15;
  v17 = [v15 stringFromDate_];

  v18 = sub_1D2EE4A68();
  v20 = v19;

  v41 = v14;
  v42 = v11;
  v21 = *(v11 + 16);
  v43 = v10;
  v21(v9, v14, v10);
  v22 = &v9[v6[5]];
  *v22 = v18;
  v22[1] = v20;
  v23 = &v9[v6[6]];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = &v9[v6[7]];
  *v24 = v38;
  v24[8] = v39 & 1;
  v25 = qword_1EDECFF10;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_1D2EE4618();
  __swift_project_value_buffer(v26, qword_1EDED2DB8);
  v27 = sub_1D2EE45F8();
  v28 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D2E46000, v27, v28, "Logging transcript", v29, 2u);
    MEMORY[0x1D38AF660](v29, -1, -1);
  }

  v30 = sub_1D2EE3BF8();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1D2EE3BE8();
  sub_1D2EB8FF0(&qword_1EC739348, type metadata accessor for TranscriptLog);
  v33 = sub_1D2EE3BD8();
  v35 = v34;

  if (*(v37 + *(type metadata accessor for WaitOnHoldTranscriptLogger(0) + 20)))
  {
    v44 = v33;
    v45 = v35;
    sub_1D2EB8DDC();
    sub_1D2EE4D98();

    sub_1D2EB8E94(v9, type metadata accessor for TranscriptLog);
    (*(v42 + 8))(v41, v43);
    return sub_1D2E7EA2C(v33, v35);
  }

  else
  {

    sub_1D2E7EA2C(v33, v35);
    sub_1D2EB8E94(v9, type metadata accessor for TranscriptLog);
    return (*(v42 + 8))(v41, v43);
  }
}

uint64_t sub_1D2EB8908(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739368, &qword_1D2EF46A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2EB8F9C();
  sub_1D2EE53C8();
  v26 = 0;
  sub_1D2EE3E48();
  sub_1D2EB8FF0(&qword_1EC737F08, MEMORY[0x1E6969530]);
  sub_1D2EE5248();
  if (!v2)
  {
    v11 = type metadata accessor for TranscriptLog(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v25 = 1;
    sub_1D2EE5208();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v24 = 2;
    sub_1D2EE5208();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    LOBYTE(v18) = *(v18 + 8);
    v22 = v19;
    v23 = v18;
    v21[15] = 3;
    sub_1D2EB9038();
    sub_1D2EE5248();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2EB8B48()
{
  v1 = 1702125924;
  v2 = 0x636E617265747475;
  if (*v0 != 2)
  {
    v2 = 0x6974636964657270;
  }

  if (*v0)
  {
    v1 = 0x6972745365746164;
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

uint64_t sub_1D2EB8BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2EB91A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2EB8BF4(uint64_t a1)
{
  v2 = sub_1D2EB8F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EB8C30(uint64_t a1)
{
  v2 = sub_1D2EB8F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1D2EB8C84(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D2EE3D28();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

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

unint64_t sub_1D2EB8DDC()
{
  result = qword_1EC739350;
  if (!qword_1EC739350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739350);
  }

  return result;
}

uint64_t sub_1D2EB8E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WaitOnHoldTranscriptLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EB8E94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2EB8F1C()
{
  result = sub_1D2EE3E48();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D2EB8F9C()
{
  result = qword_1EC739370;
  if (!qword_1EC739370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739370);
  }

  return result;
}

uint64_t sub_1D2EB8FF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2EB9038()
{
  result = qword_1EC739378;
  if (!qword_1EC739378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739378);
  }

  return result;
}

unint64_t sub_1D2EB90A0()
{
  result = qword_1EC739380;
  if (!qword_1EC739380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739380);
  }

  return result;
}

unint64_t sub_1D2EB90F8()
{
  result = qword_1EC739388;
  if (!qword_1EC739388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739388);
  }

  return result;
}

unint64_t sub_1D2EB9150()
{
  result = qword_1EC739390;
  if (!qword_1EC739390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739390);
  }

  return result;
}

uint64_t sub_1D2EB91A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D2EE5288() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6972745365746164 && a2 == 0xEA0000000000676ELL || (sub_1D2EE5288() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065 || (sub_1D2EE5288() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974636964657270 && a2 == 0xEA00000000006E6FLL)
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

void sub_1D2EB95FC(char a1, void *a2)
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
    *(v7 + 4) = sub_1D2E685B0(0xD000000000000023, 0x80000001D2EE7D60, &v15);
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
    _os_log_impl(&dword_1D2E46000, oslog, v6, "%s didStart: %{BOOL}d error: %s", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D2EB980C(char a1, void *a2)
{
  v3 = v2;
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v6 = sub_1D2EE4618();
  __swift_project_value_buffer(v6, qword_1EDED2DB8);
  v7 = a2;
  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_1D2E685B0(0xD000000000000030, 0x80000001D2EE7D20, &v21);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    *(v10 + 18) = 2080;
    if (a2)
    {
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      v13 = sub_1D2EE4AA8();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_1D2E685B0(v13, v15, &v21);

    *(v10 + 20) = v16;
    _os_log_impl(&dword_1D2E46000, v8, v9, "%s didFinishAnnouncement: %{BOOL}d error: %s", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v11, -1, -1);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }

  v17 = v3 + OBJC_IVAR____TtC16CallIntelligence34WrappedAVCAnsweringMachineDelegate_onAnsweringMachineDidFinishAnnouncement;
  v19 = *(v3 + OBJC_IVAR____TtC16CallIntelligence34WrappedAVCAnsweringMachineDelegate_onAnsweringMachineDidFinishAnnouncement);
  v18 = *(v17 + 8);

  v19(a1 & 1, a2);
}

void sub_1D2EB9A30(char a1, uint64_t a2, void *a3)
{
  v6 = sub_1D2EE3D88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393B0, &unk_1D2EF28C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v38[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38[-v19];
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v21 = sub_1D2EE4618();
  __swift_project_value_buffer(v21, qword_1EDED2DB8);
  sub_1D2E8A8AC(a2, v20);
  v22 = a3;
  v23 = sub_1D2EE45F8();
  v24 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v23, v24))
  {
    v39 = v24;
    v25 = a1;
    v26 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v26 = 136315906;
    *(v26 + 4) = sub_1D2E685B0(0xD000000000000033, 0x80000001D2EE7CE0, &v42);
    *(v26 + 12) = 1024;
    *(v26 + 14) = v25 & 1;
    *(v26 + 18) = 2080;
    sub_1D2E8A8AC(v20, v18);
    if ((*(v7 + 48))(v18, 1, v6) == 1)
    {
      sub_1D2E8A91C(v18);
      v27 = 0xE300000000000000;
      v28 = 7104878;
    }

    else
    {
      (*(v7 + 32))(v13, v18, v6);
      (*(v7 + 16))(v11, v13, v6);
      v28 = sub_1D2EE4AA8();
      v27 = v29;
      (*(v7 + 8))(v13, v6);
    }

    sub_1D2E8A91C(v20);
    v30 = sub_1D2E685B0(v28, v27, &v42);

    *(v26 + 20) = v30;
    *(v26 + 28) = 2080;
    v31 = v39;
    if (a3)
    {
      v41 = a3;
      v32 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B50, &qword_1D2EF2420);
      v33 = sub_1D2EE4AA8();
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v36 = sub_1D2E685B0(v33, v35, &v42);

    *(v26 + 30) = v36;
    _os_log_impl(&dword_1D2E46000, v23, v31, "%s didStop: %{BOOL}d messageRecordingURL: %s error: %s", v26, 0x26u);
    v37 = v40;
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v37, -1, -1);
    MEMORY[0x1D38AF660](v26, -1, -1);
  }

  else
  {

    sub_1D2E8A91C(v20);
  }
}

uint64_t sub_1D2EB9F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393B8, &qword_1D2EF4838);
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393C0, &qword_1D2EF4840) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393C8, &qword_1D2EF4848);
  v3[32] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v10 = sub_1D2EE44A8();
  v3[34] = v10;
  v11 = *(v10 - 8);
  v3[35] = v11;
  v12 = *(v11 + 64) + 15;
  v3[36] = swift_task_alloc();
  v13 = sub_1D2EE44B8();
  v3[37] = v13;
  v14 = *(v13 - 8);
  v3[38] = v14;
  v15 = *(v14 + 64) + 15;
  v3[39] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393D0, &qword_1D2EF4850) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v17 = sub_1D2EE45D8();
  v3[41] = v17;
  v18 = *(v17 - 8);
  v3[42] = v18;
  v19 = *(v18 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393D8, &qword_1D2EF4858) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393E0, &qword_1D2EF4860);
  v3[47] = v21;
  v22 = *(v21 - 8);
  v3[48] = v22;
  v23 = *(v22 + 64) + 15;
  v3[49] = swift_task_alloc();
  v24 = sub_1D2EE4708();
  v3[50] = v24;
  v25 = *(v24 - 8);
  v3[51] = v25;
  v26 = *(v25 + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EBA33C, 0, 0);
}

uint64_t sub_1D2EBA33C()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v18 = *(v0 + 400);
  v19 = *(v0 + 424);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 376);
  v7 = *(v0 + 360);
  v21 = *(v0 + 352);
  v8 = *(v0 + 216);
  v20 = *(v0 + 320);
  v17 = *(v0 + 200);
  v9 = swift_task_alloc();
  *(v9 + 16) = v17;
  *(v9 + 32) = v8;
  sub_1D2EE4718();

  v10 = sub_1D2EE4188();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1D2EBB4F8(v5, v7);
  sub_1D2EE41C8();
  sub_1D2EE41B8();
  sub_1D2EE4198();
  sub_1D2EE41A8();
  sub_1D2E5D0B8(v5, &qword_1EC7393D8, &qword_1D2EF4858);
  (*(v3 + 104))(v4, *MEMORY[0x1E69A1378], v6);
  *(v0 + 432) = sub_1D2EBC0D4(&qword_1EC7393E8, MEMORY[0x1E69C61B0]);
  sub_1D2EE47C8();
  (*(v3 + 8))(v4, v6);
  v11 = *(v2 + 8);
  *(v0 + 440) = v11;
  *(v0 + 448) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v1, v18);
  v12 = sub_1D2EE45C8();
  (*(*(v12 - 8) + 56))(v20, 1, 1, v12);
  sub_1D2EE45B8();
  v13 = *(MEMORY[0x1E69A1360] + 4);
  v14 = swift_task_alloc();
  *(v0 + 456) = v14;
  *v14 = v0;
  v14[1] = sub_1D2EBA664;
  v15 = *(v0 + 248);

  return MEMORY[0x1EEE0B300](v15, 0xD00000000000001CLL, 0x80000001D2EE7D90);
}

uint64_t sub_1D2EBA664()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1D2EBAECC;
  }

  else
  {
    v3 = sub_1D2EBA778;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2EBA778()
{
  v1 = *(v0 + 248);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393F0, &qword_1D2EF4868);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D2E5D0B8(v1, &qword_1EC7393C0, &qword_1D2EF4840);
  }

  else
  {
    v45 = *(v0 + 440);
    v46 = *(v0 + 448);
    v40 = *(v0 + 416);
    v41 = *(v0 + 424);
    v44 = *(v0 + 408);
    v33 = *(v0 + 344);
    v3 = *(v0 + 336);
    v34 = *(v0 + 328);
    v35 = *(v0 + 352);
    v31 = *(v0 + 312);
    v42 = *(v0 + 304);
    v43 = *(v0 + 400);
    v47 = *(v0 + 296);
    v32 = *(v0 + 288);
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v36 = *(v0 + 208);
    v37 = *(v0 + 216);
    v38 = *(v0 + 200);
    v39 = v4;
    v29 = *(v6 + 48);
    v30 = *(v2 + 48);
    v8 = *(v42 + 32);
    v8(v7, v1);
    v9 = *(v4 + 32);
    v9(v7 + v29, v1 + v30, v5);
    v10 = *(v6 + 48);
    (v8)(v31, v7, v47);
    v9(v32, v7 + v10, v5);
    sub_1D2EE4498();
    (*(v3 + 8))(v35, v34);
    (*(v3 + 32))(v35, v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739400, &unk_1D2EF4870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2EF4820;
    strcpy((inited + 32), "conversation");
    v12 = MEMORY[0x1E69E6158];
    v13 = MEMORY[0x1E69C6558];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = v13;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v36;
    *(inited + 56) = v37;
    *(inited + 88) = 0x74706D6F7270;
    *(inited + 96) = 0xE600000000000000;
    *(v0 + 160) = *(v38 + 56);
    *(inited + 128) = v12;
    *(inited + 136) = v13;
    *(inited + 104) = *(v0 + 160);

    sub_1D2EBB568(v0 + 160, v0 + 176);
    sub_1D2EDCE98(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739408, &qword_1D2EF5ED0);
    swift_arrayDestroy();
    sub_1D2EDCFCC(MEMORY[0x1E69E7CC0]);
    sub_1D2EE4488();

    (*(v39 + 8))(v32, v5);
    (*(v42 + 8))(v31, v47);
    v45(v41, v43);
    (*(v44 + 32))(v41, v40, v43);
  }

  v15 = *(v0 + 440);
  v14 = *(v0 + 448);
  v17 = *(v0 + 424);
  v16 = *(v0 + 432);
  v18 = *(v0 + 416);
  v19 = *(v0 + 400);
  v20 = *(v0 + 352);
  v21 = *(v0 + 240);
  v22 = *(v0 + 200);
  sub_1D2EE47B8();
  *(v0 + 192) = *(v22 + 48);
  sub_1D2EE4138();
  sub_1D2EE47D8();
  v15(v18, v19);
  v23 = *(MEMORY[0x1E69A0830] + 4);
  v24 = swift_task_alloc();
  *(v0 + 472) = v24;
  v25 = sub_1D2EBC0D4(&qword_1EC7393F8, MEMORY[0x1E69DA478]);
  *v24 = v0;
  v24[1] = sub_1D2EBAC00;
  v26 = *(v0 + 240);
  v27 = *(v0 + 224);

  return MEMORY[0x1EEE0A360](v27, v25);
}

uint64_t sub_1D2EBAC00(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 472);
  v8 = *v3;
  v6[60] = v2;

  v9 = v6[30];
  v10 = v6[29];
  v11 = v6[28];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_1D2EBB008;
  }

  else
  {
    v6[61] = a2;
    v6[62] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_1D2EBAD8C;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1D2EBAD8C()
{
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[52];
  v3 = v0[53];
  v6 = v0[49];
  v5 = v0[50];
  v8 = v0[45];
  v7 = v0[46];
  v13 = v0[43];
  v14 = v0[40];
  v15 = v0[39];
  v16 = v0[36];
  v17 = v0[33];
  v18 = v0[31];
  v19 = v0[30];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v2(v3, v5);

  v9 = v0[1];
  v11 = v0[61];
  v10 = v0[62];

  return v9(v10, v11);
}

uint64_t sub_1D2EBAECC()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[53];
  v4 = v0[50];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v2(v3, v4);
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[49];
  v9 = v0[45];
  v8 = v0[46];
  v11 = v0[43];
  v10 = v0[44];
  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[36];
  v17 = v0[33];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[58];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D2EBB008()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[53];
  v4 = v0[50];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v2(v3, v4);
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[49];
  v9 = v0[45];
  v8 = v0[46];
  v11 = v0[43];
  v10 = v0[44];
  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[36];
  v17 = v0[33];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[60];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D2EBB144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739410, &qword_1D2EF4880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v32 - v7;
  v9 = sub_1D2EE4778();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1D2EE47A8();
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  v34 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v32 - v17;
  sub_1D2EE4768();
  sub_1D2EE4758();
  v19 = *(a1 + 56);
  v18 = *(a1 + 64);
  v20 = sub_1D2EE4798();
  v21 = *(*(v20 - 8) + 56);
  v21(v8, 1, 1, v20);
  sub_1D2EE4748();
  sub_1D2E5D0B8(v8, &qword_1EC739410, &qword_1D2EF4880);
  sub_1D2EE4758();
  v21(v8, 1, 1, v20);
  sub_1D2EE4748();
  sub_1D2E5D0B8(v8, &qword_1EC739410, &qword_1D2EF4880);
  sub_1D2EE4758();
  sub_1D2EE4788();
  v22 = MEMORY[0x1E69C6390];
  v23 = v33;
  v24 = v35;
  sub_1D2EE4738();
  v25 = v34;
  v26 = *(v34 + 8);
  v27 = v24;
  v26(v16, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739418, &qword_1D2EF4888);
  v28 = *(v36 + 72);
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D2EF3D10;
  (*(v25 + 16))(v30 + v29, v23, v27);
  MEMORY[0x1D38AE1B0](v30, v27, v22);

  return (v26)(v23, v27);
}

uint64_t sub_1D2EBB4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393D8, &qword_1D2EF4858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EBB5C4(uint64_t a1)
{
  v1[34] = a1;
  v2 = sub_1D2EE3FE8();
  v1[35] = v2;
  v3 = *(v2 - 8);
  v1[36] = v3;
  v4 = *(v3 + 64) + 15;
  v1[37] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739420, &qword_1D2EF4898);
  v1[38] = v5;
  v6 = *(v5 - 8);
  v1[39] = v6;
  v7 = *(v6 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v8 = *(*(sub_1D2EE4158() - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  v9 = sub_1D2EE41E8();
  v1[43] = v9;
  v10 = *(v9 - 8);
  v1[44] = v10;
  v11 = *(v10 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v12 = *(*(sub_1D2EE4018() - 8) + 64) + 15;
  v1[47] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739428, &qword_1D2EF48A0) - 8) + 64) + 15;
  v1[48] = swift_task_alloc();
  v14 = sub_1D2EE4178();
  v1[49] = v14;
  v15 = *(v14 - 8);
  v1[50] = v15;
  v16 = *(v15 + 64) + 15;
  v1[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2EBB84C, 0, 0);
}

uint64_t sub_1D2EBB84C()
{
  v88 = v0;
  v1 = v0[47];
  sub_1D2EE4008();
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[48];
  sub_1D2EE4168();
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    sub_1D2E5D0B8(v0[48], &qword_1EC739428, &qword_1D2EF48A0);
    sub_1D2EBC018();
    swift_allocError();
    *v6 = 6;
    swift_willThrow();
    v22 = v0[51];
    v24 = v0[47];
    v23 = v0[48];
    v26 = v0[45];
    v25 = v0[46];
    v28 = v0[41];
    v27 = v0[42];
    v29 = v0[40];
    v30 = v0[37];

    v31 = v0[1];
  }

  else
  {
    v7 = v0[50];
    v8 = v0[51];
    v9 = v0[49];
    v10 = v0[46];
    v11 = v0[44];
    v79 = v0[45];
    v82 = v0[43];
    v12 = v0[42];
    v85 = v0[41];
    (*(v7 + 32))(v8, v0[48], v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739438, &qword_1D2EF48A8);
    v13 = *(v7 + 72);
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D2EF3D10;
    (*(v7 + 16))(v15 + v14, v8, v9);
    sub_1D2EE4148();
    sub_1D2EE41D8();
    (*(v11 + 16))(v79, v10, v82);
    v16 = sub_1D2EE4138();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = sub_1D2EE4128();
    sub_1D2EE3FC8();
    v20 = v0[33];
    __swift_project_boxed_opaque_existential_1(v0 + 29, v0[32]);
    v21 = *(v20 + 8);
    sub_1D2EE3FF8();
    v86 = v19;
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v33 = sub_1D2EE4618();
    __swift_project_value_buffer(v33, qword_1EC7466D0);
    v34 = sub_1D2EE45F8();
    v35 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D2E46000, v34, v35, "MiniPlanner adapter initialized.", v36, 2u);
      MEMORY[0x1D38AF660](v36, -1, -1);
    }

    v38 = v0[40];
    v37 = v0[41];
    v40 = v0[38];
    v39 = v0[39];

    (*(v39 + 16))(v38, v37, v40);
    v41 = sub_1D2EE45F8();
    v75 = sub_1D2EE4DD8();
    v42 = os_log_type_enabled(v41, v75);
    v43 = v0[50];
    v44 = v0[51];
    v77 = v0[49];
    v45 = v0[46];
    v46 = v0[44];
    v48 = v0[40];
    v47 = v0[41];
    v80 = v47;
    v83 = v0[43];
    v50 = v0[38];
    v49 = v0[39];
    if (v42)
    {
      v73 = v0[46];
      v74 = v0[51];
      v51 = v0[36];
      v52 = v0[37];
      v69 = v0[50];
      v53 = v0[35];
      v70 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v87 = v72;
      *v70 = 136315138;
      v71 = v41;
      sub_1D2EE3FD8();
      sub_1D2EBC0D4(&qword_1EC739440, MEMORY[0x1E69B2150]);
      v54 = sub_1D2EE5258();
      v56 = v55;
      (*(v51 + 8))(v52, v53);
      v57 = *(v49 + 8);
      v57(v48, v50);
      v58 = sub_1D2E685B0(v54, v56, &v87);

      *(v70 + 4) = v58;
      _os_log_impl(&dword_1D2E46000, v71, v75, "MiniPlanner adapter version: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x1D38AF660](v72, -1, -1);
      MEMORY[0x1D38AF660](v70, -1, -1);

      v57(v80, v50);
      (*(v46 + 8))(v73, v83);
      (*(v69 + 8))(v74, v77);
    }

    else
    {

      v59 = *(v49 + 8);
      v59(v48, v50);
      v59(v80, v50);
      (*(v46 + 8))(v45, v83);
      (*(v43 + 8))(v44, v77);
    }

    v60 = v0[51];
    v62 = v0[47];
    v61 = v0[48];
    v63 = v0[45];
    v64 = v0[46];
    v76 = v0[42];
    v78 = v0[41];
    v81 = v0[40];
    v84 = v0[37];
    v65 = v0[34];
    __swift_destroy_boxed_opaque_existential_1(v0 + 29);
    v0[11] = 0xD000000000000033;
    v0[12] = 0x80000001D2EE7DD0;
    v0[13] = 0x7070417472616D53;
    v0[14] = 0xEF736E6F69746341;
    v0[15] = 0x7070417472616D53;
    v0[16] = 0xEF736E6F69746341;
    v0[17] = v86;
    v0[18] = 0xD000000000000CB5;
    v0[19] = 0x80000001D2EE7E10;
    v0[2] = 0xD000000000000033;
    v0[3] = 0x80000001D2EE7DD0;
    v0[4] = 0x7070417472616D53;
    v0[5] = 0xEF736E6F69746341;
    v0[6] = 0x7070417472616D53;
    v0[7] = 0xEF736E6F69746341;
    v0[8] = v86;
    v0[9] = 0xD000000000000CB5;
    v0[10] = 0x80000001D2EE7E10;
    sub_1D2EBC06C((v0 + 11), (v0 + 20));
    sub_1D2EBC0A4((v0 + 2));
    *v65 = *(v0 + 11);
    v66 = *(v0 + 15);
    v67 = *(v0 + 17);
    v68 = *(v0 + 13);
    *(v65 + 64) = v0[19];
    *(v65 + 32) = v66;
    *(v65 + 48) = v67;
    *(v65 + 16) = v68;

    v31 = v0[1];
  }

  return v31();
}

unint64_t sub_1D2EBC018()
{
  result = qword_1EC739430;
  if (!qword_1EC739430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739430);
  }

  return result;
}

uint64_t sub_1D2EBC0D4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D2EBC140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D2EBC188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2EBC224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D2EBC354;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1D2EBC354(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1D2EBC474()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 == 0x7261646E656C6143 && v1 == 0xE800000000000000)
  {
    return sub_1D2EBC694();
  }

  v4 = *v0;
  v5 = v0[1];
  if (sub_1D2EE5288())
  {
    return sub_1D2EBC694();
  }

  if (v2 == 0x7265646E696D6552 && v1 == 0xE800000000000000)
  {
    return sub_1D2EBC718();
  }

  v7 = sub_1D2EE5288();
  v8 = v1 == 0xE900000000000073 && v2 == 0x7265646E696D6552;
  if (v8 || (v7 & 1) != 0 || (sub_1D2EE5288() & 1) != 0)
  {
    return sub_1D2EBC718();
  }

  if (v2 == 1936744781 && v1 == 0xE400000000000000 || (sub_1D2EE5288() & 1) != 0)
  {
    result = v0[20];
    if (!result)
    {
      return result;
    }

    v9 = v0[19];
    goto LABEL_22;
  }

  if (v2 == 0x72656874616557 && v1 == 0xE700000000000000 || (sub_1D2EE5288() & 1) != 0)
  {
    result = v0[22];
    if (result)
    {
      v9 = v0[21];
LABEL_22:

      return v9;
    }

    return result;
  }

  if ((v2 != 0x6B6361426C6C6143 || v1 != 0xE800000000000000) && (sub_1D2EE5288() & 1) == 0 && (v2 != 0x656E6F6850 || v1 != 0xE500000000000000) && (sub_1D2EE5288() & 1) == 0)
  {
    return 0;
  }

  result = v0[24];
  if (result)
  {
    v9 = v0[23];
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D2EBC694()
{
  v0 = sub_1D2EBC7A0();
  if (*(v0 + 16) && (v1 = sub_1D2E4FC44(0xD000000000000011, 0x80000001D2EE8B00), (v2 & 1) != 0))
  {
    v3 = (*(v0 + 56) + 16 * v1);
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D2EBC718()
{
  v0 = sub_1D2EBC7A0();
  if (*(v0 + 16) && (v1 = sub_1D2E4FC44(0x69745F6D61726170, 0xEB00000000656C74), (v2 & 1) != 0))
  {
    v3 = (*(v0 + 56) + 16 * v1);
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D2EBC7A0()
{
  v38 = sub_1D2EE53A8();
  v1 = *(v38 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D2EDD0FC(MEMORY[0x1E69E7CC0]);
  *(&v46 + 1) = &type metadata for PredictedAction;
  v5 = swift_allocObject();
  *&v45 = v5;
  v6 = *(v0 + 176);
  *(v5 + 176) = *(v0 + 160);
  *(v5 + 192) = v6;
  *(v5 + 208) = *(v0 + 192);
  *(v5 + 224) = *(v0 + 208);
  v7 = *(v0 + 112);
  *(v5 + 112) = *(v0 + 96);
  *(v5 + 128) = v7;
  v8 = *(v0 + 144);
  *(v5 + 144) = *(v0 + 128);
  *(v5 + 160) = v8;
  v9 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v9;
  v10 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v10;
  v11 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v11;
  sub_1D2EBD24C(v0, &v47);
  sub_1D2EE5388();
  sub_1D2EE5398();
  sub_1D2EE50A8();

  sub_1D2EE50F8();
  if (!v49)
  {
LABEL_27:
    (*(v1 + 8))(v4, v38);

    return v39;
  }

  v36 = v4;
  v37 = v1;
  while (1)
  {
    v45 = v47;
    sub_1D2EB5B88(&v48, &v46);
    sub_1D2EBD284(&v45, &v42);
    v12 = v43;
    if (v43)
    {
      break;
    }

    sub_1D2EBD2F4(&v45);
    __swift_destroy_boxed_opaque_existential_1(v44);
LABEL_4:
    sub_1D2EE50F8();
    if (!v49)
    {
      goto LABEL_27;
    }
  }

  v13 = v42;
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_1D2EBD284(&v45, &v42);

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D2EBD2F4(&v45);

    goto LABEL_4;
  }

  v14 = v40;
  v15 = v41;
  v16 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v16 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || v40 == 1701736270 && v41 == 0xE400000000000000 || (sub_1D2EE5288() & 1) != 0)
  {
    sub_1D2EBD2F4(&v45);

    goto LABEL_4;
  }

  v17 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v17;
  v20 = sub_1D2E4FC44(v13, v12);
  v21 = *(v17 + 16);
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (!__OFADD__(v21, v22))
  {
    if (*(v17 + 24) >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v19 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v28 = v19;
        sub_1D2EDC1AC();
        if ((v28 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      LODWORD(v39) = v19;
      sub_1D2EDB328(v23, isUniquelyReferenced_nonNull_native);
      v24 = sub_1D2E4FC44(v13, v12);
      if ((v39 & 1) != (v25 & 1))
      {
        goto LABEL_30;
      }

      v20 = v24;
      if ((v39 & 1) == 0)
      {
LABEL_24:
        v29 = v42;
        v42[(v20 >> 6) + 8] |= 1 << v20;
        v30 = (v29[6] + 16 * v20);
        *v30 = v13;
        v30[1] = v12;
        v31 = (v29[7] + 16 * v20);
        *v31 = v14;
        v31[1] = v15;
        sub_1D2EBD2F4(&v45);
        v32 = v29[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_29;
        }

        v39 = v29;
        v29[2] = v34;
        goto LABEL_26;
      }
    }

    v39 = v42;
    v26 = (v42[7] + 16 * v20);
    v27 = v26[1];
    *v26 = v14;
    v26[1] = v15;

    sub_1D2EBD2F4(&v45);
LABEL_26:
    v4 = v36;
    v1 = v37;
    goto LABEL_4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1D2EE52B8();
  __break(1u);
  return result;
}

unint64_t sub_1D2EBCBC4(char a1)
{
  result = 0x656D616E5F707061;
  switch(a1)
  {
    case 1:
      result = 0x6D616E5F636E7566;
      break;
    case 2:
      result = 0x6970615F636E7566;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
    case 8:
      result = 0x69745F6D61726170;
      break;
    case 9:
      result = 0x6F6C5F6D61726170;
      break;
    case 10:
      result = 0x6F705F6D61726170;
      break;
    case 11:
      result = 0x65645F6D61726170;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x70615F6D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D2EBCD7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739468, &qword_1D2EF4A68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2EBE21C();
  sub_1D2EE53C8();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v39) = 0;
  sub_1D2EE51E8();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v39) = 1;
    sub_1D2EE51E8();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v39) = 2;
    sub_1D2EE51E8();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v39) = 3;
    sub_1D2EE51E8();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v39) = 4;
    sub_1D2EE51E8();
    v39 = v3[10];
    v38[7] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B00, &qword_1D2EF4A60);
    sub_1D2EBE2A0(&qword_1EC739470);
    sub_1D2EE51F8();
    v21 = v3[11];
    v22 = v3[12];
    LOBYTE(v39) = 6;
    sub_1D2EE51E8();
    v23 = v3[13];
    v24 = v3[14];
    LOBYTE(v39) = 7;
    sub_1D2EE51E8();
    v25 = v3[15];
    v26 = v3[16];
    LOBYTE(v39) = 8;
    sub_1D2EE51E8();
    v27 = v3[17];
    v28 = v3[18];
    LOBYTE(v39) = 9;
    sub_1D2EE51E8();
    v29 = v3[19];
    v30 = v3[20];
    LOBYTE(v39) = 10;
    sub_1D2EE51E8();
    v31 = v3[21];
    v32 = v3[22];
    LOBYTE(v39) = 11;
    sub_1D2EE51E8();
    v33 = v3[23];
    v34 = v3[24];
    LOBYTE(v39) = 12;
    sub_1D2EE51E8();
    v35 = v3[25];
    v36 = v3[26];
    LOBYTE(v39) = 13;
    sub_1D2EE51E8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D2EBD0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2EBD494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2EBD130(uint64_t a1)
{
  v2 = sub_1D2EBE21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EBD16C(uint64_t a1)
{
  v2 = sub_1D2EBE21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2EBD1A8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D2EBD918(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t sub_1D2EBD284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739448, &qword_1D2EF4950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EBD2F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739448, &qword_1D2EF4950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D2EBD3A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 216))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D2EBD3FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 216) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D2EBD494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E5F707061 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D2EE5288() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D616E5F636E7566 && a2 == 0xE900000000000065 || (sub_1D2EE5288() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6970615F636E7566 && a2 == 0xE800000000000000 || (sub_1D2EE5288() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D2EE8B00 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D2EE8B20 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D2EE8B40 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D2EE8B60 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69745F6D61726170 && a2 == 0xEB00000000656C74 || (sub_1D2EE5288() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69745F6D61726170 && a2 == 0xEA0000000000656DLL || (sub_1D2EE5288() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F6C5F6D61726170 && a2 == 0xEE006E6F69746163 || (sub_1D2EE5288() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F705F6D61726170 && a2 == 0xE900000000000069 || (sub_1D2EE5288() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65645F6D61726170 && a2 == 0xEC0000006C696174 || (sub_1D2EE5288() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D2EE8B80 == a2 || (sub_1D2EE5288() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x70615F6D61726170 && a2 == 0xE900000000000070)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D2EE5288();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D2EBD918@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739450, &qword_1D2EF4A58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v56 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D2EBE21C();
  sub_1D2EE53B8();
  if (v2)
  {
    v80 = v2;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0uLL;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v63);
    *&v95 = v19;
    *(&v95 + 1) = v18;
    v96 = v17;
    v97 = v16;
    v98 = v15;
    v99 = v14;
    v100 = v13;
    v101 = v12;
    v102 = v71;
    v103 = v70;
    v104 = v68;
    v105 = v69;
    v106 = v66;
    v107 = v67;
    v108 = v64;
    v109 = v65;
    v110 = v78;
    v111 = v79;
    v112 = v76;
    v113 = v77;
    v114 = v74;
    v115 = v75;
    v116 = v72;
    v119 = 0;
    v117 = v73;
    v118 = 0;
    return sub_1D2EBE270(&v95);
  }

  LOBYTE(v95) = 0;
  *&v62 = sub_1D2EE5158();
  *(&v62 + 1) = v21;
  LOBYTE(v95) = 1;
  v22 = sub_1D2EE5158();
  v60 = v23;
  v61 = v22;
  LOBYTE(v95) = 2;
  v24 = sub_1D2EE5158();
  v58 = v25;
  v59 = v24;
  LOBYTE(v95) = 3;
  v26 = sub_1D2EE5158();
  v56 = v27;
  v57 = v26;
  LOBYTE(v95) = 4;
  v28 = sub_1D2EE5158();
  v80 = 0;
  *&v71 = v28;
  *(&v71 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738B00, &qword_1D2EF4A60);
  LOBYTE(v81) = 5;
  sub_1D2EBE2A0(&qword_1EC739460);
  v30 = v80;
  sub_1D2EE5168();
  if (v30)
  {
    v80 = v30;
    (*(v6 + 8))(v9, v5);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v18 = *(&v62 + 1);
    v19 = v62;
    v16 = v60;
    v17 = v61;
    v14 = v58;
    v15 = v59;
    v12 = v56;
    v13 = v57;
    goto LABEL_4;
  }

  v31 = a2;
  v32 = v95;
  LOBYTE(v95) = 6;
  v33 = sub_1D2EE5158();
  v70 = v32;
  v68 = v33;
  v69 = v34;
  LOBYTE(v95) = 7;
  v66 = sub_1D2EE5158();
  v67 = v35;
  LOBYTE(v95) = 8;
  v36 = sub_1D2EE5158();
  v80 = 0;
  v64 = v36;
  v65 = v37;
  LOBYTE(v95) = 9;
  v78 = sub_1D2EE5158();
  v79 = v38;
  v80 = 0;
  LOBYTE(v95) = 10;
  v76 = sub_1D2EE5158();
  v77 = v39;
  v80 = 0;
  LOBYTE(v95) = 11;
  v74 = sub_1D2EE5158();
  v75 = v40;
  v80 = 0;
  LOBYTE(v95) = 12;
  v72 = sub_1D2EE5158();
  v73 = v41;
  v80 = 0;
  v120 = 13;
  v42 = sub_1D2EE5158();
  v80 = 0;
  v43 = v42;
  v45 = v44;
  (*(v6 + 8))(v9, v5);
  v46 = v62;
  v81 = v62;
  v47 = v60;
  *&v82 = v61;
  *(&v82 + 1) = v60;
  v48 = v58;
  *&v83 = v59;
  *(&v83 + 1) = v58;
  v49 = v56;
  *&v84 = v57;
  *(&v84 + 1) = v56;
  v85 = v71;
  *&v86 = v70;
  *(&v86 + 1) = v68;
  *&v87 = v69;
  *(&v87 + 1) = v66;
  *&v88 = v67;
  *(&v88 + 1) = v64;
  *&v89 = v65;
  *(&v89 + 1) = v78;
  *&v90 = v79;
  *(&v90 + 1) = v76;
  *&v91 = v77;
  *(&v91 + 1) = v74;
  *&v92 = v75;
  *(&v92 + 1) = v72;
  *&v93 = v73;
  *(&v93 + 1) = v43;
  v94 = v45;
  sub_1D2EBD24C(&v81, &v95);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v95 = v46;
  v96 = v61;
  v97 = v47;
  v98 = v59;
  v99 = v48;
  v100 = v57;
  v101 = v49;
  v102 = v71;
  v103 = v70;
  v104 = v68;
  v105 = v69;
  v106 = v66;
  v107 = v67;
  v108 = v64;
  v109 = v65;
  v110 = v78;
  v111 = v79;
  v112 = v76;
  v113 = v77;
  v114 = v74;
  v115 = v75;
  v116 = v72;
  v117 = v73;
  v118 = v43;
  v119 = v45;
  result = sub_1D2EBE270(&v95);
  v50 = v92;
  *(v31 + 160) = v91;
  *(v31 + 176) = v50;
  *(v31 + 192) = v93;
  *(v31 + 208) = v94;
  v51 = v88;
  *(v31 + 96) = v87;
  *(v31 + 112) = v51;
  v52 = v90;
  *(v31 + 128) = v89;
  *(v31 + 144) = v52;
  v53 = v84;
  *(v31 + 32) = v83;
  *(v31 + 48) = v53;
  v54 = v86;
  *(v31 + 64) = v85;
  *(v31 + 80) = v54;
  v55 = v82;
  *v31 = v81;
  *(v31 + 16) = v55;
  return result;
}

unint64_t sub_1D2EBE21C()
{
  result = qword_1EC739458;
  if (!qword_1EC739458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739458);
  }

  return result;
}

uint64_t sub_1D2EBE2A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC738B00, &qword_1D2EF4A60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictedAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PredictedAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2EBE460()
{
  result = qword_1EC739478;
  if (!qword_1EC739478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739478);
  }

  return result;
}

unint64_t sub_1D2EBE4B8()
{
  result = qword_1EC739480;
  if (!qword_1EC739480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739480);
  }

  return result;
}

unint64_t sub_1D2EBE510()
{
  result = qword_1EC739488;
  if (!qword_1EC739488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739488);
  }

  return result;
}

uint64_t type metadata accessor for ContainerProvider()
{
  result = qword_1EDECFB88;
  if (!qword_1EDECFB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2EBE5D8()
{
  sub_1D2EBE65C();
  if (v0 <= 0x3F)
  {
    sub_1D2EBE6B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D2EBE65C()
{
  if (!qword_1EDECF930)
  {
    type metadata accessor for PersistenceConfiguration();
    v0 = sub_1D2EE4E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECF930);
    }
  }
}

void sub_1D2EBE6B4()
{
  if (!qword_1EDECF7A8)
  {
    v0 = sub_1D2EE45E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECF7A8);
    }
  }
}

uint64_t sub_1D2EBE710(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2EBE760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D2EBE7B4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D2EBE7CC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D2EBE7FC()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for PersistenceConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EBF3B8(v2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D2EBF428(v6);
  }

  else
  {
    sub_1D2EBF490(v6, v11);
    v12 = type metadata accessor for ContainerProvider();
    v13 = *(v2 + *(v12 + 20));
    MEMORY[0x1EEE9AC00](v12);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v11;
    os_unfair_lock_lock((v13 + 24));
    sub_1D2EBF4F4((v13 + 16), &v16);
    os_unfair_lock_unlock((v13 + 24));
    if (!v1)
    {
    }

    sub_1D2E88F6C(v11);
  }

  return 0;
}

uint64_t sub_1D2EBE9C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_1D2EE48E8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1D2EE3D88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2EE48F8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    *a3 = *a1;
  }

  v35 = v19;
  v36 = v17;
  v37 = v16;
  v34 = a3;
  result = sub_1D2EBEDA0();
  if (!v3)
  {
    v21 = type metadata accessor for PersistenceConfiguration();
    (*(v10 + 16))(v13, a2 + *(v21 + 20), v9);
    sub_1D2EE48D8();
    v22 = v35;
    sub_1D2EE4908();
    sub_1D2EE4828();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739498, &qword_1D2EF4C08);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D2EF4820;
    v24 = type metadata accessor for StoredSmartAction();
    v25 = sub_1D2EBF370(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    v26 = type metadata accessor for StoredReference();
    v27 = sub_1D2EBF370(&qword_1EC7394A8, type metadata accessor for StoredReference);
    *(v23 + 48) = v26;
    *(v23 + 56) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7394B0, qword_1D2EF4C10);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D2EF3D10;
    v29 = v37;
    *(v28 + 56) = v37;
    *(v28 + 64) = sub_1D2EBF370(&qword_1EC7394B8, MEMORY[0x1E697BC88]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v28 + 32));
    v31 = v36;
    (*(v36 + 16))(boxed_opaque_existential_0, v22, v29);
    v32 = sub_1D2EE4818();
    (*(v31 + 8))(v22, v29);
    *a1 = v32;
    *v34 = v32;
  }

  return result;
}

uint64_t sub_1D2EBEDA0()
{
  v1 = v0;
  v52[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v47 - v4;
  v6 = type metadata accessor for PersistenceConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EBF3B8(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_1D2EBF428(v5);
  }

  else
  {
    sub_1D2EBF490(v5, v10);
    v12 = objc_opt_self();
    v13 = [v12 defaultManager];
    sub_1D2EE3D58();
    v14 = sub_1D2EE4A38();

    v15 = [v13 fileExistsAtPath_];

    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v16 = sub_1D2EE4618();
    __swift_project_value_buffer(v16, qword_1EC7466D0);
    v17 = sub_1D2EE45F8();
    v18 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v15;
      _os_log_impl(&dword_1D2E46000, v17, v18, "Top-level application support directory exists %{BOOL}d", v19, 8u);
      MEMORY[0x1D38AF660](v19, -1, -1);
    }

    if ((v15 & 1) == 0)
    {
      v20 = sub_1D2EE45F8();
      v21 = sub_1D2EE4DD8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D2E46000, v20, v21, "Creating directory inside application support", v22, 2u);
        MEMORY[0x1D38AF660](v22, -1, -1);
      }

      v23 = [v12 defaultManager];
      v24 = sub_1D2EE3D28();
      v52[0] = 0;
      v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v52];

      if (v25)
      {
        v26 = v52[0];
      }

      else
      {
        v27 = v52[0];
        v28 = sub_1D2EE3CE8();

        swift_willThrow();
        v29 = v28;
        v30 = sub_1D2EE45F8();
        v31 = sub_1D2EE4DB8();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v52[0] = v49;
          *v32 = 136315138;
          swift_getErrorValue();
          v33 = v51;
          v47[0] = v50;
          v34 = sub_1D2EE4E58();
          v47[1] = v47;
          v35 = *(v34 - 8);
          v48 = v31;
          v36 = v35;
          v37 = *(v35 + 64);
          MEMORY[0x1EEE9AC00](v34);
          v39 = v47 - v38;
          v40 = *(v33 - 8);
          (*(v40 + 16))(v47 - v38, v47[0], v33);
          (*(v40 + 56))(v39, 0, 1, v33);
          v41 = sub_1D2EE2754(v39, v33);
          v43 = v42;
          (*(v36 + 8))(v39, v34);
          v44 = sub_1D2E685B0(v41, v43, v52);

          *(v32 + 4) = v44;
          _os_log_impl(&dword_1D2E46000, v30, v48, "Faile to create directory inside application support %s", v32, 0xCu);
          v45 = v49;
          __swift_destroy_boxed_opaque_existential_1(v49);
          MEMORY[0x1D38AF660](v45, -1, -1);
          MEMORY[0x1D38AF660](v32, -1, -1);
        }

        swift_willThrow();
      }
    }

    result = sub_1D2E88F6C(v10);
  }

  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2EBF370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2EBF3B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EBF428(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2EBF490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistenceConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PersistenceConfiguration()
{
  result = qword_1EDECF968;
  if (!qword_1EDECF968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2EBF584()
{
  result = sub_1D2EE3D88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2EBF5F8()
{
  v0 = sub_1D2EE3CF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2EE3D88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  v13 = type metadata accessor for PersistenceConfiguration();
  __swift_allocate_value_buffer(v13, qword_1EDED2D50);
  v14 = __swift_project_value_buffer(v13, qword_1EDED2D50);
  sub_1D2EE3D38();
  v16[0] = 0xD00000000000001BLL;
  v16[1] = 0x80000001D2EE6990;
  (*(v1 + 104))(v4, *MEMORY[0x1E6968F70], v0);
  sub_1D2E4EED4();
  sub_1D2EE3D78();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v10, v5);
  return sub_1D2EBF820(v12, v14);
}

uint64_t sub_1D2EBF820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v4 = sub_1D2EE3CF8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D2EE3D88();
  v9 = *(v18 - 8);
  (*(v9 + 16))(a2, a1, v18);
  v20 = 0xD000000000000015;
  v21 = 0x80000001D2EE8BA0;
  v10 = *MEMORY[0x1E6968F68];
  v17 = v5[13];
  v17(v8, v10, v4);
  v11 = type metadata accessor for PersistenceConfiguration();
  v12 = *(v11 + 20);
  sub_1D2E4EED4();
  sub_1D2EE3D68();
  v13 = v5[1];
  v13(v8, v4);
  v20 = 0xD00000000000001ALL;
  v21 = 0x80000001D2EE6F70;
  v17(v8, v10, v4);
  v14 = a2 + *(v11 + 24);
  sub_1D2EE3D68();
  (*(v9 + 8))(v19, v18);
  return (v13)(v8, v4);
}

uint64_t sub_1D2EBFA94(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC2C0C();
  sub_1D2EE4898();
}

uint64_t sub_1D2EBFB94(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EBFC58()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC2C0C();
  sub_1D2EE4898();
}

uint64_t sub_1D2EBFD58()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC2BB8();
  sub_1D2EE48C8();
}

uint64_t sub_1D2EBFE28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC2B54(a5, a6);
  sub_1D2EE4898();
}

uint64_t sub_1D2EBFF88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v14[-v10];
  (*(v8 + 16))(&v14[-v10], a1, v7);
  v17 = *a2;
  v12 = v17;
  swift_getKeyPath();
  v15 = v12;
  v16 = v11;
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F88();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D2EC0148(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC2B54(a2, a3);
  sub_1D2EE4898();
}

uint64_t sub_1D2EC0270(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC2B54(a4, a5);
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC0370@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EE4898();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D2EC047C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC0554()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EE4898();

  return v0;
}

uint64_t sub_1D2EC0658()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC070C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EE4898();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2EC0818()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EE4898();

  return v0;
}

uint64_t sub_1D2EC091C()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC09C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC2A1C();
  sub_1D2EE4898();

  *a2 = v5;
  return result;
}

uint64_t sub_1D2EC0AD4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC0BA4()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC2A1C();
  sub_1D2EE4898();

  return v1;
}

uint64_t sub_1D2EC0CAC()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC29C8();
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC0D58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  type metadata accessor for StoredSmartAction();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC28F4();
  sub_1D2EE4878();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2EC0E78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC0F3C()
{
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  type metadata accessor for StoredSmartAction();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC28F4();
  sub_1D2EE4878();

  return v0;
}

uint64_t sub_1D2EC1054()
{
  swift_getKeyPath();
  type metadata accessor for StoredSmartAction();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC28F4();
  sub_1D2EE48A8();
}

uint64_t sub_1D2EC1110@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  v4 = sub_1D2EE4888();

  *a2 = v4;
  return result;
}

uint64_t sub_1D2EC124C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F88();
}

uint64_t *sub_1D2EC1318(__int128 *a1)
{
  type metadata accessor for StoredReference();
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739550, &qword_1D2EF4FF0);
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v1 + 2);
  sub_1D2EE4848();
  sub_1D2EE3FA8();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_1D2E4C014(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1D2EC1438()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC16CallIntelligence15StoredReference___observationRegistrar;
  v2 = sub_1D2EE3FB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StoredReference()
{
  result = qword_1EC7394C8;
  if (!qword_1EC7394C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2EC1530()
{
  result = sub_1D2EE3FB8();
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

uint64_t sub_1D2EC15F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69737365636F7270;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x80000001D2EE6340;
  if (v2 != 1)
  {
    v3 = 0xD000000000000012;
    v4 = 0x80000001D2EE6340;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x646575657571;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x69737365636F7270;
  if (*a2 == 1)
  {
    v5 = 0xEA0000000000676ELL;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x646575657571;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2EE5288();
  }

  return v11 & 1;
}

uint64_t sub_1D2EC16F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D2EC2E2C();
  *a2 = result;
  return result;
}

void sub_1D2EC1728(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x69737365636F7270;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001D2EE6340;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646575657571;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D2EC183C()
{
  v1 = *v0;
  sub_1D2EE5338();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

uint64_t sub_1D2EC18E4()
{
  *v0;
  *v0;
  sub_1D2EE4AC8();
}

uint64_t sub_1D2EC1978()
{
  v1 = *v0;
  sub_1D2EE5338();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

uint64_t sub_1D2EC1A1C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D2EE5118();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1D2EC1B40()
{
  sub_1D2EE5338();
  sub_1D2EE4AC8();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC1BB4()
{
  sub_1D2EE5338();
  sub_1D2EE4AC8();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC1C08(__int128 *a1)
{
  v2 = type metadata accessor for StoredReference();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1D2EC1318(a1);
  return v5;
}

uint64_t sub_1D2EC1C94(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1D2E4C014(a1, v1 + 16);
  return swift_endAccess();
}

void (*sub_1D2EC1CEC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2E6912C(v1 + 16, v4);
  return sub_1D2EC1D7C;
}

void sub_1D2EC1D7C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1D2E6912C(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    sub_1D2E4C014((v2 + 40), v3 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    sub_1D2E4C014(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1D2EC1E38()
{
  v1 = *v0;
  sub_1D2EE5338();
  type metadata accessor for StoredReference();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EE4868();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC1EC4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D2EE4868();
}

uint64_t sub_1D2EC1F1C()
{
  sub_1D2EE5338();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1D2EE4868();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC1F84()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394E0, type metadata accessor for StoredReference);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC2B54(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EC2B54(&qword_1EC737CC8, MEMORY[0x1E69695A8]);
  sub_1D2EE4898();
}

uint64_t sub_1D2EC20BC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1D2EC22D8()
{
  v0 = sub_1D2EE4918();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v25 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7394F8, &qword_1D2EF4E70);
  v3 = *(sub_1D2EE4958() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v24 = 8 * *(v3 + 72);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D2EF4210;
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739500, &qword_1D2EF4EA0);
  v5 = *(sub_1D2EE4978() - 8);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  v8 = swift_allocObject();
  v22 = xmmword_1D2EF3D10;
  *(v8 + 16) = xmmword_1D2EF3D10;
  sub_1D2EE4968();
  v9 = sub_1D2EE4988();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_1D2EE4998();
  *(&v30 + 1) = v9;
  v13 = sub_1D2EC2B54(&qword_1EC739508, MEMORY[0x1E697BD30]);
  v31 = v13;
  *&v29 = v12;
  sub_1D2EE4948();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_1D2EE4948();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  *(swift_allocObject() + 16) = v22;
  sub_1D2EE4968();
  v14 = *(v9 + 48);
  v15 = *(v9 + 52);
  swift_allocObject();
  v16 = sub_1D2EE4998();
  *(&v30 + 1) = v9;
  v31 = v13;
  *&v29 = v16;
  sub_1D2EE4948();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_1D2EE4948();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_1D2EE4948();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_1D2EE4948();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_1D2EE4948();
  swift_getKeyPath();
  v32 = 0u;
  v33 = 0u;
  (*(v26 + 104))(v25, *MEMORY[0x1E697BCD8], v27);
  swift_getKeyPath();
  v17 = sub_1D2EE4928();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1D2EE4938();
  *(&v30 + 1) = v17;
  v31 = sub_1D2EC2B54(&qword_1EC739510, MEMORY[0x1E697BCF0]);
  *&v29 = v20;
  sub_1D2EE4948();
  return v28;
}

uint64_t sub_1D2EC28BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2EC3EA8();
}

uint64_t sub_1D2EC28D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2EC1054();
}

unint64_t sub_1D2EC28F4()
{
  result = qword_1EC739520;
  if (!qword_1EC739520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC739528, &qword_1D2EF4FE8);
    sub_1D2EC2B54(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739520);
  }

  return result;
}

uint64_t sub_1D2EC29A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2EC0CAC();
}

unint64_t sub_1D2EC29C8()
{
  result = qword_1EC739530;
  if (!qword_1EC739530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739530);
  }

  return result;
}

unint64_t sub_1D2EC2A1C()
{
  result = qword_1EC739538;
  if (!qword_1EC739538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739538);
  }

  return result;
}

uint64_t sub_1D2EC2A70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2EC091C();
}

uint64_t sub_1D2EC2A8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D2EC0658();
}

uint64_t sub_1D2EC2B54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2EC2BB8()
{
  result = qword_1EC739540;
  if (!qword_1EC739540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739540);
  }

  return result;
}

unint64_t sub_1D2EC2C0C()
{
  result = qword_1EC739548;
  if (!qword_1EC739548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739548);
  }

  return result;
}

unint64_t sub_1D2EC2CD8()
{
  result = qword_1EC739558;
  if (!qword_1EC739558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739558);
  }

  return result;
}

unint64_t sub_1D2EC2D30()
{
  result = qword_1EC739560;
  if (!qword_1EC739560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739560);
  }

  return result;
}

unint64_t sub_1D2EC2D84()
{
  result = qword_1EC739568;
  if (!qword_1EC739568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739568);
  }

  return result;
}

unint64_t sub_1D2EC2DD8()
{
  result = qword_1EC739570;
  if (!qword_1EC739570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739570);
  }

  return result;
}

uint64_t sub_1D2EC2E2C()
{
  v0 = sub_1D2EE5118();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D2EC2EB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC51B0(a5, a6);
  sub_1D2EE4898();
}

uint64_t sub_1D2EC2FE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v14[-v10];
  (*(v8 + 16))(&v14[-v10], a1, v7);
  v17 = *a2;
  v12 = v17;
  swift_getKeyPath();
  v15 = v12;
  v16 = v11;
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F88();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D2EC31A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC51B0(a2, a3);
  sub_1D2EE4898();
}

uint64_t sub_1D2EC32C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC51B0(a4, a5);
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC338C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EE4898();

  *a2 = v5;
  return result;
}

uint64_t sub_1D2EC3498(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC3568()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EE4898();

  return v1;
}

uint64_t sub_1D2EC366C()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC3714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EE4898();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D2EC3820()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EE4898();

  return v0;
}

uint64_t sub_1D2EC3924()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EE48C8();
}

double sub_1D2EC39D8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC5074();
  sub_1D2EE4898();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1D2EC3AE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC3BB0()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC5074();
  sub_1D2EE4898();

  return v0;
}

uint64_t sub_1D2EC3CB8()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC5020();
  sub_1D2EE48C8();
}

uint64_t sub_1D2EC3D70()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC51B0(&qword_1EC7394A8, type metadata accessor for StoredReference);
  v0 = sub_1D2EE4888();

  return v0;
}

uint64_t sub_1D2EC3EA8()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC51B0(&qword_1EC7394A8, type metadata accessor for StoredReference);
  sub_1D2EE48B8();
}

uint64_t sub_1D2EC3F80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC4FAC();
  sub_1D2EE4898();

  *a2 = v5;
  return result;
}

uint64_t sub_1D2EC4090(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F88();
}

uint64_t sub_1D2EC4160()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC4FAC();
  sub_1D2EE4898();

  return v1;
}

uint64_t sub_1D2EC4268()
{
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC4F58();
  sub_1D2EE48C8();
}

uint64_t *sub_1D2EC4314(__int128 *a1)
{
  type metadata accessor for StoredSmartAction();
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7395C8, &qword_1D2EF54F8);
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_0(v1 + 2);
  sub_1D2EE4848();
  sub_1D2EE3FA8();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_1D2E4C014(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_1D2EC4434()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC16CallIntelligence17StoredSmartAction___observationRegistrar;
  v2 = sub_1D2EE3FB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StoredSmartAction()
{
  result = qword_1EC739580;
  if (!qword_1EC739580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2EC452C()
{
  result = sub_1D2EE3FB8();
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

uint64_t sub_1D2EC45F0(__int128 *a1)
{
  v2 = type metadata accessor for StoredSmartAction();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1D2EC4314(a1);
  return v5;
}

void (*sub_1D2EC4634(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1D2E6912C(v1 + 16, v4);
  return sub_1D2EC1D7C;
}

uint64_t sub_1D2EC46C8()
{
  v1 = *v0;
  sub_1D2EE5338();
  type metadata accessor for StoredSmartAction();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EE4868();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC4754()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D2EE4868();
}

uint64_t sub_1D2EC47AC()
{
  sub_1D2EE5338();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1D2EE4868();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EC4814()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC739518, type metadata accessor for StoredSmartAction);
  sub_1D2EE3F98();

  swift_getKeyPath();
  sub_1D2EC51B0(&qword_1EC7394A0, type metadata accessor for StoredSmartAction);
  sub_1D2EC51B0(&qword_1EC737CC8, MEMORY[0x1E69695A8]);
  sub_1D2EE4898();
}

uint64_t sub_1D2EC494C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1D2EC4B68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7394F8, &qword_1D2EF4E70);
  v0 = *(sub_1D2EE4958() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D2EF51F0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739500, &qword_1D2EF4EA0);
  v4 = *(sub_1D2EE4978() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1D2EF3D10;
  sub_1D2EE4968();
  v7 = sub_1D2EE4988();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D2EE4998();
  sub_1D2EC51B0(&qword_1EC739508, MEMORY[0x1E697BD30]);
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  swift_getKeyPath();
  sub_1D2EE4948();
  return v3;
}

uint64_t sub_1D2EC4F38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2EC4268();
}

unint64_t sub_1D2EC4F58()
{
  result = qword_1EC7395A8;
  if (!qword_1EC7395A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395A8);
  }

  return result;
}

unint64_t sub_1D2EC4FAC()
{
  result = qword_1EC7395B0;
  if (!qword_1EC7395B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395B0);
  }

  return result;
}

uint64_t sub_1D2EC5000()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D2EC3CB8();
}

unint64_t sub_1D2EC5020()
{
  result = qword_1EC7395B8;
  if (!qword_1EC7395B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395B8);
  }

  return result;
}

unint64_t sub_1D2EC5074()
{
  result = qword_1EC7395C0;
  if (!qword_1EC7395C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395C0);
  }

  return result;
}

uint64_t sub_1D2EC50C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D2EC3924();
}

uint64_t sub_1D2EC50E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2EC366C();
}

uint64_t sub_1D2EC51B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2EC520C()
{
  result = qword_1EC7395D0;
  if (!qword_1EC7395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395D0);
  }

  return result;
}

uint64_t sub_1D2EC5260(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7395D8, &qword_1D2EF55C0);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7395E0, &qword_1D2EF55C8);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7395E8, &qword_1D2EF55D0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7395F0, &qword_1D2EF55D8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2EC5808();
  sub_1D2EE53C8();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1D2EC58B0();
      sub_1D2EE51D8();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1D2EC585C();
      v21 = v27;
      sub_1D2EE51D8();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1D2EC5904();
    sub_1D2EE51D8();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_1D2EC55E0(uint64_t a1)
{
  v2 = sub_1D2EC5808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EC561C(uint64_t a1)
{
  v2 = sub_1D2EC5808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2EC5658(uint64_t a1)
{
  v2 = sub_1D2EC5904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EC5694(uint64_t a1)
{
  v2 = sub_1D2EC5904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2EC56D0(uint64_t a1)
{
  v2 = sub_1D2EC58B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EC570C(uint64_t a1)
{
  v2 = sub_1D2EC58B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2EC5748(uint64_t a1)
{
  v2 = sub_1D2EC585C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2EC5784(uint64_t a1)
{
  v2 = sub_1D2EC585C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2EC57C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2EC5958(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D2EC5808()
{
  result = qword_1EC7395F8;
  if (!qword_1EC7395F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7395F8);
  }

  return result;
}

unint64_t sub_1D2EC585C()
{
  result = qword_1EC739600;
  if (!qword_1EC739600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739600);
  }

  return result;
}

unint64_t sub_1D2EC58B0()
{
  result = qword_1EC739608;
  if (!qword_1EC739608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739608);
  }

  return result;
}

unint64_t sub_1D2EC5904()
{
  result = qword_1EC739610;
  if (!qword_1EC739610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739610);
  }

  return result;
}

uint64_t sub_1D2EC5958(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739618, &qword_1D2EF55E0);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739620, &qword_1D2EF55E8);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739628, &qword_1D2EF55F0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739630, &unk_1D2EF55F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D2EC5808();
  v18 = v39;
  sub_1D2EE53B8();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1D2EE51C8();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1D2E53408();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1D2EC58B0();
          sub_1D2EE5138();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1D2EC585C();
        v29 = v15;
        sub_1D2EE5138();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1D2EC5904();
        v29 = v15;
        sub_1D2EE5138();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1D2EE5008();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC737F80, &qword_1D2EECD20) + 48);
    *v27 = &_s6StatusON;
    sub_1D2EE5148();
    sub_1D2EE4FF8();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_1D2EC5F0C()
{
  result = qword_1EC739638;
  if (!qword_1EC739638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739638);
  }

  return result;
}

unint64_t sub_1D2EC5F64()
{
  result = qword_1EC739640;
  if (!qword_1EC739640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739640);
  }

  return result;
}

unint64_t sub_1D2EC5FBC()
{
  result = qword_1EC739648;
  if (!qword_1EC739648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739648);
  }

  return result;
}

unint64_t sub_1D2EC6014()
{
  result = qword_1EC739650;
  if (!qword_1EC739650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739650);
  }

  return result;
}

unint64_t sub_1D2EC606C()
{
  result = qword_1EC739658;
  if (!qword_1EC739658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739658);
  }

  return result;
}

unint64_t sub_1D2EC60C4()
{
  result = qword_1EC739660;
  if (!qword_1EC739660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739660);
  }

  return result;
}

unint64_t sub_1D2EC611C()
{
  result = qword_1EC739668;
  if (!qword_1EC739668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739668);
  }

  return result;
}

unint64_t sub_1D2EC6174()
{
  result = qword_1EC739670;
  if (!qword_1EC739670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739670);
  }

  return result;
}

unint64_t sub_1D2EC61CC()
{
  result = qword_1EC739678;
  if (!qword_1EC739678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739678);
  }

  return result;
}

uint64_t sub_1D2EC6220(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EC6244, 0, 0);
}

uint64_t sub_1D2EC6244()
{
  v27 = v0;
  sub_1D2EC9794(*(v0 + 336), v0 + 240);
  if (*(v0 + 264))
  {
    sub_1D2E4C014((v0 + 240), v0 + 200);
    sub_1D2E4C014((v0 + 200), v0 + 160);
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v1 = sub_1D2EE4618();
    *(v0 + 360) = __swift_project_value_buffer(v1, qword_1EC7466D0);
    sub_1D2E6912C(v0 + 160, v0 + 280);
    v2 = sub_1D2EE45F8();
    v3 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v26 = v5;
      *v4 = 136315138;
      v6 = __swift_project_boxed_opaque_existential_1((v0 + 280), *(v0 + 304));
      v7 = *v6;
      v8 = v6[1];

      __swift_destroy_boxed_opaque_existential_1((v0 + 280));
      v9 = sub_1D2E685B0(v7, v8, &v26);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_1D2E46000, v2, v3, "Valid model handle: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x1D38AF660](v5, -1, -1);
      MEMORY[0x1D38AF660](v4, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 280));
    }

    v12 = *(v0 + 328);

    v13 = sub_1D2EE45F8();
    v14 = sub_1D2EE4DA8();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 320);
      v15 = *(v0 + 328);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1D2E685B0(v16, v15, &v26);
      _os_log_impl(&dword_1D2E46000, v13, v14, "Invoking mini planner: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D38AF660](v18, -1, -1);
      MEMORY[0x1D38AF660](v17, -1, -1);
    }

    v19 = __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
    *(v0 + 16) = *v19;
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    v22 = *(v19 + 1);
    *(v0 + 80) = v19[8];
    *(v0 + 48) = v21;
    *(v0 + 64) = v20;
    *(v0 + 32) = v22;
    v23 = swift_task_alloc();
    *(v0 + 368) = v23;
    *v23 = v0;
    v23[1] = sub_1D2EC6A7C;
    v24 = *(v0 + 320);
    v25 = *(v0 + 328);

    return sub_1D2EB9F8C(v0 + 16, v24, v25);
  }

  else
  {
    sub_1D2E5D0B8(v0 + 240, &qword_1EC7396B0, &qword_1D2EF59A0);
    v10 = swift_task_alloc();
    *(v0 + 344) = v10;
    *v10 = v0;
    v10[1] = sub_1D2EC660C;

    return sub_1D2EBB5C4(v0 + 88);
  }
}

uint64_t sub_1D2EC660C()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_1D2EC6A64;
  }

  else
  {
    v3 = sub_1D2EC6720;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D2EC6720()
{
  v29 = v0;
  *(v0 + 184) = &type metadata for MiniPlanner;
  *(v0 + 192) = &off_1F4E95210;
  v1 = swift_allocObject();
  *(v0 + 160) = v1;
  v2 = *(v0 + 104);
  v3 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 64) = v3;
  *(v1 + 80) = *(v0 + 152);
  *(v1 + 16) = *(v0 + 88);
  *(v1 + 32) = v2;
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  *(v0 + 360) = __swift_project_value_buffer(v4, qword_1EC7466D0);
  sub_1D2E6912C(v0 + 160, v0 + 280);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    v9 = __swift_project_boxed_opaque_existential_1((v0 + 280), *(v0 + 304));
    v10 = *v9;
    v11 = v9[1];

    __swift_destroy_boxed_opaque_existential_1((v0 + 280));
    v12 = sub_1D2E685B0(v10, v11, &v28);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Valid model handle: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 280));
  }

  v13 = *(v0 + 328);

  v14 = sub_1D2EE45F8();
  v15 = sub_1D2EE4DA8();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = *(v0 + 320);
    v16 = *(v0 + 328);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D2E685B0(v17, v16, &v28);
    _os_log_impl(&dword_1D2E46000, v14, v15, "Invoking mini planner: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38AF660](v19, -1, -1);
    MEMORY[0x1D38AF660](v18, -1, -1);
  }

  v20 = __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
  *(v0 + 16) = *v20;
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  v23 = *(v20 + 1);
  *(v0 + 80) = v20[8];
  *(v0 + 48) = v22;
  *(v0 + 64) = v21;
  *(v0 + 32) = v23;
  v24 = swift_task_alloc();
  *(v0 + 368) = v24;
  *v24 = v0;
  v24[1] = sub_1D2EC6A7C;
  v25 = *(v0 + 320);
  v26 = *(v0 + 328);

  return sub_1D2EB9F8C(v0 + 16, v25, v26);
}

uint64_t sub_1D2EC6A7C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 368);
  v8 = *v3;
  v4[47] = a1;
  v4[48] = a2;
  v4[49] = v2;

  if (v2)
  {
    v6 = sub_1D2EC6CE4;
  }

  else
  {
    v6 = sub_1D2EC6B94;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D2EC6B94()
{
  v14 = v0;
  v1 = v0[48];
  v2 = v0[45];

  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[47];
    v5 = v0[48];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1D2E685B0(v6, v5, &v13);
    _os_log_impl(&dword_1D2E46000, v3, v4, "Raw plan: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38AF660](v8, -1, -1);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  v9 = v0[1];
  v10 = v0[47];
  v11 = v0[48];

  return v9(v10, v11);
}

uint64_t sub_1D2EC6CE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  v1 = v0[49];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1D2EC6D48(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    sub_1D2EBC018();
    swift_allocError();
    *v31 = 1;
    return swift_willThrow();
  }

  v6 = sub_1D2EC7A38(a1, a2);
  v8 = v7;
  v9 = sub_1D2EE3BC8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D2EE3BB8();
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v12 = sub_1D2EE4618();
  __swift_project_value_buffer(v12, qword_1EC7466D0);
  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v6;
    v16 = v8;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D2E46000, v13, v14, "getActionResult attempting decode LLM response", v17, 2u);
    v18 = v17;
    v8 = v16;
    v6 = v15;
    MEMORY[0x1D38AF660](v18, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739680, &unk_1D2EF5970);
  sub_1D2EC7F58();
  sub_1D2EE3BA8();
  if (v2)
  {

    sub_1D2E7EA2C(v6, v8);
    v19 = v2;
    v20 = sub_1D2EE45F8();
    v21 = sub_1D2EE4DB8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_1D2E46000, v20, v21, "Mini planner parsing failure: %@", v22, 0xCu);
      sub_1D2E5D0B8(v23, &qword_1EC7392E8, &unk_1D2EF63D0);
      MEMORY[0x1D38AF660](v23, -1, -1);
      MEMORY[0x1D38AF660](v22, -1, -1);
    }

    v26 = sub_1D2EE45F8();
    v27 = sub_1D2EE4DA8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v89[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1D2E685B0(a1, a2, v89);
      _os_log_impl(&dword_1D2E46000, v26, v27, "Corrupt plan: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1D38AF660](v29, -1, -1);
      MEMORY[0x1D38AF660](v28, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v85 = v6;
  v32 = v89[0];

  v33 = sub_1D2EE45F8();
  v34 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = *(v32 + 16);

    _os_log_impl(&dword_1D2E46000, v33, v34, "Found %ld actions in raw plan", v35, 0xCu);
    MEMORY[0x1D38AF660](v35, -1, -1);
  }

  else
  {
  }

  v86 = v8;
  v36 = *(v32 + 16);
  if (v36)
  {
    v37 = v32 + 32;
    v38 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v39 = *(v37 + 16);
      v90[0] = *v37;
      v90[1] = v39;
      v40 = *(v37 + 32);
      v41 = *(v37 + 48);
      v42 = *(v37 + 80);
      v90[4] = *(v37 + 64);
      v90[5] = v42;
      v90[2] = v40;
      v90[3] = v41;
      v43 = *(v37 + 96);
      v44 = *(v37 + 112);
      v45 = *(v37 + 144);
      v90[8] = *(v37 + 128);
      v91 = v45;
      v90[6] = v43;
      v90[7] = v44;
      v46 = *(v37 + 160);
      v47 = *(v37 + 176);
      v48 = *(v37 + 192);
      v95 = *(v37 + 208);
      v93 = v47;
      v94 = v48;
      v92 = v46;
      v49 = v90[0];
      if (!*(&v90[0] + 1))
      {
LABEL_57:
        sub_1D2EBD24C(v90, v89);
        goto LABEL_58;
      }

      if (v90[0] == __PAIR128__(0xE800000000000000, 0x7261646E656C6143) || (sub_1D2EE5288() & 1) != 0)
      {
        sub_1D2EBD24C(v90, v89);
        v50 = sub_1D2EBC7A0();
        if (!*(v50 + 16))
        {
          goto LABEL_34;
        }

        v51 = 0x80000001D2EE8B00;
        v52 = 0xD000000000000011;
      }

      else
      {
        if (v49 != __PAIR128__(0xE800000000000000, 0x7265646E696D6552))
        {
          v58 = sub_1D2EE5288();
          v59 = *(&v49 + 1) == 0xE900000000000073 && v49 == 0x7265646E696D6552;
          if (!v59 && (v58 & 1) == 0 && (sub_1D2EE5288() & 1) == 0)
          {
            if (v49 == __PAIR128__(0xE400000000000000, 1936744781) || (sub_1D2EE5288() & 1) != 0)
            {
              v57 = v92;
              if (!v92)
              {
                goto LABEL_57;
              }

              v56 = *(&v91 + 1);
            }

            else if (v49 == __PAIR128__(0xE700000000000000, 0x72656874616557) || (sub_1D2EE5288() & 1) != 0)
            {
              v57 = v93;
              if (!v93)
              {
                goto LABEL_57;
              }

              v56 = *(&v92 + 1);
            }

            else
            {
              if (v49 != __PAIR128__(0xE800000000000000, 0x6B6361426C6C6143) && (sub_1D2EE5288() & 1) == 0 && v49 != __PAIR128__(0xE500000000000000, 0x656E6F6850) && (sub_1D2EE5288() & 1) == 0)
              {
                goto LABEL_57;
              }

              v57 = v94;
              if (!v94)
              {
                goto LABEL_57;
              }

              v56 = *(&v93 + 1);
            }

            sub_1D2EBD24C(v90, v89);

            if ((v57 & 0x2000000000000000) == 0)
            {
LABEL_59:
              if ((v56 & 0xFFFFFFFFFFFFLL) == 0)
              {
                goto LABEL_20;
              }

              goto LABEL_60;
            }

            goto LABEL_32;
          }
        }

        sub_1D2EBD24C(v90, v89);
        v50 = sub_1D2EBC7A0();
        if (!*(v50 + 16))
        {
          goto LABEL_34;
        }

        v52 = 0x69745F6D61726170;
        v51 = 0xEB00000000656C74;
      }

      v53 = sub_1D2E4FC44(v52, v51);
      if ((v54 & 1) == 0)
      {
LABEL_34:

LABEL_58:
        v57 = 0xE000000000000000;

        goto LABEL_32;
      }

      v55 = (*(v50 + 56) + 16 * v53);
      v56 = *v55;
      v57 = v55[1];

      if ((v57 & 0x2000000000000000) == 0)
      {
        goto LABEL_59;
      }

LABEL_32:
      if ((v57 & 0xF00000000000000) == 0)
      {
        goto LABEL_20;
      }

LABEL_60:
      if (!*(&v49 + 1))
      {
        v60 = 10;
        goto LABEL_67;
      }

      if (v49 == __PAIR128__(0xE800000000000000, 0x7261646E656C6143) || (sub_1D2EE5288() & 1) != 0)
      {
        v88 = 0;
LABEL_68:
        v61 = sub_1D2EBC7A0();
        v62 = sub_1D2EBC474();
        v64 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89[0] = v61;
        sub_1D2EC8BBC(v62, v64, 0x656C746974, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
        sub_1D2EBE270(v90);
        v66 = v89[0];

        v67 = sub_1D2EE45F8();
        v68 = sub_1D2EE4DA8();

        if (os_log_type_enabled(v67, v68))
        {
          v87 = v36;
          v69 = v38;
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v96 = v71;
          *v70 = 136315138;
          LOBYTE(v89[0]) = v88;
          v89[1] = v66;
          v72 = PredictedRawAction.debugDescription.getter();
          v74 = sub_1D2E685B0(v72, v73, &v96);

          *(v70 + 4) = v74;
          _os_log_impl(&dword_1D2E46000, v67, v68, "Action: %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v71);
          MEMORY[0x1D38AF660](v71, -1, -1);
          v75 = v70;
          v38 = v69;
          v36 = v87;
          MEMORY[0x1D38AF660](v75, -1, -1);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1D2EC8030(0, *(v38 + 2) + 1, 1, v38);
        }

        v77 = *(v38 + 2);
        v76 = *(v38 + 3);
        if (v77 >= v76 >> 1)
        {
          v38 = sub_1D2EC8030((v76 > 1), v77 + 1, 1, v38);
        }

        *(v38 + 2) = v77 + 1;
        v78 = &v38[16 * v77];
        v78[32] = v88;
        *(v78 + 5) = v66;
        goto LABEL_21;
      }

      if (v49 == __PAIR128__(0xE800000000000000, 0x7265646E696D6552))
      {
        goto LABEL_66;
      }

      v79 = sub_1D2EE5288();
      v80 = *(&v49 + 1) == 0xE900000000000073 && v49 == 0x7265646E696D6552;
      v88 = 2;
      if (v80 || (v79 & 1) != 0)
      {
        goto LABEL_68;
      }

      if (sub_1D2EE5288())
      {
LABEL_66:
        v60 = 2;
LABEL_67:
        v88 = v60;
        goto LABEL_68;
      }

      if (v49 == __PAIR128__(0xE400000000000000, 1936744781) || (sub_1D2EE5288() & 1) != 0)
      {
        v60 = 5;
        goto LABEL_67;
      }

      if (v49 == __PAIR128__(0xE700000000000000, 0x72656874616557) || (sub_1D2EE5288() & 1) != 0)
      {
        v60 = 8;
        goto LABEL_67;
      }

      if (v49 == __PAIR128__(0xE800000000000000, 0x6B6361426C6C6143) || (sub_1D2EE5288() & 1) != 0 || v49 == __PAIR128__(0xE500000000000000, 0x656E6F6850) || (sub_1D2EE5288() & 1) != 0)
      {
        v60 = 7;
        goto LABEL_67;
      }

LABEL_20:
      sub_1D2EBE270(v90);
LABEL_21:
      v37 += 216;
      if (!--v36)
      {
        goto LABEL_93;
      }
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_93:

  v81 = sub_1D2EE45F8();
  v82 = v38;
  v83 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v81, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 134217984;
    *(v84 + 4) = *(v82 + 2);

    _os_log_impl(&dword_1D2E46000, v81, v83, "Returning %ld raw predicted actions", v84, 0xCu);
    MEMORY[0x1D38AF660](v84, -1, -1);

    sub_1D2E7EA2C(v85, v86);
  }

  else
  {

    sub_1D2E7EA2C(v85, v86);
  }

  return v82;
}

uint64_t sub_1D2EC7A38(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396A0, &qword_1D2EF5988);
  if (swift_dynamicCast())
  {
    sub_1D2E4C014(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1D2EE3CA8();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1D2E5D0B8(__src, &qword_1EC7396A8, &qword_1D2EF5990);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D2EE5018();
  }

  sub_1D2EC91B8(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1D2EC9504(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1D2EC8764(sub_1D2EC95A4);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1D2EE3DD8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1D2EC9380(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1D2EE4B08();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D2EE4B38();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D2EE5018();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1D2EC9380(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1D2EE4B18();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1D2EE3DE8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1D2EE3DE8();
    sub_1D2EC9660(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1D2EC9660(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1D2EC960C(*&__src[0], *(&__src[0] + 1));

  sub_1D2E7EA2C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

unint64_t sub_1D2EC7F58()
{
  result = qword_1EC739688;
  if (!qword_1EC739688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC739680, &unk_1D2EF5970);
    sub_1D2EC7FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739688);
  }

  return result;
}

unint64_t sub_1D2EC7FDC()
{
  result = qword_1EC739690;
  if (!qword_1EC739690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739690);
  }

  return result;
}

char *sub_1D2EC8030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739698, &qword_1D2EF5980);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D2EC813C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396C8, &qword_1D2EF59B8);
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
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1D2EC823C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396C0, &qword_1D2EF59B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D2EC8348(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396D8, &unk_1D2EF59C8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA8, &qword_1D2EF2610) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1D2EC8588(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

void *sub_1D2EC8764(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1D2E7EA2C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D2E7EA2C(v6, v5);
    *v3 = xmmword_1D2EF2280;
    sub_1D2E7EA2C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1D2EE3C58() && __OFSUB__(v6, sub_1D2EE3C88()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1D2EE3C98();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1D2EE3C38();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1D2EC8B08(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1D2E7EA2C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1D2EF2280;
    sub_1D2E7EA2C(0, 0xC000000000000000);
    sub_1D2EE3D98();
    result = sub_1D2EC8B08(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1D2EC8B08(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D2EE3C58();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D2EE3C88();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1D2EE3C78();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1D2EC8BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D2E4FC44(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D2EDB328(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1D2E4FC44(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1D2EE52B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D2EDC1AC();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_1D2EC8D44(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1D2E4FC44(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D2EDB5E8(v18, a5 & 1);
      v22 = *v6;
      result = sub_1D2E4FC44(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_1D2EE52B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1D2EDC324();
      result = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * result;
    *v25 = a1;
    *(v25 + 8) = a2 & 1;
    return result;
  }

  v24[(result >> 6) + 8] |= 1 << result;
  v26 = (v24[6] + 16 * result);
  *v26 = a3;
  v26[1] = a4;
  v27 = v24[7] + 16 * result;
  *v27 = a1;
  *(v27 + 8) = a2 & 1;
  v28 = v24[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24[2] = v29;
}

unint64_t sub_1D2EC8EC8(unsigned __int8 a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D2E4FDA8(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1D2EDC49C();
    result = v17;
    goto LABEL_8;
  }

  sub_1D2EDB8A8(v14, a2 & 1);
  v18 = *v4;
  result = sub_1D2E4FDA8(a1);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a3;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a1;
    *(v20[7] + 8 * result) = a3;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D2EE52B8();
  __break(1u);
  return result;
}

uint64_t sub_1D2EC8FF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D2E4FC44(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D2EDBF08(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1D2E4FC44(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1D2EE52B8();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1D2EDC868();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_1D2EC9168(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1D2EC91B8@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1D2EC944C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1D2EE3C98();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1D2EE3C48();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1D2EE3DC8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

_BYTE *sub_1D2EC9280@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D2EC944C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D2EC9674(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D2EC96F0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1D2EC9314(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2EC9380(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D2EE4B58();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1D38AE5B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1D2EC93FC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1D2EE4FC8();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2EC944C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D2EC9504(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1D2EE3C98();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1D2EE3C68();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D2EE3DC8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1D2EC95A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1D2EC9314(sub_1D2EC9774, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1D2EC960C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}