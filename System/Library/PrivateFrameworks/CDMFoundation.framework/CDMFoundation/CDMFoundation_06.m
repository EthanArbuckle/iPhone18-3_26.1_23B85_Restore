uint64_t sub_1DC315A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v25 - v10;
  sub_1DC28F358(a3, v25 - v10, &unk_1ECC7D050, &qword_1DC523AC0);
  v12 = sub_1DC517AAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DC28EB30(v11, &unk_1ECC7D050, &qword_1DC523AC0);
  }

  else
  {
    sub_1DC517A9C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DC517A7C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DC51779C() + 32;
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

      sub_1DC28EB30(a3, &unk_1ECC7D050, &qword_1DC523AC0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DC28EB30(a3, &unk_1ECC7D050, &qword_1DC523AC0);
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

void sub_1DC315CE8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v59 - v8;
  v10 = sub_1DC516F7C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = sub_1DC29120C();
  (*(v13 + 16))(v18, v19, v10);
  v20 = v3;
  v21 = sub_1DC516F6C();
  v22 = sub_1DC517B9C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v60 = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v59[1] = v1;
    v26 = v25;
    v61 = v25;
    *v24 = 136315138;
    v27 = [v20 description];
    v28 = sub_1DC51772C();
    v30 = v29;

    v31 = sub_1DC291244(v28, v30, &v61);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_1DC287000, v21, v22, "Received handleTypingStartedMessage msg: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v9 = v60;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  (*(v13 + 8))(v18, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C930, &qword_1DC523AE8);
  v32 = sub_1DC516AFC();
  OUTLINED_FUNCTION_0(v32);
  v34 = v33;
  v36 = *(v35 + 72);
  v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1DC523AA0;
  v39 = v38 + v37;
  v40 = *(v34 + 104);
  (v40)(v39, *MEMORY[0x1E69A9008], v32);
  (v40)(v39 + v36, *MEMORY[0x1E69A9078], v32);
  (v40)(v39 + 2 * v36, *MEMORY[0x1E69A9068], v32);
  v41 = *MEMORY[0x1E69A9088];
  v42 = OUTLINED_FUNCTION_42_7(3 * v36);
  v40(v42);
  (v40)(v39 + 4 * v36, *MEMORY[0x1E69A9048], v32);
  v43 = *MEMORY[0x1E69A9058];
  v44 = OUTLINED_FUNCTION_42_7(5 * v36);
  v40(v44);
  (v40)(v39 + 6 * v36, *MEMORY[0x1E69A8FD8], v32);
  v45 = *MEMORY[0x1E69A8FF8];
  v46 = OUTLINED_FUNCTION_42_7(7 * v36);
  v40(v46);
  (v40)(v39 + 8 * v36, *MEMORY[0x1E69A8FC8], v32);
  v47 = *MEMORY[0x1E69A8FE8];
  v48 = OUTLINED_FUNCTION_42_7(9 * v36);
  v40(v48);
  (v40)(v39 + 10 * v36, *MEMORY[0x1E69A8FF0], v32);
  (v40)(v39 + 11 * v36, *MEMORY[0x1E69A9000], v32);
  (v40)(v39 + 12 * v36, *MEMORY[0x1E69A8FE0], v32);
  (v40)(v39 + 13 * v36, *MEMORY[0x1E69A9080], v32);
  (v40)(v39 + 14 * v36, *MEMORY[0x1E69A9020], v32);
  sub_1DC517AAC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v53;
  v54[5] = v38;
  v55 = OUTLINED_FUNCTION_27_7();
  sub_1DC315A04(v55, v56, v9, v57, v58);

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC316214()
{
  OUTLINED_FUNCTION_1_0();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_1DC516F7C();
  v0[7] = v3;
  OUTLINED_FUNCTION_52(v3);
  v0[8] = v4;
  v6 = *(v5 + 64) + 15;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1DC3162F4()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {
    v21 = v0 + 13;
    v20 = v0[13];
    v22 = v0[7];
    v23 = v0[8];
    sub_1DC29120C();
    v24 = OUTLINED_FUNCTION_8_4();
    v25(v24);
    v26 = sub_1DC516F6C();
    v27 = sub_1DC517BAC();
    v28 = OUTLINED_FUNCTION_25_0(v27);
    v29 = v0[8];
    if (v28)
    {
      OUTLINED_FUNCTION_17_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_43_7(&dword_1DC287000, v30, v31, "handleTypingStartedMessage: Unexpected! NLRouterBridge deallocated before calling context retrieval refresh");
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    goto LABEL_13;
  }

  v3 = *(Strong + _MergedGlobals);
  v0[15] = v3;
  v4 = v0[7];
  v5 = v0[8];
  if (v3)
  {
    v6 = v0[11];

    v7 = sub_1DC29120C();
    v0[16] = v7;
    v8 = *(v5 + 16);
    v0[17] = v8;
    v0[18] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v6, v7, v4);
    v9 = sub_1DC516F6C();
    v10 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_25_0(v10))
    {
      OUTLINED_FUNCTION_17_4();
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DC287000, v9, v10, "Calling Context Retrieval refresh", v11, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v12 = v0[11];
    v13 = v0[7];
    v14 = v0[8];
    v15 = v0[6];

    v16 = *(v14 + 8);
    v0[19] = v16;
    v16(v12, v13);
    v17 = OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient;
    v0[20] = OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient;
    v0[21] = *(*(v3 + v17) + 16);
    v18 = *(MEMORY[0x1E69A8F10] + 4);

    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = sub_1DC316654;

    return MEMORY[0x1EEE12050](v15);
  }

  v21 = v0 + 12;
  v32 = v0[12];
  v33 = sub_1DC29120C();
  (*(v5 + 16))(v32, v33, v4);
  v26 = sub_1DC516F6C();
  v34 = sub_1DC517BAC();
  v35 = OUTLINED_FUNCTION_25_0(v34);
  v29 = v0[8];
  if (!v35)
  {

LABEL_13:

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_17_4();
  v36 = swift_slowAlloc();
  *v36 = 0;
  _os_log_impl(&dword_1DC287000, v26, v34, "handleTypingStartedMessage: SessionContext should have been created when we received SessionStartedMessage and should never be nil here.", v36, 2u);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x1E1298840]();

LABEL_14:
  v37 = *v21;
  v38 = v0[12];
  v39 = v0[13];
  v41 = v0[10];
  v40 = v0[11];
  v42 = v0[9];
  (*(v29 + 8))(v37, v0[7]);

  OUTLINED_FUNCTION_2_2();

  return v43();
}

uint64_t sub_1DC316654()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = *(v2 + 176);
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (v0)
  {
    v7 = sub_1DC3168E8;
  }

  else
  {
    v8 = *(v3 + 168);

    v7 = sub_1DC316760;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DC316760()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(**(*(v0 + 120) + *(v0 + 160)) + 104);

  v6(1);

  v7 = OUTLINED_FUNCTION_36();
  v2(v7);
  v8 = sub_1DC516F6C();
  v9 = sub_1DC517B8C();
  v10 = OUTLINED_FUNCTION_20_1(v9);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = *(v0 + 64);
  if (v10)
  {
    OUTLINED_FUNCTION_17_4();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_31_2(v14);
    OUTLINED_FUNCTION_16_2(&dword_1DC287000, v15, v16, "Context Retrieval refresh finished");
    v17 = OUTLINED_FUNCTION_7_7();
    MEMORY[0x1E1298840](v17);
  }

  else
  {
    v18 = *(v0 + 112);
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 104);
  v21 = *(v0 + 88);
  v22 = *(v0 + 72);
  (*(v0 + 152))(*(v0 + 80), *(v0 + 56));

  OUTLINED_FUNCTION_2_2();

  return v23();
}

uint64_t sub_1DC3168E8()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);

  v3(v6, v5, v7);
  v8 = sub_1DC516F6C();
  v9 = sub_1DC517BAC();
  v10 = OUTLINED_FUNCTION_20_1(v9);
  v11 = *(v0 + 184);
  v12 = *(v0 + 112);
  v13 = *(v0 + 64);
  if (v10)
  {
    OUTLINED_FUNCTION_17_4();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_31_2(v14);
    OUTLINED_FUNCTION_16_2(&dword_1DC287000, v15, v16, "Calling Context Retrieval refresh failed. This will result in stale context downstream");
    v17 = OUTLINED_FUNCTION_7_7();
    MEMORY[0x1E1298840](v17);
  }

  else
  {
    v18 = *(v0 + 112);
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  (*(v0 + 152))(*(v0 + 72), *(v0 + 56));

  OUTLINED_FUNCTION_2_2();

  return v23();
}

uint64_t sub_1DC316A40()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_1DC29F384(v0[13]);
  v5 = sub_1DC29120C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1DC516F6C();
  v8 = sub_1DC517BAC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1DC287000, v7, v8, "error calling nlRouterClient.setupNLRouter %{public}@", v11, 0xCu);
    sub_1DC28EB30(v12, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v15 = OUTLINED_FUNCTION_7_7();
    MEMORY[0x1E1298840](v15);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_2_2();

  return v16();
}

void sub_1DC316BEC()
{
  OUTLINED_FUNCTION_33();
  v30 = *MEMORY[0x1E69E9840];
  v0 = sub_1DC516F7C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v28 = 0;
  v29 = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v13 = domain_answer;
    v14 = sub_1DC29120C();
    (*(v3 + 16))(v8, v14, v0);
    v15 = sub_1DC516F6C();
    v16 = sub_1DC517B9C();
    if (!OUTLINED_FUNCTION_25_0(v16))
    {
      goto LABEL_9;
    }

    v17 = swift_slowAlloc();
    *(OUTLINED_FUNCTION_38_7(v17, 3.8521e-34) + 14) = v13;
    _os_log_impl(&dword_1DC287000, v15, v16, "OS eligibility: Unable to determine eligibility of %llu due to error %d. Defaulting to ineligible", v17, 0x12u);
  }

  else
  {
    v19 = v28;
    v18 = v29;
    v20 = sub_1DC29120C();
    (*(v3 + 16))(v11, v20, v0);
    v15 = sub_1DC516F6C();
    v21 = sub_1DC517B9C();
    if (!OUTLINED_FUNCTION_25_0(v21))
    {
      v8 = v11;
      goto LABEL_9;
    }

    v22 = v18 == 4;
    HIDWORD(v27) = v19 == 2;
    v23 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_38_7(v23, 3.8523e-34);
    *(v24 + 14) = v22;
    *(v24 + 18) = v25;
    *(v24 + 20) = v19 == 1;
    *(v24 + 24) = v25;
    *(v24 + 26) = HIDWORD(v27);
    _os_log_impl(&dword_1DC287000, v15, v21, "OS eligibility: Domain %llu Eligible %{BOOL}d, Computed: %{BOOL}d, Forced: %{BOOL}d", v23, 0x1Eu);
    v8 = v11;
  }

  OUTLINED_FUNCTION_8_0();
  MEMORY[0x1E1298840]();
LABEL_9:

  (*(v3 + 8))(v8, v0);
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC316EB4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC7DA8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC7DB0));
  v1 = *(v0 + _MergedGlobals);

  v2 = *(v0 + qword_1EDAC7D98);

  v3 = *(v0 + qword_1EDAC7DA0);
}

uint64_t NLRouterBridge.deinit()
{
  v0 = sub_1DC51694C();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC7DA8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDAC7DB0));
  v1 = *(v0 + _MergedGlobals);

  v2 = *(v0 + qword_1EDAC7D98);

  v3 = *(v0 + qword_1EDAC7DA0);

  return v0;
}

uint64_t NLRouterBridge.__deallocating_deinit()
{
  v0 = NLRouterBridge.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

unint64_t sub_1DC316FBC()
{
  result = qword_1ECC7C920;
  if (!qword_1ECC7C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C920);
  }

  return result;
}

void sub_1DC317010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_33();
  v51 = v21;
  v52 = v22;
  v53 = v23;
  v54 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v50 = v33;
  v35 = *(v27 + 24);
  v34 = *(v27 + 32);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v27, v35);
  v37 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  (*(v41 + 16))(v39 - v38);
  v43 = v26[3];
  v42 = v26[4];
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v26, v43);
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1();
  v48 = v47 - v46;
  (*(v49 + 16))(v47 - v46);
  a21(v32, v30, v40, v50, v52, v48, v53, v54, v51, v43, v35, v42, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3171D8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v42 = a7;
  v43 = a8;
  v40 = a4;
  v41 = a5;
  v38 = a1;
  v39 = a2;
  v14 = *(a10 - 8);
  v15 = *(v14 + 64);
  v37 = a12;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v36 - v20;
  v22 = *(a11 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v36 - v27;
  (*(v22 + 32))(&v36 - v27, v29, a11);
  (*(v14 + 32))(v21, a6, a10);
  v30 = type metadata accessor for SessionContext(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  (*(v22 + 16))(v26, v28, a11);
  (*(v14 + 16))(v18, v21, a10);
  v34 = sub_1DC3174E0(v38, v39, v26, v40, v41, v18, v42, v43, v33, a10, a11, v37, a13);
  (*(v14 + 8))(v21, a10);
  (*(v22 + 8))(v28, a11);
  return v34;
}

uint64_t sub_1DC317450()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0(v3);
  *v4 = v5;
  v4[1] = sub_1DC29F200;

  return sub_1DC316214();
}

uint64_t sub_1DC3174E0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = (a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionStoreConversationHistoryProvider);
  v19[3] = a11;
  v19[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, a3, a11);
  v21 = (a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterExperimentController);
  v21[3] = a10;
  v21[4] = a12;
  v22 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a10 - 8) + 32))(v22, a6, a10);
  v23 = OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionId;
  v24 = sub_1DC510B6C();
  (*(*(v24 - 8) + 32))(a9 + v23, a1, v24);
  v25 = OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionLocale;
  v26 = sub_1DC510C8C();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  sub_1DC28F9B0(a4, a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionState);
  sub_1DC28F9B0(a5, a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterClient);
  *(a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_queryDecorationClient) = a7;
  *(a9 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient) = a8;
  return a9;
}

