uint64_t sub_216BDDF78(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_216BDE090(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_130(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_216DD3A38(v4, 1);
  OUTLINED_FUNCTION_33_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_25_38();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_216BDE184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_21700CBF4();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v9 = sub_21700CAC4();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216BDE2A4, 0, 0);
}

uint64_t sub_216BDE2A4()
{
  if (qword_280E40F40 != -1)
  {
    OUTLINED_FUNCTION_1_164();
  }

  v1 = sub_217007CA4();
  v0[18] = __swift_project_value_buffer(v1, qword_280E40F48);
  v2 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_27_2();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v4);
    OUTLINED_FUNCTION_121(&dword_216679000, v5, v6, "Loading JavaScript bundle.");
    OUTLINED_FUNCTION_26_4();
  }

  v7 = v0[8];

  v0[19] = *(v7 + 16);

  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[20] = v8;
  *v8 = v9;
  v8[1] = sub_216BDE3D4;
  v10 = v0[17];

  return MEMORY[0x282180668](v10);
}

uint64_t sub_216BDE3D4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    v7 = sub_216BDEB08;
  }

  else
  {

    v7 = sub_216BDE4DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_216BDE4DC()
{
  OUTLINED_FUNCTION_82_0();
  v1 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_27_2();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v3);
    OUTLINED_FUNCTION_40_0(&dword_216679000, v4, v5, "Retrieving JavaScript source.");
    OUTLINED_FUNCTION_26_4();
  }

  v6 = v0[21];

  sub_21700CC04();
  sub_21700CAA4();
  if (v6)
  {
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[15];
    (*(v0[13] + 8))(v0[14], v0[12]);
    v11 = *(v8 + 8);
    v10 = (v8 + 8);
    v11(v7, v9);
    v12 = v6;
    v13 = sub_217007C84();
    v14 = sub_21700ED84();

    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_96();
      v15 = OUTLINED_FUNCTION_203();
      *v10 = 138543362;
      v16 = v6;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v17);
      OUTLINED_FUNCTION_23_39(&dword_216679000, v18, v14, "Error loading JavaScript stack: %{public}@");
      sub_216697664(v15, &qword_27CABF880);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_56_1();
    }

    sub_2166A8544();
    sub_21700E214();

    OUTLINED_FUNCTION_41_26();

    OUTLINED_FUNCTION_3();

    return v19();
  }

  else
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    v21 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v23);
      OUTLINED_FUNCTION_121(&dword_216679000, v24, v25, "Making JavaScript prerequisites.");
      OUTLINED_FUNCTION_26_4();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    v0[22] = v26;
    *v26 = v27;
    v26[1] = sub_216BDE78C;
    v28 = v0[9];

    return sub_216BDED98((v0 + 2), v28);
  }
}

uint64_t sub_216BDE78C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  if (v0)
  {
    v5 = sub_216BDEC40;
  }

  else
  {
    v5 = sub_216BDE894;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_216BDE894()
{
  OUTLINED_FUNCTION_82_0();
  v1 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_27_2();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v3);
    OUTLINED_FUNCTION_121(&dword_216679000, v4, v5, "Making JavaScript stack.");
    OUTLINED_FUNCTION_26_4();
  }

  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[9];

  v9 = sub_216BDF55C(v6, v8);
  if (v7)
  {
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    v14 = *(v11 + 8);
    v13 = (v11 + 8);
    v14(v10, v12);
    v15 = v7;
    v16 = sub_217007C84();
    v17 = sub_21700ED84();

    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_96();
      v18 = OUTLINED_FUNCTION_203();
      *v13 = 138543362;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v20);
      OUTLINED_FUNCTION_23_39(&dword_216679000, v21, v17, "Error loading JavaScript stack: %{public}@");
      sub_216697664(v18, &qword_27CABF880);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_56_1();
    }

    sub_2166A8544();
    sub_21700E214();
  }

  else
  {
    v22 = v0[17];
    v23 = v0[15];
    v24 = v0[16];

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    (*(v24 + 8))(v22, v23);

    v25 = sub_217007C84();
    v26 = sub_21700EDA4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_43();
      *v27 = 0;
      _os_log_impl(&dword_216679000, v25, v26, "Loaded JavaScript stack!", v27, 2u);
      OUTLINED_FUNCTION_56_1();
    }

    sub_2166A8544();
    v0[7] = v9;
    sub_21700E224();
  }

  OUTLINED_FUNCTION_41_26();

  OUTLINED_FUNCTION_3();

  return v28();
}

uint64_t sub_216BDEB08()
{

  v2 = *(v0 + 168);
  v3 = v2;
  v4 = sub_217007C84();
  v5 = sub_21700ED84();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_96();
    v6 = OUTLINED_FUNCTION_203();
    *v1 = 138543362;
    v7 = v2;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v8);
    OUTLINED_FUNCTION_23_39(&dword_216679000, v9, v5, "Error loading JavaScript stack: %{public}@");
    sub_216697664(v6, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_56_1();
  }

  sub_2166A8544();
  sub_21700E214();

  OUTLINED_FUNCTION_41_26();

  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_216BDEC40()
{
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  (*(v3 + 8))(v2, v4);
  v5 = v0[24];
  v6 = v5;
  v7 = sub_217007C84();
  v8 = sub_21700ED84();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_96();
    v9 = OUTLINED_FUNCTION_203();
    *v1 = 138543362;
    v10 = v5;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v11);
    OUTLINED_FUNCTION_23_39(&dword_216679000, v12, v8, "Error loading JavaScript stack: %{public}@");
    sub_216697664(v9, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_56_1();
  }

  sub_2166A8544();
  sub_21700E214();

  OUTLINED_FUNCTION_41_26();

  OUTLINED_FUNCTION_3();

  return v13();
}

uint64_t sub_216BDED98(uint64_t a1, uint64_t a2)
{
  *(v2 + 1360) = a2;
  *(v2 + 1352) = a1;
  return MEMORY[0x2822009F8](sub_216BDEDBC, 0, 0);
}

uint64_t sub_216BDEDBC()
{
  OUTLINED_FUNCTION_33();

  type metadata accessor for JSBundleObject();
  swift_asyncLet_begin();

  type metadata accessor for JSSubscriptionStatusCoordinator();
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1336, sub_216BDEE98, v0 + 1296);
}

uint64_t sub_216BDEE98()
{
  OUTLINED_FUNCTION_33();
  v1[171] = v0;
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_31_40();

    return MEMORY[0x282200920](v2, v3, v4, v5);
  }

  else
  {
    v6 = v1[167];
    v1[172] = v6;
    v7 = v6;
    v8 = OUTLINED_FUNCTION_31_40();

    return MEMORY[0x282200928](v8, v9, v10, v11);
  }
}

uint64_t sub_216BDEF4C()
{
  v1 = v0[172];
  v2 = v0[170];
  v46 = v0[169];
  v47 = v0[168];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC18E0);
  v3 = sub_21700E0E4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[173] = v9;
  *(v9 + 16) = xmmword_217050EB0;
  v10 = (v9 + v8);
  OUTLINED_FUNCTION_13_60();
  *v10 = v12;
  v10[1] = v11;
  v10[2] = sub_216BE19D0;
  v10[3] = v2;
  v13 = *(v5 + 104);
  OUTLINED_FUNCTION_9_76();
  v13();
  OUTLINED_FUNCTION_20_46();
  *v14 = 0xD00000000000001DLL;
  v14[1] = v15;
  v14[2] = sub_216BE19D8;
  v14[3] = v2;
  OUTLINED_FUNCTION_9_76();
  v13();
  v16 = (v10 + 2 * v7);
  *v16 = 0x656C646E7562;
  v16[1] = 0xE600000000000000;
  v16[2] = v1;
  v13();
  v17 = (v10 + 3 * v7);
  *v17 = 0x6574736973726570;
  v17[1] = 0xEB0000000065636ELL;
  v17[2] = sub_216BE19E0;
  v17[3] = v2;
  OUTLINED_FUNCTION_9_76();
  v13();
  v18 = (v10 + 4 * v7);
  *v18 = 0x6D726F6674616C70;
  v18[1] = 0xE800000000000000;
  v18[2] = sub_216BE1060;
  v18[3] = 0;
  OUTLINED_FUNCTION_9_76();
  v13();
  OUTLINED_FUNCTION_13_60();
  *v20 = v19 - 4;
  v20[1] = v21;
  v20[2] = sub_216BE19E8;
  v20[3] = v2;
  OUTLINED_FUNCTION_9_76();
  v13();
  v22 = (v10 + 6 * v7);
  *v22 = 0xD00000000000001DLL;
  v22[1] = 0x8000000217081CA0;
  v22[2] = v47;
  v13();
  v23 = (v10 + 7 * v7);
  OUTLINED_FUNCTION_13_60();
  *v23 = v24 | 1;
  v23[1] = v25;
  OUTLINED_FUNCTION_34_29();
  v26 = OUTLINED_FUNCTION_6_85();
  (v13)(v26);
  v27 = &v10[v7];
  OUTLINED_FUNCTION_20_46();
  *v27 = 0xD00000000000001CLL;
  v27[1] = v28;
  OUTLINED_FUNCTION_34_29();
  v29 = OUTLINED_FUNCTION_6_85();
  (v13)(v29);
  v30 = (v10 + 9 * v7);
  OUTLINED_FUNCTION_20_46();
  *v30 = 0xD00000000000001ALL;
  v30[1] = v31;
  OUTLINED_FUNCTION_34_29();
  v32 = OUTLINED_FUNCTION_6_85();
  (v13)(v32);
  v33 = (v10 + 10 * v7);
  *v33 = 0x7365727574616566;
  v33[1] = 0xE800000000000000;
  v33[2] = sub_216BE12E8;
  v33[3] = 0;
  OUTLINED_FUNCTION_9_76();
  v13();
  v34 = v10 + 11 * v7;
  strcpy(v34, "sharedWithYou");
  *(v34 + 7) = -4864;
  OUTLINED_FUNCTION_34_29();
  v35 = OUTLINED_FUNCTION_6_85();
  (v13)(v35);
  v36 = (v10 + 12 * v7);
  OUTLINED_FUNCTION_20_46();
  *v36 = 0xD000000000000019;
  v36[1] = v37;
  OUTLINED_FUNCTION_34_29();
  v38 = OUTLINED_FUNCTION_6_85();
  (v13)(v38);
  v39 = v10 + 13 * v7;
  sub_2167B7D58(v46, v39);
  (v13)(v39, *MEMORY[0x277D22460], v3);
  swift_retain_n();
  v40 = v47;
  v41 = OUTLINED_FUNCTION_31_40();

  return MEMORY[0x282200920](v41, v42, v43, v44);
}

uint64_t sub_216BDF458()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 8);
  v2 = *(v0 + 1384);

  return v1(v2);
}

uint64_t sub_216BDF4FC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216BDF55C(uint64_t a1, char *a2)
{
  v81 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5418);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v64 - v4;
  v91 = sub_21700E0E4();
  v94 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v80 = (&v64 - v8);
  v9 = sub_21700E004();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  v78 = type metadata accessor for MusicNetFetcher();
  MEMORY[0x28223BE20](v78);
  v75 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for MusicRequestEncoder();
  MEMORY[0x28223BE20](v74);
  v70 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_21700E034();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7F8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v64 - v19;
  v21 = sub_21700DFD4();
  v88 = *(v21 - 8);
  v89 = v21;
  MEMORY[0x28223BE20](v21);
  v85 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21700E174();
  v86 = *(v23 - 8);
  v87 = v23;
  MEMORY[0x28223BE20](v23);
  v82 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v64 - v26;
  sub_216BE187C();
  sub_21700D4D4();

  v28 = a2;
  sub_21700E094();
  v65 = *&v92[0];
  v29 = [*&v92[0] protocolHandler];
  if (!v29)
  {
    goto LABEL_20;
  }

  v30 = v29;
  v73 = v11;
  v83 = v5;
  v84 = v14;
  objc_opt_self();
  v68 = swift_dynamicCastObjCClass();
  if (!v68)
  {
LABEL_19:
    swift_unknownObjectRelease();
LABEL_20:
    *&v92[0] = 0;
    *(&v92[0] + 1) = 0xE000000000000000;
    sub_21700F3B4();
    MEMORY[0x21CE9F490](0xD000000000000031, 0x800000021708A5F0);
    v60 = [v65 description];
    v61 = sub_21700E514();
    v63 = v62;

    MEMORY[0x21CE9F490](v61, v63);

    MEMORY[0x21CE9F490](39, 0xE100000000000000);
    result = sub_21700F584();
    __break(1u);
    return result;
  }

  sub_21700E164();
  sub_21700E154();
  v31 = v85;
  v32 = v89;
  sub_21700E094();
  v33 = sub_21700E194();
  (*(v88 + 16))(v20, v31, v32);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v32);
  v93 = 0;
  memset(v92, 0, sizeof(v92));
  v64 = v33;
  v34 = v28;
  v35 = MEMORY[0x21CE9EF40](v27, v20, 0, 0, v92);
  sub_216697664(v92, &qword_27CAC5420);
  sub_216697664(v20, &qword_27CABA7F8);
  v36 = *(v86 + 16);
  v37 = v82;
  v66 = v27;
  v36(v82, v27, v87);
  v79 = v30;
  swift_unknownObjectRetain();
  sub_216EB40F4(v68, v37, v70);
  sub_21700E094();
  v38 = v78;
  v39 = v75;
  sub_21700D9E4();
  type metadata accessor for PrivacyDisclaimerAcknowledgement();
  sub_21700E094();
  *v39 = *&v92[0];
  type metadata accessor for IntentNetworkResponseReceiver();
  v82 = v34;
  sub_21700E094();
  *(v39 + *(v38 + 24)) = *&v92[0];
  v40 = v73;
  sub_21700DFF4();
  sub_21700DFE4();
  (*(v76 + 8))(v40, v77);
  sub_2166BF8B4(qword_280E46DC0, type metadata accessor for MusicRequestEncoder);
  sub_2166BF8B4(&unk_280E47300, type metadata accessor for MusicNetFetcher);
  v41 = v69;
  sub_21700E014();
  v42 = sub_21700E024();
  (*(v71 + 8))(v41, v72);
  v43 = v80;
  *v80 = 7628142;
  v43[1] = 0xE300000000000000;
  v43[2] = v42;
  v44 = *(v94 + 104);
  (v44)(v43, *MEMORY[0x277D22448], v91);
  v84 = v42;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2169392A4(0, *(v35 + 16) + 1, 1, v35);
    v35 = v57;
  }

  v46 = *(v35 + 16);
  v45 = *(v35 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_2169392A4(v45 > 1, v46 + 1, 1, v35);
    v35 = v58;
  }

  v78 = v46 + 1;
  *(v35 + 16) = v46 + 1;
  v47 = *(v94 + 32);
  v48 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v49 = *(v94 + 72);
  v94 += 32;
  v47(v35 + v48 + v49 * v46, v43, v91);
  v50 = v90;
  *v90 = 7628142;
  v50[1] = 0xE300000000000000;
  v50[2] = v84;
  v44();
  v51 = *(v35 + 24);
  swift_unknownObjectRetain();
  if ((v46 + 2) > (v51 >> 1))
  {
    sub_2169392A4(v51 > 1, v46 + 2, 1, v35);
    v35 = v59;
  }

  v52 = v78;
  *(v35 + 16) = v46 + 2;
  v47(v35 + v48 + v49 * v52, v90, v91);
  *&v92[0] = v35;
  v53 = sub_21700DF14();
  sub_216BDDF78(v53, sub_216DD3A20, MEMORY[0x277D22468]);
  sub_21700D914();
  sub_21700D4B4();
  if (![objc_allocWithZone(MEMORY[0x277CD4660]) init])
  {
    __break(1u);
    goto LABEL_19;
  }

  swift_allocObject();
  v54 = v67;
  v55 = sub_21700E0F4();
  if (v54)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_280E2B920 != -1)
    {
      swift_once();
    }

    if (byte_280E73A84)
    {
      sub_21700E114();
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  (*(v88 + 8))(v85, v89);
  (*(v86 + 8))(v66, v87);
  return v55;
}

uint64_t sub_216BE00DC()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E40F48);
  __swift_project_value_buffer(v0, qword_280E40F48);
  return sub_217007C94();
}

uint64_t sub_216BE0160(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_216BE0180, 0, 0);
}

uint64_t sub_216BE0180()
{
  OUTLINED_FUNCTION_33();
  v0[4] = sub_216BE03A0();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[5] = v1;
  *v1 = v2;
  v1[1] = sub_216BE0220;
  v3 = v0[2];

  return MEMORY[0x282180668](v3);
}

uint64_t sub_216BE0220()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_216BE0344, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v7();
  }
}

uint64_t sub_216BE0344()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216BE03A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7F0);
  sub_21700D4D4();
  sub_21700E094();
  if (v2[0])
  {
    sub_216B88724();
    v2[3] = sub_21700D7C4();
    v2[4] = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v2);

    sub_21700D7B4();
    type metadata accessor for JSBundleObject();
    v0 = sub_21700E1B4();

    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5478);
    sub_216BE16E8();
    swift_allocError();
    return sub_21700E1E4();
  }

  return v0;
}

uint64_t sub_216BE04E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_216BE0578;

  return sub_216BE069C(a2);
}

uint64_t sub_216BE0578()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  return MEMORY[0x2822009F8](sub_216BE066C, 0, 0);
}

uint64_t sub_216BE066C()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_3();
  return v1();
}

uint64_t sub_216BE069C(uint64_t a1)
{
  v1[27] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5460);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5468);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = sub_217007C24();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8);
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216BE0864, 0, 0);
}

uint64_t sub_216BE0864()
{
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4D4();
  sub_21700E094();
  *(v0 + 304) = *(v0 + 208);
  sub_2166C0578((v0 + 16));
  if (*(v0 + 40))
  {
    sub_216697664(v0 + 16, &qword_27CAC5980);
    if (qword_280E40F40 != -1)
    {
      OUTLINED_FUNCTION_1_164();
    }

    v1 = sub_217007CA4();
    __swift_project_value_buffer(v1, qword_280E40F48);
    v2 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v4);
      OUTLINED_FUNCTION_121(&dword_216679000, v5, v6, "Initial subscription status present.");
      OUTLINED_FUNCTION_26_4();
    }

    v7 = objc_allocWithZone(OUTLINED_FUNCTION_32_26());

    v8 = sub_216BBA1E4();

    v9 = *(v0 + 8);

    return v9(v8);
  }

  else
  {
    if (qword_280E40F40 != -1)
    {
      OUTLINED_FUNCTION_1_164();
    }

    v11 = sub_217007CA4();
    *(v0 + 312) = __swift_project_value_buffer(v11, qword_280E40F48);
    v12 = sub_217007C84();
    v13 = sub_21700EDA4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_43();
      *v14 = 0;
      _os_log_impl(&dword_216679000, v12, v13, "Awaiting subscription status...", v14, 2u);
      OUTLINED_FUNCTION_56_1();
    }

    if (qword_280E485B8 != -1)
    {
      OUTLINED_FUNCTION_122();
    }

    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    v17 = *(v0 + 272);
    v18 = *(v0 + 280);
    v20 = *(v0 + 232);
    v19 = *(v0 + 240);
    v21 = *(v0 + 224);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D0);
    v23 = __swift_project_value_buffer(v22, qword_280E73E20);
    (*(v18 + 16))(v16, v23, v17);
    sub_21669E79C(v16, "InitialSubscriptionStatus", 25, 2, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C8);
    sub_216BE1A18();
    sub_21700D204();
    sub_21700EAB4();
    (*(v20 + 8))(v19, v21);
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v0 + 320) = v24;
    *v24 = v25;
    v26 = OUTLINED_FUNCTION_5_96(v24);

    return MEMORY[0x2822003E8](v26, v27, v28);
  }
}

uint64_t sub_216BE0BD8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_216BE0CC4, 0, 0);
}

