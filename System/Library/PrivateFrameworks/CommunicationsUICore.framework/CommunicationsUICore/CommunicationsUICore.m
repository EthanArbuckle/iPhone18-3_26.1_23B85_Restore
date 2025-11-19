char *CallTranslationService.__allocating_init(call:videoCall:)(uint64_t a1, int a2)
{
  v141 = a2;
  v135 = sub_1C2F76A7C();
  v134 = *(v135 - 8);
  v3 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D08, &qword_1C2F78BA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v131 = &v126 - v7;
  v138 = sub_1C2F7619C();
  v8 = *(v138 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1C2F7618C();
  v130 = *(v137 - 1);
  v12 = v130[8];
  v13 = MEMORY[0x1EEE9AC00](v137);
  v15 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v126 - v16;
  v136 = sub_1C2F761CC();
  v132 = *(v136 - 1);
  v18 = v132[8];
  MEMORY[0x1EEE9AC00](v136);
  v20 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = a1;
  if (a1)
  {
    v21 = qword_1EDEBDA50;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = off_1EDEBDA58;
    v23 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);

    v24 = [v23 init];
    v25 = objc_allocWithZone(type metadata accessor for TranslationInteractionController());
    v26 = sub_1C2F08BC0(a1, v22, v24, v25);
  }

  else
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v27 = sub_1C2F761FC();
    __swift_project_value_buffer(v27, qword_1EDEBC5D8);
    v28 = sub_1C2F761DC();
    v29 = sub_1C2F769EC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C2EF2000, v28, v29, "CallTranslationService: invalid call", v30, 2u);
      MEMORY[0x1C6929E80](v30, -1, -1);
    }

    v31 = sub_1C2F761DC();
    v32 = sub_1C2F769EC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1C2EF2000, v31, v32, "failed to get interactionController", v33, 2u);
      MEMORY[0x1C6929E80](v33, -1, -1);
    }

    v26 = 0;
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v34 = sub_1C2F761FC();
  v126 = __swift_project_value_buffer(v34, qword_1EDEBC5D8);
  v35 = sub_1C2F761DC();
  v36 = sub_1C2F769EC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1C2EF2000, v35, v36, "CallTranslationService: init", v37, 2u);
    MEMORY[0x1C6929E80](v37, -1, -1);
  }

  v38 = v140;
  if (v141)
  {
    v127 = 0;
  }

  else
  {
    sub_1C2F761BC();
    v39 = v138;
    (*(v8 + 104))(v11, *MEMORY[0x1E699BED8], v138);
    sub_1C2F761AC();
    (*(v8 + 8))(v11, v39);
    v40 = v130;
    v41 = v137;
    (v130[13])(v15, *MEMORY[0x1E699BED0], v137);
    v127 = sub_1C2F7617C();
    v42 = v40[1];
    v42(v15, v41);
    v42(v17, v41);
    (v132[1])(v20, v136);
  }

  v43 = v139;
  v44 = objc_opt_self();
  v138 = [v44 sharedInstance];

  v45 = [v44 sharedInstance];
  v46 = type metadata accessor for ConversationObserver();
  v47 = objc_allocWithZone(v46);
  v48 = OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_activeParticipentUpdateSubject;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D18, &qword_1C2F78BA8);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  *&v47[v48] = sub_1C2F7626C();
  *&v47[OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_call] = v38;
  *&v47[OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_callCenter] = v45;
  v153.receiver = v47;
  v153.super_class = v46;
  v52 = 0x1E819F000uLL;

  v53 = v45;
  v54 = objc_msgSendSuper2(&v153, sel_init);
  v55 = [v53 conversationManager];
  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v56 = sub_1C2F76A2C();
  v137 = v54;
  [v55 addDelegate:v54 queue:v56];

  v57 = 0;
  if (v26)
  {
    v57 = type metadata accessor for TranslationInteractionController();
    v58 = &off_1F42B5348;
  }

  else
  {
    v58 = 0;
    v150[1] = 0;
    v150[2] = 0;
  }

  v150[0] = v26;
  v151 = v57;
  v152 = v58;
  v130 = v26;
  v59 = _s20CommunicationsUICore20LanguageAssetManagerCACycfC_0();
  v136 = [objc_opt_self() defaultCenter];
  v60 = type metadata accessor for CallTranslationBiomeLanguageController();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_1C2F40810();
  v149[3] = v60;
  v149[4] = &off_1F42B47A8;
  v149[0] = v63;
  v64 = objc_allocWithZone(v43);
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v149, v60);
  v132 = &v126;
  v66 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v68 = (&v126 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v68;
  v148[3] = v60;
  v148[4] = &off_1F42B47A8;
  v148[0] = v70;
  v71 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v128 = v63;

  v72 = sub_1C2F766AC();
  v73 = [v71 initWithSuiteName_];

  if (!v73)
  {
    v146 = 0u;
    v145 = 0u;
    v76 = v136;
LABEL_30:
    sub_1C2F0A8D8(&v145, &qword_1EC075D38, &qword_1C2F78BB0);
    goto LABEL_31;
  }

  v74 = sub_1C2F766AC();
  v75 = [v73 objectForKey_];

  if (v75)
  {
    sub_1C2F76B2C();
    swift_unknownObjectRelease();
  }

  else
  {
    v143 = 0u;
    v142 = 0u;
  }

  v76 = v136;
  v146 = v143;
  v145 = v142;
  if (!*(&v143 + 1))
  {
    goto LABEL_30;
  }

  if (!swift_dynamicCast())
  {
LABEL_31:
    v77 = 0;
    goto LABEL_32;
  }

  v77 = v142;
LABEL_32:
  v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isShowingRemoteLocale] = v77;
  *&v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_cancellables] = MEMORY[0x1E69E7CC0];
  *&v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions] = 0;
  *&v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions] = 0;
  v78 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_mockTranscripts;
  type metadata accessor for MockTranscripts();
  swift_allocObject();
  *&v64[v78] = sub_1C2EF6978();
  v79 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isRemoteStartedSubject;
  LOBYTE(v145) = 0;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  swift_allocObject();
  *&v64[v79] = sub_1C2F7629C();
  v83 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject;
  LOBYTE(v145) = 0;
  v84 = *(v80 + 48);
  v85 = *(v80 + 52);
  swift_allocObject();
  *&v64[v83] = sub_1C2F7629C();
  v86 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject;
  v147 = 0;
  v146 = 0u;
  v145 = 0u;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D88, &unk_1C2F78BC0);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  *&v64[v86] = sub_1C2F7629C();
  v90 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_languagePairSubject;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
  (*(*(v91 - 8) + 56))(v131, 1, 1, v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075DA0, &qword_1C2F78BD0);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  *&v64[v90] = sub_1C2F7629C();
  *&v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptCancellable] = 0;
  *&v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call] = v38;
  v95 = v138;
  *&v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_callCenter] = v138;
  v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_videoCall] = v141 & 1;
  v96 = v137;
  *&v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_conversationObserver] = v137;
  v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_guardOnLockState] = v127 & 1;
  sub_1C2EF6A3C(v150, &v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController], &qword_1EC075DE0, &qword_1C2F78BD8);
  *&v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_languageManager] = v59;
  *&v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_notificationCenter] = v76;
  sub_1C2F09348(v148, &v64[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_biomeLanguageController]);
  v129 = v59;
  if (v38 && (v97 = v151, , !v97))
  {

    v113 = v95;
    v114 = v96;

    v115 = v76;
    v116 = sub_1C2F761DC();
    v117 = sub_1C2F769DC();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *&v145 = v119;
      *v118 = 136315138;
      v120 = *(v38 + 24);
      v121 = *(v38 + 32);

      v122 = sub_1C2EFAB28(v120, v121, &v145);

      *(v118 + 4) = v122;
      v52 = 0x1E819F000;
      _os_log_impl(&dword_1C2EF2000, v116, v117, "Didn't create interactionController for call %s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v119);
      MEMORY[0x1C6929E80](v119, -1, -1);
      MEMORY[0x1C6929E80](v118, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v98 = v95;
    v99 = v96;

    v100 = v76;
  }

  v144.receiver = v64;
  v144.super_class = v139;
  v101 = objc_msgSendSuper2(&v144, *(v52 + 4056));
  sub_1C2EF6AA4(0);
  v139 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_notificationCenter;
  v102 = *&v101[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_notificationCenter];
  v103 = *MEMORY[0x1E69D8F10];
  v104 = v133;
  sub_1C2F76A8C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v131 = sub_1C2EF7384(&qword_1EDEBC500, MEMORY[0x1E6969F20]);
  v105 = v135;
  sub_1C2F7631C();

  v106 = *(v134 + 8);
  v106(v104, v105);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076F60, &unk_1C2F78BE0);
  sub_1C2EF7414(&unk_1EDEBC530, &unk_1EC076F60, &unk_1C2F78BE0);
  sub_1C2F7621C();
  swift_endAccess();

  v107 = *(v139 + v101);
  v108 = *MEMORY[0x1E69D8E08];
  sub_1C2F76A8C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C2F7631C();

  v106(v104, v105);
  swift_beginAccess();
  sub_1C2F7621C();
  swift_endAccess();

  sub_1C2EF745C();
  if ((v141 & 1) == 0)
  {
    sub_1C2EF6A3C(v150, &v145, &qword_1EC075DE0, &qword_1C2F78BD8);
    v111 = *(&v146 + 1);
    if (*(&v146 + 1))
    {
      v112 = v147;
      __swift_project_boxed_opaque_existential_1(&v145, *(&v146 + 1));
      (*(v112 + 40))(v111, v112);
      __swift_destroy_boxed_opaque_existential_1Tm(&v145);
    }

    else
    {
      sub_1C2F0A8D8(&v145, &qword_1EC075DE0, &qword_1C2F78BD8);
    }

    sub_1C2EF6A3C(v150, &v145, &qword_1EC075DE0, &qword_1C2F78BD8);
    v123 = *(&v146 + 1);
    if (*(&v146 + 1))
    {
      v124 = v147;
      __swift_project_boxed_opaque_existential_1(&v145, *(&v146 + 1));
      (*(v124 + 64))(v101, &protocol witness table for CallTranslationService, v123, v124);

      goto LABEL_46;
    }

LABEL_47:

    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    sub_1C2F0A8D8(v150, &qword_1EC075DE0, &qword_1C2F78BD8);
    sub_1C2F0A8D8(&v145, &qword_1EC075DE0, &qword_1C2F78BD8);
    goto LABEL_48;
  }

  sub_1C2EF6A3C(v150, &v145, &qword_1EC075DE0, &qword_1C2F78BD8);
  v109 = *(&v146 + 1);
  if (!*(&v146 + 1))
  {
    goto LABEL_47;
  }

  v110 = v147;
  __swift_project_boxed_opaque_existential_1(&v145, *(&v146 + 1));
  (*(v110 + 48))(v109, v110);

LABEL_46:

  __swift_destroy_boxed_opaque_existential_1Tm(v148);
  sub_1C2F0A8D8(v150, &qword_1EC075DE0, &qword_1C2F78BD8);
  __swift_destroy_boxed_opaque_existential_1Tm(&v145);
LABEL_48:
  __swift_destroy_boxed_opaque_existential_1Tm(v149);
  return v101;
}

uint64_t sub_1C2EF59B8()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EF5A14(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _s20CommunicationsUICore20LanguageAssetManagerCACycfC_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v23 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = sub_1C2F75C8C();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  sub_1C2F75BFC();
  v14(v10, 0, 1, v13);
  sub_1C2EF5C98(v12, v7);
  sub_1C2EF5C98(v10, v4);
  v15 = sub_1C2F75B5C();
  v16 = type metadata accessor for LanguageSelectionViewModel(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(9, v7, v4, MEMORY[0x1E69E7CC0], v15, 0);
  sub_1C2F0A8D8(v10, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2F0A8D8(v12, &unk_1EC076A90, &qword_1C2F78FF0);
  v20 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v25 = v16;
  v26 = &off_1F42B5598;
  *&v24 = v19;
  type metadata accessor for LanguageAssetManager();
  v21 = swift_allocObject();
  *(v21 + 56) = v20;
  sub_1C2EF6918(&v24, v21 + 16);
  return v21;
}

uint64_t sub_1C2EF5C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2EF5D28(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v76 = a6;
  v81 = a5;
  v12 = sub_1C2F75C8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x1EEE9AC00])();
  v72 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v88 = v70 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v71 = v70 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v74 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v75 = v70 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v73 = v70 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v80 = v70 - v28;
  v29 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  *(v7 + 24) = v29;
  *(v7 + 32) = 0;
  v30 = *(v13 + 56);
  v30(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateTo, 1, 1, v12);
  v90 = v12;
  v31 = v12;
  v32 = a4;
  v82 = v30;
  v83 = v13 + 56;
  v30(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentSelected, 1, 1, v31);
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap) = MEMORY[0x1E69E7CC8];
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observer) = 0;
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_initialUpdateTask) = 0;
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observationTask) = 0;
  sub_1C2F75DDC();
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_taskHint) = a1;
  v33 = *(a4 + 16);
  v89 = v13;
  v78 = a2;
  v79 = v7;
  v77 = a3;
  if (v33)
  {
    v97 = v29;
    sub_1C2EF671C(0, v33, 0);
    v34 = v97;
    v35 = v13 + 16;
    v86 = *(v13 + 16);
    v36 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v70[1] = v32;
    v85 = v36;
    v37 = v32 + v36;
    v84 = (v13 + 8);
    v38 = *(v13 + 72);
    v87 = v35;
    v39 = (v35 + 16);
    v40 = v90;
    v41 = v71;
    do
    {
      v42 = v88;
      v86(v88, v37, v40);
      v95 = sub_1C2F75B0C();
      v96 = v43;
      v93 = 45;
      v94 = 0xE100000000000000;
      v91 = 95;
      v92 = 0xE100000000000000;
      sub_1C2EF66C8();
      sub_1C2F76AFC();

      v40 = v90;
      sub_1C2F75AFC();
      (*v84)(v42, v40);
      v97 = v34;
      v45 = *(v34 + 16);
      v44 = *(v34 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1C2EF671C(v44 > 1, v45 + 1, 1);
        v40 = v90;
        v34 = v97;
      }

      *(v34 + 16) = v45 + 1;
      (*v39)(v34 + v85 + v45 * v38, v41, v40);
      v37 += v38;
      --v33;
    }

    while (v33);

    a2 = v78;
    v7 = v79;
    a3 = v77;
    v13 = v89;
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
    v40 = v90;
  }

  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_suggestedLocales) = v34;
  v46 = v73;
  sub_1C2EF6A3C(a2, v73, &unk_1EC076A90, &qword_1C2F78FF0);
  v47 = *(v13 + 48);
  v48 = 1;
  if (v47(v46, 1, v40) != 1)
  {
    v50 = v88;
    v49 = v89;
    (*(v89 + 32))(v88, v46, v40);
    v95 = sub_1C2F75B0C();
    v96 = v51;
    v93 = 45;
    v94 = 0xE100000000000000;
    v91 = 95;
    v92 = 0xE100000000000000;
    sub_1C2EF66C8();
    sub_1C2F76AFC();

    v40 = v90;
    sub_1C2F75AFC();
    (*(v49 + 8))(v50, v40);
    v48 = 0;
  }

  v52 = v40;
  v53 = 1;
  v54 = v80;
  v82(v80, v48, 1, v52);
  sub_1C2F09460(v54, v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_defaultTranslateToLocale, &unk_1EC076A90, &qword_1C2F78FF0);
  v55 = v74;
  sub_1C2EF6A3C(a3, v74, &unk_1EC076A90, &qword_1C2F78FF0);
  v56 = v47(v55, 1, v52);
  v57 = v75;
  if (v56 != 1)
  {
    v59 = v88;
    v58 = v89;
    (*(v89 + 32))(v88, v55, v52);
    v95 = sub_1C2F75B0C();
    v96 = v60;
    v93 = 45;
    v94 = 0xE100000000000000;
    v91 = 95;
    v92 = 0xE100000000000000;
    sub_1C2EF66C8();
    sub_1C2F76AFC();

    sub_1C2F75AFC();
    (*(v58 + 8))(v59, v52);
    v53 = 0;
  }

  v82(v57, v53, 1, v52);
  sub_1C2F09460(v57, v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateToLocale, &unk_1EC076A90, &qword_1C2F78FF0);
  v61 = v81;
  v62 = *(v81 + 16);
  if (v62)
  {
    v97 = MEMORY[0x1E69E7CC0];
    sub_1C2EF671C(0, v62, 0);
    v63 = v97;
    sub_1C2EF66C8();
    v64 = (v61 + 40);
    v65 = v72;
    do
    {
      v66 = *v64;
      v95 = *(v64 - 1);
      v96 = v66;
      v93 = 45;
      v94 = 0xE100000000000000;
      v91 = 95;
      v92 = 0xE100000000000000;

      sub_1C2F76AFC();
      sub_1C2F75AFC();

      v97 = v63;
      v68 = *(v63 + 16);
      v67 = *(v63 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_1C2EF671C(v67 > 1, v68 + 1, 1);
        v65 = v72;
        v63 = v97;
      }

      *(v63 + 16) = v68 + 1;
      (*(v89 + 32))(v63 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v68, v65, v90);
      v64 += 2;
      --v62;
    }

    while (v62);

    sub_1C2F0A8D8(v77, &unk_1EC076A90, &qword_1C2F78FF0);
    sub_1C2F0A8D8(v78, &unk_1EC076A90, &qword_1C2F78FF0);
    v7 = v79;
  }

  else
  {

    sub_1C2F0A8D8(a3, &unk_1EC076A90, &qword_1C2F78FF0);
    sub_1C2F0A8D8(a2, &unk_1EC076A90, &qword_1C2F78FF0);
    v63 = MEMORY[0x1E69E7CC0];
  }

  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_preferredLanguages) = v63;
  *(v7 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_useDedicatedMachPort) = v76 & 1;
  return v7;
}

unint64_t sub_1C2EF66C8()
{
  result = qword_1EDEBC540;
  if (!qword_1EDEBC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBC540);
  }

  return result;
}

size_t sub_1C2EF671C(size_t a1, int64_t a2, char a3)
{
  result = sub_1C2EF673C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C2EF673C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E30, &qword_1C2F79C10);
  v10 = *(sub_1C2F75C8C() - 8);
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
  v15 = *(sub_1C2F75C8C() - 8);
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