unint64_t sub_1DC3176A8()
{
  result = qword_1ECC7C938;
  if (!qword_1ECC7C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLRouterBridge.NLRouterBridgeError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for NLRouterBridge.NLRouterBridgeError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DC3178A0()
{
  result = sub_1DC510B6C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DC510C8C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DC31798C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_19_2(v4);

  return v7(v6);
}

void sub_1DC317E1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v198 = a1;
  v196 = a2;
  v179 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v179);
  v173 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v182 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v192 = sub_1DC51179C();
  v8 = OUTLINED_FUNCTION_0(v192);
  v172 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v178 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v190 = v14;
  OUTLINED_FUNCTION_12();
  v191 = sub_1DC51164C();
  v15 = OUTLINED_FUNCTION_0(v191);
  v199 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v181 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v160 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C178, qword_1DC523CB0);
  v24 = OUTLINED_FUNCTION_10(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v180 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  v183 = v29;
  OUTLINED_FUNCTION_12();
  v177 = sub_1DC51122C();
  v30 = OUTLINED_FUNCTION_0(v177);
  v175 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v176 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v37 = OUTLINED_FUNCTION_10(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v189 = &v160 - v40;
  OUTLINED_FUNCTION_12();
  v197 = sub_1DC5157EC();
  v41 = OUTLINED_FUNCTION_0(v197);
  v186 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_15();
  v174 = v45;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v46);
  v184 = &v160 - v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_62();
  v185 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v51 = OUTLINED_FUNCTION_10(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v160 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v57 = OUTLINED_FUNCTION_10(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v160 - v60;
  v62 = type metadata accessor for NLRouterNLParseResponse(0);
  v63 = OUTLINED_FUNCTION_35(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_1();
  v187 = v67 - v66;
  OUTLINED_FUNCTION_12();
  v195 = sub_1DC516F5C();
  v68 = OUTLINED_FUNCTION_0(v195);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_1();
  v75 = v74 - v73;
  v76 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v77 = sub_1DC2BE518();
  v78 = OUTLINED_FUNCTION_130();
  v193 = v76;
  v194 = v75;
  sub_1DC2A2ED0("HeuristicRules.NotificationRule", 31, 2, v77, v78 & 1, v75);

  v79 = v198;
  v80 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v79 + *(v80 + 32), v55, &qword_1ECC7C158, &unk_1DC5234A0);
  v81 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v55, 1, v81) == 1)
  {
    sub_1DC28EB30(v55, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v62);
LABEL_4:
    sub_1DC28EB30(v61, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
LABEL_5:
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    v90 = v194;
    v89 = v195;
LABEL_6:
    v91 = sub_1DC2BE518();
    sub_1DC2B8848();

    (*(v70 + 8))(v90, v89);
    return;
  }

  sub_1DC28F358(v55, v61, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v55, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
  {
    goto LABEL_4;
  }

  v92 = v187;
  sub_1DC2E53A4(v61, v187);
  v93 = *(type metadata accessor for HeuristicRoutingRequest(0) + 20);
  sub_1DC32DBF4();
  v94 = v197;
  if (v95)
  {
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v92, v96);
    OUTLINED_FUNCTION_19();
    v88 = v94;
    goto LABEL_5;
  }

  v98 = v185;
  v97 = v186;
  (*(v186 + 16))(v185, v79 + v93, v197);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v99 = sub_1DC344F60();
  v101 = v100;
  v102 = v184;
  (*(v97 + 104))(v184, *MEMORY[0x1E69D02F0], v94);
  v171 = v93;
  v103 = sub_1DC5157DC();
  v104 = *(v97 + 8);
  v170 = v97 + 8;
  v169 = v104;
  v104(v102, v94);
  if ((v103 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v99 == sub_1DC312FB4(0) && v101 == v105)
  {

LABEL_17:

LABEL_18:
    v108 = v187;
LABEL_19:
    v109 = sub_1DC5157DC();
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v108, v110);
    if (v109)
    {
      OUTLINED_FUNCTION_9_6();
      v111();
      v112 = 1;
      v90 = v194;
      v89 = v195;
      v113 = v196;
    }

    else
    {
      v113 = v196;
      (*(v97 + 32))(v196, v98, v94);
      v112 = 0;
      v90 = v194;
      v89 = v195;
    }

    __swift_storeEnumTagSinglePayload(v113, v112, 1, v94);
    goto LABEL_6;
  }

  v107 = sub_1DC51825C();

  if (v107)
  {
    goto LABEL_17;
  }

  v114 = sub_1DC312F68();
  v108 = v187;
  if (v114 == 4)
  {
    v115 = v189;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v116, v117, v118, v94);
LABEL_26:
    sub_1DC28EB30(v115, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_19;
  }

  v115 = v189;
  sub_1DC312E7C(v114, v189);
  if (__swift_getEnumTagSinglePayload(v115, 1, v94) == 1)
  {
    goto LABEL_26;
  }

  v119 = *(v97 + 32);
  v164 = v97 + 32;
  v163 = v119;
  v119(v174, v115, v94);
  v120 = v191;
  v166 = *(*v108 + 16);
  if (!v166)
  {
LABEL_44:
    v94 = v197;
    OUTLINED_FUNCTION_9_6();
    v153();
    goto LABEL_18;
  }

  v121 = 0;
  v122 = *(v175 + 80);
  OUTLINED_FUNCTION_24();
  v125 = v123 + v124;
  v188 = v199 + 16;
  v172 += 8;
  v126 = (v199 + 8);
  v168 = v199 + 32;
  v173 += 8;
  v165 = v127 + 8;
  v162 = v123;
  v161 = v123 + v124;
  v160 = v127 + 16;
  while (2)
  {
    if (v121 < *(v123 + 16))
    {
      (*(v175 + 16))(v176, v125 + *(v175 + 72) * v121, v177);
      v167 = v121 + 1;
      v128 = sub_1DC5111AC();

      v189 = 0;
      while (2)
      {
        v129 = *(v128 + 16);
        for (i = v189; ; ++i)
        {
          if (v129 == i)
          {
            v139 = 1;
            v189 = v129;
            goto LABEL_40;
          }

          if (v189 < 0)
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          if (i >= *(v128 + 16))
          {
            goto LABEL_46;
          }

          v131 = *(v199 + 80);
          OUTLINED_FUNCTION_24();
          (*(v133 + 16))(v22, v128 + v132 + *(v133 + 72) * i, v120);
          if (sub_1DC5114CC())
          {
            v134 = v70;
            v135 = v190;
            sub_1DC51154C();
            v136 = sub_1DC51177C();
            OUTLINED_FUNCTION_37(&v201);
            v137 = v135;
            v70 = v134;
            v120 = v191;
            v138(v137, v192);
            if (v136)
            {
              break;
            }
          }

          (*v126)(v22, v120);
        }

        OUTLINED_FUNCTION_37(v200);
        v140(v183, v22, v120);
        v139 = 0;
        v189 = i + 1;
LABEL_40:
        v141 = v183;
        __swift_storeEnumTagSinglePayload(v183, v139, 1, v120);
        v142 = v180;
        sub_1DC318B74(v141, v180);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v142, 1, v120);
        v145 = v181;
        v144 = v182;
        if (EnumTagSinglePayload != 1)
        {
          OUTLINED_FUNCTION_37(v200);
          v146(v145, v142, v120);
          v147 = v178;
          sub_1DC51154C();
          sub_1DC51178C();
          OUTLINED_FUNCTION_37(&v201);
          v148(v147, v192);
          sub_1DC5138FC();
          OUTLINED_FUNCTION_37(&v202);
          v149(v144, v179);
          (*v126)(v145, v120);
          v150 = sub_1DC318BE4();

          if ((v150 & 1) == 0)
          {
            continue;
          }

          OUTLINED_FUNCTION_37(&v197);
          v154 = OUTLINED_FUNCTION_12_1();
          v155(v154);

          v156 = v184;
          v98 = v185;
          v157 = v174;
          sub_1DC32DE40();
          v158 = v157;
          v94 = v197;
          v159 = v169;
          v169(v158, v197);
          v159(v98, v94);
          v163(v98, v156, v94);
          v97 = v186;
          goto LABEL_18;
        }

        break;
      }

      OUTLINED_FUNCTION_37(&v197);
      v151 = OUTLINED_FUNCTION_12_1();
      v152(v151);

      v121 = v167;
      v98 = v185;
      v97 = v186;
      v123 = v162;
      v125 = v161;
      if (v167 != v166)
      {
        continue;
      }

      goto LABEL_44;
    }

    break;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_1DC318B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C178, qword_1DC523CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC318BE4()
{
  v1 = sub_1DC514ECC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v61 = v3;
  v62 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v60 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v69 = sub_1DC514E7C();
  v8 = OUTLINED_FUNCTION_0(v69);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_1DC514E3C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v64 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  v27 = OUTLINED_FUNCTION_10(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v65 = v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  v66 = v32;
  v63 = v0;
  result = sub_1DC514EEC();
  v34 = result;
  v35 = 0;
  v36 = *(result + 16);
  v37 = (v10 + 8);
  v67 = (v19 + 8);
  v68 = v19 + 16;
  while (1)
  {
    if (v36 == v35)
    {

      v46 = 1;
      v47 = v66;
      goto LABEL_13;
    }

    if (v35 >= *(v34 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v38 = *(v19 + 80);
    OUTLINED_FUNCTION_24();
    v40 = v16;
    (*(v19 + 16))(v25, v34 + v39 + *(v19 + 72) * v35, v16);
    sub_1DC514E0C();
    v41 = sub_1DC514E6C();
    v43 = v42;
    (*v37)(v15, v69);
    if (v41 == 1802723700 && v43 == 0xE400000000000000)
    {
      break;
    }

    v45 = sub_1DC51825C();

    if (v45)
    {
      goto LABEL_12;
    }

    v16 = v40;
    result = (*v67)(v25, v40);
    ++v35;
  }

LABEL_12:

  v47 = v66;
  v16 = v40;
  (*(v19 + 32))(v66, v25, v40);
  v46 = 0;
LABEL_13:
  v48 = v65;
  __swift_storeEnumTagSinglePayload(v47, v46, 1, v16);
  sub_1DC28F358(v47, v48, &qword_1ECC7C1A0, &qword_1DC522F80);
  if (__swift_getEnumTagSinglePayload(v48, 1, v16) == 1)
  {
    sub_1DC28EB30(v47, &qword_1ECC7C1A0, &qword_1DC522F80);
    sub_1DC28EB30(v48, &qword_1ECC7C1A0, &qword_1DC522F80);
    return 0;
  }

  (*(v19 + 32))(v64, v48, v16);
  v50 = sub_1DC514EFC();
  result = sub_1DC514E1C();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (result < *(v50 + 16))
  {
    v52 = v60;
    v51 = v61;
    v53 = *(v61 + 80);
    OUTLINED_FUNCTION_24();
    v56 = v16;
    v57 = v62;
    (*(v51 + 16))(v52, v50 + v54 + *(v51 + 72) * v55, v62);

    MEMORY[0x1EEE9AC00](v58);
    *(&v59 - 2) = v52;
    v49 = sub_1DC2CF098(sub_1DC3191F8, (&v59 - 4), &unk_1F57F6E70);
    (*v67)(v64, v56);
    sub_1DC28EB30(v47, &qword_1ECC7C1A0, &qword_1DC522F80);
    (*(v51 + 8))(v52, v57);
    return v49;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DC3190FC(uint64_t *a1)
{
  v2 = sub_1DC514E7C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v12 = *a1;
  v11 = a1[1];
  sub_1DC514EBC();
  sub_1DC514E6C();
  (*(v5 + 8))(v10, v2);
  LOBYTE(v11) = sub_1DC51795C();

  return v11 & 1;
}

uint64_t sub_1DC319228@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t sub_1DC319260(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC5109BC(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC5109BC();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC319334()
{
  v0 = [objc_opt_self() sharedStream];
  type metadata accessor for NLRouterBridgeInstrumentationUtil();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1ECC8F3F0 = result;
  return result;
}

uint64_t sub_1DC319390(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t *sub_1DC3193C4()
{
  if (qword_1ECC7EE38 != -1)
  {
    OUTLINED_FUNCTION_24_3();
  }

  return &qword_1ECC8F3F0;
}

id sub_1DC319404(void *a1, uint64_t a2)
{
  v5 = sub_1DC516F7C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = [a1 eventMetadata];
  if (v14 && (v15 = v14, v16 = [v14 requestId], v15, v16))
  {

    v17 = *(v2 + 16);

    return [v17 emitMessage:a1 timestamp:a2];
  }

  else
  {
    v19 = sub_1DC29120C();
    (*(v8 + 16))(v13, v19, v5);
    v20 = sub_1DC516F6C();
    v21 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v21))
    {
      v22 = OUTLINED_FUNCTION_35_8();
      *v22 = 0;
      OUTLINED_FUNCTION_28_8();
      _os_log_impl(v23, v24, v25, v26, v22, 2u);
      OUTLINED_FUNCTION_66();
    }

    return (*(v8 + 8))(v13, v5);
  }
}

void sub_1DC3195B8()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC516F7C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v10 = *(v9 + 176);
  OUTLINED_FUNCTION_36_9();
  if (!v11())
  {
    v19 = sub_1DC29120C();
    (*(v5 + 16))(v1, v19, v2);
    v20 = sub_1DC516F6C();
    v21 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v21))
    {
      v22 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v22);
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_56_4(v23, v24, v25, v26);
      OUTLINED_FUNCTION_66();
    }

    (*(v5 + 8))(v1, v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v13 = *(v12 + 184);
  v15 = v14;
  if (!v13())
  {

    sub_1DC29120C();
    v27 = OUTLINED_FUNCTION_21_1(v5);
    v28(v27);
    v29 = sub_1DC516F6C();
    v30 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v30))
    {
      v31 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_31_2(v31);
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_55_6(v32, v33, v34, v35);
      OUTLINED_FUNCTION_66();
    }

    (*(v5 + 8))(v0, v2);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v16 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

void sub_1DC319818()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_23_10();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v9 = *(v8 + 176);
  v10 = OUTLINED_FUNCTION_22_5();
  if (!v11(v10))
  {
    sub_1DC29120C();
    v19 = OUTLINED_FUNCTION_10_9();
    v20(v19);
    v21 = sub_1DC516F6C();
    v22 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v22))
    {
      v23 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v23);
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v24, v0, "Empty metadata, skipping SELF logging");
      OUTLINED_FUNCTION_14_5();
    }

    v25 = OUTLINED_FUNCTION_41_6();
    v26(v25);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v13 = *(v12 + 192);
  v15 = v14;
  if (!v13())
  {

    sub_1DC29120C();
    v27 = OUTLINED_FUNCTION_5_11();
    v28(v27);
    v29 = sub_1DC516F6C();
    v30 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v30))
    {
      v31 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v31);
      OUTLINED_FUNCTION_11_9(&dword_1DC287000, v32, v33, "Error during SELF log creation process for NLRouterBridgeEnded");
      OUTLINED_FUNCTION_14_5();
    }

    v34 = OUTLINED_FUNCTION_33_7();
    v35(v34, v4);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v16 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

void sub_1DC319A4C()
{
  OUTLINED_FUNCTION_33();
  v6 = OUTLINED_FUNCTION_43_8(v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v14 = *(v13 + 176);
  v15 = OUTLINED_FUNCTION_50_6();
  if (!v16(v15))
  {
    sub_1DC29120C();
    OUTLINED_FUNCTION_32_5();
    v24(v0);
    v25 = sub_1DC516F6C();
    v26 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v26))
    {
      v27 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v27);
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_56_4(v28, v29, v30, v31);
      OUTLINED_FUNCTION_66();
    }

    (*(v9 + 8))(v0, v6);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v18 = *(v17 + 200);
  v20 = v19;
  if (!v18())
  {

    sub_1DC29120C();
    v32 = OUTLINED_FUNCTION_21_1(v9);
    v33(v32);
    v34 = sub_1DC516F6C();
    v35 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v35))
    {
      v36 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_31_2(v36);
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_55_6(v37, v38, v39, v40);
      OUTLINED_FUNCTION_66();
    }

    v41 = OUTLINED_FUNCTION_33_7();
    v42(v41, v6);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v21 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

void sub_1DC319CA4()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_23_10();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v9 = *(v8 + 176);
  v10 = OUTLINED_FUNCTION_22_5();
  if (!v11(v10))
  {
    sub_1DC29120C();
    v19 = OUTLINED_FUNCTION_10_9();
    v20(v19);
    v21 = sub_1DC516F6C();
    v22 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v22))
    {
      v23 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v23);
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v24, v0, "Empty metadata, skipping SELF logging");
      OUTLINED_FUNCTION_14_5();
    }

    v25 = OUTLINED_FUNCTION_41_6();
    v26(v25);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v13 = *(v12 + 208);
  v15 = v14;
  if (!v13())
  {

    sub_1DC29120C();
    v27 = OUTLINED_FUNCTION_5_11();
    v28(v27);
    v29 = sub_1DC516F6C();
    v30 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v30))
    {
      v31 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v31);
      OUTLINED_FUNCTION_11_9(&dword_1DC287000, v32, v33, "Error during SELF log creation process for NLRouterBridgeSubComponentStarted");
      OUTLINED_FUNCTION_14_5();
    }

    v34 = OUTLINED_FUNCTION_33_7();
    v35(v34, v4);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v16 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

void sub_1DC319ED8()
{
  OUTLINED_FUNCTION_33();
  v6 = OUTLINED_FUNCTION_43_8(v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v14 = *(v13 + 176);
  v15 = OUTLINED_FUNCTION_50_6();
  if (!v16(v15))
  {
    sub_1DC29120C();
    OUTLINED_FUNCTION_32_5();
    v24(v0);
    v25 = sub_1DC516F6C();
    v26 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v26))
    {
      v27 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v27);
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_56_4(v28, v29, v30, v31);
      OUTLINED_FUNCTION_66();
    }

    (*(v9 + 8))(v0, v6);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v18 = *(v17 + 216);
  v20 = v19;
  if (!v18())
  {

    sub_1DC29120C();
    v32 = OUTLINED_FUNCTION_21_1(v9);
    v33(v32);
    v34 = sub_1DC516F6C();
    v35 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v35))
    {
      v36 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_31_2(v36);
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_55_6(v37, v38, v39, v40);
      OUTLINED_FUNCTION_66();
    }

    v41 = OUTLINED_FUNCTION_33_7();
    v42(v41, v6);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v21 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31A130()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_23_10();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_12_0();
  v9 = *(v8 + 176);
  v10 = OUTLINED_FUNCTION_22_5();
  if (!v11(v10))
  {
    sub_1DC29120C();
    v19 = OUTLINED_FUNCTION_10_9();
    v20(v19);
    v21 = sub_1DC516F6C();
    v22 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v22))
    {
      v23 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v23);
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v24, v0, "Empty metadata, skipping SELF logging");
      OUTLINED_FUNCTION_14_5();
    }

    v25 = OUTLINED_FUNCTION_41_6();
    v26(v25);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0();
  v13 = *(v12 + 224);
  v15 = v14;
  if (!v13())
  {

    sub_1DC29120C();
    v27 = OUTLINED_FUNCTION_5_11();
    v28(v27);
    v29 = sub_1DC516F6C();
    v30 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v30))
    {
      v31 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v31);
      OUTLINED_FUNCTION_11_9(&dword_1DC287000, v32, v33, "Error during SELF log creation process for NLRouterBridgeSubComponentFailed");
      OUTLINED_FUNCTION_14_5();
    }

    v34 = OUTLINED_FUNCTION_33_7();
    v35(v34, v4);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_12_0();
  (*(v16 + 96))();

  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC31A364()
{
  OUTLINED_FUNCTION_1_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1DC516F7C();
  v1[6] = v5;
  OUTLINED_FUNCTION_52(v5);
  v1[7] = v6;
  v8 = *(v7 + 64) + 15;
  v1[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64) + 15;
  v1[9] = swift_task_alloc();
  v12 = sub_1DC510B6C();
  v1[10] = v12;
  OUTLINED_FUNCTION_52(v12);
  v1[11] = v13;
  v15 = *(v14 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DC31A4B4()
{
  v54 = v0;
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[3];
  v4 = v0[4];
  sub_1DC510B5C();
  sub_1DC510B0C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    v13 = v0[4];
    sub_1DC2BE530(v0[9], &unk_1ECC7CA30, &qword_1DC522A00);
    v14 = sub_1DC29120C();
    (*(v11 + 16))(v10, v14, v12);
    (*(v8 + 16))(v7, v6, v9);

    v15 = sub_1DC516F6C();
    v16 = sub_1DC517BAC();

    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[10];
    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[6];
    if (v17)
    {
      v48 = v0[3];
      v49 = v0[4];
      v51 = v0[6];
      v24 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v24 = 136315394;
      sub_1DC31CE00();
      v25 = sub_1DC51823C();
      v50 = v21;
      v27 = v26;
      (*(v19 + 8))(v18, v20);
      v28 = sub_1DC291244(v25, v27, &v53);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1DC291244(v48, v49, &v53);
      _os_log_impl(&dword_1DC287000, v15, v16, "Emitting trace %s failed. %s is not a valid UUID", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      (*(v22 + 8))(v50, v51);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
      (*(v22 + 8))(v21, v23);
    }

    v43 = v0[13];
    v44 = v0[12];
    v46 = v0[8];
    v45 = v0[9];
    (*(v0[11] + 32))(v0[2], v0[14], v0[10]);

    OUTLINED_FUNCTION_39_5();

    return v47();
  }

  else
  {
    v29 = v0[13];
    v30 = v0[10];
    v31 = v0[11];
    v32 = v0[9];
    v33 = v0[5];
    v34 = *(v31 + 32);
    v0[15] = v34;
    v0[16] = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v34(v29, v32, v30);
    OUTLINED_FUNCTION_12_0();
    v36 = *(v35 + 160);
    v52 = (v36 + *v36);
    v37 = v36[1];
    v38 = swift_task_alloc();
    v0[17] = v38;
    *v38 = v0;
    v38[1] = sub_1DC31A8C4;
    v40 = v0[13];
    v39 = v0[14];
    v41 = v0[5];

    return v52(v40, v39);
  }
}

uint64_t sub_1DC31A8C4()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1DC31AA98;
  }

  else
  {
    v3 = sub_1DC31A9D4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DC31A9D4()
{
  (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  (*(v0 + 120))(*(v0 + 16), *(v0 + 112), *(v0 + 80));

  OUTLINED_FUNCTION_39_5();

  return v6();
}

uint64_t sub_1DC31AA98()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = *(v0[11] + 8);
  v5(v0[13], v3);
  v5(v1, v3);

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t sub_1DC31AB70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_47();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DC31AB9C()
{
  v1 = v0[4];
  v0[5] = mach_absolute_time();
  OUTLINED_FUNCTION_12_0();
  v3 = *(v2 + 168);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1DC31ACC0;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6);
}

uint64_t sub_1DC31ACC0()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(*v0 + 48);
  v7 = *v0;
  *(*v0 + 56) = v2;

  v3 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DC31ADB4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[7];
  if (v1)
  {
    [*(v0[4] + 16) emitMessage:v0[7] timestamp:v0[5]];
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v1 = sub_1DC296DBC();
    sub_1DC516F0C();
  }

  OUTLINED_FUNCTION_39_5();

  return v2();
}

uint64_t sub_1DC31AE84()
{
  OUTLINED_FUNCTION_1_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1DC510B6C();
  v0[4] = v3;
  OUTLINED_FUNCTION_52(v3);
  v0[5] = v4;
  v6 = *(v5 + 64) + 15;
  v0[6] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC31AF30()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v3 = v1;
    v4 = [v2 init];
    [v3 setTarget_];

    v5 = [v3 target];
    if (v5)
    {
      v6 = v5;
      [v5 setComponent_];
    }

    v7 = [v3 target];
    v8 = &off_1E8630000;
    if (v7)
    {
      v9 = v7;
      v11 = v0[5];
      v10 = v0[6];
      v13 = v0[3];
      v12 = v0[4];
      sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
      (*(v11 + 16))(v10, v13, v12);
      v8 = &off_1E8630000;
      v14 = sub_1DC299428(v10);
      [v9 setUuid_];
    }

    v15 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v16 = v3;
    v17 = [v15 init];
    [v16 setSource_];

    v18 = [v16 source];
    if (v18)
    {
      v19 = v18;
      [v18 setComponent_];
    }

    v20 = [v16 source];
    if (v20)
    {
      v21 = v20;
      v23 = v0[5];
      v22 = v0[6];
      v24 = v0[4];
      v25 = v0[2];
      sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
      (*(v23 + 16))(v22, v25, v24);
      v26 = sub_1DC299428(v22);
      [v21 v8[254]];
    }
  }

  v27 = v0[6];

  v28 = v0[1];

  return v28(v1);
}