uint64_t sub_216BE0CC4()
{
  OUTLINED_FUNCTION_82_0();
  v1 = *(v0 + 160);
  *(v0 + 80) = *(v0 + 144);
  *(v0 + 96) = v1;
  v2 = *(v0 + 192);
  *(v0 + 112) = *(v0 + 176);
  *(v0 + 128) = v2;
  v3 = *(v0 + 104);
  if (v3 != 1)
  {
    if (!v3)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_52();
      *(v0 + 320) = v4;
      *v4 = v5;
      v6 = OUTLINED_FUNCTION_5_96();

      return MEMORY[0x2822003E8](v6, v7, v8);
    }

    sub_216697664(v0 + 80, &qword_27CAC5470);
    v9 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v11);
      OUTLINED_FUNCTION_40_0(&dword_216679000, v12, v13, "Subscription status ready.");
      OUTLINED_FUNCTION_26_4();
    }

    sub_2166A8544();
  }

  v14 = *(v0 + 296);
  (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  sub_216697664(v14, &qword_27CAB94C8);
  v15 = objc_allocWithZone(OUTLINED_FUNCTION_32_26());

  v16 = sub_216BBA1E4();

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_216BE0E8C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for JSCampaignAttributionService();

  v3 = sub_2166EF2C8();
  a1[3] = v2;
  result = sub_2166BF8B4(&qword_27CAC5458, type metadata accessor for JSCampaignAttributionService);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_216BE0F14@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for JSRecentLibrarySearchesProviderObject();
  v5.receiver = objc_allocWithZone(v2);
  v5.super_class = v2;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  a1[3] = v2;
  result = sub_2166BF8B4(&qword_27CAC5450, type metadata accessor for JSRecentLibrarySearchesProviderObject);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_216BE0FAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for JSPersistence();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC7MusicUI13JSPersistence_objectGraph] = a1;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, sel_init);
  a2[3] = v4;
  result = sub_2166BF8B4(qword_280E43EB8, type metadata accessor for JSPersistence);
  a2[4] = result;
  *a2 = v6;
  return result;
}

uint64_t sub_216BE10A8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for JSRestrictionsController();
  v3 = objc_allocWithZone(v2);

  v4 = sub_2167B2328();
  a1[3] = v2;
  result = sub_2166BF8B4(qword_280E36840, type metadata accessor for JSRestrictionsController);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_216BE1138@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for JSFindFriendsContactsProvider();
  v3 = objc_allocWithZone(v2);

  v4 = sub_216ED8294();
  a1[3] = v2;
  result = sub_2166BF8B4(&qword_27CAC5440, type metadata accessor for JSFindFriendsContactsProvider);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_216BE11C8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for JSUserSocialProfileCoordinator(0);
  v3 = objc_allocWithZone(v2);

  v5 = sub_2166EEDE0(v4);
  a1[3] = v2;
  result = sub_2166BF8B4(&qword_27CAC5438, type metadata accessor for JSUserSocialProfileCoordinator);
  a1[4] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_216BE1258@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for JSCloudLibraryStatusProvider();
  v3 = objc_allocWithZone(v2);

  v4 = sub_216ECD808();
  a1[3] = v2;
  result = sub_2166BF8B4(&qword_27CAC5430, type metadata accessor for JSCloudLibraryStatusProvider);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_216BE1330@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, void (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  v7 = a1(0);
  v8 = [objc_allocWithZone(v7) init];
  a4[3] = v7;
  result = sub_2166BF8B4(a2, a3);
  a4[4] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_216BE13B0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for JSSharedWithYouHighlightsProvider();
  v3 = objc_allocWithZone(v2);

  v4 = sub_216E2CD44();
  a1[3] = v2;
  result = sub_2166BF8B4(&qword_280E2F1F0, type metadata accessor for JSSharedWithYouHighlightsProvider);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_216BE1440@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for JSLibraryImportDataProvider();
  v3 = objc_allocWithZone(v2);

  v4 = sub_21699C974();
  a1[3] = v2;
  result = sub_2166BF8B4(&qword_27CAC5428, type metadata accessor for JSLibraryImportDataProvider);
  a1[4] = result;
  *a1 = v4;
  return result;
}

id sub_216BE14D0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_21700CCB4();
  v7 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216697664(v6, &qword_27CAB7D20);
  }

  else
  {
    v8 = sub_21700D3D4();
    (*(*(v7 - 8) + 8))(v6, v7);
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (qword_280E40F40 != -1)
  {
    swift_once();
  }

  v9 = sub_217007CA4();
  __swift_project_value_buffer(v9, qword_280E40F48);
  v10 = sub_217007C84();
  v11 = sub_21700ED84();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_216679000, v10, v11, "Bundle manifest is missing.", v12, 2u);
    MEMORY[0x21CEA1440](v12, -1, -1);
  }

  v8 = 0;
LABEL_9:
  v13 = objc_allocWithZone(type metadata accessor for JSBundleObject());

  result = sub_216C38F04(v8, a1);
  *a2 = result;
  return result;
}

unint64_t sub_216BE16E8()
{
  result = qword_27CAC5410;
  if (!qword_27CAC5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5410);
  }

  return result;
}

uint64_t sub_216BE173C()
{
  OUTLINED_FUNCTION_82_0();
  v2 = v1;
  v4 = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94C8) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_2166AB4A4;

  return sub_216BDE184(v4, v7, v8, v9, v10, v0 + v6, v11);
}

unint64_t sub_216BE187C()
{
  result = qword_280E29D78;
  if (!qword_280E29D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D78);
  }

  return result;
}

uint64_t sub_216BE18C0()
{
  OUTLINED_FUNCTION_33();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_32(v1);

  return sub_216BE0160(v3, v4);
}

uint64_t sub_216BE1948()
{
  OUTLINED_FUNCTION_33();
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_36_32(v1);

  return sub_216BE04E0(v3, v4);
}

unint64_t sub_216BE1A18()
{
  result = qword_280E2A310;
  if (!qword_280E2A310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A310);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JSStackBootstrap.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_216BE1B48()
{
  result = qword_27CAC5480;
  if (!qword_27CAC5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5480);
  }

  return result;
}

uint64_t type metadata accessor for PlayLaterAction()
{
  result = qword_280E42560;
  if (!qword_280E42560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216BE1C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v48 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v55 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v53 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v49 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v46 = v17;
  MEMORY[0x28223BE20](v18);
  v19 = type metadata accessor for PlayLaterAction();
  *(a3 + *(v19 + 36)) = -127;
  v47 = v19;
  v20 = *(v19 + 40);
  v51 = a3;
  *(a3 + v20) = 0;
  v21 = a1;
  sub_21700CE04();
  v22 = v56;
  v54 = v7;
  v50 = *(v7 + 16);
  v50(v12, v56, v5);
  v23 = v52;
  sub_21700D224();
  if (v23)
  {
    (*(v54 + 8))(v22, v5);
    return (*(v53 + 8))(v21, v55);
  }

  else
  {
    v25 = *(v46 + 32);
    v52 = 0;
    v26 = v51;
    v25();
    v27 = v49;
    sub_21700CE04();
    v28 = v48;
    v45 = v5;
    v50(v48, v22, v5);
    sub_216AC609C();
    v29 = v47;
    *(v26 + *(v47 + 20)) = v30;
    sub_21700CE04();
    v31 = sub_21700CDB4();
    v33 = v32;
    v53 = *(v53 + 8);
    (v53)(v27, v55);
    v34 = (v26 + *(v29 + 24));
    *v34 = v31;
    v34[1] = v33;
    type metadata accessor for ContentDescriptor();
    sub_21700CE04();
    v35 = v45;
    v50(v28, v56, v45);
    sub_216BE2148(qword_280E40390, type metadata accessor for ContentDescriptor);
    v36 = v51;
    sub_21700D734();
    sub_21700CE04();
    v37 = sub_21700CDB4();
    v39 = v38;
    (*(v54 + 8))(v56, v35);
    v40 = v21;
    v41 = v55;
    v42 = v53;
    (v53)(v40, v55);
    result = v42(v27, v41);
    v43 = (v36 + *(v29 + 32));
    *v43 = v37;
    v43[1] = v39;
  }

  return result;
}

uint64_t sub_216BE20F0(uint64_t a1)
{
  result = sub_216BE2148(qword_280E42580, type metadata accessor for PlayLaterAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BE2148(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for RecentSearchListView(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216BE2288@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217006784();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216BE22B4@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  sub_2170086D4();
  OUTLINED_FUNCTION_1();
  v31 = v2;
  v32 = v3;
  MEMORY[0x28223BE20](v2);
  v30 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  v6 = OUTLINED_FUNCTION_2(v5);
  v29[1] = v7;
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54C0);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v17 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v29 - v19;
  v34 = *v1;
  type metadata accessor for RecentSearchesContentView();
  sub_216BE50AC(&unk_280E35228, type metadata accessor for RecentSearchesContentView);
  sub_217009ED4();
  v21 = sub_2170098A4();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v21);
  v22 = *(v13 + 32);
  v22(v17, v20, v11);
  sub_2167A4788();
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  v22((v24 + v23), v17, v11);
  sub_2167A4788();
  v35 = sub_216BE2818;
  v36 = v24;
  v25 = v30;
  sub_2170086C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54C8);
  OUTLINED_FUNCTION_21_7();
  sub_2166D9530(v26, &qword_27CAC54C8);
  v27 = v31;
  sub_21700ABC4();
  (*(v32 + 8))(v25, v27);
}

uint64_t sub_216BE2668@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for RecentSearchesContentView();
  v5 = a2 + v4[5];
  type metadata accessor for UnifiedMessagesRequestState(0);
  sub_216BE50AC(&qword_280E32C90, type metadata accessor for UnifiedMessagesRequestState);
  *v5 = sub_2170080F4();
  v5[8] = v6 & 1;
  v7 = a2 + v4[6];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = (a2 + v4[7]);
  sub_217006A14();
  sub_216BE50AC(&unk_280E4A430, MEMORY[0x277D2A6E8]);
  result = sub_217008CF4();
  *v8 = result;
  v8[1] = v10;
  *(a2 + v4[8]) = a1 & 1;
  return result;
}

uint64_t type metadata accessor for RecentSearchesContentView()
{
  result = qword_280E35218;
  if (!qword_280E35218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216BE2818()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54C0);
  OUTLINED_FUNCTION_2(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  OUTLINED_FUNCTION_36(v1);

  return sub_21687C558();
}

uint64_t sub_216BE2908@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54D8);
  OUTLINED_FUNCTION_1();
  v98 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v99 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_70(&v85 - v6);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54E0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v102 = v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54E8);
  OUTLINED_FUNCTION_1();
  v94 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54F0);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v96 = v14;
  MEMORY[0x28223BE20](v15);
  v105 = &v85 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54F8);
  OUTLINED_FUNCTION_36(v17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v19);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5500);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5508);
  OUTLINED_FUNCTION_1();
  v90 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v25);
  v26 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5510);
  v33 = OUTLINED_FUNCTION_36(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v95 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v85 - v36;
  v38 = type metadata accessor for RecentSearchesContentView();
  v39 = v1;
  v40 = v1 + v38[6];
  v41 = *v40;
  if (*(v40 + 8) == 1)
  {
    if ((v41 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {

    sub_21700ED94();
    v42 = sub_217009C34();
    v87 = v26;
    v43 = v42;
    OUTLINED_FUNCTION_11_69();

    v26 = v87;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v41, 0);
    (*(v28 + 8))(v31, v26);
    if (LOBYTE(__src[0]) != 1)
    {
LABEL_14:
      v51 = 1;
      goto LABEL_15;
    }
  }

  v86 = v31;
  if (*(v39 + v38[8]))
  {
    v44 = sub_21700F7D4();

    if ((v44 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v45 = v39 + v38[5];
  v46 = *v45;
  v47 = *(v45 + 8);

  if ((v47 & 1) == 0)
  {
    sub_21700ED94();
    v48 = sub_217009C34();
    OUTLINED_FUNCTION_11_69();

    v49 = v86;
    sub_2170090E4();
    OUTLINED_FUNCTION_8();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v28 + 8))(v49, v26);
    v46 = __src[0];
  }

  if (!v46)
  {
    goto LABEL_14;
  }

  v50 = sub_216DE0D74();

  v51 = 1;
  if (v50)
  {
    v52 = sub_2170091A4();
    v53 = v89;
    *v89 = v52;
    v53[1] = 0;
    *(v53 + 16) = 0;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5538) + 44);
    v87 = v22;
    v55 = v53 + v54;
    v56 = _s15InlineBubbleTipVMa();
    v86 = v38;
    v57 = *(v56 + 24);
    *&v55[v57] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858);
    swift_storeEnumTagMultiPayload();
    v58 = *(v56 + 28);
    *&v55[v58] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
    swift_storeEnumTagMultiPayload();
    *v55 = v50;
    v55[8] = 0;
    v59 = &v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5540) + 36)];
    v22 = v87;
    *v59 = sub_216AEB094;
    v59[1] = 0;

    sub_21700B3B4();
    sub_217008BB4();
    v60 = v92;
    sub_2167A4788();
    memcpy((v60 + *(v91 + 36)), __src, 0x70uLL);
    sub_217008344();
    sub_216BE50F4();
    v61 = v88;
    v38 = v86;
    sub_21700A624();

    sub_216697664(v60, &qword_27CAC5500);
    (*(v90 + 32))(v37, v61, v22);
    v51 = 0;
  }

LABEL_15:
  __swift_storeEnumTagSinglePayload(v37, v51, 1, v22);
  if (*(v39 + v38[7]))
  {

    v62 = sub_217006994();

    v63 = *(v62 + 16);

    v64 = 1;
    if (v63)
    {
      v65 = sub_2170091A4();
      v66 = v102;
      *v102 = v65;
      v66[1] = 0;
      *(v66 + 16) = 0;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5518);
      sub_216BE34C4(v39, v66 + *(v67 + 44));
      KeyPath = swift_getKeyPath();
      v69 = v66 + *(v103 + 36);
      *v69 = 1;
      *(v69 + 1) = KeyPath;
      *(v69 + 2) = 0;
      *(v69 + 3) = 0;
      *(v69 + 4) = 0;
      v69[40] = 0;
      if (qword_280E35238 != -1)
      {
        swift_once();
      }

      v70 = sub_217008AD4();
      __swift_project_value_buffer(v70, qword_27CAC54A8);
      sub_216BE4F4C();
      sub_216BE50AC(&qword_280E2AD60, MEMORY[0x277CDDB18]);
      v71 = v93;
      v72 = v102;
      sub_21700A364();
      sub_216697664(v72, &qword_27CAC54E0);
      (*(v94 + 32))(v105, v71, v104);
      v64 = 0;
    }

    v73 = __swift_storeEnumTagSinglePayload(v105, v64, 1, v104);
    MEMORY[0x28223BE20](v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5528);
    sub_216BE5028();
    v74 = v97;
    sub_21700B1B4();
    v104 = v37;
    v75 = v95;
    sub_2166A6EA4();
    v76 = v96;
    sub_2166A6EA4();
    v77 = v98;
    v78 = *(v98 + 16);
    v79 = v99;
    v80 = v101;
    v78(v99, v74, v101);
    v81 = v100;
    sub_2166A6EA4();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5530);
    sub_2166A6EA4();
    v78(v81 + *(v82 + 64), v79, v80);
    v83 = *(v77 + 8);
    v83(v74, v80);
    sub_216697664(v105, &qword_27CAC54F0);
    sub_216697664(v104, &qword_27CAC5510);
    v83(v79, v80);
    sub_216697664(v76, &qword_27CAC54F0);
    return sub_216697664(v75, &qword_27CAC5510);
  }

  else
  {
    sub_217006A14();
    sub_216BE50AC(&unk_280E4A430, MEMORY[0x277D2A6E8]);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216BE34C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v34[-v4];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5570);
  MEMORY[0x28223BE20](v38);
  v39 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v34[-v7];
  sub_216983738(225);
  if (qword_280E35270 != -1)
  {
    swift_once();
  }

  v9 = sub_21700A094();
  v11 = v10;
  v13 = v12;

  sub_217009DE4();
  v14 = sub_217009FA4();
  v16 = v15;
  v18 = v17;
  sub_21678817C(v9, v11, v13 & 1);

  sub_21700AD14();
  v19 = sub_21700A034();
  v21 = v20;
  v35 = v22;
  v24 = v23;

  sub_21678817C(v14, v16, v18 & 1);

  v25 = v36;
  sub_216C0C900();
  sub_216B12098(v25, v8);
  sub_216697664(v25, &qword_27CAB8600);
  v26 = v38;
  v27 = *(v38 + 44);
  v28 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v8 + v27, 1, 1, v28);
  v29 = *(v26 + 48);
  *(v8 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v30 = v8 + *(v26 + 52);
  *v30 = swift_getKeyPath();
  v30[40] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[5] = sub_216BE3858;
  v8[6] = 0;
  v31 = v39;
  sub_216BE5340(v8, v39);
  *a2 = v19;
  *(a2 + 8) = v21;
  LOBYTE(v30) = v35 & 1;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v24;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5578);
  sub_216BE5340(v31, a2 + *(v32 + 64));
  sub_216777114(v19, v21, v30);
  sub_21700DF14();
  sub_216697664(v8, &qword_27CAC5570);
  sub_216697664(v31, &qword_27CAC5570);
  sub_21678817C(v19, v21, v30);
}

uint64_t sub_216BE3858@<X0>(uint64_t a1@<X8>)
{
  sub_216983738(49);
  sub_217009D44();
  v2 = sub_21700A094();
  v4 = v3;
  v6 = v5;

  if (qword_280E35248 != -1)
  {
    swift_once();
  }

  v7 = sub_217009FA4();
  v9 = v8;
  v11 = v10;
  sub_21678817C(v2, v4, v6 & 1);

  if (qword_280E35260 != -1)
  {
    swift_once();
  }

  v12 = sub_21700A034();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_21678817C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_216BE39EC()
{
  v1 = v0;
  v2 = type metadata accessor for RecentSearchesContentView();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5558);
  MEMORY[0x28223BE20](v4);
  if (*(v1 + *(v3 + 36)))
  {

    sub_217006994();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5560);
    sub_2166D9530(&qword_280E2A048, &qword_27CAC5560);
    sub_2170075C4();
    swift_getKeyPath();
    sub_216BE5238();
    v5 = swift_allocObject();
    sub_216BE52E8();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_216BE51AC;
    *(v6 + 24) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5F8);
    sub_2166D9530(&qword_280E48618, &qword_27CAC5558);
    sub_2166C32C0();
    sub_21687D8BC();
    return sub_21700B154();
  }

  else
  {
    sub_217006A14();
    sub_216BE50AC(&unk_280E4A430, MEMORY[0x277D2A6E8]);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216BE3D1C(uint64_t a1)
{
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for RecentSearchesContentView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v3 + 8))(v5, v2);
    v7 = v12[1];
  }

  if (!v7)
  {
    return 0;
  }

  v10 = sub_216DE0D74();

  if (!v10)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_216BE3EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v139 = a2;
  v140 = a1;
  v141 = a3;
  v138 = sub_21700DAF4();
  v136 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v133 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for TopSearchLockupView(0);
  MEMORY[0x28223BE20](v131);
  v132 = (&v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90B0);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v134 = &v109 - v5;
  v124 = sub_2170069D4();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v142 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v7 - 8);
  v130 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v125 = &v109 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v11 - 8);
  v126 = &v109 - v12;
  v13 = sub_2170067A4();
  v109 = *(v13 - 8);
  v14 = v109;
  MEMORY[0x28223BE20](v13);
  v128 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v120 = &v109 - v17;
  MEMORY[0x28223BE20](v18);
  v110 = &v109 - v19;
  MEMORY[0x28223BE20](v20);
  v111 = &v109 - v21;
  MEMORY[0x28223BE20](v22);
  v115 = &v109 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v109 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v109 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v109 - v31;
  v112 = type metadata accessor for TopSearchLockup();
  MEMORY[0x28223BE20](v112);
  v127 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v109 - v35;
  MEMORY[0x28223BE20](v37);
  v129 = &v109 - v38;
  sub_2170069C4();
  v39 = sub_217006784();
  v41 = v40;
  v42 = *(v14 + 8);
  v42(v32, v13);
  *&v146 = v39;
  *(&v146 + 1) = v41;
  sub_2166C32C0();
  sub_21700F364();
  sub_216B45CF0();
  sub_2170069C4();
  sub_216DF8148();
  v122 = v43;
  v121 = v44;
  v42(v29, v13);
  sub_2170069C4();
  v119 = sub_216C74700();
  v118 = v45;
  v42(v26, v13);
  v46 = v115;
  sub_2170069C4();
  sub_216DF6318();
  v117 = v47;
  v116 = v48;
  v42(v46, v13);
  v115 = sub_216B45BAC();
  v114 = v49;
  v50 = v111;
  sub_2170069C4();
  v113 = sub_216C75FE8();
  v51 = v13;
  v42(v50, v13);
  v52 = v110;
  sub_2170069C4();
  v53 = (*(v109 + 88))(v52, v13);
  if (v53 == *MEMORY[0x277D2A400])
  {
    LODWORD(v111) = 0;
    v54 = v126;
    v55 = v123;
    v56 = v112;
    goto LABEL_12;
  }

  v54 = v126;
  v55 = v123;
  v56 = v112;
  if (v53 == *MEMORY[0x277D2A418])
  {
    goto LABEL_4;
  }

  if (v53 != *MEMORY[0x277D2A438] && v53 != *MEMORY[0x277D2A3C8])
  {
    if (v53 != *MEMORY[0x277D2A428])
    {
      if (v53 == *MEMORY[0x277D2A388] || v53 == *MEMORY[0x277D2A408])
      {
        goto LABEL_11;
      }

      if (v53 == *MEMORY[0x277D2A3B0] || v53 == *MEMORY[0x277D2A3B8])
      {
        goto LABEL_30;
      }

      if (v53 == *MEMORY[0x277D2A440] || v53 == *MEMORY[0x277D2A450])
      {
        goto LABEL_11;
      }

      if (v53 != *MEMORY[0x277D2A3C0] && v53 != *MEMORY[0x277D2A3D0])
      {
        if (v53 == *MEMORY[0x277D2A3F8] || v53 == *MEMORY[0x277D2A430])
        {
          goto LABEL_11;
        }

        if (v53 != *MEMORY[0x277D2A458] && v53 != *MEMORY[0x277D2A448])
        {
          if (v53 != *MEMORY[0x277D2A420] && v53 != *MEMORY[0x277D2A3D8])
          {
            v57 = 2 * (v53 == *MEMORY[0x277D2A3E0]);
            goto LABEL_5;
          }

          goto LABEL_11;
        }

LABEL_30:
        v57 = 2;
        goto LABEL_5;
      }
    }

LABEL_4:
    v57 = 1;
LABEL_5:
    LODWORD(v111) = v57;
    goto LABEL_12;
  }