uint64_t sub_1C2EF6918(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C2EF6978()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 28) = 0;
  *(v0 + 32) = 0x1000000000000096;
  *(v0 + 40) = 0x80000001C2F7E410;
  *(v0 + 48) = 0xD00000000000008ELL;
  *(v0 + 56) = 0x80000001C2F7E4B0;
  *(v0 + 64) = 2;
  *(v0 + 68) = 256;
  *(v0 + 72) = 0xD00000000000007ELL;
  *(v0 + 80) = 0x80000001C2F7E540;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0760C8, &qword_1C2F79038);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_1C2F7626C();
  return v0;
}

uint64_t sub_1C2EF6A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C2EF6AA4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D08, &qword_1C2F78BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - v6;
  v8 = sub_1C2F75C8C();
  v64 = *(v8 - 8);
  v9 = *(v64 + 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C2F760EC();
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v55 - v17;
  if (a1)
  {
    v63 = v8;
    v19 = a1;
    goto LABEL_3;
  }

  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v19 = [Strong translationSession];

    if (v19)
    {
      v63 = v8;
LABEL_3:
      v20 = a1;
      v21 = [v19 translationState];
      v22 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
      LOBYTE(v66) = v21 - 1 < 3;
      sub_1C2F7627C();
      if (v21 == 2)
      {
        v59 = 2;
        v61 = v2;
        v62 = v12;
        v60 = v7;
        [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
        sub_1C2F760CC();
        v23 = TUBundle();
        if (v23)
        {
          v24 = v23;
          v25 = [v19 localLocale];
          sub_1C2F75B9C();

          sub_1C2F75B0C();
          v26 = v63;
          v57 = *(v64 + 1);
          v57(v11, v63);
          v64 = "lservicesd.FaceTimeProvider";
          v55 = sub_1C2F760DC();
          v58 = v27;

          v28 = v18;
          v29 = v62;
          v65 = *(v65 + 8);
          (v65)(v28, v62);
          [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
          sub_1C2F760CC();
          v30 = TUBundle();
          if (v30)
          {
            v31 = v30;
            v56 = v19;
            v32 = [v19 remoteLocale];
            sub_1C2F75B9C();

            sub_1C2F75B0C();
            v57(v11, v26);
            v33 = sub_1C2F760DC();
            v35 = v34;

            (v65)(v16, v29);
            if (v58)
            {
              v7 = v60;
              v2 = v61;
              v21 = v59;
              if (v35)
              {
                v36 = *(v61 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject);
                v66 = 0x1000001869FLL;
                v67 = v55;
                v68 = v58;
                v69 = v33;
                v70 = v35;
                sub_1C2F7627C();
                sub_1C2F0A6B4(v66, v67, v68);
              }

              else
              {
              }

              v19 = v56;
            }

            else
            {

              v7 = v60;
              v2 = v61;
              v19 = v56;
              v21 = v59;
            }

            goto LABEL_20;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_20:
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v43 = sub_1C2F761FC();
      __swift_project_value_buffer(v43, qword_1EDEBC5D8);
      v44 = sub_1C2F761DC();
      v45 = sub_1C2F769EC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = v19;
        v47 = swift_slowAlloc();
        *v47 = 67109120;
        *(v47 + 4) = v21;
        _os_log_impl(&dword_1C2EF2000, v44, v45, "updateTranslationState: %d", v47, 8u);
        v48 = v47;
        v19 = v46;
        MEMORY[0x1C6929E80](v48, -1, -1);
      }

      if (v21 == 3)
      {
        sub_1C2F011A0();
        v49 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_languagePairSubject);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
        v51 = *(v50 + 48);
        v52 = v19;
        v53 = [v19 localLocale];
        sub_1C2F75B9C();

        v54 = [v52 remoteLocale];
        sub_1C2F75B9C();

        (*(*(v50 - 8) + 56))(v7, 0, 1, v50);
        sub_1C2F7627C();

        sub_1C2F0A8D8(v7, &qword_1EC075D08, &qword_1C2F78BA0);
      }

      else
      {
        sub_1C2EF724C();
      }

      return;
    }
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v38 = sub_1C2F761FC();
  __swift_project_value_buffer(v38, qword_1EDEBC5D8);
  v39 = sub_1C2F761DC();
  v40 = sub_1C2F769EC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1C2EF2000, v39, v40, "updateTranslationState no session", v41, 2u);
    MEMORY[0x1C6929E80](v41, -1, -1);
  }

  v42 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
  LOBYTE(v66) = 0;
  sub_1C2F7627C();
  sub_1C2EF724C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C2EF724C()
{
  v1 = v0;
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBC5D8);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C2EF2000, v3, v4, "stopCaptionClients", v5, 2u);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions);
  *(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions) = 0;
  if (v6)
  {
    sub_1C2F31844();
  }

  v7 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions);
  *(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions) = 0;
  if (v7)
  {
    sub_1C2F31844();
  }
}

uint64_t sub_1C2EF7384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2EF73CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2EF7414(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C2EF745C()
{
  v2 = *(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_conversationObserver) + OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_activeParticipentUpdateSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D18, &qword_1C2F78BA8);
  sub_1C2EF7414(&unk_1EDEBC578, &qword_1EC075D18, &qword_1C2F78BA8);
  sub_1C2F762AC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC0760B0, &qword_1C2F79030);
  sub_1C2EF7414(&unk_1EDEBC588, &unk_1EC0760B0, &qword_1C2F79030);
  sub_1C2F7631C();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076F60, &unk_1C2F78BE0);
  sub_1C2EF7414(&unk_1EDEBC530, &unk_1EC076F60, &unk_1C2F78BE0);
  sub_1C2F7621C();
  swift_endAccess();
}

uint64_t CallTranslationService.availableRemoteLanguage(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1C2F75C8C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_1C2F7688C();
  v3[8] = sub_1C2F7687C();
  v8 = sub_1C2F7684C();
  v3[9] = v8;
  v3[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C2EF7734, v8, v7);
}

uint64_t sub_1C2EF7734()
{
  v28 = v0;
  if (_TUIsInternalInstall() && (v1 = [objc_opt_self() tu_defaults], v2 = sub_1C2F766AC(), v3 = objc_msgSend(v1, sel_stringForKey_, v2), v2, v1, v3))
  {
    v4 = v0[8];

    v5 = sub_1C2F766CC();
    v7 = v6;

    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C2F761FC();
    __swift_project_value_buffer(v8, qword_1EDEBC5D8);

    v9 = sub_1C2F761DC();
    v10 = sub_1C2F769EC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1C2EFAB28(v5, v7, &v27);
      _os_log_impl(&dword_1C2EF2000, v9, v10, "User defaults set to locale identifier %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1C6929E80](v12, -1, -1);
      MEMORY[0x1C6929E80](v11, -1, -1);
    }

    v13 = v0[2];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
    v15 = *(v14 + 48);
    sub_1C2F75AFC();
    v16 = *MEMORY[0x1E6982BD0];
    v17 = sub_1C2F75E3C();
    (*(*(v17 - 8) + 104))(v13 + v15, v16, v17);
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
    v18 = v0[7];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[7];
    sub_1C2F75BFC();
    v22 = swift_task_alloc();
    v0[11] = v22;
    *v22 = v0;
    v22[1] = sub_1C2EF8E20;
    v23 = v0[7];
    v24 = v0[3];
    v25 = v0[4];
    v26 = v0[2];

    return sub_1C2EF7A84(v26, v24, v23);
  }
}

uint64_t sub_1C2EF7A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076020, &qword_1C2F78FD8) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v6 = sub_1C2F75B3C();
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076028, &unk_1C2F78FE0);
  v4[18] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v12 = sub_1C2F75C6C();
  v4[28] = v12;
  v13 = *(v12 - 8);
  v4[29] = v13;
  v14 = *(v13 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v16 = sub_1C2F75C8C();
  v4[36] = v16;
  v17 = *(v16 - 8);
  v4[37] = v17;
  v18 = *(v17 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076040, &qword_1C2F78FF8) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v20 = sub_1C2F7612C();
  v4[44] = v20;
  v21 = *(v20 - 8);
  v4[45] = v21;
  v22 = *(v21 + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  sub_1C2F7688C();
  v4[48] = sub_1C2F7687C();
  v24 = sub_1C2F7684C();
  v4[49] = v24;
  v4[50] = v23;

  return MEMORY[0x1EEE6DFA0](sub_1C2EF7E6C, v24, v23);
}

uint64_t sub_1C2EF7E6C()
{
  v45 = v0;
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[11];
  sub_1C2F7614C();
  (*(v4 + 104))(v2, *MEMORY[0x1E696ED80], v3);
  sub_1C2EF7384(&unk_1EDEBC5C0, MEMORY[0x1E696EDA8]);
  sub_1C2F767BC();
  sub_1C2F767BC();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v0[8] != v0[9])
  {
    v10 = v0[48];
    v11 = v0[10];

    goto LABEL_9;
  }

  v7 = v0[11];
  sub_1C2F7615C();
  v8 = sub_1C2F766AC();

  v9 = PNCopyBestGuessCountryCodeForNumber();

  if (v9)
  {
    objc_opt_self();
    v29 = v0;
    if (!swift_dynamicCastObjCClass())
    {
      v13 = v0[48];

      v0 = v29;
      goto LABEL_8;
    }

    v43 = 0;
    v44 = 0;
    sub_1C2F766BC();
  }

  v12 = v0[48];
LABEL_8:

  v11 = v0[10];
LABEL_9:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v16 = v0[46];
  v15 = v0[47];
  v18 = v0[42];
  v17 = v0[43];
  v19 = v0[40];
  v20 = v0[41];
  v22 = v0[38];
  v21 = v0[39];
  v24 = v0[34];
  v23 = v0[35];
  v27 = v0[33];
  v28 = v0[32];
  v30 = v0[31];
  v31 = v0[30];
  v32 = v0[27];
  v33 = v0[26];
  v34 = v0[25];
  v35 = v0[24];
  v36 = v0[23];
  v37 = v0[22];
  v38 = v0[21];
  v39 = v0[20];
  v40 = v0[19];
  v41 = v0[17];
  v42 = v0[14];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1C2EF8E20()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 80);
  v7 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C2EF8FA4, v7, v6);
}

uint64_t sub_1C2EF8FA4()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

void *sub_1C2EF9024(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20CommunicationsUICore19CallScreeningStatusO(uint64_t a1)
{
  v1 = *(a1 + 8);
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

void sub_1C2EF9088()
{
  sub_1C2F7599C();
  if (!v16)
  {
    sub_1C2F0A8D8(v15, &qword_1EC075D38, &qword_1C2F78BB0);
    return;
  }

  sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v0 = [v14 uniqueProxyIdentifier];
  v1 = sub_1C2F766CC();
  v3 = v2;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call);
    v6 = Strong;

    if (v5)
    {
      v8 = *(v5 + 24);
      v7 = *(v5 + 32);

      if (v1 == v8 && v3 == v7)
      {
      }

      else
      {
        v10 = sub_1C2F76EFC();

        if ((v10 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = [v14 translationSession];
        sub_1C2F0A0F8(v13);
      }

      goto LABEL_16;
    }
  }

LABEL_16:
}

uint64_t LanguageAssetManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
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

uint64_t LanguageSelectionViewModel.__deallocating_deinit()
{
  LanguageSelectionViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t LanguageSelectionViewModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateTo, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentSelected, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_defaultTranslateToLocale, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2F0A8D8(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateToLocale, &unk_1EC076A90, &qword_1C2F78FF0);
  v3 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_suggestedLocales);

  v4 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_preferredLanguages);

  v5 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap);

  v6 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_initialUpdateTask);

  v7 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observationTask);

  v8 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel___observationRegistrar;
  v9 = sub_1C2F75DEC();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t sub_1C2EF9628()
{
  v1 = v0[2];

  v2 = v0[5];
  v3 = v0[7];

  v4 = v0[10];
  v5 = v0[12];

  v6 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_1C2EF9698(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t static FTMenuItem.screenSharingRow(isSessionActive:rowAction:stopAction:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v85 = a5;
  v82 = a2;
  v83 = a4;
  v81 = a1;
  v5 = sub_1C2F75AEC();
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v88 = (&v76 - v12);
  v13 = sub_1C2F75C8C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1C2F7669C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v76 - v21;
  sub_1C2F7663C();
  v23 = v16[2];
  v23(v20, v22, v15);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = objc_opt_self();
  v26 = [v25 bundleForClass_];
  sub_1C2F75BFC();
  v80 = sub_1C2F766EC();
  v77 = v27;
  v28 = v16[1];
  v28(v22, v15);
  sub_1C2F7663C();
  v23(v20, v22, v15);
  v29 = [v25 bundleForClass_];
  sub_1C2F75BFC();
  v30 = sub_1C2F766EC();
  v32 = v31;
  v28(v22, v15);
  v94 = v30;
  v95 = v32;
  sub_1C2EF66C8();
  v86 = sub_1C2F763AC();
  v87 = v33;
  v35 = v34;
  v79 = v36;
  v37 = v36 & 1;
  if (qword_1EDEBCF88 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDEBCF90;
  v39 = sub_1C2F7647C();
  v40 = v88;
  *v88 = v39;
  v41 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v42 = *(*(v41 - 8) + 56);
  v42(v40, 0, 1, v41);
  v43 = v89;
  sub_1C2F75ADC();
  v44 = type metadata accessor for FTMenuItem(0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  v48 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v48 = 0;
  v48[1] = 0;
  v49 = v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  v76 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v42((v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v41);
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v50 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v50 = 0;
  v50[1] = 0;
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v51 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v51 = 0;
  v51[1] = 0;
  v52 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v52[1] = 0;
  v52[2] = 0;
  *v52 = 0;
  sub_1C2F75DDC();
  (*(v90 + 16))(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v43, v91);
  v53 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v54 = v77;
  *v53 = v80;
  v53[1] = v54;
  v55 = *v49;
  v56 = *(v49 + 8);
  v57 = *(v49 + 16);
  v58 = *(v49 + 24);

  v59 = v86;
  v60 = v87;
  sub_1C2F4F434(v86, v87, v37);
  sub_1C2F4F468(v55, v56, v57, v58);
  *v49 = v59;
  *(v49 + 8) = v60;
  *(v49 + 16) = v37;
  *(v49 + 24) = v35;
  v80 = v35;
  v61 = v88;
  v62 = v78;
  sub_1C2F4F4BC(v88, v78);
  v63 = v76;
  sub_1C2F4F548(v47 + v76);
  sub_1C2F4F72C(v62, v47 + v63);
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = v81 & 1;
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 0;
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v64 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction);
  v66 = v84;
  v65 = v85;
  *v64 = v82;
  v64[1] = v66;
  v67 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  v68 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v67 = v83;
  v67[1] = v65;
  swift_beginAccess();
  if (v68[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v76 - 3) = 0;
    *(&v76 - 2) = 0;
    *(&v76 - 4) = v47;
    v93 = v47;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v68 = 0;
    v68[1] = 0;
  }

  v70 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  v72 = v90;
  v71 = v91;
  v73 = v89;
  if (*(v47 + v70))
  {
    v74 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v74);
    *(&v76 - 2) = v47;
    *(&v76 - 1) = 0;
    v92 = v47;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v86, v87, v79 & 1);

  (*(v72 + 8))(v73, v71);
  sub_1C2F4F548(v61);
  return v47;
}

uint64_t sub_1C2EF9FDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C2F48914(v4);
}

uint64_t sub_1C2EFA0A0()
{
  swift_getKeyPath();
  sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
  sub_1C2F75D9C();
}

uint64_t sub_1C2EFA170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2EFA1E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a2;
  v6[1] = a3;
}

uint64_t static FTMenuItem.sharePlayRow(isSessionActive:rowAction:stopAction:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v85 = a5;
  v82 = a2;
  v83 = a4;
  v81 = a1;
  v5 = sub_1C2F75AEC();
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C80, &qword_1C2F7CDB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v78 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v88 = (&v76 - v12);
  v13 = sub_1C2F75C8C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1C2F7669C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v76 - v21;
  sub_1C2F7663C();
  v23 = v16[2];
  v23(v20, v22, v15);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = objc_opt_self();
  v26 = [v25 bundleForClass_];
  sub_1C2F75BFC();
  v80 = sub_1C2F766EC();
  v77 = v27;
  v28 = v16[1];
  v28(v22, v15);
  sub_1C2F7663C();
  v23(v20, v22, v15);
  v29 = [v25 bundleForClass_];
  sub_1C2F75BFC();
  v30 = sub_1C2F766EC();
  v32 = v31;
  v28(v22, v15);
  v94 = v30;
  v95 = v32;
  sub_1C2EF66C8();
  v86 = sub_1C2F763AC();
  v87 = v33;
  v35 = v34;
  v79 = v36;
  v37 = v36 & 1;
  if (qword_1EDEBCF88 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDEBCF90;
  v39 = sub_1C2F7647C();
  v40 = v88;
  *v88 = v39;
  v41 = type metadata accessor for FTMenuItem.IconType(0);
  swift_storeEnumTagMultiPayload();
  v42 = *(*(v41 - 8) + 56);
  v42(v40, 0, 1, v41);
  v43 = v89;
  sub_1C2F75ADC();
  v44 = type metadata accessor for FTMenuItem(0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  v48 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge);
  *v48 = 0;
  v48[1] = 0;
  v49 = v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  v76 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon;
  v42((v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon), 1, 1, v41);
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__wantsToDismiss) = 0;
  v50 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v50 = 0;
  v50[1] = 0;
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint) = 0;
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isPresentingSecondaryView) = 0;
  v51 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider);
  *v51 = 0;
  v51[1] = 0;
  v52 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView);
  v52[1] = 0;
  v52[2] = 0;
  *v52 = 0;
  sub_1C2F75DDC();
  (*(v90 + 16))(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id, v43, v91);
  v53 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title);
  v54 = v77;
  *v53 = v80;
  v53[1] = v54;
  v55 = *v49;
  v56 = *(v49 + 8);
  v57 = *(v49 + 16);
  v58 = *(v49 + 24);

  v59 = v86;
  v60 = v87;
  sub_1C2F4F434(v86, v87, v37);
  sub_1C2F4F468(v55, v56, v57, v58);
  *v49 = v59;
  *(v49 + 8) = v60;
  *(v49 + 16) = v37;
  *(v49 + 24) = v35;
  v80 = v35;
  v61 = v88;
  v62 = v78;
  sub_1C2F4F4BC(v88, v78);
  v63 = v76;
  sub_1C2F4F548(v47 + v76);
  sub_1C2F4F72C(v62, v47 + v63);
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_bottomDivider) = 0;
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__isSessionActive) = v81 & 1;
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__dismissOnTap) = 0;
  *(v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_performActionAfterDismiss) = 0;
  v64 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction);
  v66 = v84;
  v65 = v85;
  *v64 = v82;
  v64[1] = v66;
  v67 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction);
  v68 = (v47 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle);
  *v67 = v83;
  v67[1] = v65;
  swift_beginAccess();
  if (v68[1])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v76 - 3) = 0;
    *(&v76 - 2) = 0;
    *(&v76 - 4) = v47;
    v93 = v47;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);

    sub_1C2F75D9C();
  }

  else
  {
    *v68 = 0;
    v68[1] = 0;
  }

  v70 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint;
  swift_beginAccess();
  v72 = v90;
  v71 = v91;
  v73 = v89;
  if (*(v47 + v70))
  {
    v74 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v74);
    *(&v76 - 2) = v47;
    *(&v76 - 1) = 0;
    v92 = v47;
    sub_1C2EFA170(&qword_1EDEBD520, type metadata accessor for FTMenuItem);
    sub_1C2F75D9C();
  }

  sub_1C2F4F4AC(v86, v87, v79 & 1);

  (*(v72 + 8))(v73, v71);
  sub_1C2F4F548(v61);
  return v47;
}