void sub_1DC31B1D8()
{
  OUTLINED_FUNCTION_33();
  v40 = v2;
  v41 = v1;
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_54_7();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v40 - v26;
  sub_1DC510B0C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v16) == 1)
  {
    sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    v28 = sub_1DC29120C();
    v29 = v3;
    (*(v6 + 16))(v11, v28, v3);
    v30 = sub_1DC516F6C();
    v31 = sub_1DC517B9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v32);
      OUTLINED_FUNCTION_56_4(&dword_1DC287000, v30, v31, "Invalid UUID string for RequestID");
      OUTLINED_FUNCTION_66();
    }

    (*(v6 + 8))(v11, v29);
  }

  else
  {
    (*(v19 + 32))(v27, v0, v16);
    v33 = [objc_allocWithZone(MEMORY[0x1E69CF318]) init];
    if (v33)
    {
      sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
      (*(v19 + 16))(v24, v27, v16);
      v34 = v33;
      v35 = sub_1DC299428(v24);
      [v34 setRequestId_];
    }

    v36 = v40;
    v37 = v41;
    v38 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v38 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (v38 && v33)
    {
      v39 = v33;
      sub_1DC31CE58(v37, v36, v39);
    }

    (*(v19 + 8))(v27, v16);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC31B50C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v48 = v5;
  v49 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v47 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_16_3();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v24 = [objc_allocWithZone(MEMORY[0x1E69CF380]) init];
  v25 = v24;
  if (v24)
  {
    OUTLINED_FUNCTION_46_5(v24, sel_setExists_);
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E69CF360]) init];
  [v26 setStartedOrChanged_];
  sub_1DC31CEB0(v2);
  if (v27)
  {
    sub_1DC510B0C();

    OUTLINED_FUNCTION_18_8();
    if (v28)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_8_6(v17);
      v30(v29);
      if (v26)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        v31 = *(v17 + 16);
        OUTLINED_FUNCTION_36_9();
        v32();
        v33 = v26;
        v34 = sub_1DC299428(v22);
        [v33 setTrpId_];
      }

      v35 = *(v17 + 8);
      v36 = OUTLINED_FUNCTION_89();
      v37(v36);
    }
  }

  v38 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v38)
  {
    OUTLINED_FUNCTION_57_6([v38 setEventMetadata_], sel_setNlRouterBridgeContext_);
  }

  else
  {
    v39 = sub_1DC29120C();
    (*(v48 + 16))(v47, v39, v49);
    v40 = sub_1DC516F6C();
    v41 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v41))
    {
      v42 = OUTLINED_FUNCTION_35_8();
      *v42 = 0;
      OUTLINED_FUNCTION_17_6();
      _os_log_impl(v43, v44, v45, v46, v42, 2u);
      OUTLINED_FUNCTION_66();
    }

    else
    {
    }

    (*(v48 + 8))(v47, v49);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31B884()
{
  OUTLINED_FUNCTION_33();
  v75 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_1DC516F7C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v73 = v8;
  v74 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_9(v11, v70);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_54_7();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v70 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v70 - v31;
  v33 = [objc_allocWithZone(MEMORY[0x1E69CF368]) init];
  v34 = [objc_allocWithZone(MEMORY[0x1E69CF378]) init];
  [v34 setRoutingDecisionSource_];
  if (v34)
  {
    type metadata accessor for NLRouterClientInstrumentationUtil();
    v35 = v34;
    v71 = v16;
    v36 = v33;
    v37 = v26;
    v38 = v19;
    v39 = v5;
    v40 = v35;
    v41 = sub_1DC38A7DC();
    v42 = sub_1DC38A81C();
    v43 = sub_1DC38A870(v41, v42);
    v44 = sub_1DC5157EC();
    (*(*(v44 - 8) + 16))(v32, v75, v44);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v44);
    v45 = (*(*v43 + 408))(v32);

    sub_1DC2BE530(v32, &qword_1ECC7CA40, &unk_1DC5233A0);
    [v40 setRouterDecisionType_];

    v5 = v39;
    v19 = v38;
    v26 = v37;
    v33 = v36;
    v16 = v71;
  }

  [v33 setRoutingDecision_];
  v46 = [objc_allocWithZone(MEMORY[0x1E69CF360]) init];
  [v46 setEnded_];
  sub_1DC31CEB0(v5);
  if (v47)
  {
    sub_1DC510B0C();

    if (__swift_getEnumTagSinglePayload(v0, 1, v16) == 1)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      (*(v19 + 32))(v26, v0, v16);
      if (v46)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        v48 = *(v19 + 16);
        v49 = v70;
        OUTLINED_FUNCTION_36_9();
        v50();
        v51 = v5;
        v52 = v46;
        v53 = sub_1DC299428(v49);
        [v52 setTrpId_];

        v5 = v51;
      }

      v54 = *(v19 + 8);
      v55 = OUTLINED_FUNCTION_89();
      v56(v55);
    }
  }

  v57 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v57)
  {
    v58 = v57;
    [v57 setEventMetadata_];
    [v58 setNlRouterBridgeContext_];
  }

  else
  {
    v59 = sub_1DC29120C();
    v61 = v72;
    v60 = v73;
    v62 = v74;
    (*(v73 + 16))(v72, v59, v74);
    v63 = sub_1DC516F6C();
    v64 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v64))
    {
      v65 = OUTLINED_FUNCTION_35_8();
      *v65 = 0;
      OUTLINED_FUNCTION_28_8();
      _os_log_impl(v66, v67, v68, v69, v65, 2u);
      OUTLINED_FUNCTION_66();
    }

    else
    {
    }

    (*(v60 + 8))(v61, v62);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31BDD4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DC516F7C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v57 = v6;
  v58 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v15 = sub_1DC510B6C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57 - v25;
  v27 = [objc_allocWithZone(MEMORY[0x1E69CF370]) init];
  v59 = v1;
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if (OUTLINED_FUNCTION_53_6())
  {
    if (v27)
    {
      v29 = v62;
      [v27 setErrorDomain_];
      v30 = v27;
      if (v29)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

LABEL_21:
      [v30 setErrorCode_];
    }
  }

  else
  {
    v62 = v1;
    v32 = v1;
    if (swift_dynamicCast())
    {
      switch(v61)
      {
        case 1:
          v38 = sub_1DC31CF24(v59, v60, 1u);
          if (v27)
          {
            OUTLINED_FUNCTION_46_5(v38, sel_setErrorDomain_);
            v30 = v27;
            v31 = 301;
            goto LABEL_21;
          }

          break;
        case 2:
          v36 = sub_1DC31CF24(v59, v60, 2u);
          if (v27)
          {
            OUTLINED_FUNCTION_46_5(v36, sel_setErrorDomain_);
            [v27 setErrorCode_];
          }

          break;
        case 3:
          v37 = sub_1DC31CF24(v59, v60, 3u);
          if (v27)
          {
            OUTLINED_FUNCTION_46_5(v37, sel_setErrorDomain_);
            [v27 setErrorCode_];
          }

          break;
        default:
          v33 = sub_1DC31CF24(v59, v60, 0);
          if (v27)
          {
            OUTLINED_FUNCTION_46_5(v33, sel_setErrorDomain_);
            [v27 setErrorCode_];
          }

          break;
      }
    }

    else
    {
      v59 = v1;
      v34 = v1;
      if (OUTLINED_FUNCTION_53_6())
      {
        sub_1DC31CF14(v62);
        if (v27)
        {
          OUTLINED_FUNCTION_46_5(v35, sel_setErrorDomain_);
          [v27 setErrorCode_];
        }
      }

      else if (v27)
      {
        [v27 setErrorDomain_];
      }
    }
  }

  v39 = [objc_allocWithZone(MEMORY[0x1E69CF360]) init];
  [v39 setFailed_];
  sub_1DC31CEB0(v3);
  if (v40)
  {
    sub_1DC510B0C();

    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_1DC2BE530(v14, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      (*(v18 + 32))(v26, v14, v15);
      if (v39)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        (*(v18 + 16))(v23, v26, v15);
        v41 = v39;
        v42 = sub_1DC299428(v23);
        [v41 setTrpId_];
      }

      (*(v18 + 8))(v26, v15);
    }
  }

  v43 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v43)
  {
    v44 = v43;
    [v43 setEventMetadata_];
    [v44 setNlRouterBridgeContext_];
  }

  else
  {
    sub_1DC29120C();
    v45 = v58;
    v46 = OUTLINED_FUNCTION_21_1(v57);
    v47(v46);
    v48 = sub_1DC516F6C();
    v49 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v49))
    {
      v50 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_31_2(v50);
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_55_6(v51, v52, v53, v54);
      OUTLINED_FUNCTION_66();
    }

    else
    {
    }

    v55 = OUTLINED_FUNCTION_33_7();
    v56(v55, v45);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31C338()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v49 = v5;
  v6 = sub_1DC516F7C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_9(v10, v48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_16_3();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_55_2();
  v22 = [objc_allocWithZone(MEMORY[0x1E69CF3A0]) init];
  [v22 setNlRouterSubComponent_];
  v23 = [objc_allocWithZone(MEMORY[0x1E69CF388]) init];
  [v23 setStartedOrChanged_];
  if (v23)
  {
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v24 = OUTLINED_FUNCTION_7_8();
    v25(v24, v2, v15);
    v26 = v23;
    v27 = OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_48_5(v27, sel_setTraceId_);
  }

  v28 = v49;
  sub_1DC31CEB0(v49);
  if (v29)
  {
    sub_1DC510B0C();

    OUTLINED_FUNCTION_18_8();
    if (v30)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_8_6(v18);
      v32(v31);
      if (v23)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        OUTLINED_FUNCTION_7_8();
        OUTLINED_FUNCTION_36_9();
        v33();
        v34 = v23;
        v35 = OUTLINED_FUNCTION_49_7();
        OUTLINED_FUNCTION_48_5(v35, sel_setTrpId_);

        v28 = v49;
      }

      v36 = *(v18 + 8);
      v37 = OUTLINED_FUNCTION_89();
      v38(v37);
    }
  }

  v39 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v39)
  {
    OUTLINED_FUNCTION_57_6([v39 setEventMetadata_], sel_setNlRouterBridgeSubComponentContext_);
  }

  else
  {
    sub_1DC29120C();
    v40 = OUTLINED_FUNCTION_6_9();
    v41(v40);
    v42 = sub_1DC516F6C();
    v43 = sub_1DC517B9C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v44);
      OUTLINED_FUNCTION_13_7(&dword_1DC287000, v45, v43, "Unable to create a NLRouterBridge wrapper SELF event for ORCHSchemaORCHNLRouterBridgeStarted");
      OUTLINED_FUNCTION_14_5();
    }

    else
    {
    }

    v46 = OUTLINED_FUNCTION_40_10();
    v47(v46);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31C6B4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v49 = v3;
  v4 = sub_1DC516F7C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_9(v8, v48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_16_3();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_55_2();
  v20 = [objc_allocWithZone(MEMORY[0x1E69CF390]) init];
  v21 = v20;
  if (v20)
  {
    OUTLINED_FUNCTION_46_5(v20, sel_setExists_);
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E69CF388]) init];
  [v22 setEnded_];
  if (v22)
  {
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v23 = OUTLINED_FUNCTION_7_8();
    v24(v23, v2, v13);
    v25 = v22;
    v26 = OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_48_5(v26, sel_setTraceId_);
  }

  v27 = v49;
  sub_1DC31CEB0(v49);
  if (v28)
  {
    sub_1DC510B0C();

    OUTLINED_FUNCTION_18_8();
    if (v29)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      v30 = OUTLINED_FUNCTION_8_6(v16);
      v31(v30);
      if (v22)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        OUTLINED_FUNCTION_7_8();
        OUTLINED_FUNCTION_36_9();
        v32();
        v33 = v22;
        v34 = OUTLINED_FUNCTION_49_7();
        OUTLINED_FUNCTION_48_5(v34, sel_setTrpId_);

        v27 = v49;
      }

      v35 = *(v16 + 8);
      v36 = OUTLINED_FUNCTION_89();
      v37(v36);
    }
  }

  v38 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v38)
  {
    OUTLINED_FUNCTION_57_6([v38 setEventMetadata_], sel_setNlRouterBridgeSubComponentContext_);
  }

  else
  {
    sub_1DC29120C();
    v39 = OUTLINED_FUNCTION_6_9();
    v40(v39);
    v41 = sub_1DC516F6C();
    v42 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v42))
    {
      v43 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v43);
      OUTLINED_FUNCTION_11_9(&dword_1DC287000, v44, v45, "Unable to create a NLRouterBridge wrapper SELF event for ORCHSchemaORCHNLRouterBridgeEnded");
      OUTLINED_FUNCTION_14_5();
    }

    else
    {
    }

    v46 = OUTLINED_FUNCTION_40_10();
    v47(v46);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

void sub_1DC31CA1C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v52 = v6;
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_9(v11, v51);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_16_3();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_55_2();
  v23 = [objc_allocWithZone(MEMORY[0x1E69CF398]) init];
  v24 = v23;
  if (v3)
  {
    if (v3 == 1)
    {
      if (!v23)
      {
        goto LABEL_10;
      }

      v25 = 2;
    }

    else
    {
      if (!v23)
      {
        goto LABEL_10;
      }

      v25 = 3;
    }
  }

  else
  {
    if (!v23)
    {
      goto LABEL_10;
    }

    v25 = 1;
  }

  [v23 setErrorCode_];
LABEL_10:
  v26 = [objc_allocWithZone(MEMORY[0x1E69CF388]) init];
  [v26 setFailed_];
  if (v26)
  {
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    OUTLINED_FUNCTION_32_5();
    v27(v1, v5, v16);
    v28 = v26;
    v29 = OUTLINED_FUNCTION_49_7();
    OUTLINED_FUNCTION_48_5(v29, sel_setTraceId_);
  }

  v30 = v52;
  sub_1DC31CEB0(v52);
  if (v31)
  {
    sub_1DC510B0C();

    OUTLINED_FUNCTION_18_8();
    if (v32)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_8_6(v19);
      v34(v33);
      if (v26)
      {
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        OUTLINED_FUNCTION_32_5();
        OUTLINED_FUNCTION_36_9();
        v35();
        v36 = v26;
        v37 = OUTLINED_FUNCTION_49_7();
        OUTLINED_FUNCTION_48_5(v37, sel_setTrpId_);

        v30 = v52;
      }

      v38 = *(v19 + 8);
      v39 = OUTLINED_FUNCTION_89();
      v40(v39);
    }
  }

  v41 = [objc_allocWithZone(MEMORY[0x1E69CF310]) init];
  if (v41)
  {
    OUTLINED_FUNCTION_57_6([v41 setEventMetadata_], sel_setNlRouterBridgeSubComponentContext_);
  }

  else
  {
    sub_1DC29120C();
    v42 = OUTLINED_FUNCTION_6_9();
    v43(v42);
    v44 = sub_1DC516F6C();
    v45 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_20_1(v45))
    {
      v46 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_25_5(v46);
      OUTLINED_FUNCTION_11_9(&dword_1DC287000, v47, v48, "Unable to create a NLRouterBridge wrapper SELF event for ORCHSchemaORCHNLRouterBridgeEnded");
      OUTLINED_FUNCTION_14_5();
    }

    else
    {
    }

    v49 = OUTLINED_FUNCTION_40_10();
    v50(v49);
  }

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC31CDC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_1DC31CE00()
{
  result = qword_1ECC7BE90;
  if (!qword_1ECC7BE90)
  {
    sub_1DC510B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BE90);
  }

  return result;
}

void sub_1DC31CE58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setResultCandidateId_];
}