LABEL_11:
  LODWORD(v111) = 0;
LABEL_12:
  v42(v52, v51);
  sub_216B45ED4();
  v59 = v120;
  sub_2170069C4();
  sub_216DF87BC();
  v42(v59, v51);
  v60 = sub_21700D7A4();
  v61 = 1;
  __swift_storeEnumTagSinglePayload(v125, 1, 1, v60);
  v62 = v142;
  sub_2170069E4();
  v63 = v124;
  v64 = (*(v55 + 88))(v62, v124);
  if (v64 != *MEMORY[0x277D2A6A8])
  {
    if (v64 == *MEMORY[0x277D2A6B0])
    {
      v61 = 0;
    }

    else
    {
      (*(v55 + 8))(v142, v63);
    }
  }

  v65 = &v36[v56[5]];
  v66 = v150;
  *v65 = v149;
  *(v65 + 1) = v66;
  *(v65 + 4) = v151;
  v67 = &v36[v56[6]];
  *(v67 + 4) = v148;
  v68 = v147;
  *v67 = v146;
  *(v67 + 1) = v68;
  v69 = &v36[v56[8]];
  v70 = v118;
  *v69 = v119;
  v69[1] = v70;
  v71 = &v36[v56[9]];
  v72 = v116;
  *v71 = v117;
  *(v71 + 1) = v72;
  v73 = &v36[v56[10]];
  v74 = v114;
  *v73 = v115;
  *(v73 + 1) = v74;
  v36[v56[11]] = v113 & 1;
  sub_2167A4788();
  v75 = &v36[v56[12]];
  *(v75 + 4) = 0;
  *v75 = 0u;
  *(v75 + 1) = 0u;
  v76 = &v36[v56[13]];
  *(v76 + 4) = 0;
  *v76 = 0u;
  *(v76 + 1) = 0u;
  v36[v56[14]] = v111;
  v77 = &v36[v56[17]];
  v78 = v144;
  *v77 = v143;
  *(v77 + 1) = v78;
  *(v77 + 4) = v145;
  v79 = v56[18];
  v80 = type metadata accessor for ContentDescriptor();
  __swift_storeEnumTagSinglePayload(&v36[v79], 1, 1, v80);
  v81 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v54, 1, v81) == 1)
  {
    sub_216697664(v54, &qword_27CAB6D60);
    v82 = v56[19];
    v83 = type metadata accessor for LockupArtwork();
    v84 = &v36[v82];
    v85 = 1;
  }

  else
  {
    v86 = v56[19];
    sub_216BE52E8();
    v87 = type metadata accessor for LockupArtwork();
    swift_storeEnumTagMultiPayload();
    v84 = &v36[v86];
    v85 = 0;
    v83 = v87;
  }

  __swift_storeEnumTagSinglePayload(v84, v85, 1, v83);
  v36[v56[15]] = 1;
  v88 = &v36[v56[7]];
  v89 = v121;
  *v88 = v122;
  *(v88 + 1) = v89;
  v36[v56[16]] = v61;
  v90 = v129;
  sub_216BE52E8();
  sub_216BE5238();
  sub_2170069C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF980);
  swift_allocObject();
  sub_216DC2A50();
  v91 = v132;
  sub_2168027B0(v92, v132);
  v93 = v130;
  sub_216B461A0();
  __swift_storeEnumTagSinglePayload(v93, 0, 1, v60);
  v94 = v133;
  sub_21700DAE4();
  sub_216BE50AC(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
  v95 = v134;
  v96 = v140;
  sub_21700A1C4();
  (*(v136 + 8))(v94, v138);
  sub_216697664(v93, &qword_27CAB6D58);
  sub_216BE5290(v91, type metadata accessor for TopSearchLockupView);
  LOBYTE(v94) = sub_216BE3D1C(v139);
  sub_216BE5290(v90, type metadata accessor for TopSearchLockup);
  v97 = v94 & (v96 == 0);
  KeyPath = swift_getKeyPath();
  v99 = v141;
  (*(v135 + 32))(v141, v95, v137);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5F8);
  v101 = v99 + *(result + 36);
  *v101 = v97;
  *(v101 + 8) = KeyPath;
  *(v101 + 16) = 0;
  *(v101 + 24) = 0;
  *(v101 + 32) = 0;
  *(v101 + 40) = 0;
  return result;
}

uint64_t sub_216BE4C6C(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5568);
  return a2(v4, &a1[*(v5 + 48)]);
}

void sub_216BE4D00()
{
  sub_2166B44E8(319, &qword_280E2B440, &qword_27CAB8600);
  if (v0 <= 0x3F)
  {
    sub_2166B44E8(319, &qword_280E2B498, &qword_27CAC54D0);
    if (v1 <= 0x3F)
    {
      sub_2166DB904();
      if (v2 <= 0x3F)
      {
        sub_216BE4DEC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216BE4DEC()
{
  if (!qword_280E2AC88)
  {
    sub_217006A14();
    sub_216BE50AC(&unk_280E4A430, MEMORY[0x277D2A6E8]);
    v0 = sub_217008D04();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2AC88);
    }
  }
}

uint64_t sub_216BE4E9C()
{
  v0 = sub_217008AD4();
  __swift_allocate_value_buffer(v0, qword_27CAC54A8);
  __swift_project_value_buffer(v0, qword_27CAC54A8);
  return sub_217008AC4();
}

uint64_t sub_216BE4EE8()
{
  result = sub_217009D54();
  qword_280E35278 = result;
  return result;
}

uint64_t sub_216BE4F08()
{
  result = sub_217009DE4();
  qword_280E35250 = v1;
  return result;
}

uint64_t sub_216BE4F28()
{
  result = sub_21700AC54();
  qword_280E35268 = result;
  return result;
}

unint64_t sub_216BE4F4C()
{
  result = qword_280E2B0C0;
  if (!qword_280E2B0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC54E0);
    sub_2166D9530(&qword_280E2A550, &qword_27CAC5520);
    sub_21681FA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0C0);
  }

  return result;
}

unint64_t sub_216BE5028()
{
  result = qword_280E2A4D8;
  if (!qword_280E2A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5528);
    sub_21687D8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A4D8);
  }

  return result;
}

uint64_t sub_216BE50AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216BE50F4()
{
  result = qword_27CAC5548;
  if (!qword_27CAC5548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5500);
    sub_2166D9530(&qword_27CAC5550, &qword_27CAC54F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5548);
  }

  return result;
}

uint64_t sub_216BE51AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RecentSearchesContentView();
  OUTLINED_FUNCTION_36(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_216BE3EA0(a1, v7, a2);
}

uint64_t sub_216BE5238()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216BE5290(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BE52E8()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216BE5340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BE53B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47[1] = a7;
  v48 = a1;
  v49 = a3;
  v52 = a2;
  v56 = a8;
  v53 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v50 = v14 - v13;
  v15 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_77();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v47 - v26;
  v54 = a4;
  v55 = a6;
  v57 = a4;
  v58 = a6;
  v28 = OUTLINED_FUNCTION_1_165();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  (*(v17 + 16))(v20, v48, v15);
  if (__swift_getEnumTagSinglePayload(v20, 1, a5) == 1)
  {
    (*(v17 + 8))(v20, v15);
  }

  else
  {
    sub_21700E334();
    (*(*(a5 - 8) + 8))(v20, a5);
    v36 = sub_21700D7A4();
    if (__swift_getEnumTagSinglePayload(v24, 1, v36) != 1)
    {
      sub_216BE5AD4(v49 & 1, v27);
      (*(*(v36 - 8) + 8))(v24, v36);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v36);
      goto LABEL_7;
    }

    sub_2167B0250(v24);
  }

  v37 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v37);
LABEL_7:
  v38 = v50;
  sub_21700DAE4();
  v40 = v54;
  v39 = v55;
  sub_21700A1C4();
  (*(v51 + 8))(v38, v53);
  sub_2167B0250(v27);
  v57 = v40;
  v58 = v39;
  v41 = OUTLINED_FUNCTION_2_131();
  OUTLINED_FUNCTION_5_97(v41);
  v42 = *(v30 + 8);
  v42(v34, v28);
  v43 = OUTLINED_FUNCTION_6_86();
  sub_2166C24DC(v43, v44, v27);
  v45 = OUTLINED_FUNCTION_6_86();
  return (v42)(v45);
}

uint64_t sub_216BE57CC@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v37[1] = a4;
  v38 = a2;
  v43 = a6;
  v44 = a1;
  sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v39 = v9;
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_77();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v37 - v18;
  v41 = a3;
  v42 = a5;
  v45 = a3;
  v46 = a5;
  v20 = OUTLINED_FUNCTION_1_165();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  sub_21700E334();
  v28 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v16, 1, v28) == 1)
  {
    sub_2167B0250(v16);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v28);
  }

  else
  {
    sub_216BE5AD4(v38 & 1, v19);
    (*(*(v28 - 8) + 8))(v16, v28);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v28);
  }

  sub_21700DAE4();
  v30 = v41;
  v29 = v42;
  sub_21700A1C4();
  (*(v39 + 8))(v12, v40);
  sub_2167B0250(v19);
  v45 = v30;
  v46 = v29;
  v31 = OUTLINED_FUNCTION_2_131();
  OUTLINED_FUNCTION_5_97(v31);
  v32 = *(v22 + 8);
  v32(v26, v20);
  v33 = OUTLINED_FUNCTION_6_86();
  sub_2166C24DC(v33, v34, v29);
  v35 = OUTLINED_FUNCTION_6_86();
  return (v32)(v35);
}

uint64_t sub_216BE5AD4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v5 = sub_21700D7A4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = *(v7 + 16);
  v12(v10 - v9, v2, v5);
  if (a1)
  {
    (*(v7 + 8))(v11, v5);
    return (v12)(a2, v2, v5);
  }

  else
  {
    v14 = sub_21700D794();
    sub_21700D754();
    v14(v15, 0);
    return (*(v7 + 32))(a2, v11, v5);
  }
}

void sub_216BE5C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_216BE6688();
  [v4 feedbackForHighlight:a3 withType:0 completionBlock:0];
}

void sub_216BE5C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_216BE6688();
  [v4 feedbackForHighlight:a3 withType:1 completionBlock:0];
}

void *sub_216BE5CE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__highlightByID;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7)
  {
    v8 = sub_2169355B4(a1, a2, v7);
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v12 = 0;
  }

  swift_endAccess();
  _s18HighlightViewModelCMa();
  swift_allocObject();
  v13 = sub_216921B8C(v8, v10, v12, v3);
  v14 = v3;
  return v13;
}

uint64_t sub_216BE5DB0()
{
  if ((*(v0 + OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_hasStarted) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider_hasStarted) = 1;
    return sub_216BE64C4();
  }

  return result;
}

id sub_216BE5DD0()
{
  result = [objc_opt_self() isEnabled];
  if (result)
  {
    return (sub_216E3D990() & 1);
  }

  return result;
}

uint64_t sub_216BE5E1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216BE5E90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_217007DF4();
}

uint64_t sub_216BE5EFC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_21700EA34();
  v8 = v1;
  v9 = sub_21700EA24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a1;
  v10[6] = ObjectType;
  sub_21677BBA0();
}

uint64_t sub_216BE6018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_21700EA34();
  v6[6] = sub_21700EA24();
  v8 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216BE60B4, v8, v7);
}

uint64_t sub_216BE60B4()
{
  v1 = *(v0 + 24);

  sub_21700DF14();
  v2 = v1;
  sub_216E11FEC();
  OUTLINED_FUNCTION_3();

  return v3();
}

void sub_216BE615C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__highlights;
  if (!*(a1 + OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__highlights))
  {
    if (!a2)
    {
      return;
    }

LABEL_6:
    v37 = v4;
    if (qword_280E43A08 != -1)
    {
LABEL_29:
      OUTLINED_FUNCTION_0_193();
      swift_once();
    }

    v6 = sub_217007CA4();
    __swift_project_value_buffer(v6, qword_27CAC5590);
    sub_21700DF14();
    v7 = sub_217007C84();
    v8 = sub_21700EDA4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = v9;
      *v9 = 134349056;
      if (v2)
      {
        v11 = *(v2 + 16);
      }

      else
      {
        v11 = 0;
      }

      *(v9 + 4) = v11;

      _os_log_impl(&dword_216679000, v7, v8, "Highlights changed, count: %{public}ld", v10, 0xCu);
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();

      if (!v2)
      {
        goto LABEL_24;
      }
    }

    else
    {

      if (!v2)
      {
LABEL_24:
        v34 = OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__highlightByID;
        OUTLINED_FUNCTION_9_77();
        *(v3 + v34) = 0;
LABEL_25:

        *(v3 + v37) = v2;
        swift_bridgeObjectRetain_n();

        sub_216BE5E90();
        return;
      }
    }

    v36 = v3;
    v12 = sub_21700E384();
    v13 = *(v2 + 16);
    v35 = v2;
    v2 += 48;
    if (v13)
    {
      do
      {
        v38 = v13;
        v15 = *(v2 - 16);
        v14 = *(v2 - 8);
        v16 = *v2;
        swift_bridgeObjectRetain_n();
        v17 = v16;
        swift_isUniquelyReferenced_nonNull_native();
        v18 = sub_2166AF66C(v15, v14);
        v20 = v12[2];
        v21 = (v19 & 1) == 0;
        v3 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v22 = v18;
        v23 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5638);
        if (sub_21700F554())
        {
          v24 = sub_2166AF66C(v15, v14);
          if ((v23 & 1) != (v25 & 1))
          {
            sub_21700F824();
            __break(1u);
            return;
          }

          v22 = v24;
        }

        if (v23)
        {
          v26 = (v12[7] + 24 * v22);
          v27 = v26[2];
          *v26 = v15;
          v26[1] = v14;
          v26[2] = v17;
        }

        else
        {
          v12[(v22 >> 6) + 8] |= 1 << v22;
          v28 = (v12[6] + 16 * v22);
          *v28 = v15;
          v28[1] = v14;
          v29 = (v12[7] + 24 * v22);
          *v29 = v15;
          v29[1] = v14;
          v29[2] = v17;

          v30 = v12[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_28;
          }

          v12[2] = v32;
        }

        v2 += 24;
        v13 = v38 - 1;
      }

      while (v38 != 1);
    }

    v33 = OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider__highlightByID;
    v3 = v36;
    OUTLINED_FUNCTION_9_77();
    *(v36 + v33) = v12;
    v2 = v35;
    goto LABEL_25;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  sub_216E21468();
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }
}

uint64_t sub_216BE64C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC5620);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-v3 - 8];
  v5 = sub_216BE6688();
  [v5 setDelegate_];

  sub_216BE6714(0xD000000000000010, 0x800000021708A7A0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C8);
  sub_216BE1A18();

  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return (*(v2 + 8))(v4, v1);
}

id sub_216BE6688()
{
  v1 = OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider____lazy_storage___highlightCenter;
  v2 = *(v0 + OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider____lazy_storage___highlightCenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO7MusicUI13SharedWithYou18HighlightsProvider____lazy_storage___highlightCenter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D63FE0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_216BE6714(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_21700EA34();
  v10 = v2;
  sub_21700DF14();
  v11 = sub_21700EA24();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = ObjectType;
  sub_21677E228();
}

uint64_t sub_216BE69AC()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC5590);
  __swift_project_value_buffer(v0, qword_27CAC5590);
  return sub_217007C94();
}

void sub_216BE6A2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_216BE6714(0xD00000000000001BLL, 0x800000021708A7C0);
  }
}

uint64_t sub_216BE6A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21700EA34();
  v6[5] = sub_21700EA24();
  v8 = sub_21700E9B4();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_216BE6B34, v8, v7);
}

uint64_t sub_216BE6B34()
{
  if (sub_216BE5DD0())
  {
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_216BE6CCC;
    v3 = v0[3];
    v2 = v0[4];

    return sub_216BE6EE4(v3, v2);
  }

  else
  {

    if (qword_280E43A08 != -1)
    {
      OUTLINED_FUNCTION_0_193();
      swift_once();
    }

    v5 = sub_217007CA4();
    __swift_project_value_buffer(v5, qword_27CAC5590);
    v6 = sub_217007C84();
    v7 = sub_21700EDA4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_216679000, v6, v7, "Clearing highlights, Shared with You disabled", v8, 2u);
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    sub_216BE5EFC(0);
    OUTLINED_FUNCTION_3();

    return v9();
  }
}

uint64_t sub_216BE6CCC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v8 + 72) = v7;
  *(v8 + 80) = v0;

  v9 = *(v2 + 56);
  v10 = *(v2 + 48);
  if (v0)
  {
    v11 = sub_216BE6E88;
  }

  else
  {
    v11 = sub_216BE6E08;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_216BE6E08()
{
  OUTLINED_FUNCTION_33();

  v1 = sub_216BE5DD0();
  v2 = *(v0 + 72);
  if ((v1 & 1) == 0)
  {

    v2 = 0;
  }

  sub_216BE5EFC(v2);
  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216BE6E88()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216BE6EE4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_216BE6F08, 0, 0);
}