uint64_t sub_1C2EFAB28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C2EFABF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C2EFAD00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1C2EFABF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C2F0808C(a5, a6);
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
    result = sub_1C2F76CDC();
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

uint64_t sub_1C2EFAD00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *FTMenuItemRegistry.container(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___CCFTMenuItemRegistry_menuItemProviders;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_1C2EFAEC0(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for FTMenuItemProviderContainer();
    v10 = swift_allocObject();
    v10[1] = 0u;
    v10[2] = 0u;
    v10[3] = 0u;
    v10[4] = 0u;
    v10[5] = 0u;
    v10[6] = 0u;
    v10[7] = 0u;
    v10[8] = 0u;
    v10[9] = 0u;
    v10[10] = 0u;
    v10[11] = 0u;
    v10[12] = 0u;
    v10[13] = 0u;
    v10[14] = 0u;
    v10[15] = 0u;
    v10[16] = 0u;
    v10[17] = 0u;
    v10[18] = 0u;
    v10[19] = 0u;
    v10[20] = 0u;
    v10[21] = 0u;
    v10[22] = 0u;
    v10[23] = 0u;
    swift_beginAccess();

    v11 = *(v3 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_1C2EFB014(v10, a1, a2, isUniquelyReferenced_nonNull_native, &qword_1EC076FC8, &qword_1C2F7D600);

    *(v3 + v6) = v14;
    swift_endAccess();
  }

  return v10;
}

unint64_t sub_1C2EFAEC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  v6 = sub_1C2F76FDC();

  return sub_1C2EFAF38(a1, a2, v6);
}

unint64_t sub_1C2EFAF38(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C2F76EFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C2EFB014(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C2EFAEC0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1C2F69D58(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_1C2EFAEC0(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1C2F76F2C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1C2F6A94C(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1C2EFB1B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FB8, &qword_1C2F7D4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2EFB224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FB8, &qword_1C2F7D4F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CallScreeningStatus.description.getter()
{
  v1 = v0[1];
  switch(v1)
  {
    case 1:
      return 0x6572635320746F4ELL;
    case 3:
      return 0x6E696E6565726353;
    case 2:
      return 0x696F56206576694CLL;
  }

  v3 = *v0;
  MEMORY[0x1C6928D30](0x64656E6565726353, 0xEA00000000002820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077028, &qword_1C2F7D7F8);
  sub_1C2F76D3C();
  MEMORY[0x1C6928D30](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall FTMenuItemRegistry.clear(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_1EDEBC5F8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EDEBC600);

  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C2EFAB28(countAndFlagsBits, object, &v8);
    _os_log_impl(&dword_1C2EF2000, v4, v5, "Clear custom item providers for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  swift_beginAccess();

  sub_1C2EFB550(0, countAndFlagsBits, object);
  swift_endAccess();
}

uint64_t sub_1C2EFB550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1C2EFB014(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1EC076FC8, &qword_1C2F7D600);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1C2EFAEC0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1C2F6A94C(&qword_1EC076FC8, &qword_1C2F7D600);
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1C2EFB8C4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1C2EFB668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076FB8, &qword_1C2F7D4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FTMenuItemProviderContainer.__deallocating_deinit()
{
  FTMenuItemProviderContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t FTMenuItem.__deallocating_deinit()
{
  FTMenuItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t FTMenuItem.deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem_id;
  v2 = sub_1C2F75AEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__title + 8);

  v4 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__titleBadge + 8);

  sub_1C2F4F468(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle + 8), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle + 16), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__subtitle + 24));
  sub_1C2F4F548(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__icon);
  v5 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__rowAction + 8);

  v6 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopAction + 8);

  v7 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTitle + 8);

  v8 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__stopTint);

  v9 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider + 8);
  sub_1C2EFDE10(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__primaryViewProvider));
  v10 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView + 16);
  sub_1C2F2039C(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem__secondaryView + 8));
  v11 = OBJC_IVAR____TtC20CommunicationsUICore10FTMenuItem___observationRegistrar;
  v12 = sub_1C2F75DEC();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  return v0;
}

uint64_t sub_1C2EFB8C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C2F76B5C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C2F76F9C();

      sub_1C2F7673C();
      v13 = sub_1C2F76FDC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

id static FTMenuItemRegistry.shared.getter()
{
  if (qword_1EDEBCC50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEBCC58;

  return v1;
}

_DWORD *sub_1C2EFBAF4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_1C2EFBB44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C2EFBB54()
{
  v1 = sub_1C2F75C8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1C2EFBC5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFBC94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFBD14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFBD4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFBD84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2EFBDC8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076358, &unk_1C2F79308);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C2EFBDF8()
{
  v1 = sub_1C2F761FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2EFBECC()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceActivityAttributes(0);
  v25 = *(*(v2 - 1) + 80);
  v3 = (v25 + 40) & ~v25;
  v4 = *(*(v2 - 1) + 64);
  v24 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v5 = *(v24 - 1);
  v21 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v22 = *(v5 + 80);
  v23 = *(v5 + 64);
  v6 = *(v1 + 32);

  v7 = v1 + v3;
  v8 = sub_1C2F759EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v1 + v3, v8);
  v10(v1 + v3 + v2[5], v8);
  v11 = v2[8];
  v12 = sub_1C2F75A5C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v7 + v11, 1, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  v14 = *(v7 + v2[9] + 8);

  v15 = v1 + v21;
  v16 = *(v9 + 48);
  if (!v16(v1 + v21, 1, v8))
  {
    v10(v15, v8);
  }

  v17 = v24[5];
  if (!v16(v15 + v17, 1, v8))
  {
    v10(v15 + v17, v8);
  }

  v18 = *(v15 + v24[6] + 8);

  v19 = *(v15 + v24[7] + 8);

  return MEMORY[0x1EEE6BDD0](v1, v21 + v23, v25 | v22 | 7);
}

uint64_t sub_1C2EFC194()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for IntelligenceActivityAttributes.ContentState(0);
  v7 = *(*(v6 - 1) + 80);
  v17 = *(*(v6 - 1) + 64);
  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v18 = (v4 + v5 + v7) & ~v7;
  v9 = v0 + v18;
  v10 = sub_1C2F759EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v0 + v18, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v13 = v6[5];
  if (!v12(v9 + v13, 1, v10))
  {
    (*(v11 + 8))(v9 + v13, v10);
  }

  v14 = *(v9 + v6[6] + 8);

  v15 = *(v9 + v6[7] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v18 + v17, v3 | v7 | 7);
}

__n128 sub_1C2EFC3DC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C2EFC430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2F759EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C2EFC558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C2F759EC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C2EFC670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C2EFC748(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076410, &qword_1C2F794E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C2EFC8A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = BlocklistViewModel.knownEntries.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1C2EFC8D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = BlocklistViewModel.unknownEntries.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1C2EFC924()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFC968()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFC9A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C2F1E234(v4);
}

uint64_t sub_1C2EFCA04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C2EFCA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2F75AEC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C2EFCAFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2F75AEC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C2EFCBB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFCC04()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFCC3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2EFCC7C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2EFCCC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFCCFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = DeviceConditions.isSetupAssistantRunning.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C2EFCD3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = DeviceConditions.isInLostMode.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C2EFCD7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2EFCDBC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFCDF8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFCE44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1C2F299FC(v2, v3);
}

unint64_t sub_1C2EFCEB8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6D6574737973;
  }

  *v0;
  return result;
}

uint64_t sub_1C2EFCEF4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1C2EFCF30()
{
  v1 = 0x74496C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

void *sub_1C2EFCFA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1C2EFCFC0()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFCFF8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD030()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD068()
{
  v1 = sub_1C2F75C8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 44) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 17, v3 | 7);
}

BOOL sub_1C2EFD178@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = BlockUnblockController.canReportSpam.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1C2EFD1D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return BlockUnblockController.unknownContacts.setter(v4);
}

void *sub_1C2EFD204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = BlockUnblockController.areAllUnknownParticipantsBlocked.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C2EFD234()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B18, &qword_1C2F7B978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2EFD2C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD3E8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD454()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFD4A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD4D8()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD510()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2EFD550()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFD594(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1C2F46168(v2, v3);
}

uint64_t sub_1C2EFD684()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFD6E8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD720()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1C2EFD7AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C2EFD7B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD80C()
{
  v1 = sub_1C2F7616C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C2EFD8D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2EFD930()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFD988()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFD9D8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFDA10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFDA58()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFDAD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1C2EFDB18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2EFDB58()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2EFDBB0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C2EFDC00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2EFDC38()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2EFDC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2F75AEC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C2EFDD30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2F75AEC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C2EFDE10(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C2EFDE20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *CallTranslationService.remoteDisplayName.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result displayName];

    v4 = sub_1C2F766CC();
    return v4;
  }

  return result;
}

void *CallTranslationService.isAvailable.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result translationAvailability];

    return (v3 == 3);
  }

  return result;
}

uint64_t CallTranslationService.isShowingRemoteLocale.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isShowingRemoteLocale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CallTranslationService.isShowingRemoteLocale.setter(char a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isShowingRemoteLocale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CallTranslationService.isTranslationStarted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
  sub_1C2F7628C();
  return v3;
}

uint64_t CallTranslationService.isTranslationStartedPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E08, &unk_1C2F7A1C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2F7630C();
  sub_1C2EF7414(&unk_1EDEBC598, &unk_1EC075E08, &unk_1C2F7A1C0);
  v6 = sub_1C2F762AC();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t CallTranslationService.isRemoteTranslationStarted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isRemoteStartedSubject);
  sub_1C2F7628C();
  return v3;
}

uint64_t sub_1C2EFE2F4(void *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v9 = *(v4 + *a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1C2EF7414(a4, a2, a3);
  return sub_1C2F762AC();
}

uint64_t CallTranslationService.transcriptsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075E18, &qword_1C2F78BF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D88, &unk_1C2F78BC0);
  sub_1C2EF7414(&unk_1EDEBC560, &qword_1EC075D88, &unk_1C2F78BC0);
  sub_1C2F762BC();

  sub_1C2EF7414(&unk_1EDEBC5A8, &qword_1EC075E18, &qword_1C2F78BF0);
  v6 = sub_1C2F762AC();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1C2EFE544@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  return sub_1C2F0AAC0(v3, v2, v4);
}

uint64_t CallTranslationService.availableLanguages()()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = sub_1C2F75E3C();
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  v1[18] = v8;
  v9 = *(v8 - 8);
  v1[19] = v9;
  v10 = *(v9 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v11 = sub_1C2F75C8C();
  v1[24] = v11;
  v12 = *(v11 - 8);
  v1[25] = v12;
  v13 = *(v12 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_1C2F7688C();
  v1[29] = sub_1C2F7687C();
  v15 = sub_1C2F7684C();
  v1[30] = v15;
  v1[31] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1C2EFE7C0, v15, v14);
}

uint64_t sub_1C2EFE7C0()
{
  v1 = *(v0 + 224);
  sub_1C2F75BFC();
  v2 = sub_1C2F75B5C();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1C2F08754(0, v3, 0);
    v5 = v55;
    sub_1C2EF66C8();
    v6 = (v2 + 40);
    do
    {
      v7 = *v6;
      *(v0 + 16) = *(v6 - 1);
      *(v0 + 24) = v7;
      *(v0 + 32) = 45;
      *(v0 + 40) = 0xE100000000000000;
      *(v0 + 48) = 95;
      *(v0 + 56) = 0xE100000000000000;
      v8 = sub_1C2F76AFC();
      v56 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v53 = v8;
        v13 = v9;
        sub_1C2F08754((v10 > 1), v11 + 1, 1);
        v9 = v13;
        v8 = v53;
        v5 = v56;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v6 += 2;
      --v3;
    }

    while (v3);

    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v0 + 224);
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  v16 = sub_1C2EFF3DC(sub_1C2F09440, v15, v5);

  v17 = *(v16 + 16);
  v18 = *(v0 + 200);
  if (v17)
  {
    sub_1C2EF671C(0, v17, 0);
    v19 = v4;
    v20 = (v16 + 40);
    do
    {
      v21 = *(v0 + 216);
      v22 = *(v20 - 1);
      v23 = *v20;

      sub_1C2F75AFC();
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1C2EF671C(v24 > 1, v25 + 1, 1);
      }

      v26 = *(v0 + 216);
      v27 = *(v0 + 192);
      *(v19 + 16) = v25 + 1;
      v28 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v29 = *(v18 + 72);
      (*(v18 + 32))(v19 + v28 + v29 * v25, v26, v27);
      v20 += 2;
      --v17;
    }

    while (v17);

    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v29 = *(v18 + 72);
    v28 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v19 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 256) = v28;
  *(v0 + 264) = v29;
  v30 = *(v0 + 224);
  v31 = *(v0 + 192);
  v32 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E30, &qword_1C2F79C10);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C2F78B90;
  v34 = *(v32 + 16);
  *(v0 + 272) = v34;
  *(v0 + 280) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v34(v33 + v28, v30, v31);
  result = sub_1C2F085E8(v19);
  *(v0 + 288) = v33;
  *(v0 + 64) = v4;
  v36 = *(v33 + 16);
  *(v0 + 296) = v36;
  if (v36)
  {
    v37 = *(*(v0 + 88) + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_languageManager);
    *(v0 + 336) = *MEMORY[0x1E6982BD0];
    *(v0 + 304) = v37;
    *(v0 + 312) = 0;
    if (*(v33 + 16))
    {
      v38 = *(v0 + 280);
      (*(v0 + 272))(*(v0 + 208), v33 + *(v0 + 256), *(v0 + 192));
      v39 = swift_task_alloc();
      *(v0 + 320) = v39;
      *v39 = v0;
      v39[1] = sub_1C2EFEC90;
      v40 = *(v0 + 304);
      v41 = *(v0 + 208);

      return sub_1C2F516EC(v41);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v42 = *(v0 + 232);
    v43 = *(v0 + 200);

    v44 = *(v0 + 216);
    v45 = *(v0 + 208);
    v46 = *(v0 + 184);
    v48 = *(v0 + 168);
    v47 = *(v0 + 176);
    v49 = *(v0 + 160);
    v50 = *(v0 + 136);
    v54 = *(v0 + 112);
    (*(v43 + 8))(*(v0 + 224), *(v0 + 192));

    v51 = *(v0 + 8);
    v52 = MEMORY[0x1E69E7CC0];

    return v51(v52);
  }

  return result;
}

uint64_t sub_1C2EFEC90(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = a1;

  v4 = *(v2 + 248);
  v5 = *(v2 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1C2EFEDB8, v5, v4);
}

