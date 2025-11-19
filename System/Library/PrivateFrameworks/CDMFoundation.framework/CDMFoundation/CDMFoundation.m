void sub_1DC28A9B8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v86 = *MEMORY[0x1E69E9840];
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v67 = v5;
  v68 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v66 = v9 - v8;
  v10 = sub_1DC510C8C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v64 = v12;
  v65 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v63 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  v20 = sub_1DC510B6C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v70 = v0;
  sub_1DC516A9C();
  __swift_project_boxed_opaque_existential_1(&v80, *(&v81 + 1));
  sub_1DC515D7C();
  sub_1DC51628C();
  v62 = v23;
  v29 = *(v23 + 8);
  v69 = v20;
  v29(v28, v20);
  if (v79)
  {
    sub_1DC28F9B0(&v78, v82);
    __swift_destroy_boxed_opaque_existential_1Tm(&v80);
    v30 = type metadata accessor for SessionStoreConversationHistoryProvider();
    sub_1DC28FB9C(v82, &v80);
    v68 = v30;
    v67 = sub_1DC28F198(&v80);
    sub_1DC5153CC();
    v31 = v85;
    if ((v85 & 1) == 0)
    {
      v80 = v83;
      v81 = v84;
      CPPIDForAuditToken(&v80);
    }

    v32 = *(v70 + qword_1EDAC7DA8 + 24);
    v33 = *(v70 + qword_1EDAC7DA8 + 32);
    __swift_project_boxed_opaque_existential_1((v70 + qword_1EDAC7DA8), v32);
    (*(v33 + 8))(&v80, v32, v33);
    sub_1DC5153BC();
    sub_1DC510B7C();
    LOBYTE(v78) = v31 & 1;
    sub_1DC290C78();
    v34 = type metadata accessor for NLRouterExperimentTrialController();
    v35 = NLRouterExperimentTrialController.__allocating_init()();
    sub_1DC515D7C();
    v37 = v63;
    v36 = v64;
    v38 = v65;
    (*(v64 + 16))(v63, v19, v65);
    sub_1DC28FB9C(v82, &v78);
    sub_1DC28FB9C(&v80, v77);
    v39 = sub_1DC5151AC();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v66 = sub_1DC51519C();
    type metadata accessor for ContextRetrievalClient();
    v42 = sub_1DC304CF8();
    v43 = type metadata accessor for SessionContext(0);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v46 = swift_allocObject();
    v75 = v68;
    v76 = &off_1F57FB6E0;
    *&v74 = v67;
    v72 = v34;
    v73 = &off_1F57FCBE8;
    *&v71 = v35;
    (*(v36 + 8))(v19, v38);
    __swift_destroy_boxed_opaque_existential_1Tm(&v80);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    (*(v62 + 32))(v46 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionId, v28, v69);
    (*(v36 + 32))(v46 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionLocale, v37, v38);
    sub_1DC28F9B0(&v74, v46 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionStoreConversationHistoryProvider);
    sub_1DC28F9B0(&v78, v46 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_sessionState);
    sub_1DC28F9B0(v77, v46 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterClient);
    sub_1DC28F9B0(&v71, v46 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_nlRouterExperimentController);
    *(v46 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_queryDecorationClient) = v66;
    *(v46 + OBJC_IVAR____TtC13CDMFoundation14SessionContext_contextRetrievalClient) = v42;
    v47 = *(v70 + _MergedGlobals);
    *(v70 + _MergedGlobals) = v46;
  }

  else
  {
    sub_1DC28EB30(&v78, &qword_1ECC7C928, &qword_1DC523AB8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v80);
    v48 = sub_1DC29120C();
    (*(v67 + 16))(v66, v48, v68);
    v49 = v2;
    v50 = sub_1DC516F6C();
    v51 = sub_1DC517BAC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v82[0] = v70;
      *v52 = 136446210;
      sub_1DC515D7C();
      OUTLINED_FUNCTION_3_8();
      sub_1DC291788(v53, v54);
      v55 = v69;
      v56 = sub_1DC51823C();
      v58 = v57;
      v29(v28, v55);
      v59 = sub_1DC291244(v56, v58, v82);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_1DC287000, v50, v51, "No session state found for %{public}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    (*(v67 + 8))(v66, v68);
  }

  v60 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_34();
}

void OUTLINED_FUNCTION_66()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_63()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_9_8()
{
  v1 = *(v0 - 256);
  v3 = *(v0 - 216);
  v2 = *(v0 - 208);
  v4 = *(v0 - 224);
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1)
{
  v2 = ((*(a1 + 48) + 7) & 0x1FFFFFFF8) + 16;
  v3 = *(a1 + 52) | 7;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_102()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return sub_1DC516F7C();
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_18(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 272);

  return sub_1DC33F1E0(v4, a2);
}

uint64_t OUTLINED_FUNCTION_9_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_25(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 352);

  return sub_1DC2E5408(v4, a2);
}

uint64_t OUTLINED_FUNCTION_9_27()
{
  v2 = *(v0 - 328);
}

uint64_t OUTLINED_FUNCTION_9_28()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_29()
{
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[18];
}

uint64_t OUTLINED_FUNCTION_9_31()
{
  v2 = *(*(v1 - 272) + 8);
  result = v0;
  v4 = *(v1 - 208);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_82()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_40_0()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_2_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, char *a5@<X8>)
{
  v10 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1DC3136DC(v10, a2, a3, v6, v7, v8, a4, v5, a5);
}

uint64_t OUTLINED_FUNCTION_8_11()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_8_16(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_8_20()
{
  v2 = *(v0 - 248);
  v1 = *(v0 - 240);
  v3 = *(v0 - 256);
  v4 = *(v0 - 264);
}

uint64_t OUTLINED_FUNCTION_8_22()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_23()
{
  v2 = **(v1 - 184);
  result = v0;
  v4 = *(v1 - 160);
  return result;
}

void sub_1DC28B888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = sub_1DC51623C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v138 = v29;
  v139 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v33);
  v137 = sub_1DC510C8C();
  v34 = OUTLINED_FUNCTION_0(v137);
  v136 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14(v39 - v38);
  v147 = sub_1DC510B6C();
  v40 = OUTLINED_FUNCTION_0(v147);
  v145 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_1();
  v146 = v45 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v135 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v55);
  v56 = OUTLINED_FUNCTION_65_3();
  v57 = OUTLINED_FUNCTION_0(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_40_2();
  v64 = OUTLINED_FUNCTION_20(v59);
  v141 = v65;
  v142 = v66;
  v143 = v67;
  v66(v64);
  v68 = v26;
  v69 = sub_1DC516F6C();
  v70 = sub_1DC517B9C();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_63();
    v148 = v59;
    v72 = v71;
    v73 = OUTLINED_FUNCTION_249();
    *v72 = 138412290;
    *(v72 + 4) = v68;
    *v73 = v68;
    v74 = v68;
    _os_log_impl(&dword_1DC287000, v69, v70, "NLBridge received message: %@", v72, 0xCu);
    sub_1DC28EB30(v73, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v59 = v148;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v75 = *(v59 + 8);
  v148 = v59 + 8;
  v144 = v75;
  v75(v20, v56);
  sub_1DC515D7C();
  OUTLINED_FUNCTION_61();
  v76 = v147;
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v147);
  OUTLINED_FUNCTION_183();
  v140 = v56;
  (*(v80 + class metadata base offset for NLBridge + 104))(v21);
  sub_1DC5153EC();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  OUTLINED_FUNCTION_183();
  (*(v85 + class metadata base offset for NLBridge + 272))(v51);
  sub_1DC516A9C();
  v86 = v152;
  v87 = OUTLINED_FUNCTION_68_3();
  v88 = v146;
  sub_1DC515D7C();
  sub_1DC51628C();
  v89 = *(v145 + 1);
  v90 = v76;
  v91 = &unk_1ECC8F000;
  v89(v88, v90);
  OUTLINED_FUNCTION_147();
  (*(v92 + class metadata base offset for NLBridge + 128))(&v149);
  __swift_destroy_boxed_opaque_existential_1Tm(v150);
  sub_1DC5153BC();
  OUTLINED_FUNCTION_183();
  (*(v93 + class metadata base offset for NLBridge + 320))();
  sub_1DC5153DC();
  OUTLINED_FUNCTION_147();
  (*(v94 + class metadata base offset for NLBridge + 224))(v95 & 1);
  if (sub_1DC5153DC())
  {
    v145 = v89;
    v96 = OUTLINED_FUNCTION_45_9(&a13);
    v97(v96);
    v98 = sub_1DC516F6C();
    v99 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v99))
    {
      OUTLINED_FUNCTION_17_4();
      v86 = swift_slowAlloc();
      *v86 = 0;
      OUTLINED_FUNCTION_37_6(&dword_1DC287000, v100, v101, "Understanding on device is on");
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v102 = OUTLINED_FUNCTION_55_11();
    v103(v102);
    sub_1DC5153BC();
    v104 = v135[4];
    sub_1DC510B7C();
    OUTLINED_FUNCTION_147();
    (*(v105 + class metadata base offset for NLBridge + 120))(v150);
    v106 = v151;
    if (v151)
    {
      v107 = OUTLINED_FUNCTION_68_3();
      v86 = v135;
      v108 = *(v106 - 8);
      v109 = *(v108 + 64);
      MEMORY[0x1EEE9AC00](v107);
      OUTLINED_FUNCTION_6_6();
      v110 = OUTLINED_FUNCTION_20(v108);
      v111(v110);
      sub_1DC28EB30(v150, &qword_1ECC7C928, &qword_1DC523AB8);
      OUTLINED_FUNCTION_57_5(&a12);
      sub_1DC51625C();
      (*(v108 + 8))(v24, v106);
      v91 = &unk_1ECC8F000;
      v113 = v138;
      v112 = v139;
      v114 = *(v138 + 32);
      v115 = OUTLINED_FUNCTION_56_11();
      v116(v115, v87, v112);
    }

    else
    {
      sub_1DC28EB30(v150, &qword_1ECC7C928, &qword_1DC523AB8);
      v125 = *MEMORY[0x1E69D0898];
      v113 = v138;
      v112 = v139;
      v126 = *(v138 + 104);
      v127 = OUTLINED_FUNCTION_56_11();
      v128(v127);
    }

    v129 = v146;
    sub_1DC515D7C();
    OUTLINED_FUNCTION_183();
    (*(v130 + v91[82] + 424))(v129, v104, v86, 0, 0);
    v145(v129, v147);
    (*(v113 + 8))(v86, v112);
    (*(v136 + 8))(v104, v137);
  }

  else
  {
    v117 = OUTLINED_FUNCTION_45_9(&a14);
    v118(v117);
    v119 = sub_1DC516F6C();
    v120 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v120))
    {
      OUTLINED_FUNCTION_17_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_37_6(&dword_1DC287000, v121, v122, "Understanding is not on device");
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v123 = OUTLINED_FUNCTION_55_11();
    v124(v123);
  }

  type metadata accessor for LVCHistory();
  v131 = sub_1DC2A2334();
  sub_1DC2A22A8(v131);
  OUTLINED_FUNCTION_183();
  (*(v132 + v91[82] + 344))();
  type metadata accessor for RVSHistory();
  v133 = sub_1DC2A2334();
  sub_1DC2A2388(v133);
  OUTLINED_FUNCTION_183();
  (*(v134 + v91[82] + 368))();
  OUTLINED_FUNCTION_34();
}

void OUTLINED_FUNCTION_32_2()
{
  v2 = *(v0 - 104);
  v1 = *(v0 - 96);
  v3 = *(v0 - 112);
}

uint64_t OUTLINED_FUNCTION_32_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_12()
{

  return sub_1DC51814C();
}