uint64_t sub_216BE6F08()
{
  v12 = v0;
  if (qword_280E43A08 != -1)
  {
    OUTLINED_FUNCTION_0_193();
    swift_once();
  }

  v1 = sub_217007CA4();
  v0[22] = __swift_project_value_buffer(v1, qword_27CAC5590);
  sub_21700DF14();
  v2 = sub_217007C84();
  v3 = sub_21700EDA4();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2166A85FC(v5, v4, &v11);
    _os_log_impl(&dword_216679000, v2, v3, "Fetching highlights for %{public}s ...", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x21CEA1440]();
  }

  v8 = sub_216BE6688();
  v0[23] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_216BE7140;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5630);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_216BE7608;
  v0[13] = &block_descriptor_29;
  v0[14] = v9;
  [v8 fetchHighlights_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_216BE7140()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = sub_216BE759C;
  }

  else
  {
    v5 = sub_216BE7248;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_216BE7248()
{
  v31 = v0;
  v1 = *(v0 + 144);

  sub_21700DF14();
  v2 = sub_216BE76A0();
  v3 = sub_216A738DC(v2, v1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v8)
  {
    sub_21700F7E4();
    swift_unknownObjectRetain_n();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x277D84F90];
    }

    v12 = *(v11 + 16);

    if (!__OFSUB__(v9 >> 1, v7))
    {
      if (v12 == (v9 >> 1) - v7)
      {
        v5 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v5)
        {
          goto LABEL_10;
        }

        v5 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_216A73CCC(v3, v5, v7, v9);
    v5 = v10;
LABEL_9:
    swift_unknownObjectRelease();
LABEL_10:
    sub_21700DF14();

    v13 = sub_217007C84();
    v7 = sub_21700EDA4();
    if (os_log_type_enabled(v13, v7))
    {
      v9 = swift_slowAlloc();
      *v9 = 134349312;
      v14 = sub_2166BF3C8(v1);

      *(v9 + 4) = v14;

      *(v9 + 12) = 2050;
      *(v9 + 14) = sub_2166BF3C8(v5);

      _os_log_impl(&dword_216679000, v13, v7, "Fetched %{public}ld highlights, limited to %{public}ld", v9, 0x16u);
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x21CEA1440]();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v15 = sub_2166BF3C8(v5);
    if (!v15)
    {

      v17 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }

    v1 = v15;
    v30 = MEMORY[0x277D84F90];
    v3 = &v30;
    sub_216AB9D3C(0, v15 & ~(v15 >> 63), 0);
    if ((v1 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_unknownObjectRelease();
  }

  v29 = v0;
  v16 = 0;
  v17 = v30;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x21CEA0220](v16, v5);
    }

    else
    {
      v18 = *(v5 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = [v18 identifier];
    v21 = sub_21700E514();
    v23 = v22;

    v30 = v17;
    v25 = *(v17 + 16);
    v24 = *(v17 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_216AB9D3C(v24 > 1, v25 + 1, 1);
      v17 = v30;
    }

    ++v16;
    *(v17 + 16) = v25 + 1;
    v26 = (v17 + 24 * v25);
    v26[4] = v21;
    v26[5] = v23;
    v26[6] = v19;
  }

  while (v1 != v16);

  v0 = v29;
LABEL_24:
  if (!*(v17 + 16))
  {

    v17 = 0;
  }

  v27 = *(v0 + 8);

  return v27(v17);
}

uint64_t sub_216BE759C()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216BE7608(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_216A2E2E0(v4, v5);
  }

  else
  {
    sub_216A73F14();
    v7 = sub_21700E824();

    return sub_2166A7FB0(v4, v7);
  }
}

uint64_t sub_216BE76A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA28);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v4 = sub_21700E4D4();
  sub_21700DF54();

  sub_21700DFA4();
  (*(v1 + 8))(v3, v0);
  return v6[1];
}

uint64_t sub_216BE791C()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_3_124(v3);

  return sub_216BE6A98(v4, v5, v6, v7, v8, v2);
}

uint64_t sub_216BE7A04()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_3_124(v3);

  return sub_216BE6018(v4, v5, v6, v7, v8, v2);
}

uint64_t sub_216BE7ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v47 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v46 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  sub_21700D7A4();
  sub_21700CE04();
  v43 = *(v46 + 16);
  v44 = v4;
  v45 = v46 + 16;
  v43(v8, v50, v4);
  v38 = v8;
  sub_21700D734();
  sub_21700CE04();
  v16 = sub_21700CDB4();
  v18 = v17;
  v19 = *(v11 + 8);
  v41 = v11 + 8;
  v42 = v9;
  v40 = v19;
  v19(v15, v9);
  if (v18)
  {
    v20 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
    v48 = v16;
    v49 = v18;
    sub_21700F364();
    type metadata accessor for ArtistLatestReleaseLockup();
    OUTLINED_FUNCTION_11_0();
    v21 = a1;
    sub_21700CE04();
    v22 = v38;
    v23 = v50;
    v24 = v44;
    v43(v38, v50, v44);
    v36 = v20;
    sub_216BE81B4(&qword_280E35C20, type metadata accessor for ArtistLatestReleaseLockup);
    OUTLINED_FUNCTION_69();
    sub_21700D734();
    v39 = _s7SectionV6HeaderVMa(0);
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    v25 = v43;
    v43(v22, v23, v24);
    v37 = sub_216BE81B4(&qword_27CAC5650, _s7SectionV6HeaderVMa);
    v26 = v47;
    OUTLINED_FUNCTION_69();
    sub_21700D734();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5648);
    sub_21700CE04();
    v27 = v44;
    v25(v22, v23, v44);
    v28 = v25;
    sub_216BE8100();
    OUTLINED_FUNCTION_69();
    sub_21700D734();
    *(v26 + *(v36 + 32)) = v48;
    OUTLINED_FUNCTION_11_0();
    sub_21700CE04();
    v29 = v50;
    v28(v22, v50, v27);
    OUTLINED_FUNCTION_69();
    sub_21700D734();
    (*(v46 + 8))(v29, v27);
    return v40(v21, v42);
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_216BE81B4(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup();
    *v33 = 25705;
    v33[1] = 0xE200000000000000;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v46 + 8))(v50, v44);
    v40(a1, v42);
    return sub_2167B0250(v47);
  }
}

unint64_t sub_216BE8100()
{
  result = qword_27CAC5658;
  if (!qword_27CAC5658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5648);
    sub_216BE81B4(&qword_280E44F98, type metadata accessor for TrackLockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5658);
  }

  return result;
}

uint64_t sub_216BE81B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216BE820C(uint64_t a1, uint64_t a2)
{
  if (qword_280E464C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for MusicUINetworkConnectivityMonitor();
  sub_216BE82E0();

  v6[0] = sub_217008684();
  v6[1] = v4;
  MEMORY[0x21CE9B900](v6, a1, &type metadata for NetworkErrorOverlay, a2);
}

unint64_t sub_216BE82E0()
{
  result = qword_280E464A8;
  if (!qword_280E464A8)
  {
    type metadata accessor for MusicUINetworkConnectivityMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E464A8);
  }

  return result;
}

uint64_t sub_216BE8364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5660);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = sub_2166C129C() & 1;
  if (v8)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5668);
  (*(*(v10 - 8) + 16))(v7, a1, v10);
  *&v7[*(v5 + 44)] = v9;
  v11 = sub_21700B3B4();
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5670) + 36);
  sub_216BE84BC(v8, v14);
  v15 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5678) + 36));
  *v15 = v11;
  v15[1] = v13;
  return sub_216BE86D8(v7, a2);
}

uint64_t sub_216BE84BC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_217006384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5680);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  if (a1)
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  }

  else
  {
    v13 = sub_217006354();
    v15 = v14;
    sub_217006364();
    v16 = sub_217006374();
    (*(v5 + 8))(v7, v4);
    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_216BE8748(v13, v15, v16, 0);
    sub_217007574();
    (*(v9 + 32))(a2, v11, v8);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v8);
  }
}

uint64_t sub_216BE86D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_216BE8748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21700E4D4();

  if (a4)
  {
    v8 = sub_21700E344();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

unint64_t sub_216BE87F8()
{
  result = qword_280E2B020;
  if (!qword_280E2B020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5670);
    sub_216BE88B0();
    sub_2166D9530(&qword_280E2AD20, &qword_27CAC5678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B020);
  }

  return result;
}

unint64_t sub_216BE88B0()
{
  result = qword_280E2B1F8;
  if (!qword_280E2B1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5660);
    sub_2166D9530(&qword_280E2A868, &qword_27CAC5668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1F8);
  }

  return result;
}

void sub_216BE89B0()
{
  type metadata accessor for SocialFindFriendsController.Friend(319);
  if (v0 <= 0x3F)
  {
    sub_216A949B4();
    if (v1 <= 0x3F)
    {
      sub_216AF7568();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216BE8A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216BE8AB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC56B0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - v2;
  sub_216BE8BF4(v0, &v7 - v2);
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC56B8);
  sub_216BE9288();
  OUTLINED_FUNCTION_2_132();
  sub_216BED9F8(v4, &qword_27CAC56B8, &unk_2170517F0, v5);
  sub_21700AB44();
  return sub_216699778(v3, &qword_27CAC56B0);
}

uint64_t sub_216BE8BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a2;
  FriendContentView = type metadata accessor for InviteFindFriendContentView(0);
  MEMORY[0x28223BE20](FriendContentView);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC56F0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends - 8);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  v17 = type metadata accessor for FollowRequestFindFriendContentView(0);
  MEMORY[0x28223BE20](v17);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v35 - v21;
  if (*(a1 + 32) != 1)
  {
    sub_216BE9490(a1, v13, type metadata accessor for SocialFindFriendsController.Friend);
    v31 = *(a1 + *(type metadata accessor for SocialFindFriendsContactLockupView(0) + 20));
    if (v31)
    {
      sub_216BE9438(v13, v4, type metadata accessor for SocialFindFriendsController.Friend);
      *&v4[*(FriendContentView + 20)] = v31;
      sub_216BE9438(v4, v7, type metadata accessor for InviteFindFriendContentView);
      sub_216BE9490(v7, v10, type metadata accessor for InviteFindFriendContentView);
      swift_storeEnumTagMultiPayload();
      sub_216BE8A4C(&qword_27CAC56D8, type metadata accessor for FollowRequestFindFriendContentView);
      sub_216BE8A4C(&qword_27CAC56E0, type metadata accessor for InviteFindFriendContentView);
      v32 = v31;
      sub_217009554();
      v29 = type metadata accessor for InviteFindFriendContentView;
      v30 = v7;
      return sub_216BE94E8(v30, v29);
    }

    goto LABEL_8;
  }

  sub_216BE9490(a1, v16, type metadata accessor for SocialFindFriendsController.Friend);
  FriendsContactLockupView = type metadata accessor for SocialFindFriendsContactLockupView(0);
  v24 = *(a1 + *(FriendsContactLockupView + 20));
  if (!v24)
  {
LABEL_8:
    type metadata accessor for UserSocialProfileCoordinator();
    sub_216BE8A4C(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
    goto LABEL_10;
  }

  v25 = *(a1 + *(FriendsContactLockupView + 24));
  if (v25)
  {
    v26 = &v19[v17[5]];
    v37 = 6;
    v27 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B30);
    sub_21700AEA4();
    v28 = v39;
    *v26 = v38;
    *(v26 + 1) = v28;
    sub_216BE9490(v16, v19, type metadata accessor for SocialFindFriendsController.Friend);
    *&v19[v17[6]] = v27;
    *&v19[v17[7]] = v25;
    LOBYTE(v27) = sub_216F0706C();
    sub_216BE94E8(v16, type metadata accessor for SocialFindFriendsController.Friend);

    *v26 = v27;
    *(v26 + 1) = 0;
    sub_216BE9438(v19, v22, type metadata accessor for FollowRequestFindFriendContentView);
    sub_216BE9490(v22, v10, type metadata accessor for FollowRequestFindFriendContentView);
    swift_storeEnumTagMultiPayload();
    sub_216BE8A4C(&qword_27CAC56D8, type metadata accessor for FollowRequestFindFriendContentView);
    sub_216BE8A4C(&qword_27CAC56E0, type metadata accessor for InviteFindFriendContentView);
    sub_217009554();
    v29 = type metadata accessor for FollowRequestFindFriendContentView;
    v30 = v22;
    return sub_216BE94E8(v30, v29);
  }

  type metadata accessor for SocialGraphController();
  sub_216BE8A4C(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  v34 = v24;
LABEL_10:
  result = sub_217008CD4();
  __break(1u);
  return result;
}

double sub_216BE91EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21700B3B4();
  sub_2170083C4();
  sub_2166A6F60(a1, a2, &qword_27CAC56B0);
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC56B8) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

unint64_t sub_216BE9288()
{
  result = qword_27CAC56C0;
  if (!qword_27CAC56C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC56B0);
    sub_216BE930C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC56C0);
  }

  return result;
}

unint64_t sub_216BE930C()
{
  result = qword_27CAC56C8;
  if (!qword_27CAC56C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC56D0);
    sub_216BE8A4C(&qword_27CAC56D8, type metadata accessor for FollowRequestFindFriendContentView);
    sub_216BE8A4C(&qword_27CAC56E0, type metadata accessor for InviteFindFriendContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC56C8);
  }

  return result;
}

uint64_t sub_216BE9438(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216BE9490(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216BE94E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BE9568()
{
  result = type metadata accessor for SocialFindFriendsController.Friend(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UserSocialProfileCoordinator();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_216BE9614()
{
  type metadata accessor for SocialFindFriendsController.Friend(319);
  if (v0 <= 0x3F)
  {
    sub_216BE96C8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UserSocialProfileCoordinator();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SocialGraphController();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216BE96C8()
{
  if (!qword_280E2A5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0B30);
    v0 = sub_21700AEE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A5C0);
    }
  }
}

uint64_t sub_216BE9748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5808);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v40 - v7);
  v9 = type metadata accessor for ShareMusicItemAction();
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB968);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5810);
  MEMORY[0x28223BE20](v15 - 8);
  v48 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v40 - v18);
  *v19 = sub_21700B3D4();
  v19[1] = v20;
  v21 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5818) + 44);
  v41 = v19;
  sub_216BE9CDC(a1, v21);
  v45 = sub_2170093C4();
  v50 = 1;
  sub_216BEC6BC(a1, __src);
  memcpy(v51, __src, sizeof(v51));
  memcpy(v52, __src, sizeof(v52));
  sub_2166A6F60(v51, v53, &qword_27CAC0C08);
  sub_216699778(v52, &qword_27CAC0C08);
  memcpy(&v49[7], v51, 0x80uLL);
  v43 = v50;
  v22 = a1[5];
  v23 = a1[6];
  v24 = a1[7];
  v25 = a1[8];
  v44 = v14;
  sub_216BEA588(v22, v23, v24, v25, v14);
  sub_21700D234();
  sub_2166A6F60(v14, &v11[*(v9 + 20)], &qword_27CABB968);
  type metadata accessor for InviteFindFriendContentView(0);
  v42 = v11;
  sub_216CAF178();
  v8[3] = v9;
  v8[4] = sub_216BE8A4C(&qword_27CAB82E0, type metadata accessor for ShareMusicItemAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  sub_216BE9490(v11, boxed_opaque_existential_1, type metadata accessor for ShareMusicItemAction);
  v27 = v4[13];
  v28 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v8 + v27, 1, 1, v28);
  v29 = v4[14];
  *(v8 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v30 = v8 + v4[15];
  *v30 = swift_getKeyPath();
  v30[40] = 0;
  v8[7] = 0;
  v8[8] = 0;
  v8[5] = sub_216BEB3D4;
  v8[6] = 0;
  v31 = v48;
  sub_2166A6F60(v19, v48, &qword_27CAC5810);
  v32 = v46;
  sub_2166A6F60(v8, v46, &qword_27CAC5808);
  v33 = v31;
  v34 = v47;
  sub_2166A6F60(v33, v47, &qword_27CAC5810);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5820);
  v36 = v35[12];
  v37 = v45;
  v53[0] = v45;
  v53[1] = 0;
  LOBYTE(v19) = v43;
  LOBYTE(v53[2]) = v43;
  memcpy(&v53[2] + 1, v49, 0x87uLL);
  memcpy((v34 + v36), v53, 0x98uLL);
  v38 = v34 + v35[16];
  *v38 = 0x4024000000000000;
  *(v38 + 8) = 0;
  sub_2166A6F60(v32, v34 + v35[20], &qword_27CAC5808);
  sub_2166A6F60(v53, __src, &qword_27CAC57A0);
  sub_216699778(v8, &qword_27CAC5808);
  sub_216BE94E8(v42, type metadata accessor for ShareMusicItemAction);
  sub_216699778(v44, &qword_27CABB968);
  sub_216699778(v41, &qword_27CAC5810);
  sub_216699778(v32, &qword_27CAC5808);
  __src[0] = v37;
  __src[1] = 0;
  LOBYTE(__src[2]) = v19;
  memcpy(&__src[2] + 1, v49, 0x87uLL);
  sub_216699778(__src, &qword_27CAC57A0);
  return sub_216699778(v48, &qword_27CAC5810);
}

uint64_t sub_216BE9CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D00);
  MEMORY[0x28223BE20](v63);
  v58 = (&v58 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D08);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v58 - v7;
  v60 = sub_21700C444();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - v12;
  v59 = sub_217007474();
  v14 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57F8);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v61 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  sub_2166A6F60(a1 + *(Friends + 64), v13, &qword_27CABF770);
  sub_217007434();
  sub_21700C414();
  sub_2170073E4();
  (*(v8 + 8))(v10, v60);
  v27 = *(v14 + 8);
  v60 = v14 + 8;
  v28 = v59;
  v27(v16, v59);
  LOBYTE(v66[0]) = 18;
  v29 = *(a1 + *(Friends + 56));
  sub_21700DF14();
  v30 = sub_216E41068(v66, v29);
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v32;
  sub_2167C505C();
  sub_2170073F4();

  v27(v19, v28);
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76B8) + 36)] = 256;
  LOBYTE(v30) = sub_217009CD4();
  sub_217007F24();
  v34 = &v25[*(v21 + 44)];
  *v34 = v30;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  if (*(a1 + 34) == 1)
  {
    v39 = sub_21700B3B4();
    v40 = v58;
    *v58 = v39;
    *(v40 + 8) = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D28);
    sub_216BEA360((v40 + *(v42 + 44)));
    sub_21700B3B4();
    sub_2170083C4();
    v43 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D30) + 36));
    v44 = v66[1];
    *v43 = v66[0];
    v43[1] = v44;
    v43[2] = v66[2];
    v45 = sub_217009C84();
    v46 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D38) + 36);
    *v46 = v45;
    *(v46 + 8) = 0x403E000000000000;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0;
    *(v46 + 40) = 0;
    sub_21700ACC4();
    v47 = sub_21700AD04();

    v49 = v62;
    v48 = v63;
    v50 = v40 + *(v63 + 36);
    *v50 = v47;
    *(v50 + 8) = xmmword_21703B0A0;
    *(v50 + 24) = 0x4000000000000000;
    sub_2166DDCC0(v40, v49, &qword_27CAC0D00);
    v51 = 0;
    v52 = v48;
  }

  else
  {
    v51 = 1;
    v49 = v62;
    v52 = v63;
  }

  __swift_storeEnumTagSinglePayload(v49, v51, 1, v52);
  v53 = v61;
  sub_2166A6F60(v25, v61, &qword_27CAC57F8);
  v54 = v64;
  sub_2166A6F60(v49, v64, &qword_27CAC0D08);
  v55 = v65;
  sub_2166A6F60(v53, v65, &qword_27CAC57F8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5838);
  sub_2166A6F60(v54, v55 + *(v56 + 48), &qword_27CAC0D08);
  sub_216699778(v49, &qword_27CAC0D08);
  sub_216699778(v25, &qword_27CAC57F8);
  sub_216699778(v54, &qword_27CAC0D08);
  return sub_216699778(v53, &qword_27CAC57F8);
}

uint64_t sub_216BEA360@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v21 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v9 = sub_21700ADB4();
  v10 = sub_217009E64();
  v11 = swift_getKeyPath();
  v23 = v9;
  v24 = v11;
  v25 = v10;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250);
  sub_2167E947C();
  sub_21700A304();

  v12 = sub_21700ACE4();
  v13 = swift_getKeyPath();
  v14 = &v7[*(v2 + 44)];
  *v14 = v13;
  v14[1] = v12;
  sub_2166A6F60(v7, v4, &qword_27CAB8248);
  v16 = v21;
  v15 = v22;
  *v22 = KeyPath;
  v15[1] = v16;
  v17 = v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0D40);
  sub_2166A6F60(v4, v17 + *(v18 + 48), &qword_27CAB8248);

  sub_216699778(v7, &qword_27CAB8248);
  sub_216699778(v4, &qword_27CAB8248);
}