uint64_t sub_1C2EFEDB8()
{
  result = *(v0 + 328);
  v2 = MEMORY[0x1E69E7CC0];
  v66 = *(result + 16);
  if (v66)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v64 = *(v0 + 328);
    while (v3 < *(result + 16))
    {
      v72 = v4;
      v5 = *(v0 + 336);
      v7 = *(v0 + 144);
      v6 = *(v0 + 152);
      v8 = *(v0 + 128);
      v9 = *(v0 + 136);
      v10 = *(v0 + 120);
      v68 = *(v6 + 72);
      v70 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_1C2EF6A3C(*(v0 + 328) + v70 + v68 * v3, *(v0 + 184), &unk_1EC075E20, &unk_1C2F78C00);
      v11 = *(v7 + 48);
      (*(v8 + 104))(v9, v5, v10);
      LOBYTE(v5) = sub_1C2F75E2C();
      (*(v8 + 8))(v9, v10);
      v12 = *(v0 + 184);
      if (v5)
      {
        sub_1C2F09460(v12, *(v0 + 176), &unk_1EC075E20, &unk_1C2F78C00);
        v4 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 72) = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C2F08734(0, *(v72 + 16) + 1, 1);
          v4 = *(v0 + 72);
        }

        v15 = *(v4 + 16);
        v14 = *(v4 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C2F08734(v14 > 1, v15 + 1, 1);
          v4 = *(v0 + 72);
        }

        v16 = *(v0 + 176);
        *(v4 + 16) = v15 + 1;
        sub_1C2F09460(v16, v4 + v70 + v15 * v68, &unk_1EC075E20, &unk_1C2F78C00);
      }

      else
      {
        sub_1C2F0A8D8(v12, &unk_1EC075E20, &unk_1C2F78C00);
        v4 = v72;
      }

      ++v3;
      result = v64;
      if (v66 == v3)
      {
        v17 = *(v0 + 328);
        v2 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_14:

  v18 = *(v4 + 16);
  if (v18)
  {
    v19 = *(v0 + 152);
    *(v0 + 80) = v2;
    result = sub_1C2F08714(0, v18, 0);
    v20 = 0;
    v59 = v4 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v60 = v18;
    v21 = *(v0 + 80);
    v73 = v4;
    while (v20 < *(v4 + 16))
    {
      v22 = *(v0 + 280);
      v23 = *(v0 + 200);
      v24 = *(v0 + 192);
      v25 = *(v0 + 168);
      v69 = *(v0 + 160);
      v71 = v21;
      v26 = *(v0 + 144);
      v27 = *(v0 + 128);
      v61 = *(v0 + 272);
      v62 = *(v0 + 120);
      v63 = *(v0 + 112);
      v65 = *(v0 + 208);
      v28 = v59 + *(*(v0 + 152) + 72) * v20;
      v29 = *(v26 + 48);
      v67 = *(*(v0 + 96) + 48);
      v61(v25, v28, v24);
      (*(v27 + 16))(v25 + *(v26 + 48), v28 + v29, v62);
      v61(v63, v65, v24);
      sub_1C2F09460(v25, v69, &unk_1EC075E20, &unk_1C2F78C00);
      v30 = *(v26 + 48);
      v21 = v71;
      (*(v23 + 32))(v63 + v67, v69, v24);
      (*(v27 + 8))(v69 + v30, v62);
      *(v0 + 80) = v71;
      v32 = *(v71 + 16);
      v31 = *(v71 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1C2F08714(v31 > 1, v32 + 1, 1);
        v21 = *(v0 + 80);
      }

      v34 = *(v0 + 104);
      v33 = *(v0 + 112);
      ++v20;
      *(v21 + 16) = v32 + 1;
      result = sub_1C2F09460(v33, v21 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32, &unk_1EC076E10, &unk_1C2F79C20);
      v4 = v73;
      if (v60 == v20)
      {

        goto LABEL_22;
      }
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v35 = *(v0 + 296);
  v37 = *(v0 + 200);
  v36 = *(v0 + 208);
  v38 = *(v0 + 192);
  v39 = *(v0 + 312) + 1;
  sub_1C2F084B0(v21);
  v40 = *(v37 + 8);
  result = v40(v36, v38);
  if (v39 == v35)
  {
    v41 = *(v0 + 288);
    v42 = *(v0 + 232);

    v43 = *(v0 + 200) + 8;
    v44 = *(v0 + 216);
    v45 = *(v0 + 208);
    v47 = *(v0 + 176);
    v46 = *(v0 + 184);
    v49 = *(v0 + 160);
    v48 = *(v0 + 168);
    v50 = *(v0 + 136);
    v51 = *(v0 + 112);
    v74 = *(v0 + 64);
    v40(*(v0 + 224), *(v0 + 192));

    v52 = *(v0 + 8);

    return v52(v74);
  }

  else
  {
    v53 = *(v0 + 312) + 1;
    *(v0 + 312) = v53;
    v54 = *(v0 + 288);
    if (v53 >= *(v54 + 16))
    {
LABEL_32:
      __break(1u);
      return result;
    }

    v55 = *(v0 + 280);
    (*(v0 + 272))(*(v0 + 208), v54 + *(v0 + 256) + *(v0 + 264) * v53, *(v0 + 192));
    v56 = swift_task_alloc();
    *(v0 + 320) = v56;
    *v56 = v0;
    v56[1] = sub_1C2EFEC90;
    v57 = *(v0 + 304);
    v58 = *(v0 + 208);

    return sub_1C2F516EC(v58);
  }
}

uint64_t sub_1C2EFF358(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == sub_1C2F75B0C() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1C2F76EFC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1C2EFF3DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1C2F08754(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1C2F08754((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

void CallTranslationService.startTranslation(localLocale:remoteLocale:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C2F75C8C();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - v16;
  v18 = *&v2[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject];
  sub_1C2F7628C();
  if ((aBlock[0] & 1) == 0)
  {
    if (!*&v3[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call] || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v32 = sub_1C2F761FC();
      __swift_project_value_buffer(v32, qword_1EDEBC5D8);
      v21 = sub_1C2F761DC();
      v33 = sub_1C2F769DC();
      if (!os_log_type_enabled(v21, v33))
      {
        goto LABEL_19;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C2EF2000, v21, v33, "Current call is ended", v34, 2u);
      v25 = v34;
LABEL_18:
      MEMORY[0x1C6929E80](v25, -1, -1);
LABEL_19:

      return;
    }

    v58 = Strong;
    v27 = *&v3[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isRemoteStartedSubject];
    sub_1C2F7628C();
    if (aBlock[0])
    {
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v28 = sub_1C2F761FC();
      __swift_project_value_buffer(v28, qword_1EDEBC5D8);
      v29 = sub_1C2F761DC();
      v30 = sub_1C2F769DC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1C2EF2000, v29, v30, "Translation has started in remote", v31, 2u);
        MEMORY[0x1C6929E80](v31, -1, -1);
      }

      return;
    }

    if (v3[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_guardOnLockState] != 1 || (type metadata accessor for DeviceConditions(), inited = swift_initStaticObject(), sub_1C2F25CF4(), sub_1C2F7628C(), , LOBYTE(aBlock[0]) != 1))
    {
      v44 = v58;
      sub_1C2EFFCF0(a1, a2, v58);

      return;
    }

    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = *(v59 + 16);
    v35(v17, a1, v6);
    v35(v15, a2, v6);
    v35(v12, v17, v6);
    v35(v9, v15, v6);
    v36 = v59;
    v37 = *(v59 + 80);
    v38 = (v37 + 24) & ~v37;
    v55 = (v7 + v37 + v38) & ~v37;
    v54 = (v7 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v56;
    v40 = *(v36 + 32);
    v40(v39 + v38, v17, v6);
    v40(v39 + v55, v15, v6);
    v41 = v58;
    *(v39 + v54) = v58;
    v42 = v41;

    if (sub_1C2F25A48())
    {
      aBlock[4] = sub_1C2F094C8;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C2F07C9C;
      aBlock[3] = &block_descriptor;
      v43 = _Block_copy(aBlock);

      SBSRequestPasscodeUnlockUI();
      _Block_release(v43);
    }

    else
    {
      swift_beginAccess();
      v45 = swift_unknownObjectWeakLoadStrong();
      if (!v45)
      {
        v48 = v59;
        if (qword_1EDEBC5D0 != -1)
        {
          swift_once();
        }

        v49 = sub_1C2F761FC();
        __swift_project_value_buffer(v49, qword_1EDEBC5D8);
        v50 = sub_1C2F761DC();
        v51 = sub_1C2F769DC();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_1C2EF2000, v50, v51, "Translation has started because device is still locked.", v52, 2u);
          MEMORY[0x1C6929E80](v52, -1, -1);
        }

        v53 = *(v48 + 8);
        v53(v9, v6);
        v53(v12, v6);
        goto LABEL_29;
      }

      v46 = v45;
      sub_1C2EFFCF0(v12, v9, v42);
    }

    v47 = *(v59 + 8);
    v47(v9, v6);
    v47(v12, v6);
LABEL_29:

    return;
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v19 = sub_1C2F761FC();
  __swift_project_value_buffer(v19, qword_1EDEBC5D8);
  v20 = v3;
  v21 = sub_1C2F761DC();
  v22 = sub_1C2F769EC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    v24 = *&v20[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isRemoteStartedSubject];
    sub_1C2F7628C();
    *(v23 + 4) = LOBYTE(aBlock[0]);

    _os_log_impl(&dword_1C2EF2000, v21, v22, "Translation already started. Remote start: %{BOOL}d", v23, 8u);
    v25 = v23;
    goto LABEL_18;
  }
}

void sub_1C2EFFCF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v124 = a3;
  v125 = a2;
  v6 = sub_1C2F75C8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v116 = &v102[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v102[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = &v102[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v102[-v16];
  v110 = sub_1C2F75C6C();
  v107 = *(v110 - 8);
  v17 = *(v107 + 64);
  v18 = MEMORY[0x1EEE9AC00](v110);
  v105 = &v102[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v102[-v20];
  v111 = sub_1C2F75B3C();
  v121 = *(v111 - 8);
  v22 = *(v121 + 64);
  v23 = MEMORY[0x1EEE9AC00](v111);
  v104 = &v102[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v102[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D08, &qword_1C2F78BA0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v102[-v28];
  v30 = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
  LOBYTE(aBlock[0]) = 1;
  sub_1C2F7627C();
  v31 = *(v4 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_languagePairSubject);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
  v33 = *(v32 + 48);
  v118 = v7;
  v34 = *(v7 + 16);
  v123 = a1;
  v34(v29, a1, v6);
  v122 = v6;
  v112 = v34;
  v109 = v7 + 16;
  v34(&v29[v33], v125, v6);
  (*(*(v32 - 8) + 56))(v29, 0, 1, v32);
  sub_1C2F7627C();
  sub_1C2F0A8D8(v29, &qword_1EC075D08, &qword_1C2F78BA0);
  v119 = v4;
  v117 = *(v4 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_videoCall);
  if (v117)
  {
    v35 = 2;
  }

  else
  {
    v35 = 0;
  }

  if (v117)
  {
    v36 = 1;
  }

  else
  {
    v36 = 3;
  }

  v113 = v36;
  v114 = v35;
  v37 = [v124 provider];
  v38 = [v37 identifier];

  v39 = sub_1C2F766CC();
  v41 = v40;

  if (v39 == 0xD00000000000003BLL && 0x80000001C2F7E3A0 == v41)
  {

    v42 = 3;
  }

  else
  {
    v43 = sub_1C2F76EFC();

    if (v43)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }
  }

  v103 = v42;
  v44 = [v124 remoteParticipantHandles];
  sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
  sub_1C2F0A6F8(&qword_1EC076008, &qword_1EC076000, 0x1E69D8C00);
  v45 = sub_1C2F7697C();

  v46 = sub_1C2F009F8(v45);

  sub_1C2F75C7C();
  v47 = v108;
  sub_1C2F75C0C();
  v48 = *(v107 + 8);
  v49 = v110;
  v48(v21, v110);
  v50 = v121;
  v51 = *(v121 + 48);
  v52 = v111;
  if (v51(v47, 1, v111) == 1)
  {
    sub_1C2F0A8D8(v47, &unk_1EC076030, qword_1C2F7C380);
  }

  else
  {
    v107 = v46;
    v108 = *(v50 + 32);
    (v108)(v120, v47, v52);
    v53 = v105;
    sub_1C2F75C7C();
    v54 = v106;
    sub_1C2F75C0C();
    v48(v53, v49);
    if (v51(v54, 1, v52) == 1)
    {
      (*(v121 + 8))(v120, v52);
      sub_1C2F0A8D8(v54, &unk_1EC076030, qword_1C2F7C380);
      v55 = v116;
      v46 = v107;
      goto LABEL_19;
    }

    v56 = v104;
    (v108)(v104, v54, v52);
    v110 = __swift_project_boxed_opaque_existential_1((v119 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_biomeLanguageController), *(v119 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_biomeLanguageController + 24));
    v57 = v120;
    v58 = sub_1C2F75B1C();
    v60 = v59;
    v61 = sub_1C2F75B1C();
    v63 = v62;
    v64 = off_1F42B47B0[0];
    type metadata accessor for CallTranslationBiomeLanguageController();
    v65 = v58;
    v66 = v107;
    v64(v65, v60, v61, v63, v107, v103);
    v46 = v66;

    v67 = *(v121 + 8);
    v67(v56, v52);
    v67(v57, v52);
  }

  v55 = v116;
LABEL_19:
  v68 = v115;
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v69 = sub_1C2F761FC();
  __swift_project_value_buffer(v69, qword_1EDEBC5D8);
  v70 = v122;
  v71 = v112;
  v112(v68, v123, v122);
  v71(v55, v125, v70);

  v72 = sub_1C2F761DC();
  v73 = sub_1C2F769CC();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    aBlock[0] = v121;
    *v74 = 136315650;
    sub_1C2EF7384(&qword_1EC076AA0, MEMORY[0x1E6969770]);
    v75 = v46;
    LODWORD(v120) = v73;
    v76 = v122;
    v77 = sub_1C2F76EEC();
    v79 = v78;
    v80 = *(v118 + 8);
    v80(v68, v76);
    v81 = sub_1C2EFAB28(v77, v79, aBlock);

    *(v74 + 4) = v81;
    *(v74 + 12) = 2080;
    v82 = sub_1C2F76EEC();
    v84 = v83;
    v80(v55, v76);
    v85 = sub_1C2EFAB28(v82, v84, aBlock);

    *(v74 + 14) = v85;
    *(v74 + 22) = 2080;
    v86 = MEMORY[0x1C6928DD0](v75, MEMORY[0x1E69E6158]);
    v88 = v87;

    v89 = sub_1C2EFAB28(v86, v88, aBlock);

    *(v74 + 24) = v89;
    _os_log_impl(&dword_1C2EF2000, v72, v120, "Start translation %s -> %s, handles: %s", v74, 0x20u);
    v90 = v121;
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v90, -1, -1);
    MEMORY[0x1C6929E80](v74, -1, -1);
  }

  else
  {

    v91 = *(v118 + 8);
    v92 = v55;
    v93 = v122;
    v91(v92, v122);
    v91(v68, v93);
  }

  v94 = v119;
  v95 = objc_allocWithZone(MEMORY[0x1E69D8AC0]);
  v96 = sub_1C2F75B6C();
  v97 = sub_1C2F75B6C();
  v98 = [v95 initWithCall:v124 localLocale:v96 remoteLocale:v97 translationLinks:v113 remoteAudioMode:0 translationMode:v114];

  v99 = *(v94 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_callCenter);
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C2F0A888;
  aBlock[5] = v100;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F02584;
  aBlock[3] = &block_descriptor_99;
  v101 = _Block_copy(aBlock);

  [v99 performTranslationRequest:v98 completion:v101];
  _Block_release(v101);
  if ((v117 & 1) == 0)
  {
    sub_1C2F025F0(0);
  }
}

void sub_1C2F008BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      sub_1C2EFFCF0(a3, a4, a5);
      goto LABEL_9;
    }
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C2F761FC();
  __swift_project_value_buffer(v11, qword_1EDEBC5D8);
  v10 = sub_1C2F761DC();
  v12 = sub_1C2F769DC();
  if (os_log_type_enabled(v10, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C2EF2000, v10, v12, "Translation has started because device is still locked.", v13, 2u);
    MEMORY[0x1C6929E80](v13, -1, -1);
  }

LABEL_9:
}

uint64_t sub_1C2F009F8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C2F76B7C();
    sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
    sub_1C2F0A6F8(&qword_1EC076008, &qword_1EC076000, 0x1E69D8C00);
    sub_1C2F769AC();
    result = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v22 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      sub_1C2F0AAB8();
      return v9;
    }

    while (1)
    {
      v15 = [v14 value];
      v16 = sub_1C2F766CC();
      v18 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1C2F1C2F0(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1C2F1C2F0((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      v21 = &v9[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      v4 = v12;
      v5 = v13;
      result = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C2F76BDC())
      {
        sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
        swift_dynamicCast();
        v14 = v28;
        v12 = v4;
        v13 = v5;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F00C94(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = v4;
    v7 = a1;

    sub_1C2F09DA0(sub_1C2F0A8D0, v6);
  }

  return result;
}

void sub_1C2F00D90(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D08, &qword_1C2F78BA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32[-v4];
  if (a1)
  {
    v6 = a1;
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2F761FC();
    __swift_project_value_buffer(v7, qword_1EDEBC5D8);
    v8 = a1;
    v9 = sub_1C2F761DC();
    v10 = sub_1C2F769DC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1C2F76F3C();
      v15 = sub_1C2EFAB28(v13, v14, v33);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C2EF2000, v9, v10, "Not able to start translation. %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1C6929E80](v12, -1, -1);
      MEMORY[0x1C6929E80](v11, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
      v18 = Strong;

      LOBYTE(v33[0]) = 0;
      sub_1C2F7627C();
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_languagePairSubject);
      v21 = v19;

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
      sub_1C2F7627C();

      sub_1C2F0A8D8(v5, &qword_1EC075D08, &qword_1C2F78BA0);
    }

    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      sub_1C2EF6A3C(v23 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, v33, &qword_1EC075DE0, &qword_1C2F78BD8);

      v25 = v34;
      if (v34)
      {
        v26 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        (*(v26 + 16))(v25, v26);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
      }

      else
      {
        sub_1C2F0A8D8(v33, &qword_1EC075DE0, &qword_1C2F78BD8);
      }
    }

    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = *(v29 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isRemoteStartedSubject);
      v31 = v29;

      v32[47] = 0;
      sub_1C2F7627C();
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      sub_1C2F011A0();
    }
  }
}

void sub_1C2F011A0()
{
  v1 = sub_1C2F75C8C();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v157 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v156 = &v145 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076080, &unk_1C2F79010);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v158 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v145 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076088, &qword_1C2F7D430);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v154 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v160 = &v145 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v161 = &v145 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v145 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v145 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v145 - v26;
  v28 = sub_1C2F75AEC();
  v162 = *(v28 - 8);
  isa = v162[8].isa;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v155 = &v145 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v159 = &v145 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v145 - v37;
  if (!*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v40 = Strong;
  v153 = v32;
  v41 = [Strong translationSession];
  if (!v41)
  {
LABEL_7:

LABEL_8:
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v43 = sub_1C2F761FC();
    __swift_project_value_buffer(v43, qword_1EDEBC5D8);
    v162 = sub_1C2F761DC();
    v44 = sub_1C2F769DC();
    if (os_log_type_enabled(v162, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1C2EF2000, v162, v44, "Not able to start transcripts session", v45, 2u);
      MEMORY[0x1C6929E80](v45, -1, -1);
    }

    v46 = v162;

    return;
  }

  v42 = v41;
  v152 = v28;
  if (![v41 translationState] || objc_msgSend(v42, sel_translationState) == 5)
  {

    goto LABEL_7;
  }

  v151 = v42;
  v47 = v40;
  v48 = [v40 provider];
  v49 = [v48 isTelephonyProvider];

  if (v49)
  {
    v50 = 1;
  }

  else
  {
    v51 = [v47 provider];
    v52 = [v51 isFaceTimeProvider];

    if (v52)
    {
      if ([v47 isVideo])
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }
    }

    else
    {
      v50 = 4;
    }
  }

  v149 = v50;
  v53 = v47;
  v54 = v151;
  v55 = v152;
  if (([v151 translationLinks] & 1) == 0)
  {
    v56 = 0;
    v57 = v161;
    v58 = v162;
    v59 = v54;
LABEL_49:
    v95 = v160;
    goto LABEL_50;
  }

  v150 = v53;
  v60 = [v54 downlinkTranslatorIdentifier];
  if (!v60)
  {
    goto LABEL_42;
  }

  v61 = v60;
  sub_1C2F75ACC();

  v146 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions;
  v62 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions);
  if (v62)
  {
    v63 = v162;
    v148 = v162[2].isa;
    v64 = &v162[2] & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    (v148)(v27, v62 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_identifier, v55);
    v147 = v63[7].isa;
    (v147)(v27, 0, 1, v55);
    v65 = v148;
  }

  else
  {
    v66 = v162;
    v147 = v162[7].isa;
    (v147)(v27, 1, 1, v55);
    v65 = v66[2].isa;
    v64 = &v66[2] & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  v148 = v65;
  v145 = v64;
  (v65)(v25, v38, v55);
  (v147)(v25, 0, 1, v55);
  v67 = v55;
  v68 = *(v6 + 48);
  sub_1C2EF6A3C(v27, v11, &unk_1EC076088, &qword_1C2F7D430);
  v147 = v68;
  sub_1C2EF6A3C(v25, v68 + v11, &unk_1EC076088, &qword_1C2F7D430);
  v69 = v162[6].isa;
  if ((v69)(v11, 1, v67) == 1)
  {
    sub_1C2F0A8D8(v25, &unk_1EC076088, &qword_1C2F7D430);
    sub_1C2F0A8D8(v27, &unk_1EC076088, &qword_1C2F7D430);
    if ((v69)(v147 + v11, 1, v67) == 1)
    {
      sub_1C2F0A8D8(v11, &unk_1EC076088, &qword_1C2F7D430);
      (v162[1].isa)(v38, v152);
      goto LABEL_42;
    }

    goto LABEL_33;
  }

  sub_1C2EF6A3C(v11, v22, &unk_1EC076088, &qword_1C2F7D430);
  if ((v69)(v147 + v11, 1, v67) != 1)
  {
    v86 = v159;
    (v162[4].isa)(v159, v147 + v11, v67);
    sub_1C2EF7384(&unk_1EDEBD710, MEMORY[0x1E69695A8]);
    LODWORD(v147) = sub_1C2F7662C();
    v87 = v86;
    v88 = v162[1].isa;
    (v88)(v87, v67);
    sub_1C2F0A8D8(v25, &unk_1EC076088, &qword_1C2F7D430);
    sub_1C2F0A8D8(v27, &unk_1EC076088, &qword_1C2F7D430);
    (v88)(v22, v67);
    sub_1C2F0A8D8(v11, &unk_1EC076088, &qword_1C2F7D430);
    if ((v147 & 1) == 0)
    {
      goto LABEL_34;
    }

    (v88)(v38, v152);
LABEL_42:
    v57 = v161;
    if (*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_downlinkCaptions))
    {
      v56 = 0;
      v53 = v150;
      v59 = v151;
      v58 = v162;
    }

    else
    {
      v89 = v0;
      v58 = v162;
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v90 = sub_1C2F761FC();
      __swift_project_value_buffer(v90, qword_1EDEBC5D8);
      v91 = sub_1C2F761DC();
      v92 = sub_1C2F769DC();
      v93 = os_log_type_enabled(v91, v92);
      v59 = v151;
      if (v93)
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_1C2EF2000, v91, v92, "Not able to find downlink translation client identifier", v94, 2u);
        MEMORY[0x1C6929E80](v94, -1, -1);
      }

      v56 = 0;
      v0 = v89;
      v53 = v150;
    }

    goto LABEL_49;
  }

  sub_1C2F0A8D8(v25, &unk_1EC076088, &qword_1C2F7D430);
  sub_1C2F0A8D8(v27, &unk_1EC076088, &qword_1C2F7D430);
  (v162[1].isa)(v22, v67);