uint64_t sub_1DC31CEB0(void *a1)
{
  v1 = [a1 resultCandidateId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DC51772C();

  return v3;
}

void sub_1DC31CF14(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1DC31CF24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1DC31CF60(char a1)
{
  v1 = 0x6D6574737973;
  switch(a1)
  {
    case 1:
      v1 = 1919251317;
      break;
    case 2:
      v1 = 0x65746972776572;
      break;
    case 3:
      v1 = 0x6E61747369737361;
      break;
    default:
      break;
  }

  sub_1DC428688(5);

  v2 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x1E1296160](v2);

  v3 = OUTLINED_FUNCTION_15_5();
  MEMORY[0x1E1296160](v3);

  return v1;
}

uint64_t sub_1DC31D060(char a1)
{
  result = 0x6D6574737973;
  switch(a1)
  {
    case 1:
      result = 1919251317;
      break;
    case 2:
      result = 0x65746972776572;
      break;
    case 3:
      result = 0x6E61747369737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC31D0DC()
{
  v0 = sub_1DC51808C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DC31D140(unsigned __int8 a1, char a2)
{
  v2 = 0x6D6574737973;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6D6574737973;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1919251317;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x65746972776572;
      break;
    case 3:
      v5 = 0x6E61747369737361;
      v3 = 0xE900000000000074;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1919251317;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x65746972776572;
      break;
    case 3:
      v2 = 0x6E61747369737361;
      v6 = 0xE900000000000074;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC31D288()
{
  sub_1DC5182FC();
  sub_1DC31D324();
  return sub_1DC51833C();
}

uint64_t sub_1DC31D2D0()
{
  sub_1DC5182FC();
  sub_1DC51831C();
  return sub_1DC51833C();
}

uint64_t sub_1DC31D324()
{
  sub_1DC51769C();
}

uint64_t sub_1DC31D408()
{
  sub_1DC5182FC();
  sub_1DC51831C();
  return sub_1DC51833C();
}

uint64_t sub_1DC31D450()
{
  sub_1DC5182FC();
  sub_1DC31D324();
  return sub_1DC51833C();
}

uint64_t sub_1DC31D494@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC31D0DC();
  *a2 = result;
  return result;
}

uint64_t sub_1DC31D4C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC31D060(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1DC31D50C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v88 = v3;
  v89 = v4;
  v94 = v5;
  v6 = sub_1DC51072C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v84 = v8;
  v86 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v82 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC51514C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v92 = v14;
  v93 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_54_0();
  v17 = sub_1DC516F5C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v78 = v19;
  v80 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v22 = sub_1DC517B9C();
  v23 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v24 = sub_1DC296DBC();
  if (os_log_type_enabled(v24, v22))
  {
    v25 = OUTLINED_FUNCTION_63();
    v26 = OUTLINED_FUNCTION_82();
    v96[0] = v26;
    *v25 = 136315138;
    type metadata accessor for NLRouterModelFeatureSet();
    sub_1DC327C2C(&qword_1ECC7BC10, type metadata accessor for NLRouterModelFeatureSet);
    v27 = sub_1DC51823C();
    v29 = sub_1DC291244(v27, v28, v96);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1DC287000, v24, v22, "NLRouterServicePromptGenerationUtil.makePrompt using prompt features: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  v30 = sub_1DC39908C();
  v31 = *v30;
  v32 = v30[1];
  v33 = *(v30 + 16);
  v34 = sub_1DC296DBC();
  v75 = v23;
  v76 = v0;
  v35 = OUTLINED_FUNCTION_65_1();
  sub_1DC2A2ED0(v35, v36, v33, v34, 1, v37);

  v38 = sub_1DC31D9DC(v94, v88, v89, v2);
  v40 = v39;

  v90 = v38;
  sub_1DC51515C();
  v41 = sub_1DC51513C();
  v42 = *(v92 + 8);
  v43 = OUTLINED_FUNCTION_46_6();
  v42(v43);
  v44 = *v94;
  v45 = v94[1];

  OUTLINED_FUNCTION_45_2();
  sub_1DC51515C();
  v46 = sub_1DC51513C();
  v47 = OUTLINED_FUNCTION_46_6();
  v42(v47);
  v48 = v41 + v46;
  if (__OFADD__(v41, v46))
  {
    __break(1u);
  }

  else
  {
    v49 = type metadata accessor for NLRouterServiceRequest(0);
    if (!__OFSUB__(512, v48))
    {
      v55 = v49;
      v56 = v94;
      sub_1DC31E530(*(v94 + *(v49 + 24)), v94 + *(v49 + 20), 512 - v48, v50, v51, v52, v53, v54, v75, v76, v78, v80, v82, v84, v86, v88, v90, v92, v93, v94);
      v58 = v57;
      v60 = v59;
      v61 = v56 + *(v55 + 32);
      v62 = OUTLINED_FUNCTION_45_2();
      sub_1DC31FFA4(v62, v63, v64, v65, v66);
      v96[0] = v91;
      v96[1] = v40;
      MEMORY[0x1E1296160](v58, v60);

      v67 = OUTLINED_FUNCTION_45_2();
      MEMORY[0x1E1296160](v67);

      v68 = OUTLINED_FUNCTION_15_5();
      MEMORY[0x1E1296160](v68);
      sub_1DC428688(5);
      OUTLINED_FUNCTION_10_10();
      v95 = v69;
      MEMORY[0x1E1296160]();

      v70 = OUTLINED_FUNCTION_15_5();
      MEMORY[0x1E1296160](v70);

      MEMORY[0x1E1296160](v95, 0xE700000000000000);

      sub_1DC51070C();
      sub_1DC2A32B0();
      sub_1DC517E0C();
      OUTLINED_FUNCTION_75_0();
      (*(v85 + 8))(v83, v87);

      v71 = *v30;
      v72 = v30[1];
      v73 = *(v30 + 16);
      v74 = sub_1DC296DBC();
      sub_1DC2B8848();

      (*(v79 + 8))(v77, v81);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_34();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1DC31D9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for NLRouterPromptSignals();
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v13 = sub_1DC516F5C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v147 = v15;
  v149 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v22 = sub_1DC399098();
  v23 = *v22;
  v24 = v22[1];
  v142 = v22;
  v25 = *(v22 + 16);
  v26 = sub_1DC296DBC();
  v145 = v20;
  v27 = v20;
  v28 = v4;
  v29 = v21;
  sub_1DC2A2ED0(v23, v24, v25, v26, 1, v27);

  sub_1DC323978();
  (*(*a3 + 152))(v28, a2);
  sub_1DC320514(a1, v30, v31, v32, v33, v34, v35, v36, v129, v130, v132, v134, v136, v137, v139, v142, v144, v145, v147, v149);
  v151 = v38;
  v153 = v37;
  v39 = *(a1 + *(type metadata accessor for NLRouterServiceRequest(0) + 36));
  if (!v39)
  {
    sub_1DC517B9C();
    v55 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

LABEL_17:
    v58 = 0;
    v59 = 0;
    goto LABEL_18;
  }

  v40 = *(*a4 + 96);
  v41 = v39;
  if ((v40(1) & 1) == 0)
  {
    sub_1DC517B9C();
    v56 = sub_1DC296DBC();
    sub_1DC516F0C();

    goto LABEL_17;
  }

  sub_1DC517B8C();
  v42 = sub_1DC296DBC();
  sub_1DC516F0C();

  v43 = v41;
  v44 = sub_1DC516D7C();

  if (!v44)
  {
    sub_1DC517B8C();
    v57 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    goto LABEL_17;
  }

  v138 = a4;
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v45 = sub_1DC332630();
  v46 = sub_1DC3E768C(v45);
  v47 = 3;
  if (v46 == 4)
  {
    v48 = 3;
  }

  else
  {
    v48 = v46;
  }

  sub_1DC332714();
  v50 = v49;
  v140 = sub_1DC332818();
  v51 = sub_1DC332908();
  if (v50)
  {
    v5 = v51;
    if (sub_1DC51778C() == 0x6D6F646E6172 && v52 == 0xE600000000000000)
    {

      goto LABEL_41;
    }

    v54 = sub_1DC51825C();

    if (v54)
    {
      swift_bridgeObjectRelease_n();
LABEL_41:
      v47 = 0;
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_49_8();
    if (sub_1DC51778C() == 1802530676 && v113 == 0xE400000000000000)
    {
    }

    else
    {
      v115 = sub_1DC51825C();

      if ((v115 & 1) == 0)
      {
        LODWORD(v133) = v48;
        a4 = v44;
        OUTLINED_FUNCTION_49_8();
        v116 = sub_1DC51778C();
        v118 = v117;

        if (v116 == 0xD000000000000011 && 0x80000001DC53F330 == v118)
        {
LABEL_67:

          v44 = a4;
        }

        else
        {
          OUTLINED_FUNCTION_62_2();
          v120 = sub_1DC51825C();

          if ((v120 & 1) == 0)
          {
            v121 = sub_1DC517B8C();
            v122 = sub_1DC296DBC();
            if (os_log_type_enabled(v122, v121))
            {
              v123 = OUTLINED_FUNCTION_63();
              v141 = OUTLINED_FUNCTION_82();
              v154[0] = v141;
              *v123 = 136315138;
              v124 = OUTLINED_FUNCTION_49_8();
              v127 = v43;
              v128 = sub_1DC291244(v124, v125, v126);

              *(v123 + 4) = v128;
              v43 = v127;
              _os_log_impl(&dword_1DC287000, v122, v121, "Unknown span filter strategy: %s, defaulting to none", v123, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v141);
              OUTLINED_FUNCTION_66();
              v44 = a4;
              OUTLINED_FUNCTION_66();
            }

            else
            {
            }

            v140 = 0;
            v47 = 3;
            goto LABEL_71;
          }
        }

        v140 = LODWORD(v5);
        v47 = 2;
LABEL_71:
        v48 = v133;
        goto LABEL_42;
      }
    }

    swift_bridgeObjectRelease_n();
    v47 = 1;
    goto LABEL_42;
  }

  v140 = 0;
LABEL_42:
  v94 = sub_1DC332A10();
  v135 = v47;
  if (v94)
  {
    v95 = v94;
  }

  else
  {
    if (sub_1DC29F950(0xAu))
    {
      v96 = sub_1DC3E7A08();
    }

    else
    {
      v96 = sub_1DC3E7860();
    }

    v95 = *v96;
    swift_bridgeObjectRetain_n();
  }

  v97 = sub_1DC517B9C();
  v98 = sub_1DC296DBC();
  if (os_log_type_enabled(v98, v97))
  {
    v99 = OUTLINED_FUNCTION_63();
    v133 = v44;
    v100 = OUTLINED_FUNCTION_82();
    v154[0] = v100;
    *v99 = 136315138;
    v101 = MEMORY[0x1E12962D0](v95, MEMORY[0x1E69E6158]);
    v131 = v29;
    v102 = v48;
    v103 = v43;
    v105 = v104;

    v106 = sub_1DC291244(v101, v105, v154);
    v43 = v103;
    v48 = v102;
    v29 = v131;

    *(v99 + 4) = v106;
    OUTLINED_FUNCTION_28_8();
    _os_log_impl(v107, v108, v109, v110, v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    v44 = v133;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {
  }

  v111 = sub_1DC322E3C(v95);
  v58 = sub_1DC3E5104(v44, v48, v140, v135, v111);
  v59 = v112;

  a4 = v138;
LABEL_18:
  v43 = sub_1DC3215D0(v28, a4);
  v61 = v60;
  if (((*(*a4 + 96))(0) & 1) == 0)
  {
    sub_1DC517B9C();
    v67 = sub_1DC296DBC();
    sub_1DC516F0C();

LABEL_23:
    v64 = 0;
    v66 = 0;
    goto LABEL_24;
  }

  sub_1DC408C50();
  if ((v62 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1DC408F2C();
  if ((v63 & 1) == 0)
  {
    goto LABEL_23;
  }

  LOBYTE(v154[0]) = 25;
  sub_1DC30D6EC();
  v64 = sub_1DC51823C();
  v66 = v65;
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAD8, &qword_1DC525850);
  inited = swift_initStackObject();
  v28 = 0;
  *(inited + 16) = xmmword_1DC523DA0;
  *(inited + 32) = v153;
  *(inited + 40) = v151;
  *(inited + 48) = v58;
  *(inited + 56) = v59;
  *(inited + 64) = v43;
  *(inited + 72) = v61;
  *(inited + 80) = v64;
  *(inited + 88) = v66;
  v69 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v70 = 16 * v28 + 40;
  while (v28 != 4)
  {
    if (v28 > 3)
    {
      __break(1u);
      goto LABEL_67;
    }

    ++v28;
    v71 = v70 + 16;
    v72 = *(inited + v70);
    v70 += 16;
    if (v72)
    {
      v73 = *(inited + v71 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = *(v69 + 2);
        v78 = OUTLINED_FUNCTION_13_0();
        v69 = sub_1DC2ACCD4(v78, v79, v80, v69);
      }

      v75 = *(v69 + 2);
      v74 = *(v69 + 3);
      if (v75 >= v74 >> 1)
      {
        v81 = OUTLINED_FUNCTION_26(v74);
        v69 = sub_1DC2ACCD4(v81, v75 + 1, 1, v69);
      }

      *(v69 + 2) = v75 + 1;
      v76 = &v69[16 * v75];
      *(v76 + 4) = v73;
      *(v76 + 5) = v72;
      goto LABEL_25;
    }
  }

  swift_setDeallocating();
  sub_1DC323EA8();
  if (*(v69 + 2) || ((*(*a4 + 96))(4) & 1) != 0)
  {
    sub_1DC428688(5);
    v154[0] = 0x6D6574737973;
    v154[1] = 0xE600000000000000;
    MEMORY[0x1E1296160]();

    v82 = OUTLINED_FUNCTION_15_5();
    MEMORY[0x1E1296160](v82);

    v83 = OUTLINED_FUNCTION_56_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v83, v84);
    OUTLINED_FUNCTION_1_6();
    sub_1DC327B3C(v85, &qword_1ECC7C130, &unk_1DC5240F0);
    OUTLINED_FUNCTION_15_5();
    sub_1DC5176AC();

    v86 = OUTLINED_FUNCTION_65_1();
    MEMORY[0x1E1296160](v86);

    sub_1DC30D6EC();
    v87 = sub_1DC51823C();
    MEMORY[0x1E1296160](v87);

    v88 = OUTLINED_FUNCTION_15_5();
    MEMORY[0x1E1296160](v88);
  }

  else
  {
  }

  sub_1DC327BD8();
  v89 = *v143;
  v90 = v143[1];
  v91 = *(v143 + 16);
  v92 = sub_1DC296DBC();
  OUTLINED_FUNCTION_68_1();

  (*(v148 + 8))(v146, v150);
  return OUTLINED_FUNCTION_63_0();
}

void sub_1DC31E530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v308 = v22;
  v340 = v23;
  v362 = v24;
  v307 = sub_1DC51514C();
  v25 = OUTLINED_FUNCTION_0(v307);
  v306 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  v30 = OUTLINED_FUNCTION_14(v29);
  v352 = type metadata accessor for TurnSummary.ExecutionSource(v30);
  v31 = OUTLINED_FUNCTION_35(v352);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v34);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFB8, &unk_1DC52A4C0);
  OUTLINED_FUNCTION_35(v317);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  OUTLINED_FUNCTION_10(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v43);
  v313 = sub_1DC51072C();
  v44 = OUTLINED_FUNCTION_0(v313);
  v361 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v48);
  v325 = sub_1DC5119DC();
  v49 = OUTLINED_FUNCTION_0(v325);
  v350 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v63);
  v358 = sub_1DC5157EC();
  v64 = OUTLINED_FUNCTION_0(v358);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v69);
  v342 = sub_1DC5161CC();
  v70 = OUTLINED_FUNCTION_0(v342);
  v72 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v301 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v79 = OUTLINED_FUNCTION_10(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  v83 = MEMORY[0x1EEE9AC00](v82);
  v85 = &v301 - v84;
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_23_1();
  v351 = v87;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_62();
  v357 = v89;
  v90 = OUTLINED_FUNCTION_12();
  v359 = type metadata accessor for TurnSummary(v90);
  v91 = OUTLINED_FUNCTION_0(v359);
  v356 = v92;
  v94 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_2_1();
  v363 = v95;
  OUTLINED_FUNCTION_12();
  v305 = sub_1DC516F5C();
  v96 = OUTLINED_FUNCTION_0(v305);
  v304 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_1();
  v102 = v101 - v100;
  v103 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v104 = sub_1DC3990A4();
  v105 = *v104;
  v106 = v104[1];
  v302 = v104;
  v107 = *(v104 + 16);
  v108 = sub_1DC296DBC();
  v303 = v102;
  v109 = v105;
  v110 = v85;
  v111 = v352;
  v331 = v103;
  sub_1DC2A2ED0(v109, v106, v107, v108, 1, v102);

  v112 = v362;

  v113 = sub_1DC3217EC(5, v112);
  v329 = v114;
  v116 = v115;
  v311 = v361 + 8;
  v336 = v72 + 32;
  v322 = v66 + 32;
  v321 = v66 + 8;
  v320 = *MEMORY[0x1E69D0728];
  v319 = v72 + 104;
  v341 = v72 + 8;
  v349 = v350 + 16;
  v348 = v350 + 8;
  v330 = v117 >> 1;
  v118 = (v117 >> 1) - v115;
  v119 = __OFSUB__(v117 >> 1, v115);
  v328 = v119;
  v326 = v118 - 1;
  v120 = __OFSUB__(v118, 1);
  v327 = v120;
  v309 = v113;
  swift_unknownObjectRetain();
  v310 = 0;
  v121 = 0;
  v345 = MEMORY[0x1E69E7CC0];
  v343 = v77;
  v314 = v110;
  while (v116 != v330)
  {
    if (v116 >= v330)
    {
      goto LABEL_131;
    }

    if (__OFADD__(v121, 1))
    {
      goto LABEL_132;
    }

    v333 = v121;
    v334 = v121 + 1;
    v335 = v116;
    v122 = (v329 + 48 * v116);
    v123 = v122[1];
    v124 = v122[2];
    v125 = v122[3];
    v126 = v122[4];
    v370 = 0;
    v371 = 0xE000000000000000;

    v332 = v123;

    sub_1DC428688(5);
    v364 = 1919251317;
    v365 = 0xE400000000000000;
    MEMORY[0x1E1296160]();

    v127 = OUTLINED_FUNCTION_15_5();
    MEMORY[0x1E1296160](v127);

    v339 = v124;
    if (v125)
    {
      v128 = v124;
    }

    else
    {
      v128 = 0;
    }

    if (v125)
    {
      v129 = v125;
    }

    else
    {
      v129 = 0xE000000000000000;
    }

    v344 = v125;

    MEMORY[0x1E1296160](v128, v129);
    v130 = v358;

    LOBYTE(v368) = 0;
    v346 = sub_1DC30D6EC();
    sub_1DC51823C();
    OUTLINED_FUNCTION_53_7();

    OUTLINED_FUNCTION_64_0();

    v131 = v357;
    v132 = v359;
    v355 = *(v126 + 16);
    if (v355)
    {
      v133 = *(v356 + 80);
      OUTLINED_FUNCTION_24();
      v354 = v126 + v134;

      v135 = 0;
      v136 = v346;
      v353 = v126;
      while (v135 < *(v126 + 16))
      {
        v137 = *(v356 + 72);
        v362 = v135;
        OUTLINED_FUNCTION_28_9();
        v138 = v363;
        sub_1DC327A94();
        v139 = v138[2];
        v140 = v138[3];
        v141 = *(v132 + 28);
        sub_1DC2DB2AC();
        OUTLINED_FUNCTION_39(v131, 1, v111);
        if (v175)
        {
          OUTLINED_FUNCTION_83_0();

LABEL_23:
          v364 = 0x3E656761733CLL;
          OUTLINED_FUNCTION_32_6(0xE600000000000000);
          OUTLINED_FUNCTION_89();
          sub_1DC51823C();
          OUTLINED_FUNCTION_53_7();

          OUTLINED_FUNCTION_72_3();
LABEL_24:
          v142 = v136;
        }

        else
        {
          v143 = v351;
          OUTLINED_FUNCTION_59_2();
          sub_1DC2DB2AC();
          v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v143, 4, v144);
          v138 = &qword_1ECC7CA40;
          v146 = v347;
          switch(EnumTagSinglePayload)
          {
            case 1:
              v173 = *v363;
              v138 = v363[1];
              v360 = v139;
              if (v344)
              {
                if (!v138 || ((OUTLINED_FUNCTION_70_2(), v174 == v173) ? (v175 = v344 == v138) : (v175 = 0), !v175 && (sub_1DC51825C() & 1) == 0))
                {
LABEL_50:
                  v364 = 0x203E78697269733CLL;
                  v365 = 0xE800000000000000;
                  if (v138)
                  {
                    v181 = v173;
                  }

                  else
                  {
                    v181 = 0;
                  }

                  v142 = v136;
                  if (v138)
                  {
                    v182 = v138;
                  }

                  else
                  {
                    v182 = 0xE000000000000000;
                  }

                  MEMORY[0x1E1296160](v181, v182);

                  OUTLINED_FUNCTION_72_3();
                  goto LABEL_57;
                }
              }

              else if (v138)
              {
                goto LABEL_50;
              }

              v364 = 0x3E78697269733CLL;
              OUTLINED_FUNCTION_32_6(0xE700000000000000);

              OUTLINED_FUNCTION_89();
              sub_1DC51823C();
              OUTLINED_FUNCTION_53_7();

              OUTLINED_FUNCTION_72_3();
LABEL_46:
              v142 = v136;
LABEL_57:
              v130 = v140;
              break;
            case 2:
              OUTLINED_FUNCTION_83_0();

              OUTLINED_FUNCTION_27_8();
              sub_1DC327BD8();
              goto LABEL_23;
            case 3:
              v360 = v139;
              v364 = 0x3E656761733CLL;
              OUTLINED_FUNCTION_32_6(0xE600000000000000);

              OUTLINED_FUNCTION_89();
              sub_1DC51823C();
              OUTLINED_FUNCTION_53_7();

              OUTLINED_FUNCTION_72_3();
              goto LABEL_46;
            case 4:
              v161 = sub_1DC321880(v345);
              if (!v162)
              {
                goto LABEL_90;
              }

              v364 = v161;
              v365 = v162;
              sub_1DC428688(0);
              v360 = sub_1DC2A32B0();
              v163 = sub_1DC517E6C();

              v164 = 0;
              v361 = *(v163 + 16);
              v165 = (v163 + 56);
              while (2)
              {
                if (v361 == v164)
                {
                  goto LABEL_89;
                }

                if (v164 >= *(v163 + 16))
                {
                  goto LABEL_129;
                }

                v166 = *(v165 - 3);
                v167 = *(v165 - 2);
                v169 = *(v165 - 1);
                v168 = *v165;
                v364 = v166;
                v365 = v167;
                v366 = v169;
                v367 = v168;

                sub_1DC428688(5);
                OUTLINED_FUNCTION_10_10();
                OUTLINED_FUNCTION_85_1(v170);

                v171 = OUTLINED_FUNCTION_15_5();
                MEMORY[0x1E1296160](v171);

                sub_1DC327AE8();
                v172 = sub_1DC517E5C();

                if ((v172 & 1) == 0)
                {

                  ++v164;
                  v165 += 4;
                  continue;
                }

                break;
              }

              v364 = v166;
              v365 = v167;
              v366 = v169;
              v367 = v168;
              OUTLINED_FUNCTION_33_8();
              v368 = v183;
              v369 = 0xE700000000000000;
              if (sub_1DC517E5C())
              {
                v364 = v166;
                v365 = v167;
                v366 = v169;
                v367 = v168;
                v184 = v312;
                sub_1DC5106FC();
                sub_1DC517E0C();
                v186 = v185;
                OUTLINED_FUNCTION_37(&v342);
                v187(v184, v313);

                sub_1DC428688(5);
                OUTLINED_FUNCTION_10_10();
                v364 = v188;
                v365 = 0xE700000000000000;
                MEMORY[0x1E1296160]();

                v189 = OUTLINED_FUNCTION_15_5();
                MEMORY[0x1E1296160](v189);

                sub_1DC51783C();

                v190 = OUTLINED_FUNCTION_30_6();
                v192 = sub_1DC303EB0(v190, v191, v186);
                v361 = MEMORY[0x1E1296060](v192);
                v138 = v193;

                v360 = 0;
                goto LABEL_78;
              }

LABEL_89:

              v136 = v346;
LABEL_90:
              sub_1DC517B9C();
              v225 = sub_1DC296DBC();
              sub_1DC516F0C();

              OUTLINED_FUNCTION_33_8();
              v364 = v226;
              OUTLINED_FUNCTION_32_6(0xE700000000000000);
              OUTLINED_FUNCTION_89();
              sub_1DC51823C();
              OUTLINED_FUNCTION_53_7();

              v130 = 0;
              v138 = v365;
              v360 = 0;
              v361 = v364;
              goto LABEL_24;
            default:
              OUTLINED_FUNCTION_37(&v368);
              v147 = v342;
              v148(v343, v351, v342);
              v149 = *(v359 + 36);
              sub_1DC2DB2AC();
              OUTLINED_FUNCTION_39(v146, 1, v130);
              if (v175)
              {

                OUTLINED_FUNCTION_59_2();
                sub_1DC28EB30(v150, v151, v152);
                OUTLINED_FUNCTION_37(&v351);
                v153(v323, v320, v147);
                v154 = sub_1DC5161BC();
                OUTLINED_FUNCTION_37(&a9);
                v155 = OUTLINED_FUNCTION_56_0();
                v156(v155);
                if (v154)
                {
                  sub_1DC428688(28);
                  v158 = v157;
                  v160 = v159;
                }

                else
                {
                  v158 = 0;
                  v160 = 0xE000000000000000;
                }

                v194 = v343;
                v195 = v338;
              }

              else
              {
                OUTLINED_FUNCTION_37(&v354);
                v176 = OUTLINED_FUNCTION_74();
                v177(v176);

                sub_1DC32DBF4();
                if (v178)
                {
                  sub_1DC428688(28);
                  v158 = v179;
                  v160 = v180;
                }

                else
                {
                  v158 = 0;
                  v160 = 0xE000000000000000;
                }

                v194 = v343;
                v195 = v338;
                OUTLINED_FUNCTION_37(&v353);
                v196(v337, v358);
              }

              OUTLINED_FUNCTION_33_8();
              v364 = v197;
              v365 = 0xE700000000000000;
              MEMORY[0x1E1296160](v158, v160);

              sub_1DC3318A0();
              if (v199)
              {
                v200 = v199;
              }

              else
              {
                v198 = 0;
                v200 = 0xE000000000000000;
              }

              MEMORY[0x1E1296160](v198, v200);

              LOBYTE(v368) = 8;
              sub_1DC51823C();
              OUTLINED_FUNCTION_53_7();

              v201 = v364;
              v130 = v365;
              OUTLINED_FUNCTION_40_11();
              sub_1DC2DB2AC();
              v202 = type metadata accessor for NLRouterTurnContext(0);
              OUTLINED_FUNCTION_39(v195, 1, v202);
              v361 = v201;
              if (v175)
              {
                OUTLINED_FUNCTION_37(&a9);
                v203(v194, v342);

                sub_1DC28EB30(v195, &qword_1ECC7BFD0, &unk_1DC522550);
              }

              else
              {
                v204 = *(v195 + 16);

                OUTLINED_FUNCTION_4_9();
                sub_1DC327BD8();
                v205 = 0;
                v206 = *(v204 + 16);
                v207 = v325;
                v208 = v324;
                while (v206 != v205)
                {
                  if (v205 >= *(v204 + 16))
                  {
                    goto LABEL_130;
                  }

                  OUTLINED_FUNCTION_22_0();
                  (*(v210 + 16))(v208, v204 + v209 + *(v210 + 72) * v205, v207);
                  if (sub_1DC51191C())
                  {
                    v213 = v130;
                    OUTLINED_FUNCTION_83_0();

                    OUTLINED_FUNCTION_37(&a16);
                    v216(v208, v207);
                    goto LABEL_80;
                  }

                  ++v205;
                  v211 = sub_1DC51195C();
                  OUTLINED_FUNCTION_37(&a16);
                  v212(v208, v207);
                  if (v211)
                  {
                    v213 = v130;
                    OUTLINED_FUNCTION_83_0();

LABEL_80:
                    OUTLINED_FUNCTION_37(&a9);
                    v217 = OUTLINED_FUNCTION_80_2();
                    v218(v217);
                    v142 = v346;
                    v138 = v213;
                    goto LABEL_81;
                  }
                }

                OUTLINED_FUNCTION_37(&a9);
                v214 = OUTLINED_FUNCTION_80_2();
                v215(v214);
              }

              v360 = 0;
              v138 = v130;
LABEL_78:
              v130 = 0;
              v142 = v346;
              break;
          }
        }

LABEL_81:
        v135 = v362 + 1;
        v131 = v357;
        sub_1DC28EB30(v357, &qword_1ECC7BFC8, &unk_1DC524050);
        v364 = 32;
        v365 = 0xE100000000000000;
        sub_1DC428688(5);
        OUTLINED_FUNCTION_10_10();
        OUTLINED_FUNCTION_85_1(v219);

        v220 = OUTLINED_FUNCTION_15_5();
        MEMORY[0x1E1296160](v220);

        MEMORY[0x1E1296160](v368, v369);

        MEMORY[0x1E1296160](v361, v138);

        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_53_7();

        OUTLINED_FUNCTION_64_0();

        v364 = 32;
        v365 = 0xE100000000000000;
        sub_1DC428688(5);
        v368 = 0x6E61747369737361;
        v369 = 0xE900000000000074;
        MEMORY[0x1E1296160]();

        v221 = OUTLINED_FUNCTION_15_5();
        MEMORY[0x1E1296160](v221);

        MEMORY[0x1E1296160](v368, v369);

        if (v130)
        {
          v222 = v360;
        }

        else
        {
          v222 = 0;
        }

        if (v130)
        {
          v223 = v130;
        }

        else
        {
          v223 = 0xE000000000000000;
        }

        MEMORY[0x1E1296160](v222, v223);

        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_53_7();

        OUTLINED_FUNCTION_64_0();

        v224 = OUTLINED_FUNCTION_15_5();
        MEMORY[0x1E1296160](v224);
        OUTLINED_FUNCTION_24_4();
        sub_1DC327BD8();
        v130 = v358;
        v132 = v359;
        v111 = v352;
        v126 = v353;
        v136 = v142;
        if (v135 == v355)
        {

          goto LABEL_91;
        }
      }

      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

LABEL_91:
    if (v328)
    {
      goto LABEL_135;
    }

    if (v327)
    {
      goto LABEL_136;
    }

    if (v333 != v326)
    {

      goto LABEL_112;
    }

    v227 = *(v126 + 16);
    v228 = v314;
    if (v227)
    {
      v229 = v126 + ((*(v356 + 80) + 32) & ~*(v356 + 80)) + *(v356 + 72) * (v227 - 1);
      OUTLINED_FUNCTION_28_9();
      v230 = v315;
      sub_1DC327A94();
      v231 = 0;
    }

    else
    {
      v231 = 1;
      v230 = v315;
    }

    __swift_storeEnumTagSinglePayload(v230, v231, 1, v132);

    v232 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v232, v233, v132);
    v234 = v132;
    v235 = v316;
    if (v175)
    {
      sub_1DC28EB30(v230, &qword_1ECC7BFC0, &unk_1DC522540);
      __swift_storeEnumTagSinglePayload(v318, 1, 1, v111);
    }

    else
    {
      v236 = v230 + *(v234 + 28);
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_24_4();
      sub_1DC327BD8();
    }

    v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
    __swift_storeEnumTagSinglePayload(v228, 1, 4, v237);
    __swift_storeEnumTagSinglePayload(v228, 0, 1, v111);
    v238 = *(v317 + 48);
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_39(v235, 1, v111);
    if (v175)
    {
      OUTLINED_FUNCTION_40_11();
      sub_1DC28EB30(v239, v240, v241);
      OUTLINED_FUNCTION_40_11();
      sub_1DC28EB30(v242, v243, v244);
      OUTLINED_FUNCTION_39(v235 + v238, 1, v111);
      if (!v175)
      {
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_40_11();
      sub_1DC28EB30(v245, v246, v247);
LABEL_111:
      sub_1DC3218C8();
      v310 = v256;
      MEMORY[0x1E1296160]();
LABEL_112:

      goto LABEL_113;
    }

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_39(v235 + v238, 1, v111);
    if (v248)
    {
      OUTLINED_FUNCTION_40_11();
      sub_1DC28EB30(v249, v250, v251);
      OUTLINED_FUNCTION_40_11();
      sub_1DC28EB30(v252, v253, v254);
      OUTLINED_FUNCTION_27_8();
      sub_1DC327BD8();
LABEL_109:
      sub_1DC28EB30(v235, &qword_1ECC7BFB8, &unk_1DC52A4C0);
      goto LABEL_113;
    }

    sub_1DC327B84();
    sub_1DC327C2C(&qword_1ECC7BD58, type metadata accessor for TurnSummary.ExecutionSource);
    v255 = sub_1DC5176CC();
    sub_1DC327BD8();
    sub_1DC28EB30(v228, &qword_1ECC7BFC8, &unk_1DC524050);
    sub_1DC28EB30(v318, &qword_1ECC7BFC8, &unk_1DC524050);
    sub_1DC327BD8();
    sub_1DC28EB30(v235, &qword_1ECC7BFC8, &unk_1DC524050);
    if (v255)
    {
      goto LABEL_111;
    }

LABEL_113:
    v257 = v370;
    v258 = v371;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v260 = v335;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v265 = *(v345 + 2);
      v266 = OUTLINED_FUNCTION_13_0();
      v345 = sub_1DC2ACCD4(v266, v267, v268, v269);
    }

    v262 = *(v345 + 2);
    v261 = *(v345 + 3);
    if (v262 >= v261 >> 1)
    {
      v270 = OUTLINED_FUNCTION_26(v261);
      v345 = sub_1DC2ACCD4(v270, v262 + 1, 1, v345);
    }

    v116 = v260 + 1;
    v263 = v345;
    *(v345 + 2) = v262 + 1;
    v264 = &v263[16 * v262];
    *(v264 + 4) = v257;
    *(v264 + 5) = v258;
    v121 = v334;
  }

  swift_unknownObjectRelease();
  v271 = *(v345 + 2);
  v272 = 0;
  v273 = 0;
  v274 = ( + 16 * v271 + 24);
  v363 = v271;
  v275 = v308;
  if (v271)
  {
    while (v271 <= *(v345 + 2))
    {
      v276 = *(v274 - 1);
      v277 = *v274;

      OUTLINED_FUNCTION_63_0();
      sub_1DC51515C();
      v278 = sub_1DC51513C();
      v279 = OUTLINED_FUNCTION_55_7();
      v280(v279);
      v281 = __OFADD__(v273, v278);
      v273 += v278;
      if (v281)
      {
        goto LABEL_134;
      }

      if (v273 > v275)
      {
        v282 = v272;
        goto LABEL_125;
      }

      ++v272;
      v274 -= 2;
      v271 = (v271 - 1);
      if (!v271)
      {
        goto LABEL_123;
      }
    }

LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    return;
  }

LABEL_123:
  v282 = v363;
LABEL_125:
  v283 = sub_1DC517B9C();
  v284 = sub_1DC296DBC();
  if (os_log_type_enabled(v284, v283))
  {
    v285 = OUTLINED_FUNCTION_63();
    *v285 = 134217984;
    *(v285 + 4) = v282;
    OUTLINED_FUNCTION_28_8();
    _os_log_impl(v286, v287, v288, v289, v285, 0xCu);
    OUTLINED_FUNCTION_66();
  }

  v290 = v345;

  v364 = sub_1DC3217EC(v282, v290);
  v365 = v291;
  v366 = v292;
  v367 = v293;
  v294 = OUTLINED_FUNCTION_74();
  __swift_instantiateConcreteTypeFromMangledNameV2(v294, v295);
  sub_1DC327B3C(&qword_1ECC7B910, &qword_1ECC7CAD0, &unk_1DC524060);
  OUTLINED_FUNCTION_71_2();
  sub_1DC5176AC();
  OUTLINED_FUNCTION_75_0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v296 = *v302;
  v297 = v302[1];
  v298 = *(v302 + 16);
  v299 = sub_1DC296DBC();
  v300 = v303;
  OUTLINED_FUNCTION_63_0();
  sub_1DC2B8848();

  (*(v304 + 8))(v300, v305);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC31FFA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = sub_1DC51514C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v65 = v10;
  v66 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v64 = v13;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC516F5C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v70 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v22 = sub_1DC3990B0();
  v23 = *v22;
  v24 = v22[1];
  v68 = v22;
  v25 = *(v22 + 16);
  v26 = sub_1DC296DBC();
  v69 = v21;
  sub_1DC2A2ED0(v23, v24, v25, v26, 1, v21);

  if (a4)
  {

    v27 = a1;
    if (a5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    type metadata accessor for NLRouterBypassUtils();
    v28 = sub_1DC2BA4FC();
    (*(*v28 + 88))(a3);
    v30 = v29;

    if (a5)
    {
      v61 = v28;
      v62 = v14;
      v32 = 0;
      v33 = *(v30 + 16);
      v63 = MEMORY[0x1E69E7CC0];
      v34 = v30 + 48;
LABEL_6:
      for (i = (v34 + 24 * v32); ; i += 3)
      {
        if (v33 == v32)
        {

          v14 = v62;
          v27 = a1;
          v28 = v61;
          v30 = v63;
          goto LABEL_20;
        }

        if (v32 >= *(v30 + 16))
        {
          break;
        }

        v36 = *i;
        if (*i)
        {
          v37 = *(i - 1);
          v38 = *(i - 2);
          sub_1DC2A32B0();

          if (sub_1DC517E5C())
          {
            v39 = v63;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              OUTLINED_FUNCTION_78_2();
              v40 = OUTLINED_FUNCTION_31_9();
              result = sub_1DC324228(v40, v41, v42);
              v39 = v63;
            }

            v44 = *(v39 + 16);
            v43 = *(v39 + 24);
            if (v44 >= v43 >> 1)
            {
              v46 = OUTLINED_FUNCTION_26(v43);
              result = sub_1DC324228(v46, v44 + 1, 1);
              v39 = v63;
            }

            *(v39 + 16) = v44 + 1;
            v63 = v39;
            v45 = (v39 + 24 * v44);
            v45[4] = v38;
            ++v32;
            v45[5] = v37;
            v45[6] = v36;
            v34 = v30 + 48;
            goto LABEL_6;
          }
        }

        ++v32;
      }

      __break(1u);
      goto LABEL_34;
    }

    v27 = a1;
LABEL_20:
    if (*(v30 + 16) && (sub_1DC3226C4(), (v47 & 1) == 0))
    {
      v27 = (*(*v28 + 80))(v27, a2, v30);
      a2 = v48;

      if (a5)
      {
LABEL_28:
        v52 = 0;
        v54 = 0;
        goto LABEL_29;
      }
    }

    else
    {

      if (a5)
      {
        goto LABEL_28;
      }
    }
  }

  sub_1DC51515C();
  v49 = sub_1DC51513C();
  (*(v65 + 8))(v64, v66);
  if (v49 < 513)
  {
    goto LABEL_28;
  }

  result = sub_1DC51783C();
  if ((result - 0x40000000000000) >> 55 != 511)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v50 = OUTLINED_FUNCTION_46_6();
  v51 = sub_1DC303DF0(v50);
  v52 = MEMORY[0x1E1296060](v51);
  v54 = v53;

LABEL_29:
  sub_1DC428688(5);
  MEMORY[0x1E1296160]();

  v55 = OUTLINED_FUNCTION_15_5();
  MEMORY[0x1E1296160](v55);

  if (v54)
  {

    a2 = v54;
  }

  else
  {
    v52 = v27;
  }

  MEMORY[0x1E1296160](v52, a2);

  sub_1DC30D6EC();
  v56 = sub_1DC51823C();
  MEMORY[0x1E1296160](v56);

  v57 = *v68;
  v58 = v68[1];
  v59 = *(v68 + 16);
  v60 = sub_1DC296DBC();
  OUTLINED_FUNCTION_68_1();

  (*(v70 + 8))(v69, v14);
  return OUTLINED_FUNCTION_63_0();
}

void sub_1DC320514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1DC51728C();
  v25 = OUTLINED_FUNCTION_0(v24);
  v230 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v234 = sub_1DC51724C();
  v32 = OUTLINED_FUNCTION_0(v234);
  v229 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v41);
  v235 = sub_1DC5172AC();
  v42 = OUTLINED_FUNCTION_0(v235);
  v248 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8();
  v247 = (v46 - v47);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_62();
  v252 = v50;
  OUTLINED_FUNCTION_12();
  v250 = sub_1DC516AFC();
  v51 = OUTLINED_FUNCTION_0(v250);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_8();
  v58 = v56 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v226 - v60;
  v256 = sub_1DC516C3C();
  v62 = OUTLINED_FUNCTION_0(v256);
  v251 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_8();
  v68 = v66 - v67;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_62();
  v249 = v71;
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC332550() & 1) == 0)
  {
    goto LABEL_88;
  }

  v72 = *(v23 + *(type metadata accessor for NLRouterServiceRequest(0) + 36));
  if (!v72)
  {
    goto LABEL_88;
  }

  v236 = v24;
  v73 = v72;
  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v74 = sub_1DC296DBC();
  sub_1DC516F0C();

  v75 = v73;
  v76 = sub_1DC516D8C();

  if (!v76)
  {

    goto LABEL_88;
  }

  v228 = v68;
  v237 = v31;
  v232 = v75;
  v77 = 0;
  v246 = *(v76 + 16);
  v254 = (v251 + 16);
  v255 = 0;
  LODWORD(v243) = *MEMORY[0x1E69A9008];
  v242 = (v53 + 104);
  v241 = (v53 + 8);
  v253 = v251 + 8;
  v227 = (v251 + 32);
  v231 = MEMORY[0x1E69E7CC0];
  v78 = v249;
  v244 = v76;
  while (1)
  {
    v79 = v250;
    if (v246 == v77)
    {

      v98 = *(v231 + 2);
      if (v98)
      {
        OUTLINED_FUNCTION_22_0();
        v101 = v99 + v100;
        v250 = *(v102 + 72);
        v103 = *(v102 + 16);
        v104 = v247;
        v105 = (v248 + 32);
        v106 = MEMORY[0x1E69E7CC0];
        v107 = v235;
        do
        {
          v108 = v106;
          v109 = v238;
          v110 = OUTLINED_FUNCTION_31_0();
          v111 = v256;
          v103(v110);
          v112 = v240;
          sub_1DC516C1C();
          (*v253)(v109, v111);
          OUTLINED_FUNCTION_39(v112, 1, v107);
          if (v84)
          {
            sub_1DC28EB30(v112, &qword_1ECC7BFF8, &qword_1DC522580);
            v106 = v108;
          }

          else
          {
            v113 = *v105;
            (*v105)(v239, v112, v107);
            v106 = v108;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v119 = *(v108 + 16);
              v120 = OUTLINED_FUNCTION_13_0();
              v106 = sub_1DC323F08(v120, v121, v122, v108);
            }

            v116 = *(v106 + 16);
            v115 = *(v106 + 24);
            if (v116 >= v115 >> 1)
            {
              v123 = OUTLINED_FUNCTION_26(v115);
              v106 = sub_1DC323F08(v123, v116 + 1, 1, v106);
            }

            *(v106 + 16) = v116 + 1;
            OUTLINED_FUNCTION_22_0();
            v113(v106 + v117 + *(v118 + 72) * v116, v239, v107);
            v104 = v247;
          }

          v101 += v250;
          v98 = (v98 - 1);
        }

        while (v98);
      }

      else
      {

        v106 = MEMORY[0x1E69E7CC0];
        v107 = v235;
        v104 = v247;
      }

      v124 = *(v106 + 16);
      v125 = v237;
      if (v124)
      {
        v126 = *(v248 + 16);
        v127 = *(v248 + 80);
        OUTLINED_FUNCTION_24();
        v239 = v106;
        v129 = v106 + v128;
        v253 = *(v130 + 56);
        v131 = (v130 + 72);
        LODWORD(v256) = *MEMORY[0x1E69DAE70];
        v248 = v130;
        v250 = v130 + 80;
        v249 = v230 + 16;
        v246 = v230 + 88;
        LODWORD(v245) = *MEMORY[0x1E69DADA8];
        v243 = v230 + 96;
        v244 = v230 + 8;
        v242 = (v229 + 32);
        v132 = MEMORY[0x1E69E7CC0];
        v241 = (v229 + 8);
        v240 = xmmword_1DC522F20;
        v254 = (v130 - 8);
        v251 = (v130 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        while (1)
        {
          v133 = v252;
          v126(v252, v129, v107);
          v126(v104, v133, v107);
          v134 = *v131;
          v135 = OUTLINED_FUNCTION_45_2();
          v137 = v136(v135);
          if (v137 != v256)
          {
            break;
          }

          v138 = *v250;
          v139 = OUTLINED_FUNCTION_45_2();
          v140(v139);
          v141 = *v104;
          swift_projectBox();
          v142 = OUTLINED_FUNCTION_59();
          v143 = v236;
          v144(v142);
          v145 = OUTLINED_FUNCTION_59();
          v147 = v146(v145, v143);
          if (v147 != v245)
          {
            v158 = OUTLINED_FUNCTION_59();
            v159(v158, v143);

            v156 = *v254;
            goto LABEL_41;
          }

          v148 = OUTLINED_FUNCTION_59();
          v149(v148, v143);
          v150 = v233;
          v151 = v234;
          (*v242)(v233, v125, v234);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
          v152 = swift_allocObject();
          *(v152 + 16) = v240;
          *(v152 + 32) = sub_1DC51723C();
          *(v152 + 40) = v153;
          OUTLINED_FUNCTION_37(&a18);
          v154 = v150;
          v107 = v235;
          v155(v154, v151);
          (*v254)(v252, v107);
LABEL_42:
          v160 = *(v152 + 16);
          v161 = *(v132 + 2);
          v162 = v161 + v160;
          if (__OFADD__(v161, v160))
          {
            goto LABEL_91;
          }

          v163 = swift_isUniquelyReferenced_nonNull_native();
          if (!v163 || v162 > *(v132 + 3) >> 1)
          {
            if (v161 <= v162)
            {
              v164 = v161 + v160;
            }

            else
            {
              v164 = v161;
            }

            v132 = sub_1DC2ACCD4(v163, v164, 1, v132);
          }

          v125 = v237;
          v104 = v247;
          if (*(v152 + 16))
          {
            if ((*(v132 + 3) >> 1) - *(v132 + 2) < v160)
            {
              goto LABEL_93;
            }

            swift_arrayInitWithCopy();

            if (v160)
            {
              v165 = *(v132 + 2);
              v166 = __OFADD__(v165, v160);
              v167 = v165 + v160;
              if (v166)
              {
                goto LABEL_95;
              }

              *(v132 + 2) = v167;
            }
          }

          else
          {

            if (v160)
            {
              goto LABEL_92;
            }
          }

          v129 += v253;
          if (!--v124)
          {

            goto LABEL_58;
          }
        }

        v156 = *v254;
        v157 = OUTLINED_FUNCTION_45_2();
        v156(v157);
LABEL_41:
        (v156)(v252, v107);
        v152 = MEMORY[0x1E69E7CC0];
        goto LABEL_42;
      }

      v132 = MEMORY[0x1E69E7CC0];
LABEL_58:
      v169 = 0;
      v170 = *(v132 + 2);
      v171 = v132 + 40;
      v256 = MEMORY[0x1E69E7CC0];
      v254 = v132 + 40;
LABEL_59:
      v172 = &v171[16 * v169];
      while (v170 != v169)
      {
        if (v169 >= *(v132 + 2))
        {
          goto LABEL_90;
        }

        v174 = *(v172 - 1);
        v173 = *v172;
        v259 = v174;
        v260 = v173;
        MEMORY[0x1EEE9AC00](v168);
        *(&v226 - 2) = &v259;

        v175 = v255;
        v176 = sub_1DC2CF098(sub_1DC327C74, (&v226 - 4), &unk_1F57F6FE8);
        v255 = v175;
        if (v176)
        {
          v177 = v256;
          v168 = swift_isUniquelyReferenced_nonNull_native();
          v257 = v177;
          if ((v168 & 1) == 0)
          {
            OUTLINED_FUNCTION_78_2();
            v178 = OUTLINED_FUNCTION_31_9();
            v168 = sub_1DC2DF6FC(v178, v179, v180);
            v177 = v257;
          }

          v182 = *(v177 + 16);
          v181 = *(v177 + 24);
          if (v182 >= v181 >> 1)
          {
            v184 = OUTLINED_FUNCTION_26(v181);
            v168 = sub_1DC2DF6FC(v184, v182 + 1, 1);
            v177 = v257;
          }

          ++v169;
          *(v177 + 16) = v182 + 1;
          v256 = v177;
          v183 = v177 + 16 * v182;
          *(v183 + 32) = v174;
          *(v183 + 40) = v173;
          v171 = v254;
          goto LABEL_59;
        }

        v172 += 16;
        ++v169;
      }

      v185 = v256;
      if (*(v256 + 16))
      {
        LOBYTE(v257) = 9;
        sub_1DC30D6EC();
        v259 = sub_1DC51823C();
        v260 = v186;
        v187 = OUTLINED_FUNCTION_15_5();
        MEMORY[0x1E1296160](v187);
        v188 = *(v185 + 16);
        v189 = v232;
        if (v188)
        {
          v261 = MEMORY[0x1E69E7CC0];
          sub_1DC2DF6FC(0, v188, 0);
          v190 = 0;
          v191 = v261;
          v251 = v185 + 32;
          v252 = v188;
          while (v190 < *(v185 + 16))
          {
            v192 = (v251 + 16 * v190);
            v193 = v192[1];
            v257 = *v192;
            v258 = v193;
            sub_1DC2A32B0();

            v194 = sub_1DC517E6C();
            v195 = *(v194 + 16);
            if (v195)
            {
              v253 = v193;
              v254 = v191;
              v257 = MEMORY[0x1E69E7CC0];
              sub_1DC2DF6FC(0, v195, 0);
              v196 = v257;
              v197 = (v194 + 56);
              do
              {
                v198 = *(v197 - 3);
                v199 = *(v197 - 2);
                v201 = *(v197 - 1);
                v200 = *v197;

                OUTLINED_FUNCTION_74();
                v202 = sub_1DC517D9C();
                v204 = v203;

                v257 = v196;
                v206 = *(v196 + 16);
                v205 = *(v196 + 24);
                if (v206 >= v205 >> 1)
                {
                  v208 = OUTLINED_FUNCTION_26(v205);
                  sub_1DC2DF6FC(v208, v206 + 1, 1);
                  v196 = v257;
                }

                *(v196 + 16) = v206 + 1;
                v207 = v196 + 16 * v206;
                *(v207 + 32) = v202;
                *(v207 + 40) = v204;
                v197 += 4;
                --v195;
              }

              while (v195);

              v189 = v232;
              v191 = v254;
            }

            else
            {

              v196 = MEMORY[0x1E69E7CC0];
            }

            v257 = v196;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
            OUTLINED_FUNCTION_1_6();
            OUTLINED_FUNCTION_59_2();
            sub_1DC327B3C(v209, v210, v211);
            v212 = sub_1DC5176AC();
            v214 = v213;

            v261 = v191;
            v216 = *(v191 + 2);
            v215 = *(v191 + 3);
            if (v216 >= v215 >> 1)
            {
              v218 = OUTLINED_FUNCTION_26(v215);
              sub_1DC2DF6FC(v218, v216 + 1, 1);
              v191 = v261;
            }

            ++v190;
            *(v191 + 2) = v216 + 1;
            v217 = &v191[16 * v216];
            *(v217 + 4) = v212;
            *(v217 + 5) = v214;
            v185 = v256;
            if (v190 == v252)
            {

              goto LABEL_87;
            }
          }

          goto LABEL_94;
        }

        v191 = MEMORY[0x1E69E7CC0];
LABEL_87:
        v257 = v191;
        v220 = OUTLINED_FUNCTION_43();
        __swift_instantiateConcreteTypeFromMangledNameV2(v220, v221);
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_59_2();
        sub_1DC327B3C(v222, v223, v224);
        sub_1DC5176AC();

        v225 = OUTLINED_FUNCTION_46_6();
        MEMORY[0x1E1296160](v225);
      }

      else
      {

        OUTLINED_FUNCTION_70_2();
      }

LABEL_88:
      OUTLINED_FUNCTION_34();
      return;
    }

    if (v77 >= *(v76 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_22_0();
    v245 = v80;
    v82 = *(v81 + 72);
    v83 = v77;
    (*(v81 + 16))(v78, v76 + v80 + v82 * v77, v256);
    sub_1DC516C2C();
    (*v242)(v58, v243, v79);
    sub_1DC327C2C(&qword_1ECC7BAE0, MEMORY[0x1E69A9090]);
    sub_1DC5179EC();
    sub_1DC5179EC();
    v84 = v259 == v257 && v260 == v258;
    if (v84)
    {
      v91 = *v241;
      (*v241)(v58, v79);
      v91(v61, v79);

LABEL_14:
      v92 = *v227;
      (*v227)(v228, v78, v256);
      v93 = v231;
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v261 = v93;
      v226 = v92;
      if ((v94 & 1) == 0)
      {
        OUTLINED_FUNCTION_78_2();
        OUTLINED_FUNCTION_31_9();
        sub_1DC30BCB8();
        v93 = v261;
      }

      v95 = v245;
      v97 = *(v93 + 2);
      v96 = *(v93 + 3);
      if (v97 >= v96 >> 1)
      {
        OUTLINED_FUNCTION_26(v96);
        sub_1DC30BCB8();
        v93 = v261;
      }

      v77 = v83 + 1;
      *(v93 + 2) = v97 + 1;
      v231 = v93;
      v226(&v93[v95 + v97 * v82], v228, v256);
      v76 = v244;
    }

    else
    {
      v85 = sub_1DC51825C();
      v86 = v61;
      v87 = v58;
      v88 = *v241;
      (*v241)(v87, v79);
      v88(v86, v79);
      v58 = v87;
      v61 = v86;
      v78 = v249;

      if (v85)
      {
        goto LABEL_14;
      }

      v89 = OUTLINED_FUNCTION_59();
      v90(v89, v256);
      v77 = v83 + 1;
      v76 = v244;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
}

uint64_t sub_1DC3215D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_54_0();
  v9 = type metadata accessor for QDContextState(v8);
  v10 = OUTLINED_FUNCTION_35(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  if (((*(*a2 + 96))(3) & 1) == 0)
  {
    sub_1DC517B8C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v16 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_30_6();
  sub_1DC2DB2AC();
  v13 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v13, v14, v9);
  if (v15)
  {
    sub_1DC28EB30(v2, &qword_1ECC7BEB8, &unk_1DC527150);
    sub_1DC517B8C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v16 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
LABEL_6:
    sub_1DC516F0C();

    return OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_63_0();
  sub_1DC327B84();
  v17 = OUTLINED_FUNCTION_62_2();
  sub_1DC3EA4C4(v17, v18);
  sub_1DC327BD8();
  return OUTLINED_FUNCTION_43();
}

int64_t sub_1DC3217EC(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DC2DAEF4(v3, -result, 0);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      sub_1DC2DAE88(result, v3, a2);

      return OUTLINED_FUNCTION_56_0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC321880(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

void sub_1DC3218C8()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_55();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_54_0();
  v8 = type metadata accessor for NLRouterTurnContext(v7);
  v9 = OUTLINED_FUNCTION_35(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_31_0();
  sub_1DC2DB2AC();
  v12 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v12, v13, v8);
  if (v14)
  {
    sub_1DC28EB30(v0, &qword_1ECC7BFD0, &unk_1DC522550);
LABEL_12:
    OUTLINED_FUNCTION_34();
    return;
  }

  OUTLINED_FUNCTION_25_6();
  sub_1DC327B84();
  sub_1DC321E1C();
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17 < 2)
  {
    OUTLINED_FUNCTION_4_9();
    sub_1DC327BD8();

    goto LABEL_12;
  }

  v18 = 0;
  for (i = (v15 + 40); ; i += 2)
  {
    if (v17 == v18)
    {

      sub_1DC30D6EC();
      v24 = sub_1DC51823C();
      MEMORY[0x1E1296160](v24);

      MEMORY[0x1E1296160](0, 0xE000000000000000);

      OUTLINED_FUNCTION_4_9();
      sub_1DC327BD8();
      goto LABEL_12;
    }

    if (v18 >= *(v16 + 16))
    {
      break;
    }

    ++v18;
    v21 = *(i - 1);
    v20 = *i;
    sub_1DC30D6EC();

    v25 = sub_1DC51823C();
    v26 = v22;
    v23 = sub_1DC51823C();
    MEMORY[0x1E1296160](v23);

    MEMORY[0x1E1296160](8250, 0xE200000000000000);
    MEMORY[0x1E1296160](v21, v20);

    MEMORY[0x1E1296160](v25, v26);
  }

  __break(1u);
}

uint64_t sub_1DC321B58(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v34 = sub_1DC5118BC();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v34);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = 0;
  v33 = *(a3 + 16);
  v30 = v5 + 16;
  v13 = (v5 + 8);
  v27 = (v5 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v33 == v12)
    {

      return v29;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    v16 = a3;
    (*(v5 + 16))(v11, a3 + v14 + v15 * v12, v34);
    v17 = v31(v11);
    if (v3)
    {
      (*v13)(v11, v34);
      v24 = v29;

      return v24;
    }

    if (v17)
    {
      v26 = *v27;
      v26(v28, v11, v34);
      v18 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v18;
      }

      else
      {
        v21 = *(v18 + 16);
        sub_1DC3241D0();
        v20 = v35;
      }

      a3 = v16;
      v22 = *(v20 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v20 + 24) >> 1)
      {
        v29 = v22 + 1;
        v25 = v22;
        sub_1DC3241D0();
        v23 = v29;
        v22 = v25;
        a3 = v16;
        v20 = v35;
      }

      ++v12;
      *(v20 + 16) = v23;
      v29 = v20;
      result = (v26)(v20 + v14 + v22 * v15, v28, v34);
    }

    else
    {
      result = (*v13)(v11, v34);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

void sub_1DC321E1C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  v107 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v107);
  v97 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v101 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8E0, &unk_1DC523750);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v103 = v11;
  OUTLINED_FUNCTION_12();
  v110 = sub_1DC5118BC();
  v12 = OUTLINED_FUNCTION_0(v110);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v104 = (v17 - v18);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  v100 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  v99 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_38_3();
  v24 = sub_1DC5119DC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v32 = v31 - v30;
  v33 = 0;
  v105 = v0;
  v34 = *(v0 + 2);
  v108 = *(v34 + 16);
  v109 = v27 + 16;
  do
  {
    v35 = v33;
    if (v108 == v33)
    {
      break;
    }

    if (v33 >= *(v34 + 16))
    {
      goto LABEL_52;
    }

    v36 = *(v27 + 80);
    OUTLINED_FUNCTION_24();
    (*(v27 + 16))(v32, v34 + v37 + *(v27 + 72) * v33, v24);
    if (sub_1DC51191C())
    {
      v41 = OUTLINED_FUNCTION_55_7();
      v42(v41);
      break;
    }

    ++v33;
    v38 = sub_1DC51195C();
    v39 = OUTLINED_FUNCTION_55_7();
    v40(v39);
  }

  while ((v38 & 1) == 0);
  v102 = v35;
  v27 = 0;
  v43 = *&v105[*(type metadata accessor for NLRouterTurnContext(0) + 36)];
  v44 = *(v43 + 16);
  v109 = v14 + 16;
  v45 = (v14 + 8);
  v46 = (v14 + 32);
  v106 = MEMORY[0x1E69E7CC0];
  v47 = v110;
  while (1)
  {
    if (v44 == v27)
    {
      v111 = v106;

      sub_1DC324454(&v111, sub_1DC325F84, sub_1DC324F8C);

      v60 = v111;
      sub_1DC323010(v111, MEMORY[0x1E69D0B08], v103);
      OUTLINED_FUNCTION_39(v103, 1, v110);
      v61 = v104;
      if (v76)
      {

        sub_1DC28EB30(v103, &qword_1ECC7C8E0, &unk_1DC523750);
      }

      else
      {
        v62 = (*v46)(v100, v103, v110);
        if (v108 == v102)
        {
          sub_1DC3230B8();
          v98 = v62;
          v99 = v63;
        }

        else
        {
          v98 = 0;
          v99 = 0xE000000000000000;
        }

        MEMORY[0x1EEE9AC00](v62);
        *(&v95 - 2) = v100;
        v111 = sub_1DC321B58(sub_1DC324520, (&v95 - 4), v60);

        sub_1DC324454(&v111, sub_1DC325348, sub_1DC324BE0);

        v64 = v111;
        v65 = *(v111 + 16);
        if (v65)
        {
          v66 = *(v14 + 80);
          OUTLINED_FUNCTION_24();
          v96 = v64;
          v68 = v64 + v67;
          v69 = *(v14 + 72);
          v105 = *(v14 + 16);
          v106 = v69;
          v70 = (v97 + 8);
          v103 = MEMORY[0x1E69E7CC0];
          v71 = v101;
          while (1)
          {
            (v105)(v61, v68, v110);
            sub_1DC51182C();
            sub_1DC5138FC();
            (*v70)(v71, v107);
            v72 = type metadata accessor for NLRouterUsoGraphPromptHelper();

            v73 = sub_1DC449FD8();
            if (v73)
            {
              break;
            }

            v79 = OUTLINED_FUNCTION_73_1();
            v72(v79);

LABEL_29:
            v68 += v106;
            if (!--v65)
            {

              goto LABEL_49;
            }
          }

          v61 = v73;
          if (v108 == v102)
          {
            v74 = *(v73 + 16);
            v76 = sub_1DC514F0C() == v98 && v75 == v99;
            if (v76)
            {
            }

            else
            {
              v77 = sub_1DC51825C();

              if ((v77 & 1) == 0)
              {
                v72 = *v45;
                v78 = v104;
                (*v45)(v104, v110);

                v61 = v78;

LABEL_47:
                v71 = v101;
                goto LABEL_29;
              }
            }
          }

          v72 = v61;
          v80 = (*(*v61 + 96))(v73);
          v82 = v81;

          v83 = OUTLINED_FUNCTION_73_1();
          v61(v83);
          if (v82)
          {
            v84 = v103;
            v85 = v80;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v90 = *(v84 + 2);
              v91 = OUTLINED_FUNCTION_13_0();
              v84 = sub_1DC2ACCD4(v91, v92, v93, v84);
            }

            v87 = *(v84 + 2);
            v86 = *(v84 + 3);
            v103 = v84;
            if (v87 >= v86 >> 1)
            {
              v94 = OUTLINED_FUNCTION_26(v86);
              v103 = sub_1DC2ACCD4(v94, v87 + 1, 1, v103);
            }

            v88 = v103;
            *(v103 + 2) = v87 + 1;
            v89 = &v88[16 * v87];
            *(v89 + 4) = v85;
            *(v89 + 5) = v82;
            v71 = v101;
            v61 = v104;
            goto LABEL_29;
          }

          goto LABEL_47;
        }

        v72 = *v45;
LABEL_49:
        (v72)(v100, v110);
      }

      OUTLINED_FUNCTION_34();
      return;
    }

    if (v27 >= *(v43 + 16))
    {
      break;
    }

    v48 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v49 = *(v14 + 72);
    (*(v14 + 16))(v1, v43 + v48 + v49 * v27, v47);
    if (sub_1DC5117CC() & 1) != 0 && (sub_1DC51188C() & 1) != 0 && (sub_1DC5117BC())
    {
      v50 = *v46;
      v47 = v110;
      v98 = v46;
      v96 = v50;
      v50(v99, v1, v110);
      v51 = v106;
      v111 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = *(v106 + 16);
        OUTLINED_FUNCTION_31_9();
        sub_1DC3241D0();
        v47 = v110;
        v51 = v111;
      }

      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_26(v53);
        v58 = v57;
        v106 = v59;
        sub_1DC3241D0();
        v55 = v58;
        v54 = v106;
        v47 = v110;
        v51 = v111;
      }

      ++v27;
      *(v51 + 16) = v55;
      v106 = v51;
      v56 = v51 + v48 + v54 * v49;
      v46 = v98;
      v96(v56, v99, v47);
    }

    else
    {
      v47 = v110;
      (*v45)(v1, v110);
      ++v27;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);

  __break(1u);
}