uint64_t sub_216BEA588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v133 = a3;
  v134 = a4;
  v135 = a2;
  v132 = a1;
  v141 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v6 - 8);
  v127 = &v112 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v8 - 8);
  v126 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v137 = &v112 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v12 - 8);
  v130 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v112 - v15;
  MEMORY[0x28223BE20](v17);
  v136 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE8);
  MEMORY[0x28223BE20](v19 - 8);
  v139 = &v112 - v20;
  v138 = type metadata accessor for SocialProfileDescriptor(0);
  MEMORY[0x28223BE20](v138);
  v128 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v131 = &v112 - v23;
  v24 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v24);
  v26 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v27 - 8);
  v125 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v129 = &v112 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v112 - v32;
  v34 = sub_217005EF4();
  v140 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v123 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v124 = &v112 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v112 - v39;
  v41 = *(v5 + *(type metadata accessor for InviteFindFriendContentView(0) + 20));
  v42 = *&v41[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v43 = *(v42 + 16);
  v44 = v41;
  os_unfair_lock_lock(v43);
  v45 = *&v44[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v46 = *(v42 + 16);
  v47 = v45;
  os_unfair_lock_unlock(v46);

  if (!v45)
  {
    goto LABEL_14;
  }

  sub_216CAF178();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {

    v48 = &qword_27CABA820;
    v49 = v33;
LABEL_13:
    sub_216699778(v49, v48);
LABEL_14:
    v71 = type metadata accessor for ShareableMusicItem(0);
    return __swift_storeEnumTagSinglePayload(v141, 1, 1, v71);
  }

  v50 = v140;
  v51 = *(v140 + 32);
  v118 = v140 + 32;
  v117 = v51;
  v51(v40, v33, v34);
  v144 = 1;
  v52 = *(v24 + 24);
  v53 = *(v50 + 16);
  v122 = v40;
  v53(&v26[v52], v40, v34);
  __swift_storeEnumTagSinglePayload(&v26[v52], 0, 1, v34);
  *v26 = 18;
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  *(v26 + 24) = xmmword_217051750;
  *(v26 + 40) = 0u;
  *(v26 + 56) = 0u;
  *(v26 + 72) = 0u;
  *(v26 + 88) = 0u;
  *(v26 + 13) = 0;
  v26[112] = 1;
  v54 = v136;
  sub_216BE9490(v26, v136, type metadata accessor for ContentDescriptor);
  __swift_storeEnumTagSinglePayload(v54, 0, 1, v24);
  v55 = OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_artwork;
  swift_beginAccess();
  v56 = v137;
  sub_2166A6F60(&v44[v55], v137, &qword_27CAB6D60);
  v121 = sub_216BEDBFC(v47);
  v58 = v57;
  v59 = v47;
  v120 = sub_216A72AB8(v59);
  v61 = v60;
  v119 = [v59 isPrivate];
  v116 = [v59 hasLightweightProfile];
  sub_2166A6F60(v54, v16, &qword_27CAB6A00);
  if (__swift_getEnumTagSinglePayload(v16, 1, v24) == 1)
  {

    sub_216699778(v56, &qword_27CAB6D60);
    sub_216699778(v54, &qword_27CAB6A00);
    sub_216BE94E8(v26, type metadata accessor for ContentDescriptor);
    (*(v140 + 8))(v122, v34);
    sub_216699778(v16, &qword_27CAB6A00);
LABEL_10:
    v69 = 1;
    v68 = v138;
    v70 = v139;
    goto LABEL_11;
  }

  v62 = *(v16 + 4);
  v114 = *(v16 + 3);
  sub_21700DF14();
  sub_216BE94E8(v16, type metadata accessor for ContentDescriptor);
  if (!v62)
  {

    sub_216699778(v56, &qword_27CAB6D60);
    sub_216699778(v54, &qword_27CAB6A00);
    sub_216BE94E8(v26, type metadata accessor for ContentDescriptor);
    (*(v140 + 8))(v122, v34);
    goto LABEL_10;
  }

  v112 = v62;
  v115 = v58;
  v113 = v61;
  v63 = v130;
  sub_2166A6F60(v54, v130, &qword_27CAB6A00);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v24);
  v65 = v140;
  v66 = v34;
  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v63, &qword_27CAB6A00);
    v67 = v129;
    __swift_storeEnumTagSinglePayload(v129, 1, 1, v66);
    v68 = v138;
  }

  else
  {
    v67 = v129;
    sub_2166A6F60(v63 + *(v24 + 24), v129, &qword_27CABA820);
    sub_216BE94E8(v63, type metadata accessor for ContentDescriptor);
    v84 = __swift_getEnumTagSinglePayload(v67, 1, v66);
    v68 = v138;
    if (v84 != 1)
    {
      v88 = v124;
      v89 = v67;
      v90 = v117;
      v117(v124, v89, v66);
      v91 = v88;
      goto LABEL_24;
    }
  }

  sub_216699778(v67, &qword_27CABA820);
  v85 = v115;
  if (!v115)
  {

    sub_216699778(v56, &qword_27CAB6D60);
    sub_216699778(v54, &qword_27CAB6A00);
    sub_216BE94E8(v26, type metadata accessor for ContentDescriptor);
    (*(v65 + 8))(v122, v66);
    goto LABEL_21;
  }

  v142 = 0;
  v143 = 0xE000000000000000;
  sub_21700DF14();
  sub_21700F3B4();

  v142 = 0xD000000000000020;
  v143 = 0x8000000217087320;
  MEMORY[0x21CE9F490](v121, v85);

  v86 = v125;
  sub_217005ED4();
  v87 = v86;

  if (__swift_getEnumTagSinglePayload(v86, 1, v66) == 1)
  {

    sub_216699778(v56, &qword_27CAB6D60);
    sub_216699778(v54, &qword_27CAB6A00);
    sub_216BE94E8(v26, type metadata accessor for ContentDescriptor);
    (*(v65 + 8))(v122, v66);
    sub_216699778(v86, &qword_27CABA820);
LABEL_21:
    v69 = 1;
    v70 = v139;
    goto LABEL_11;
  }

  v92 = v123;
  v93 = v117;
  v117(v123, v87, v66);
  v91 = v92;
  v90 = v93;
LABEL_24:
  v94 = v116 ^ 1;
  v95 = v128;
  v90(v128 + v68[8], v91, v66);
  v96 = sub_21700BA64();
  v98 = v97;

  sub_216699778(v54, &qword_27CAB6A00);
  sub_216BE94E8(v26, type metadata accessor for ContentDescriptor);
  (*(v140 + 8))(v122, v66);
  v99 = (v95 + v68[5]);
  *v99 = v96;
  v99[1] = v98;
  v100 = v126;
  sub_2166DDCC0(v56, v126, &qword_27CAB6D60);
  v101 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v100, 1, v101) == 1)
  {
    sub_216699778(v100, &qword_27CAB6D60);
    v102 = sub_21700C4B4();
    v103 = v127;
    v104 = v127;
    v105 = 1;
  }

  else
  {
    v106 = sub_21700C4B4();
    v103 = v127;
    (*(*(v106 - 8) + 16))(v127, v100, v106);
    sub_216BE94E8(v100, type metadata accessor for Artwork);
    v104 = v103;
    v105 = 0;
    v102 = v106;
  }

  __swift_storeEnumTagSinglePayload(v104, v105, 1, v102);
  v70 = v139;
  v107 = v128;
  sub_2166DDCC0(v103, v128, &qword_27CABF770);
  v108 = (v107 + v68[6]);
  v109 = v115;
  *v108 = v121;
  v108[1] = v109;
  v110 = (v107 + v68[7]);
  v111 = v113;
  *v110 = v120;
  v110[1] = v111;
  *(v107 + v68[10]) = v119;
  *(v107 + v68[9]) = v94;
  sub_216BE9438(v107, v70, type metadata accessor for SocialProfileDescriptor);
  v69 = 0;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v70, v69, 1, v68);
  if (__swift_getEnumTagSinglePayload(v70, 1, v68) == 1)
  {
    v48 = &qword_27CABEEE8;
    v49 = v70;
    goto LABEL_13;
  }

  v73 = v70;
  v74 = v131;
  sub_216BE9438(v73, v131, type metadata accessor for SocialProfileDescriptor);
  v75 = v74;
  v76 = v141;
  sub_216BE9438(v75, v141, type metadata accessor for SocialProfileDescriptor);
  v77 = type metadata accessor for MusicFriendsInviteDescriptor(0);
  v78 = (v76 + *(v77 + 20));
  v79 = v133;
  v81 = v134;
  v80 = v135;
  *v78 = v132;
  v78[1] = v80;
  v82 = (v76 + *(v77 + 24));
  *v82 = v79;
  v82[1] = v81;
  v83 = type metadata accessor for ShareableMusicItem(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v83);
  sub_21700DF14();
  return sub_21700DF14();
}

uint64_t sub_216BEB3D4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C58);
  MEMORY[0x28223BE20](v2);
  v4 = v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C60);
  MEMORY[0x28223BE20](v5);
  v7 = v32 - v6;
  v8 = sub_216983738(142);
  v10 = v9;
  v11 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v13 = sub_217009D54();
  v14 = swift_getKeyPath();
  *&__src[0] = v8;
  *(&__src[0] + 1) = v10;
  *&__src[1] = 0;
  *(&__src[1] + 1) = MEMORY[0x277D84F90];
  *&__src[2] = KeyPath;
  *(&__src[2] + 1) = v11;
  *&__src[3] = v14;
  *(&__src[3] + 1) = v13;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88);
  sub_2167D95A8();
  sub_21700A304();
  v34[0] = __src[0];
  v34[1] = __src[1];
  v34[2] = __src[2];
  v34[3] = __src[3];
  sub_216699778(v34, &qword_27CAB7E88);
  LOBYTE(v8) = sub_217009C74();
  sub_217007F24();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C50) + 36)];
  *v23 = v8;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  if (qword_27CAB5F88 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v24 = &v4[*(v2 + 36)];
  v25 = v32[1];
  *v24 = v32[0];
  *(v24 + 1) = v25;
  *(v24 + 2) = v32[2];
  sub_21700B3B4();
  sub_217008BB4();
  sub_2166DDCC0(v4, v7, &qword_27CAC0C58);
  memcpy(&v7[*(v5 + 36)], __src, 0x70uLL);
  v26 = sub_21700B3B4();
  v28 = v27;
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5828) + 36);
  sub_216BEB784(v29);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5830) + 36));
  *v30 = v26;
  v30[1] = v28;
  return sub_2166DDCC0(v7, a1, &qword_27CAC0C60);
}

double sub_216BEB784@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CE0118];
  v3 = sub_217009294();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = sub_21700AC54();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780);
  *(a1 + *(v5 + 52)) = v4;
  *(a1 + *(v5 + 56)) = 256;
  if (qword_27CAB5F88 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C98) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_216BEB904@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  *a3 = sub_2170091A4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  return a2(v3);
}

uint64_t sub_216BEB96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5720);
  v3 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v5 = &v49 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5728);
  MEMORY[0x28223BE20](v56);
  v59 = &v49 - v6;
  FriendContentView = type metadata accessor for FollowRequestFindFriendContentView(0);
  v53 = *(FriendContentView - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](FriendContentView);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5730);
  MEMORY[0x28223BE20](v54);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5738);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v64 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5740);
  MEMORY[0x28223BE20](v15 - 8);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v49 - v18);
  *v19 = sub_21700B3D4();
  v19[1] = v20;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5748) + 44);
  v57 = v19;
  sub_216BEC360(a1, v19 + v21);
  v58 = sub_2170093C4();
  v68 = 1;
  sub_216BEC6BC(a1, v66);
  memcpy(v69, v66, sizeof(v69));
  memcpy(__dst, v66, 0x80uLL);
  sub_2166A6F60(v69, v65, &qword_27CAC0C08);
  sub_216699778(__dst, &qword_27CAC0C08);
  memcpy(&v67[7], v69, 0x80uLL);
  v55 = v68;
  if (*(*(a1 + *(FriendContentView + 24)) + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded) == 1)
  {
    v22 = *(a1 + 24);
    v52 = *(a1 + 16);
    v51 = *(a1 + 33);
    v23 = a1 + *(FriendContentView + 20);
    v24 = *v23;
    v25 = *(v23 + 8);
    LOBYTE(v65[0]) = v24;
    v65[1] = v25;
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
    sub_21700AED4();
    v26 = v66[0];
    v27 = v66[1];
    v50 = LOBYTE(v66[2]);
    sub_216BE9490(a1, &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FollowRequestFindFriendContentView);
    v28 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v29 = swift_allocObject();
    sub_216BE9438(&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for FollowRequestFindFriendContentView);
    type metadata accessor for UserSocialProfileCoordinator();
    sub_216BE8A4C(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
    *(v10 + 8) = sub_217008CF4();
    *(v10 + 9) = v30;
    type metadata accessor for SocialGraphController();
    sub_216BE8A4C(&qword_280E39AC8, type metadata accessor for SocialGraphController);
    *(v10 + 10) = sub_217008CF4();
    *(v10 + 11) = v31;
    *(v10 + 12) = swift_getKeyPath();
    v10[136] = 0;
    v32 = *(v54 + 60);
    *&v10[v32] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    sub_217007C94();
    *v10 = v52;
    *(v10 + 1) = v22;
    v33 = v50;
    v10[16] = v51;
    *(v10 + 3) = sub_216BEDB40;
    *(v10 + 4) = v29;
    *(v10 + 5) = v26;
    *(v10 + 6) = v27;
    v10[56] = v33;
    sub_2166A6F60(v10, v59, &qword_27CAC5730);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CAC5788, &qword_27CAC5730);
    sub_21669E098(&qword_27CAC5790, &qword_27CAC5720);
    sub_217009554();
    sub_216699778(v10, &qword_27CAC5730);
  }

  else
  {
    sub_216BE9490(a1, &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FollowRequestFindFriendContentView);
    v34 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v35 = swift_allocObject();
    v36 = sub_216BE9438(&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for FollowRequestFindFriendContentView);
    MEMORY[0x28223BE20](v36);
    *(&v49 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5750);
    sub_216BED888();
    sub_21700AF14();
    v37 = v62;
    (*(v3 + 16))(v59, v5, v62);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CAC5788, &qword_27CAC5730);
    sub_21669E098(&qword_27CAC5790, &qword_27CAC5720);
    sub_217009554();
    (*(v3 + 8))(v5, v37);
  }

  v38 = v57;
  v39 = v60;
  sub_2166A6F60(v57, v60, &qword_27CAC5740);
  v40 = v64;
  v41 = v61;
  sub_2166A6F60(v64, v61, &qword_27CAC5738);
  v42 = v63;
  sub_2166A6F60(v39, v63, &qword_27CAC5740);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5798);
  v44 = v43[12];
  v45 = v58;
  v65[0] = v58;
  v65[1] = 0;
  v46 = v55;
  LOBYTE(v65[2]) = v55;
  memcpy(&v65[2] + 1, v67, 0x87uLL);
  memcpy((v42 + v44), v65, 0x98uLL);
  v47 = v42 + v43[16];
  *v47 = 0x4024000000000000;
  *(v47 + 8) = 0;
  sub_2166A6F60(v41, v42 + v43[20], &qword_27CAC5738);
  sub_2166A6F60(v65, v66, &qword_27CAC57A0);
  sub_216699778(v40, &qword_27CAC5738);
  sub_216699778(v38, &qword_27CAC5740);
  sub_216699778(v41, &qword_27CAC5738);
  v66[0] = v45;
  v66[1] = 0;
  LOBYTE(v66[2]) = v46;
  memcpy(&v66[2] + 1, v67, 0x87uLL);
  sub_216699778(v66, &qword_27CAC57A0);
  return sub_216699778(v39, &qword_27CAC5740);
}

uint64_t sub_216BEC360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_21700C444();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v37 = sub_217007474();
  v10 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  sub_2166A6F60(a1 + *(Friends + 64), v9, &qword_27CABF770);
  sub_217007434();
  sub_21700C414();
  sub_2170073E4();
  (*(v4 + 8))(v6, v3);
  v17 = *(v10 + 8);
  v18 = v37;
  v17(v12, v37);
  v39 = 18;
  v19 = *(a1 + *(Friends + 56));
  sub_21700DF14();
  v20 = sub_216E41068(&v39, v19);
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  sub_2167C505C();
  v24 = v38;
  sub_2170073F4();

  v17(v15, v18);
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76B8) + 36)) = 256;
  v25 = v24;
  LOBYTE(v24) = sub_217009CD4();
  sub_217007F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57F8);
  v35 = v25 + *(result + 36);
  *v35 = v24;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_216BEC6BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SocialFindFriendsController.Friend(0) + 56));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = 0;
    v19 = 0;
  }

  sub_21700DF14();
  v18 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v16 = sub_217009E54();
  v7 = swift_getKeyPath();
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = *(a1 + 72);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = 0;
    v15 = 0;
  }

  sub_21700DF14();
  v10 = sub_21700AD34();
  v11 = swift_getKeyPath();
  v12 = sub_217009E94();
  v13 = swift_getKeyPath();
  *&v21 = v5;
  *(&v21 + 1) = v4;
  *&v22 = 0;
  *(&v22 + 1) = v19;
  *&v23 = KeyPath;
  *(&v23 + 1) = v18;
  *&v24 = v7;
  *(&v24 + 1) = v16;
  *&v25 = v9;
  __src[0] = v21;
  __src[1] = v22;
  __src[2] = v23;
  __src[3] = v24;
  *(&v25 + 1) = v8;
  *&v26 = 0;
  *(&v26 + 1) = v15;
  *&v27 = v11;
  *(&v27 + 1) = v10;
  *&v28 = v13;
  *(&v28 + 1) = v12;
  __src[6] = v27;
  __src[7] = v28;
  __src[4] = v25;
  __src[5] = v26;
  memcpy(a2, __src, 0x80uLL);
  v29[0] = v9;
  v29[1] = v8;
  v29[2] = 0;
  v29[3] = v15;
  v29[4] = v11;
  v29[5] = v10;
  v29[6] = v13;
  v29[7] = v12;
  sub_2166A6F60(&v21, v30, &qword_27CAB7E88);
  sub_2166A6F60(&v25, v30, &qword_27CAB7E88);
  sub_216699778(v29, &qword_27CAB7E88);
  v30[0] = v5;
  v30[1] = v4;
  v30[2] = 0;
  v30[3] = v19;
  v30[4] = KeyPath;
  v30[5] = v18;
  v30[6] = v7;
  v30[7] = v16;
  return sub_216699778(v30, &qword_27CAB7E88);
}

uint64_t sub_216BEC8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    if (qword_27CAB5F80 != -1)
    {
      swift_once();
    }

    a1 = qword_27CAC5688;
    v5 = unk_27CAC5690;
    sub_21700DF14();
  }

  sub_21700DF14();
  sub_216BEC99C(a1, v5, a3);
}

uint64_t sub_216BEC99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0);
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v45 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C50);
  MEMORY[0x28223BE20](v46);
  v10 = &v45 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C58);
  MEMORY[0x28223BE20](v48);
  v12 = &v45 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C60);
  MEMORY[0x28223BE20](v49);
  v50 = &v45 - v13;
  v14 = *(type metadata accessor for FollowRequestFindFriendContentView(0) + 20);
  v51 = v3;
  v15 = (v3 + v14);
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v54[0]) = v16;
  *(&v54[0] + 1) = v17;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEB4();
  if (LOBYTE(v53[0]) == 6)
  {
LABEL_5:
    v18 = sub_21700ACF4();
    goto LABEL_7;
  }

  if (LOBYTE(v53[0]) != 2)
  {
    if (!LOBYTE(v53[0]))
    {
      v18 = sub_21700AC54();
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v18 = sub_21700AD34();
LABEL_7:
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = sub_217009D54();
  v22 = swift_getKeyPath();
  *&v54[0] = a1;
  *(&v54[0] + 1) = a2;
  *&v54[1] = 0;
  *(&v54[1] + 1) = MEMORY[0x277D84F90];
  *&v54[2] = KeyPath;
  *(&v54[2] + 1) = v19;
  *&v54[3] = v22;
  *(&v54[3] + 1) = v21;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88);
  sub_2167D95A8();
  sub_21700A304();
  *v53 = v54[0];
  *&v53[2] = v54[1];
  *&v53[4] = v54[2];
  *&v53[6] = v54[3];
  sub_216699778(v53, &qword_27CAB7E88);
  LOBYTE(v19) = sub_217009C74();
  sub_217007F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v6 + 32))(v10, v8, v47);
  v31 = &v10[*(v46 + 36)];
  *v31 = v19;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  if (qword_27CAB5F88 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  sub_2166DDCC0(v10, v12, &qword_27CAC0C50);
  v32 = &v12[*(v48 + 36)];
  v33 = *&v53[11];
  *v32 = *&v53[9];
  *(v32 + 1) = v33;
  *(v32 + 2) = *&v53[13];
  sub_21700B3B4();
  sub_217008BB4();
  v34 = v50;
  sub_2166DDCC0(v12, v50, &qword_27CAC0C58);
  memcpy((v34 + *(v49 + 36)), v54, 0x70uLL);
  v35 = sub_21700B3B4();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5750);
  v39 = v52;
  v40 = v52 + *(v38 + 36);
  sub_216BED184(v51, v40);
  sub_21700B3B4();
  sub_2170083C4();
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57A8) + 36));
  v42 = v54[8];
  *v41 = v54[7];
  v41[1] = v42;
  v41[2] = v54[9];
  v43 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5780) + 36));
  *v43 = v35;
  v43[1] = v37;
  return sub_2166DDCC0(v34, v39, &qword_27CAC0C60);
}