LABEL_33:
  sub_1C2F0A8D8(v11, &qword_1EC076080, &unk_1C2F79010);
LABEL_34:
  v70 = v159;
  (v148)(v159, v38, v152);
  v71 = [v150 uniqueProxyIdentifierUUID];
  v72 = v155;
  sub_1C2F75ACC();

  v59 = v151;
  v73 = [v151 localLocale];
  v74 = v156;
  sub_1C2F75B9C();

  v75 = [v59 remoteLocale];
  v76 = v157;
  sub_1C2F75B9C();

  v77 = swift_allocObject();
  v78 = v0;
  swift_unknownObjectWeakInit();
  v56 = sub_1C2F330CC(v70, v72, v149, 1, v74, v76, sub_1C2F0A970, v77);
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v79 = sub_1C2F761FC();
  __swift_project_value_buffer(v79, qword_1EDEBC5D8);
  v80 = sub_1C2F761DC();
  v81 = sub_1C2F769EC();
  v82 = os_log_type_enabled(v80, v81);
  v58 = v162;
  if (v82)
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_1C2EF2000, v80, v81, "Created Downlink Captions Clients", v83, 2u);
    MEMORY[0x1C6929E80](v83, -1, -1);
  }

  v84 = *&v146[v78];
  *&v146[v78] = v56;
  v85 = v152;
  if (v84)
  {
    swift_retain_n();
    sub_1C2F31844();
    v0 = v78;
  }

  else
  {
    v0 = v78;
  }

  v53 = v150;
  v95 = v160;
  (v58[1].isa)(v38, v85);
  v57 = v161;
LABEL_50:
  if (([v59 translationLinks] & 2) == 0)
  {
    goto LABEL_76;
  }

  v96 = [v59 uplinkTranslatorIdentifier];
  if (!v96)
  {
LABEL_70:
    if (!*(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions))
    {
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v134 = sub_1C2F761FC();
      __swift_project_value_buffer(v134, qword_1EDEBC5D8);
      v135 = sub_1C2F761DC();
      v136 = sub_1C2F769DC();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = v53;
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_1C2EF2000, v135, v136, "Not able to find uplink translation client identifier", v138, 2u);
        v139 = v138;
        v53 = v137;
        MEMORY[0x1C6929E80](v139, -1, -1);
      }
    }

LABEL_76:
    v119 = 0;
    if (v56)
    {
      goto LABEL_77;
    }

    goto LABEL_83;
  }

  v148 = v56;
  v150 = v53;
  v97 = v96;
  sub_1C2F75ACC();

  v147 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions;
  v98 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_uplinkCaptions);
  if (v98)
  {
    v99 = v58[2].isa;
    v100 = v152;
    (v99)(v57, v98 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_identifier, v152);
    v101 = v58[7].isa;
    v101(v57, 0, 1, v100);
  }

  else
  {
    v101 = v58[7].isa;
    v100 = v152;
    v101(v57, 1, 1, v152);
    v99 = v58[2].isa;
  }

  v146 = v99;
  (v99)(v95, v153, v100);
  v101(v95, 0, 1, v100);
  v102 = *(v6 + 48);
  v103 = v158;
  sub_1C2EF6A3C(v57, v158, &unk_1EC076088, &qword_1C2F7D430);
  sub_1C2EF6A3C(v95, v103 + v102, &unk_1EC076088, &qword_1C2F7D430);
  v104 = v58[6].isa;
  if (v104(v103, 1, v100) == 1)
  {
    sub_1C2F0A8D8(v95, &unk_1EC076088, &qword_1C2F7D430);
    v105 = v152;
    v106 = v158;
    sub_1C2F0A8D8(v57, &unk_1EC076088, &qword_1C2F7D430);
    if (v104(v106 + v102, 1, v105) == 1)
    {
      sub_1C2F0A8D8(v106, &unk_1EC076088, &qword_1C2F7D430);
      v53 = v150;
      (v162[1].isa)(v153, v105);
LABEL_69:
      v59 = v151;
      v56 = v148;
      goto LABEL_70;
    }

    goto LABEL_60;
  }

  v107 = v154;
  sub_1C2EF6A3C(v103, v154, &unk_1EC076088, &qword_1C2F7D430);
  if (v104(v103 + v102, 1, v100) == 1)
  {
    sub_1C2F0A8D8(v160, &unk_1EC076088, &qword_1C2F7D430);
    v106 = v158;
    sub_1C2F0A8D8(v161, &unk_1EC076088, &qword_1C2F7D430);
    (v162[1].isa)(v107, v152);
LABEL_60:
    sub_1C2F0A8D8(v106, &qword_1EC076080, &unk_1C2F79010);
    v53 = v150;
    v108 = v153;
    goto LABEL_61;
  }

  v128 = v162;
  v129 = v103 + v102;
  v130 = v103;
  v131 = v159;
  (v162[4].isa)(v159, v129, v100);
  sub_1C2EF7384(&unk_1EDEBD710, MEMORY[0x1E69695A8]);
  v132 = sub_1C2F7662C();
  v133 = v128[1].isa;
  v133(v131, v100);
  sub_1C2F0A8D8(v160, &unk_1EC076088, &qword_1C2F7D430);
  sub_1C2F0A8D8(v161, &unk_1EC076088, &qword_1C2F7D430);
  v133(v107, v100);
  sub_1C2F0A8D8(v130, &unk_1EC076088, &qword_1C2F7D430);
  v53 = v150;
  v108 = v153;
  if (v132)
  {
    v133(v153, v152);
    goto LABEL_69;
  }

LABEL_61:
  v109 = v159;
  (v146)(v159, v108, v152);
  v110 = [v53 uniqueProxyIdentifierUUID];
  v111 = v155;
  sub_1C2F75ACC();

  v112 = v151;
  v113 = [v151 localLocale];
  v114 = v156;
  sub_1C2F75B9C();

  v115 = [v112 remoteLocale];
  v116 = v157;
  sub_1C2F75B9C();

  v117 = swift_allocObject();
  v118 = v0;
  swift_unknownObjectWeakInit();
  v119 = sub_1C2F330CC(v109, v111, v149, 0, v114, v116, sub_1C2F0A938, v117);
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v120 = sub_1C2F761FC();
  __swift_project_value_buffer(v120, qword_1EDEBC5D8);
  v121 = sub_1C2F761DC();
  v122 = sub_1C2F769EC();
  v123 = os_log_type_enabled(v121, v122);
  v124 = v162;
  v125 = v148;
  if (v123)
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_1C2EF2000, v121, v122, "Created Uplink Captions Clients", v126, 2u);
    MEMORY[0x1C6929E80](v126, -1, -1);
  }

  v127 = *(v147 + v118);
  *(v147 + v118) = v119;
  if (v127)
  {
    swift_retain_n();
    sub_1C2F31844();
  }

  else
  {
  }

  v53 = v150;
  v59 = v151;
  (v124[1].isa)(v153, v152);
  if (v125)
  {
LABEL_77:
    sub_1C2F31834();
    if (!v119)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_83:
  if (v119)
  {
LABEL_84:
    sub_1C2F31834();

LABEL_85:

    return;
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v140 = sub_1C2F761FC();
  __swift_project_value_buffer(v140, qword_1EDEBC5D8);
  v141 = sub_1C2F761DC();
  v142 = sub_1C2F769CC();
  if (os_log_type_enabled(v141, v142))
  {
    v143 = v53;
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&dword_1C2EF2000, v141, v142, "Not creating new captions clients.", v144, 2u);
    MEMORY[0x1C6929E80](v144, -1, -1);
  }

  else
  {
  }
}

void sub_1C2F02584(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1C2F025F0(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v46 = Strong;
  if ([Strong status]!= 1)
  {

LABEL_8:
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2F761FC();
    __swift_project_value_buffer(v7, qword_1EDEBC5D8);
    v46 = sub_1C2F761DC();
    v8 = sub_1C2F769EC();
    if (os_log_type_enabled(v46, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C2EF2000, v46, v8, "invalid tuCall status", v9, 2u);
      MEMORY[0x1C6929E80](v9, -1, -1);
    }

    goto LABEL_12;
  }

  v4 = [v46 provider];
  v5 = [v4 isFaceTimeProvider];

  if (!v5)
  {
    v11 = [v46 remoteParticipantHandles];
    sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
    sub_1C2F0A6F8(&qword_1EC076008, &qword_1EC076000, 0x1E69D8C00);
    v12 = sub_1C2F7697C();

    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = sub_1C2F76BBC();
    }

    else
    {
      v13 = *(v12 + 16);
    }

    if (v13 == 1 && (v19 = [v46 remoteParticipantHandles], v20 = sub_1C2F7697C(), v19, v21 = sub_1C2F2DEE8(v20), , v21))
    {
      sub_1C2F7611C();
      sub_1C2F7610C();
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v46;
      *(v23 + 24) = v22;
      v46 = v46;

      sub_1C2F760FC();
    }

    else
    {
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v24 = sub_1C2F761FC();
      __swift_project_value_buffer(v24, qword_1EDEBC5D8);
      v46 = v46;
      v25 = sub_1C2F761DC();
      v26 = sub_1C2F769EC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        v28 = [v46 remoteParticipantHandles];
        v29 = sub_1C2F7697C();

        if ((v29 & 0xC000000000000001) != 0)
        {
          v30 = sub_1C2F76BBC();
        }

        else
        {
          v30 = *(v29 + 16);
        }

        *(v27 + 4) = v30;

        _os_log_impl(&dword_1C2EF2000, v25, v26, "remoteParticipantHandles count is %ld", v27, 0xCu);
        MEMORY[0x1C6929E80](v27, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_12;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v14 = [*(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_callCenter) activeConversationForCall_];
    if (!v14)
    {
LABEL_39:
      if (qword_1EDEBC5D0 != -1)
      {
        swift_once();
      }

      v37 = sub_1C2F761FC();
      __swift_project_value_buffer(v37, qword_1EDEBC5D8);
      v38 = sub_1C2F761DC();
      v39 = sub_1C2F769EC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1C2EF2000, v38, v39, "Not starting translation session because of invalid conversation/active remote participants", v40, 2u);
        MEMORY[0x1C6929E80](v40, -1, -1);
      }

LABEL_12:
      v10 = v46;
      goto LABEL_13;
    }

    v6 = v14;
  }

  v15 = a1;
  v16 = [v6 activeRemoteParticipants];
  sub_1C2EF5A14(0, &qword_1EC076010, 0x1E69D8B90);
  sub_1C2F0A6F8(&qword_1EC076018, &qword_1EC076010, 0x1E69D8B90);
  v17 = sub_1C2F7697C();

  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = sub_1C2F76BBC();
  }

  else
  {
    v18 = *(v17 + 16);
  }

  if (v18 != 1)
  {

    goto LABEL_39;
  }

  v31 = [v6 activeRemoteParticipants];
  v32 = sub_1C2F7697C();

  v45 = sub_1C2F2DED4(v32);

  if (v45)
  {
    v33 = [v45 capabilities];
    v34 = [v33 isTranslationAvailable];

    if (v34)
    {
      sub_1C2EF6A3C(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, v47, &qword_1EC075DE0, &qword_1C2F78BD8);
      v35 = v48;
      if (v48)
      {
        v36 = v49;
        __swift_project_boxed_opaque_existential_1(v47, v48);
        (*(v36 + 8))(v35, v36);

        __swift_destroy_boxed_opaque_existential_1Tm(v47);
      }

      else
      {

        sub_1C2F0A8D8(v47, &qword_1EC075DE0, &qword_1C2F78BD8);
      }

      return;
    }
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v41 = sub_1C2F761FC();
  __swift_project_value_buffer(v41, qword_1EDEBC5D8);
  v42 = sub_1C2F761DC();
  v43 = sub_1C2F769EC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1C2EF2000, v42, v43, "Not starting translation session because remote doesn't support translation", v44, 2u);
    MEMORY[0x1C6929E80](v44, -1, -1);
  }

  v10 = v45;
LABEL_13:
}

Swift::Void __swiftcall CallTranslationService.stopTranslation()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject];
  sub_1C2F7628C();
  if (v33 == 1)
  {
    if (*&v0[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = [Strong translationSession];
        if (v5)
        {

          if (qword_1EDEBC5D0 != -1)
          {
            swift_once();
          }

          v6 = sub_1C2F761FC();
          __swift_project_value_buffer(v6, qword_1EDEBC5D8);
          v7 = sub_1C2F761DC();
          v8 = sub_1C2F769CC();
          if (os_log_type_enabled(v7, v8))
          {
            v9 = swift_slowAlloc();
            *v9 = 0;
            _os_log_impl(&dword_1C2EF2000, v7, v8, "Stop Translation", v9, 2u);
            MEMORY[0x1C6929E80](v9, -1, -1);
          }

          LOBYTE(v33) = 0;
          sub_1C2F7627C();
          sub_1C2EF724C();
          v10 = [objc_allocWithZone(MEMORY[0x1E69D8AC8]) initWithCall_];
          v11 = *&v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_callCenter];
          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v35 = sub_1C2F09590;
          v36 = v12;
          *&v33 = MEMORY[0x1E69E9820];
          *(&v33 + 1) = 1107296256;
          *&v34 = sub_1C2F02584;
          *(&v34 + 1) = &block_descriptor_12;
          v13 = _Block_copy(&v33);

          [v11 performTranslationRequest:v10 completion:v13];
          _Block_release(v13);
          v14 = *&v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject];
          v35 = 0;
          v33 = 0u;
          v34 = 0u;
          sub_1C2F7627C();
          if ((v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_videoCall] & 1) == 0)
          {
            sub_1C2EF6A3C(&v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController], &v33, &qword_1EC075DE0, &qword_1C2F78BD8);
            v15 = *(&v34 + 1);
            if (*(&v34 + 1))
            {
              v16 = v35;
              __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
              (*(v16 + 2))(v15, v16);
              __swift_destroy_boxed_opaque_existential_1Tm(&v33);
            }

            else
            {
              sub_1C2F0A8D8(&v33, &qword_1EC075DE0, &qword_1C2F78BD8);
            }
          }

          v30 = *&v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_mockTranscripts];
          v31 = *(v30 + 16);
          *(v30 + 16) = 0;

          v32 = *&v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptCancellable];
          *&v1[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptCancellable] = 0;

          v35 = 0;
          v33 = 0u;
          v34 = 0u;
          sub_1C2F7627C();
        }

        else
        {
          if (qword_1EDEBC5D0 != -1)
          {
            swift_once();
          }

          v26 = sub_1C2F761FC();
          __swift_project_value_buffer(v26, qword_1EDEBC5D8);
          v27 = sub_1C2F761DC();
          v28 = sub_1C2F769DC();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_1C2EF2000, v27, v28, "Trying to stop translation without translation session.", v29, 2u);
            MEMORY[0x1C6929E80](v29, -1, -1);
          }
        }

        goto LABEL_29;
      }
    }

    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v23 = sub_1C2F761FC();
    __swift_project_value_buffer(v23, qword_1EDEBC5D8);
    v4 = sub_1C2F761DC();
    v24 = sub_1C2F769DC();
    if (!os_log_type_enabled(v4, v24))
    {
      goto LABEL_29;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1C2EF2000, v4, v24, "Current call is ended", v25, 2u);
    v22 = v25;
  }

  else
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C2F761FC();
    __swift_project_value_buffer(v17, qword_1EDEBC5D8);
    v18 = v0;
    v4 = sub_1C2F761DC();
    v19 = sub_1C2F769EC();
    if (!os_log_type_enabled(v4, v19))
    {

      return;
    }

    v20 = swift_slowAlloc();
    *v20 = 67109120;
    v21 = *&v18[OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isRemoteStartedSubject];
    sub_1C2F7628C();
    *(v20 + 4) = v33;

    _os_log_impl(&dword_1C2EF2000, v4, v19, "Translation already stopped. Remote start: %{BOOL}d", v20, 8u);
    v22 = v20;
  }

  MEMORY[0x1C6929E80](v22, -1, -1);
LABEL_29:
}