uint64_t OUTLINED_FUNCTION_32_13()
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_32_14()
{
  v2 = *(*(v1 - 160) + 8);
  result = v0;
  v4 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_17()
{
  v4 = *(v2 - 144);
  v3 = *(v2 - 136);
  v5 = *(v2 - 128) + *(v4 + 72) * v1;
  v6 = *(v4 + 16);
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

__n128 OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, uint64_t a12)
{
  result = a10;
  *(a1 + 16) = a10;
  *(a1 + 32) = a11;
  *(a1 + 48) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_22()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[16];
}

uint64_t OUTLINED_FUNCTION_0_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{
  v2 = ((*(a1 + 48) + 7) & 0x1FFFFFFF8) + 32;
  v3 = *(a1 + 52) | 7;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_25()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return sub_1DC37786C(v0, type metadata accessor for NLRouterTurnContext);
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_42()
{
  v2 = *(v0 - 360);

  return sub_1DC3A5DA0(v2, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_0_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_47(uint64_t a1)
{

  return MEMORY[0x1EEDC2238](v2, v1, v3, v2, a1);
}

uint64_t OUTLINED_FUNCTION_0_51()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_0_52()
{
  *(v0 + 8) = sub_1DC404D44;
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return v1 + 12;
}

void *OUTLINED_FUNCTION_0_53()
{
  *(v0 + 8) = sub_1DC406E28;
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return v1 + 12;
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_58()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_59()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_60(uint64_t a1)
{
  *(a1 + 8) = sub_1DC41CA4C;
  v2 = v1[38];
  v3 = v1[33];
  v4 = v1[29];
  v5 = v1[17];
  return v1[37];
}

uint64_t OUTLINED_FUNCTION_0_61()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_63()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_66()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return nullsub_1(0x302C302E302E30, 0xE700000000000000);
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_14_3()
{

  return sub_1DC517E1C();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1)
{

  return sub_1DC28EB30(a1, v1, v2);
}

void OUTLINED_FUNCTION_14_5()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_14_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_48()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_80(uint64_t a1)
{

  return sub_1DC28EB30(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return MEMORY[0x1EEE3BC48](v0 - 136);
}

uint64_t OUTLINED_FUNCTION_14_12()
{
  v2 = **(v1 - 488);
  result = v0;
  v4 = *(v1 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_15()
{
  v4 = *(v2 + 104);
  result = v0 + v1;
  v6 = *(v3 - 320);
  return result;
}

void OUTLINED_FUNCTION_14_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_14_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_14_19()
{
  v2 = *(v0 - 176);

  return sub_1DC296DBC();
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  v4 = *(*(v2 - 96) + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_1_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_15()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[27];
  return v0[29];
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_142()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_27()
{

  return sub_1DC51813C();
}

uint64_t OUTLINED_FUNCTION_1_34()
{
  v2 = *(v0 - 288);

  return sub_1DC2E5408(v2, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_1_35(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1DC291244(0xD000000000000016, (v1 - 32) | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_13_3()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_1DC517F4C();
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_5()
{
  result = *(v0 - 320);
  v2 = *(v0 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_1()
{
  result = *(v0 - 288);
  v2 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return sub_1DC5109BC();
}

void OUTLINED_FUNCTION_13_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_13_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_13_10(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_13_11(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_85()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_19()
{

  return sub_1DC51834C();
}

void OUTLINED_FUNCTION_13_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_13_21()
{

  return MEMORY[0x1EEE3FA28]();
}

void OUTLINED_FUNCTION_13_23()
{
  *(v0 - 256) = 0;
  *(v0 - 264) = 0;
  *(v0 - 240) = 0;
  *(v0 - 232) = 0;
}

void OUTLINED_FUNCTION_13_24(uint64_t a1, uint64_t a2)
{
  *(v2 - 176) = a1;
  *(v2 - 168) = a2;

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_13_25()
{

  return sub_1DC516F1C();
}

void OUTLINED_FUNCTION_13_26()
{
  v2 = *(v0 - 104);

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_75_7(uint64_t a1, uint64_t a2)
{

  return sub_1DC28F358(a1, a2, v2, v3);
}

id OUTLINED_FUNCTION_18_6()
{

  return sub_1DC312744(0x746E65696C435252, 0xEF6C696E20736920, -1, 0);
}

unint64_t OUTLINED_FUNCTION_18_7()
{

  return sub_1DC297814();
}

uint64_t OUTLINED_FUNCTION_18_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return swift_once();
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_18_16(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_17@<X0>(uint64_t a1@<X1>, char a2@<W8>, __int128 a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_18()
{

  return sub_1DC51820C();
}

uint64_t OUTLINED_FUNCTION_54@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  v1 = **(v0 - 592);
  result = *(v0 - 672);
  v3 = *(v0 - 544);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_15()
{
}

uint64_t OUTLINED_FUNCTION_10_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_22()
{
  result = *(v0 - 256);
  v3 = *(v1 - 468);
  v4 = *(v1 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_25()
{

  return sub_1DC40AA38(v0, type metadata accessor for HeuristicAgentKeywords);
}

uint64_t OUTLINED_FUNCTION_10_28()
{
  v3 = *v1;
  result = v0;
  v5 = *(v2 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_6()
{

  return ServiceSetupConfiguration.init(locale:clientProcessId:)();
}

uint64_t OUTLINED_FUNCTION_34_8()
{

  return swift_once();
}

void OUTLINED_FUNCTION_58()
{

  JUMPOUT(0x1E1298840);
}

void OUTLINED_FUNCTION_55_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_34_12()
{
  v2 = **(v1 - 184);
  result = v0;
  v4 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_13()
{

  return sub_1DC51814C();
}

uint64_t OUTLINED_FUNCTION_34_18()
{
  v2 = *(v0 - 304);

  return sub_1DC51120C();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_1DC5176CC();
}

void OUTLINED_FUNCTION_29_1()
{
  *(v3 - 296) = v2;
  *(v3 - 288) = v1;
  *(v3 - 280) = v0;
}

uint64_t OUTLINED_FUNCTION_29_3()
{
  v2 = *(v0 - 280);

  return sub_1DC327BD8();
}

uint64_t OUTLINED_FUNCTION_168()
{
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_118()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return sub_1DC28D414();
}

uint64_t OUTLINED_FUNCTION_97()
{
}

uint64_t OUTLINED_FUNCTION_117()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  v4 = *(*(v2 - 96) + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return sub_1DC291244(v0, v1, (v2 - 152));
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

__n128 *OUTLINED_FUNCTION_6_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "useCases.json");
  result[2].n128_u16[7] = -4864;
  result[3].n128_u64[0] = 0x7365736143657375;
  result[3].n128_u64[1] = 0xEB0000000062702ELL;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_9()
{
  v1 = *(*(v0 - 104) + 16);
  result = *(v0 - 112);
  v3 = *(v0 - 96);
  return result;
}

__n128 OUTLINED_FUNCTION_6_10()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  v6 = v0[4];
  return *(v0 + 5);
}

void OUTLINED_FUNCTION_6_11(void *a1@<X8>)
{
  v2 = *(v1 - 368);
  *a1 = *(v1 - 360);
  a1[1] = v2;
}

uint64_t OUTLINED_FUNCTION_6_13()
{
  v1 = *(v0 - 144);
  result = *(v0 - 152);
  v3 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_1()
{
  v2 = *(v1 - 88);
  v3 = *(*(v1 - 96) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_6_17()
{
  v2 = **(v1 - 192);
  result = v0;
  v4 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return sub_1DC51835C();
}

uint64_t OUTLINED_FUNCTION_6_23()
{
  result = *(v0 - 408);
  v2 = *(v0 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_25()
{
  v1 = *(*(v0 - 272) + 8);
  result = *(v0 - 264);
  v3 = *(v0 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_5()
{
  result = v0;
  v3 = *(v1 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_6()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_53_7()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return swift_once();
}

void OUTLINED_FUNCTION_53_12()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E1298840);
}

void OUTLINED_FUNCTION_53_13()
{
  *(v6 - 512) = v4;
  *(v6 - 520) = v3;
  *(v6 - 336) = v1;
  *(v6 - 264) = 0;
  v8 = *(v0 + 16);
  v7 = v0 + 16;
  v9 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  *(v6 - 224) = v8;
  *(v6 - 216) = v7 - 8;
  *(v6 - 240) = v2 + 8;
}

uint64_t OUTLINED_FUNCTION_53_14()
{

  return sub_1DC51817C();
}

uint64_t OUTLINED_FUNCTION_53_16()
{

  return sub_1DC51825C();
}

char *OUTLINED_FUNCTION_53_17@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  return sub_1DC33F29C(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_44_3()
{
  v2 = *v0;
  result = *(v1 - 280);
  v4 = *(v1 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_4(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_44_5()
{
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
}

uint64_t OUTLINED_FUNCTION_44_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44_9(uint64_t a1, uint64_t a2)
{

  return sub_1DC398320(a1, a2, type metadata accessor for NLRouterServiceResponse);
}

uint64_t OUTLINED_FUNCTION_44_11()
{
  result = v0;
  v3 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_15()
{
  result = v0;
  v3 = *(v1 - 296);
  return result;
}

void OUTLINED_FUNCTION_42()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_59_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_67()
{

  JUMPOUT(0x1E1298840);
}

BOOL OUTLINED_FUNCTION_169()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_59_7()
{

  return sub_1DC51825C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void OUTLINED_FUNCTION_114(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_124()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_114_0(uint64_t a1, uint64_t a2)
{

  return sub_1DC28F358(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_114_1()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_114_2()
{
  result = v0;
  v3 = *(v1 - 456);
  return result;
}

uint64_t sub_1DC28EA9C(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  OUTLINED_FUNCTION_15_7(a1);
  if (!v5)
  {
    swift_once();
  }

  v6 = a2(0);

  return __swift_project_value_buffer(v6, a3);
}

uint64_t OUTLINED_FUNCTION_229_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_1DC28EB30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_35(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_9()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 144) + 8;
  result = *(v0 - 128);
  v4 = *(v0 - 112);
  return result;
}

id OUTLINED_FUNCTION_30_10()
{

  return sub_1DC2A5914();
}

uint64_t OUTLINED_FUNCTION_30_12(uint64_t a1)
{
  *(a1 + 8) = sub_1DC3971A0;
  v2 = *(v1 + 64);
  return *(v1 + 16);
}

uint64_t sub_1DC28ED54(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  OUTLINED_FUNCTION_47_8();
  sub_1DC384434(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1DC28EDD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_41_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_115_0()
{
  result = v0;
  v3 = *(v1 - 200);
  return result;
}

id OUTLINED_FUNCTION_115_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_115_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_46_3()
{
  v3 = *(v0 - 256);
  v4 = *(v1 - 328);

  sub_1DC32DE40();
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return sub_1DC28EB30(v2, v0, v1);
}

id OUTLINED_FUNCTION_46_5(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_46_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_249()
{

  return swift_slowAlloc();
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1DC28F198(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DC28F9B0(a1, v2 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_37_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_37_10@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 336);
  return result;
}

uint64_t sub_1DC28F308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1DC28F358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_35(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DC28F3B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

uint64_t sub_1DC28F414(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return sub_1DC5176CC();
}

void OUTLINED_FUNCTION_33_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  static SignpostLogger.begin(_:enableTelemetry:)(a1, a2, a3, 1, a5, a6, v6);
}

uint64_t OUTLINED_FUNCTION_33_9()
{

  return swift_once();
}

void OUTLINED_FUNCTION_33_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_33_14()
{
  v2 = **(v1 - 216);
  result = v0;
  v4 = *(v1 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_16()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_33_18()
{
  v3 = *(v1 + 104);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_57()
{

  return sub_1DC510C6C();
}

uint64_t OUTLINED_FUNCTION_57_3()
{

  return sub_1DC291F78(v0 - 96, v0 - 128);
}

id OUTLINED_FUNCTION_57_6(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_57_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_57_10(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 96) = result;
  *(v2 - 136) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;

  return swift_willThrow();
}

BOOL OUTLINED_FUNCTION_15_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_6()
{
  v2 = v0[29];
  v5 = v0[36];
  v3 = v0[27];

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_66_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_11()
{

  return swift_once();
}

void OUTLINED_FUNCTION_15_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 128);
  v9 = *(v6 - 128);

  _os_log_impl(a1, v4, v9, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_18()
{
  v2 = ((*(*(v0 - 160) + 80) + 32) & ~*(*(v0 - 160) + 80)) + *(*(v0 - 160) + 72);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return sub_1DC51777C();
}

uint64_t sub_1DC28F9B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_35_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_35_4()
{
  v1 = *(v0 - 280);
  v2 = *(v0 - 288);
  v3 = *(v0 - 296);
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_35_6()
{
  result = v0;
  v3 = *(v1 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_11(uint64_t a1)
{
  *(a1 + 8) = sub_1DC370D38;
  v3 = *(v1 + 32);
  return *(v1 + 40);
}

uint64_t OUTLINED_FUNCTION_35_12()
{
  v2 = *(v0 - 208);

  return sub_1DC291244(0xD000000000000013, v2, (v0 - 120));
}

void OUTLINED_FUNCTION_35_15(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
  v5 = *v1;
}

uint64_t OUTLINED_FUNCTION_35_16()
{

  return swift_once();
}

id OUTLINED_FUNCTION_35_18(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

uint64_t sub_1DC28FB9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_28_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

id OUTLINED_FUNCTION_28_10(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_28_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_28_15()
{

  return sub_1DC44BE10(v0);
}

uint64_t OUTLINED_FUNCTION_28_16()
{
  v2 = *(v0 - 120);

  return sub_1DC45BDFC(v2, type metadata accessor for TurnSummary);
}

void sub_1DC28FD94(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for NLRouterClientImpl;
  *(a1 + 32) = &protocol witness table for NLRouterClientImpl;
  NLRouterClientImpl.init()();
}

uint64_t sub_1DC28FDF4(uint64_t a1)
{
  v3 = qword_1ECC8F2E0;
  OUTLINED_FUNCTION_47_8();
  sub_1DC384434(a1, v1 + v3, &qword_1ECC7C928, &qword_1DC523AB8);
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return sub_1DC2AAF50(v2, v0, v1);
}

void OUTLINED_FUNCTION_39_2()
{

  JUMPOUT(0x1E1296160);
}

void OUTLINED_FUNCTION_39_3()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_39_5()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_6()
{

  return sub_1DC3136A0();
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return swift_once();
}

id OUTLINED_FUNCTION_39_8()
{

  return sub_1DC299428(v0);
}

void OUTLINED_FUNCTION_39_9()
{
  v2 = v0 + ((*(v1[54] + 80) + 32) & ~*(v1[54] + 80));
  v3 = v1[51];
  v1[45] = v3 + 16;
  v1[36] = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_39_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1)
{

  return sub_1DC2AAF50(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return sub_1DC516F7C();
}

uint64_t sub_1DC290080(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1ECC8F2D0);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DC2900E0(char a1)
{
  v3 = qword_1ECC8F2B0;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC290120@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1ECC8F2E0;
  OUTLINED_FUNCTION_54_11();
  return sub_1DC28F414(v1 + v3, a1, &qword_1ECC7C928, &qword_1DC523AB8);
}

unint64_t OUTLINED_FUNCTION_58_1()
{

  return sub_1DC2D2774();
}

uint64_t OUTLINED_FUNCTION_58_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_7()
{
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v6 = v0[58];
  v5 = v0[59];
  v8 = v0[56];
  v7 = v0[57];
  v10 = v0[54];
  v9 = v0[55];
  v11 = v0[51];
}

uint64_t sub_1DC290280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*v5 + class metadata base offset for NLBridge + 168))(v15);
  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v12 + 24))(a1, a2, a3, a4, a5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  OUTLINED_FUNCTION_183();
  return (*(v13 + class metadata base offset for NLBridge + 472))();
}

void sub_1DC2903F0()
{
  OUTLINED_FUNCTION_33();
  v46 = v0;
  v43 = v1;
  v44 = v2;
  v40 = v3;
  v41 = v4;
  v38 = v5;
  v39 = sub_1DC51623C();
  v6 = OUTLINED_FUNCTION_0(v39);
  v45 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DC510C8C();
  v35 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DC510B6C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v46 + 32);
  OUTLINED_FUNCTION_44_8();
  v20(v19, v38, v13);
  OUTLINED_FUNCTION_82_2();
  v21(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v10);
  v22 = v45;
  OUTLINED_FUNCTION_126_0();
  v23 = v39;
  v24(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v39);
  v25 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v26 = (v18 + *(v11 + 80) + v25) & ~*(v11 + 80);
  v27 = (v12 + *(v22 + 80) + v26) & ~*(v22 + 80);
  v28 = (v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v46;
  (*(v16 + 32))(v29 + v25, v19, v13);
  (*(v11 + 32))(v29 + v26, v36, v35);
  (*(v45 + 32))(v29 + v27, v37, v23);
  v30 = (v29 + v28);
  v31 = v44;
  *v30 = v43;
  v30[1] = v31;
  OUTLINED_FUNCTION_27_5();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1DC292CC8;
  *(v32 + 24) = v29;
  v47[4] = sub_1DC292A1C;
  v47[5] = v32;
  OUTLINED_FUNCTION_5_4();
  v47[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v47[2] = v33;
  v47[3] = &block_descriptor_28;
  v34 = _Block_copy(v47);

  dispatch_sync(v42, v34);
  _Block_release(v34);
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_220();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

uint64_t sub_1DC290784()
{
  OUTLINED_FUNCTION_241();
  v25 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0(v25);
  v2 = v1;
  v3 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v5 = *(v4 + 64);
  v24 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0(v24);
  v7 = v6;
  v8 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v10 = *(v9 + 64);
  v11 = sub_1DC51623C();
  OUTLINED_FUNCTION_0(v11);
  v13 = v12;
  v14 = (v8 + v10 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = (*(v15 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v25);
  (*(v7 + 8))(v0 + v8, v24);
  (*(v13 + 8))(v0 + v14, v11);
  v18 = *(v0 + v16 + 8);

  OUTLINED_FUNCTION_240();

  return MEMORY[0x1EEE6BDD0](v19, v20, v21);
}

uint64_t OUTLINED_FUNCTION_5_7()
{
  v2 = *(v1 - 176);
  v3 = **(v1 - 184);
  return v0;
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_13()
{
  v2 = *(v0 + 8);
  result = *(v1 - 344);
  v4 = *(v1 - 384);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_15()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_5_18()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_20()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_5_21()
{

  return sub_1DC517E1C();
}

void OUTLINED_FUNCTION_5_24()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_5_26()
{

  return sub_1DC51764C();
}

uint64_t OUTLINED_FUNCTION_5_28()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return sub_1DC5176CC();
}

void sub_1DC290C78()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v80 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  (MEMORY[0x1EEE9AC00])();
  OUTLINED_FUNCTION_32_4(v10, v70);
  v11 = sub_1DC510C8C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v77 = v18;
  v78 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v70 - v19;
  v21 = sub_1DC516F7C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v30 = sub_1DC29120C();
  v76 = v24;
  (*(v24 + 16))(v29, v30, v21);
  v31 = *(v14 + 16);
  v79 = v5;
  v75 = v31;
  v31(v20, v5, v11);
  v32 = sub_1DC516F6C();
  v73 = sub_1DC517B9C();
  v33 = OUTLINED_FUNCTION_25_0(v73);
  v82 = v3;
  v34 = HIDWORD(v3) & 1;
  v74 = v34;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v85[0] = v71;
    *v35 = 136315394;
    sub_1DC291788(&qword_1ECC7BE58, MEMORY[0x1E6969770]);
    v70 = v32;
    v36 = sub_1DC51823C();
    v72 = v14 + 16;
    v37 = v34;
    v39 = v38;
    v40 = OUTLINED_FUNCTION_40_9();
    v41(v40);
    v42 = sub_1DC291244(v36, v39, v85);
    v43 = v21;
    v44 = v82;

    *(v35 + 4) = v42;
    *(v35 + 12) = 2082;
    v83 = v44;
    v84 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C940, &unk_1DC523CA0);
    v45 = sub_1DC51777C();
    v47 = sub_1DC291244(v45, v46, v85);

    *(v35 + 14) = v47;
    v48 = v70;
    _os_log_impl(&dword_1DC287000, v70, v73, "Setting up nlRouterClient with locale: %s, client processId: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();

    (*(v76 + 8))(v29, v43);
  }

  else
  {

    v49 = OUTLINED_FUNCTION_40_9();
    v50(v49);
    (*(v76 + 8))(v29, v21);
  }

  v51 = v1;
  v52 = *(v1 + qword_1EDAC7D98);
  sub_1DC517AAC();
  v53 = v81;
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  v58 = v78;
  v75(v78, v79, v11);
  sub_1DC28FB9C(v80, v85);
  v59 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v60 = (v59 + v77 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v61 = v11;
  v62 = (v59 + v77 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 2) = 0;
  *(v63 + 3) = 0;
  *(v63 + 4) = v52;
  (*(v14 + 32))(&v63[v59], v58, v61);
  v64 = &v63[v60];
  *v64 = v82;
  v64[4] = v74;
  sub_1DC28F9B0(v85, &v63[v62]);

  v65 = OUTLINED_FUNCTION_27_7();
  v68 = sub_1DC315A04(v65, v66, v53, v67, v63);
  v69 = *(v51 + qword_1EDAC7DA0);
  *(v51 + qword_1EDAC7DA0) = v68;

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC291138()
{
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v7));

  return MEMORY[0x1EEE6BDD0](v0, v7 + 40, v4 | 7);
}

uint64_t sub_1DC291244(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DC291E78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DC291F78(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_51_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1DC2BE044(a1, v3);
}

uint64_t OUTLINED_FUNCTION_51_6()
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return swift_once();
}

void OUTLINED_FUNCTION_51_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_51_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_40_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_13()
{
  v2 = *(v0 - 256);

  return sub_1DC5179EC();
}

id OUTLINED_FUNCTION_40_16()
{
  v2 = *(v0 - 536);

  return sub_1DC2BE518();
}

uint64_t OUTLINED_FUNCTION_17_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, char *a5@<X8>)
{
  v10 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1DC327CF8(v10, a2, a3, v6, v7, v8, a4, v5, a5);
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_12()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_17_17()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_17_18()
{
}

uint64_t OUTLINED_FUNCTION_17_19()
{

  return sub_1DC5109BC();
}

uint64_t sub_1DC291740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC291788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC2917D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_27_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_27_6()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v0);
  v4 = *(v3 + 32);
  return v1;
}

uint64_t OUTLINED_FUNCTION_27_10()
{

  return swift_once();
}

void OUTLINED_FUNCTION_27_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_27_14(float a1)
{
  *v1 = a1;

  return sub_1DC5183EC();
}

uint64_t OUTLINED_FUNCTION_27_15()
{

  return sub_1DC51834C();
}

uint64_t OUTLINED_FUNCTION_27_18()
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_27_19()
{

  return sub_1DC45BDFC(v0, type metadata accessor for QDContextState);
}

uint64_t sub_1DC291A34()
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

uint64_t sub_1DC291ACC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DC29CB90;

  return v7(a1);
}

uint64_t sub_1DC291BC4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_1()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  return sub_1DC517F4C();
}

uint64_t OUTLINED_FUNCTION_36_3()
{

  return sub_1DC312FB4(0);
}

void OUTLINED_FUNCTION_36_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_12()
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_36_13()
{
  result = *(v0 - 208);
  v2 = *(v0 - 200);
  v3 = *(v0 - 224);
  v4 = *(v0 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_14()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_36_15(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

void *OUTLINED_FUNCTION_36_16@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  v3 = v2[4];
  return __swift_project_boxed_opaque_existential_1(v2, v2[3]);
}

id OUTLINED_FUNCTION_36_18(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_36_20()
{

  return sub_1DC5179EC();
}

void *sub_1DC291E08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE50, &unk_1DC522990);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_1DC291E78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DC291FD4(a5, a6);
    *a1 = v9;
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
    result = sub_1DC517F8C();
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

uint64_t sub_1DC291F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DC291FD4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DC292108(a1, a2);
  sub_1DC292020(&unk_1F57F58F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DC292020(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1DC2CF8DC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DC292108(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1DC5178EC())
  {
    result = sub_1DC291E08(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DC517F1C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1DC517F8C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

id NLRouterExperimentTrialController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t NLRouterExperimentTrialController.init()()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  ObjectType = swift_getObjectType();
  v5 = sub_1DC516E9C();
  v6 = &off_1F57FCBD8;
  v4[0] = [objc_allocWithZone(v5) init];
  v2 = (*(ObjectType + 96))(v0, v4);
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t sub_1DC292368()
{
  OUTLINED_FUNCTION_37_4();
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v1);
  v4 = *(v0 + 32);
  v5 = (v0 + ((((*(v2 + 80) + 40) & ~*(v2 + 80)) + *(v3 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v6 = *v5;
  v11 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_33_0(v7);
  *v8 = v9;
  v8[1] = sub_1DC29F200;

  return sub_1DC292488();
}

uint64_t sub_1DC292488()
{
  OUTLINED_FUNCTION_1_0();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_1DC516F7C();
  v0[6] = v5;
  OUTLINED_FUNCTION_52(v5);
  v0[7] = v6;
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v9 = sub_1DC510C8C();
  v0[10] = v9;
  OUTLINED_FUNCTION_52(v9);
  v0[11] = v10;
  v12 = *(v11 + 64) + 15;
  v0[12] = swift_task_alloc();
  v13 = type metadata accessor for ServiceSetupConfiguration(0);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64) + 15;
  v0[13] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x1EEE6DFA0](v16, v17, 0);
}

void OUTLINED_FUNCTION_11_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_11()
{
  v1 = **(v0 - 376);
  result = *(v0 - 240);
  v3 = *(v0 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  result = *(v0 - 448);
  v2 = *(v0 - 440);
  return result;
}

void OUTLINED_FUNCTION_11_22()
{
  v2 = *(v0 - 488);

  JUMPOUT(0x1E1298840);
}

void OUTLINED_FUNCTION_11_25()
{
  v2 = *(v1 - 360);
  v3 = *(v2 + 16);
  v4 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
}

uint64_t OUTLINED_FUNCTION_11_29()
{
  result = v0;
  v3 = *(v1 - 320);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DC2929F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_54_5()
{
  v2 = *(v1 - 72);
  result = v0;
  v4 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_54_7()
{

  return sub_1DC510B6C();
}

uint64_t OUTLINED_FUNCTION_54_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_54_11()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_54_12()
{

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_54_13()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54_14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_54_15(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_54_16()
{
  v2 = *(v0 - 296);

  return sub_1DC5180AC();
}

uint64_t OUTLINED_FUNCTION_54_17()
{
  v2 = *(v0 - 176);

  return sub_1DC5179EC();
}

void OUTLINED_FUNCTION_85_1(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;
  *(v1 - 112) = 0xE700000000000000;

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_85_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_85_3()
{
  *(v3 - 288) = *(v1 + 32);
  v4 = *(v0 + 16);
  result = v2;
  v6 = *(v3 - 240);
  v7 = *(v3 - 272);
  return result;
}

void OUTLINED_FUNCTION_85_7()
{
  v1 = *(v0 - 136);
  v2 = *(v0 - 344);
  v3 = *(v0 - 320);
  v4 = *(v0 - 232);
}

uint64_t OUTLINED_FUNCTION_88_0(uint64_t a1)
{
  *(a1 + 32) = v1;
  v4 = *(v3 + 32);
  return a1 + v2;
}

uint64_t sub_1DC292CC8()
{
  v0 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v0);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v5);
  v7 = (v2 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_1DC51623C();
  OUTLINED_FUNCTION_52(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v7 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v16 = *(v14 + 64);
  OUTLINED_FUNCTION_52_8();
  v18 = *v17;
  v19 = v17[1];

  return sub_1DC292DFC();
}

uint64_t sub_1DC292DFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30_1();
  sub_1DC292F48();
  v5 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_41();
  v9(v8);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  OUTLINED_FUNCTION_38_1();
  (*(v13 + 472))(v0);
  OUTLINED_FUNCTION_38_1();
  v15 = *(v14 + 800);
  v16 = OUTLINED_FUNCTION_30();
  return v17(v16);
}

uint64_t sub_1DC292F48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD18, &unk_1DC524D10);
  OUTLINED_FUNCTION_63_0();
  sub_1DC51764C();
  OUTLINED_FUNCTION_38_1();
  (*(v0 + 616))();
  OUTLINED_FUNCTION_63_0();
  sub_1DC51764C();
  OUTLINED_FUNCTION_38_1();
  (*(v1 + 640))();
  OUTLINED_FUNCTION_38_1();
  v3 = *(v2 + 592);

  return v3(0);
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return sub_1DC2BE044(v1, v2 + v0);
}

uint64_t OUTLINED_FUNCTION_43_3()
{
  v2 = **(v1 - 192);
  result = v0;
  v4 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_6()
{

  return sub_1DC516F5C();
}

void OUTLINED_FUNCTION_43_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_43_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 88) = a5;

  return sub_1DC516F7C();
}

uint64_t OUTLINED_FUNCTION_43_10()
{

  return swift_once();
}

uint64_t sub_1DC2931CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_35_1();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1DC293244(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1DC28EDD8(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1DC2932B8(char a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupRetried;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC2933CC(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_148();
  v8 = sub_1DC510AFC();
  v9 = OUTLINED_FUNCTION_10(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC510AEC();
  OUTLINED_FUNCTION_38_1();
  (*(v12 + 544))(v2);
  sub_1DC2936F0();
  v14 = v13;
  OUTLINED_FUNCTION_38_1();
  (*(v15 + 400))(2);
  OUTLINED_FUNCTION_38_1();
  v17 = (*(v16 + 816))(a1, 0xD000000000000012, v14);
  OUTLINED_FUNCTION_38_1();
  (*(v18 + 352))(0xD000000000000012, v14);
  v19 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35(v19);
  v21 = *(v20 + 16);
  v22 = OUTLINED_FUNCTION_63_0();
  v23(v22);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
  OUTLINED_FUNCTION_38_1();
  (*(v27 + 328))(v1);
  return v17 & 1;
}

uint64_t sub_1DC29366C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_1DC510AFC();
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 40))(v2 + v4, a1);
  return swift_endAccess();
}

unint64_t sub_1DC2936F0()
{
  v1 = sub_1DC51623C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  (*(v4 + 104))(v0, *MEMORY[0x1E69D0890], v1);
  OUTLINED_FUNCTION_63_0();
  sub_1DC2937EC();
  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_62_2();
  v9(v8);
  return 0xD000000000000012;
}

uint64_t sub_1DC2937EC()
{
  sub_1DC51623C();
  sub_1DC293BE4(&qword_1ECC7BB20, MEMORY[0x1E69D08A0]);
  sub_1DC5179EC();
  sub_1DC5179EC();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1DC51825C();
  }

  return v1 & 1;
}

uint64_t OUTLINED_FUNCTION_2_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_15()
{
  v2 = **(v1 - 352);
  result = v0;
  v4 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_18()
{

  return sub_1DC37786C(v0, type metadata accessor for HeuristicRoutingRequest);
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t a1)
{
  *(a1 + 8) = sub_1DC3975D8;
  v2 = *(v1 + 80);
  v3 = *(v1 + 48);
  v4 = *(v1 + 208);
  return *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_2_29@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_32()
{

  return swift_once();
}

uint64_t sub_1DC293BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC293C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC293C74(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1DC293CBC()
{
  OUTLINED_FUNCTION_54_11();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1DC293CF4(char a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeout;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

void sub_1DC293D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_102_0();
  a21 = v26;
  a22 = v27;
  v235 = v28;
  v228 = v29;
  v234 = v30;
  v237 = sub_1DC510C8C();
  v31 = OUTLINED_FUNCTION_0(v237);
  v243 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v36);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD30, &qword_1DC524D20);
  OUTLINED_FUNCTION_35(v230);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25();
  v236 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  v42 = OUTLINED_FUNCTION_10(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  v241 = v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_62();
  v242 = v49;
  OUTLINED_FUNCTION_12();
  v240 = sub_1DC51737C();
  v50 = OUTLINED_FUNCTION_0(v240);
  v233 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v54);
  v239 = sub_1DC5173CC();
  v55 = OUTLINED_FUNCTION_0(v239);
  v224 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  v232 = v59;
  OUTLINED_FUNCTION_12();
  v60 = sub_1DC5173EC();
  v61 = OUTLINED_FUNCTION_0(v60);
  v223 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_42_3();
  v66 = sub_1DC516F7C();
  v67 = OUTLINED_FUNCTION_0(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v220 - v76;
  OUTLINED_FUNCTION_38_1();
  v79 = v78 + 296;
  v80 = *(v78 + 296);
  v81 = v80();
  if (v81)
  {
    v82 = v69;

    if (sub_1DC34D4A4())
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_18_13();
      v83(v22);
      v84 = sub_1DC516F6C();
      v85 = sub_1DC517B8C();
      if (OUTLINED_FUNCTION_15_4(v85))
      {
        v86 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v86);
        OUTLINED_FUNCTION_33_10(&dword_1DC287000, v87, v88, "Previous setup failed or not run, should call setup again");
        OUTLINED_FUNCTION_40_0();
      }

      (*(v69 + 8))(v22, v66);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_12_0();
    v124 = *(v123 + 344);
    v238 = v23;
    v125 = v124();
    if (v235)
    {
      v127 = v236;
      v128 = v237;
      v129 = v242;
      v130 = v243;
      v131 = v241;
      if (v126)
      {
        v132 = v125 == v228 && v126 == v235;
        if (v132)
        {

          goto LABEL_29;
        }

        sub_1DC51825C();
        OUTLINED_FUNCTION_23_2();

        if (v23)
        {
LABEL_29:
          OUTLINED_FUNCTION_12_0();
          v144 += 40;
          v145 = *v144;
          v236 = v144;
          v237 = v145;
          v145();
          v239 = *(v130 + 16);
          v240 = v130 + 16;
          v239(v131, v234, v128);
          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v146, v147, v148, v128);
          v149 = *(v230 + 48);
          v150 = &qword_1ECC7CD00;
          v151 = &unk_1DC5259F0;
          sub_1DC28F308(v129, v127, &qword_1ECC7CD00, &unk_1DC5259F0);
          sub_1DC28F308(v131, v127 + v149, &qword_1ECC7CD00, &unk_1DC5259F0);
          OUTLINED_FUNCTION_39(v127, 1, v128);
          if (v132)
          {
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v152, v153, v154);
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v155, v156, v157);
            OUTLINED_FUNCTION_39(v127 + v149, 1, v128);
            if (v132)
            {
              sub_1DC28EB30(v127, &qword_1ECC7CD00, &unk_1DC5259F0);
              v158 = v82;
              v159 = v66;
              goto LABEL_43;
            }
          }

          else
          {
            v150 = v227;
            sub_1DC28F308(v127, v227, &qword_1ECC7CD00, &unk_1DC5259F0);
            OUTLINED_FUNCTION_39(v127 + v149, 1, v128);
            if (!v160)
            {
              (*(v130 + 32))(v226, v127 + v149, v128);
              OUTLINED_FUNCTION_8_9();
              sub_1DC293BE4(v188, v189);
              OUTLINED_FUNCTION_46_6();
              v190 = sub_1DC5176CC();
              v191 = *(v243 + 8);
              v192 = OUTLINED_FUNCTION_153_0();
              v191(v192);
              v151 = &qword_1ECC7CD00;
              OUTLINED_FUNCTION_62_3();
              sub_1DC28EB30(v193, v194, v195);
              OUTLINED_FUNCTION_62_3();
              sub_1DC28EB30(v196, v197, v198);
              v199 = OUTLINED_FUNCTION_85_0();
              v191(v199);
              v130 = v243;
              OUTLINED_FUNCTION_62_3();
              sub_1DC28EB30(v200, v201, v202);
              v158 = v82;
              v159 = v66;
              if (v190)
              {
LABEL_43:
                OUTLINED_FUNCTION_12_0();
                if ((*(v203 + 560))())
                {
                  sub_1DC28D414();
                  OUTLINED_FUNCTION_82_2();
                  v204 = v222;
                  v205(v222);
                  v206 = sub_1DC516F6C();
                  v207 = sub_1DC517B8C();
                  if (OUTLINED_FUNCTION_14_7(v207))
                  {
                    v208 = OUTLINED_FUNCTION_35_8();
                    OUTLINED_FUNCTION_81_2(v208);
                    OUTLINED_FUNCTION_16_0();
                    _os_log_impl(v209, v210, v211, v212, v213, 2u);
                    OUTLINED_FUNCTION_31();
                  }

                  (*(v158 + 8))(v204, v159);
                }

                goto LABEL_27;
              }

LABEL_38:
              v221 = v159;
              sub_1DC28D414();
              OUTLINED_FUNCTION_82_2();
              v170 = OUTLINED_FUNCTION_161_1();
              v171(v170);
              v172 = OUTLINED_FUNCTION_83(&a16);
              v239(v172, v234, v128);

              v173 = sub_1DC516F6C();
              v174 = sub_1DC517B8C();

              LODWORD(v243) = v174;
              if (os_log_type_enabled(v173, v174))
              {
                v175 = OUTLINED_FUNCTION_140();
                v242 = OUTLINED_FUNCTION_143();
                v245[0] = v242;
                *v175 = 136315394;
                OUTLINED_FUNCTION_8_9();
                sub_1DC293BE4(v176, v177);
                sub_1DC51823C();
                OUTLINED_FUNCTION_238();
                v178 = *(v130 + 8);
                v179 = OUTLINED_FUNCTION_85_0();
                v241 = v180;
                v180(v179);
                v181 = OUTLINED_FUNCTION_12_3();
                v184 = sub_1DC291244(v181, v182, v183);

                *(v175 + 4) = v184;
                *(v175 + 12) = 2080;
                OUTLINED_FUNCTION_20_3(&a10);
                v237();
                if (__swift_getEnumTagSinglePayload(v150, 1, v128))
                {
                  sub_1DC28EB30(v150, &qword_1ECC7CD00, &unk_1DC5259F0);
                }

                else
                {
                  v239(v226, v150, v128);
                  v214 = sub_1DC28EB30(v150, &qword_1ECC7CD00, &unk_1DC5259F0);
                  MEMORY[0x1E128F450](v214);
                  v215 = OUTLINED_FUNCTION_47_6();
                  v241(v215);
                }

                v216 = OUTLINED_FUNCTION_62_2();
                v219 = sub_1DC291244(v216, v217, v218);

                *(v175 + 14) = v219;
                _os_log_impl(&dword_1DC287000, v173, v243, "Given locale %s is not the same as exists locale %s, should call setup again", v175, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_66();
                OUTLINED_FUNCTION_40_0();

                (*(v82 + 8))(v229, v66);
              }

              else
              {

                v185 = *(v130 + 8);
                v186 = OUTLINED_FUNCTION_85_0();
                v187(v186);
                (*(v158 + 8))(v151, v221);
              }

              goto LABEL_27;
            }

            v150 = &qword_1ECC7CD00;
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v161, v162, v163);
            OUTLINED_FUNCTION_59_2();
            sub_1DC28EB30(v164, v165, v166);
            v167 = *(v130 + 8);
            v168 = OUTLINED_FUNCTION_153_0();
            v169(v168);
          }

          sub_1DC28EB30(v127, &unk_1ECC7CD30, &qword_1DC524D20);
          v158 = v82;
          v159 = v66;
          goto LABEL_38;
        }
      }
    }

    else
    {
      v127 = v236;
      v128 = v237;
      v129 = v242;
      v130 = v243;
      v131 = v241;
      if (!v126)
      {
        goto LABEL_29;
      }
    }

    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v133(v231);
    v134 = sub_1DC516F6C();
    v135 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v135))
    {
      v136 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v136);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v137, v138, v139, v140, v141, 2u);
      OUTLINED_FUNCTION_31();
    }

    v142 = OUTLINED_FUNCTION_150_0();
    v143(v142, v66);
  }

  else
  {
    v242 = v80;
    v243 = v79;
    v237 = v25;
    v238 = v23;
    v241 = v24;
    v89 = v239;
    v90 = v240;
    sub_1DC28D414();
    v91 = OUTLINED_FUNCTION_89_0(v69);
    v92(v91);
    v93 = sub_1DC516F6C();
    v94 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v94))
    {
      v95 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v95);
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_56_4(v96, v97, v98, v99);
      OUTLINED_FUNCTION_58();
    }

    (*(v69 + 8))(v77, v66);
    v100 = v238;
    OUTLINED_FUNCTION_38_1();
    (*(v101 + 760))();
    OUTLINED_FUNCTION_38_1();
    v103 = (*(v102 + 304))();
    if (*(v100 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_isDecoupleFromSession) == 1)
    {
      v104 = v242(v103);
      if (v104)
      {
        v105 = v104;
        [v104 registerWithAssetsDelegate:*(v100 + 24) withType:0];
      }

      v106 = v232;
      v107 = v233;
      if (*(v100 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_shouldAssetsTimeout) == 1 && *(v100 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmProxyExpirationInSeconds) > 0.0)
      {
        v108 = v90;
        v109 = v89;
        v242 = *(v100 + 32);
        sub_1DC5173DC();
        sub_1DC51741C();
        v243 = *(v223 + 8);
        v110 = OUTLINED_FUNCTION_229();
        v111(v110);
        v245[4] = sub_1DC357ABC;
        v245[5] = v100;
        OUTLINED_FUNCTION_66_6();
        v245[1] = 1107296256;
        OUTLINED_FUNCTION_3_14();
        v245[2] = v112;
        v245[3] = &block_descriptor_31;
        v113 = _Block_copy(v245);

        sub_1DC51739C();
        v244 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_1_14();
        sub_1DC293BE4(v114, v115);
        v116 = v106;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
        v238 = v60;
        OUTLINED_FUNCTION_70_4();
        sub_1DC2C4B5C(v117, v118, v119);
        v120 = v225;
        sub_1DC517E9C();
        v121 = v241;
        MEMORY[0x1E1296480](v241, v116, v120, v113);
        _Block_release(v113);
        (*(v107 + 8))(v120, v108);
        OUTLINED_FUNCTION_62_0(&a12);
        v122(v116, v109);
        (v243)(v121, v238);
      }
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_101();
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  v4 = *(*(v2 - 96) + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  *(v1 + 16) = v0;
  result = v1 + *(v3 - 144) + v2 * *(v3 - 152);
  v5 = **(v3 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_7()
{
  v1 = **(v0 - 560);
  result = *(v0 - 648);
  v3 = *(v0 - 536);
  return result;
}

BOOL OUTLINED_FUNCTION_20_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_12_8(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v2, a2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_12_11()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_12_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_14()
{
  v2 = v0[58];
  result = v0[59];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[50];
  v10 = v0[46];
  v9 = v0[47];
  v11 = v0[44];
  v12 = v0[45];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_16()
{
  v2 = *(v0 - 440);
}

uint64_t OUTLINED_FUNCTION_12_17@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_20(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
  v4 = *(v2 - 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_21()
{
  v1 = **(v0 - 336);
  result = *(v0 - 272);
  v3 = *(v0 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_25()
{

  return sub_1DC41D748(v0, type metadata accessor for NLRouterServiceRequest);
}

uint64_t OUTLINED_FUNCTION_12_26()
{

  return sub_1DC44B9CC(0, 0);
}

uint64_t OUTLINED_FUNCTION_98_4()
{
  v2 = *(v0 - 192);
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 4, a1);
}

uint64_t OUTLINED_FUNCTION_47_5()
{

  return sub_1DC28EB30(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_47_8()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_47_10(int a1@<W8>)
{
  *(v4 - 468) = a1;
  v5 = *(v4 - 232);
  *(v4 - 480) = v5 + 104;
  *(v4 - 496) = v5 + 32;
  *(v4 - 488) = v5 + 8;
  v6 = *(v1 + 56);
  v7 = *(v4 - 328);
  *(v4 - 320) = v3;
  *(v4 - 288) = v2;
  *(v4 - 296) = v1;
}

uint64_t sub_1DC29503C()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DC29F200;

  return NLRouterClientImpl.setupNLRouter(with:)(v2);
}

uint64_t sub_1DC2950CC()
{
  if (!v1[2])
  {
    if (sub_1DC517AEC())
    {
      v5 = v1[9];
      v6 = v1[6];
      v7 = v1[7];
      sub_1DC29120C();
      v8 = OUTLINED_FUNCTION_8_4();
      v9(v8);
      v10 = sub_1DC516F6C();
      v11 = sub_1DC517B9C();
      v12 = OUTLINED_FUNCTION_20_1(v11);
      v13 = v1[9];
      v14 = v1[6];
      v15 = v1[7];
      if (v12)
      {
        OUTLINED_FUNCTION_17_4();
        v16 = swift_slowAlloc();
        OUTLINED_FUNCTION_31_2(v16);
        OUTLINED_FUNCTION_16_2(&dword_1DC287000, v17, v18, "setupNLRouterTask cancelled. Returning");
        v19 = OUTLINED_FUNCTION_7_7();
        MEMORY[0x1E1298840](v19);
      }

      (*(v15 + 8))(v13, v14);
      OUTLINED_FUNCTION_44_5();

      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_36_8();

      __asm { BRAA            X1, X16 }
    }

    v22 = OUTLINED_FUNCTION_23_8();
    v23(v22);
    OUTLINED_FUNCTION_34_6();
    v24 = *(v0 + 24);
    v25 = *(v0 + 32);
    v26 = OUTLINED_FUNCTION_36();
    __swift_project_boxed_opaque_existential_1(v26, v27);
    OUTLINED_FUNCTION_25_4();
    v35 = v28 + *v28;
    v30 = *(v29 + 4);
    v31 = swift_task_alloc();
    v1[15] = v31;
    *v31 = v1;
    OUTLINED_FUNCTION_11_8(v31);
    OUTLINED_FUNCTION_36_8();

    __asm { BRAA            X3, X16 }
  }

  v2 = *(MEMORY[0x1E69E86C0] + 4);
  v3 = swift_task_alloc();
  v1[14] = v3;
  *v3 = v1;
  v3[1] = sub_1DC2960D8;
  OUTLINED_FUNCTION_36_8();

  return MEMORY[0x1EEE6DA40]();
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return sub_1DC51674C();
}

BOOL OUTLINED_FUNCTION_25_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return mach_absolute_time();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_7(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_111()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_26_8()
{
  v3 = v1[36];
  v5 = v1[28];
  v4 = v1[29];
  v6 = v1[27];
}

uint64_t OUTLINED_FUNCTION_26_9()
{
  v9 = v0[58];
  v10 = v0[57];
  v11 = v0[56];
  v12 = v0[55];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[52];
  v16 = v0[51];
  v17 = v0[50];
  v18 = v0[47];
  v19 = v0[46];
  v20 = v0[45];
  v21 = v0[44];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v25 = v0[40];
  v26 = v0[39];
  v27 = v0[38];
  v28 = v0[35];
  v29 = v0[33];
  v30 = v0[32];
  v3 = v0[30];
  *(v1 - 176) = v0[31];
  *(v1 - 168) = v3;
  v4 = v0[28];
  *(v1 - 160) = v0[29];
  *(v1 - 152) = v4;
  v5 = v0[23];
  *(v1 - 144) = v0[24];
  *(v1 - 136) = v5;
  v6 = v0[19];
  *(v1 - 128) = v0[20];
  *(v1 - 120) = v6;
  v7 = v0[17];
  *(v1 - 112) = v0[18];
  *(v1 - 104) = v7;
  *(v1 - 96) = v0[14];
}

uint64_t OUTLINED_FUNCTION_26_11()
{
  result = v0;
  v3 = *(v1 - 184);
  v4 = *(v1 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_12()
{
  result = *(v0 - 256);
  v3 = *(v1 - 532);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return sub_1DC51825C();
}

void OUTLINED_FUNCTION_26_15()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_19()
{
  v2 = *(v0 - 256);

  return sub_1DC45BDFC(v2, type metadata accessor for NLRouterTurnContext);
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_7()
{
  v1 = **(v0 - 360);
  result = *(v0 - 288);
  v3 = *(v0 - 280);
  return result;
}

uint64_t *OUTLINED_FUNCTION_4_12(uint64_t *result)
{
  v2 = *result;
  v3 = *v1;
  return result;
}

__n128 OUTLINED_FUNCTION_4_14()
{
  v2 = *(v1 - 64);
  *v0 = *(v1 - 80);
  *(v0 + 16) = v2;
  result = *(v1 - 48);
  v4 = *(v1 - 32);
  *(v0 + 32) = result;
  *(v0 + 48) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_16@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2 & 0xFFFFFFFFFFFFLL | 0x525F000000000000;
  *(a1 + 40) = 0xEF7265646E696D65;

  return sub_1DC35DBDC();
}

uint64_t OUTLINED_FUNCTION_4_21()
{
  v2 = *(v0 - 280);

  return sub_1DC2E5408(v2, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_4_22()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_28()
{
  v1 = *(v0 - 288);
  v2 = *(v0 - 296);
  v3 = *(v0 - 304);
}

uint64_t OUTLINED_FUNCTION_4_32()
{
  v1 = **(v0 - 416);
  result = *(v0 - 320);
  v3 = *(v0 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_35(uint64_t result)
{
  *(result + 8) = v1;
  v4 = v2[37];
  v3 = v2[38];
  v5 = v2[33];
  v6 = v2[29];
  return result;
}

void sub_1DC29595C()
{
  if (sub_1DC517AEC())
  {
    v2 = v1[9];
    v3 = v1[6];
    v4 = v1[7];
    sub_1DC29120C();
    v5 = OUTLINED_FUNCTION_8_4();
    v6(v5);
    v7 = sub_1DC516F6C();
    v8 = sub_1DC517B9C();
    v9 = OUTLINED_FUNCTION_20_1(v8);
    v10 = v1[9];
    v11 = v1[6];
    v12 = v1[7];
    if (v9)
    {
      OUTLINED_FUNCTION_17_4();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_31_2(v13);
      OUTLINED_FUNCTION_16_2(&dword_1DC287000, v14, v15, "setupNLRouterTask cancelled. Returning");
      v16 = OUTLINED_FUNCTION_7_7();
      MEMORY[0x1E1298840](v16);
    }

    (*(v12 + 8))(v10, v11);
    OUTLINED_FUNCTION_44_5();

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_36_8();

    __asm { BRAA            X1, X16 }
  }

  v19 = OUTLINED_FUNCTION_23_8();
  v20(v19);
  OUTLINED_FUNCTION_34_6();
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);
  v23 = OUTLINED_FUNCTION_36();
  __swift_project_boxed_opaque_existential_1(v23, v24);
  OUTLINED_FUNCTION_25_4();
  v31 = v25 + *v25;
  v27 = *(v26 + 4);
  v28 = swift_task_alloc();
  v1[15] = v28;
  *v28 = v1;
  OUTLINED_FUNCTION_11_8(v28);
  OUTLINED_FUNCTION_36_8();

  __asm { BRAA            X3, X16 }
}

uint64_t OUTLINED_FUNCTION_19_7()
{
  v2 = *(*(v1 - 144) + 8);
  result = v0;
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_140()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return sub_1DC51825C();
}

uint64_t OUTLINED_FUNCTION_19_17()
{

  return sub_1DC51820C();
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_24_10()
{
  v1 = *(**(v0 + 328) + 16);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432) + 16;
}

void OUTLINED_FUNCTION_24_15()
{
  v2 = *(v0 - 96);

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_24_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return __swift_storeEnumTagSinglePayload(v3, 1, 1, v1);
}

unint64_t OUTLINED_FUNCTION_21_2()
{

  return sub_1DC297814();
}

__n128 OUTLINED_FUNCTION_7_9()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = v0[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return sub_1DC517E1C();
}

uint64_t OUTLINED_FUNCTION_7_16()
{
  v2 = **(v1 - 152);
  result = v0;
  v4 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_17()
{
  result = v1;
  v3 = v0[24];
  v5 = v0[38];
  v4 = v0[39];
  return result;
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_1DC291244(v1, v0, (v2 - 88));
}

void OUTLINED_FUNCTION_7_25(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6720];

  sub_1DC442604(319, a2, a3, v4);
}

uint64_t sub_1DC2960D8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t ServiceSetupConfiguration.init(locale:clientProcessId:)()
{
  OUTLINED_FUNCTION_42_0();
  v3 = v2;
  v4 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35(v4);
  (*(v5 + 32))(v3, v1);
  result = type metadata accessor for ServiceSetupConfiguration(0);
  v7 = v3 + *(result + 20);
  *v7 = v0;
  *(v7 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t sub_1DC296250()
{
  OUTLINED_FUNCTION_37_4();
  v1 = sub_1DC296704();
  v0[3] = v1;
  v2 = *v1;
  v0[4] = *v1;
  type metadata accessor for NLRouterService(0);
  v3 = *(*v2 + 192);

  v10 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1DC29EBDC;
  v6 = v0[2];
  v7 = OUTLINED_FUNCTION_21_18();

  return v8(v7);
}

void OUTLINED_FUNCTION_3_4()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_3_6()
{
  v2 = **(v1 - 344);
  result = v0;
  v4 = *(v1 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return sub_1DC5176CC();
}

uint64_t OUTLINED_FUNCTION_3_16()
{
  v2 = *(v0 - 304);

  return sub_1DC2E5408(v2, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_27()
{
  v1 = **(v0 - 392);
  result = *(v0 - 264);
  v3 = *(v0 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_28()
{
  v2 = *(v0 + 8);
  result = *(v1 - 272);
  v4 = *(v1 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_29()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_3_31()
{
  result = v0;
  *(v2 - 88) = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_32()
{
  v1 = v0[33];
  result = __swift_storeEnumTagSinglePayload(v0[17], 1, 1, v0[19]);
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_35()
{

  return sub_1DC2E5408(v0, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_3_37()
{

  return sub_1DC51825C();
}

uint64_t *sub_1DC296704()
{
  if (qword_1ECC84470 != -1)
  {
    OUTLINED_FUNCTION_9_21();
  }

  return &qword_1ECC8F6E8;
}

uint64_t OUTLINED_FUNCTION_22_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return swift_once();
}

void OUTLINED_FUNCTION_22_8()
{
  v1 = *(v0 - 272);
  v2 = *(v0 - 280);
  v3 = *(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_22_15()
{
  result = *(v0 - 288);
  v2 = *(v0 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_16()
{

  return sub_1DC2AD740(v1, v0);
}

uint64_t sub_1DC2968D4()
{
  OUTLINED_FUNCTION_1_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = type metadata accessor for ServiceSetupConfiguration(0);
  OUTLINED_FUNCTION_52(v5);
  v1[12] = v6;
  v1[13] = *(v7 + 64);
  v1[14] = OUTLINED_FUNCTION_118();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  v1[15] = OUTLINED_FUNCTION_118();
  v11 = sub_1DC510B6C();
  v1[16] = v11;
  OUTLINED_FUNCTION_52(v11);
  v1[17] = v12;
  v1[18] = *(v13 + 64);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v14 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  v1[21] = OUTLINED_FUNCTION_118();

  return MEMORY[0x1EEE6DFA0](sub_1DC296B10, v0, 0);
}

uint64_t sub_1DC296B10()
{
  v31 = v1;
  sub_1DC517B9C();
  v2 = OUTLINED_FUNCTION_21_2();
  v3 = sub_1DC296DBC();
  if (OUTLINED_FUNCTION_36_15(v3))
  {
    v4 = v1[8];
    swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_111();
    v30 = v5;
    v6 = OUTLINED_FUNCTION_27_14(4.8149e-34);
    v8 = sub_1DC291244(v6, v7, &v30);

    *(v0 + 4) = v8;
    OUTLINED_FUNCTION_27_11();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_31();
  }

  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[8];
  v17 = v1[9];
  OUTLINED_FUNCTION_12_0();
  v19 = (*(v18 + 160))();
  v1[6] = v19;
  v1[7] = v20;
  v1[22] = v19;
  v21 = v1[21];
  v22 = v1[8];
  (*(v1[9] + 16))(v1[10]);
  v23 = sub_1DC297438();
  v24 = *v23;
  v1[23] = *v23;
  v25 = *(*v24 + 272);

  v29 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  v1[24] = v27;
  *v27 = v1;
  v27[1] = sub_1DC2998EC;

  return v29();
}

uint64_t *OUTLINED_FUNCTION_81@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 104);
  v4[3] = v1;
  v4[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v4);
}

uint64_t OUTLINED_FUNCTION_81_1()
{

  return swift_once();
}

void OUTLINED_FUNCTION_20_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_81_7()
{
  v1 = *(v0 - 128);
  *(v0 - 104) = *(v0 - 160);
  *(v0 - 96) = v1;
  return v0 - 104;
}

uint64_t sub_1DC296F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  v9 = OUTLINED_FUNCTION_10(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v14 = (v13 - v12);
  v15 = (*(a2 + 16))(a3, a1, a2);
  v16 = (*(*v4 + 104))(v15);
  v17 = sub_1DC297288(v14, v16);

  if (!v17)
  {
    v17 = (*(a2 + 8))(a1, a2);
    (*(*v4 + 168))(v14, v17, a2);
  }

  sub_1DC2989EC(v14);
  return v17;
}

uint64_t sub_1DC2970B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - v4;
  v6 = OUTLINED_FUNCTION_429();
  v15[1] = type metadata accessor for NLRouterService(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA20, &qword_1DC52A6C8);
  sub_1DC51777C();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_65_1();
  return sub_1DC297194(v11, v12, v5, v13);
}

BOOL OUTLINED_FUNCTION_302()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1DC297194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for ServiceStoreServiceKeyingFields(0) + 20);

  return sub_1DC2971E0(a3, v5);
}

uint64_t sub_1DC2971E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC297250()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_1DC297288(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DC2977A8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  v6 = *v5;
  v7 = v5[1];
  return swift_unknownObjectRetain();
}

id sub_1DC2972DC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1DC297334()
{
  v1 = sub_1DC510C4C();
  *&v0[OBJC_IVAR____TtC13CDMFoundation15NLRouterService_client] = 0;
  v2 = &v0[OBJC_IVAR____TtC13CDMFoundation15NLRouterService_cacheManager];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v0[OBJC_IVAR____TtC13CDMFoundation15NLRouterService_promptGenerator];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC13CDMFoundation15NLRouterService_tokenizer];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v0[OBJC_IVAR____TtC13CDMFoundation15NLRouterService_generativeAssistantHelper];
  nullsub_1(v1, v6);
  *(v5 + 3) = &type metadata for GenerativeAssistantHelper;
  *(v5 + 4) = &off_1F57F8A40;
  v7 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_nlRouterClientInstrumentationUtil;
  *&v0[v7] = *sub_1DC297438();
  type metadata accessor for HeuristicAgentKeywords(0);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v13.receiver = v0;
  v13.super_class = type metadata accessor for NLRouterService(0);

  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t *sub_1DC297438()
{
  if (qword_1ECC7EE30 != -1)
  {
    OUTLINED_FUNCTION_40_12();
  }

  return &qword_1ECC8F3E8;
}

uint64_t sub_1DC297498(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_0();
  v8 = *(v7 + 120);
  swift_unknownObjectRetain();
  v9 = v8(v16);
  v11 = v10;
  v12 = *v10;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v11;
  sub_1DC2975B4(a2, a3, a1);
  *v11 = v15;
  v9(v16, 0);
  v13 = (*(*v3 + 144))(v16);
  sub_1DC298864(a1);

  return v13(v16, 0);
}

uint64_t sub_1DC2975B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v13 = sub_1DC2977A8(a3);
  if (__OFADD__(*(v12 + 16), (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1F0, &qword_1DC527710);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v4;
  v18 = sub_1DC2977A8(a3);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_11:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *v4;
  if (v16)
  {
    v21 = (v20[7] + 16 * v15);
    v22 = *v21;
    *v21 = a1;
    v21[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1DC2986F0();
    return sub_1DC298748(v15, v11, a1, a2, v20);
  }
}

unint64_t sub_1DC2977A8(void *a1)
{
  v3 = *(v1 + 40);
  sub_1DC5182FC();
  sub_1DC298098();
  v4 = sub_1DC51833C();

  return sub_1DC298254(a1, v4);
}

unint64_t sub_1DC297814()
{
  result = qword_1EDAC7F90;
  if (!qword_1EDAC7F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAC7F90);
  }

  return result;
}

id sub_1DC297858(void *a1, uint64_t *a2)
{
  v5 = sub_1DC5176FC();
  v6 = sub_1DC5176FC();
  v7 = [a1 levelForFactor:v5 withNamespaceName:v6];

  if (v7)
  {
    if ([v7 levelOneOfCase] == 10)
    {
      v8 = [v7 BOOLeanValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v2[OBJC_IVAR___NLRouterExperimentTrialController_suppressRewrite] = v8;
  sub_1DC28FB9C(a2, &v2[OBJC_IVAR___NLRouterExperimentTrialController_experimentationAnalyticsManager]);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for NLRouterExperimentTrialController();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v9;
}

uint64_t OUTLINED_FUNCTION_55_4()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_55_6(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_55_8()
{
  *(v3 - 256) = v1;
  v4 = *(v0 + 96);
  return v2;
}

uint64_t OUTLINED_FUNCTION_55_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_55_11()
{
  result = v0;
  v3 = *(v1 - 176);
  v4 = *(v1 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_12()
{

  return sub_1DC291244(v0, v1, (v2 - 152));
}

uint64_t OUTLINED_FUNCTION_55_13()
{
  result = *(v0 - 256);
  v3 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_14(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 336);

  return sub_1DC45BDFC(v4, a2);
}

void OUTLINED_FUNCTION_16_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_3()
{

  return sub_1DC510B6C();
}

void OUTLINED_FUNCTION_16_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_16_13()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1E1298840);
}

uint64_t OUTLINED_FUNCTION_16_14()
{

  return sub_1DC517BFC();
}

void OUTLINED_FUNCTION_16_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_1DC297CB0()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_36();
  return sub_1DC297858(v2, v3);
}

uint64_t OUTLINED_FUNCTION_89_1()
{
  v2 = v0[60];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v10 = v0[30];
  v14 = v0[29];
  v15 = v0[28];
  v13 = v0[26];
  v11 = v0[27];
  v12 = v0[25];
  v7 = v0[23];
  v8 = v0[24];

  return sub_1DC5169AC();
}

void sub_1DC297D70(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1DC297DD0()
{
  OUTLINED_FUNCTION_6_27();
  v4 = sub_1DC510C8C();
  result = OUTLINED_FUNCTION_50(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_20_18();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_119_2()
{
  v3 = v0[60];
  v4 = v0[53];
  v5 = v0[52];
  v6 = v0[58];

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_119_4()
{
  v2 = *(v0 - 304);

  return sub_1DC51178C();
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_82_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_69_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id sub_1DC297F98()
{
  v1 = *(v0 + 24);
  v2 = objc_allocWithZone(CDMClient);

  return [v2 initWithDelegate_];
}

id CDMOSLoggerForCategory(int a1)
{
  if (a1 >= 5)
  {
    __assert_rtn("CDMOSLoggerForCategory", "CDMLogging.mm", 18, "loggingCategory < CDMCategoryLogMax");
  }

  if (CDMOSLoggerForCategory::onceToken != -1)
  {
    dispatch_once(&CDMOSLoggerForCategory::onceToken, &__block_literal_global_6579);
  }

  v2 = CDMOSLoggerForCategory::logObjects[a1];

  return v2;
}

uint64_t sub_1DC298098()
{
  v1 = sub_1DC510C8C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = *v0;
  v17 = v0[1];
  sub_1DC51769C();
  v18 = *(type metadata accessor for ServiceStoreServiceKeyingFields(0) + 20);
  sub_1DC2DB2AC();
  if (__swift_getEnumTagSinglePayload(v15, 1, v1) == 1)
  {
    return sub_1DC51831C();
  }

  (*(v4 + 32))(v9, v15, v1);
  sub_1DC51831C();
  OUTLINED_FUNCTION_7_18();
  sub_1DC2B3338(v20, v21);
  sub_1DC51768C();
  return (*(v4 + 8))(v9, v1);
}

unint64_t sub_1DC298254(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DC510C8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v41 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD30, &qword_1DC524D20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v42 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  v17 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v20 = (&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = v3 + 64;
  v46 = v3;
  v21 = -1 << *(v3 + 32);
  v22 = a2 & ~v21;
  if (((*(v3 + 64 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    return v22;
  }

  v43 = ~v21;
  v23 = a1[1];
  v47 = *a1;
  v35 = (v7 + 32);
  v36 = v13;
  v39 = (v7 + 8);
  v40 = a1;
  v44 = *(v18 + 72);
  while (1)
  {
    v24 = *(v46 + 48);
    sub_1DC2986F0();
    v25 = *v20 == v47 && v20[1] == v23;
    if (!v25 && (sub_1DC51825C() & 1) == 0)
    {
      goto LABEL_15;
    }

    v26 = *(v42 + 20);
    v27 = *(v13 + 48);
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    if (__swift_getEnumTagSinglePayload(v16, 1, v6) == 1)
    {
      break;
    }

    sub_1DC2DB2AC();
    if (__swift_getEnumTagSinglePayload(&v16[v27], 1, v6) == 1)
    {
      (*v39)(v41, v6);
      goto LABEL_13;
    }

    v28 = v41;
    v29 = v37;
    (*v35)(v37, &v16[v27], v6);
    sub_1DC2B3338(&qword_1ECC7BE60, MEMORY[0x1E6969770]);
    v38 = sub_1DC5176CC();
    v30 = *v39;
    v31 = v29;
    v32 = v28;
    v13 = v36;
    (*v39)(v31, v6);
    v30(v32, v6);
    sub_1DC28EB30(v16, &qword_1ECC7CD00, &unk_1DC5259F0);
    if (v38)
    {
      goto LABEL_17;
    }

LABEL_15:
    sub_1DC2989EC(v20);
    v22 = (v22 + 1) & v43;
    if (((*(v45 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return v22;
    }
  }

  if (__swift_getEnumTagSinglePayload(&v16[v27], 1, v6) != 1)
  {
LABEL_13:
    sub_1DC28EB30(v16, &unk_1ECC7CD30, &qword_1DC524D20);
    goto LABEL_15;
  }

  sub_1DC28EB30(v16, &qword_1ECC7CD00, &unk_1DC5259F0);
LABEL_17:
  sub_1DC2989EC(v20);
  return v22;
}

uint64_t sub_1DC2986F0()
{
  OUTLINED_FUNCTION_42_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_35(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v0;
}

uint64_t sub_1DC298748(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a5[6];
  v10 = *(*(type metadata accessor for ServiceStoreServiceKeyingFields(0) - 8) + 72);
  result = sub_1DC298804();
  v12 = (a5[7] + 16 * a1);
  *v12 = a3;
  v12[1] = a4;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1DC298804()
{
  OUTLINED_FUNCTION_42_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_35(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v0;
}

uint64_t sub_1DC298864(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1DC2977A8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1E8, &qword_1DC527708);
  sub_1DC517FFC();
  v9 = *(v13 + 48);
  v10 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  sub_1DC2989EC(v9 + *(*(v10 - 8) + 72) * v6);
  v11 = *(*(v13 + 56) + 8 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1C0, qword_1DC5271A8);
  sub_1DC2B3338(&unk_1ECC7BD90, type metadata accessor for ServiceStoreServiceKeyingFields);
  sub_1DC51800C();
  *v2 = v13;
  return v11;
}

uint64_t sub_1DC2989EC(uint64_t a1)
{
  v2 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC298A48()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_12_0();
  v6 = (*(v0 + 264) + **(v0 + 264));
  v1 = *(*(v0 + 264) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_33_0(v2);
  *v3 = v4;
  v3[1] = sub_1DC299718;
  OUTLINED_FUNCTION_19_0();

  return v6();
}

uint64_t sub_1DC298B60()
{
  OUTLINED_FUNCTION_1_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_124();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v9 = sub_1DC510B6C();
  v1[10] = v9;
  OUTLINED_FUNCTION_52(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_124();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DC298C74(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return sub_1DC3136A0();
}

uint64_t OUTLINED_FUNCTION_112_2()
{
  *(v1 + 184) = v0;
  v3 = *(v1 + 80);

  return mach_absolute_time();
}

BOOL OUTLINED_FUNCTION_112_3()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1DC298D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_107_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_93_0();
  a20 = v22;
  v25 = v22[3];
  v26 = [objc_allocWithZone(MEMORY[0x1E69CEF88]) init];
  if (!v25)
  {
    goto LABEL_8;
  }

  v27 = v22[3];
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v22[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
LABEL_8:
    v34 = v22[15];
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v35 = sub_1DC296DBC();
    sub_1DC516F0C();

    sub_1DC510B5C();
    if (!v26)
    {
      goto LABEL_10;
    }

LABEL_9:
    v36 = v22[15];
    v37 = v22[13];
    v38 = v22[10];
    v39 = v22[11];
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v40 = *(v39 + 16);
    v41 = OUTLINED_FUNCTION_62_2();
    v42(v41);
    v43 = v26;
    v44 = sub_1DC299428(v37);
    OUTLINED_FUNCTION_72_5(v44, sel_setNlRouterId_);

    goto LABEL_10;
  }

  v30 = v22[9];
  v29 = v22[10];
  v31 = v22[3];
  sub_1DC510B0C();
  OUTLINED_FUNCTION_39(v30, 1, v29);
  if (v32)
  {
    sub_1DC28EB30(v22[9], &unk_1ECC7CA30, &qword_1DC522A00);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v33 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();

    goto LABEL_27;
  }

  v73 = *(v22[11] + 32);
  (v73)(v22[14], v22[9], v22[10]);
  if (v26)
  {
    v75 = v22[13];
    v74 = v22[14];
    v76 = v22[10];
    v77 = v22[11];
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    (*(v77 + 16))(v75, v74, v76);
    v78 = v26;
    v79 = sub_1DC299428(v75);
    [v78 setRequestId_];
  }

  v80 = v22[14];
  v81 = v22[10];
  v82 = v22[8];
  v83 = *(v22[6] + 24);
  OUTLINED_FUNCTION_12_0();
  (*(v84 + 80))();
  OUTLINED_FUNCTION_39(v82, 1, v81);
  if (v32)
  {
    sub_1DC28EB30(v22[8], &unk_1ECC7CA30, &qword_1DC522A00);
    v85 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v86 = sub_1DC296DBC();
    v87 = os_log_type_enabled(v86, v85);
    v88 = v22[14];
    v90 = v22[10];
    v89 = v22[11];
    if (v87)
    {
      a10 = v22[14];
      v91 = v22[2];
      v92 = OUTLINED_FUNCTION_63();
      v93 = OUTLINED_FUNCTION_82();
      a11 = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_1DC291244(v91, v27, &a11);
      _os_log_impl(&dword_1DC287000, v86, v85, "Error generating NLRouterId from requestId: %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      (*(v89 + 8))(a10, v90);
    }

    else
    {

      (*(v89 + 8))(v88, v90);
    }

    goto LABEL_27;
  }

  v94 = v22[15];
  v95 = v22[8];
  (*(v22[11] + 8))(v22[14], v22[10]);
  OUTLINED_FUNCTION_75_4();
  v73();
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!v22[5])
  {
    v57 = v22[15];
    v58 = v22[10];
    v59 = v22[11];
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v60 = sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    v56 = *(v59 + 8);
    v54 = v57;
    v55 = v58;
    goto LABEL_14;
  }

  v45 = v22[10];
  v46 = v22[7];
  v47 = v22[4];
  sub_1DC510B0C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v45);
  v49 = v22[11];
  v50 = v22[7];
  if (EnumTagSinglePayload == 1)
  {
    v51 = v22[15];
    sub_1DC28EB30(v22[7], &unk_1ECC7CA30, &qword_1DC522A00);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v52 = sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    v53 = *(v49 + 8);
    v54 = OUTLINED_FUNCTION_60();
LABEL_14:
    v56(v54, v55);
    goto LABEL_27;
  }

  (*(v49 + 32))(v22[12], v22[7], v22[10]);
  if (v26)
  {
    v62 = v22[12];
    v61 = v22[13];
    v63 = v22[10];
    v64 = v22[11];
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v65 = *(v64 + 16);
    v66 = OUTLINED_FUNCTION_56_0();
    v67(v66);
    v68 = v26;
    v69 = sub_1DC299428(v61);
    [v68 setTrpId_];
  }

  v70 = v22[15];
  v71 = *(v22[11] + 8);
  (v71)(v22[12], v22[10]);
  v72 = OUTLINED_FUNCTION_56_0();
  v71(v72);
LABEL_27:
  v97 = v22[14];
  v96 = v22[15];
  v99 = v22[12];
  v98 = v22[13];
  v101 = v22[8];
  v100 = v22[9];
  v102 = v22[7];

  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_74_5();

  return v105(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14);
}

id sub_1DC299428(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DC510B2C();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1DC510B6C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  v2 = *(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_66_3(char a1)
{
  *(v1 + 33) = a1 & 1;
  sub_1DC2EB640(1, v1);

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_66_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_38_5()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_38_6()
{
  result = v0;
  v3 = *(v1 - 680);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_7(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  *(result + 12) = 1024;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t a1)
{
  v4 = *(v2 + 16);
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  return v4;
}

__n128 *OUTLINED_FUNCTION_38_10(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "messageState");
  result[2].n128_u8[13] = 0;
  result[2].n128_u16[7] = -5120;
  result[3].n128_u64[0] = 0x7265646E6573;
  result[3].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_15()
{

  return sub_1DC5179EC();
}

uint64_t sub_1DC299718()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;

  OUTLINED_FUNCTION_34_10();

  return v7(v2);
}

void OUTLINED_FUNCTION_64_0()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_64_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_64_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_64_7()
{

  return swift_once();
}

uint64_t sub_1DC2998EC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v5 = *(v2 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_38();
  *v7 = v6;
  *(v9 + 200) = v8;
  *(v9 + 208) = v0;

  v10 = *(v2 + 88);
  if (v0)
  {
    v11 = sub_1DC3AF7E0;
  }

  else
  {
    v11 = sub_1DC299A18;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

uint64_t sub_1DC299A18()
{
  v1 = v0[23];
  v2 = v0[20];
  sub_1DC510B5C();
  v3 = mach_absolute_time();
  OUTLINED_FUNCTION_12_0();
  v5 = *(v4 + 184);
  v14 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_1DC29E3EC;
  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[8];
  v12 = v0[9];

  return v14(v8, v10, v3, v11, v12);
}

uint64_t sub_1DC299B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC299B74()
{
  OUTLINED_FUNCTION_100_0();
  v25 = v0;
  v1 = *(v0 + 16);
  if (!v1)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v4 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();
LABEL_8:

    OUTLINED_FUNCTION_39_5();

    return v14();
  }

  v2 = *(v0 + 40);
  if (type metadata accessor for NLRouterService(0) != v2 && type metadata accessor for NLRouterOverrideService() != v2)
  {
    v3 = v1;
    sub_1DC517B9C();
    v4 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC296DBC();
    if (OUTLINED_FUNCTION_117_4(v5))
    {
      v6 = *(v0 + 40);
      v7 = OUTLINED_FUNCTION_63();
      v8 = OUTLINED_FUNCTION_82();
      v24 = v8;
      *v7 = 136315138;
      v9 = sub_1DC5183EC();
      v11 = sub_1DC291244(v9, v10, &v24);

      *(v7 + 4) = v11;
      OUTLINED_FUNCTION_55_0(&dword_1DC287000, v12, v13, "Unknown service %s for logNLRouterSubComponentSetupStarted, skipping SELF emission");
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_58();
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_28_11(*(v0 + 48));
  v17 = *(v16 + 320);
  v18 = v1;
  v23 = (v17 + *v17);
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v0 + 56) = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_94_2(v20);
  v21 = *(v0 + 24);
  v22 = OUTLINED_FUNCTION_25_10();

  return v23(v22);
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return swift_once();
}

void OUTLINED_FUNCTION_25_9()
{
  v1 = *(v0 - 176);
  v2 = *(v0 - 168);
  v3 = *(v0 - 104);
  v4 = *(v0 - 160);
}

id OUTLINED_FUNCTION_31_4()
{

  return sub_1DC2BE518();
}

uint64_t OUTLINED_FUNCTION_25_13@<X0>(uint64_t a1@<X8>)
{
  result = v1 + *(a1 - 256);
  v4 = *(v2 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_14(uint64_t result)
{
  *(v2 - 128) = v1;
  *(v2 - 104) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return sub_1DC51678C();
}

uint64_t OUTLINED_FUNCTION_84_0()
{
  *(v0 - 120) = 0;

  return sub_1DC51823C();
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_84_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_84_3(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return sub_1DC510B6C();
}

uint64_t OUTLINED_FUNCTION_84_6()
{

  return sub_1DC312FB4(0);
}

uint64_t OUTLINED_FUNCTION_97_3()
{
  result = v0;
  v3 = *(v1 - 216);
  return result;
}

uint64_t sub_1DC29A114()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 56) = v1;
  v4 = OUTLINED_FUNCTION_84_3(v2, v3);
  *(v0 + 32) = v4;
  OUTLINED_FUNCTION_52(v4);
  *(v0 + 40) = v5;
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_118();
  v8 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_72_2()
{

  return sub_1DC5179AC();
}

uint64_t OUTLINED_FUNCTION_72_4()
{

  return swift_once();
}

id OUTLINED_FUNCTION_72_5(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_72_7()
{
  result = *(v0 - 384);
  v2 = *(v0 - 468);
  v3 = *(v0 - 336);
  return result;
}

uint64_t sub_1DC29A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v13 = *(v10 + 56);
  v14 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CF010]));
  [v14 setNlRouterSubComponent_];
  v15 = [objc_allocWithZone(MEMORY[0x1E69CEFF8]) (v12 + 2936)];
  [v15 setStartedOrChanged_];
  if (v15)
  {
    OUTLINED_FUNCTION_96_2();
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v16 = OUTLINED_FUNCTION_9_19();
    v17(v16);
    v18 = v15;
    v19 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_72_5(v19, sel_setTraceId_);
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v12 + 2936)];
  if (v20)
  {
    OUTLINED_FUNCTION_71_6([v20 setEventMetadata_], sel_setNlRouterSubComponentSetupContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_49_10();
  }

  v21 = *(v10 + 48);

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_64_5();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return sub_1DC28F358(v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_76_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 32);
  return v2;
}

uint64_t OUTLINED_FUNCTION_76_8()
{

  return sub_1DC516F7C();
}

void sub_1DC29A818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1DC29A8C0(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_108()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_108_0()
{
  v1 = **(v0 + 216);
  result = *(v0 + 144);
  v3 = *(v0 + 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_99()
{

  return sub_1DC313670();
}

uint64_t OUTLINED_FUNCTION_99_1()
{
}

uint64_t OUTLINED_FUNCTION_99_2()
{
  result = v1;
  v3 = *(v0 + 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_99_3@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 136) = a1;
  *(v4 - 128) = v1;
  v5 = v2[52];
  *(v4 - 120) = v2[51];
  *(v4 - 112) = v5;
  v22 = v2[50];
  v23 = v2[48];
  v20 = v2[47];
  v21 = v2[46];
  v14 = v2[44];
  v15 = v2[43];
  v16 = v2[42];
  v17 = v2[45];
  v6 = v2[39];
  *(v4 - 88) = v2[40];
  *(v4 - 144) = v6;
  v7 = v2[38];
  v13 = v2[37];
  v8 = v2[35];
  *(v4 - 168) = v2[36];
  v18 = v2[24];
  v19 = v2[25];
  v11 = *(v2[33] + 48);
  v12 = *(v3 + 48);
  v9 = *(v6 + 32);
  return v2[34];
}

uint64_t sub_1DC29AAF8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmActiveServiceGraph);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DC29AB74()
{
  v1 = (v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmActiveServiceGraph);
  OUTLINED_FUNCTION_36_7();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void sub_1DC29ABC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v160 = v25;
  v159 = v26;
  v157 = v27;
  v173 = v28;
  v176 = v29;
  v30 = sub_1DC516F7C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v170 = v32;
  v171 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v169 = v35;
  OUTLINED_FUNCTION_12();
  v36 = sub_1DC51737C();
  v37 = OUTLINED_FUNCTION_0(v36);
  v165 = v38;
  v166 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  v163 = v41;
  OUTLINED_FUNCTION_12();
  v164 = sub_1DC5173CC();
  v42 = OUTLINED_FUNCTION_0(v164);
  v162 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v46);
  v47 = sub_1DC510AFC();
  v48 = OUTLINED_FUNCTION_10(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v56);
  v174 = sub_1DC510C8C();
  v57 = OUTLINED_FUNCTION_0(v174);
  v168 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_92_1();
  v175 = v61;
  OUTLINED_FUNCTION_12();
  v62 = sub_1DC5168FC();
  v63 = OUTLINED_FUNCTION_0(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_1();
  v70 = v69 - v68;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD08, &unk_1DC524D00);
  OUTLINED_FUNCTION_10(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_17_0();
  sub_1DC29B898();
  sub_1DC29B97C();
  dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_38_1();
  (*(v75 + 736))();
  v76 = sub_1DC29BA28();
  v77 = *v76;
  v78 = v76[1];
  v79 = *(v76 + 16);
  v80 = OUTLINED_FUNCTION_130();
  static SignpostLogger.begin(_:enableTelemetry:)(v77, v78, v79, v80 & 1, &unk_1F57F9698, &off_1F57F95E8, v21);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  OUTLINED_FUNCTION_91_0();
  (*(v85 + 448))(v21);
  sub_1DC2A0AE0();
  OUTLINED_FUNCTION_106_2();
  v86(v70);
  sub_1DC5168CC();
  (*(v65 + 8))(v70, v62);
  OUTLINED_FUNCTION_91_0();
  v88 = (*(v87 + 296))();
  if (v88)
  {
    v89 = v88;
    (*(*v24 + 376))(2);
    (*(*v24 + 400))(0);
    OUTLINED_FUNCTION_91_0();
    (*(v90 + 424))(0);
    OUTLINED_FUNCTION_91_0();
    (*(v91 + 568))(0);
    v178[0] = v89;
    swift_getKeyPath();
    OUTLINED_FUNCTION_195();
    swift_allocObject();
    v172 = v89;
    OUTLINED_FUNCTION_199();
    v92 = v168;
    v167 = *(v168 + 16);
    v171 = v168 + 16;
    v93 = v175;
    v94 = v174;
    v167(v175, v176, v174);
    v170 = *(v168 + 80);
    v95 = (*(v92 + 80) + 24) & ~*(v92 + 80);
    v169 = v95;
    v96 = (v156[3] + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    *(v97 + 16) = &unk_1F57F9698;
    v168 = *(v92 + 32);
    (v168)(v97 + v95, v93, v94);
    v98 = (v97 + v96);
    v99 = v157;
    *v98 = v173;
    v98[1] = v157;

    OUTLINED_FUNCTION_113_2();
    sub_1DC5108AC();
    OUTLINED_FUNCTION_228();

    v100 = *(v24 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverSuccessFromSetup);
    *(v24 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverSuccessFromSetup) = &unk_1F57F9698;

    v178[0] = v89;
    swift_getKeyPath();
    OUTLINED_FUNCTION_195();
    swift_allocObject();
    OUTLINED_FUNCTION_199();
    v101 = v167;
    v167(v175, v176, v94);
    v102 = swift_allocObject();
    *(v102 + 16) = &unk_1F57F9698;
    OUTLINED_FUNCTION_62_3();
    v103();
    v104 = (v102 + v96);
    *v104 = v173;
    v104[1] = v99;

    OUTLINED_FUNCTION_113_2();
    sub_1DC5108AC();
    OUTLINED_FUNCTION_228();

    v105 = *(v24 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverErrorFromSetup);
    *(v24 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverErrorFromSetup) = &unk_1F57F9698;

    v178[0] = v172;
    swift_getKeyPath();
    OUTLINED_FUNCTION_195();
    swift_allocObject();
    OUTLINED_FUNCTION_199();
    v106 = v175;
    v107 = v174;
    v101(v175, v176, v174);
    v108 = swift_allocObject();
    *(v108 + 16) = &unk_1F57F9698;
    (v168)(v108 + v169, v106, v107);
    v109 = (v108 + v96);
    v110 = v160;
    *v109 = v159;
    v109[1] = v160;

    OUTLINED_FUNCTION_113_2();
    sub_1DC5108AC();
    OUTLINED_FUNCTION_228();

    v111 = *(v24 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverDaemonKilled);
    *(v24 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverDaemonKilled) = &unk_1F57F9698;

    sub_1DC510B5C();
    sub_1DC510B6C();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
    OUTLINED_FUNCTION_91_0();
    (*(v116 + 496))(v158);
    OUTLINED_FUNCTION_20_3(&a13);
    sub_1DC510AEC();
    OUTLINED_FUNCTION_91_0();
    (*(v117 + 520))(&unk_1F57F9698);
    v167(v106, v176, v174);
    OUTLINED_FUNCTION_91_0();
    v119 = *(v118 + 344);

    v121 = v119(v120);
    v123 = v122;
    OUTLINED_FUNCTION_91_0();
    (*(v124 + 488))();
    v125 = objc_allocWithZone(CDMClientSetup);
    BYTE5(v156[1]) = 0;
    HIWORD(v156[1]) = -5120;
    strcpy(v156, "ORCHESTRATOR");
    v126 = OUTLINED_FUNCTION_153_0();
    v128 = sub_1DC2A0FBC(v126, v127, v110, v121, v123, 0, 0, 0, 0, 0, 0, 0, v158, v156[0], v156[1]);
    v129 = v24[5];
    OUTLINED_FUNCTION_27_5();
    v130 = swift_allocObject();
    v131 = v172;
    *(v130 + 16) = v172;
    *(v130 + 24) = v128;
    v178[4] = sub_1DC3587D8;
    v178[5] = v130;
    v178[0] = MEMORY[0x1E69E9820];
    v178[1] = 1107296256;
    v178[2] = sub_1DC2AECB0;
    v178[3] = &block_descriptor_174;
    v132 = _Block_copy(v178);
    v133 = v131;
    v134 = v128;
    sub_1DC51739C();
    v177 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_14();
    sub_1DC293BE4(v135, v136);
    v137 = OUTLINED_FUNCTION_12_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v137, v138);
    sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
    sub_1DC517E9C();
    MEMORY[0x1E12964B0](0, v161, v163, v132);
    _Block_release(v132);

    v139 = *(v165 + 8);
    v140 = OUTLINED_FUNCTION_45_0();
    v141(v140);
    OUTLINED_FUNCTION_62_0(&a18);
    v142(v161, v164);
  }

  else
  {
    sub_1DC28D414();
    v143 = OUTLINED_FUNCTION_89_0(v170);
    v144(v143);
    v145 = sub_1DC516F6C();
    v146 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v146))
    {
      v147 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v147);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v148, v149, v150, v151, v152, 2u);
      OUTLINED_FUNCTION_31();
    }

    v153 = *(v170 + 8);
    v154 = OUTLINED_FUNCTION_35_0();
    v155(v154);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC29B7C4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DC29B810()
{
  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1DC29B898()
{
  v1 = v0;
  OUTLINED_FUNCTION_12_0();
  v3 = (*(v2 + 728))();
  if (v3)
  {
    v4 = v3;
    sub_1DC517D1C();
  }

  v5 = *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverSuccessFromSetup);
  if (v5)
  {
    v6 = v5;
    sub_1DC51083C();
  }

  v7 = *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverErrorFromSetup);
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_185();
    sub_1DC51083C();
  }
}

uint64_t OUTLINED_FUNCTION_176_0()
{

  return swift_weakInit();
}

void sub_1DC29B97C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverDaemonKilled);
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_185();
    sub_1DC51083C();
  }
}

void sub_1DC29B9E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_setupSemaphore;
  OUTLINED_FUNCTION_35_1();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1DC29BA34()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_setupSemaphore;
  OUTLINED_FUNCTION_9_10();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DC29BA70()
{
  OUTLINED_FUNCTION_33();
  v120 = v0;
  v3 = v2;
  v4 = sub_1DC510B6C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v117 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v116 = v10 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8);
  OUTLINED_FUNCTION_35(v118);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v107 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v108 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  v109 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v107 - v25;
  v27 = sub_1DC516F7C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v114 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_40_2();
  v36 = v30;
  v37 = *(v30 + 16);
  v111 = v35;
  v112 = v30 + 16;
  v119 = v27;
  v110 = v37;
  (v37)(v0);
  v38 = v3;
  v39 = sub_1DC516F6C();
  v40 = sub_1DC517B9C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = OUTLINED_FUNCTION_63();
    v115 = v4;
    v42 = v41;
    v43 = OUTLINED_FUNCTION_249();
    *v42 = 138412290;
    *(v42 + 4) = v38;
    *v43 = v38;
    v44 = v38;
    OUTLINED_FUNCTION_52_10(&dword_1DC287000, v39, v40, "NLBridge received message: %@");
    sub_1DC28EB30(v43, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v4 = v115;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v45 = v36 + 8;
  v46 = *(v36 + 8);
  v47 = v119;
  v115 = v45;
  v113 = v46;
  v48 = (v46)(v0, v119);
  (*(*v120 + class metadata base offset for NLBridge + 96))(v48);
  sub_1DC515D7C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v4);
  v52 = *(v118 + 48);
  OUTLINED_FUNCTION_49_9(v26, v15);
  OUTLINED_FUNCTION_49_9(v1, &v15[v52]);
  OUTLINED_FUNCTION_2_0(v15);
  if (!v60)
  {
    v59 = v109;
    sub_1DC28F414(v15, v109, &unk_1ECC7CA30, &qword_1DC522A00);
    OUTLINED_FUNCTION_2_0(&v15[v52]);
    if (!v60)
    {
      v83 = OUTLINED_FUNCTION_33_11();
      v84(v83);
      OUTLINED_FUNCTION_0_33();
      sub_1DC2917D0(v85, v86);
      LODWORD(v118) = sub_1DC5176CC();
      v87 = *(v59 + 8);
      v87(v52, v4);
      OUTLINED_FUNCTION_50_10(v1);
      OUTLINED_FUNCTION_50_10(v26);
      v88 = OUTLINED_FUNCTION_229();
      (v87)(v88);
      v47 = v119;
      OUTLINED_FUNCTION_50_10(v15);
      if (v118)
      {
        goto LABEL_17;
      }

LABEL_12:
      v67 = v114;
      v110(v114, v111, v47);
      v68 = v38;
      v69 = sub_1DC516F6C();
      v70 = sub_1DC517BAC();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_19_3();
        v72 = swift_slowAlloc();
        *&v121 = v72;
        OUTLINED_FUNCTION_48_7(4.8149e-34);
        OUTLINED_FUNCTION_0_33();
        sub_1DC2917D0(v73, v74);
        sub_1DC51823C();
        v75 = OUTLINED_FUNCTION_34_9();
        v76(v75);
        v77 = OUTLINED_FUNCTION_43();
        v80 = sub_1DC291244(v77, v78, v79);

        *(v71 + 4) = v80;
        OUTLINED_FUNCTION_52_10(&dword_1DC287000, v69, v70, "SessionId: %s is not the current session, ignoring");
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();

        v81 = v68;
        v82 = v1;
      }

      else
      {

        v81 = v67;
        v82 = v47;
      }

      v113(v81, v82);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v61, v62, v63);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v64, v65, v66);
    (*(v117 + 8))(v59, v4);
LABEL_11:
    sub_1DC28EB30(v15, &qword_1ECC7CE20, &unk_1DC523AC8);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v53, v54, v55);
  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v56, v57, v58);
  OUTLINED_FUNCTION_2_0(&v15[v52]);
  if (!v60)
  {
    goto LABEL_11;
  }

  sub_1DC28EB30(v15, &unk_1ECC7CA30, &qword_1DC522A00);
LABEL_17:
  OUTLINED_FUNCTION_60_8();
  v90 = (*(v89 + class metadata base offset for NLBridge + 216))();
  if (v90 != 2 && (v90 & 1) != 0)
  {
    OUTLINED_FUNCTION_60_8();
    (*(v91 + class metadata base offset for NLBridge + 168))(&v121);
    v92 = *(&v122 + 1);
    v93 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    v94 = v116;
    sub_1DC515D7C();
    (*(v93 + 32))(v94, v92, v93);
    (*(v117 + 8))(v94, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v121);
  }

  v95 = v108;
  v96 = OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v4);
  OUTLINED_FUNCTION_60_8();
  (*(v99 + class metadata base offset for NLBridge + 104))(v95);
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  OUTLINED_FUNCTION_60_8();
  (*(v100 + class metadata base offset for NLBridge + 128))(&v121);
  v101 = *(type metadata accessor for SiriReferenceResolutionProxy() + 240);
  v102 = *v101();
  (*(v102 + 256))();

  v104 = *(v101)(v103);
  (*(v104 + 360))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D018, &qword_1DC5263B8);
  v105 = sub_1DC51693C();
  v106 = v105(&v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D020, &qword_1DC5263C0);
  sub_1DC51765C();
  v106(&v121, 0);
LABEL_21:
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_52_5()
{
  v2 = **(v1 - 152);
  result = v0;
  v4 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_52_9(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  return result;
}

void OUTLINED_FUNCTION_52_10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_52_12()
{

  return sub_1DC51825C();
}

void OUTLINED_FUNCTION_52_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

char *OUTLINED_FUNCTION_52_15@<X0>(unint64_t a1@<X8>)
{

  return sub_1DC33F29C((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_49_2(uint64_t a1)
{

  return sub_1DC2AAF50(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_49_5(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1DC2EAE54(v1, va);
}

id OUTLINED_FUNCTION_49_7()
{

  return sub_1DC299428(v0);
}

uint64_t OUTLINED_FUNCTION_49_9(uint64_t a1, uint64_t a2)
{

  return sub_1DC28F414(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_49_15()
{
  v2 = *(v1 - 104);
  *(v1 - 96) = v0;
  v3 = *(v0 + 24);
  v4 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_23_4()
{
  v1 = **(v0 - 120);
  result = *(v0 - 136);
  v3 = *(v0 - 96);
  return result;
}

id OUTLINED_FUNCTION_23_5()
{
  v2 = *(v0 - 160);

  return sub_1DC2BE518();
}

uint64_t OUTLINED_FUNCTION_23_7()
{
  v2 = *(v0 - 104);

  return sub_1DC30C114(v2, type metadata accessor for NLRouterNLParseResponse);
}

uint64_t OUTLINED_FUNCTION_23_8()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = *(v0[11] + 16);
  return v0[12];
}

uint64_t OUTLINED_FUNCTION_23_10()
{

  return sub_1DC516F7C();
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_13()
{

  return sub_1DC51627C();
}

uint64_t OUTLINED_FUNCTION_23_23()
{
  *(v1 - 96) = v0;

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_67_0(float a1)
{
  *v2 = a1;
  *(v2 + 4) = v1;
  *v3 = v1;
  *(v2 + 12) = 2080;

  return v1;
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_67_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = a10;
  *(v10 + 64) = MEMORY[0x1E69E9820];
  return result;
}

BOOL OUTLINED_FUNCTION_67_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_134_0()
{
}

uint64_t OUTLINED_FUNCTION_134_1()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

uint64_t sub_1DC29C9C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_1DC2BE044(v0, v2 + v1);
}

uint64_t OUTLINED_FUNCTION_61_1@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_1DC28EB30(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_61_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_61_5(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_61_7()
{

  return sub_1DC43F4A8();
}

uint64_t sub_1DC29CADC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  OUTLINED_FUNCTION_54_11();
  return sub_1DC28F308(v4 + v8, a4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_158()
{
  v2 = *(*(v1 - 144) + 8);
  result = v0;
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_158_1()
{
  v2 = *(v0 - 264);

  return sub_1DC5138FC();
}

uint64_t sub_1DC29CB90()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t sub_1DC29CC74()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC29CD5C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  OUTLINED_FUNCTION_39_5();

  return v5();
}

uint64_t OUTLINED_FUNCTION_62_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1DC2BE044(a1, v3);
}

uint64_t OUTLINED_FUNCTION_62_5(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_62_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_62_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_62_11()
{
  v2 = *(v0 + 408);

  return swift_arrayDestroy();
}

uint64_t sub_1DC29CFD8(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_13_6();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_38_3();
  sub_1DC29D2C8(a1, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
  {
    sub_1DC2A17A4(v3);
    v20 = [objc_opt_self() getSingletonCDMAssetsManager];
    sub_1DC2A19E8(a1, v20);

    if (__swift_getEnumTagSinglePayload(v1, 1, v10) == 1)
    {
      sub_1DC2A17A4(v1);
      sub_1DC517BAC();
      OUTLINED_FUNCTION_21_2();
      v21 = sub_1DC296DBC();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      return 0;
    }

    else
    {
      (*(v13 + 32))(v18, v1, v10);
      sub_1DC517B9C();
      OUTLINED_FUNCTION_18_7();
      v24 = sub_1DC296DBC();
      OUTLINED_FUNCTION_9_7();
      sub_1DC516F0C();

      v22 = sub_1DC51094C();
      (*(v13 + 8))(v18, v10);
    }
  }

  else
  {
    (*(v13 + 32))(v2, v3, v10);
    sub_1DC517B9C();
    sub_1DC297814();
    v23 = sub_1DC296DBC();
    sub_1DC516F0C();

    v22 = sub_1DC51094C();
    (*(v13 + 8))(v2, v10);
  }

  return v22;
}

uint64_t sub_1DC29D2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_6_8(inited, xmmword_1DC522F10);
  v8[2] = a1;
  v9 = v2;
  v6 = sub_1DC29D380(sub_1DC2A1770, v8, inited);
  swift_setDeallocating();
  sub_1DC2A180C();
  sub_1DC2A1850(v6, a2);
}

size_t sub_1DC29D380(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1DC5109BC();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v31 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v27 = &v26 - v14;
  v28 = v15;
  v16 = *(a3 + 16);
  v30 = (v15 + 32);
  v17 = (a3 + 40);
  v18 = MEMORY[0x1E69E7CC0];
  v29 = a1;
  if (v16)
  {
    while (1)
    {
      v19 = *v17;
      v32[0] = *(v17 - 1);
      v32[1] = v19;

      a1(v32);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        sub_1DC2A17A4(v9);
      }

      else
      {
        v20 = v10;
        v21 = *v30;
        v22 = v27;
        (*v30)(v27, v9, v20);
        v21(v31, v22, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1DC2A5828(0, *(v18 + 16) + 1, 1, v18);
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          v18 = sub_1DC2A5828(v23 > 1, v24 + 1, 1, v18);
        }

        *(v18 + 16) = v24 + 1;
        v21((v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24), v31, v20);
        v10 = v20;
        a1 = v29;
      }

      v17 += 2;
      if (!--v16)
      {
        return v18;
      }
    }
  }

  return v18;
}

void sub_1DC29D640()
{
  OUTLINED_FUNCTION_33();
  v66 = v1;
  v67 = v2;
  v4 = v3;
  v68 = sub_1DC5108BC();
  v5 = OUTLINED_FUNCTION_0(v68);
  v63 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v65 = v10 - v9;
  v11 = sub_1DC5109BC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v71 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v62 = v16 - v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v58 - v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v58 - v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_9();
  v23 = sub_1DC510BEC();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  (*(v26 + 104))(v30 - v29, *MEMORY[0x1E6969638], v23);
  v32 = sub_1DC510B9C();
  v34 = v33;
  (*(v26 + 8))(v31, v23);
  sub_1DC517B9C();
  OUTLINED_FUNCTION_18_7();
  v35 = sub_1DC296DBC();
  if (os_log_type_enabled(v35, v23))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v72 = v37;
    *v36 = 136315138;
    v38 = v32;
    *(v36 + 4) = sub_1DC291244(v32, v34, &v72);
    _os_log_impl(&dword_1DC287000, v35, v23, "Fetching sideload assets for locale: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v38 = v32;
  }

  type metadata accessor for NLRouterOverrideService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass_];
  v41 = sub_1DC5176FC();
  v42 = sub_1DC2A23B4(v41, 0, 0xE000000000000000, v40);

  if (v42)
  {
    v61 = v4;
    sub_1DC51093C();

    v72 = v38;
    v73 = v34;

    MEMORY[0x1E1296160](1668246574, 0xE400000000000000);

    v43 = v62;
    sub_1DC51091C();

    v72 = 0x656469727265766FLL;
    v73 = 0xE900000000000073;
    v59 = *MEMORY[0x1E6968F70];
    v60 = v0;
    v70 = v11;
    v44 = v63;
    v58 = *(v63 + 104);
    v45 = v65;
    v46 = v68;
    v58(v65);
    sub_1DC2A32B0();
    v47 = v64;
    sub_1DC51099C();
    v48 = *(v44 + 8);
    v48(v45, v46);
    v63 = *(v71 + 8);
    (v63)(v43, v70);
    v72 = v66;
    v73 = v67;
    (v58)(v45, v59, v46);
    v49 = v69;
    v50 = v70;
    sub_1DC51099C();
    v51 = v49;
    v48(v45, v46);
    v52 = v63;
    (v63)(v47, v50);
    v53 = [objc_opt_self() defaultManager];
    sub_1DC51095C();
    v54 = sub_1DC5176FC();

    LODWORD(v46) = [v53 fileExistsAtPath_];

    v11 = v50;
    v52(v60, v50);
    if (v46)
    {
      v55 = *(v71 + 32);
      v4 = v61;
      OUTLINED_FUNCTION_26_1();
      v56();
      v57 = 0;
    }

    else
    {
      v52(v51, v50);
      v57 = 1;
      v4 = v61;
    }
  }

  else
  {

    v57 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v57, 1, v11);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC29DBF0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_1DC2D2420(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1DC29DC3C()
{
  result = qword_1ECC7BCB8;
  if (!qword_1ECC7BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_45_5()
{
  result = v0;
  v3 = *(v1 - 112);
  v4 = *(v1 - 104);
  v5 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_45_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_9@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v4 = *(v1 - 240);
  v3 = *(v1 - 232);
  v6 = *(v1 - 224);
  v5 = *(v1 - 216);
  return result;
}

void *OUTLINED_FUNCTION_45_10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[8] = v2;
  result[9] = (a2 - 32) | 0x8000000000000000;
  result[10] = 0x6E65697069636572;
  result[11] = 0xEA00000000007374;
  return result;
}

uint64_t sub_1DC29DEB8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC29DFB8()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 64))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 48));
    v2 = *(v1 + 104);
    v12 = v2 + *v2;
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_94_2(v4);
    v5 = *(v0 + 32);
    v6 = OUTLINED_FUNCTION_16_9();

    return v7(v6);
  }

  else
  {
    v9 = *(v0 + 16);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v10 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v11();
  }
}

uint64_t sub_1DC29E164(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC29E17C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC29E274()
{
  OUTLINED_FUNCTION_41_5();
  v1 = [*(v0 + 16) eventMetadata];
  if (v1 && (v2 = v1, v3 = [v1 nlRouterId], v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);

    [*(v5 + 16) emitMessage:v6 timestamp:v4];
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v7 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();
  }

  OUTLINED_FUNCTION_39_5();

  return v8();
}

uint64_t sub_1DC29E38C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v2();
}

uint64_t sub_1DC29E3EC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  v3[28] = v0;

  v9 = v3[11];
  if (v0)
  {
    v10 = sub_1DC3AF88C;
  }

  else
  {
    v3[29] = v3[7];
    v10 = sub_1DC29E4F8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DC29E4F8()
{
  v27 = *(v0 + 232);
  v28 = *(v0 + 200);
  v33 = *(v0 + 176);
  v34 = *(v0 + 184);
  v1 = *(v0 + 160);
  v31 = v1;
  v32 = *(v0 + 168);
  v2 = *(v0 + 152);
  v25 = v2;
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v24 = v4;
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v30 = *(v0 + 88);
  v9 = sub_1DC517AAC();
  v26 = *(v0 + 64);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  sub_1DC2986F0();
  (*(v3 + 16))(v2, v1, v4);
  v10 = (v6 + ((*(v7 + 80) + 48) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (*(v3 + 80) + v12 + 8) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v33;
  *(v14 + 5) = v27;
  sub_1DC298804();
  *&v14[v10] = v26;
  *&v14[v11] = v34;
  *&v14[v12] = v28;
  (*(v3 + 32))(&v14[v13], v25, v24);
  v29 = v28;

  swift_unknownObjectRetain();
  v15 = sub_1DC3AF95C(0, 0, v5, &unk_1DC5271C8, v14);
  OUTLINED_FUNCTION_12_0();
  v17 = *(v16 + 144);

  v18 = v17(v0 + 16);
  v20 = v19;
  v21 = *v19;
  swift_isUniquelyReferenced_nonNull_native();
  v35 = *v20;
  sub_1DC29E990(v15, v32);
  *v20 = v35;
  v18(v0 + 16, 0);

  swift_unknownObjectRelease();
  (*(v3 + 8))(v31, v24);
  sub_1DC2989EC(v32);

  OUTLINED_FUNCTION_2_2();

  return v22();
}

uint64_t sub_1DC29E810()
{
  v1 = type metadata accessor for ServiceSetupConfiguration(0);
  OUTLINED_FUNCTION_52(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = (((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v13 + v7 + 8) & ~v13;
  v15 = *(v12 + 64);
  v16 = v3 | v13;
  v17 = *(v0 + 16);
  swift_unknownObjectRelease();
  v18 = *(v0 + 32);
  swift_unknownObjectRelease();
  v19 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35(v19);
  (*(v20 + 8))(v0 + v4);
  v21 = *(v0 + v6);

  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1DC29E990(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = sub_1DC2977A8(a2);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1E8, &qword_1DC527708);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  v16 = sub_1DC2977A8(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v3;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v13);
    *(v19 + 8 * v13) = a1;
  }

  else
  {
    sub_1DC2986F0();
    return sub_1DC29EB28(v13, v9, a1, v18);
  }
}

uint64_t sub_1DC29EB28(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = *(*(type metadata accessor for ServiceStoreServiceKeyingFields(0) - 8) + 72);
  result = sub_1DC298804();
  *(a4[7] + 8 * a1) = a3;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1DC29EBDC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC29ECDC()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[3];
  v2 = *v1;
  v0[7] = *v1;
  type metadata accessor for NLRouterOverrideService();
  v3 = *(*v2 + 192);

  v10 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1DC29F004;
  v6 = v0[2];
  v7 = OUTLINED_FUNCTION_21_18();

  return v8(v7);
}

uint64_t sub_1DC29EE3C@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  v13[1] = type metadata accessor for NLRouterOverrideService();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF68, qword_1DC525C10);
  v8 = sub_1DC51777C();
  v10 = v9;
  v11 = sub_1DC510C8C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  return sub_1DC297194(v8, v10, v7, a1);
}

id sub_1DC29EF28()
{
  v1 = &v0[OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_overridesStore];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  *&v0[OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cachedRegex] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cacheLock] = 0;
  *&v0[OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_assetInfo] = xmmword_1DC522850;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NLRouterOverrideService();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1DC29EFC8()
{
  sub_1DC5182FC();
  sub_1DC298098();
  return sub_1DC51833C();
}

uint64_t sub_1DC29F004()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_2_2();

    return v13();
  }
}

uint64_t sub_1DC29F120()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t sub_1DC29F204()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = *(v2 + 120);
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    v7 = sub_1DC316A40;
  }

  else
  {
    v7 = sub_1DC29F308;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DC29F308()
{
  OUTLINED_FUNCTION_41_5();
  sub_1DC29F384(*(v0 + 104));
  OUTLINED_FUNCTION_44_5();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC29F384(uint64_t a1)
{
  v2 = type metadata accessor for ServiceSetupConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC29F3E0()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v1;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  v11 = (*(v5 + 312) + **(v5 + 312));
  v6 = *(*(v5 + 312) + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_33_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_5(v8);

  return v11(v2);
}

uint64_t sub_1DC29F508()
{
  OUTLINED_FUNCTION_37_4();
  v2 = v1;
  v4 = v3;
  *(v0 + 48) = v16;
  *(v0 + 32) = v15;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_31_13(v4);
  v13 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_1DC2B7464;

  return v13(v2, ObjectType, v4);
}

uint64_t sub_1DC29F648()
{
  OUTLINED_FUNCTION_1_0();
  v1[10] = v2;
  v1[11] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  v1[12] = OUTLINED_FUNCTION_118();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_118();
  v9 = sub_1DC51744C();
  v1[14] = v9;
  OUTLINED_FUNCTION_52(v9);
  v1[15] = v10;
  v12 = *(v11 + 64);
  v1[16] = OUTLINED_FUNCTION_118();
  v13 = sub_1DC51507C();
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  v1[17] = OUTLINED_FUNCTION_118();
  v16 = sub_1DC51512C();
  v1[18] = v16;
  OUTLINED_FUNCTION_52(v16);
  v1[19] = v17;
  v19 = *(v18 + 64);
  v1[20] = OUTLINED_FUNCTION_124();
  v1[21] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA30, &qword_1DC52A6F8);
  OUTLINED_FUNCTION_10(v20);
  v22 = *(v21 + 64);
  v1[22] = OUTLINED_FUNCTION_118();
  v23 = sub_1DC51509C();
  v1[23] = v23;
  OUTLINED_FUNCTION_52(v23);
  v1[24] = v24;
  v26 = *(v25 + 64);
  v1[25] = OUTLINED_FUNCTION_118();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA38, &qword_1DC52A700);
  OUTLINED_FUNCTION_10(v27);
  v29 = *(v28 + 64);
  v1[26] = OUTLINED_FUNCTION_118();
  v30 = sub_1DC510E1C();
  v1[27] = v30;
  OUTLINED_FUNCTION_52(v30);
  v1[28] = v31;
  v33 = *(v32 + 64);
  v1[29] = OUTLINED_FUNCTION_118();
  v34 = sub_1DC510C8C();
  v1[30] = v34;
  OUTLINED_FUNCTION_52(v34);
  v1[31] = v35;
  v37 = *(v36 + 64);
  v1[32] = OUTLINED_FUNCTION_118();
  v38 = sub_1DC516F5C();
  v1[33] = v38;
  OUTLINED_FUNCTION_52(v38);
  v1[34] = v39;
  v41 = *(v40 + 64);
  v1[35] = OUTLINED_FUNCTION_124();
  v1[36] = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v42, v43, v44);
}

uint64_t sub_1DC29F950(unsigned __int8 a1)
{
  if (qword_1ECC82070 != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  swift_beginAccess();
  v2 = sub_1DC29DBF0(a1, qword_1ECC8F580);
  if (v2 != 2)
  {
    v3 = v2;
    swift_endAccess();
    v4 = sub_1DC517B9C();
    sub_1DC297814();
    v5 = sub_1DC2C0F8C();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12[0] = v7;
      *v6 = 136315394;
      v13 = a1;
LABEL_10:
      v8 = sub_1DC51777C();
      v10 = sub_1DC291244(v8, v9, v12);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1024;
      *(v6 + 14) = v3 & 1;
      _os_log_impl(&dword_1DC287000, v5, v4, "Feature flag %s has been forcefully set to %{BOOL}d", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E1298840](v7, -1, -1);
      MEMORY[0x1E1298840](v6, -1, -1);
    }

LABEL_11:

    return v3 & 1;
  }

  swift_endAccess();
  OUTLINED_FUNCTION_50_1();
  v3 = byte_1ECC7BEC8;
  if (byte_1ECC7BEC8 != 2)
  {
    v4 = sub_1DC517B9C();
    sub_1DC297814();
    v5 = sub_1DC2C0F8C();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12[0] = v7;
      *v6 = 136315394;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v12[3] = &type metadata for PlannerFeatureFlags;
  v12[4] = sub_1DC29DC3C();
  LOBYTE(v12[0]) = a1;
  v3 = sub_1DC510D0C();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v3 & 1;
}

uint64_t sub_1DC29FB9C()
{
  v2 = type metadata accessor for ServiceSetupConfiguration(0);
  OUTLINED_FUNCTION_52(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 48) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1DC510B6C();
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 80);
  v11 = *(v0 + v5);
  v12 = *(v0 + v6);
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  v15 = *(v0 + v7);
  v16 = swift_task_alloc();
  *(v1 + 16) = v16;
  *v16 = v1;
  v16[1] = sub_1DC29F120;

  return sub_1DC29F508();
}

uint64_t sub_1DC29FD28()
{
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_11_16();
  v5 = (*(v4 + 208))();
  v6 = *(v1 + 8);
  v7 = v5 & 1;

  return v6(v7);
}

uint64_t sub_1DC29FE00(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v77 - v8;
  v10 = sub_1DC5109BC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  if ((sub_1DC2A051C() & 1) == 0)
  {
    sub_1DC517B9C();
    OUTLINED_FUNCTION_155();
    sub_1DC297814();
    v46 = sub_1DC2A5914();
    OUTLINED_FUNCTION_40_1();
LABEL_21:
    sub_1DC516F0C();

    return 0;
  }

  v83 = type metadata accessor for NLRouterAssetsUtils();
  v19 = sub_1DC29CFD8(a1);
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v79 = a1;
    v80 = v18;
    v81 = v13;
    sub_1DC517B9C();
    OUTLINED_FUNCTION_155();
    v23 = sub_1DC297814();
    v24 = sub_1DC2A5914();
    v25 = os_log_type_enabled(v24, v13);
    v82 = v10;
    if (v25)
    {
      OUTLINED_FUNCTION_11();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v27 = swift_slowAlloc();
      v84 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1DC291244(v21, v22, &v84);
      _os_log_impl(&dword_1DC287000, v24, v13, "Path is %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v28 = *v2;
    v29 = MEMORY[0x1E69E7D40];
    v30 = *MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_15_8();
    v32 = (*(v31 + 232))(v21, v22);
    if (v32)
    {
      v33 = v32;

      sub_1DC2AD798(v34);
      v35 = *v2;
      v36 = *v29;
      OUTLINED_FUNCTION_15_8();
      (*(v37 + 120))();
      sub_1DC517B9C();
      v38 = OUTLINED_FUNCTION_30_10();
      if (os_log_type_enabled(v38, v29))
      {

        v39 = swift_slowAlloc();
        v77 = v21;
        v40 = v39;
        OUTLINED_FUNCTION_19_3();
        v41 = swift_slowAlloc();
        v84 = v41;
        *v40 = 134218242;
        v78 = v29;
        v42 = v23;
        v43 = *(v33 + 16);

        *(v40 + 4) = v43;
        v23 = v42;

        *(v40 + 12) = 2080;
        v44 = sub_1DC291244(v77, v22, &v84);

        *(v40 + 14) = v44;
        _os_log_impl(&dword_1DC287000, v38, v78, "Overrides successfully loaded %ld overrides from: %s", v40, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
      }

      else
      {
      }

      v51 = sub_1DC2B8400(v45);
      sub_1DC2B8404();

      v52 = v82;
      if (__swift_getEnumTagSinglePayload(v9, 1, v82) == 1)
      {
        sub_1DC37BD24(v9, &qword_1ECC7C950);
        sub_1DC517B9C();
        v53 = OUTLINED_FUNCTION_30_10();
        OUTLINED_FUNCTION_40_1();
        sub_1DC516F0C();

        nullsub_1(0x416E4964656B6162, 0xEC00000074657373);
        v54 = *v2;
        v55 = *MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_15_8();
        (*(v56 + 192))();
      }

      else
      {
        (*(v81 + 32))(v80, v9, v52);
        sub_1DC51094C();
        v57 = *v2;
        v58 = *MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_15_8();
        v60 = (*(v59 + 240))();
        v62 = v61;

        if (v62)
        {
          sub_1DC517B9C();
          sub_1DC2A5914();
          OUTLINED_FUNCTION_22_9();
          if (os_log_type_enabled(v63, v64))
          {
            OUTLINED_FUNCTION_11();
            v65 = swift_slowAlloc();
            OUTLINED_FUNCTION_19_3();
            v66 = swift_slowAlloc();
            v84 = v66;
            *v65 = 136315138;
            *(v65 + 4) = sub_1DC291244(v60, v62, &v84);
            OUTLINED_FUNCTION_7_11();
            _os_log_impl(v67, v68, v69, v70, v71, v72);
            __swift_destroy_boxed_opaque_existential_1Tm(v66);
            v52 = v82;
            OUTLINED_FUNCTION_8_0();
            MEMORY[0x1E1298840]();
            OUTLINED_FUNCTION_8_0();
            MEMORY[0x1E1298840]();
          }

          nullsub_1(v60, v62);
          v73 = *v2;
          v74 = *MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_15_8();
          (*(v75 + 192))();
        }

        (*(v81 + 8))(v80, v52);
      }

      sub_1DC517B8C();
      v46 = OUTLINED_FUNCTION_30_10();
      OUTLINED_FUNCTION_40_1();
      goto LABEL_21;
    }

    sub_1DC517BAC();
    v47 = OUTLINED_FUNCTION_30_10();
    if (os_log_type_enabled(v47, v29))
    {
      OUTLINED_FUNCTION_11();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v49 = swift_slowAlloc();
      v84 = v49;
      *v48 = 136315138;
      v50 = sub_1DC291244(v21, v22, &v84);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_1DC287000, v47, v29, "Overrides cannot be loaded from path: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {
    }
  }

  else
  {
    sub_1DC517BAC();
    OUTLINED_FUNCTION_155();
    sub_1DC297814();
    v47 = sub_1DC2A5914();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();
  }

  return 1;
}

uint64_t sub_1DC2A051C()
{
  v0 = sub_1DC29F950(4u);
  if ((v0 & 1) == 0)
  {
    sub_1DC517B8C();
    sub_1DC297814();
    v1 = sub_1DC2A5914();
    sub_1DC516F0C();
  }

  return v0 & 1;
}

void static SignpostLogger.begin(_:enableTelemetry:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (a4)
  {
    v9 = *(a6 + 8);
    v9(a5, a6);
    sub_1DC516F3C();
    sub_1DC517CEC();
    v10 = (v9)(a5, a6);
    OUTLINED_FUNCTION_10_14();
    sub_1DC516F1C();
  }

  else
  {
    (*(a6 + 24))(a7, a1, a2, a3, 0, 0, 256, 0, 0, a5, a6);
  }
}

void sub_1DC2A08C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t *a9, id *a10)
{
  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_15_7(a9);
  if (!v13)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = *a10;
  sub_1DC516F3C();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_1DC517CEC();
    v18 = *a10;
    sub_1DC516F2C();
  }

  else
  {

    sub_1DC517CEC();
    v15 = *a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DC522F20;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1DC2C0FA4();
    *(v16 + 32) = a7;
    *(v16 + 40) = a8;
    v17 = v15;
    sub_1DC516F1C();
  }

  OUTLINED_FUNCTION_19_14();
}

void OUTLINED_FUNCTION_139()
{

  JUMPOUT(0x1E1296570);
}

void *OUTLINED_FUNCTION_139_0()
{
  result = *(v1 - 104);
  *result = v0;
  return result;
}

uint64_t sub_1DC2A0B64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DC522F10;
  v4 = v3 + v2;
  v5 = (v4 + v0[14]);
  sub_1DC51680C();
  v6 = sub_1DC2A0C74();
  v8 = *v6;
  v7 = *(v6 + 1);
  *v5 = v8;
  v5[1] = v7;
  v9 = (v4 + v1 + v0[14]);

  sub_1DC51687C();
  *v9 = sub_1DC2A0C80(0);
  v9[1] = v10;
  return v3;
}

unint64_t sub_1DC2A0C80(char a1)
{
  result = 0x7465536D64436C6ELL;
  switch(a1)
  {
    case 2:
      return result;
    case 3:
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x6575716552756C6ELL;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DC2A0DF4(char a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmDaemonKilled;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC2A0E34(char a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupSucceeded;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC2A0E74(char a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_assetsChanged;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_159_1()
{
  v2 = *(v0 - 432);

  return sub_1DC5149AC();
}

void OUTLINED_FUNCTION_159_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_1DC2A0FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v31 = sub_1DC510BFC();
  if (a3)
  {
    v19 = sub_1DC5176FC();

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v19 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = sub_1DC5176FC();

  if (a7)
  {
LABEL_4:
    v21 = sub_1DC5176FC();

    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  if (a8)
  {
    sub_1DC298C74(0, &qword_1ECC7CE58, 0x1E69D1308);
    v22 = sub_1DC517A0C();
  }

  else
  {
    v22 = 0;
  }

  if (a10)
  {
    v23 = sub_1DC5176FC();

    if (a12)
    {
LABEL_13:
      v24 = sub_1DC5176FC();

      goto LABEL_16;
    }
  }

  else
  {
    v23 = 0;
    if (a12)
    {
      goto LABEL_13;
    }
  }

  v24 = 0;
LABEL_16:
  v25 = sub_1DC510B6C();
  v26 = 0;
  if (__swift_getEnumTagSinglePayload(a13, 1, v25) != 1)
  {
    v26 = sub_1DC510B2C();
    (*(*(v25 - 8) + 8))(a13, v25);
  }

  if (a15)
  {
    v27 = sub_1DC5176FC();
  }

  else
  {
    v27 = 0;
  }

  v28 = [v32 initWithLocaleIdentifier:v31 sandboxId:v19 activeServiceGraph:v20 assetDirPath:v21 overrideSiriVocabSpans:v22 serviceStateDirectory:v23 embeddingVersion:v24 nlSetupId:v26 invocationSource:v27];

  v29 = sub_1DC510C8C();
  (*(*(v29 - 8) + 8))(a1, v29);
  return v28;
}

void sub_1DC2A1770(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = a1[1];
  sub_1DC29D640();
}

uint64_t sub_1DC2A17A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC2A180C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DC2A1850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC5109BC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1DC2A19E8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_6_8(inited, xmmword_1DC522F10);
  v23 = v2;
  v24 = a1;
  v25 = a2;
  v12 = sub_1DC29D380(sub_1DC2A1E60, v22, inited);
  swift_setDeallocating();
  sub_1DC2A180C();
  sub_1DC2A1850(v12, v10);

  v13 = sub_1DC5109BC();
  OUTLINED_FUNCTION_2_6(v10);
  if (v14)
  {
    sub_1DC2A17A4(v10);
    sub_1DC517BAC();
    OUTLINED_FUNCTION_18_7();
    v15 = sub_1DC296DBC();
    OUTLINED_FUNCTION_9_7();
    sub_1DC516F0C();

    v20 = 1;
  }

  else
  {
    v16 = *(*(v13 - 8) + 32);
    v17 = OUTLINED_FUNCTION_5_10();
    v19 = v18(v17);
    v20 = 0;
  }

  return OUTLINED_FUNCTION_12_8(v19, v20);
}

void sub_1DC2A1B8C()
{
  OUTLINED_FUNCTION_33();
  v36 = v2;
  v37 = v3;
  v38 = v4;
  v5 = sub_1DC5108BC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v15 = OUTLINED_FUNCTION_10(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v20 = sub_1DC5109BC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_38_3();
  sub_1DC2A2428();
  OUTLINED_FUNCTION_2_6(v19);
  if (v27)
  {
    v28 = sub_1DC2A17A4(v19);
LABEL_7:
    v34 = 1;
    goto LABEL_8;
  }

  v35 = *(v23 + 32);
  v35(v1, v19, v20);
  v39 = v36;
  v40 = v37;
  (*(v8 + 104))(v13, *MEMORY[0x1E6968F70], v5);
  sub_1DC2A32B0();
  sub_1DC51099C();
  (*(v8 + 8))(v13, v5);
  v29 = [objc_opt_self() defaultManager];
  sub_1DC51095C();
  v30 = sub_1DC5176FC();

  v31 = [v29 fileExistsAtPath_];

  v32 = *(v23 + 8);
  v32(v1, v20);
  if (!v31)
  {
    v28 = (v32)(v0, v20);
    goto LABEL_7;
  }

  v33 = OUTLINED_FUNCTION_5_10();
  v28 = (v35)(v33);
  v34 = 0;
LABEL_8:
  OUTLINED_FUNCTION_12_8(v28, v34);
  OUTLINED_FUNCTION_34();
}

void sub_1DC2A1E60(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *a1;
  v4 = a1[1];
  sub_1DC2A1B8C();
}

uint64_t OUTLINED_FUNCTION_222()
{
  v2 = *(*(v1 - 200) + 8);
  result = v0;
  v4 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_222_0()
{

  return sub_1DC372F04();
}

uint64_t sub_1DC2A20AC()
{
  type metadata accessor for TurnInputManager();
  sub_1DC2A214C(5);
  OUTLINED_FUNCTION_183();
  v1 = *(v0 + class metadata base offset for NLBridge + 152);

  return v1();
}

uint64_t sub_1DC2A214C(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  v2 = swift_allocObject();
  sub_1DC2A2184(a1);
  return v2;
}

uint64_t sub_1DC2A2184(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for TurnInputContainer();
  v3 = swift_allocObject();
  if (a1 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a1;
  }

  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v4;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_1DC2A21F8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_35_1();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1DC2A2248()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1DC2A2278()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1DC2A22AC(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1DC2A234C()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

id sub_1DC2A23B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1DC5176FC();

  v7 = [a4 URLForResource:a1 withExtension:v6];

  return v7;
}

void sub_1DC2A2428()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v45[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DC510C8C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = sub_1DC510BEC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  (*(v9 + 104))(v13 - v12, *MEMORY[0x1E6969638], v6);
  sub_1DC510B9C();
  (*(v9 + 8))(v14, v6);

  OUTLINED_FUNCTION_75();
  sub_1DC510B7C();
  v15 = sub_1DC517B9C();
  sub_1DC297814();
  v16 = sub_1DC296DBC();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v45[0] = v18;
    *v17 = 136315138;
    v19 = OUTLINED_FUNCTION_75();
    *(v17 + 4) = sub_1DC291244(v19, v20, v21);
    _os_log_impl(&dword_1DC287000, v16, v15, "Fetching assets info for locale: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  v22 = objc_opt_self();
  OUTLINED_FUNCTION_75();
  v23 = sub_1DC5176FC();
  v24 = [v22 getCDMAssetsInfoForNLRouterWithLocale_];

  OUTLINED_FUNCTION_75();
  v25 = sub_1DC5176FC();

  LODWORD(v23) = [v1 shouldReSetupForLocale:v25 cdmAssetsInfo:v24];

  if (!v23 || (v26 = sub_1DC510BFC(), v45[0] = 0, [v1 setupForLocale:v26 cdmAssetsInfo:v24 error:v45], v26, !v45[0]))
  {
    v32 = sub_1DC510BFC();
    v33 = [v1 getAssetsByFactorNamesForCDMAssetsInfo:v24 assetDirPath:0 locale:v32];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C9C0, qword_1DC523D38);
    v34 = sub_1DC51762C();

    v35 = sub_1DC2A5614(0xD000000000000027, 0x80000001DC53EF00, v34);

    if (v35)
    {
      v36 = [v35 getAssetPath];
      if (v36)
      {
        v37 = v36;
        sub_1DC51772C();

        sub_1DC51096C();
        swift_unknownObjectRelease();

        v38 = OUTLINED_FUNCTION_8_5();
        v39(v38);
        goto LABEL_12;
      }

      sub_1DC517BAC();
      v40 = sub_1DC296DBC();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1DC517BAC();
      v40 = sub_1DC296DBC();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();
    }

    v41 = OUTLINED_FUNCTION_8_5();
    v42(v41);
    v43 = sub_1DC5109BC();
    OUTLINED_FUNCTION_28_7(v43);
    goto LABEL_12;
  }

  v27 = v45[0];
  sub_1DC517BAC();
  v28 = sub_1DC296DBC();
  OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C();

  v29 = OUTLINED_FUNCTION_8_5();
  v30(v29);
  v31 = sub_1DC5109BC();
  OUTLINED_FUNCTION_28_7(v31);

LABEL_12:
  v44 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_77(char a1, uint64_t a2)
{
  *(v4 + 32) = a1 & 1;

  return sub_1DC2EB40C(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_77_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_77_5()
{
  v2 = *(v0 + 160);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_77_6()
{

  return sub_1DC516F7C();
}

uint64_t sub_1DC2A2E50()
{
  OUTLINED_FUNCTION_465();
  v2 = *(v1 + 24);
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v1 + 32);
  OUTLINED_FUNCTION_7_1(v2);
  (*v3)(v0);
  return v0;
}

uint64_t sub_1DC2A2ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = a4;
  sub_1DC516F3C();
  return sub_1DC2A2F3C(a6, a1, a2, a3, v11, a5);
}

uint64_t sub_1DC2A2F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_1DC517CEC();
  if (a6)
  {
    OUTLINED_FUNCTION_2_22();
    return sub_1DC516F1C();
  }

  else
  {
    OUTLINED_FUNCTION_2_22();

    return sub_1DC516F2C();
  }
}

uint64_t sub_1DC2A2FF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation15NLRouterService_locale;
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_1_22();
  v4 = sub_1DC510C8C();
  OUTLINED_FUNCTION_11_0(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

__n128 OUTLINED_FUNCTION_94()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return *(v0 + 40);
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_1DC3136DC(v8, v7, a3, v11, v12, v13, a7, v10, v9);
}

uint64_t OUTLINED_FUNCTION_94_2(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_94_3()
{

  return swift_arrayDestroy();
}

uint64_t sub_1DC2A30F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = a2;
  if (a2 == 1)
  {
    v7 = OUTLINED_FUNCTION_0_68();
    v8 = v9;
  }

  sub_1DC2A329C(a1, a2);
  if (_MergedGlobals_20 != -1)
  {
    swift_once();
  }

  v10 = *(qword_1EDAC9608 + 16);
  if (v10)
  {
    v11 = (qword_1EDAC9608 + 40);
    v12 = MEMORY[0x1E69E7CD0];
    v13 = -1;
    do
    {
      v14 = *(v11 - 1);
      if (v13 < v14)
      {
        v15 = *v11;

        v16 = sub_1DC2A49A4(v7, v8) < v14;
        if (((v17 | v16) & 1) == 0)
        {
          v13 = v14;
          v12 = v15;
        }
      }

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  MEMORY[0x1EEE9AC00](v18);
  v21[2] = v3;
  v21[3] = a3;

  v19 = sub_1DC2A4D24(sub_1DC2BCEC8, v21, v12);

  type metadata accessor for NLRouterModelFeatureSet();
  result = swift_allocObject();
  *(result + 16) = v19;
  return result;
}

uint64_t sub_1DC2A329C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1DC2A32B0()
{
  result = qword_1EDAC7FD0;
  if (!qword_1EDAC7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC7FD0);
  }

  return result;
}

uint64_t sub_1DC2A3304(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DC522850;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_126()
{

  return sub_1DC517CBC();
}

uint64_t sub_1DC2A3398()
{
  OUTLINED_FUNCTION_140_0();
  v3 = (v1 + OBJC_IVAR____TtC13CDMFoundation15NLRouterService_promptGenerator);
  OUTLINED_FUNCTION_376_0();
  OUTLINED_FUNCTION_142();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;
  return sub_1DC29C9C0(v4);
}

void sub_1DC2A33E8()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DA38, &qword_1DC52A700);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_28_13();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF80, &qword_1DC52E9F8);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30_1();
  v15 = sub_1DC510DEC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_2();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))(v4);
  OUTLINED_FUNCTION_39(v2, 1, v15);
  if (v21)
  {
    sub_1DC28EB30(v2, &qword_1ECC7DF80, &qword_1DC52E9F8);
LABEL_10:
    sub_1DC510E1C();
    v33 = OUTLINED_FUNCTION_27();
    goto LABEL_11;
  }

  v22 = *(v18 + 32);
  v23 = OUTLINED_FUNCTION_113_0();
  v24(v23);
  if (qword_1ECC82DE8 != -1)
  {
    OUTLINED_FUNCTION_25_18();
  }

  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  sub_1DC2A2E50();
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  sub_1DC510D6C();
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  sub_1DC4465D4();
  if (!v56)
  {
    sub_1DC28EB30(&v55, &qword_1ECC7DF88, &qword_1DC52EA00);
    sub_1DC517BAC();
    sub_1DC297814();
    v35 = sub_1DC296DBC();
    sub_1DC516F0C();

    sub_1DC28EB30(v58, &qword_1ECC7DF88, &qword_1DC52EA00);
    v36 = *(v18 + 8);
    v37 = OUTLINED_FUNCTION_30();
    v38(v37);
    goto LABEL_10;
  }

  sub_1DC28F9B0(&v55, v57);
  sub_1DC2A2E50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DF90, &qword_1DC52EA08);
  OUTLINED_FUNCTION_38_2();
  v25 = sub_1DC510E1C();
  OUTLINED_FUNCTION_392();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    sub_1DC28EB30(v58, &qword_1ECC7DF88, &qword_1DC52EA00);
    v26 = *(v18 + 8);
    v27 = OUTLINED_FUNCTION_30();
    v28(v27);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
    OUTLINED_FUNCTION_7_1(v25);
    (*(v32 + 32))(v6, v1, v25);
    v33 = v6;
    v34 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v25);
    sub_1DC28EB30(v1, &qword_1ECC7DA38, &qword_1DC52A700);
    v44 = sub_1DC517BAC();
    sub_1DC297814();
    v45 = sub_1DC296DBC();
    sub_1DC2A2E50();
    if (os_log_type_enabled(v45, v44))
    {
      v46 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_82();
      *v46 = 136315138;
      __swift_project_boxed_opaque_existential_1(&v55, v56);
      swift_getDynamicType();
      sub_1DC5183EC();
      __swift_destroy_boxed_opaque_existential_1Tm(&v55);
      v47 = OUTLINED_FUNCTION_46_0();
      v50 = sub_1DC291244(v47, v48, v49);

      *(v46 + 4) = v50;
      OUTLINED_FUNCTION_409(&dword_1DC287000, v51, v44, "Failed to get resourceBundle as AssetBackedLLMBundle. %s");
      OUTLINED_FUNCTION_146_5();
      OUTLINED_FUNCTION_54_12();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v55);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    sub_1DC28EB30(v58, &qword_1ECC7DF88, &qword_1DC52EA00);
    v52 = *(v18 + 8);
    v53 = OUTLINED_FUNCTION_30();
    v54(v53);
    v33 = OUTLINED_FUNCTION_44();
  }

  v39 = 1;
  v40 = v25;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v33, v34, v39, v40);
  OUTLINED_FUNCTION_34();
}