uint64_t sub_216BECEE4(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for FollowRequestFindFriendContentView(0) + 20));
  v3 = *v2;
  v4 = *(v2 + 1);
  v21 = *v2;
  v22 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEB4();
  if (v20 == 6)
  {
    goto LABEL_2;
  }

  if (sub_216F07FB4(v20) == 0x6F6C6C6F46746F6ELL && v8 == 0xEC000000676E6977)
  {
  }

  else
  {
    v10 = sub_21700F7D4();

    if ((v10 & 1) == 0)
    {
LABEL_2:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      swift_beginAccess();
      sub_216ABB244(v6, v5);
      swift_endAccess();

      v21 = v3;
      v22 = v4;
      v7 = 1;
      goto LABEL_14;
    }
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  swift_beginAccess();
  sub_21700DF14();
  sub_2168A140C(&v20, v11, v12, v13, v14, v15, v16, v17, v19, v20);
  swift_endAccess();

  if (*(a1 + 33))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v21 = v3;
  v22 = v4;
LABEL_14:
  LOBYTE(v20) = v7;
  return sub_21700AEC4();
}

uint64_t sub_216BED0BC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FollowRequestFindFriendContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEB4();
  if (v8 == 6 || (v2 = sub_216F07498(v8), !v3))
  {
    v4 = sub_216983738(122);
    v5 = v6;
  }

  else
  {
    v4 = v2;
    v5 = v3;
  }

  sub_216BEC99C(v4, v5, a1);
}

uint64_t sub_216BED184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_21700B114();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57B8);
  MEMORY[0x28223BE20](v9);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57C0);
  MEMORY[0x28223BE20](v14);
  v16 = v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780);
  MEMORY[0x28223BE20](v17);
  v19 = v48 - v18;
  v20 = (a1 + *(type metadata accessor for FollowRequestFindFriendContentView(0) + 20));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v52) = v21;
  *(&v52 + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0C48);
  sub_21700AEB4();
  v23 = v51;
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_217009294();
  v26 = *(*(v25 - 8) + 104);
  if (v23 == 6)
  {
    v26(v19, v24, v25);
    *&v19[*(v17 + 52)] = sub_21700AC54();
    *&v19[*(v17 + 56)] = 256;
    sub_2166A6F60(v19, v16, &qword_27CAB8780);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CAC57C8, &qword_27CAC57B8);
    sub_21669E098(&qword_27CAB8778, &qword_27CAB8780);
    sub_217009554();
    v27 = v19;
    v28 = &qword_27CAB8780;
  }

  else
  {
    v48[0] = v14;
    v48[1] = v9;
    v26(v5, v24, v25);
    if (v23 == 2)
    {
      v31 = sub_21700AD34();
      v29 = v16;
    }

    else
    {
      v29 = v16;
      if (v23)
      {
        v30 = sub_21700ACD4();
      }

      else
      {
        v30 = sub_21700AC54();
      }

      v31 = v30;
    }

    sub_2170081E4();
    sub_216BE9490(v5, v8, MEMORY[0x277CE1260]);
    v32 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57D0) + 36)];
    v33 = v53;
    *v32 = v52;
    *(v32 + 1) = v33;
    *(v32 + 4) = v54;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57D8);
    *&v8[*(v34 + 52)] = v31;
    *&v8[*(v34 + 56)] = 256;
    v35 = sub_21700B3B4();
    v37 = v36;
    sub_216BE94E8(v5, MEMORY[0x277CE1260]);
    v38 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57E0) + 36)];
    *v38 = v35;
    v38[1] = v37;
    if ((v23 | 2) == 2)
    {
      v39 = sub_21700ACD4();
    }

    else
    {
      v39 = sub_21700AC54();
    }

    v40 = v39;
    sub_216BE9490(v8, v11, MEMORY[0x277CE1260]);
    *&v11[*(v17 + 52)] = v40;
    *&v11[*(v17 + 56)] = 256;
    v41 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57E8) + 36)];
    sub_2166A6F60(v8, v41, &qword_27CAC57B0);
    v42 = sub_21700B3B4();
    v44 = v43;
    sub_216699778(v8, &qword_27CAC57B0);
    v45 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57F0) + 36));
    *v45 = v42;
    v45[1] = v44;
    v46 = v49;
    sub_2166DDCC0(v11, v49, &qword_27CAC57B8);
    sub_2166A6F60(v46, v29, &qword_27CAC57B8);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CAC57C8, &qword_27CAC57B8);
    sub_21669E098(&qword_27CAB8778, &qword_27CAB8780);
    sub_217009554();
    v27 = v46;
    v28 = &qword_27CAC57B8;
  }

  return sub_216699778(v27, v28);
}

uint64_t sub_216BED7BC()
{
  result = sub_216983738(122);
  qword_27CAC5688 = result;
  unk_27CAC5690 = v1;
  return result;
}

uint64_t sub_216BED820()
{
  v1 = *(type metadata accessor for FollowRequestFindFriendContentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216BECEE4(v2);
}

unint64_t sub_216BED888()
{
  result = qword_27CAC5758;
  if (!qword_27CAC5758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5750);
    sub_216BED940();
    sub_21669E098(&qword_27CAC5778, &qword_27CAC5780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5758);
  }

  return result;
}

unint64_t sub_216BED940()
{
  result = qword_27CAC5760;
  if (!qword_27CAC5760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0C60);
    sub_216BED9F8(&qword_27CAC5768, &qword_27CAC0C58, &unk_21703B360, sub_216BEDA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5760);
  }

  return result;
}

uint64_t sub_216BED9F8(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216BEDA78()
{
  result = qword_27CAC5770;
  if (!qword_27CAC5770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC0C50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E88);
    sub_2167D95A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5770);
  }

  return result;
}

uint64_t sub_216BEDB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for FollowRequestFindFriendContentView(0);

  return sub_216BEC8E4(a1, a2, a3);
}

uint64_t sub_216BEDBC8()
{
  result = sub_21700B304();
  v1 = 36.0;
  if ((result & 1) == 0)
  {
    v1 = 24.0;
  }

  qword_27CAC5698 = *&v1;
  return result;
}

uint64_t sub_216BEDBFC(void *a1)
{
  v1 = [a1 handle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E514();

  return v3;
}

_BYTE *sub_216BEDC98(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216BEDD74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  sub_216BEECA4(v1, &v20);
  if (v21)
  {
    v4 = v22;
    v3 = v23;
    sub_21700DF14();
    sub_2167ADC98(&v20);
    *(inited + 32) = v4;
    *(inited + 40) = v3;
  }

  else
  {
    sub_2166997CC(&v20, &qword_27CAB8100);
    *(inited + 32) = 0;
    *(inited + 40) = 0;
  }

  sub_216BEECA4(v1 + 72, &v20);
  if (v21)
  {
    v6 = v22;
    v5 = v23;
    sub_21700DF14();
    sub_2167ADC98(&v20);
    *(inited + 48) = v6;
    *(inited + 56) = v5;
  }

  else
  {
    sub_2166997CC(&v20, &qword_27CAB8100);
    *(inited + 48) = 0;
    *(inited + 56) = 0;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
LABEL_8:
  v9 = (inited + 40 + 16 * v7);
  while (++v7 != 3)
  {
    v10 = v9 + 2;
    v11 = *v9;
    v9 += 2;
    if (v11)
    {
      v12 = *(v10 - 3);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v8 = v15;
      }

      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        sub_21693776C();
        v8 = v16;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v12;
      *(v14 + 40) = v11;
      goto LABEL_8;
    }
  }

  swift_setDeallocating();
  sub_2169FAC80();
  v20 = v8;
  if (*(v1 + 144))
  {
    v17 = sub_21700DF14();
    sub_216BDD7E4(v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  sub_216856418();
  v18 = sub_21700E454();

  return v18;
}

uint64_t sub_216BEDFAC(char a1)
{
  if (a1)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_216BEE03C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786440();
  *a1 = result;
  return result;
}

uint64_t sub_216BEE074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216BEDFAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216BEE0A4()
{
  result = qword_27CAC5860;
  if (!qword_27CAC5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5860);
  }

  return result;
}

uint64_t sub_216BEE11C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786440();
  *a1 = result;
  return result;
}

unint64_t sub_216BEE154@<X0>(void *a1@<X8>)
{
  result = sub_216BEDFEC();
  *a1 = 0xD00000000000001ELL;
  a1[1] = v3;
  return result;
}

unint64_t sub_216BEE18C()
{
  result = qword_27CAC5868;
  if (!qword_27CAC5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5868);
  }

  return result;
}

uint64_t sub_216BEE1E0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v33 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v31 = v13;
  v32 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  sub_21700CE04();
  v28 = *(v8 + 16);
  v16 = OUTLINED_FUNCTION_2_133();
  v17(v16);
  sub_2167A7528();
  OUTLINED_FUNCTION_3_6();
  sub_21700D734();
  sub_21700CE04();
  v18 = OUTLINED_FUNCTION_2_133();
  v19 = v28;
  v28(v18);
  OUTLINED_FUNCTION_3_6();
  sub_21700D734();
  sub_21700CE04();
  v20 = OUTLINED_FUNCTION_2_133();
  v19(v20);
  OUTLINED_FUNCTION_3_6();
  sub_216AC7084();
  *(a3 + 144) = v21;
  OUTLINED_FUNCTION_4_109();
  sub_21700CE04();
  v29 = a2;
  v30 = v6;
  (v19)(v11, a2, v6);
  OUTLINED_FUNCTION_3_6();
  sub_216AC70B4();
  *(a3 + 152) = v22;
  type metadata accessor for Artwork();
  sub_21700CE04();
  (v19)(v11, a2, v6);
  v23 = type metadata accessor for DefaultSectionHeader();
  sub_216BEEBB4(&qword_280E2BF60, type metadata accessor for Artwork);
  OUTLINED_FUNCTION_3_6();
  sub_21700D734();
  v24 = v34;
  sub_21700CE04();
  sub_2168F3E64();
  sub_21700CCC4();
  v25 = v32;
  v26 = *(v31 + 8);
  v26(v15, v32);
  *(a3 + v23[9]) = v37;
  OUTLINED_FUNCTION_4_109();
  sub_21700CE04();
  sub_216BEEBFC();
  sub_21700CD14();
  v26(v15, v25);
  *(a3 + v23[11]) = v36;
  sub_21700CE04();
  sub_216BEEC50();
  sub_21700CCC4();
  (*(v33 + 8))(v29, v30);
  v26(v24, v25);
  result = (v26)(v15, v25);
  *(a3 + v23[10]) = v35;
  return result;
}

uint64_t sub_216BEE6C8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &__src[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &__src[-v10];
  v12 = type metadata accessor for Link(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &__src[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &__src[-v16];
  if (sub_216F936A8())
  {
    sub_216F9342C();
    sub_21681BBDC(v17, __src);
    if (v1)
    {
      return OUTLINED_FUNCTION_0_194();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_87();
  }

  memcpy(a1, __src, 0x48uLL);
  if (sub_216F93BD8())
  {
    sub_216F9383C();
    sub_21681BBDC(v14, __src);
    if (v1)
    {
      OUTLINED_FUNCTION_0_194();
      v19 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_87();
  }

  memcpy(a1 + 9, __src, 0x48uLL);
  v20 = *(sub_216F93D6C() + 16);

  if (v20)
  {
    v21 = sub_216F93D6C();
  }

  else
  {
    v21 = 0;
  }

  a1[18] = v21;
  v22 = sub_216F93E34();
  v23 = sub_216BEEAA8();
  v25 = sub_216F76E04(v22, v24, &type metadata for AccessoryButton, v23);
  if (v1)
  {
    OUTLINED_FUNCTION_0_194();
    v19 = 1;
LABEL_14:
    result = sub_2166997CC(a1, &qword_27CAB8100);
    if (v19)
    {
      sub_2166997CC((a1 + 9), &qword_27CAB8100);
    }

    return result;
  }

  a1[19] = v25;
  if (sub_216F94428())
  {
    sub_216F94098();
    sub_216BEEAFC(v8, v5);
    sub_216C7DA84(v5, v11);
    OUTLINED_FUNCTION_1_167();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = type metadata accessor for Artwork();
  __swift_storeEnumTagSinglePayload(v11, v26, 1, v27);
  v28 = type metadata accessor for DefaultSectionHeader();
  sub_216A72F5C(v11, a1 + v28[8]);
  if (sub_216F948DC())
  {
    v29 = sub_216F945BC();
    v31 = sub_216B5A588(v29, v30 & 1);
  }

  else
  {
    v31 = 0;
  }

  result = OUTLINED_FUNCTION_0_194();
  *(a1 + v28[9]) = v31;
  *(a1 + v28[10]) = 0;
  *(a1 + v28[11]) = 2;
  return result;
}

unint64_t sub_216BEEAA8()
{
  result = qword_27CAC5878;
  if (!qword_27CAC5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5878);
  }

  return result;
}

uint64_t sub_216BEEAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BEEB60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BEEBB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216BEEBFC()
{
  result = qword_280E3C5B8[0];
  if (!qword_280E3C5B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3C5B8);
  }

  return result;
}

unint64_t sub_216BEEC50()
{
  result = qword_280E3C5A8;
  if (!qword_280E3C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3C5A8);
  }

  return result;
}

uint64_t sub_216BEECA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BEED18@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BootstrapState();
  sub_2166DC43C(&qword_280E43828, type metadata accessor for BootstrapState);

  result = sub_217008684();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = sub_216BEEDBC;
  *(a1 + 24) = 0;
  *(a1 + 32) = 257;
  return result;
}

uint64_t sub_216BEEDBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5920);
  MEMORY[0x28223BE20](v2);
  v4 = v9 - v3;
  type metadata accessor for SubscriptionStatusCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_2166C0578(&v10);
  if (v11)
  {
    v5 = *(&v10 + 1) == 0;
    sub_2166997CC(&v10, &qword_27CAC5980);
  }

  else
  {
    v5 = 1;
  }

  sub_216BEEFAC(v5, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5928);
  sub_216BF08F4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5970);
  v7 = sub_2166D9530(&qword_27CAC5978, &qword_27CAC5970);
  v9[0] = v6;
  v9[1] = v7;
  swift_getOpaqueTypeConformance2();
  sub_21700AAD4();

  return sub_216749EDC(v4);
}

uint64_t sub_216BEEFAC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78F8);
  MEMORY[0x28223BE20](v41);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC59A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = sub_217009124();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5948);
  *(&v39 + 1) = *(v14 - 8);
  *&v40 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  *(&v40 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC59A8);
  MEMORY[0x28223BE20](*(&v40 + 1));
  v19 = &v38 - v18;
  if (a1)
  {
    *&v39 = v17;
    type metadata accessor for PrivacyDisclaimerAcknowledgement();
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    (*(v11 + 104))(v13, *MEMORY[0x277CDDDC0], v10);
    v20 = sub_2167CA8E4();

    v38 = v7;
    v21 = v9;
    sub_21700A904();
    (*(v11 + 8))(v13, v10);

    v43 = sub_216983738(2);
    v44 = v22;
    *&v48 = &type metadata for SettingsSignInView;
    *(&v48 + 1) = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = sub_2167B2E14();
    v25 = MEMORY[0x277D837D0];
    v26 = v40;
    sub_21700A5D4();

    (*(*(&v39 + 1) + 8))(v16, v26);
    v27 = v39;
    v28 = *(&v40 + 1);
    (*(v39 + 16))(v21, v19, *(&v40 + 1));
    swift_storeEnumTagMultiPayload();
    v43 = v26;
    v44 = v25;
    v45 = OpaqueTypeConformance2;
    v46 = v24;
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CAC5960, &qword_27CAB78F8);
    sub_217009554();

    return (*(v27 + 8))(v19, v28);
  }

  else
  {
    v46 = type metadata accessor for AccountSettingsPageIntent();
    v47 = sub_2166DC43C(&qword_27CAC59B0, type metadata accessor for AccountSettingsPageIntent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
    v31 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1, 1, 1, v31);
    v48 = 0u;
    v49 = 0u;
    v50 = 1;

    sub_216CCC700(&v43, a2, &v48, 0, 0, v32, v33, v34, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49, *(&v49 + 1));
    sub_2167CA874(v6, v9);
    swift_storeEnumTagMultiPayload();
    v35 = sub_2167CA8E4();
    v43 = &type metadata for SettingsSignInView;
    v44 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = sub_2167B2E14();
    v43 = v40;
    v44 = MEMORY[0x277D837D0];
    v45 = v36;
    v46 = v37;
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CAC5960, &qword_27CAB78F8);
    sub_217009554();
    return sub_2166997CC(v6, &qword_27CAB78F8);
  }
}

uint64_t sub_216BEF5C4()
{
  v0 = sub_217009684();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5970);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - v3;
  sub_217009624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5988);
  v5 = sub_2170091D4();
  v6 = sub_216BF0ABC();
  v7 = sub_2166DC43C(&qword_27CABC420, MEMORY[0x277CDDE40]);
  v10[0] = &type metadata for CloseButton;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  swift_getOpaqueTypeConformance2();
  sub_2170081F4();
  v8 = sub_2166D9530(&qword_27CAC5978, &qword_27CAC5970);
  MEMORY[0x21CE9A570](v4, v1, v8);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_216BEF7F4(uint64_t a1)
{
  v2 = sub_2170091D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = a1;

  sub_2170091C4();
  sub_216BF0ABC();
  sub_2166DC43C(&qword_27CABC420, MEMORY[0x277CDDE40]);
  sub_21700A364();
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_216BEF94C()
{
  v0 = type metadata accessor for SystemActionButton(0);
  MEMORY[0x28223BE20](v0);
  v2 = (v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = type metadata accessor for DismissModalPresentationAction();
  v2[3] = v7;
  v2[4] = sub_2166DC43C(qword_280E30D30, type metadata accessor for DismissModalPresentationAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  sub_21700D234();
  v9 = boxed_opaque_existential_1 + *(v7 + 20);
  *v9 = 0;
  v9[8] = 1;
  sub_217007EE4();
  v10 = *(v0 + 28);
  *(v2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v11 = v2 + *(v0 + 32);
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  v12 = type metadata accessor for ObjectGraph();
  v13 = sub_2166DC43C(&qword_27CAC1700, type metadata accessor for SystemActionButton);
  v2[5] = 0;
  v2[6] = 0;
  sub_21700A1E4();
  sub_216BF0BA4(v2);
  v15[1] = v0;
  v15[2] = v12;
  v15[3] = v13;
  swift_getOpaqueTypeConformance2();
  sub_21700A864();
  return (*(v4 + 8))(v6, v3);
}

id sub_216BEFC14()
{
  v0 = objc_allocWithZone(type metadata accessor for SettingsSignInViewController());

  return sub_216BEFD44(v1);
}

uint64_t sub_216BEFC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216BF0B50();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_216BEFCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216BF0B50();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_216BEFD1C()
{
  sub_216BF0B50();
  sub_217009AF4();
  __break(1u);
}

id sub_216BEFD44(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC7MusicUI28SettingsSignInViewController_didPresent] = 0;
  *&v1[OBJC_IVAR____TtC7MusicUI28SettingsSignInViewController_privacyDisclaimerAcknowledgement] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

void sub_216BEFDA8()
{
  *(v0 + OBJC_IVAR____TtC7MusicUI28SettingsSignInViewController_didPresent) = 0;
  sub_21700F584();
  __break(1u);
}

void sub_216BEFE28(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1 & 1);
  if ((*(v1 + OBJC_IVAR____TtC7MusicUI28SettingsSignInViewController_didPresent) & 1) == 0)
  {
    sub_216BEFE84();
  }
}

void sub_216BEFE84()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277CECAC8]) init];
  [v2 setDelegate_];
  [v2 setServiceType_];
  *(v0 + OBJC_IVAR____TtC7MusicUI28SettingsSignInViewController_didPresent) = 1;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = ObjectType;
  v7[4] = sub_216BF08B4;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_216BF0714;
  v7[3] = &block_descriptor_30;
  v5 = _Block_copy(v7);
  v6 = v2;

  [v6 prepareInViewController:v0 completion:v5];
  _Block_release(v5);
}

uint64_t sub_216BF0044()
{
  v1 = v0;
  if (qword_27CAB5F90 != -1)
  {
    OUTLINED_FUNCTION_0_195();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CAC5880);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_2_13(&dword_216679000, v6, v7, "AAUISignInController did complete");
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_216A5008C(sub_216BF08AC, v8);

  *(v1 + OBJC_IVAR____TtC7MusicUI28SettingsSignInViewController_didPresent) = 0;
  return result;
}