uint64_t sub_1C2F03374(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = a1;

    sub_1C2F09DA0(sub_1C2F0A828, v6);
  }

  return result;
}

void sub_1C2F03420(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call);
      v4 = Strong;
      v5 = a1;

      if (v3)
      {
        v6 = swift_unknownObjectWeakLoadStrong();

        if (v6)
        {
          v7 = [v6 translationSession];

          if (v7)
          {
            v8 = [v7 translationState];

            v9 = v8 == 3;
LABEL_16:
            if (qword_1EDEBC5D0 != -1)
            {
              swift_once();
            }

            v14 = sub_1C2F761FC();
            __swift_project_value_buffer(v14, qword_1EDEBC5D8);
            v15 = a1;
            v16 = sub_1C2F761DC();
            v17 = sub_1C2F769DC();

            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              v19 = swift_slowAlloc();
              *v18 = 138412546;
              v20 = a1;
              v21 = _swift_stdlib_bridgeErrorToNSError();
              *(v18 + 4) = v21;
              *v19 = v21;
              *(v18 + 12) = 1024;
              *(v18 + 14) = v9;
              _os_log_impl(&dword_1C2EF2000, v16, v17, "Not able to stop translation. %@. final state: %{BOOL}d", v18, 0x12u);
              sub_1C2F0A8D8(v19, &unk_1EC076070, &qword_1C2F7A190);
              MEMORY[0x1C6929E80](v19, -1, -1);
              MEMORY[0x1C6929E80](v18, -1, -1);
            }

            swift_beginAccess();
            v22 = swift_unknownObjectWeakLoadStrong();
            if (v22)
            {
              v23 = *(v22 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
              v24 = v22;

              sub_1C2F7627C();
            }

            else
            {
            }

            return;
          }
        }
      }
    }

    else
    {
      v13 = a1;
    }

    v9 = 0;
    goto LABEL_16;
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C2F761FC();
  __swift_project_value_buffer(v10, qword_1EDEBC5D8);
  oslog = sub_1C2F761DC();
  v11 = sub_1C2F769CC();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C2EF2000, oslog, v11, "stopped translation", v12, 2u);
    MEMORY[0x1C6929E80](v12, -1, -1);
  }
}

Swift::Void __swiftcall CallTranslationService.requestRemoteTranscripts()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
  sub_1C2F7628C();
  if (v18[0])
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C2F761FC();
    __swift_project_value_buffer(v3, qword_1EDEBC5D8);
    v4 = sub_1C2F761DC();
    v5 = sub_1C2F769EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C2EF2000, v4, v5, "Already requested remote transcripts", v6, 2u);
      MEMORY[0x1C6929E80](v6, -1, -1);
    }
  }

  else
  {
    LOBYTE(v18[0]) = 1;
    sub_1C2F7627C();
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2F761FC();
    __swift_project_value_buffer(v7, qword_1EDEBC5D8);
    v8 = sub_1C2F761DC();
    v9 = sub_1C2F769EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C2EF2000, v8, v9, "requestRemoteTranscripts", v10, 2u);
      MEMORY[0x1C6929E80](v10, -1, -1);
    }

    v11 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController;
    sub_1C2EF6A3C(v1 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, v18, &qword_1EC075DE0, &qword_1C2F78BD8);
    v12 = v19;
    sub_1C2F0A8D8(v18, &qword_1EC075DE0, &qword_1C2F78BD8);
    if (!v12)
    {
      v13 = sub_1C2F761DC();
      v14 = sub_1C2F769EC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1C2EF2000, v13, v14, "invalid interactionController", v15, 2u);
        MEMORY[0x1C6929E80](v15, -1, -1);
      }
    }

    sub_1C2EF6A3C(v1 + v11, v18, &qword_1EC075DE0, &qword_1C2F78BD8);
    v16 = v19;
    if (v19)
    {
      v17 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      (*(v17 + 32))(v16, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    else
    {
      sub_1C2F0A8D8(v18, &qword_1EC075DE0, &qword_1C2F78BD8);
    }
  }
}

Swift::Void __swiftcall CallTranslationService.stopRemoteTranscripts(remoteLeaves:)(Swift::Bool remoteLeaves)
{
  v2 = v1;
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EDEBC5D8);
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = remoteLeaves;
    _os_log_impl(&dword_1C2EF2000, v5, v6, "stopRemoteTranscripts, remoteLeaves: %{BOOL}d", v7, 8u);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  if (remoteLeaves)
  {
    v8 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject);
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1C2F7627C();
  }

  v9 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
  sub_1C2F7628C();
  if (v15 == 1)
  {
    LOBYTE(v15) = 0;
    sub_1C2F7627C();
    sub_1C2EF6A3C(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, &v15, &qword_1EC075DE0, &qword_1C2F78BD8);
    v10 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      v11 = v17;
      __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
      (*(v11 + 24))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    }

    else
    {
      sub_1C2F0A8D8(&v15, &qword_1EC075DE0, &qword_1C2F78BD8);
    }
  }

  else
  {
    v12 = sub_1C2F761DC();
    v13 = sub_1C2F769EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C2EF2000, v12, v13, "Remote transcripts already stopped", v14, 2u);
      MEMORY[0x1C6929E80](v14, -1, -1);
    }
  }
}

uint64_t sub_1C2F03CC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v7 = *v1;
  *(*v1 + 424) = a1;

  v4 = *(v2 + 400);
  v5 = *(v2 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1C2F03DF0, v5, v4);
}

uint64_t sub_1C2F03DF0()
{
  v1 = v0[51];
  v2 = v0[48];

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v0[37];
    v90 = v0[51] + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v87 = (v0[29] + 8);
    v7 = v0[16];
    v85 = (v7 + 48);
    v65 = (v7 + 32);
    v66 = (v7 + 8);
    v92 = v6;
    v8 = (v6 + 8);
    v69 = v0[18];
    v71 = (v6 + 8);
    v83 = v1;
    v67 = *(v1 + 16);
    while (1)
    {
      if (v5 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v9 = v8;
      v10 = v0[32];
      v11 = v0[28];
      v12 = v0[24];
      v13 = v0[15];
      v94 = v5;
      (*(v92 + 16))(v0[38], v90 + *(v92 + 72) * v5, v0[36]);
      sub_1C2F75C7C();
      sub_1C2F75C0C();
      v14 = *v87;
      (*v87)(v10, v11);
      v15 = *v85;
      v16 = (*v85)(v12, 1, v13);
      sub_1C2F0A8D8(v12, &unk_1EC076030, qword_1C2F7C380);
      if (v16 != 1)
      {
        break;
      }

      v8 = v9;
      v1 = v83;
LABEL_4:
      v5 = v94 + 1;
      result = (*v8)(v0[38], v0[36]);
      if (v4 == v94 + 1)
      {
        goto LABEL_19;
      }
    }

    v17 = v0[38];
    v80 = v15;
    v19 = v0[30];
    v18 = v0[31];
    v20 = v0[28];
    v21 = v0[23];
    v74 = v0[22];
    v76 = v0[19];
    v78 = v0[15];
    v22 = v0[12];
    sub_1C2F75C7C();
    sub_1C2F75C0C();
    v14(v18, v20);
    sub_1C2F75C7C();
    sub_1C2F75C0C();
    v14(v19, v20);
    v23 = *(v69 + 48);
    sub_1C2EF6A3C(v21, v76, &unk_1EC076030, qword_1C2F7C380);
    sub_1C2EF6A3C(v74, v76 + v23, &unk_1EC076030, qword_1C2F7C380);
    v24 = v80(v76, 1, v78);
    v25 = v0[15];
    if (v24 == 1)
    {
      v26 = v0[23];
      sub_1C2F0A8D8(v0[22], &unk_1EC076030, qword_1C2F7C380);
      sub_1C2F0A8D8(v26, &unk_1EC076030, qword_1C2F7C380);
      v8 = v71;
      if (v80(v76 + v23, 1, v25) == 1)
      {
        v27 = v0[19];
        v28 = &unk_1EC076030;
        v29 = qword_1C2F7C380;
LABEL_15:
        sub_1C2F0A8D8(v27, v28, v29);
LABEL_16:
        v1 = v83;
        v4 = v67;
        goto LABEL_4;
      }
    }

    else
    {
      sub_1C2EF6A3C(v0[19], v0[21], &unk_1EC076030, qword_1C2F7C380);
      v30 = v80(v76 + v23, 1, v25);
      v32 = v0[22];
      v31 = v0[23];
      v33 = v0[21];
      if (v30 != 1)
      {
        v81 = v0[19];
        v40 = v0[17];
        v41 = v0[15];
        (*v65)(v40, v76 + v23, v41);
        sub_1C2EF7384(&unk_1EC076050, MEMORY[0x1E6969610]);
        v42 = sub_1C2F7662C();
        v43 = *v66;
        (*v66)(v40, v41);
        sub_1C2F0A8D8(v32, &unk_1EC076030, qword_1C2F7C380);
        sub_1C2F0A8D8(v31, &unk_1EC076030, qword_1C2F7C380);
        v43(v33, v41);
        sub_1C2F0A8D8(v81, &unk_1EC076030, qword_1C2F7C380);
        v8 = v71;
        if (v42)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }

      v34 = v0[15];
      sub_1C2F0A8D8(v0[22], &unk_1EC076030, qword_1C2F7C380);
      sub_1C2F0A8D8(v31, &unk_1EC076030, qword_1C2F7C380);
      (*v66)(v33, v34);
      v8 = v71;
    }

    sub_1C2F0A8D8(v0[19], &qword_1EC076028, &unk_1C2F78FE0);
LABEL_13:
    v35 = v0[53];
    v36 = v0[38];
    v37 = v0[14];
    *(swift_task_alloc() + 16) = v36;
    sub_1C2F37E3C(sub_1C2F0A808, v35, v37);

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) != 1)
    {
      v59 = v0[53];
      v60 = v0[51];
      v61 = v0[38];
      v62 = v0[36];
      v63 = v0[14];
      v64 = v0[10];

      sub_1C2F09460(v63, v64, &unk_1EC075E20, &unk_1C2F78C00);
      (*(v39 + 56))(v64, 0, 1, v38);
      (*v8)(v61, v62);
      goto LABEL_20;
    }

    v27 = v0[14];
    v28 = &unk_1EC076020;
    v29 = &unk_1C2F78FD8;
    goto LABEL_15;
  }

LABEL_19:
  v44 = v0[53];
  v45 = v0[51];
  v46 = v0[10];

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
LABEL_20:
  v49 = v0[46];
  v48 = v0[47];
  v51 = v0[42];
  v50 = v0[43];
  v52 = v0[40];
  v53 = v0[41];
  v55 = v0[38];
  v54 = v0[39];
  v57 = v0[34];
  v56 = v0[35];
  v68 = v0[33];
  v70 = v0[32];
  v72 = v0[31];
  v73 = v0[30];
  v75 = v0[27];
  v77 = v0[26];
  v79 = v0[25];
  v82 = v0[24];
  v84 = v0[23];
  v86 = v0[22];
  v88 = v0[21];
  v89 = v0[20];
  v91 = v0[19];
  v93 = v0[17];
  v95 = v0[14];

  v58 = v0[1];

  return v58();
}

uint64_t sub_1C2F0458C(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v3 = sub_1C2F75C6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  sub_1C2EF6A3C(a1, v21 - v14, &unk_1EC075E20, &unk_1C2F78C00);
  v16 = *(v12 + 56);
  sub_1C2F75C7C();
  v17 = sub_1C2F75C8C();
  (*(*(v17 - 8) + 8))(v15, v17);
  sub_1C2F75C7C();
  LOBYTE(v12) = sub_1C2F75C3C();
  v18 = *(v4 + 8);
  v18(v8, v3);
  v18(v10, v3);
  v19 = sub_1C2F75E3C();
  (*(*(v19 - 8) + 8))(&v15[v16], v19);
  return v12 & 1;
}

void sub_1C2F047B0(char a1, id a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C2F761FC();
    __swift_project_value_buffer(v6, qword_1EDEBC5D8);
    oslog = sub_1C2F761DC();
    v7 = sub_1C2F769EC();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Not starting translation session for telephony call because remote doesn't support translation";
    goto LABEL_14;
  }

  if ([a2 status] == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1C2EF6A3C(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, v12, &qword_1EC075DE0, &qword_1C2F78BD8);

      v4 = v13;
      if (v13)
      {
        v5 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v5 + 8))(v4, v5);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
      }

      else
      {
        sub_1C2F0A8D8(v12, &qword_1EC075DE0, &qword_1C2F78BD8);
      }
    }

    return;
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C2F761FC();
  __swift_project_value_buffer(v10, qword_1EDEBC5D8);
  oslog = sub_1C2F761DC();
  v7 = sub_1C2F769EC();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Do not start translation session because call is inactive";
LABEL_14:
    _os_log_impl(&dword_1C2EF2000, oslog, v7, v9, v8, 2u);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

LABEL_15:
}

uint64_t sub_1C2F04A10(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v7 = a2 + 2;
  v6 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject);
    v57 = v10;
    v13 = v9;
    v14 = v8;
    v15 = v6;
    v16 = v7;
    v17 = Strong;

    v7 = v16;
    v18 = 0x100000000;
    if ((v4 & 1) == 0)
    {
      v18 = 0;
    }

    v19 = v18 | v3;
    v20 = 0x10000000000;
    if ((v5 & 1) == 0)
    {
      v20 = 0;
    }

    *&v60 = v19 | v20;
    *(&v60 + 1) = v15;
    *&v61 = v14;
    *(&v61 + 1) = v13;
    v62 = v57;
    sub_1C2F09740(a2, v59);
    sub_1C2F7627C();

    sub_1C2F0A6B4(v60, *(&v60 + 1), v61);
  }

  v21 = *(a2 + 1);
  v60 = *a2;
  v61 = v21;
  v62 = *(a2 + 4);
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22 && (v23 = *(v22 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call), v24 = v22, , v24, v23))
  {
    v25 = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    v25 = 0;
  }

  type metadata accessor for CallTranslationRTTHelper();
  swift_initStaticObject();
  sub_1C2F402BC(&v60, v25);

  if (*(a2 + 4))
  {
    v58 = *(a2 + 3);
    v26 = *(a2 + 4);
  }

  else
  {
    v58 = 0;
    v26 = 0xE000000000000000;
  }

  v55 = *(a2 + 4);
  v56 = *a2;
  v27 = *(a2 + 5);
  v63 = *v7;
  v28 = *(&v63 + 1);
  v54 = v63;
  sub_1C2F0A9B4(&v63, &v60);
  v29 = qword_1EDEBC5D0;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = (v27 & 1) == 0;
  v31 = sub_1C2F761FC();
  __swift_project_value_buffer(v31, qword_1EDEBC5D8);
  sub_1C2F09740(a2, &v60);

  v32 = sub_1C2F761DC();
  v33 = sub_1C2F769EC();
  sub_1C2F0AA10(a2);

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v59[0] = v35;
    *v34 = 136315394;
    v36 = *(a2 + 1);
    v60 = *a2;
    v61 = v36;
    v62 = *(a2 + 4);
    v37 = CallTranslationTranscript.description.getter();
    v39 = sub_1C2EFAB28(v37, v38, v59);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    LODWORD(v60) = v56;
    BYTE4(v60) = v55 & 1;
    BYTE5(v60) = v30;
    *(&v60 + 1) = v54;
    *&v61 = v28;
    *(&v61 + 1) = v58;
    v62 = v26;
    v40 = CallTranslationTranscript.description.getter();
    v42 = sub_1C2EFAB28(v40, v41, v59);

    *(v34 + 14) = v42;
    _os_log_impl(&dword_1C2EF2000, v32, v33, "downlink: transcripts: %s, message: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v35, -1, -1);
    MEMORY[0x1C6929E80](v34, -1, -1);
  }

  v43 = v30;
  swift_beginAccess();
  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    sub_1C2EF6A3C(v44 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, &v60, &qword_1EC075DE0, &qword_1C2F78BD8);

    if (*(&v61 + 1))
    {
      sub_1C2F0A8D8(&v60, &qword_1EC075DE0, &qword_1C2F78BD8);
      goto LABEL_25;
    }
  }

  else
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
  }

  sub_1C2F0A8D8(&v60, &qword_1EC075DE0, &qword_1C2F78BD8);
  v46 = sub_1C2F761DC();
  v47 = sub_1C2F769EC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1C2EF2000, v46, v47, "interactionController is nil", v48, 2u);
    MEMORY[0x1C6929E80](v48, -1, -1);
  }

LABEL_25:
  swift_beginAccess();
  v49 = swift_unknownObjectWeakLoadStrong();
  if (v49)
  {
    v50 = v49;
    sub_1C2EF6A3C(v49 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, &v60, &qword_1EC075DE0, &qword_1C2F78BD8);

    v51 = *(&v61 + 1);
    if (*(&v61 + 1))
    {
      v52 = v62;
      __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
      LODWORD(v59[0]) = v56;
      BYTE4(v59[0]) = v55 & 1;
      BYTE5(v59[0]) = v43;
      v59[1] = v54;
      v59[2] = v28;
      v59[3] = v58;
      v59[4] = v26;
      (*(v52 + 56))(v59, v51, v52);

      return __swift_destroy_boxed_opaque_existential_1Tm(&v60);
    }

    else
    {

      return sub_1C2F0A8D8(&v60, &qword_1EC075DE0, &qword_1C2F78BD8);
    }
  }

  else
  {
  }
}

uint64_t sub_1C2F04FE0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v12 = *a1;
  v13 = v6;
  v14 = *(a1 + 4);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = v13;
    *(v9 + 24) = v12;
    *(v9 + 40) = v10;
    *(v9 + 56) = v14;

    sub_1C2F09740(&v12, &v11);
    sub_1C2F09DA0(a4, v9);
  }

  return result;
}