void sub_1DC3226C4()
{
  OUTLINED_FUNCTION_33();
  v98 = v1;
  v93 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v93);
  v97 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v92 = v6;
  OUTLINED_FUNCTION_12();
  v99 = sub_1DC51179C();
  v7 = OUTLINED_FUNCTION_0(v99);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1DC51164C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v84 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v20 = sub_1DC51122C();
  v87 = OUTLINED_FUNCTION_0(v20);
  v88 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_2_1();
  v86 = v24;
  v25 = OUTLINED_FUNCTION_30_6();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_10(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v79 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v79 - v37;
  v39 = type metadata accessor for NLRouterNLParseResponse(0);
  v40 = OUTLINED_FUNCTION_35(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_1();
  v45 = (v44 - v43);
  sub_1DC2DB2AC();
  v46 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v32, 1, v46);
  if (v47)
  {
    sub_1DC28EB30(v32, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
LABEL_6:
    sub_1DC28EB30(v38, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v48 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    goto LABEL_7;
  }

  sub_1DC2DB2AC();
  sub_1DC327BD8();
  OUTLINED_FUNCTION_39(v38, 1, v39);
  if (v47)
  {
    goto LABEL_6;
  }

  sub_1DC327B84();
  v79[1] = v45;
  v49 = v9;
  v50 = *v45;
  v82 = v88 + 16;
  v81 = v88 + 8;
  v83 = *(v50 + 16);
  v95 = v84 + 16;
  v51 = (v84 + 8);
  v98 = (v49 + 8);
  v91 = (v97 + 8);

  v52 = 0;
  v94 = 0;
  v90 = v15;
  v80 = v50;
  v96 = v51;
LABEL_8:
  while (v52 != v83)
  {
    if (v52 >= *(v50 + 16))
    {
      __break(1u);
      return;
    }

    v53 = v87;
    v54 = v88;
    v55 = *(v88 + 80);
    OUTLINED_FUNCTION_24();
    v58 = v57;
    (*(v54 + 16))(v86, v50 + v56 + *(v54 + 72) * v57, v53);
    v89 = v58 + 1;
    v59 = sub_1DC5111AC();
    v60 = *(v54 + 8);
    v61 = OUTLINED_FUNCTION_31_0();
    v62(v61);
    v63 = *(v59 + 16);
    if (v63)
    {
      OUTLINED_FUNCTION_22_0();
      v85 = v59;
      v65 = v59 + v64;
      v67 = *(v66 + 72);
      v68 = *(v66 + 16);
      v97 = v68;
      while (1)
      {
        (v68)(v0, v65, v15);
        if (sub_1DC5114CC())
        {
          sub_1DC51154C();
          v69 = sub_1DC51177C();
          v70 = *v98;
          (*v98)(v14, v99);
          if ((v69 & 1) == 0)
          {
            goto LABEL_18;
          }

          type metadata accessor for NLRouterBypassUtils();
          sub_1DC51154C();
          v71 = v14;
          v72 = v92;
          sub_1DC51178C();
          v70(v71, v99);
          v73 = sub_1DC307E5C();
          v74 = v72;
          v14 = v71;
          (*v91)(v74, v93);
          if (v73)
          {
            v100[0] = sub_1DC514F1C();
            v100[1] = v75;
            MEMORY[0x1EEE9AC00](v100[0]);
            v79[-2] = v100;
            v76 = v94;
            v77 = sub_1DC2CF098(sub_1DC2CF174, &v79[-4], &unk_1F57F6EF0);

            if (v77)
            {
              sub_1DC517B9C();
              sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
              v78 = sub_1DC296DBC();
              OUTLINED_FUNCTION_40_1();
              sub_1DC516F0C();

              (*v96)(v0, v90);

              OUTLINED_FUNCTION_29_3();

              goto LABEL_7;
            }

            v94 = v76;
            v51 = v96;
            v15 = v90;
            (*v96)(v0, v90);
          }

          else
          {
LABEL_18:
            v51 = v96;
            (*v96)(v0, v15);
          }

          v68 = v97;
        }

        else
        {
          (*v51)(v0, v15);
        }

        v65 += v67;
        if (!--v63)
        {

          v50 = v80;
          v52 = v89;
          goto LABEL_8;
        }
      }
    }

    v52 = v89;
  }

  OUTLINED_FUNCTION_29_3();
LABEL_7:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC322E3C(uint64_t a1)
{
  result = MEMORY[0x1E12963F0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1DC2E5B58(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_1DC322EFC()
{
  OUTLINED_FUNCTION_5_1();
  v2 = sub_1DC51663C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_56_1();
  sub_1DC51180C();
  sub_1DC51662C();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v1, v2);
  sub_1DC51180C();
  sub_1DC51662C();
  v13 = v12;
  v11(v0, v2);
  return v13 < v10;
}

uint64_t sub_1DC323010@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v6);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v7);
}

void sub_1DC3230B8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC510FDC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C890, &qword_1DC5234B0);
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v22 = sub_1DC510F1C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4();
  v28 = *v2;
  OUTLINED_FUNCTION_26_5();
  sub_1DC323010(v29, v30, v18);
  OUTLINED_FUNCTION_39(v18, 1, v22);
  if (v31)
  {
    v32 = v2[1];
    OUTLINED_FUNCTION_26_5();
    sub_1DC323010(v33, v34, v21);
    OUTLINED_FUNCTION_39(v18, 1, v22);
    if (!v31)
    {
      sub_1DC28EB30(v18, &qword_1ECC7C890, &qword_1DC5234B0);
    }
  }

  else
  {
    v35 = *(v25 + 32);
    OUTLINED_FUNCTION_40_11();
    v36();
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
  }

  OUTLINED_FUNCTION_39(v21, 1, v22);
  if (v31)
  {
    sub_1DC28EB30(v21, &qword_1ECC7C890, &qword_1DC5234B0);
  }

  else
  {
    (*(v25 + 32))(v0, v21, v22);
    v37 = sub_1DC510EFC();
    if (v37)
    {
      sub_1DC510F0C();
      sub_1DC5138FC();
      (*(v6 + 8))(v11, v3);
      if (sub_1DC5146FC())
      {
        sub_1DC514F0C();

        v40 = OUTLINED_FUNCTION_52_6();
        v41(v40);
      }

      else
      {
        v42 = OUTLINED_FUNCTION_52_6();
        v43(v42);
      }
    }

    else
    {
      v38 = OUTLINED_FUNCTION_52_6();
      v39(v38);
    }
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3233E0()
{
  OUTLINED_FUNCTION_33();
  v34 = v2;
  v33 = sub_1DC51665C();
  v3 = OUTLINED_FUNCTION_0(v33);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = sub_1DC511B0C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_38_3();
  sub_1DC51184C();
  sub_1DC511ADC();
  v21 = *(v14 + 8);
  v21(v1, v11);
  v32 = sub_1DC51664C();
  v23 = v22;
  v24 = *(v5 + 8);
  v25 = v10;
  v26 = v33;
  v24(v25, v33);
  sub_1DC51184C();
  sub_1DC511ADC();
  v21(v19, v11);
  v27 = sub_1DC51664C();
  v29 = v28;
  v24(v0, v26);
  if (v32 != v27 || v23 != v29)
  {
    sub_1DC51825C();
  }

  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC323600()
{
  OUTLINED_FUNCTION_5_1();
  v2 = sub_1DC511B0C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_56_1();
  sub_1DC51184C();
  v9 = sub_1DC511ABC();
  v10 = *(v5 + 8);
  v10(v1, v2);
  sub_1DC51184C();
  v11 = sub_1DC511ABC();
  v10(v0, v2);
  return v9 < v11;
}

uint64_t sub_1DC32370C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1DC2DF6FC(0, v2, 0);
    v5 = v24;
    v6 = (a1 + 32);
    v7 = *(v24 + 16);
    v8 = 16 * v7;
    v9 = 0x65736C6146;
    do
    {
      if (*v6)
      {
        v10 = 1702195796;
      }

      else
      {
        v10 = v9;
      }

      if (*v6)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (*v6)
      {
        v12 = 84;
      }

      else
      {
        v12 = 70;
      }

      if (a2)
      {
        v13 = v10;
      }

      else
      {
        v13 = v12;
      }

      if (a2)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0xE100000000000000;
      }

      v25 = v5;
      v15 = *(v5 + 24);
      v16 = v7 + 1;
      if (v7 >= v15 >> 1)
      {
        v18 = v9;
        sub_1DC2DF6FC((v15 > 1), v7 + 1, 1);
        v9 = v18;
        v5 = v25;
      }

      *(v5 + 16) = v16;
      v17 = v5 + v8;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v8 += 16;
      ++v6;
      v7 = v16;
      --v2;
    }

    while (v2);
  }

  v19 = OUTLINED_FUNCTION_56_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_1_6();
  sub_1DC327B3C(v21, &qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC5176AC();

  v22 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x1E1296160](v22);

  MEMORY[0x1E1296160](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1DC3238E4(char a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DC323920@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3238E4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC32394C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC323900(*v1);
  *a1 = result;
  return result;
}

void sub_1DC323978()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v49 = v0;
  v51 = v2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_35(v48);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25();
  v47[2] = v6;
  v7 = OUTLINED_FUNCTION_12();
  v50 = type metadata accessor for QDContextStateOutput(v7);
  v8 = OUTLINED_FUNCTION_35(v50);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v47[1] = v11 - v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v47[0] = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v47 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = 1;
  v19 = (v1 + *(type metadata accessor for NLRouterServiceRequest(0) + 40));
  v21 = *v19;
  v20 = v19[1];
  sub_1DC327C2C(&qword_1ECC7BC28, type metadata accessor for NLRouterServiceRequest);
  sub_1DC327C2C(&qword_1ECC7BC30, type metadata accessor for NLRouterServiceRequest);
  sub_1DC327C2C(&qword_1ECC7BC88, type metadata accessor for QDContextStateOutput);
  sub_1DC327C2C(&qword_1ECC7BC90, type metadata accessor for QDContextStateOutput);

  v22 = v17;
  sub_1DC510D4C();

  swift_beginAccess();
  v23 = *(v18 + 16);
  v24 = sub_1DC517B8C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v25 = sub_1DC296DBC();
  if (v23 != 1)
  {
    OUTLINED_FUNCTION_22_6();
    sub_1DC327A94();
    if (os_log_type_enabled(v25, v24))
    {
      v36 = v22;
      v37 = OUTLINED_FUNCTION_63();
      v38 = OUTLINED_FUNCTION_82();
      v52 = v38;
      *v37 = 136315138;
      sub_1DC2DB2AC();
      sub_1DC51777C();
      OUTLINED_FUNCTION_75_0();
      OUTLINED_FUNCTION_3_10();
      sub_1DC327BD8();
      v39 = OUTLINED_FUNCTION_55();
      v42 = sub_1DC291244(v39, v40, v41);

      *(v37 + 4) = v42;
      OUTLINED_FUNCTION_28_8();
      _os_log_impl(v43, v44, v45, v46, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_66();
      v22 = v36;
      goto LABEL_6;
    }

LABEL_7:

    OUTLINED_FUNCTION_3_10();
    sub_1DC327BD8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_6();
  sub_1DC327A94();
  if (!os_log_type_enabled(v25, v24))
  {
    goto LABEL_7;
  }

  v26 = OUTLINED_FUNCTION_63();
  v27 = OUTLINED_FUNCTION_82();
  v52 = v27;
  *v26 = 136315138;
  sub_1DC2DB2AC();
  sub_1DC51777C();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_3_10();
  sub_1DC327BD8();
  v28 = OUTLINED_FUNCTION_55();
  v31 = sub_1DC291244(v28, v29, v30);

  *(v26 + 4) = v31;
  OUTLINED_FUNCTION_28_8();
  _os_log_impl(v32, v33, v34, v35, v26, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  OUTLINED_FUNCTION_66();
LABEL_6:
  OUTLINED_FUNCTION_66();

LABEL_8:
  sub_1DC324550(v22, v51);

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC323E04()
{
  OUTLINED_FUNCTION_42_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  swift_beginAccess();
  *(v0 + 16) = 0;
  sub_1DC3EAD64(v6);
  return sub_1DC3ED548();
}

uint64_t sub_1DC323EA8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

size_t sub_1DC323F08(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1DC324008(v8, v7);
  v10 = *(sub_1DC5172AC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC324104(a4 + v11, v8, v9 + v11, MEMORY[0x1E69DAE88]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1DC324008(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAE0, &unk_1DC524080);
  v4 = *(sub_1DC5172AC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC324104(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_42_0();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_35(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_62_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_62_2();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1DC3241D0()
{
  v1 = *v0;
  sub_1DC3242A0();
  *v0 = v2;
}

char *sub_1DC324228(char *a1, int64_t a2, char a3)
{
  result = sub_1DC30BD10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DC324248()
{
  v1 = *v0;
  sub_1DC3242A0();
  *v0 = v2;
}

void sub_1DC3242A0()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v22 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_24();
  if (v10)
  {
    sub_1DC324104(v8 + v23, v14, v19 + v23, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC324454(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_155();
  v6 = sub_1DC5118BC();
  OUTLINED_FUNCTION_10(v6);
  v8 = v7;
  v9 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DC327A08(v9);
    v9 = v10;
  }

  v11 = *(v9 + 16);
  v13[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13[1] = v11;
  result = sub_1DC324A94(v13, MEMORY[0x1E69D0B08], a2, a3);
  *v3 = v9;
  return result;
}

uint64_t sub_1DC324520()
{
  v1 = *(v0 + 16);
  sub_1DC3233E0();
  return v2 & 1;
}

uint64_t sub_1DC324550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC3245C4()
{
  result = qword_1ECC7CAA8;
  if (!qword_1ECC7CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CAA8);
  }

  return result;
}

unint64_t sub_1DC324660()
{
  result = qword_1ECC7CAC0;
  if (!qword_1ECC7CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CAC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLRouterMessageRole(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC32478C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t sub_1DC3247E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DC324824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BoolPromptFormat(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          result = OUTLINED_FUNCTION_7_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for NLRouterPromptSignals()
{
  result = qword_1ECC81A10;
  if (!qword_1ECC81A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DC3249D0()
{
  sub_1DC324A3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DC324A3C()
{
  if (!qword_1ECC7BD20)
  {
    type metadata accessor for QDContextState(255);
    v0 = sub_1DC517D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BD20);
    }
  }
}

uint64_t sub_1DC324A94(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1DC51822C();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1DC517A4C();
        *(v12 + 16) = v11;
      }

      v13 = (a2)(0);
      OUTLINED_FUNCTION_10(v13);
      v15 = *(v14 + 80);
      OUTLINED_FUNCTION_24();
      v17[0] = v12 + v16;
      v17[1] = v11;
      a3(v17, v18, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1DC324BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_1DC511B0C();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v62);
  v61 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v42[-v12];
  v13 = sub_1DC5118BC();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v59 = &v42[-v18];
  result = MEMORY[0x1EEE9AC00](v17);
  v58 = &v42[-v21];
  v44 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v54 = (v8 + 8);
    v55 = v24;
    v53 = (v23 - 8);
    v56 = v13;
    v57 = v23;
    v26 = v22 + v25 * (a3 - 1);
    v49 = -v25;
    v50 = (v23 + 16);
    v27 = a1 - a3;
    v51 = v22;
    v43 = v25;
    v28 = v22 + v25 * a3;
    v29 = v58;
    while (2)
    {
      v47 = v26;
      v48 = a3;
      v45 = v28;
      v46 = v27;
      v63 = v27;
      do
      {
        v30 = v55;
        v55(v29, v28, v13);
        v31 = v59;
        v30(v59, v26, v13);
        v32 = v60;
        sub_1DC51184C();
        v64 = sub_1DC511ABC();
        v33 = *v54;
        v34 = v32;
        v35 = v62;
        (*v54)(v34, v62);
        v36 = v61;
        sub_1DC51184C();
        LODWORD(v30) = sub_1DC511ABC();
        v37 = v35;
        v13 = v56;
        v33(v36, v37);
        v38 = *v53;
        (*v53)(v31, v13);
        result = v38(v29, v13);
        if (v64 >= v30)
        {
          break;
        }

        if (!v51)
        {
          __break(1u);
          return result;
        }

        v39 = *v50;
        v40 = v52;
        (*v50)(v52, v28, v13);
        swift_arrayInitWithTakeFrontToBack();
        result = v39(v26, v40, v13);
        v26 += v49;
        v28 += v49;
      }

      while (!__CFADD__(v63++, 1));
      a3 = v48 + 1;
      v26 = v47 + v43;
      v27 = v46 - 1;
      v28 = v45 + v43;
      if (v48 + 1 != v44)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC324F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = sub_1DC51663C();
  v8 = *(v65 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v46 - v12;
  v13 = sub_1DC5118BC();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v56 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v62 = &v46 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v61 = &v46 - v21;
  v48 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v58 = (v8 + 8);
    v59 = v24;
    v57 = (v23 - 8);
    v60 = v23;
    v26 = v22 + v25 * (a3 - 1);
    v53 = -v25;
    v54 = (v23 + 16);
    v27 = a1 - a3;
    v55 = v22;
    v47 = v25;
    v28 = v22 + v25 * a3;
    v67 = v13;
    v29 = v64;
    while (2)
    {
      v51 = v26;
      v52 = a3;
      v49 = v28;
      v50 = v27;
      v66 = v27;
      do
      {
        v30 = v61;
        v31 = v59;
        v59(v61, v28, v13);
        v32 = v62;
        v31(v62, v26, v67);
        v33 = v63;
        sub_1DC51180C();
        sub_1DC51662C();
        v35 = v34;
        v36 = *v58;
        v37 = v33;
        v38 = v65;
        (*v58)(v37, v65);
        sub_1DC51180C();
        sub_1DC51662C();
        v40 = v39;
        v36(v29, v38);
        v41 = *v57;
        v42 = v32;
        v13 = v67;
        (*v57)(v42, v67);
        result = v41(v30, v13);
        if (v40 >= v35)
        {
          break;
        }

        if (!v55)
        {
          __break(1u);
          return result;
        }

        v43 = *v54;
        v44 = v56;
        (*v54)(v56, v28, v13);
        swift_arrayInitWithTakeFrontToBack();
        result = (v43)(v26, v44, v13);
        v26 += v53;
        v28 += v53;
      }

      while (!__CFADD__(v66++, 1));
      a3 = v52 + 1;
      v26 = v51 + v47;
      v27 = v50 - 1;
      v28 = v49 + v47;
      if (v52 + 1 != v48)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC325348(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v142 = a1;
  v167 = sub_1DC511B0C();
  v8 = *(v167 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v167);
  v166 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v165 = &v140 - v12;
  v13 = sub_1DC5118BC();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v147 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v158 = &v140 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v164 = &v140 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v163 = &v140 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v140 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v29 = &v140 - v28;
  v152 = v27;
  v153 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v171 = *v142;
    if (!v171)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_103;
    }

    goto LABEL_138;
  }

  v140 = a4;
  v31 = 0;
  v168 = v27 + 16;
  v169 = (v27 + 8);
  v160 = (v27 + 32);
  v161 = (v8 + 8);
  v32 = MEMORY[0x1E69E7CC0];
  v162 = v13;
  v150 = v25;
  v143 = v29;
  while (1)
  {
    v33 = v31 + 1;
    v144 = v31;
    if (v31 + 1 >= v30)
    {
      v59 = v31;
    }

    else
    {
      v34 = v29;
      v35 = *v153;
      v36 = *(v27 + 72);
      v37 = &(*v153)[v36 * v33];
      v38 = *(v27 + 16);
      v156 = v30;
      v157 = v38;
      v38(v34, v37, v13);
      v171 = v35;
      v39 = v36;
      v157(v25, &v35[v36 * v144], v13);
      LODWORD(v151) = sub_1DC323600();
      if (v5)
      {
        v139 = *v169;
        (*v169)(v25, v13);
        v139(v143, v13);
      }

      v141 = v32;
      v40 = *v169;
      (*v169)(v25, v13);
      v149 = v40;
      result = (v40)(v143, v13);
      v41 = (v144 + 2);
      v42 = v171 + v39 * (v144 + 2);
      v43 = v39;
      v159 = v39;
      v44 = v156;
      while (1)
      {
        v45 = v41;
        v46 = v33 + 1;
        if (v46 >= v44)
        {
          break;
        }

        v155 = v46;
        v47 = v163;
        v48 = v157;
        v171 = v41;
        v157(v163, v42, v13);
        v49 = v164;
        v48(v164, v37, v13);
        v50 = v165;
        sub_1DC51184C();
        LODWORD(v170) = sub_1DC511ABC();
        v154 = v5;
        v51 = *v161;
        v52 = v50;
        v32 = v167;
        (*v161)(v52, v167);
        v53 = v166;
        sub_1DC51184C();
        v54 = sub_1DC511ABC();
        v55 = v53;
        v13 = v162;
        v51(v55, v32);
        v5 = v154;
        v56 = v49;
        v57 = v149;
        (v149)(v56, v13);
        v58 = v47;
        v33 = v155;
        result = v57(v58, v13);
        v45 = v171;
        v44 = v156;
        v43 = v159;
        v42 += v159;
        v37 += v159;
        v41 = (v171 + 1);
        if (((v151 ^ (v170 >= v54)) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v33 = v44;
LABEL_11:
      if (v151)
      {
        v59 = v144;
        if (v33 < v144)
        {
          goto LABEL_137;
        }

        if (v144 >= v33)
        {
          v27 = v152;
          v32 = v141;
          v25 = v150;
          goto LABEL_32;
        }

        if (v44 >= v45)
        {
          v60 = v45;
        }

        else
        {
          v60 = v44;
        }

        v61 = v144;
        v62 = v43 * (v60 - 1);
        v63 = v43 * v60;
        v64 = v144 * v43;
        v65 = v33;
        v155 = v33;
        do
        {
          if (v61 != --v65)
          {
            v66 = *v153;
            if (!*v153)
            {
              goto LABEL_142;
            }

            v171 = *v160;
            v171(v147, &v66[v64], v13);
            v67 = v64 < v62 || &v66[v64] >= &v66[v63];
            if (v67)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v64 != v62)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v171)(&v66[v62], v147, v13);
            v33 = v155;
            v43 = v159;
          }

          ++v61;
          v62 -= v43;
          v63 -= v43;
          v64 += v43;
        }

        while (v61 < v65);
      }

      v27 = v152;
      v32 = v141;
      v25 = v150;
      v59 = v144;
    }

LABEL_32:
    v68 = v153[1];
    if (v33 < v68)
    {
      if (__OFSUB__(v33, v59))
      {
        goto LABEL_134;
      }

      if (v33 - v59 < v140)
      {
        break;
      }
    }

LABEL_48:
    if (v33 < v59)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DC30B0C0(0, *(v32 + 16) + 1, 1, v32);
      v32 = result;
    }

    v90 = *(v32 + 16);
    v89 = *(v32 + 24);
    v91 = v90 + 1;
    if (v90 >= v89 >> 1)
    {
      result = sub_1DC30B0C0((v89 > 1), v90 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 16) = v91;
    v92 = v32 + 32;
    v93 = (v32 + 32 + 16 * v90);
    *v93 = v144;
    v93[1] = v33;
    v171 = *v142;
    if (!v171)
    {
      goto LABEL_143;
    }

    v155 = v33;
    if (v90)
    {
      v170 = v32 + 32;
      while (1)
      {
        v94 = v91 - 1;
        v95 = (v92 + 16 * (v91 - 1));
        v96 = (v32 + 16 * v91);
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v97 = *(v32 + 32);
          v98 = *(v32 + 40);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_69:
          if (v100)
          {
            goto LABEL_120;
          }

          v112 = *v96;
          v111 = v96[1];
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_123;
          }

          v116 = v95[1];
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_128;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v91 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v91 < 2)
        {
          goto LABEL_122;
        }

        v119 = *v96;
        v118 = v96[1];
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_84:
        if (v115)
        {
          goto LABEL_125;
        }

        v121 = *v95;
        v120 = v95[1];
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_127;
        }

        if (v122 < v114)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v94 - 1 >= v91)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_136;
        }

        if (!*v153)
        {
          goto LABEL_140;
        }

        v126 = (v92 + 16 * (v94 - 1));
        v127 = *v126;
        v128 = v94;
        v129 = (v92 + 16 * v94);
        v130 = v129[1];
        sub_1DC326BB8(&(*v153)[*(v152 + 72) * *v126], &(*v153)[*(v152 + 72) * *v129], &(*v153)[*(v152 + 72) * v130], v171);
        if (v5)
        {
        }

        if (v130 < v127)
        {
          goto LABEL_115;
        }

        v5 = v32;
        v32 = *(v32 + 16);
        if (v128 > v32)
        {
          goto LABEL_116;
        }

        *v126 = v127;
        v126[1] = v130;
        if (v128 >= v32)
        {
          goto LABEL_117;
        }

        v91 = v32 - 1;
        result = memmove(v129, v129 + 2, 16 * (v32 - 1 - v128));
        *(v5 + 16) = v32 - 1;
        v131 = v32 > 2;
        v32 = v5;
        v5 = 0;
        v25 = v150;
        v92 = v170;
        if (!v131)
        {
          goto LABEL_98;
        }
      }

      v101 = v92 + 16 * v91;
      v102 = *(v101 - 64);
      v103 = *(v101 - 56);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_118;
      }

      v106 = *(v101 - 48);
      v105 = *(v101 - 40);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_119;
      }

      v108 = v96[1];
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_121;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_124;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = v95[1];
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_132;
        }

        if (v99 < v125)
        {
          v94 = v91 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v27 = v152;
    v30 = v153[1];
    v31 = v155;
    v29 = v143;
    if (v155 >= v30)
    {
      goto LABEL_101;
    }
  }

  v69 = (v59 + v140);
  if (__OFADD__(v59, v140))
  {
    goto LABEL_135;
  }

  if (v69 >= v68)
  {
    v69 = v153[1];
  }

  if (v69 < v59)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    result = sub_1DC30D6B0(v32);
    v32 = result;
LABEL_103:
    v132 = (v32 + 16);
    v133 = *(v32 + 16);
    while (v133 >= 2)
    {
      if (!*v153)
      {
        goto LABEL_141;
      }

      v134 = v32;
      v32 += 16 * v133;
      v135 = *v32;
      v136 = &v132[2 * v133];
      v137 = v136[1];
      sub_1DC326BB8(&(*v153)[*(v152 + 72) * *v32], &(*v153)[*(v152 + 72) * *v136], &(*v153)[*(v152 + 72) * v137], v171);
      if (v5)
      {
        break;
      }

      if (v137 < v135)
      {
        goto LABEL_129;
      }

      if (v133 - 2 >= *v132)
      {
        goto LABEL_130;
      }

      *v32 = v135;
      *(v32 + 8) = v137;
      v138 = *v132 - v133;
      if (*v132 < v133)
      {
        goto LABEL_131;
      }

      v133 = *v132 - 1;
      result = memmove(v136, v136 + 2, 16 * v138);
      *v132 = v133;
      v32 = v134;
    }
  }

  if (v33 == v69)
  {
    goto LABEL_48;
  }

  v141 = v32;
  v154 = v5;
  v70 = *v153;
  v71 = *(v27 + 72);
  v159 = *(v27 + 16);
  v72 = &v70[v71 * (v33 - 1)];
  v156 = -v71;
  v157 = v70;
  v73 = (v59 - v33);
  v145 = v71;
  v74 = &v70[v33 * v71];
  v146 = v69;
LABEL_41:
  v155 = v33;
  v148 = v74;
  v149 = v73;
  v75 = v73;
  v151 = v72;
  while (1)
  {
    v170 = v75;
    v76 = v163;
    v77 = v159;
    (v159)(v163, v74, v13);
    v78 = v164;
    v77(v164, v72, v13);
    v79 = v165;
    sub_1DC51184C();
    LODWORD(v171) = sub_1DC511ABC();
    v80 = *v161;
    v81 = v167;
    (*v161)(v79, v167);
    v82 = v166;
    sub_1DC51184C();
    v83 = sub_1DC511ABC();
    v84 = v81;
    v13 = v162;
    v80(v82, v84);
    v85 = *v169;
    (*v169)(v78, v13);
    result = (v85)(v76, v13);
    if (v171 >= v83)
    {
LABEL_46:
      v33 = v155 + 1;
      v72 = &v151[v145];
      v73 = v149 - 1;
      v74 = &v148[v145];
      if (v155 + 1 == v146)
      {
        v33 = v146;
        v5 = v154;
        v32 = v141;
        v25 = v150;
        v59 = v144;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    v86 = v170;
    if (!v157)
    {
      break;
    }

    v87 = *v160;
    v88 = v158;
    (*v160)(v158, v74, v13);
    swift_arrayInitWithTakeFrontToBack();
    v87(v72, v88, v13);
    v72 += v156;
    v74 += v156;
    v67 = __CFADD__(v86, 1);
    v75 = (v86 + 1);
    if (v67)
    {
      goto LABEL_46;
    }
  }

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
  return result;
}

uint64_t sub_1DC325F84(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v150 = a1;
  v170 = sub_1DC51663C();
  v6 = *(v170 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v170);
  v169 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v168 = &v144 - v10;
  v11 = sub_1DC5118BC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v153 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v163 = &v144 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v167 = &v144 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v174 = &v144 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  result = MEMORY[0x1EEE9AC00](v21);
  v26 = &v144 - v23;
  v27 = *(a3 + 8);
  v154 = a3;
  v158 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v30 = *v150;
    if (!*v150)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_104;
    }

    goto LABEL_139;
  }

  v145 = a4;
  v28 = 0;
  v172 = v24 + 16;
  v173 = (v24 + 8);
  v166 = (v6 + 8);
  v165 = (v24 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v171 = v11;
  v146 = v25;
  v149 = &v144 - v23;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 < v27)
    {
      v162 = v27;
      v32 = *a3;
      v33 = *(v158 + 72);
      v160 = v28 + 1;
      v34 = *(v158 + 16);
      v35 = v25;
      v36 = &v32[v33 * (v28 + 1)];
      (v34)(v26);
      v175 = v32;
      v164 = v33;
      v157 = v34;
      (v34)(v35, &v32[v33 * v30], v11);
      a3 = v149;
      LODWORD(v161) = sub_1DC322EFC();
      if (v159)
      {
        v143 = *v173;
        (*v173)(v35, v11);
        v143(a3, v11);
      }

      v147 = v29;
      v29 = *v173;
      (*v173)(v35, v11);
      v37 = v162;
      v156 = v29;
      result = (v29)(a3, v11);
      v148 = v30;
      v38 = v30 + 2;
      v39 = v164;
      v40 = v175 + v164 * v38;
      v31 = v160;
      while (1)
      {
        v41 = v38;
        v42 = v31 + 1;
        if (v42 >= v37)
        {
          break;
        }

        v175 = v40;
        v43 = v171;
        v44 = v157;
        v164 = v38;
        v157();
        v29 = v167;
        (v44)(v167, v36, v43);
        v45 = v168;
        v160 = v42;
        sub_1DC51180C();
        sub_1DC51662C();
        v47 = v46;
        a3 = *v166;
        v48 = v45;
        v49 = v39;
        v50 = v170;
        (*v166)(v48, v170);
        v51 = v169;
        sub_1DC51180C();
        sub_1DC51662C();
        v53 = v52;
        v54 = v50;
        v39 = v49;
        v37 = v162;
        (a3)(v51, v54);
        v55 = v156;
        v156(v29, v43);
        result = v55(v174, v43);
        v41 = v164;
        v31 = v160;
        v40 = v175 + v39;
        v36 += v39;
        v38 = v164 + 1;
        if (((v161 ^ (v53 >= v47)) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v31 = v37;
LABEL_10:
      if (v161)
      {
        v56 = v39;
        v30 = v148;
        v11 = v171;
        if (v31 < v148)
        {
          goto LABEL_138;
        }

        a3 = v154;
        if (v148 >= v31)
        {
          v29 = v147;
          goto LABEL_33;
        }

        if (v37 >= v41)
        {
          v57 = v41;
        }

        else
        {
          v57 = v37;
        }

        v58 = v56 * (v57 - 1);
        v59 = v56 * v57;
        v60 = v148;
        v61 = v56;
        v62 = v148 * v56;
        v160 = v31;
        do
        {
          if (v60 != --v31)
          {
            v63 = *a3;
            if (!v63)
            {
              goto LABEL_143;
            }

            v175 = *v165;
            v175(v153, &v63[v62], v11);
            v64 = v62 < v58 || &v63[v62] >= &v63[v59];
            if (v64)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v175)(&v63[v58], v153, v11);
            a3 = v154;
          }

          ++v60;
          v58 -= v61;
          v59 -= v61;
          v62 += v61;
        }

        while (v60 < v31);
        v29 = v147;
        v31 = v160;
      }

      else
      {
        a3 = v154;
        v29 = v147;
        v11 = v171;
      }

      v30 = v148;
    }

LABEL_33:
    v65 = *(a3 + 8);
    if (v31 < v65)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_135;
      }

      if (v31 - v30 < v145)
      {
        break;
      }
    }

LABEL_49:
    if (v31 < v30)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v160 = v31;
    if ((result & 1) == 0)
    {
      result = sub_1DC30B0C0(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v91 = *(v29 + 16);
    v90 = *(v29 + 24);
    v92 = v91 + 1;
    if (v91 >= v90 >> 1)
    {
      result = sub_1DC30B0C0((v90 > 1), v91 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v92;
    v93 = v29 + 32;
    v94 = (v29 + 32 + 16 * v91);
    v95 = v160;
    *v94 = v30;
    v94[1] = v95;
    v175 = *v150;
    if (!v175)
    {
      goto LABEL_144;
    }

    if (v91)
    {
      v164 = v29 + 32;
      while (1)
      {
        v96 = v92 - 1;
        v97 = (v93 + 16 * (v92 - 1));
        v98 = (v29 + 16 * v92);
        if (v92 >= 4)
        {
          break;
        }

        if (v92 == 3)
        {
          v99 = *(v29 + 32);
          v100 = *(v29 + 40);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_70:
          if (v102)
          {
            goto LABEL_121;
          }

          v114 = *v98;
          v113 = v98[1];
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_124;
          }

          v118 = v97[1];
          v119 = v118 - *v97;
          if (__OFSUB__(v118, *v97))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v116, v119))
          {
            goto LABEL_129;
          }

          if (v116 + v119 >= v101)
          {
            if (v101 < v119)
            {
              v96 = v92 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v92 < 2)
        {
          goto LABEL_123;
        }

        v121 = *v98;
        v120 = v98[1];
        v109 = __OFSUB__(v120, v121);
        v116 = v120 - v121;
        v117 = v109;
LABEL_85:
        if (v117)
        {
          goto LABEL_126;
        }

        v123 = *v97;
        v122 = v97[1];
        v109 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v109)
        {
          goto LABEL_128;
        }

        if (v124 < v116)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v96 - 1 >= v92)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v128 = (v93 + 16 * (v96 - 1));
        v129 = *v128;
        v130 = v96;
        v131 = (v93 + 16 * v96);
        v132 = v131[1];
        v133 = v159;
        sub_1DC32726C(*a3 + *(v158 + 72) * *v128, *a3 + *(v158 + 72) * *v131, *a3 + *(v158 + 72) * v132, v175);
        v159 = v133;
        if (v133)
        {
        }

        if (v132 < v129)
        {
          goto LABEL_116;
        }

        v30 = a3;
        a3 = v29;
        v29 = *(v29 + 16);
        if (v130 > v29)
        {
          goto LABEL_117;
        }

        *v128 = v129;
        v128[1] = v132;
        if (v130 >= v29)
        {
          goto LABEL_118;
        }

        v92 = v29 - 1;
        result = memmove(v131, v131 + 2, 16 * (v29 - 1 - v130));
        *(a3 + 16) = v29 - 1;
        v134 = v29 > 2;
        v29 = a3;
        a3 = v30;
        v93 = v164;
        if (!v134)
        {
          goto LABEL_99;
        }
      }

      v103 = v93 + 16 * v92;
      v104 = *(v103 - 64);
      v105 = *(v103 - 56);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_119;
      }

      v108 = *(v103 - 48);
      v107 = *(v103 - 40);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_120;
      }

      v110 = v98[1];
      v111 = v110 - *v98;
      if (__OFSUB__(v110, *v98))
      {
        goto LABEL_122;
      }

      v109 = __OFADD__(v101, v111);
      v112 = v101 + v111;
      if (v109)
      {
        goto LABEL_125;
      }

      if (v112 >= v106)
      {
        v126 = *v97;
        v125 = v97[1];
        v109 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v109)
        {
          goto LABEL_133;
        }

        if (v101 < v127)
        {
          v96 = v92 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v27 = *(a3 + 8);
    v28 = v160;
    v25 = v146;
    v26 = v149;
    if (v160 >= v27)
    {
      goto LABEL_102;
    }
  }

  v66 = v30 + v145;
  if (__OFADD__(v30, v145))
  {
    goto LABEL_136;
  }

  if (v66 >= v65)
  {
    v66 = *(a3 + 8);
  }

  if (v66 < v30)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    result = sub_1DC30D6B0(v29);
    v29 = result;
LABEL_104:
    v135 = (v29 + 16);
    v136 = *(v29 + 16);
    while (v136 >= 2)
    {
      v137 = *a3;
      if (!*a3)
      {
        goto LABEL_142;
      }

      v138 = v29;
      v29 += 16 * v136;
      v139 = *v29;
      v140 = &v135[2 * v136];
      a3 = v140[1];
      v141 = v159;
      sub_1DC32726C(&v137[*(v158 + 72) * *v29], &v137[*(v158 + 72) * *v140], &v137[*(v158 + 72) * a3], v30);
      v159 = v141;
      if (v141)
      {
        break;
      }

      if (a3 < v139)
      {
        goto LABEL_130;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_131;
      }

      *v29 = v139;
      *(v29 + 8) = a3;
      v142 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_132;
      }

      v136 = *v135 - 1;
      result = memmove(v140, v140 + 2, 16 * v142);
      *v135 = v136;
      a3 = v154;
      v29 = v138;
    }
  }

  if (v31 == v66)
  {
    goto LABEL_49;
  }

  v147 = v29;
  v67 = *a3;
  v68 = *(v158 + 72);
  v164 = *(v158 + 16);
  v69 = (v67 + v68 * (v31 - 1));
  v161 = -v68;
  v148 = v30;
  v70 = (v30 - v31);
  v162 = v67;
  v151 = v68;
  v71 = v67 + v31 * v68;
  v152 = v66;
LABEL_42:
  v160 = v31;
  v155 = v71;
  v156 = v70;
  v157 = v69;
  v72 = v70;
  while (1)
  {
    v175 = v72;
    v73 = v174;
    v74 = v164;
    (v164)(v174, v71, v11);
    v75 = v167;
    v74(v167, v69, v11);
    v76 = v168;
    sub_1DC51180C();
    sub_1DC51662C();
    v78 = v77;
    v79 = *v166;
    v80 = v76;
    v81 = v170;
    (*v166)(v80, v170);
    v82 = v169;
    sub_1DC51180C();
    sub_1DC51662C();
    v84 = v83;
    v85 = v82;
    v11 = v171;
    v79(v85, v81);
    v86 = *v173;
    (*v173)(v75, v11);
    result = v86(v73, v11);
    if (v84 >= v78)
    {
LABEL_47:
      v31 = v160 + 1;
      v69 = (v157 + v151);
      v70 = v156 - 1;
      v71 = v155 + v151;
      if (v160 + 1 == v152)
      {
        v31 = v152;
        a3 = v154;
        v29 = v147;
        v30 = v148;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    v87 = v175;
    if (!v162)
    {
      break;
    }

    v88 = *v165;
    v89 = v163;
    (*v165)(v163, v71, v11);
    swift_arrayInitWithTakeFrontToBack();
    (v88)(v69, v89, v11);
    v69 = (v69 + v161);
    v71 += v161;
    v64 = __CFADD__(v87, 1);
    v72 = v87 + 1;
    if (v64)
    {
      goto LABEL_47;
    }
  }

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
  return result;
}

uint64_t sub_1DC326BB8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = a4;
  v77 = sub_1DC511B0C();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v77);
  v76 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v64 - v11;
  v82 = sub_1DC5118BC();
  v12 = *(*(v82 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v82);
  v74 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v80 = &v64 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v19;
  v86 = a1;
  v85 = v83;
  v72 = (v7 + 8);
  v73 = (v16 + 16);
  v71 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    v42 = v83;
    sub_1DC324104(a2, v21 / v19, v83, MEMORY[0x1E69D0B08]);
    v43 = v42 + v24 * v19;
    v44 = -v19;
    v45 = v43;
    v81 = a1;
    v67 = -v19;
    v46 = v82;
LABEL_36:
    v47 = a2 + v44;
    v48 = a3;
    v65 = v45;
    v49 = v45;
    v68 = a2 + v44;
    v69 = a2;
    while (1)
    {
      if (v43 <= v83)
      {
        v86 = a2;
        v84 = v49;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v66 = v49;
      v78 = v48;
      v79 = v48 + v44;
      v50 = v43 + v44;
      v51 = *v73;
      (*v73)();
      v52 = v74;
      (v51)(v74, v47, v46);
      v53 = v75;
      sub_1DC51184C();
      LODWORD(v70) = sub_1DC511ABC();
      v54 = *v72;
      v55 = v77;
      (*v72)(v53, v77);
      v56 = v76;
      sub_1DC51184C();
      v57 = sub_1DC511ABC();
      v54(v56, v55);
      v58 = *v71;
      (*v71)(v52, v46);
      v58(v80, v46);
      if (v70 < v57)
      {
        a3 = v79;
        if (v78 < v69 || v79 >= v69)
        {
          a2 = v68;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v66;
          v44 = v67;
          a1 = v81;
        }

        else
        {
          v62 = v66;
          v45 = v66;
          v44 = v67;
          v63 = v68;
          a2 = v68;
          a1 = v81;
          if (v78 != v69)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v63;
            v45 = v62;
          }
        }

        goto LABEL_36;
      }

      v59 = v79;
      if (v78 < v43 || v79 >= v43)
      {
        swift_arrayInitWithTakeFrontToBack();
        v48 = v59;
        v43 = v50;
        v49 = v50;
        a1 = v81;
        v47 = v68;
        a2 = v69;
        v44 = v67;
      }

      else
      {
        v49 = v50;
        v20 = v43 == v78;
        v48 = v79;
        v43 = v50;
        a1 = v81;
        v47 = v68;
        a2 = v69;
        v44 = v67;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v48 = v59;
          v43 = v50;
          v49 = v50;
        }
      }
    }

    v86 = a2;
    v84 = v65;
  }

  else
  {
    v25 = v83;
    sub_1DC324104(a1, (a2 - a1) / v19, v83, MEMORY[0x1E69D0B08]);
    v69 = v19;
    v70 = v25 + v23 * v19;
    v84 = v70;
    v79 = a3;
    v26 = v80;
    while (v83 < v70 && a2 < a3)
    {
      v81 = a1;
      v28 = *v73;
      v29 = v82;
      (*v73)(v26, a2, v82);
      v30 = v74;
      (v28)(v74, v83, v29);
      v31 = v75;
      sub_1DC51184C();
      LODWORD(v78) = sub_1DC511ABC();
      v32 = *v72;
      v33 = v77;
      (*v72)(v31, v77);
      v34 = a2;
      v35 = v76;
      sub_1DC51184C();
      LODWORD(v28) = sub_1DC511ABC();
      v32(v35, v33);
      v36 = *v71;
      (*v71)(v30, v29);
      v36(v26, v29);
      if (v78 >= v28)
      {
        a2 = v34;
        v37 = v69;
        v40 = v83 + v69;
        v38 = v81;
        if (v81 < v83 || v81 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v79;
        }

        else
        {
          a3 = v79;
          if (v81 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v85 = v40;
        v83 = v40;
      }

      else
      {
        v37 = v69;
        a2 = v34 + v69;
        v38 = v81;
        if (v81 < v34 || v81 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v79;
        }

        else
        {
          a3 = v79;
          if (v81 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v38 + v37;
      v86 = a1;
    }
  }

LABEL_58:
  sub_1DC327934(&v86, &v85, &v84, MEMORY[0x1E69D0B08]);
  return 1;
}

uint64_t sub_1DC32726C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v87 = a4;
  v82 = sub_1DC51663C();
  v7 = *(v82 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v82);
  v81 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = v70 - v11;
  v86 = sub_1DC5118BC();
  v12 = *(*(v86 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v86);
  v79 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v84 = v70 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v19;
  v90 = a1;
  v89 = v87;
  v77 = (v7 + 8);
  v78 = (v16 + 16);
  v76 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    v47 = v87;
    sub_1DC324104(a2, v21 / v19, v87, MEMORY[0x1E69D0B08]);
    v48 = v47 + v24 * v19;
    v49 = -v19;
    v50 = v48;
    v85 = a1;
    v72 = v49;
LABEL_36:
    v74 = a2 + v49;
    v70[0] = v50;
    v73 = a2;
    while (1)
    {
      if (v48 <= v87)
      {
        v90 = a2;
        v88 = v50;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v71 = v50;
      v83 = a3 + v49;
      v51 = v48 + v49;
      v52 = *v78;
      v53 = v86;
      v75 = a3;
      v52();
      v54 = v79;
      (v52)(v79, v74, v53);
      v55 = v80;
      sub_1DC51180C();
      sub_1DC51662C();
      v57 = v56;
      v58 = *v77;
      v59 = v55;
      v60 = v82;
      (*v77)(v59, v82);
      v61 = v81;
      sub_1DC51180C();
      sub_1DC51662C();
      v63 = v62;
      v58(v61, v60);
      v64 = *v76;
      (*v76)(v54, v53);
      v64(v84, v53);
      if (v63 < v57)
      {
        a3 = v83;
        if (v75 < v73 || v83 >= v73)
        {
          a2 = v74;
          swift_arrayInitWithTakeFrontToBack();
          v50 = v71;
          v49 = v72;
          a1 = v85;
        }

        else
        {
          v68 = v71;
          v49 = v72;
          v50 = v71;
          v69 = v74;
          a2 = v74;
          a1 = v85;
          if (v75 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v69;
            v50 = v68;
          }
        }

        goto LABEL_36;
      }

      v65 = v83;
      v66 = v75 < v48 || v83 >= v48;
      a2 = v73;
      if (v66)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v65;
        v48 = v51;
        v50 = v51;
        a1 = v85;
        v49 = v72;
      }

      else
      {
        v50 = v51;
        v20 = v48 == v75;
        a3 = v83;
        v48 = v51;
        a1 = v85;
        v49 = v72;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v65;
          v48 = v51;
          v50 = v51;
        }
      }
    }

    v90 = a2;
    v88 = v70[0];
  }

  else
  {
    v25 = v87;
    sub_1DC324104(a1, (a2 - a1) / v19, v87, MEMORY[0x1E69D0B08]);
    v74 = v19;
    v75 = v25 + v23 * v19;
    v88 = v75;
    v83 = a3;
    while (v87 < v75 && a2 < a3)
    {
      v85 = a1;
      v27 = *v78;
      v28 = v84;
      v29 = v86;
      (*v78)(v84, a2, v86);
      v30 = v79;
      (v27)(v79, v87, v29);
      v31 = v80;
      sub_1DC51180C();
      sub_1DC51662C();
      v33 = v32;
      v34 = *v77;
      v35 = v31;
      v36 = a2;
      v37 = v82;
      (*v77)(v35, v82);
      v38 = v81;
      sub_1DC51180C();
      sub_1DC51662C();
      v40 = v39;
      v34(v38, v37);
      v41 = *v76;
      (*v76)(v30, v29);
      v41(v28, v29);
      if (v40 >= v33)
      {
        v42 = v74;
        v45 = v87 + v74;
        v43 = v85;
        if (v85 < v87 || v85 >= v45)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v83;
          a2 = v36;
        }

        else
        {
          a3 = v83;
          a2 = v36;
          if (v85 != v87)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v89 = v45;
        v87 = v45;
      }

      else
      {
        v42 = v74;
        a2 = v36 + v74;
        v43 = v85;
        if (v85 < v36 || v85 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v83;
        }

        else
        {
          a3 = v83;
          if (v85 != v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v43 + v42;
      v90 = a1;
    }
  }

LABEL_58:
  sub_1DC327934(&v90, &v89, &v88, MEMORY[0x1E69D0B08]);
  return 1;
}

uint64_t sub_1DC327934(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  result = OUTLINED_FUNCTION_35(v7);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  v12 = v5 + (v6 - v5) / v10 * v10;
  if (v4 < v5 || v4 >= v12)
  {
    OUTLINED_FUNCTION_31_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_31_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC327A94()
{
  v1 = OUTLINED_FUNCTION_5_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_35(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

unint64_t sub_1DC327AE8()
{
  result = qword_1ECC7BA90;
  if (!qword_1ECC7BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BA90);
  }

  return result;
}

uint64_t sub_1DC327B3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DC327B84()
{
  v1 = OUTLINED_FUNCTION_5_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_35(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_43();
  v7(v6);
  return v0;
}

uint64_t sub_1DC327BD8()
{
  v1 = OUTLINED_FUNCTION_155();
  v3 = v2(v1);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DC327C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_73_1()
{
  v2 = *v0;
  result = *(v1 - 152);
  v4 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return sub_1DC2DB2AC();
}

uint64_t sub_1DC327CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16 = type metadata accessor for NLRouterServiceUserDefaults();
  result = (*(*(a8 - 8) + 32))(&a9[v16[7]], a3, a8);
  *&a9[v16[8]] = a4;
  v18 = &a9[v16[9]];
  *v18 = a5;
  *(v18 + 1) = a6;
  *&a9[v16[10]] = a7;
  return result;
}