void sub_216BF016C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentingViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_216BF027C()
{
  v1 = v0;
  if (qword_27CAB5F90 != -1)
  {
    OUTLINED_FUNCTION_0_195();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CAC5880);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_2_13(&dword_216679000, v6, v7, "AAUISignInController did cancel");
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v8 = [v1 presentingViewController];
  if (v8)
  {
    v9 = v8;
    [v8 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_216BF03FC(char a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v8 = a2;
      if (qword_27CAB5F90 != -1)
      {
        swift_once();
      }

      v9 = sub_217007CA4();
      __swift_project_value_buffer(v9, qword_27CAC5880);
      v10 = a2;
      v11 = sub_217007C84();
      v12 = sub_21700ED84();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23[0] = v14;
        *v13 = 136446210;
        swift_getErrorValue();
        v15 = sub_21700F884();
        v17 = sub_2166A85FC(v15, v16, v23);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_216679000, v11, v12, "AAUISignInController failed with error: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        MEMORY[0x21CEA1440](v14, -1, -1);
        MEMORY[0x21CEA1440](v13, -1, -1);

        return;
      }

      v21 = a2;
    }

    else
    {
      if (qword_27CAB5F90 != -1)
      {
        swift_once();
      }

      v18 = sub_217007CA4();
      __swift_project_value_buffer(v18, qword_27CAC5880);
      oslog = sub_217007C84();
      v19 = sub_21700ED84();
      if (os_log_type_enabled(oslog, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_216679000, oslog, v19, "AAUISignInController cancelled by user", v20, 2u);
        MEMORY[0x21CEA1440](v20, -1, -1);
      }

      v21 = oslog;
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong presentViewController:a4 animated:1 completion:0];
  }
}

void sub_216BF0714(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_216BF078C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC5880);
  __swift_project_value_buffer(v0, qword_27CAC5880);
  return sub_217007C94();
}

unint64_t sub_216BF0868()
{
  result = qword_27CAC5910;
  if (!qword_27CAC5910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CAC5910);
  }

  return result;
}

unint64_t sub_216BF08F4()
{
  result = qword_27CAC5930;
  if (!qword_27CAC5930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5920);
    sub_216BF0978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5930);
  }

  return result;
}

unint64_t sub_216BF0978()
{
  result = qword_27CAC5938;
  if (!qword_27CAC5938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5948);
    sub_2167CA8E4();
    swift_getOpaqueTypeConformance2();
    sub_2167B2E14();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CAC5960, &qword_27CAB78F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5938);
  }

  return result;
}

unint64_t sub_216BF0ABC()
{
  result = qword_27CAC5990;
  if (!qword_27CAC5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5990);
  }

  return result;
}

unint64_t sub_216BF0B50()
{
  result = qword_27CAC59C8;
  if (!qword_27CAC59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC59C8);
  }

  return result;
}

uint64_t sub_216BF0BA4(uint64_t a1)
{
  v2 = type metadata accessor for SystemActionButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216BF0C00()
{
  result = qword_27CAC59F0;
  if (!qword_27CAC59F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC59F8);
    type metadata accessor for SystemActionButton(255);
    type metadata accessor for ObjectGraph();
    sub_2166DC43C(&qword_27CAC1700, type metadata accessor for SystemActionButton);
    swift_getOpaqueTypeConformance2();
    sub_2166DC43C(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC59F0);
  }

  return result;
}

void sub_216BF0D48()
{
  qword_27CAC5A00 = 0x636973754DLL;
  *algn_27CAC5A08 = 0xE500000000000000;
  qword_27CAC5A10 = 49;
  unk_27CAC5A18 = 0xE100000000000000;
  qword_27CAC5A20 = 0x6C7070612E6D6F63;
  unk_27CAC5A28 = 0xEF636973754D2E65;
  byte_27CAC5A30 = 2;
}

uint64_t static MusicConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB5F98 != -1)
  {
    swift_once();
  }

  v2 = *algn_27CAC5A08;
  v3 = qword_27CAC5A10;
  v4 = unk_27CAC5A18;
  v5 = qword_27CAC5A20;
  v6 = unk_27CAC5A28;
  v7 = byte_27CAC5A30;
  *a1 = qword_27CAC5A00;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  sub_21700DF14();
  sub_21700DF14();

  return sub_21700DF14();
}

uint64_t MusicConfiguration.PrivacyDisclaimerPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

void __swiftcall MusicConfiguration.init(bagProfileName:bagProfileVersion:mediaAPIClientIdentifier:)(MusicUI::MusicConfiguration *__return_ptr retstr, Swift::String bagProfileName, Swift::String bagProfileVersion, Swift::String mediaAPIClientIdentifier)
{
  retstr->bagProfileName = bagProfileName;
  retstr->bagProfileVersion = bagProfileVersion;
  retstr->mediaAPIClientIdentifier = mediaAPIClientIdentifier;
  retstr->privacyDisclaimerPolicy = MusicUI_MusicConfiguration_PrivacyDisclaimerPolicy_shouldPresentDisclaimer;
}

uint64_t MusicConfiguration.bagProfileName.getter()
{
  v1 = *v0;
  sub_21700DF14();
  return v1;
}

uint64_t MusicConfiguration.bagProfileVersion.getter()
{
  v1 = *(v0 + 16);
  sub_21700DF14();
  return v1;
}

uint64_t MusicConfiguration.mediaAPIClientIdentifier.getter()
{
  v1 = *(v0 + 32);
  sub_21700DF14();
  return v1;
}

void __swiftcall MusicConfiguration.withPrivacyDisclaimerPolicy(_:)(MusicUI::MusicConfiguration *__return_ptr retstr, MusicUI::MusicConfiguration::PrivacyDisclaimerPolicy a2)
{
  v3 = *a2;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  retstr->bagProfileName._countAndFlagsBits = v5;
  retstr->bagProfileName._object = v4;
  retstr->bagProfileVersion._countAndFlagsBits = v6;
  retstr->bagProfileVersion._object = v7;
  retstr->mediaAPIClientIdentifier._countAndFlagsBits = v8;
  retstr->mediaAPIClientIdentifier._object = v9;
  retstr->privacyDisclaimerPolicy = v3;
  sub_21700DF14();
  sub_21700DF14();

  sub_21700DF14();
}

unint64_t sub_216BF0FD4()
{
  result = qword_27CAC5A38;
  if (!qword_27CAC5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5A38);
  }

  return result;
}

uint64_t sub_216BF1028(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_216BF1068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicConfiguration.PrivacyDisclaimerPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216BF11EC()
{
  sub_216BF11CC();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_216BF1238@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableDictionary();
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t sub_216BF12B4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v84 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v64 - v5;
  v79 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v71 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v72 = v8;
  MEMORY[0x28223BE20](v9);
  v73 = &v64 - v10;
  v11 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v81 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v70 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v75 = v22;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v64 - v25;
  MEMORY[0x28223BE20](v24);
  sub_21700D7A4();
  sub_21700CE04();
  v27 = *(v81 + 16);
  v77 = v11;
  v68 = v27;
  v69 = v81 + 16;
  v27(v17, v80, v11);
  sub_21700D734();
  v28 = a1;
  sub_21700CE04();
  v29 = sub_21700CDB4();
  v31 = v30;
  v32 = *(v20 + 8);
  v33 = v26;
  v34 = v20 + 8;
  v35 = v18;
  v32(v33, v18);
  v76 = v31;
  if (v31)
  {
    v36 = v34;
    v37 = v32;
    v38 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
    v82 = v29;
    v83 = v31;
    v39 = v84;
    sub_21700F364();
    v40 = v75;
    sub_21700CE04();
    v41 = v78;
    sub_21700CD74();
    v37(v40, v35);
    if (__swift_getEnumTagSinglePayload(v41, 1, v79) == 1)
    {
      sub_21669987C(v78, &qword_27CAB78D0);
      v42 = sub_21700E2E4();
      OUTLINED_FUNCTION_0_196();
      sub_216BF1A24(v43, v44);
      OUTLINED_FUNCTION_3_0();
      *v45 = 0x736D657469;
      v45[1] = 0xE500000000000000;
      v45[2] = v38;
      (*(*(v42 - 8) + 104))(v45, *MEMORY[0x277D22530], v42);
      swift_willThrow();
      (*(v81 + 8))(v80, v77);
      v37(v28, v35);
      goto LABEL_8;
    }

    v65 = v28;
    v66 = v37;
    v67 = v36;
    v75 = v35;
    v52 = v71;
    v53 = v73;
    v54 = v79;
    (*(v71 + 32))(v73, v78, v79);
    (*(v52 + 16))(v72, v53, v54);
    v68(v70, v80, v77);
    type metadata accessor for SocialProfileFollowRequestLockup();
    sub_216BF1A24(qword_27CAC5A40, type metadata accessor for SocialProfileFollowRequestLockup);
    v55 = v74;
    v56 = sub_21700E934();
    if (!v55)
    {
      v61 = v56;
      v62 = OUTLINED_FUNCTION_3_125();
      v63(v62);
      v66(v65, v75);
      result = (*(v52 + 8))(v53, v79);
      *(v84 + *(v38 + 24)) = v61;
      return result;
    }

    v57 = OUTLINED_FUNCTION_3_125();
    v58(v57);
    v66(v65, v75);
    (*(v52 + 8))(v53, v79);
  }

  else
  {
    v46 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_196();
    sub_216BF1A24(v47, v48);
    OUTLINED_FUNCTION_3_0();
    v50 = v49;
    v51 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
    *v50 = 25705;
    v50[1] = 0xE200000000000000;
    v50[2] = v51;
    (*(*(v46 - 8) + 104))(v50, *MEMORY[0x277D22530], v46);
    swift_willThrow();
    (*(v81 + 8))(v80, v77);
    v32(a1, v18);
  }

  v39 = v84;
LABEL_8:
  result = sub_21669987C(v39, &qword_27CAB6D58);
  if (v76)
  {
    v60 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
    return sub_216788110(v39 + *(v60 + 20));
  }

  return result;
}

uint64_t sub_216BF1A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216BF1A7C()
{
  OUTLINED_FUNCTION_33();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  sub_21700EA34();
  v0[6] = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216BF1B14, v6, v5);
}

uint64_t sub_216BF1B14()
{
  v1 = v0[5];
  v2 = v0[4];

  if ((*(v1 + 104))(v2, v1))
  {
    v3 = v0[2];
    MusicStackAuthority.popToRoot()();

    v4 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_9();
    (*(v5 + 104))(v3, v4);
  }

  else
  {
    type metadata accessor for DetachedPopToRootActionImplementation.PopToRootError();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216BF1C40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167C6858;

  return sub_216BF1A7C();
}

uint64_t sub_216BF1CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216BF1D5C()
{
  OUTLINED_FUNCTION_33();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_21700EA34();
  v0[5] = sub_21700EA24();
  v5 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216BF1DF4, v5, v4);
}

uint64_t sub_216BF1DF4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 24);

  if (*(v1 + *(type metadata accessor for PopToRootAction() + 20)))
  {
    v2 = MEMORY[0x277D21CA0];
  }

  else
  {
    MusicStackAuthority.popToRoot()();
    v2 = MEMORY[0x277D21CA8];
  }

  v3 = *(v0 + 16);
  v4 = *v2;
  sub_21700D2A4();
  OUTLINED_FUNCTION_9();
  (*(v5 + 104))(v3, v4);
  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_216BF1EBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167C6580;

  return sub_216BF1D5C();
}