uint64_t sub_1C2F050A4(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v6 = (a2 + 2);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = *(a2 + 4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject);
    v44 = v9;
    v13 = v8;
    v14 = v7;
    v15 = Strong;

    v16 = 0x100000000;
    if ((v4 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = v16 | v3;
    v18 = 0x10000000000;
    if ((v5 & 1) == 0)
    {
      v18 = 0;
    }

    *&v47 = v17 | v18;
    *(&v47 + 1) = v14;
    *&v48 = v13;
    *(&v48 + 1) = v44;
    v49 = v10;
    sub_1C2F09740(a2, v46);
    sub_1C2F7627C();

    sub_1C2F0A6B4(v47, *(&v47 + 1), v48);
    v10 = *(a2 + 4);
  }

  if (v10)
  {
    v45 = *(a2 + 3);
    v19 = v10;
  }

  else
  {
    v45 = 0;
    v19 = 0xE000000000000000;
  }

  v42 = *(a2 + 4);
  v43 = *a2;
  v20 = *(a2 + 5);
  v50 = *v6;
  v21 = *(&v50 + 1);
  v41 = v50;
  sub_1C2F0A9B4(&v50, &v47);
  v22 = qword_1EDEBC5D0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = (v20 & 1) == 0;
  v24 = sub_1C2F761FC();
  __swift_project_value_buffer(v24, qword_1EDEBC5D8);
  sub_1C2F09740(a2, &v47);

  v25 = sub_1C2F761DC();
  v26 = sub_1C2F769EC();
  sub_1C2F0AA10(a2);

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46[0] = v28;
    *v27 = 136315394;
    v29 = *(a2 + 1);
    v47 = *a2;
    v48 = v29;
    v49 = *(a2 + 4);
    v30 = CallTranslationTranscript.description.getter();
    v32 = sub_1C2EFAB28(v30, v31, v46);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    LODWORD(v47) = v43;
    BYTE4(v47) = v42 & 1;
    BYTE5(v47) = (v20 & 1) == 0;
    *(&v47 + 1) = v41;
    *&v48 = v21;
    *(&v48 + 1) = v45;
    v49 = v19;
    v33 = CallTranslationTranscript.description.getter();
    v35 = sub_1C2EFAB28(v33, v34, v46);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_1C2EF2000, v25, v26, "uplink: transcripts: %s, message: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v28, -1, -1);
    MEMORY[0x1C6929E80](v27, -1, -1);
  }

  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    v37 = v36;
    sub_1C2EF6A3C(v36 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, &v47, &qword_1EC075DE0, &qword_1C2F78BD8);

    v38 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v39 = v49;
      __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      LODWORD(v46[0]) = v43;
      BYTE4(v46[0]) = v42 & 1;
      BYTE5(v46[0]) = v23;
      v46[1] = v41;
      v46[2] = v21;
      v46[3] = v45;
      v46[4] = v19;
      (*(v39 + 56))(v46, v38, v39);

      return __swift_destroy_boxed_opaque_existential_1Tm(&v47);
    }

    else
    {

      return sub_1C2F0A8D8(&v47, &qword_1EC075DE0, &qword_1C2F78BD8);
    }
  }

  else
  {
  }
}

uint64_t sub_1C2F054CC(uint64_t a1, uint64_t a2)
{
  sub_1C2F7687C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1C2F0A860();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1C2F76C6C();
    MEMORY[0x1C6928D30](0xD00000000000003FLL, 0x80000001C2F7E360);
    v8 = sub_1C2F7705C();
    MEMORY[0x1C6928D30](v8);

    MEMORY[0x1C6928D30](46, 0xE100000000000000);
    result = sub_1C2F76D4C();
    __break(1u);
  }

  return result;
}

void sub_1C2F05654()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call);
    v2 = Strong;

    if (v1)
    {
      v3 = swift_unknownObjectWeakLoadStrong();

      if (v3)
      {
        v4 = [v3 provider];

        v5 = [v4 isFaceTimeProvider];
        if (v5)
        {
          swift_beginAccess();
          v6 = swift_unknownObjectWeakLoadStrong();
          if (v6)
          {
            v7 = v6;
            swift_beginAccess();
            v8 = swift_unknownObjectWeakLoadStrong();
            if (v8)
            {
              v9 = *(v8 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call);
              v10 = v8;

              if (v9)
              {
                v11 = swift_unknownObjectWeakLoadStrong();

                v9 = [v11 translationSession];
              }
            }

            else
            {
              v9 = 0;
            }

            sub_1C2F0A0F8(v9);
          }
        }
      }
    }
  }
}

void sub_1C2F057C4()
{
  sub_1C2F7599C();
  if (v24)
  {
    sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      v0 = v22;
      v1 = [v22 uniqueProxyIdentifier];
      v2 = sub_1C2F766CC();
      v4 = v3;

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v6 = *(Strong + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call), v7 = Strong, , v7, v6))
      {
        v9 = *(v6 + 24);
        v8 = *(v6 + 32);

        if (v2 == v9 && v4 == v8)
        {

LABEL_20:
          if (qword_1EDEBC5D0 != -1)
          {
            swift_once();
          }

          v15 = sub_1C2F761FC();
          __swift_project_value_buffer(v15, qword_1EDEBC5D8);
          v16 = sub_1C2F761DC();
          v17 = sub_1C2F769EC();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_1C2EF2000, v16, v17, "TUCallTranslationStateChanged", v18, 2u);
            MEMORY[0x1C6929E80](v18, -1, -1);
          }

          swift_beginAccess();
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            v20 = v19;
            v21 = [v22 translationSession];
            sub_1C2F0A0F8(v21);
          }

          goto LABEL_18;
        }

        v11 = sub_1C2F76EFC();

        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C2F0A8D8(v23, &qword_1EC075D38, &qword_1C2F78BB0);
  }

  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C2F761FC();
  __swift_project_value_buffer(v12, qword_1EDEBC5D8);
  v0 = sub_1C2F761DC();
  v13 = sub_1C2F769EC();
  if (os_log_type_enabled(v0, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C2EF2000, v0, v13, "Couldn't find call", v14, 2u);
    MEMORY[0x1C6929E80](v14, -1, -1);
  }

LABEL_18:
}

id CallTranslationService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C2F05B9C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
  sub_1C2F7628C();
  return v3;
}

uint64_t sub_1C2F05BDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E08, &unk_1C2F7A1C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2F7630C();
  sub_1C2EF7414(&unk_1EDEBC598, &unk_1EC075E08, &unk_1C2F7A1C0);
  v6 = sub_1C2F762AC();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1C2F05DC4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isRemoteStartedSubject);
  sub_1C2F7628C();
  return v3;
}

uint64_t sub_1C2F05E28(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *(*v6 + *a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_1C2EF7414(a6, a4, a5);
  return sub_1C2F762AC();
}

uint64_t sub_1C2F05EBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075E18, &qword_1C2F78BF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D88, &unk_1C2F78BC0);
  sub_1C2EF7414(&unk_1EDEBC560, &qword_1EC075D88, &unk_1C2F78BC0);
  sub_1C2F762BC();

  sub_1C2EF7414(&unk_1EDEBC5A8, &qword_1EC075E18, &qword_1C2F78BF0);
  v6 = sub_1C2F762AC();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1C2F06080()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C2F06110;

  return CallTranslationService.availableLanguages()();
}

uint64_t sub_1C2F06110(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1C2F0629C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C2F06348;

  return CallTranslationService.availableRemoteLanguage(for:)(a1, a2);
}

uint64_t sub_1C2F06348()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_1C2F0643C()
{
  if (!*(*v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result displayName];

    v4 = sub_1C2F766CC();
    return v4;
  }

  return result;
}

void *sub_1C2F064C8()
{
  if (!*(*v0 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call))
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result translationAvailability];

    return (v3 == 3);
  }

  return result;
}

uint64_t sub_1C2F0652C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isShowingRemoteLocale;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1C2F06574(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isShowingRemoteLocale;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t (*sub_1C2F065C8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

id _s20CommunicationsUICore17AudioRouteServiceCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2F06760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C2F7688C();
  *(v4 + 24) = sub_1C2F7687C();
  v6 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F067F8, v6, v5);
}

uint64_t sub_1C2F067F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  if (*(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call) && (Strong = swift_unknownObjectWeakLoadStrong(), v4 = [Strong translationSession], Strong, v4))
  {

    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C2F761FC();
    __swift_project_value_buffer(v5, qword_1EDEBC5D8);
    v6 = sub_1C2F761DC();
    v7 = sub_1C2F769DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C2EF2000, v6, v7, "Remote is trying to start with existing translation. What to do?", v8, 2u);
      MEMORY[0x1C6929E80](v8, -1, -1);
    }
  }

  else
  {
    v9 = *(*(v0 + 16) + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isRemoteStartedSubject);
    *(v0 + 32) = 1;
    sub_1C2F7627C();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C2F06978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C2EF6A3C(a3, v27 - v11, &unk_1EC076AB0, &qword_1C2F78C20);
  v13 = sub_1C2F768AC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C2F0A8D8(v12, &unk_1EC076AB0, &qword_1C2F78C20);
  }

  else
  {
    sub_1C2F7689C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C2F7684C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C2F7672C() + 32;
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

      sub_1C2F0A8D8(a3, &unk_1EC076AB0, &qword_1C2F78C20);

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

  sub_1C2F0A8D8(a3, &unk_1EC076AB0, &qword_1C2F78C20);
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

uint64_t sub_1C2F06C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C2EF6A3C(a3, v27 - v11, &unk_1EC076AB0, &qword_1C2F78C20);
  v13 = sub_1C2F768AC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C2F0A8D8(v12, &unk_1EC076AB0, &qword_1C2F78C20);
  }

  else
  {
    sub_1C2F7689C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C2F7684C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C2F7672C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075FF8, &qword_1C2F78F90);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1C2F0A8D8(a3, &unk_1EC076AB0, &qword_1C2F78C20);

      return v24;
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

  sub_1C2F0A8D8(a3, &unk_1EC076AB0, &qword_1C2F78C20);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075FF8, &qword_1C2F78F90);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1C2F06F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C2EF6A3C(a3, v27 - v11, &unk_1EC076AB0, &qword_1C2F78C20);
  v13 = sub_1C2F768AC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C2F0A8D8(v12, &unk_1EC076AB0, &qword_1C2F78C20);
  }

  else
  {
    sub_1C2F7689C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C2F7684C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_1C2F7672C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1C2F7623C();

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

      sub_1C2F0A8D8(v27[0], &unk_1EC076AB0, &qword_1C2F78C20);

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

  sub_1C2F0A8D8(a3, &unk_1EC076AB0, &qword_1C2F78C20);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1C2F7623C();
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1C2F072C0(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  if (qword_1EDEBC5D0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C2F761FC();
  __swift_project_value_buffer(v11, qword_1EDEBC5D8);
  v12 = sub_1C2F761DC();
  v13 = sub_1C2F769EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C2EF2000, v12, v13, a1, v14, 2u);
    MEMORY[0x1C6929E80](v14, -1, -1);
  }

  v15 = sub_1C2F768AC();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_1C2F7688C();
  v16 = v6;
  v17 = sub_1C2F7687C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  sub_1C2F06978(0, 0, v10, a3, v18);
}

uint64_t sub_1C2F0749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1C2F7688C();
  *(v4 + 24) = sub_1C2F7687C();
  v6 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F07534, v6, v5);
}

uint64_t sub_1C2F07534()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  if (*(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_call) && (v3 = swift_unknownObjectWeakLoadStrong(), v4 = [v3 translationSession], v3, v4))
  {

    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C2F761FC();
    __swift_project_value_buffer(v5, qword_1EDEBC5D8);
    v6 = sub_1C2F761DC();
    v7 = sub_1C2F769DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C2EF2000, v6, v7, "Remote is trying to end with existing translation. Trying to ensure we respect local state.", v8, 2u);
      MEMORY[0x1C6929E80](v8, -1, -1);
    }

    v9 = *(v0 + 16);

    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = [Strong translationSession];

    sub_1C2F0A0F8(v11);
  }

  else
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C2F761FC();
    __swift_project_value_buffer(v12, qword_1EDEBC5D8);
    v13 = sub_1C2F761DC();
    v14 = sub_1C2F769EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C2EF2000, v13, v14, "Initiator stops translation, receiver also needs to stop the transcripts", v15, 2u);
      MEMORY[0x1C6929E80](v15, -1, -1);
    }

    v9 = *(v0 + 16);

    CallTranslationService.stopRemoteTranscripts(remoteLeaves:)(1);
  }

  v16 = *(v9 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isRemoteStartedSubject);
  *(v0 + 32) = 0;
  sub_1C2F7627C();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t CallTranslationService.passRemoteMessage(_:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-v5 - 8];
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  v19 = *(a1 + 4);
  v8 = sub_1C2F768AC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1C2F7688C();
  v9 = v1;
  sub_1C2F09740(&v17, v16);
  v10 = sub_1C2F7687C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v9;
  v13 = v18;
  *(v11 + 40) = v17;
  *(v11 + 56) = v13;
  *(v11 + 72) = v19;
  sub_1C2F06978(0, 0, v6, &unk_1C2F78C50, v11);
}

uint64_t sub_1C2F07904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  *(v5 + 152) = *a5;
  *(v5 + 156) = *(a5 + 4);
  v6 = *(a5 + 16);
  *(v5 + 112) = *(a5 + 8);
  *(v5 + 120) = v6;
  *(v5 + 128) = *(a5 + 24);
  sub_1C2F7688C();
  *(v5 + 144) = sub_1C2F7687C();
  v8 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F079BC, v8, v7);
}

uint64_t sub_1C2F079BC()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v16 = *(v0 + 112);
  v4 = *(v0 + 157);
  v5 = *(v0 + 156);
  v6 = *(v0 + 152);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);

  v9 = *(v8 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_transcriptsSubject);
  v10 = 0x100000000;
  if ((v5 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if ((v4 & 1) == 0)
  {
    v11 = 0;
  }

  *(v0 + 16) = v11 | v6 | v10;
  *(v0 + 24) = v16;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  sub_1C2F09740(v7, v0 + 56);
  sub_1C2F7627C();
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_1C2F0A6B4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1C2F07ABC(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-v5 - 8];
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  v19 = *(a1 + 4);
  v8 = sub_1C2F768AC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1C2F7688C();
  v9 = v1;
  sub_1C2F09740(&v17, v16);
  v10 = sub_1C2F7687C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v9;
  v13 = v18;
  *(v11 + 40) = v17;
  *(v11 + 56) = v13;
  *(v11 + 72) = v19;
  sub_1C2F06978(0, 0, v6, &unk_1C2F78FA0, v11);
}

uint64_t sub_1C2F07C18()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EDEBC5D8);
  __swift_project_value_buffer(v0, qword_1EDEBC5D8);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F07C9C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2 != 0;

  v3(v4);
}

BOOL sub_1C2F07D08(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1C2F07D6C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1C2F07DB8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C2F07EB0;

  return v7(a1);
}

uint64_t sub_1C2F07EB0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C2F07FA8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_1C2F07FD8(void *__src, uint64_t a2, void *__dst)
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

_BYTE **sub_1C2F07FF8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1C2F08030(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1C2EFAB28(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1C2F0808C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C2F080D8(a1, a2);
  sub_1C2F08208(&unk_1F42B2C90);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C2F080D8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C2F082F4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C2F76CDC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C2F7677C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C2F082F4(v10, 0);
        result = sub_1C2F76C5C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C2F08208(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C2F08368(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C2F082F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC0760A0, &qword_1C2F79028);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C2F08368(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC0760A0, &qword_1C2F79028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C2F084B0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1C2F1C0BC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E10, &unk_1C2F79C20);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C2F085E8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1C2F1C2C8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1C2F75C8C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_1C2F08714(size_t a1, int64_t a2, char a3)
{
  result = sub_1C2F577BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C2F08734(size_t a1, int64_t a2, char a3)
{
  result = sub_1C2F577E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2F08754(char *a1, int64_t a2, char a3)
{
  result = sub_1C2F579EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2F08774(char *a1, int64_t a2, char a3)
{
  result = sub_1C2F57AF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C2F08794(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C2F08888;

  return v6(v2 + 32);
}

uint64_t sub_1C2F08888()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1C2F0899C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1C2F08A90;

  return v6(v2 + 16);
}

uint64_t sub_1C2F08A90()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

id sub_1C2F08BC0(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_session) = 0;
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_currentStartSessionTask) = 0;
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToJoinGroupSession) = 0;
  v9 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076098, &qword_1C2F79020);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(a4 + v9) = v10;
  v11 = MEMORY[0x1E69E7CC0];
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionCancellables) = MEMORY[0x1E69E7CC0];
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_observers) = v11;
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToReportRemoteStarted) = 0;
  *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_sessionObserverTask) = 0;
  if (qword_1EDEBC648 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v12 = sub_1C2F761FC();
    __swift_project_value_buffer(v12, qword_1EDEBC650);

    v13 = sub_1C2F761DC();
    v14 = sub_1C2F769EC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v67[0] = v16;
      *v15 = 136315138;
      v63 = a2;
      v17 = a3;
      v18 = ObjectType;
      v20 = *(a1 + 24);
      v19 = *(a1 + 32);

      v21 = sub_1C2EFAB28(v20, v19, v67);

      *(v15 + 4) = v21;
      ObjectType = v18;
      a3 = v17;
      a2 = v63;
      _os_log_impl(&dword_1C2EF2000, v13, v14, "init TranslationInteractionController for call %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1C6929E80](v16, -1, -1);
      MEMORY[0x1C6929E80](v15, -1, -1);
    }

    *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_call) = a1;
    *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_callCenter) = a2;
    *(a4 + OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_featureFlags) = a3;
    v66.receiver = a4;
    v66.super_class = ObjectType;

    v22 = a3;
    v23 = objc_msgSendSuper2(&v66, sel_init);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v32 = v23;
      v33 = v23;
      goto LABEL_41;
    }

    v62 = Strong;
    v25 = *(a2 + 16);
    v61 = v23;
    v60 = v23;
    v26 = v25;
    v27 = v62;
    v28 = [v26 activeConversationForCall_];
    if (!v28)
    {
      goto LABEL_36;
    }

    v59 = v22;
    v58 = v28;
    v29 = [v28 systemActivitySessions];
    sub_1C2EF5A14(0, &qword_1EDEBC4F0, 0x1E69D8B58);
    sub_1C2F0A6F8(&qword_1EDEBC4E0, &qword_1EDEBC4F0, 0x1E69D8B58);
    a3 = sub_1C2F7697C();

    v64 = a2;
    if ((a3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1C2F76B7C();
      sub_1C2F769AC();
      a4 = v67[0];
      a1 = v67[1];
      v30 = v67[2];
      ObjectType = v67[3];
      v31 = v67[4];
    }

    else
    {
      v34 = -1 << *(a3 + 32);
      a4 = a3;
      a1 = a3 + 56;
      v30 = ~v34;
      v35 = -v34;
      v36 = v35 < 64 ? ~(-1 << v35) : -1;
      v31 = v36 & *(a3 + 56);

      ObjectType = 0;
    }

    a2 = (v30 + 64) >> 6;
    if (a4 < 0)
    {
      break;
    }

LABEL_14:
    v37 = ObjectType;
    v38 = v31;
    if (v31)
    {
LABEL_18:
      v39 = (v38 - 1) & v38;
      v40 = *(*(a4 + 48) + ((ObjectType << 9) | (8 * __clz(__rbit64(v38)))));
      if (v40)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }

    while (1)
    {
      ObjectType = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (ObjectType >= a2)
      {
        v40 = 0;
        goto LABEL_33;
      }

      v38 = *(a1 + 8 * ObjectType);
      ++v37;
      if (v38)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  while (sub_1C2F76BDC())
  {
    swift_dynamicCast();
    v40 = v65;
    v39 = v31;
    if (!v65)
    {
      goto LABEL_33;
    }

LABEL_22:
    v41 = [v40 activity];
    v42 = [v41 activityIdentifier];

    v43 = sub_1C2F766CC();
    a3 = v44;

    if (qword_1EC075CB0 != -1)
    {
      swift_once();
    }

    if (v43 == qword_1EC07B920 && a3 == *algn_1EC07B928)
    {

      goto LABEL_33;
    }

    v46 = sub_1C2F76EFC();

    if (v46)
    {
      goto LABEL_33;
    }

    v31 = v39;
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }
  }

  v40 = 0;
LABEL_33:
  sub_1C2F0AAB8();

  v47 = OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession;
  v48 = *&v60[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession];
  *&v60[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_activitySession] = v40;

  v49 = *&v60[v47];
  a2 = v64;
  if (v49)
  {
    v22 = v59;
    v27 = v62;
    if ([v49 isLocallyInitiated])
    {

LABEL_36:
      v33 = v61;
      goto LABEL_41;
    }

    v50 = sub_1C2F761DC();
    v51 = sub_1C2F769EC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1C2EF2000, v50, v51, "found previous remote session, need to notify delegate", v52, 2u);
      v53 = v52;
      v27 = v62;
      MEMORY[0x1C6929E80](v53, -1, -1);
    }

    v33 = v61;
    v60[OBJC_IVAR____TtC20CommunicationsUICore32TranslationInteractionController_needsToReportRemoteStarted] = 1;
  }

  else
  {

    v22 = v59;
    v33 = v61;
  }

LABEL_41:
  v54 = [*(a2 + 16) conversationManager];
  sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
  v55 = v33;
  v56 = sub_1C2F76A2C();
  [v54 addDelegate:v55 queue:v56];

  return v55;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1C2F09348(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

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

uint64_t sub_1C2F09460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1C2F094C8(char a1)
{
  v3 = *(sub_1C2F75C8C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(v1 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v1 + 16);

  sub_1C2F008BC(a1, v9, v1 + v5, v1 + v7, v8);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2F09598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return sub_1C2F06760(a1, v4, v5, v6);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2F0968C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F06348;

  return sub_1C2F0749C(a1, v4, v5, v6);
}

uint64_t sub_1C2F0979C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F0AC48;

  return sub_1C2F07904(a1, v4, v5, v6, (v1 + 5));
}

uint64_t dispatch thunk of CallTranslationServicing.availableLanguages()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2F06110;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CallTranslationServicing.availableRemoteLanguage(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C2F0AC48;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1C2F09C28(uint64_t a1, int a2)
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

uint64_t sub_1C2F09C48(uint64_t result, int a2, int a3)
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

uint64_t sub_1C2F09CE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C2F0AC48;

  return sub_1C2F08794(a1, v5);
}

uint64_t sub_1C2F09DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2F764EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2F7651C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v14 = sub_1C2F7688C();
    MEMORY[0x1EEE9AC00](v14);
    *(&v18 - 2) = a1;
    *(&v18 - 1) = a2;
    return sub_1C2F054CC(sub_1C2F0A830, (&v18 - 4));
  }

  else
  {
    sub_1C2EF5A14(0, &qword_1EDEBC510, 0x1E69E9610);
    v19 = v9;
    v18 = sub_1C2F76A2C();
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2F40688;
    aBlock[3] = &block_descriptor_92;
    v16 = _Block_copy(aBlock);

    sub_1C2F764FC();
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C2EF7384(&qword_1EC076700, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
    sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000);
    sub_1C2F76B3C();
    v17 = v18;
    MEMORY[0x1C6929010](0, v13, v8, v16);
    _Block_release(v16);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v19);
  }
}

void sub_1C2F0A0F8(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = a1;
    sub_1C2EF6AA4(a1);
    v5 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
    sub_1C2F7628C();
    if (LOBYTE(v13[0]) == 1)
    {
      sub_1C2F025F0(0);
    }

    else
    {
      sub_1C2EF6A3C(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_interactionController, v13, &qword_1EC075DE0, &qword_1C2F78BD8);
      v11 = v14;
      if (v14)
      {
        v12 = v15;
        __swift_project_boxed_opaque_existential_1(v13, v14);
        (*(v12 + 16))(v11, v12);

        __swift_destroy_boxed_opaque_existential_1Tm(v13);
      }

      else
      {

        sub_1C2F0A8D8(v13, &qword_1EC075DE0, &qword_1C2F78BD8);
      }
    }
  }

  else
  {
    if (qword_1EDEBC5D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C2F761FC();
    __swift_project_value_buffer(v6, qword_1EDEBC5D8);
    v7 = sub_1C2F761DC();
    v8 = sub_1C2F769EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C2EF2000, v7, v8, "Couldn't find translation session", v9, 2u);
      MEMORY[0x1C6929E80](v9, -1, -1);
    }

    v10 = *(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CallTranslationService_isTranslationStartedSubject);
    LOBYTE(v13[0]) = 0;
    sub_1C2F7627C();
    sub_1C2EF724C();
  }
}

void sub_1C2F0A2D8(void *a1)
{
  v3 = sub_1C2F75AEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_call))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_callCenter);
      v21[0] = v12;
      v14 = [v13 activeConversationForCall_];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 UUID];
        sub_1C2F75ACC();

        v17 = [a1 UUID];
        sub_1C2F75ACC();

        LOBYTE(v17) = sub_1C2F75ABC();
        v18 = *(v4 + 8);
        v18(v8, v3);
        v18(v10, v3);
        if (v17)
        {
          v19 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore20ConversationObserver_activeParticipentUpdateSubject);
          v21[1] = a1;
          sub_1C2F7625C();
        }

        else
        {
        }
      }

      else
      {
        v20 = v21[0];
      }
    }
  }
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C2F0A544(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C2F0AC48;

  return sub_1C2F0899C(a1, v5);
}

uint64_t sub_1C2F0A5FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C2F06348;

  return sub_1C2F0899C(a1, v5);
}

uint64_t sub_1C2F0A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C2F0A6F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C2EF5A14(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C2F0A750(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C2F0AC48;

  return sub_1C2F07DB8(a1, v5);
}

uint64_t sub_1C2F0A830()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C2F0A860()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_88Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2F0A8D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_107Tm()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2F0AAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
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

uint64_t sub_1C2F0AB90(uint64_t a1, int a2)
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

uint64_t sub_1C2F0ABB0(uint64_t result, int a2, int a3)
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

void sub_1C2F0ABEC(uint64_t a1, unint64_t *a2)
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

uint64_t String.init(_localized:table:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v6 = sub_1C2F75C8C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1C2F7669C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v14 = sub_1C2F766EC();
  (*(v9 + 8))(a1, v8);
  return v14;
}

id sub_1C2F0AE78(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    v3 = sub_1C2F766CC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C2F0AEE4(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0762F0, &unk_1C2F791A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = sub_1C2F75E5C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CD0];
  v4[6] = 0;
  v4[7] = v18;
  v4[8] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076098, &qword_1C2F79020);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v4[9] = v19;
  v4[4] = a3;
  (*(v14 + 104))(v17, *MEMORY[0x1E696B268], v13);
  v20 = sub_1C2F75EAC();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = a3;

  v24 = sub_1C2F75E9C();
  v4[2] = a1;
  v4[3] = v24;
  swift_unknownObjectUnownedInit();
  v25 = v4[3];
  sub_1C2F0C770();
  sub_1C2F0C7C4();

  sub_1C2F75E8C();

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1C2F0C954;
  *(v27 + 24) = v26;
  sub_1C2EF7414(&qword_1EC0762F8, &qword_1EC0762F0, &unk_1C2F791A0);
  v28 = sub_1C2F7631C();

  (*(v9 + 8))(v12, v8);
  v29 = v4[6];
  v4[6] = v28;

  if (qword_1EC075C60 != -1)
  {
    swift_once();
  }

  v30 = sub_1C2F761FC();
  __swift_project_value_buffer(v30, qword_1EC0762C0);

  v31 = sub_1C2F761DC();
  v32 = sub_1C2F769EC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = a1;
    v42 = v34;
    *v33 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
    v40 = v23;
    sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0);
    v35 = sub_1C2F76EEC();
    v37 = sub_1C2EFAB28(v35, v36, &v42);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1C2EF2000, v31, v32, "init TranslationInteractionSession for %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1C6929E80](v34, -1, -1);
    MEMORY[0x1C6929E80](v33, -1, -1);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1C2F0B398(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v16 = sub_1C2F75FCC();
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v22 = v12;
    v23 = v13;
    sub_1C2F75E6C();
    sub_1C2F0B4E8(&v17);

    return (*(v3 + 8))(v6, v16);
  }

  return result;
}

uint64_t sub_1C2F0B4E8(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v11 = *(a1 + 6);
  if (qword_1EC075C60 != -1)
  {
    swift_once();
  }

  v6 = sub_1C2F761FC();
  __swift_project_value_buffer(v6, qword_1EC0762C0);
  v7 = sub_1C2F761DC();
  v8 = sub_1C2F769EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C2EF2000, v7, v8, "get remote message", v9, 2u);
    MEMORY[0x1C6929E80](v9, -1, -1);
  }

  LODWORD(v12[0]) = v1;
  BYTE4(v12[0]) = v2;
  BYTE5(v12[0]) = v3;
  v12[1] = v4;
  v12[2] = v5;
  v13 = v11;
  return sub_1C2F0B94C(v12);
}

uint64_t sub_1C2F0B620()
{
  if (qword_1EC075C60 != -1)
  {
    swift_once();
  }

  v1 = sub_1C2F761FC();
  __swift_project_value_buffer(v1, qword_1EC0762C0);

  v2 = sub_1C2F761DC();
  v3 = sub_1C2F769EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v12 = *(v0 + 16);
    v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076300, &qword_1C2F791B0);
    sub_1C2EF7414(&qword_1EC076F40, &qword_1EC076300, &qword_1C2F791B0);
    v6 = sub_1C2F76EEC();
    v8 = sub_1C2EFAB28(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1C2EF2000, v2, v3, "Invalidating translation interaction session: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1C6929E80](v5, -1, -1);
    MEMORY[0x1C6929E80](v4, -1, -1);
  }

  if (*(v0 + 48))
  {
    v9 = *(v0 + 48);

    sub_1C2F7622C();
  }

  v10 = *(v0 + 16);
  return sub_1C2F75F0C();
}

uint64_t sub_1C2F0B7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s20CommunicationsUICore12WeakDelegateCMa_0();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v6 = swift_beginAccess();
  MEMORY[0x1C6928DA0](v6);
  if (*((*(a1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*(a1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C2F7680C();
  }

  sub_1C2F7682C();
  return swift_endAccess();
}

uint64_t sub_1C2F0B8E0(uint64_t result, void (*a2)(uint64_t, uint64_t))
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = swift_unknownObjectRetain();
      a2(v7, v5);
      result = swift_unknownObjectRelease();
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1C2F0B94C(void *a1)
{
  v2 = v1;
  v4 = sub_1C2F764EC();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1C2F7651C();
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 1);
  v45[0] = *a1;
  v45[1] = v9;
  v46 = a1[4];
  if (qword_1EC075C60 != -1)
  {
LABEL_23:
    swift_once();
  }

  v10 = sub_1C2F761FC();
  __swift_project_value_buffer(v10, qword_1EC0762C0);
  v11 = sub_1C2F761DC();
  v12 = sub_1C2F769EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1C2EF2000, v11, v12, "receivedRemoteMessage", v13, 2u);
    MEMORY[0x1C6929E80](v13, -1, -1);
  }

  v14 = swift_allocObject();
  v15 = *(a1 + 1);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  v16 = a1[4];
  v37 = v14;
  *(v14 + 48) = v16;
  v17 = *(v2 + 72);
  sub_1C2F09740(v45, aBlock);
  v36 = v17;
  os_unfair_lock_lock(v17 + 4);
  swift_beginAccess();
  v18 = *(v2 + 64);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v34 = *(v2 + 64);
    }

    v2 = sub_1C2F76BBC();
  }

  else
  {
    v2 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = 0;
  a1 = MEMORY[0x1E69E7CC0];
  while (v2 != v19)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1C6929250](v19, v18);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v20 = *(v18 + 8 * v19 + 32);

      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v23 = *(v20 + 24);

    ++v19;
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_1C2F1C3FC(0, a1[2] + 1, 1, a1);
      }

      v25 = a1[2];
      v24 = a1[3];
      if (v25 >= v24 >> 1)
      {
        a1 = sub_1C2F1C3FC((v24 > 1), v25 + 1, 1, a1);
      }

      a1[2] = v25 + 1;
      v26 = &a1[2 * v25];
      v26[4] = Strong;
      v26[5] = v23;
      v19 = v21;
    }
  }

  os_unfair_lock_unlock(v36 + 4);
  sub_1C2F0CA5C();
  v27 = sub_1C2F76A2C();
  v28 = swift_allocObject();
  v28[2] = a1;
  v28[3] = sub_1C2F0C9F0;
  v28[4] = v37;
  aBlock[4] = sub_1C2F0CAA8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F40688;
  aBlock[3] = &block_descriptor_0;
  v29 = _Block_copy(aBlock);

  v30 = v38;
  sub_1C2F764FC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2F0CACC(&qword_1EC076700, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2EF7414(&qword_1EC076710, &unk_1EC076060, &unk_1C2F79000);
  v31 = v40;
  v32 = v43;
  sub_1C2F76B3C();
  MEMORY[0x1C6929010](0, v30, v31, v29);
  _Block_release(v29);

  (*(v42 + 8))(v31, v32);
  return (*(v39 + 8))(v30, v41);
}

uint64_t sub_1C2F0BEC8(__int128 *a1, uint64_t a2)
{
  v4 = sub_1C2F75FEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2F75FCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v44 = *a1;
  v45 = v14;
  v46 = *(a1 + 4);
  if (qword_1EC075C60 != -1)
  {
    swift_once();
  }

  v15 = sub_1C2F761FC();
  __swift_project_value_buffer(v15, qword_1EC0762C0);
  (*(v10 + 16))(v13, a2, v9);
  sub_1C2F09740(&v44, &v41);
  v16 = sub_1C2F761DC();
  v17 = sub_1C2F769EC();
  sub_1C2F0AA10(&v44);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v38 = v4;
    v21 = v20;
    v40[0] = v20;
    *v19 = 136315394;
    v41 = v44;
    v42 = v45;
    v43 = v46;
    v22 = CallTranslationTranscript.description.getter();
    v24 = sub_1C2EFAB28(v22, v23, v40);
    v36[1] = a2;
    v25 = v24;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    sub_1C2F0CACC(&qword_1EC0762E8, MEMORY[0x1E696B330]);
    v26 = sub_1C2F76EEC();
    v28 = v27;
    (*(v10 + 8))(v13, v9);
    v29 = sub_1C2EFAB28(v26, v28, v40);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_1C2EF2000, v16, v17, "send transcript %s to remote participant %s", v19, 0x16u);
    swift_arrayDestroy();
    v30 = v21;
    v4 = v38;
    MEMORY[0x1C6929E80](v30, -1, -1);
    v31 = v19;
    v5 = v37;
    MEMORY[0x1C6929E80](v31, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v32 = *(v39 + 24);
  v41 = v44;
  v42 = v45;
  v43 = v46;
  sub_1C2F75FDC();
  v33 = swift_allocObject();
  v34 = v45;
  *(v33 + 16) = v44;
  *(v33 + 32) = v34;
  *(v33 + 48) = v46;
  sub_1C2F09740(&v44, v40);
  sub_1C2F0C770();
  sub_1C2F0C7C4();
  sub_1C2F75E7C();

  return (*(v5 + 8))(v8, v4);
}

void sub_1C2F0C2F4(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_1EC075C60 != -1)
    {
      swift_once();
    }

    v4 = sub_1C2F761FC();
    __swift_project_value_buffer(v4, qword_1EC0762C0);
    v5 = a1;
    oslog = sub_1C2F761DC();
    v6 = sub_1C2F769EC();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1C2EF2000, oslog, v6, "Failed to send message error: %@", v7, 0xCu);
      sub_1C2F0C8EC(v8);
      MEMORY[0x1C6929E80](v8, -1, -1);
      MEMORY[0x1C6929E80](v7, -1, -1);

      v11 = oslog;
    }

    else
    {

      v11 = a1;
    }
  }

  else
  {
    if (qword_1EC075C60 != -1)
    {
      swift_once();
    }

    v13 = sub_1C2F761FC();
    __swift_project_value_buffer(v13, qword_1EC0762C0);
    sub_1C2F09740(a2, v24);
    v14 = sub_1C2F761DC();
    v15 = sub_1C2F769EC();
    sub_1C2F0AA10(a2);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = *(a2 + 16);
      v24[0] = *a2;
      v24[1] = v18;
      v25 = *(a2 + 32);
      v19 = CallTranslationTranscript.description.getter();
      v21 = sub_1C2EFAB28(v19, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C2EF2000, v14, v15, "sent transcript %s successfully", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1C6929E80](v17, -1, -1);
      MEMORY[0x1C6929E80](v16, -1, -1);
    }
  }
}

uint64_t sub_1C2F0C5D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  swift_unknownObjectUnownedDestroy();
  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return v0;
}

uint64_t sub_1C2F0C630()
{
  sub_1C2F0C5D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F0C68C()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EC0762C0);
  __swift_project_value_buffer(v0, qword_1EC0762C0);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F0C70C()
{
  sub_1C2F0CB14(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1C2F0C770()
{
  result = qword_1EC0762D8;
  if (!qword_1EC0762D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0762D8);
  }

  return result;
}

unint64_t sub_1C2F0C7C4()
{
  result = qword_1EC0762E0;
  if (!qword_1EC0762E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0762E0);
  }

  return result;
}

uint64_t sub_1C2F0C818(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1C2F0C878(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1C2F0C8EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076070, &qword_1C2F7A190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F0C95C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076308, &qword_1C2F791B8);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2F0C9F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 32);
  v7[0] = *(v2 + 16);
  v7[1] = v5;
  v8 = *(v2 + 48);
  return (*(a2 + 8))(v7, ObjectType, a2);
}

unint64_t sub_1C2F0CA5C()
{
  result = qword_1EDEBC510;
  if (!qword_1EDEBC510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBC510);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}