unint64_t sub_216BF1F6C(uint64_t a1)
{
  result = sub_216857280();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BF1F94(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216BF1FD0()
{
  result = qword_280E424C0[0];
  if (!qword_280E424C0[0])
  {
    type metadata accessor for PopToRootAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E424C0);
  }

  return result;
}

_BYTE *sub_216BF2048(_BYTE *result, int a2, int a3)
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

void MusicMetrics.FeatureName.rawValue.getter()
{
  switch(*v0)
  {
    case 9:
      OUTLINED_FUNCTION_5_99(0x7563u);
      break;
    case 0xE:
      OUTLINED_FUNCTION_1_168(0x7267u);
      break;
    case 0x10:
      OUTLINED_FUNCTION_2_134(0x696Cu);
      break;
    case 0x13:
      OUTLINED_FUNCTION_11_70(1769369453);
      break;
    case 0x16:
    case 0x24:
    case 0x29:
      OUTLINED_FUNCTION_17_5();
      break;
    case 0x1A:
    case 0x1B:
      OUTLINED_FUNCTION_3_126(0x6C70u);
      break;
    case 0x20:
      OUTLINED_FUNCTION_0_197();
      break;
    case 0x22:
      OUTLINED_FUNCTION_4_110(0x6373u);
      break;
    case 0x23:
      OUTLINED_FUNCTION_10_74(25971);
      break;
    case 0x30:
      OUTLINED_FUNCTION_8_86(0x6C706D696E75);
      break;
    default:
      return;
  }
}

uint64_t MusicMetrics.ClickFields.init(id:targetType:actionType:recommendationId:actionDetails:actionUrl:actionContext:offerMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v13 = *a3;
  v14 = *a4;
  v15 = *a10;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  *(a9 + 17) = v14;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  v16 = type metadata accessor for MusicMetrics.ClickFields(0);
  result = sub_2166CF4DC(a8, a9 + v16[9]);
  *(a9 + v16[11]) = v15;
  *(a9 + v16[10]) = a11;
  return result;
}

uint64_t MusicMetrics.TargetType.init(rawValue:)()
{
  OUTLINED_FUNCTION_0_6();
  v1 = sub_21700F7F4();

  v3 = 17;
  if (v1 < 0x11)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

uint64_t MusicMetrics.TargetType.rawValue.getter()
{
  result = 0x72656E6E6162;
  switch(*v0)
  {
    case 1:
      v2 = 0x496B63697242;
      goto LABEL_5;
    case 2:
      result = 0x6E6F74747562;
      break;
    case 3:
      result = 0x6954656C62627562;
      break;
    case 4:
      result = 1685217603;
      break;
    case 5:
      result = 0x79726F6765746143;
      break;
    case 6:
      result = OUTLINED_FUNCTION_9_11(17);
      break;
    case 7:
      result = 0x4C746E65746E6F43;
      break;
    case 8:
      result = 0x7265746C6966;
      break;
    case 9:
      result = 0x65736163776F6C46;
      break;
    case 0xA:
    case 0xB:
      result = OUTLINED_FUNCTION_8_86(0x744964697247);
      break;
    case 0xC:
      result = 0x6E694C636972796CLL;
      break;
    case 0xD:
      result = 0x7449726574736F50;
      break;
    case 0xE:
      v2 = 0x49666C656853;
LABEL_5:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 0xF:
      result = 1735290739;
      break;
    case 0x10:
      result = 1802398060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216BF2920@<X0>(uint64_t *a1@<X8>)
{
  result = MusicMetrics.TargetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicMetrics.ActionType.init(rawValue:)()
{
  OUTLINED_FUNCTION_6_88();
  v1 = sub_21700F7F4();

  v3 = 0;
  v4 = 13;
  switch(v1)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v3 = 1;
      goto LABEL_25;
    case 2:
      v3 = 2;
      goto LABEL_25;
    case 3:
      v3 = 3;
      goto LABEL_25;
    case 4:
      v3 = 4;
      goto LABEL_25;
    case 5:
      v3 = 5;
      goto LABEL_25;
    case 6:
      v3 = 6;
      goto LABEL_25;
    case 7:
      v3 = 7;
      goto LABEL_25;
    case 8:
      v3 = 8;
      goto LABEL_25;
    case 9:
      v3 = 9;
      goto LABEL_25;
    case 10:
      v3 = 10;
      goto LABEL_25;
    case 11:
      v3 = 11;
      goto LABEL_25;
    case 12:
      v3 = 12;
LABEL_25:
      v4 = v3;
      break;
    case 13:
      break;
    case 14:
      v4 = 14;
      break;
    case 15:
      v4 = 15;
      break;
    case 16:
      v4 = 16;
      break;
    case 17:
      v4 = 17;
      break;
    case 18:
      v4 = 18;
      break;
    case 19:
      v4 = 19;
      break;
    case 20:
      v4 = 20;
      break;
    case 21:
      v4 = 21;
      break;
    case 22:
      v4 = 22;
      break;
    case 23:
      v4 = 23;
      break;
    case 24:
      v4 = 24;
      break;
    case 25:
      v4 = 25;
      break;
    case 26:
      v4 = 26;
      break;
    case 27:
      v4 = 27;
      break;
    case 28:
      v4 = 28;
      break;
    case 29:
      v4 = 29;
      break;
    case 30:
      v4 = 30;
      break;
    default:
      v4 = 31;
      break;
  }

  *v0 = v4;
  return result;
}

void MusicMetrics.ActionType.rawValue.getter()
{
  switch(*v0)
  {
    case 0x10:
      OUTLINED_FUNCTION_11_70(1937072496);
      break;
    case 0x16:
      OUTLINED_FUNCTION_9_11(18);
      break;
    case 0x18:
      OUTLINED_FUNCTION_11_70(1918986355);
      break;
    case 0x1B:
      OUTLINED_FUNCTION_0_197();
      break;
    default:
      return;
  }
}

void sub_216BF2DE4(void *a1@<X8>)
{
  MusicMetrics.ActionType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t MusicMetrics.ActionContext.init(rawValue:)()
{
  OUTLINED_FUNCTION_0_6();
  v1 = sub_21700F5E4();

  v3 = 8;
  if (v1 < 8)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

void MusicMetrics.ActionContext.rawValue.getter()
{
  switch(*v0)
  {
    case 4:
      OUTLINED_FUNCTION_17_5();
      break;
    default:
      return;
  }
}

void sub_216BF2F74(void *a1@<X8>)
{
  MusicMetrics.ActionContext.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t MusicMetrics.ActionDetailsKey.init(rawValue:)()
{
  OUTLINED_FUNCTION_0_6();
  v1 = sub_21700F5E4();

  v3 = 16;
  if (v1 < 0x10)
  {
    v3 = v1;
  }

  *v0 = v3;
  return result;
}

void MusicMetrics.ActionDetailsKey.rawValue.getter()
{
  switch(*v0)
  {
    case 3:
      OUTLINED_FUNCTION_0_197();
      break;
    case 5:
      OUTLINED_FUNCTION_9_11(19);
      break;
    case 0xA:
      OUTLINED_FUNCTION_8_86(0x7449756E656DLL);
      break;
    default:
      return;
  }
}

void sub_216BF31F0(void *a1@<X8>)
{
  MusicMetrics.ActionDetailsKey.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t MusicMetrics.FeatureName.init(rawValue:)()
{
  OUTLINED_FUNCTION_6_88();
  v1 = sub_21700F7F4();

  v3 = 0;
  v4 = 34;
  switch(v1)
  {
    case 0:
      goto LABEL_50;
    case 1:
      v3 = 1;
      goto LABEL_50;
    case 2:
      v3 = 2;
      goto LABEL_50;
    case 3:
      v3 = 3;
      goto LABEL_50;
    case 4:
      v3 = 4;
      goto LABEL_50;
    case 5:
      v3 = 5;
      goto LABEL_50;
    case 6:
      v3 = 6;
      goto LABEL_50;
    case 7:
      v3 = 7;
      goto LABEL_50;
    case 8:
      v3 = 8;
      goto LABEL_50;
    case 9:
      v3 = 9;
      goto LABEL_50;
    case 10:
      v3 = 10;
      goto LABEL_50;
    case 11:
      v3 = 11;
      goto LABEL_50;
    case 12:
      v3 = 12;
      goto LABEL_50;
    case 13:
      v3 = 13;
      goto LABEL_50;
    case 14:
      v3 = 14;
      goto LABEL_50;
    case 15:
      v3 = 15;
      goto LABEL_50;
    case 16:
      v3 = 16;
      goto LABEL_50;
    case 17:
      v3 = 17;
      goto LABEL_50;
    case 18:
      v3 = 18;
      goto LABEL_50;
    case 19:
      v3 = 19;
      goto LABEL_50;
    case 20:
      v3 = 20;
      goto LABEL_50;
    case 21:
      v3 = 21;
      goto LABEL_50;
    case 22:
      v3 = 22;
      goto LABEL_50;
    case 23:
      v3 = 23;
      goto LABEL_50;
    case 24:
      v3 = 24;
      goto LABEL_50;
    case 25:
      v3 = 25;
      goto LABEL_50;
    case 26:
      v3 = 26;
      goto LABEL_50;
    case 27:
      v3 = 27;
      goto LABEL_50;
    case 28:
      v3 = 28;
      goto LABEL_50;
    case 29:
      v3 = 29;
      goto LABEL_50;
    case 30:
      v3 = 30;
      goto LABEL_50;
    case 31:
      v3 = 31;
      goto LABEL_50;
    case 32:
      v3 = 32;
      goto LABEL_50;
    case 33:
      v3 = 33;
LABEL_50:
      v4 = v3;
      break;
    case 34:
      break;
    case 35:
      v4 = 35;
      break;
    case 36:
      v4 = 36;
      break;
    case 37:
      v4 = 37;
      break;
    case 38:
      v4 = 38;
      break;
    case 39:
      v4 = 39;
      break;
    case 40:
      v4 = 40;
      break;
    case 41:
      v4 = 41;
      break;
    case 42:
      v4 = 42;
      break;
    case 43:
      v4 = 43;
      break;
    case 44:
      v4 = 44;
      break;
    case 45:
      v4 = 45;
      break;
    case 46:
      v4 = 46;
      break;
    case 47:
      v4 = 47;
      break;
    case 48:
      v4 = 48;
      break;
    case 49:
      v4 = 49;
      break;
    case 50:
      v4 = 50;
      break;
    case 51:
      v4 = 51;
      break;
    default:
      v4 = 52;
      break;
  }

  *v0 = v4;
  return result;
}

void sub_216BF3464(void *a1@<X8>)
{
  MusicMetrics.FeatureName.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t MusicMetrics.PageType.init(rawValue:)()
{
  OUTLINED_FUNCTION_6_88();
  v1 = sub_21700F7F4();

  v3 = 0;
  v4 = 6;
  switch(v1)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v3 = 1;
      goto LABEL_18;
    case 2:
      v3 = 2;
      goto LABEL_18;
    case 3:
      v3 = 3;
      goto LABEL_18;
    case 4:
      v3 = 4;
      goto LABEL_18;
    case 5:
      v3 = 5;
LABEL_18:
      v4 = v3;
      break;
    case 6:
      break;
    case 7:
      v4 = 7;
      break;
    case 8:
      v4 = 8;
      break;
    case 9:
      v4 = 9;
      break;
    case 10:
      v4 = 10;
      break;
    case 11:
      v4 = 11;
      break;
    case 12:
      v4 = 12;
      break;
    case 13:
      v4 = 13;
      break;
    case 14:
      v4 = 14;
      break;
    case 15:
      v4 = 15;
      break;
    case 16:
      v4 = 16;
      break;
    case 17:
      v4 = 17;
      break;
    case 18:
      v4 = 18;
      break;
    case 19:
      v4 = 19;
      break;
    case 20:
      v4 = 20;
      break;
    case 21:
      v4 = 21;
      break;
    case 22:
      v4 = 22;
      break;
    case 23:
      v4 = 23;
      break;
    default:
      v4 = 24;
      break;
  }

  *v0 = v4;
  return result;
}

void MusicMetrics.PageType.rawValue.getter()
{
  switch(*v0)
  {
    case 2:
      OUTLINED_FUNCTION_5_99(0x7543u);
      break;
    case 3:
      OUTLINED_FUNCTION_1_168(0x7247u);
      break;
    case 4:
      OUTLINED_FUNCTION_11_70(1919837511);
      break;
    case 5:
      OUTLINED_FUNCTION_2_134(0x694Cu);
      break;
    case 7:
      OUTLINED_FUNCTION_11_70(1769369421);
      break;
    case 9:
    case 0xA:
      OUTLINED_FUNCTION_0_197();
      break;
    case 0xC:
      OUTLINED_FUNCTION_3_126(0x6C50u);
      break;
    case 0xF:
      OUTLINED_FUNCTION_4_110(0x6353u);
      break;
    case 0x10:
      OUTLINED_FUNCTION_10_74(25939);
      break;
    default:
      return;
  }
}

void sub_216BF37F0(void *a1@<X8>)
{
  MusicMetrics.PageType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_216BF381C()
{
  result = qword_27CAC5AC8;
  if (!qword_27CAC5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5AC8);
  }

  return result;
}

unint64_t sub_216BF3874()
{
  result = qword_27CAC5AD0;
  if (!qword_27CAC5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5AD0);
  }

  return result;
}

unint64_t sub_216BF38CC()
{
  result = qword_27CAC5AD8;
  if (!qword_27CAC5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5AD8);
  }

  return result;
}

unint64_t sub_216BF3924()
{
  result = qword_280E45E40;
  if (!qword_280E45E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45E40);
  }

  return result;
}

unint64_t sub_216BF397C()
{
  result = qword_27CAC5AE0;
  if (!qword_27CAC5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5AE0);
  }

  return result;
}

unint64_t sub_216BF39D4()
{
  result = qword_27CAC5AE8;
  if (!qword_27CAC5AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5AE8);
  }

  return result;
}

void sub_216BF3A50()
{
  sub_216688560(319, &unk_280E4A500);
  if (v0 <= 0x3F)
  {
    sub_21668A338(319, &qword_280E2A0D8, &qword_27CAC5AF0);
    if (v1 <= 0x3F)
    {
      sub_216688680();
      if (v2 <= 0x3F)
      {
        sub_21668A338(319, &qword_280E2A098, &unk_27CABFB20);
        if (v3 <= 0x3F)
        {
          sub_216688560(319, qword_280E45E50);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t _s10TargetTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10TargetTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t _s10ActionTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10ActionTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s13ActionContextOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t _s16ActionDetailsKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s16ActionDetailsKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t _s11FeatureNameOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xCD)
  {
    if (a2 + 51 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 51) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 52;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v5 = v6 - 52;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11FeatureNameOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xCD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xCC)
  {
    v6 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
          *result = a2 + 51;
        }

        break;
    }
  }

  return result;
}

uint64_t _s8PageTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8PageTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216BF4374(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_216BF43B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216BF4434()
{
  result = qword_27CAC5AF8;
  if (!qword_27CAC5AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5B00);
    sub_216BF44B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5AF8);
  }

  return result;
}

unint64_t sub_216BF44B8()
{
  result = qword_27CAC5B08;
  if (!qword_27CAC5B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5B08);
  }

  return result;
}

uint64_t sub_216BF450C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = 0x4034000000000000;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8CD0);
  type metadata accessor for MinimumLayoutMargins();
  sub_217007FF4();
  v24 = a1;
  sub_216681B04(a1, a4 + *(v8 + 52), &qword_27CAB8C98);
  *a4 = a2;
  a4[1] = a3;
  v25 = a4;
  sub_216B61C70();
  sub_21700DF14();
  sub_21700DF14();
  v9 = sub_21700E384();
  v26 = a3;
  sub_216BDD32C(a2);
  v10 = 0;
  v11 = *(a3 + 16);
  for (i = a3 + 32; ; i += 112)
  {
    if (v11 == v10)
    {
LABEL_14:
      sub_216697664(v24, &qword_27CAB8C98);

      v25[2] = v9;
      return result;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    v26 = v10;
    sub_216970008(i, v27);
    if (!*&v27[8])
    {
      goto LABEL_14;
    }

    v13 = v26;
    v26 = *v27;
    *v27 = *&v27[8];
    *&v27[16] = *&v27[24];
    *&v27[32] = *&v27[40];
    *&v27[48] = *&v27[56];
    *&v27[64] = *&v27[72];
    *&v27[80] = *&v27[88];
    *&v27[96] = v28;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_216E681BC();
    if (__OFADD__(v9[2], (v15 & 1) == 0))
    {
      goto LABEL_16;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B50);
    if (sub_21700F554())
    {
      v18 = sub_216E681BC();
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_18;
      }

      v16 = v18;
    }

    if (v17)
    {
      *(v9[7] + 8 * v16) = v13;
      sub_216970064(&v26);
    }

    else
    {
      v9[(v16 >> 6) + 8] |= 1 << v16;
      sub_216970008(&v26, v9[6] + 112 * v16);
      *(v9[7] + 8 * v16) = v13;
      sub_216970064(&v26);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v9[2] = v22;
    }

    ++v10;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_21700F824();
  __break(1u);
  return result;
}

void *sub_216BF47DC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = result;
  if (a6)
  {
    v11 = a6;
LABEL_5:
    v13 = *(a2 + 16);
    v14 = a2 + 32;
    sub_21700DF14();
    if (v13)
    {
      while (1)
      {
        sub_216970008(v14, v20);
        v15 = v20[12] == a5 && v20[13] == v11;
        if (v15 || (sub_21700F7D4() & 1) != 0)
        {
          break;
        }

        sub_216970064(v20);
        v14 += 112;
        if (!--v13)
        {
          goto LABEL_12;
        }
      }

      memcpy(__dst, v20, sizeof(__dst));
      goto LABEL_22;
    }

LABEL_12:
    v16 = v8[2];
    v17 = (v8 + 4);
    if (v16)
    {
      while (1)
      {
        sub_216970008(v17, v20);
        v18 = v20[12] == a5 && v20[13] == v11;
        if (v18 || (sub_21700F7D4() & 1) != 0)
        {
          break;
        }

        sub_216970064(v20);
        v17 += 112;
        if (!--v16)
        {
          goto LABEL_19;
        }
      }

      v19 = v20;
      return memcpy(a7, v19, 0x70uLL);
    }

LABEL_19:

LABEL_20:
    a7[5] = 0u;
    a7[6] = 0u;
    a7[3] = 0u;
    a7[4] = 0u;
    a7[1] = 0u;
    a7[2] = 0u;
    *a7 = 0u;
    return result;
  }

  v11 = a4;
  if (a4)
  {
    sub_21700DF14();
    a5 = a3;
    goto LABEL_5;
  }

  if (!*(a2 + 16))
  {
    if (result[2])
    {
      return sub_216970008((result + 4), a7);
    }

    goto LABEL_20;
  }

  sub_216970008(a2 + 32, __dst);
LABEL_22:
  v19 = __dst;
  return memcpy(a7, v19, 0x70uLL);
}

void sub_216BF4980(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = v2[17];
  v15 = *(v2 + 9);
  v9 = *(a1 + 32);
  v10 = v2[20];
  v11 = v2[21];
  v13 = *(v2 + 176);
  v12 = *v2;
  KeyPath = swift_getKeyPath();
  v19 = 0;

  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();

  swift_unknownObjectRetain();

  sub_216BF47DC(v4, v5, v6, v7, 0, 0, __src);
  if (*(&__src[0] + 1))
  {
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(&v18[7], __dst, 0x70uLL);
    *a2 = v12;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v7;
    a2[5] = v8;
    *(a2 + 3) = v15;
    a2[8] = v9;
    a2[9] = v10;
    a2[10] = v11;
    *(a2 + 88) = v13;
    a2[12] = KeyPath;
    a2[13] = 0;
    a2[14] = 0;
    a2[15] = 0;
    *(a2 + 128) = v19;
    memcpy(a2 + 129, v18, 0x77uLL);
  }

  else
  {

    swift_unknownObjectRelease();

    sub_216697664(__src, &qword_27CABA698);

    bzero(a2, 0xF8uLL);
  }

  a2[31] = 0;
}

uint64_t sub_216BF4B6C(uint64_t a1)
{
  *(v2 + 1752) = v1;
  *(v2 + 1744) = a1;
  return OUTLINED_FUNCTION_0_128(sub_216BF4B88);
}

uint64_t sub_216BF4B88()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[219];
  type metadata accessor for JSIntentDispatcher();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v2 = v0[2];
  v0[220] = v2;
  sub_216BF6318(v1, (v0 + 167));
  v3 = swift_allocObject();
  v0[221] = v3;
  memcpy((v3 + 16), v0 + 167, 0xB1uLL);
  type metadata accessor for ReplayGradientImageGenerator();
  swift_asyncLet_begin();
  sub_216BF6318(v1, (v0 + 190));
  v4 = swift_allocObject();
  v0[222] = v4;
  *(v4 + 16) = v2;
  memcpy((v4 + 24), v0 + 190, 0xB1uLL);

  swift_asyncLet_begin();
  v5 = OUTLINED_FUNCTION_5_100();

  return MEMORY[0x282200930](v5, v6, v7, v8);
}

uint64_t sub_216BF4D04()
{
  OUTLINED_FUNCTION_33();
  v1[223] = v0;
  if (v0)
  {
    v2 = OUTLINED_FUNCTION_5_100();

    return MEMORY[0x282200920](v2, v3, v4, v5);
  }

  else
  {
    v1[224] = v1[213];
    v1[225] = v1[214];
    v1[226] = v1[215];
    v1[227] = v1[216];
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();

    return MEMORY[0x282200928](v1 + 2, v1 + 217, sub_216BF4DD4, v1 + 162);
  }
}

uint64_t sub_216BF4DE8()
{
  OUTLINED_FUNCTION_33();
  *(v0 + 1824) = *(v0 + 1736);

  v1 = OUTLINED_FUNCTION_5_100();

  return MEMORY[0x282200920](v1, v2, v3, v4);
}

uint64_t sub_216BF4E88()
{
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1744);
  v5 = *(v0 + 1792);
  v6 = *(v0 + 1808);

  *v2 = v5;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_216BF4F70()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216BF4FE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_216BF5008, 0, 0);
}

uint64_t sub_216BF5008()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 24);
  type metadata accessor for ReplayGradientImageGenerator();
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_216BF50B4;

  return sub_216E510B0(v2, v3);
}

uint64_t sub_216BF50B4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  return MEMORY[0x2822009F8](sub_216BF51A8, 0, 0);
}

uint64_t sub_216BF51CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_216BF51F0, 0, 0);
}

uint64_t sub_216BF51F0()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_216BF52A8;

  return sub_216CC92F4();
}

uint64_t sub_216BF52A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_69_0();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  *v12 = v11;
  v13 = *v5;
  OUTLINED_FUNCTION_11();
  *v14 = v13;

  if (!v4)
  {
    v15 = *(v11 + 16);
    *v15 = a1;
    v15[1] = a2;
    v15[2] = a3;
    v15[3] = a4;
  }

  v16 = *(v13 + 8);

  return v16();
}

uint64_t sub_216BF53CC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B10);
  return sub_216BF541C(v1, a1 + *(v3 + 44));
}

uint64_t sub_216BF541C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B18);
  MEMORY[0x28223BE20](v78);
  v80 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v72 - v5;
  v7 = sub_2170090F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8CD0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v72 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B20);
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B28);
  MEMORY[0x28223BE20](v16 - 8);
  v77 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v21 = a1[1];
  v22 = *(v21 + 16);
  v81 = &v72 - v19;
  if (v22)
  {
    v73 = v8;
    *&v74 = v7;
    v75 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D0);
    sub_21700AED4();
    v23 = a1[2];
    sub_21700DF14();
    sub_21700DF14();
    sub_216BF450C(v87, v21, v23, v12);
    sub_21700AED4();
    sub_216BF5EB8(v87, v21, v23, a1[3], a1[4]);
    sub_216697664(v87, &qword_27CAB8C98);
    type metadata accessor for ObjectGraph();
    sub_2166D9530(&qword_27CAB8CC8, &qword_27CAB8CD0);
    sub_21700A1E4();

    sub_216697664(v12, &qword_27CAB8CD0);
    v24 = sub_217009CB4();
    v25 = a1[13];
    if (*(a1 + 128) != 1)
    {
      v27 = a1[12];
      v28 = a1[14];
      v29 = a1[15];

      sub_21700ED94();
      v30 = sub_217009C34();
      sub_217007BC4();

      v31 = v76;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v27, v25, v28, v29, 0);
      (*(v73 + 8))(v31, v74);
    }

    sub_217007F24();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B30) + 36)];
    *v40 = v24;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    v41 = sub_217009CA4();
    sub_217007F24();
    v13 = v75;
    v42 = &v15[*(v75 + 36)];
    *v42 = v41;
    *(v42 + 1) = v43;
    *(v42 + 2) = v44;
    *(v42 + 3) = v45;
    *(v42 + 4) = v46;
    v42[40] = 0;
    v20 = v81;
    sub_21674A83C(v15, v81);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v26, 1, v13);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D0);
  sub_21700AEB4();
  sub_216681B04(&v88, v85, &qword_27CAC5B38);
  sub_216970064(v87);
  v47 = a1[5];
  v49 = a1[9];
  v48 = a1[10];
  LODWORD(v75) = *(a1 + 88);
  v50 = *a1;
  type metadata accessor for AnimatedTextListItemViewCoordinator();
  v51 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610);
  swift_allocObject();

  v74 = *(a1 + 3);
  swift_unknownObjectRetain();
  *(v51 + 16) = sub_217007D84();
  *(v6 + 18) = v51;
  type metadata accessor for MusicStackAuthority();
  sub_2166B4CF0(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
  *(v6 + 20) = sub_217008CF4();
  *(v6 + 21) = v52;
  v53 = type metadata accessor for ReplayPageContentView();
  v54 = *(v53 + 72);
  *&v6[v54] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  v55 = &v6[*(v53 + 76)];
  type metadata accessor for ReplayToolbarPagePresenter(0);
  sub_2166B4CF0(&qword_27CAB9120, type metadata accessor for ReplayToolbarPagePresenter);
  *v55 = sub_217008CF4();
  v55[1] = v56;
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  *(v6 + 9) = v82[0];
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();
  *(v6 + 10) = v82[0];
  type metadata accessor for SocialGraphController();
  sub_21700E094();
  *(v6 + 12) = v82[0];
  type metadata accessor for AppDestinationPageProviderBox();
  sub_21700E094();
  *(v6 + 5) = v82[0];
  type metadata accessor for CloudLibraryStatusController();
  sub_21700E094();
  *(v6 + 11) = v82[0];
  type metadata accessor for UnifiedMessages.Coordinator();
  sub_21700E094();
  *(v6 + 19) = v82[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
  sub_21700E094();
  v57 = v83;
  v58 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  *(v6 + 7) = (*(v58 + 8))(v57, v58);
  *(v6 + 8) = v59;
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  type metadata accessor for MusicTabChangePublisher();
  sub_21700E094();
  sub_2166B4CF0(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher);
  *(v6 + 16) = sub_217008684();
  *(v6 + 17) = v60;
  v61 = swift_allocObject();
  v62 = v85[1];
  *(v61 + 16) = v85[0];
  *(v61 + 32) = v62;
  *(v61 + 48) = v86;
  *(v61 + 56) = v50;
  *v6 = sub_216BF6264;
  *(v6 + 1) = v61;
  v6[16] = 0;
  *(v6 + 6) = v47;
  *(v6 + 24) = v74;
  *(v6 + 13) = v49;
  *(v6 + 14) = v48;
  v6[120] = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B40);
  sub_21700AEB4();
  v63 = a1[8];
  type metadata accessor for ReplayGradientImageGenerator();
  sub_2166B4CF0(qword_280E31F28, type metadata accessor for ReplayGradientImageGenerator);
  v64 = sub_217007D54();
  v65 = &v6[*(v78 + 36)];
  *v65 = v64;
  v65[1] = v63;
  v66 = v81;
  v67 = v77;
  sub_21674A8EC(v81, v77);
  v68 = v80;
  sub_216681B04(v6, v80, &qword_27CAC5B18);
  v69 = v79;
  sub_21674A8EC(v67, v79);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5B48);
  sub_216681B04(v68, v69 + *(v70 + 48), &qword_27CAC5B18);

  sub_216697664(v6, &qword_27CAC5B18);
  sub_21674A954(v66);
  sub_216697664(v68, &qword_27CAC5B18);
  return sub_21674A954(v67);
}

uint64_t sub_216BF5EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21[-1] - v15;
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_216681B04(a1, &v22, &qword_27CAB8C98);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  (*(v11 + 16))(v16, v13, v10);
  sub_216A11BE0();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700D5A4();
  sub_216BF6270(v21);
  v17 = *(v11 + 8);
  v17(v13, v10);
  v18 = sub_216E9C508(v16);
  v17(v16, v10);
  return v18;
}

uint64_t sub_216BF60A8(uint64_t a1)
{
  *(v1 + 56) = a1;
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_216BF6140;

  return sub_216BF4B6C(v1 + 16);
}

uint64_t sub_216BF6140()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  if (!v0)
  {
    v7 = *(v3 + 16);
    v8 = *(v3 + 32);
    v9 = *(v3 + 56);
    *(v9 + 32) = *(v3 + 48);
    *v9 = v7;
    *(v9 + 16) = v8;
  }

  v10 = *(v5 + 8);

  return v10();
}

uint64_t sub_216BF62C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MinimumLayoutMargins();
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  result = sub_217006704();
  *a1 = v2;
  return result;
}

uint64_t sub_216BF6350()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_216BF63E8;

  return sub_216BF4FE8(v3, v0 + 16);
}

uint64_t sub_216BF63E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}