uint64_t NoticeRecipeGenerator.reactionNoticeRecipe(controlsManager:notice:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _UNKNOWN **a3@<X3>, uint64_t a4@<X8>)
{
  v88 = a3;
  v99 = a4;
  v95 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v95);
  *&v94 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v93 = type metadata accessor for UUID();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v97 = &v87 - v9;
  v101 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v101);
  v11 = (&v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v87 - v13;
  v14 = type metadata accessor for ParticipantReaction(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Participant(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v103 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v87 - v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v87 - v28;
  v30 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v100 = a1;
  v30(v27);
  v32 = v31;
  ObjectType = swift_getObjectType();
  v34 = (*(v32 + 512))(ObjectType, v32);
  swift_unknownObjectRelease();
  v96 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  v35 = a2;
  v36 = *a2;
  v37 = *(v36 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  v102 = v29;
  if (v37)
  {
    v89 = v35;
    __dst[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v38 = __dst[0];
    v39 = v36 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v40 = *(v15 + 72);
    do
    {
      outlined init with copy of SessionActivationRequestNotice(v39, v17, type metadata accessor for ParticipantReaction);
      outlined init with take of FaceIDUnavailableNotice(v17, v21, type metadata accessor for Participant);
      __dst[0] = v38;
      v41 = *(v38 + 16);
      if (v41 >= *(v38 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v38 = __dst[0];
      }

      *(v38 + 16) = v41 + 1;
      outlined init with take of FaceIDUnavailableNotice(v21, v38 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v41, type metadata accessor for Participant);
      v39 += v40;
      --v37;
    }

    while (v37);
    v29 = v102;
    v35 = v89;
  }

  type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v42 = ConversationControlsBadgingAvatarViewController.__allocating_init(contactStore:participants:badgeImage:)(v96, v38, 0);
  v43 = v95;
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v95);
  if (SBUIIsSystemApertureEnabled())
  {
    v44 = v90;
    ReactionNotice.fullSentence.getter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s10Foundation16AttributedStringVSgMd);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v43);
    outlined init with take of AttributedString?(v44, v29);
  }

  __dst[3] = type metadata accessor for ReactionNotice(0);
  __dst[4] = &protocol witness table for ReactionNotice;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__dst);
  outlined init with copy of SessionActivationRequestNotice(v35, boxed_opaque_existential_1, type metadata accessor for ReactionNotice);
  LOBYTE(__dst[5]) = 1;
  v90 = [v42 view];
  v46 = v100;
  v47 = MEMORY[0x1E69E7D40];
  v48 = v91;
  (*((*MEMORY[0x1E69E7D40] & *v100) + 0x2A8))();
  v49 = *((*v47 & *v42) + 0x58);
  v96 = v42;
  v89 = v49(v48);
  (*(v92 + 8))(v48, v93);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v50._countAndFlagsBits = ReactionNotice.title.getter();
  isa = NSAttributedString.__allocating_init(string:)(v50).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BC4BAC30;
  ReactionNotice.attributedSubtitle.getter();
  *(v52 + 32) = NSAttributedString.init(_:)();
  v53 = v103;
  outlined init with copy of Notice?(v29, v103, &_s10Foundation16AttributedStringVSgMd);
  ConversationControlsHelper.buttonShelfActions(controlsManager:)(v46, v107);
  v93 = v107[1];
  v94 = v107[0];
  v92 = v108;
  v54 = v109;
  v55 = v101;
  v56 = *(v101 + 36);
  __swift_storeEnumTagSinglePayload(v11 + v56, 1, 1, v43);
  v57 = (v11 + v55[10]);
  v58 = v11 + v55[15];
  *(v58 + 4) = 0;
  *v58 = 0u;
  *(v58 + 1) = 0u;
  v58[40] = -2;
  *(v11 + v55[16]) = 0;
  v59 = v11 + v55[17];
  v60 = v11 + v55[18];
  *v60 = 1;
  *(v60 + 8) = 0u;
  *(v60 + 24) = 0u;
  *(v60 + 40) = 0u;
  *(v60 + 56) = 0u;
  v60[72] = 0;
  outlined init with copy of ConversationControlsType(__dst, v11);
  v61 = v90;
  v11[6] = 0;
  v11[7] = v61;
  v62 = v89;
  v11[8] = 0;
  v11[9] = v62;
  v11[10] = isa;
  v11[11] = v52;
  v57[1] = 0;
  v57[2] = 0;
  *v57 = 0;
  outlined assign with copy of AttributedString?(v53, v11 + v56);
  *(v11 + v55[11]) = 2;
  *(v11 + v55[12]) = 1;
  *(v11 + v55[13]) = 1;
  *(v11 + v55[14]) = 1;
  *v59 = 0;
  *(v59 + 1) = 0;
  v59[16] = -1;
  v63 = *(*&v107[0] + 16);
  if (v109 < 0)
  {
    if (v63 > 5)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, &static Logger.conversationControls);

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v107);
      v76 = os_log_type_enabled(v65, v66);
      v68 = v102;
      if (!v76)
      {
        goto LABEL_21;
      }

      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      __src[0] = v70;
      *v69 = 136315138;
      v104 = v63;
      v77 = String.init<A>(reflecting:)();
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, __src);

      *(v69 + 4) = v79;
      v74 = "Too many buttonShelf actions (%s)";
      goto LABEL_20;
    }
  }

  else if (v63 > 2)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, &static Logger.conversationControls);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();
    outlined destroy of ConversationControlsRecipe.Actions(v107);
    v67 = os_log_type_enabled(v65, v66);
    v68 = v102;
    if (!v67)
    {
      goto LABEL_21;
    }

    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    __src[0] = v70;
    *v69 = 136315138;
    v104 = v63;
    v71 = String.init<A>(reflecting:)();
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, __src);

    *(v69 + 4) = v73;
    v74 = "Too many trailing actions (%s)";
LABEL_20:
    _os_log_impl(&dword_1BBC58000, v65, v66, v74, v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1BFB23DF0](v70, -1, -1);
    v80 = v69;
    v55 = v101;
    MEMORY[0x1BFB23DF0](v80, -1, -1);
LABEL_21:

    outlined destroy of ConversationControlsRecipe.Actions(v107);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(__dst);
    v81 = v98;
    v82 = v97;
    outlined destroy of FaceIDUnavailableNotice(v11, type metadata accessor for ConversationControlsRecipe);
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v55);
    goto LABEL_23;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, &_s10Foundation16AttributedStringVSgMd);
  outlined destroy of ConversationControlsType(__dst);
  v83 = v93;
  *v58 = v94;
  *(v58 + 1) = v83;
  *(v58 + 4) = v92;
  v58[40] = v54;
  v82 = v97;
  outlined init with copy of SessionActivationRequestNotice(v11, v97, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v82, 0, 1, v55);
  outlined destroy of FaceIDUnavailableNotice(v11, type metadata accessor for ConversationControlsRecipe);
  v81 = v98;
  v68 = v102;
LABEL_23:
  if (__swift_getEnumTagSinglePayload(v82, 1, v55) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s10Foundation16AttributedStringVSgMd);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    return __swift_storeEnumTagSinglePayload(v99, 1, 1, v55);
  }

  else
  {
    outlined init with take of FaceIDUnavailableNotice(v82, v81, type metadata accessor for ConversationControlsRecipe);
    if (SBUIIsSystemApertureEnabled())
    {
      ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v100, 64, v88, __src);

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s10Foundation16AttributedStringVSgMd);
      v85 = v55[18];
      memcpy(__dst, (v81 + v85), 0x49uLL);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
      memcpy((v81 + v85), __src, 0x49uLL);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s10Foundation16AttributedStringVSgMd);
    }

    v86 = v99;
    outlined init with copy of SessionActivationRequestNotice(v81, v99, type metadata accessor for ConversationControlsRecipe);
    __swift_storeEnumTagSinglePayload(v86, 0, 1, v55);
    return outlined destroy of FaceIDUnavailableNotice(v81, type metadata accessor for ConversationControlsRecipe);
  }
}

uint64_t NoticeRecipeGenerator.sessionActionNoticeRecipe(controlsManager:notice:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, _UNKNOWN **a3@<X3>, uint64_t a4@<X8>)
{
  v114 = a3;
  v126 = a4;
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v6 - 8);
  *&v125 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v132);
  *&v124 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v122 = *(v9 - 8);
  v123 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v114 - v12;
  v14 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v114 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v130 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v114 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v114 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v114 - v29;
  v31 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0);
  v127 = a1;
  v131 = v31(v28);
  if (!v131)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, &static Logger.conversationControls);
    v53 = v127;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v136[0] = v57;
      *v56 = 136315138;
      v58 = (*((*MEMORY[0x1E69E7D40] & *v53) + 0x2A0))();
      swift_getObjectType();
      v135[0] = v58;
      v59 = String.init<A>(describing:)();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v136);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1BBC58000, v54, v55, "sessionActionNoticeRecipe: No active conversation, call: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1BFB23DF0](v57, -1, -1);
      MEMORY[0x1BFB23DF0](v56, -1, -1);
    }

    v62 = v126;
    return __swift_storeEnumTagSinglePayload(v62, 1, 1, v14);
  }

  v119 = v13;
  v120 = v19;
  v134 = v14;
  v32 = type metadata accessor for SessionActionNotice(0);
  v33 = (a2 + *(v32 + 28));
  v34 = v33[3];
  v35 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v34);
  (*(v35 + 16))(v136, v34, v35);
  v128 = 0;
  v129 = a2;
  if (LOBYTE(v136[0]) != 6)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
    v37 = v33[3];
    v36 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v37);
    v38 = *(v36 + 32);
    v39 = v36;
    a2 = v129;
    v40 = v38(v37, v39);
    v128 = static UIImageView.appIcon(for:)(v40, v41);
  }

  v42 = v32;
  v117 = *(a2 + *(v32 + 32));
  if (v117 == 1)
  {
    v44 = *a2;
    v43 = a2[1];
    v46 = a2[2];
    v45 = a2[3];
    if (v46 >> 62 != 3 || v46 == 0xC000000000000000 && !(v43 | v44 | v45) || v44 == 1 && !v43 && v46 == 0xC000000000000000 && !v45 || v44 == 2 && !v43 && v46 == 0xC000000000000000 && !v45 || v44 == 3 && !v43 && v46 == 0xC000000000000000 && !v45 || v44 == 4 && !v43 && v46 == 0xC000000000000000 && !v45 || v44 == 5 && !v43 && v46 == 0xC000000000000000 && !v45 || v44 == 6 && !v43 && v46 == 0xC000000000000000 && !v45 || v44 != 7 || v43 || v46 != 0xC000000000000000 || v45)
    {
      outlined copy of SessionActionNotice.NoticeType(*a2, a2[1], a2[2]);
      outlined consume of SessionActionNotice.NoticeType(v44, v43, v46);
      outlined consume of SessionActionNotice.NoticeType(7, 0, 0xC000000000000000);
      type metadata accessor for ConversationControlsBadgingAvatarViewController();
      v65 = [v128 image];
      v66 = [objc_opt_self() clearColor];
      v64 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v131, v65, 0, 0, v66);
      v51 = v127;
      goto LABEL_49;
    }

    outlined consume of SessionActionNotice.NoticeType(7, 0, 0xC000000000000000);
    outlined consume of SessionActionNotice.NoticeType(7, 0, 0xC000000000000000);
    v42 = v32;
  }

  v47 = [objc_opt_self() tu:v131 contactStoreConfigurationForConversation:?];
  v48 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  outlined init with copy of Notice?(a2 + *(v42 + 20), v30, &_s15ConversationKit11ParticipantVSgMd);
  v49 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s15ConversationKit11ParticipantVSgMd);
    v50 = 0;
    v51 = v127;
  }

  else
  {
    v50 = *&v30[*(v49 + 28)];
    v51 = v127;
    if (v50)
    {
      v63 = v50;
    }

    outlined destroy of FaceIDUnavailableNotice(v30, type metadata accessor for Participant);
  }

  type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v64 = ConversationControlsBadgingAvatarViewController.__allocating_init(contactStore:handle:badgeImage:)(v48, v50, [v128 image]);

LABEL_49:
  __swift_storeEnumTagSinglePayload(v133, 1, 1, v132);
  v67 = v64;
  v68 = SBUIIsSystemApertureEnabled();
  v69 = v129;
  if (v68)
  {
    SessionActionNotice.fullSentence.getter();
    v70 = v133;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v133, &_s10Foundation16AttributedStringVSgMd);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v132);
    outlined init with take of AttributedString?(v24, v70);
  }

  v138[3] = v32;
  v138[4] = &protocol witness table for SessionActionNotice;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v138);
  outlined init with copy of SessionActivationRequestNotice(v69, boxed_opaque_existential_1, type metadata accessor for SessionActionNotice);
  v139 = 1;
  v116 = [v67 view];
  v72 = MEMORY[0x1E69E7D40];
  v73 = v121;
  (*((*MEMORY[0x1E69E7D40] & *v51) + 0x2A8))();
  v115 = (*((*v72 & *v67) + 0x58))(v73);

  (*(v122 + 8))(v73, v123);
  v74 = v117;
  v118 = v67;
  if (v117)
  {
    v75 = SessionActionNotice.actionDescription.getter();
  }

  else
  {
    v75 = SessionActionNotice.attributionDescription.getter();
  }

  v77 = v75;
  v78 = v76;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v79._countAndFlagsBits = v77;
  v79._object = v78;
  v80.super.isa = NSAttributedString.__allocating_init(string:)(v79).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1BC4BAC30;
  if (v74)
  {
    SessionActionNotice.attributionDescription.getter();
  }

  else
  {
    SessionActionNotice.actionDescription.getter();
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  *(v81 + 32) = NSAttributedString.init(_:)();
  v82 = v130;
  outlined init with copy of Notice?(v133, v130, &_s10Foundation16AttributedStringVSgMd);
  ConversationControlsHelper.buttonShelfActions(controlsManager:)(v51, v140);
  v124 = v140[1];
  v125 = v140[0];
  v123 = v141;
  LODWORD(v122) = v142;
  v83 = v134[9];
  __swift_storeEnumTagSinglePayload(v16 + v83, 1, 1, v132);
  v84 = (&v16->super.isa + v134[10]);
  v85 = v16 + v134[15];
  *(v85 + 4) = 0;
  *v85 = 0u;
  *(v85 + 1) = 0u;
  v85[40] = -2;
  *(&v16->super.isa + v134[16]) = 0;
  v86 = v16 + v134[17];
  v87 = v16 + v134[18];
  *v87 = 1;
  *(v87 + 8) = 0u;
  *(v87 + 24) = 0u;
  *(v87 + 40) = 0u;
  *(v87 + 56) = 0u;
  v87[72] = 0;
  outlined init with copy of ConversationControlsType(v138, v16);
  v88 = v115;
  v89 = v116;
  v16[6].super.isa = 0;
  v16[7].super.isa = v89;
  v16[8].super.isa = 0;
  v16[9].super.isa = v88;
  v16[10].super.isa = v80.super.isa;
  v16[11].super.isa = v81;
  v84[1] = 0;
  v84[2] = 0;
  *v84 = 0;
  v90 = v16 + v83;
  v14 = v134;
  outlined assign with copy of AttributedString?(v82, v90);
  *(&v16->super.isa + v14[11]) = 2;
  *(&v16->super.isa + v14[12]) = 1;
  *(&v16->super.isa + v14[13]) = 1;
  *(&v16->super.isa + v14[14]) = 1;
  *v86 = 0;
  *(v86 + 1) = 0;
  v86[16] = -1;
  v91 = *(*&v140[0] + 16);
  if (v142 < 0)
  {
    v92 = v126;
    if (v91 > 5)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, &static Logger.conversationControls);

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v140);
      if (!os_log_type_enabled(v94, v95))
      {
        goto LABEL_69;
      }

      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v136[0] = v97;
      *v96 = 136315138;
      v135[0] = v91;
      v103 = String.init<A>(reflecting:)();
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, v136);

      *(v96 + 4) = v105;
      v101 = "Too many buttonShelf actions (%s)";
      goto LABEL_68;
    }
  }

  else
  {
    v92 = v126;
    if (v91 > 2)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Logger();
      __swift_project_value_buffer(v93, &static Logger.conversationControls);

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v140);
      if (!os_log_type_enabled(v94, v95))
      {
        goto LABEL_69;
      }

      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v136[0] = v97;
      *v96 = 136315138;
      v135[0] = v91;
      v98 = String.init<A>(reflecting:)();
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v136);

      *(v96 + 4) = v100;
      v101 = "Too many trailing actions (%s)";
LABEL_68:
      _os_log_impl(&dword_1BBC58000, v94, v95, v101, v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      MEMORY[0x1BFB23DF0](v97, -1, -1);
      MEMORY[0x1BFB23DF0](v96, -1, -1);
LABEL_69:

      outlined destroy of ConversationControlsRecipe.Actions(v140);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v130, &_s10Foundation16AttributedStringVSgMd);
      outlined destroy of ConversationControlsType(v138);
      v106 = v120;
      v107 = v118;
      outlined destroy of FaceIDUnavailableNotice(v16, type metadata accessor for ConversationControlsRecipe);
      v108 = v119;
      __swift_storeEnumTagSinglePayload(v119, 1, 1, v14);
      goto LABEL_71;
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v130, &_s10Foundation16AttributedStringVSgMd);
  outlined destroy of ConversationControlsType(v138);
  v109 = v124;
  *v85 = v125;
  *(v85 + 1) = v109;
  *(v85 + 4) = v123;
  v85[40] = v122;
  v108 = v119;
  outlined init with copy of SessionActivationRequestNotice(v16, v119, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v108, 0, 1, v14);
  outlined destroy of FaceIDUnavailableNotice(v16, type metadata accessor for ConversationControlsRecipe);
  v106 = v120;
  v107 = v118;
LABEL_71:
  if (__swift_getEnumTagSinglePayload(v108, 1, v14) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v133, &_s10Foundation16AttributedStringVSgMd);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    v62 = v92;
    return __swift_storeEnumTagSinglePayload(v62, 1, 1, v14);
  }

  outlined init with take of FaceIDUnavailableNotice(v108, v106, type metadata accessor for ConversationControlsRecipe);
  if (SBUIIsSystemApertureEnabled())
  {
    SessionActionNotice.noticeAccessory.getter();
    v111 = v137;
    if (v137 >= 2)
    {
      outlined consume of NoticeAccessory(v136[10], v137);
    }

    if (v111 <= 1)
    {
      v112 = 64;
    }

    else
    {
      v112 = 65;
    }

    ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v127, v112, v114, v135);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v133, &_s10Foundation16AttributedStringVSgMd);
    v113 = v14[18];
    memcpy(v136, (v106 + v113), 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v136, &_s15ConversationKit21SystemApertureElementVSgMd);
    memcpy((v106 + v113), v135, 0x49uLL);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v133, &_s10Foundation16AttributedStringVSgMd);
  }

  outlined init with copy of SessionActivationRequestNotice(v106, v92, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v92, 0, 1, v14);
  return outlined destroy of FaceIDUnavailableNotice(v106, type metadata accessor for ConversationControlsRecipe);
}

uint64_t NoticeRecipeGenerator.appLaunchNoticeRecipe(controlsManager:notice:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _UNKNOWN **a3@<X3>, uint64_t a4@<X8>)
{
  v102 = a3;
  v7 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v107 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = &v101 - v11;
  v113 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v113);
  v13 = (&v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v101 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v115 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  isa = (&v101 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v116 = &v101 - v22;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0))(v25);
  v112 = a4;
  v117 = a1;
  v110 = v28;
  *&v108 = a2;
  if (v28)
  {
    v29 = v28;
    v105 = v16;
    type metadata accessor for ConversationControlsBadgingAvatarViewController();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
    v30 = (*(a2 + *(type metadata accessor for AppLaunchNotice(0) + 28)) + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier);
    v31 = *v30;
    v32 = v30[1];
    v33 = v29;

    v34 = static UIImageView.appIcon(for:)(v31, v32);

    v35 = [v34 image];

    v36 = [objc_opt_self() clearColor];
    v37 = v33;
    v38 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v37, v35, 0, 0, v36);
    v114 = [v38 view];
    v39 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A8))();
    v118 = (*((*v39 & *v38) + 0x58))(v27);

    v104 = v38;
    (*(v24 + 8))(v27, v23);
  }

  else
  {
    v40 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
    v40();
    v42 = v41;
    ObjectType = swift_getObjectType();
    LOBYTE(v42) = (*(v42 + 152))(ObjectType, v42);
    swift_unknownObjectRelease();
    if ((v42 & 1) == 0)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      __swift_project_value_buffer(v91, &static Logger.conversationControls);
      v92 = a1;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        __dst[0] = v96;
        *v95 = 136315138;
        v97 = (v40)();
        swift_getObjectType();
        __src[0] = v97;
        v98 = String.init<A>(describing:)();
        v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, __dst);

        *(v95 + 4) = v100;
        _os_log_impl(&dword_1BBC58000, v93, v94, "appLaunchNoticeRecipe: No active conversation, call: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v96);
        MEMORY[0x1BFB23DF0](v96, -1, -1);
        MEMORY[0x1BFB23DF0](v95, -1, -1);
      }

      v88 = v113;
      v87 = v112;
      return __swift_storeEnumTagSinglePayload(v87, 1, 1, v88);
    }

    v105 = v16;
    v114 = 0;
    v118 = 0;
    v104 = 0;
  }

  v44 = v116;
  v45 = v109;
  __swift_storeEnumTagSinglePayload(v116, 1, 1, v109);
  v46 = SBUIIsSystemApertureEnabled();
  v47 = v108;
  if (v46)
  {
    v48 = isa;
    AppLaunchNotice.fullSentence.getter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s10Foundation16AttributedStringVSgMd);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v45);
    outlined init with take of AttributedString?(v48, v44);
  }

  __dst[3] = type metadata accessor for AppLaunchNotice(0);
  __dst[4] = &protocol witness table for AppLaunchNotice;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__dst);
  outlined init with copy of SessionActivationRequestNotice(v47, boxed_opaque_existential_1, type metadata accessor for AppLaunchNotice);
  LOBYTE(__dst[5]) = 1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v50 = v114;
  outlined copy of ConversationControlsRecipe.View?(v114, 0);
  v51 = AppLaunchNotice.noticeContent.getter();
  v53 = v52;

  v54._countAndFlagsBits = v51;
  v54._object = v53;
  isa = NSAttributedString.__allocating_init(string:)(v54).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1BC4BAC30;
  AppLaunchNotice.noticeContent.getter();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  *(v55 + 32) = NSAttributedString.init(_:)();
  v56 = v115;
  outlined init with copy of Notice?(v44, v115, &_s10Foundation16AttributedStringVSgMd);
  ConversationControlsHelper.buttonShelfActions(controlsManager:)(v117, v122);
  v107 = v122[1];
  v108 = v122[0];
  v106 = v123;
  v57 = v124;
  v58 = v113;
  v59 = *(v113 + 36);
  __swift_storeEnumTagSinglePayload(v13 + v59, 1, 1, v45);
  v60 = (v13 + v58[10]);
  v61 = v13 + v58[15];
  *(v61 + 4) = 0;
  *v61 = 0u;
  *(v61 + 1) = 0u;
  v61[40] = -2;
  *(v13 + v58[16]) = 0;
  v62 = v13 + v58[17];
  v63 = v13 + v58[18];
  *v63 = 1;
  *(v63 + 8) = 0u;
  *(v63 + 24) = 0u;
  *(v63 + 40) = 0u;
  *(v63 + 56) = 0u;
  v63[72] = 0;
  outlined init with copy of ConversationControlsType(__dst, v13);
  v13[6] = 0;
  v13[7] = v50;
  v64 = v118;
  v13[8] = 0;
  v13[9] = v64;
  v13[10] = isa;
  v13[11] = v55;
  v60[1] = 0;
  v60[2] = 0;
  *v60 = 0;
  outlined assign with copy of AttributedString?(v56, v13 + v59);
  *(v13 + v58[11]) = 2;
  *(v13 + v58[12]) = 1;
  *(v13 + v58[13]) = 1;
  *(v13 + v58[14]) = 1;
  *v62 = 0;
  *(v62 + 1) = 0;
  v62[16] = -1;
  v65 = *(*&v122[0] + 16);
  if (v124 < 0)
  {
    v66 = v112;
    v67 = v110;
    if (v65 > 5)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      __swift_project_value_buffer(v78, &static Logger.conversationControls);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v122);
      v79 = os_log_type_enabled(v70, v71);
      v68 = v117;
      if (!v79)
      {
        goto LABEL_19;
      }

      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      __src[0] = v73;
      *v72 = 136315138;
      v119 = v65;
      v80 = String.init<A>(reflecting:)();
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, __src);
      v58 = v113;

      *(v72 + 4) = v82;
      v77 = "Too many buttonShelf actions (%s)";
      goto LABEL_18;
    }
  }

  else
  {
    v66 = v112;
    v67 = v110;
    if (v65 > 2)
    {
      v68 = v117;
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      __swift_project_value_buffer(v69, &static Logger.conversationControls);

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v122);
      if (!os_log_type_enabled(v70, v71))
      {
        goto LABEL_19;
      }

      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      __src[0] = v73;
      *v72 = 136315138;
      v119 = v65;
      v74 = String.init<A>(reflecting:)();
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, __src);
      v58 = v113;

      *(v72 + 4) = v76;
      v77 = "Too many trailing actions (%s)";
LABEL_18:
      _os_log_impl(&dword_1BBC58000, v70, v71, v77, v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1BFB23DF0](v73, -1, -1);
      v83 = v72;
      v68 = v117;
      MEMORY[0x1BFB23DF0](v83, -1, -1);
LABEL_19:

      outlined destroy of ConversationControlsRecipe.Actions(v122);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, &_s10Foundation16AttributedStringVSgMd);
      outlined destroy of ConversationControlsType(__dst);
      v84 = v105;
      outlined destroy of FaceIDUnavailableNotice(v13, type metadata accessor for ConversationControlsRecipe);
      v85 = v111;
      __swift_storeEnumTagSinglePayload(v111, 1, 1, v58);
      goto LABEL_21;
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, &_s10Foundation16AttributedStringVSgMd);
  outlined destroy of ConversationControlsType(__dst);
  v86 = v107;
  *v61 = v108;
  *(v61 + 1) = v86;
  *(v61 + 4) = v106;
  v61[40] = v57;
  v85 = v111;
  outlined init with copy of SessionActivationRequestNotice(v13, v111, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v85, 0, 1, v58);
  outlined destroy of FaceIDUnavailableNotice(v13, type metadata accessor for ConversationControlsRecipe);
  v84 = v105;
  v68 = v117;
LABEL_21:
  if (__swift_getEnumTagSinglePayload(v85, 1, v58) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s10Foundation16AttributedStringVSgMd);
    outlined consume of ConversationControlsRecipe.View?(v114, 0);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    v87 = v66;
    v88 = v58;
    return __swift_storeEnumTagSinglePayload(v87, 1, 1, v88);
  }

  outlined init with take of FaceIDUnavailableNotice(v85, v84, type metadata accessor for ConversationControlsRecipe);
  if (SBUIIsSystemApertureEnabled())
  {
    ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v68, 64, v102, __src);

    outlined consume of ConversationControlsRecipe.View?(v114, 0);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s10Foundation16AttributedStringVSgMd);
    v89 = v58[18];
    memcpy(__dst, (v84 + v89), 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
    memcpy((v84 + v89), __src, 0x49uLL);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s10Foundation16AttributedStringVSgMd);
    outlined consume of ConversationControlsRecipe.View?(v114, 0);
  }

  outlined init with copy of SessionActivationRequestNotice(v84, v66, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v58);
  return outlined destroy of FaceIDUnavailableNotice(v84, type metadata accessor for ConversationControlsRecipe);
}

uint64_t NoticeRecipeGenerator.systemUpdateNoticeRecipe(controlsManager:notice:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _UNKNOWN **a3@<X3>, uint64_t a4@<X8>)
{
  if (*(a2 + 16))
  {

    return NoticeRecipeGenerator.handoffApprovalNoticeRecipe(controlsManager:notice:)(a1, a2, a3, a4);
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, &static Logger.conversationControls);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BBC58000, v7, v8, "Currently unsupported", v9, 2u);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
    }

    v10 = type metadata accessor for ConversationControlsRecipe();

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v10);
  }
}

uint64_t NoticeRecipeGenerator.faceIDUnavailableRecipe(controlsManager:notice:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _UNKNOWN **a3@<X3>, uint64_t a4@<X8>)
{
  v98 = a3;
  v105 = a2;
  v111 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v111);
  *&v103 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v95[-v8];
  v108 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v108);
  v10 = &v95[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v95[-v12];
  v14 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v14 - 8);
  *&v107 = &v95[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v109 = &v95[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v95[-v19];
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v95[-v23];
  v25 = MEMORY[0x1E69E7D40];
  v26 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0))(v22);
  if (!v26)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, &static Logger.conversationControls);
    v71 = a1;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = a4;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v114[0] = v76;
      *v75 = 136315138;
      v77 = (*((*v25 & *v71) + 0x2A0))();
      swift_getObjectType();
      v113[0] = v77;
      v78 = String.init<A>(describing:)();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v114);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_1BBC58000, v72, v73, "faceIDUnavailableRecipe: No active conversation, call: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x1BFB23DF0](v76, -1, -1);
      v81 = v75;
      a4 = v74;
      MEMORY[0x1BFB23DF0](v81, -1, -1);
    }

    v82 = v108;
    v83 = a4;
    return __swift_storeEnumTagSinglePayload(v83, 1, 1, v82);
  }

  v101 = a4;
  v102 = v13;
  v106 = a1;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  SymbolImageDescribers.FaceID.symbolImageDescription.getter();
  v27 = static UIImage.symbolImage(for:)(v115);
  outlined destroy of SymbolImageDescription(v115);
  v28 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v100 = v27;
  v29 = [v28 initWithImage_];
  [v29 setContentMode_];
  v30 = [objc_opt_self() secondaryLabelColor];
  v110 = v29;
  [v29 setTintColor_];

  __swift_storeEnumTagSinglePayload(v24, 1, 1, v111);
  if (SBUIIsSystemApertureEnabled())
  {
    v31 = [objc_opt_self() conversationKit];
    v119._object = 0xE000000000000000;
    v32._object = 0x80000001BC4F5770;
    v32._countAndFlagsBits = 0xD000000000000012;
    v33.value._countAndFlagsBits = 0x61737265766E6F43;
    v33.value._object = 0xEF74694B6E6F6974;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v119._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v119);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s10Foundation16AttributedStringVSgMd);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v111);
    outlined init with take of AttributedString?(v20, v24);
  }

  v114[3] = type metadata accessor for FaceIDUnavailableNotice(0);
  v114[4] = &protocol witness table for FaceIDUnavailableNotice;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v114);
  outlined init with copy of SessionActivationRequestNotice(v105, boxed_opaque_existential_1, type metadata accessor for FaceIDUnavailableNotice);
  LOBYTE(v114[5]) = 1;
  v99 = [v110 hash];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v36 = objc_opt_self();
  v37 = [v36 conversationKit];
  v105 = v24;
  v38 = v37;
  v120._object = 0xE000000000000000;
  v39._object = 0x80000001BC4F5770;
  v39._countAndFlagsBits = 0xD000000000000012;
  v40.value._countAndFlagsBits = 0x61737265766E6F43;
  v40.value._object = 0xEF74694B6E6F6974;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v120._countAndFlagsBits = 0;
  v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v120);

  isa = NSAttributedString.__allocating_init(string:)(v42).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1BC4BAC30;
  v45 = [v36 &off_1E7FE9588];
  v121._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0x525F474E49525544;
  v46._object = 0xE900000000000043;
  v47.value._countAndFlagsBits = 0x61737265766E6F43;
  v47.value._object = 0xEF74694B6E6F6974;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v121._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v121);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  *(v44 + 32) = NSAttributedString.init(_:)();
  v49 = v109;
  outlined init with copy of Notice?(v105, v109, &_s10Foundation16AttributedStringVSgMd);
  ConversationControlsHelper.buttonShelfActions(controlsManager:)(v106, v116);
  v103 = v116[1];
  v107 = v116[0];
  v97 = v117;
  v96 = v118;
  v50 = v108;
  v51 = *(v108 + 36);
  __swift_storeEnumTagSinglePayload(v10 + v51, 1, 1, v111);
  v52 = (v10 + v50[10]);
  v53 = v10 + v50[15];
  *(v53 + 4) = 0;
  *v53 = 0u;
  *(v53 + 1) = 0u;
  v53[40] = -2;
  *(v10 + v50[16]) = 0;
  v54 = v10 + v50[17];
  v55 = v10 + v50[18];
  *v55 = 1;
  *(v55 + 8) = 0u;
  *(v55 + 24) = 0u;
  *(v55 + 40) = 0u;
  *(v55 + 56) = 0u;
  v55[72] = 0;
  outlined init with copy of ConversationControlsType(v114, v10);
  v56 = v110;
  v10[6] = 0;
  v10[7] = v56;
  v57 = v99;
  v10[8] = 0;
  v10[9] = v57;
  v10[10] = isa;
  v10[11] = v44;
  v52[1] = 0;
  v52[2] = 0;
  *v52 = 0;
  v58 = v50;
  outlined assign with copy of AttributedString?(v49, v10 + v51);
  *(v10 + v50[11]) = 2;
  *(v10 + v50[12]) = 1;
  *(v10 + v50[13]) = 1;
  *(v10 + v50[14]) = 1;
  *v54 = 0;
  *(v54 + 1) = 0;
  v54[16] = -1;
  v59 = *(*&v116[0] + 16);
  if (v118 < 0)
  {
    v60 = v102;
    if (v59 > 5)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      __swift_project_value_buffer(v84, &static Logger.conversationControls);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v116);
      if (!os_log_type_enabled(v62, v63))
      {
        goto LABEL_21;
      }

      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v112 = v59;
      v113[0] = v65;
      *v64 = 136315138;
      v85 = String.init<A>(reflecting:)();
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, v113);

      *(v64 + 4) = v87;
      v60 = v102;
      v69 = "Too many buttonShelf actions (%s)";
      goto LABEL_20;
    }
  }

  else
  {
    v60 = v102;
    if (v59 > 2)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, &static Logger.conversationControls);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v116);
      if (!os_log_type_enabled(v62, v63))
      {
        goto LABEL_21;
      }

      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v112 = v59;
      v113[0] = v65;
      *v64 = 136315138;
      v66 = String.init<A>(reflecting:)();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v113);

      *(v64 + 4) = v68;
      v60 = v102;
      v69 = "Too many trailing actions (%s)";
LABEL_20:
      _os_log_impl(&dword_1BBC58000, v62, v63, v69, v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1BFB23DF0](v65, -1, -1);
      MEMORY[0x1BFB23DF0](v64, -1, -1);
LABEL_21:

      outlined destroy of ConversationControlsRecipe.Actions(v116);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, &_s10Foundation16AttributedStringVSgMd);
      outlined destroy of ConversationControlsType(v114);
      v88 = v101;
      v90 = v105;
      v89 = v106;
      v91 = v104;
      outlined destroy of FaceIDUnavailableNotice(v10, type metadata accessor for ConversationControlsRecipe);
      __swift_storeEnumTagSinglePayload(v91, 1, 1, v58);
      goto LABEL_23;
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, &_s10Foundation16AttributedStringVSgMd);
  outlined destroy of ConversationControlsType(v114);
  v92 = v103;
  *v53 = v107;
  *(v53 + 1) = v92;
  *(v53 + 4) = v97;
  v53[40] = v96;
  v91 = v104;
  outlined init with copy of SessionActivationRequestNotice(v10, v104, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v91, 0, 1, v50);
  outlined destroy of FaceIDUnavailableNotice(v10, type metadata accessor for ConversationControlsRecipe);
  v88 = v101;
  v90 = v105;
  v89 = v106;
LABEL_23:
  if (__swift_getEnumTagSinglePayload(v91, 1, v58) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation16AttributedStringVSgMd);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v91, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    v83 = v88;
    v82 = v58;
    return __swift_storeEnumTagSinglePayload(v83, 1, 1, v82);
  }

  outlined init with take of FaceIDUnavailableNotice(v91, v60, type metadata accessor for ConversationControlsRecipe);
  if (SBUIIsSystemApertureEnabled())
  {
    ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v89, 64, v98, v113);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation16AttributedStringVSgMd);
    v94 = *(v58 + 72);
    memcpy(v114, (v60 + v94), 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v114, &_s15ConversationKit21SystemApertureElementVSgMd);
    memcpy((v60 + v94), v113, 0x49uLL);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s10Foundation16AttributedStringVSgMd);
  }

  outlined init with copy of SessionActivationRequestNotice(v60, v88, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v88, 0, 1, v58);
  return outlined destroy of FaceIDUnavailableNotice(v60, type metadata accessor for ConversationControlsRecipe);
}

uint64_t NoticeRecipeGenerator.handoffApprovalNoticeRecipe(controlsManager:notice:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _UNKNOWN **a3@<X3>, uint64_t a4@<X8>)
{
  v80 = a3;
  v88 = a2;
  v92 = a4;
  v87 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v87);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = &v76[-v6];
  v7 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v76[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v93 = &v76[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76[-v16];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v76[-v20];
  v22 = MEMORY[0x1E69E7D40];
  v23 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0))(v19);
  if (!v23)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, &static Logger.conversationControls);
    v55 = a1;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v22;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v96[0] = v60;
      *v59 = 136315138;
      v61 = (*((*v58 & *v55) + 0x2A0))();
      swift_getObjectType();
      v95[0] = v61;
      v62 = String.init<A>(describing:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v96);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_1BBC58000, v56, v57, "handoffApprovalNoticeRecipe: No active conversation, call: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x1BFB23DF0](v60, -1, -1);
      MEMORY[0x1BFB23DF0](v59, -1, -1);
    }

    return __swift_storeEnumTagSinglePayload(v92, 1, 1, v7);
  }

  v84 = v7;
  v86 = v12;
  v91 = a1;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  SymbolImageDescribers.TVHandoff.symbolImageDescription.getter();
  v24 = static UIImage.symbolImage(for:)(v97);
  outlined destroy of SymbolImageDescription(v97);
  v25 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v85 = v24;
  v26 = [v25 initWithImage_];
  [v26 setContentMode_];
  v27 = [objc_opt_self() secondaryLabelColor];
  v90 = v26;
  [v26 setTintColor_];

  v28 = v87;
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v87);
  v29 = SBUIIsSystemApertureEnabled();
  v30 = v88;
  if (v29)
  {
    SystemUpdateNotice.fullSentence.getter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s10Foundation16AttributedStringVSgMd);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v28);
    outlined init with take of AttributedString?(v17, v21);
  }

  v96[3] = type metadata accessor for SystemUpdateNotice(0);
  v96[4] = &protocol witness table for SystemUpdateNotice;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
  outlined init with copy of SessionActivationRequestNotice(v30, boxed_opaque_existential_1, type metadata accessor for SystemUpdateNotice);
  LOBYTE(v96[5]) = 1;
  v32 = v90;
  v82 = [v90 hash];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v33._countAndFlagsBits = SystemUpdateNotice.title.getter();
  isa = NSAttributedString.__allocating_init(string:)(v33).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BC4BAC30;
  SystemUpdateNotice.attributedSubtitle.getter();
  *(v34 + 32) = NSAttributedString.init(_:)();
  v88 = v21;
  v35 = v93;
  outlined init with copy of Notice?(v21, v93, &_s10Foundation16AttributedStringVSgMd);
  ConversationControlsHelper.buttonShelfActions(controlsManager:)(v91, v98);
  v79 = v98[1];
  v83 = v98[0];
  v78 = v99;
  v77 = v100;
  v36 = v84;
  v37 = v84[9];
  __swift_storeEnumTagSinglePayload(v9 + v37, 1, 1, v28);
  v38 = (v9 + v36[10]);
  v39 = v9 + v36[15];
  *(v39 + 4) = 0;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  v39[40] = -2;
  *(v9 + v36[16]) = 0;
  v40 = v9 + v36[17];
  v41 = v9 + v36[18];
  *v41 = 1;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  *(v41 + 40) = 0u;
  *(v41 + 56) = 0u;
  v41[72] = 0;
  outlined init with copy of ConversationControlsType(v96, v9);
  v9[6] = 0;
  v9[7] = v32;
  v7 = v36;
  v42 = isa;
  v43 = v82;
  v9[8] = 0;
  v9[9] = v43;
  v9[10] = v42;
  v9[11] = v34;
  v38[1] = 0;
  v38[2] = 0;
  *v38 = 0;
  outlined assign with copy of AttributedString?(v35, v9 + v37);
  *(v9 + v36[11]) = 2;
  *(v9 + v36[12]) = 1;
  *(v9 + v36[13]) = 1;
  *(v9 + v36[14]) = 1;
  *v40 = 0;
  *(v40 + 1) = 0;
  v40[16] = -1;
  v44 = *(*&v98[0] + 16);
  if (v100 < 0)
  {
    if (v44 > 5)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, &static Logger.conversationControls);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsRecipe.Actions(v98);
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_21;
      }

      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v94 = v44;
      v95[0] = v49;
      *v48 = 136315138;
      v66 = String.init<A>(reflecting:)();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v95);

      *(v48 + 4) = v68;
      v53 = "Too many buttonShelf actions (%s)";
      goto LABEL_20;
    }
  }

  else if (v44 > 2)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, &static Logger.conversationControls);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    outlined destroy of ConversationControlsRecipe.Actions(v98);
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_21;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v94 = v44;
    v95[0] = v49;
    *v48 = 136315138;
    v50 = String.init<A>(reflecting:)();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v95);

    *(v48 + 4) = v52;
    v53 = "Too many trailing actions (%s)";
LABEL_20:
    _os_log_impl(&dword_1BBC58000, v46, v47, v53, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1BFB23DF0](v49, -1, -1);
    MEMORY[0x1BFB23DF0](v48, -1, -1);
LABEL_21:

    outlined destroy of ConversationControlsRecipe.Actions(v98);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v93, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(v96);
    v69 = v91;
    v70 = v86;
    v71 = v89;
    outlined destroy of FaceIDUnavailableNotice(v9, type metadata accessor for ConversationControlsRecipe);
    __swift_storeEnumTagSinglePayload(v71, 1, 1, v7);
    goto LABEL_23;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v93, &_s10Foundation16AttributedStringVSgMd);
  outlined destroy of ConversationControlsType(v96);
  v72 = v79;
  *v39 = v83;
  *(v39 + 1) = v72;
  *(v39 + 4) = v78;
  v39[40] = v77;
  v71 = v89;
  outlined init with copy of SessionActivationRequestNotice(v9, v89, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v7);
  outlined destroy of FaceIDUnavailableNotice(v9, type metadata accessor for ConversationControlsRecipe);
  v69 = v91;
  v70 = v86;
LABEL_23:
  if (__swift_getEnumTagSinglePayload(v71, 1, v7) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s10Foundation16AttributedStringVSgMd);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    return __swift_storeEnumTagSinglePayload(v92, 1, 1, v7);
  }

  outlined init with take of FaceIDUnavailableNotice(v71, v70, type metadata accessor for ConversationControlsRecipe);
  if (SBUIIsSystemApertureEnabled())
  {
    ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v69, 64, v80, v95);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s10Foundation16AttributedStringVSgMd);
    v74 = *(v7 + 72);
    memcpy(v96, (v70 + v74), 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v96, &_s15ConversationKit21SystemApertureElementVSgMd);
    memcpy((v70 + v74), v95, 0x49uLL);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, &_s10Foundation16AttributedStringVSgMd);
  }

  v75 = v92;
  outlined init with copy of SessionActivationRequestNotice(v70, v92, type metadata accessor for ConversationControlsRecipe);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v7);
  return outlined destroy of FaceIDUnavailableNotice(v70, type metadata accessor for ConversationControlsRecipe);
}

uint64_t NoticeRecipeGenerator.init()()
{
  v0 = type metadata accessor for CallScreeningService();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static SystemApertureIconFactory.shared;
  v15[4] = &type metadata for ScreeningStatusOverride;
  v15[5] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();

  v15[1] = Defaults.init()();
  CallScreeningService.init(overrides:)();
  v5 = type metadata accessor for Features();
  v6 = [objc_allocWithZone(v5) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E6995EE0];
  v9 = (v7 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v9[3] = v0;
  v9[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  v11 = (v7 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v11[3] = v5;
  v11[4] = &protocol witness table for Features;
  *v11 = v6;
  v12 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
  v13 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  __swift_storeEnumTagSinglePayload(v7 + v12, 1, 1, v13);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t outlined init with take of AttributedString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of FaceIDUnavailableNotice(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of FaceIDUnavailableNotice(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t outlined consume of NoticeAccessory(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t outlined copy of SessionActionNotice.NoticeType(uint64_t result, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 2uLL:

      break;
    case 3uLL:
      return result;
    default:
      result = outlined copy of CallScreening.EndingAction(result, a2, a3);
      break;
  }

  return result;
}

uint64_t outlined consume of SessionActionNotice.NoticeType(uint64_t result, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 2uLL:

      break;
    case 3uLL:
      return result;
    default:
      result = outlined consume of CallScreening.EndingAction(result, a2, a3);
      break;
  }

  return result;
}

uint64_t outlined init with copy of SessionActivationRequestNotice(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

double key path getter for InCallControlsStatusCell.viewModel : InCallControlsStatusCell@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t key path setter for InCallControlsStatusCell.viewModel : InCallControlsStatusCell(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);
  outlined init with copy of InCallControlsStatusCellViewModel?(v6, v5);
  return v3(v6);
}

void InCallControlsStatusCell.viewModel.getter(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_viewModel);
  swift_beginAccess();
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  outlined copy of InCallControlsStatusCellViewModel?(v3, v4, v5, v6, v7);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

void outlined copy of InCallControlsStatusCellViewModel?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    v5 = a5;
  }
}

void InCallControlsStatusCell.viewModel.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_viewModel);
  swift_beginAccess();
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v8;
  v1[4] = *(a1 + 32);
  outlined consume of InCallControlsStatusCellViewModel?(v3, v4, v5, v6, v7);
}

void outlined consume of InCallControlsStatusCellViewModel?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t key path getter for InCallControlsStatusCell.menuHostViewController : InCallControlsStatusCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlsStatusCell.menuHostViewController : InCallControlsStatusCell(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);
  v5 = *a1;
  return v4(v2, v3);
}

id InCallControlsStatusCell.menuHostViewController.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_menuHostViewController);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void InCallControlsStatusCell.menuHostViewController.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_menuHostViewController);
  swift_beginAccess();
  v5 = *v2;
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t key path getter for InCallControlsStatusCell.iconImageView : InCallControlsStatusCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

id closure #1 in InCallControlsStatusCell.iconImageView.getter(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  UIContentSizeCategory.isAccessibilityCategory.getter();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v4 = [objc_opt_self() labelColor];
  [v3 setTintColor_];

  v5 = v3;
  [v5 setHidden_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA930;
  v8 = [v5 widthAnchor];
  v9 = [v8 constraintEqualToConstant_];

  *(v7 + 32) = v9;
  v10 = [v5 heightAnchor];

  v11 = [v10 constraintEqualToConstant_];
  *(v7 + 40) = v11;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints_];

  return v5;
}

uint64_t InCallControlsStatusCell.iconImageView.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = InCallControlsStatusCell.iconImageView.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t key path getter for InCallControlsStatusCell.titleLabel : InCallControlsStatusCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

id closure #1 in InCallControlsStatusCell.titleLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setNumberOfLines_];
  [v0 setClipsToBounds_];
  [v0 setLineBreakMode_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  LODWORD(v3) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v3];
  return v0;
}

uint64_t InCallControlsStatusCell.titleLabel.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = InCallControlsStatusCell.titleLabel.getter();
  return OUTLINED_FUNCTION_8_1();
}

id InCallControlsStatusCell.titleLabel.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t key path getter for InCallControlsStatusCell.subtitleLabel : InCallControlsStatusCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

id closure #1 in InCallControlsStatusCell.subtitleLabel.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setNumberOfLines_];
  [v0 setClipsToBounds_];
  [v0 setLineBreakMode_];
  [v0 setMarqueeEnabled_];
  [v0 setMarqueeRunning_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  v3 = UIFont.caseSensitive()().super.isa;
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  LODWORD(v5) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v5];
  return v0;
}

uint64_t InCallControlsStatusCell.subtitleLabel.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = InCallControlsStatusCell.subtitleLabel.getter();
  return OUTLINED_FUNCTION_8_1();
}

void *InCallControlsStatusCell.actionButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_actionButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void InCallControlsStatusCell.actionButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_actionButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for InCallControlsStatusCell.actionButton : InCallControlsStatusCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t key path setter for InCallControlsStatusCell.actionButton : InCallControlsStatusCell(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x120);
  v4 = *a1;
  return v3(v2);
}

uint64_t key path getter for InCallControlsStatusCell.conversationStatusHStack : InCallControlsStatusCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

id closure #1 in InCallControlsStatusCell.conversationStatusHStack.getter(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v3 setAxis_];
  if (v1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  [v3 setAlignment_];
  [v3 setSpacing_];

  return v3;
}

uint64_t InCallControlsStatusCell.conversationStatusHStack.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = InCallControlsStatusCell.conversationStatusHStack.getter();
  return OUTLINED_FUNCTION_8_1();
}

uint64_t key path getter for InCallControlsStatusCell.conversationStatusDetailsVStack : InCallControlsStatusCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

id InCallControlsStatusCell.iconImageView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in InCallControlsStatusCell.conversationStatusDetailsVStack.getter(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA930;
  v3 = MEMORY[0x1E69E7D40];
  *(v2 + 32) = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))();
  *(v2 + 40) = (*((*v3 & *a1) + 0x100))();
  UIStackView.__allocating_init(arrangedSubviews:)(v4, v2);
  v6 = v5;
  [v6 setAxis_];
  [v6 setAlignment_];

  return v6;
}

uint64_t InCallControlsStatusCell.conversationStatusDetailsVStack.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_4_3(a1);
  *v1 = InCallControlsStatusCell.conversationStatusDetailsVStack.getter();
  return OUTLINED_FUNCTION_8_1();
}

id InCallControlsStatusCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsStatusCell.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_20_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v27 - v3;
  v5 = v0 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_viewModel;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  v6 = (v0 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_menuHostViewController);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_faceTimeSymbolImage;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  LOBYTE(v29[0]) = 0;
  OUTLINED_FUNCTION_9_21();
  v34[0] = v8;
  v34[1] = v9;
  v34[2] = -1;
  v34[3] = v10;
  v35 = 0;
  v36 = 4;
  v37 = 0;
  v38 = 0;
  v39[0] = v8;
  v39[1] = v9;
  v39[2] = -1;
  v39[3] = v10;
  v40 = 0;
  v41 = 4;
  v42 = 0;
  v43 = 0;
  v11 = v10;
  outlined init with copy of SymbolImageDescription(v34, v44);
  outlined destroy of SymbolImageDescription(v39);
  v12 = static UIImage.symbolImage(for:)(v34);
  outlined destroy of SymbolImageDescription(v34);
  *(v0 + v7) = v12;
  v13 = OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_sharePlaySymbolImage;
  v14 = [objc_opt_self() labelColor];
  v28[64] = 0;
  OUTLINED_FUNCTION_8_36();
  v29[0] = v15;
  v29[1] = v16;
  v29[2] = 1;
  v29[3] = v11;
  v30 = 0;
  v31 = 4;
  v32 = 0;
  v33 = v17;
  v44[0] = v15;
  v44[1] = v16;
  v44[2] = 1;
  v44[3] = v11;
  v45 = 0;
  v46 = 4;
  v47 = 0;
  v48 = v17;
  outlined init with copy of SymbolImageDescription(v29, v28);
  outlined destroy of SymbolImageDescription(v44);
  v18 = static UIImage.symbolImage(for:)(v29);
  outlined destroy of SymbolImageDescription(v29);
  *(v1 + v13) = v18;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell____lazy_storage___iconImageView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell____lazy_storage___subtitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_actionButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell____lazy_storage___conversationStatusHStack) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell____lazy_storage___conversationStatusDetailsVStack) = 0;
  v19 = type metadata accessor for InCallControlsStatusCell();
  v27[1] = v1;
  v27[2] = v19;
  v20 = OUTLINED_FUNCTION_18_1();
  v23 = objc_msgSendSuper2(v21, v22, v20);
  v24 = [v23 contentView];
  [v24 setUserInteractionEnabled_];

  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v25 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v25);
  MEMORY[0x1BFB216F0](v4);
  [v23 setAutomaticallyUpdatesBackgroundConfiguration_];

  InCallControlsStatusCell.setupCell()();
  return v23;
}

void InCallControlsStatusCell.setupCell()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x130);
  v3 = v2();
  v4 = (*((*v1 & *v0) + 0xD0))();
  [v3 addArrangedSubview_];

  v5 = v2();
  v6 = (*((*v1 & *v0) + 0x148))();
  [v5 addArrangedSubview_];

  v7 = v2();
  [v0 addSubview_];

  InCallControlsStatusCell.configureActionButton()();
  InCallControlsStatusCell.setupLayoutConstraints()();
  v8 = [v0 separatorLayoutGuide];
  v9 = [v8 leadingAnchor];

  v10 = (*((*v1 & *v0) + 0xE8))();
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  [v12 setActive_];
}

id InCallControlsStatusCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsStatusCell.init(coder:)()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_viewModel;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_menuHostViewController);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_faceTimeSymbolImage;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  OUTLINED_FUNCTION_9_21();
  v22[0] = v5;
  v22[1] = v6;
  v22[2] = -1;
  v22[3] = v7;
  v23 = 0;
  v24 = 4;
  v25 = 0;
  v26 = 0;
  v27[0] = v5;
  v27[1] = v6;
  v27[2] = -1;
  v27[3] = v7;
  v28 = 0;
  v29 = 4;
  v30 = 0;
  v31 = 0;
  v8 = v7;
  outlined init with copy of SymbolImageDescription(v22, v32);
  outlined destroy of SymbolImageDescription(v27);
  v9 = static UIImage.symbolImage(for:)(v22);
  outlined destroy of SymbolImageDescription(v22);
  *(v0 + v4) = v9;
  v10 = OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_sharePlaySymbolImage;
  v11 = [objc_opt_self() labelColor];
  v16[64] = 0;
  OUTLINED_FUNCTION_8_36();
  v17[0] = v12;
  v17[1] = v13;
  v17[2] = 1;
  v17[3] = v8;
  v18 = 0;
  v19 = 4;
  v20 = 0;
  v21 = v14;
  v32[0] = v12;
  v32[1] = v13;
  v32[2] = 1;
  v32[3] = v8;
  v33 = 0;
  v34 = 4;
  v35 = 0;
  v36 = v14;
  outlined init with copy of SymbolImageDescription(v17, v16);
  outlined destroy of SymbolImageDescription(v32);
  v15 = static UIImage.symbolImage(for:)(v17);
  outlined destroy of SymbolImageDescription(v17);
  *(v1 + v10) = v15;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell____lazy_storage___iconImageView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell____lazy_storage___subtitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_actionButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell____lazy_storage___conversationStatusHStack) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell____lazy_storage___conversationStatusDetailsVStack) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *InCallControlsStatusCell.configure(with:)(void *a1)
{
  v2 = v1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v22[0] = *a1;
  v3 = v22[0];
  v22[1] = v4;
  v22[2] = v5;
  v22[3] = v6;
  v22[4] = v7;
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);

  v9 = v7;
  v10 = v8(v22);
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))(v10);
  outlined bridged method (mbgnn) of @objc UILabel.text.setter(v3, v4, v12);

  v13 = (*((*v11 & *v2) + 0x100))();
  outlined bridged method (mbgnn) of @objc UILabel.text.setter(v5, v6, v13);

  v14 = (*((*v11 & *v9) + 0x380))();
  v15 = *((*v11 & *v2) + 0xD0);
  v16 = v15();
  v17 = v16;
  if (v14)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (v14)
  {
    v19 = &OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_sharePlaySymbolImage;
  }

  else
  {
    v19 = &OBJC_IVAR____TtC15ConversationKit24InCallControlsStatusCell_faceTimeSymbolImage;
  }

  [v16 setContentMode_];

  v20 = v15();
  [v20 setImage_];

  return InCallControlsStatusCell.configureActionButton()();
}

void *InCallControlsStatusCell.configureActionButton()()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsAction();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(&v38, v3);
  if (v39)
  {
    v34 = v39;
    v33 = v38;
    v8 = v41;
    v42 = v40;
    v9 = (*((*v6 & *v0) + 0x118))(result);
    if (v9)
    {
      v10 = v9;
      v11 = (*((*v6 & *v0) + 0x130))();
      [v11 removeArrangedSubview_];

      [v10 removeFromSuperview];
    }

    v12 = v8;
    static ConversationControlsAction.primaryCallAction(controlsManager:location:)();
    v13 = (*((*v6 & *v1) + 0xB8))();
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
    v15 = v14;

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36);
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    v16 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BC4BA930;
    v18 = [v15 widthAnchor];
    v19 = [v18 constraintEqualToConstant_];

    LODWORD(v20) = 1144733696;
    [v19 setPriority_];
    *(v17 + 32) = v19;
    v21 = [v15 heightAnchor];
    v22 = [v21 constraintEqualToConstant_];

    type metadata accessor for UILayoutPriority(0);
    LODWORD(v43[0]) = 1144750080;
    v35 = 1092616192;
    lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v23) = v36[0];
    [v22 setPriority_];
    *(v17 + 40) = v22;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 activateConstraints_];

    v25 = v15;
    *&v26 = ConversationControlsAction.ccrPriority.getter();
    [v25 setContentCompressionResistancePriority:0 forAxis:v26];

    v27 = MEMORY[0x1E69E7D40];
    v28 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x120);
    v29 = v25;
    v30 = v28(v25);
    v31 = (*((*v27 & *v1) + 0x130))(v30);
    [v31 addArrangedSubview_];

    v43[0] = v33;
    v43[1] = v34;
    outlined destroy of String(v43);
    v36[0] = v42;
    outlined destroy of String(v36);

    return outlined destroy of ConversationControlsAction(v5);
  }

  return result;
}

Swift::Void __swiftcall InCallControlsStatusCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for InCallControlsStatusCell();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD0))();
  [v6 setHidden_];

  v7 = *((*v5 & *v1) + 0x130);
  v8 = v7();
  [v8 setAxis_];

  v9 = v7();
  v10 = v9;
  if (v3)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  [v9 setAlignment_];
}

id InCallControlsStatusCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsStatusCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void InCallControlsStatusCell.setupLayoutConstraints()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [v0 addLayoutGuide_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA7F0;
  v4 = [v2 topAnchor];
  v5 = [v1 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:11.0];

  *(inited + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:18.0];

  *(inited + 40) = v9;
  v10 = [v2 bottomAnchor];
  v11 = [v1 &off_1E7FE9D20 + 5];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-11.0];

  *(inited + 48) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v1 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-10.0];

  *(inited + 56) = v15;
  v16 = specialized Array.append<A>(contentsOf:)(inited);
  v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x130);
  v18 = (v17)(v16);
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1BC4BA7F0;
  v20 = v17();
  v21 = [v20 topAnchor];

  v22 = [v2 topAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v19 + 32) = v23;
  v24 = v17();
  v25 = [v24 leadingAnchor];

  v26 = [v2 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v19 + 40) = v27;
  v28 = v17();
  v29 = [v28 bottomAnchor];

  v30 = [v2 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v19 + 48) = v31;
  v32 = v17();
  v33 = [v32 trailingAnchor];

  v34 = [v2 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v19 + 56) = v35;
  specialized Array.append<A>(contentsOf:)(v19);
  v36 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints_];
}

void outlined bridged method (mbgnn) of @objc UILabel.text.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();
  [a3 setText_];
}

uint64_t dispatch thunk of InCallControlsStatusCell.viewModel.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of InCallControlsStatusCell.configure(with:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x160);
  v5 = *a1;
  v6 = v2;
  v7 = *(a1 + 24);
  return v3(&v5);
}

uint64_t outlined init with copy of InCallControlsStatusCellViewModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit33InCallControlsStatusCellViewModelVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ConversationControlsMoreMenuButtonDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority()
{
  result = lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority;
  if (!lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UILayoutPriority and conformance UILayoutPriority);
  }

  return result;
}

uint64_t outlined destroy of ConversationControlsAction(uint64_t a1)
{
  v2 = type metadata accessor for ConversationControlsAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Participant(0);
  v8 = OUTLINED_FUNCTION_9_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v46 = v10 - v9;
  v44 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *(a3 + 16);
  }

  if (v11)
  {
    v52 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v47 = v52;
    v49 = specialized Set.startIndex.getter(a3);
    v50 = v12;
    v51 = v13 & 1;
    if ((v11 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v43 = a3 + 56;
      v42 = a3 + 64;
      while (!__OFADD__(v14++, 1))
      {
        v16 = v49;
        v17 = v50;
        v5 = v51;
        v18 = OUTLINED_FUNCTION_32_2();
        v19 = a3;
        specialized Set.subscript.getter(v18, v20, v5, a3);
        v4 = v21;
        v48[0] = v21;
        a1(v48);
        if (v3)
        {
          goto LABEL_38;
        }

        v22 = v47;
        v52 = v47;
        v23 = *(v47 + 16);
        v4 = (v23 + 1);
        if (v23 >= *(v47 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v22 = v52;
        }

        *(v22 + 16) = v4;
        OUTLINED_FUNCTION_17_17();
        v47 = v24;
        OUTLINED_FUNCTION_3_38();
        _s15ConversationKit11ParticipantVWObTm_0(v46, v25);
        if (v44)
        {
          if (!v5)
          {
            goto LABEL_39;
          }

          a3 = v19;
          OUTLINED_FUNCTION_32_2();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd);
          v30 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v30(v48, 0);
        }

        else
        {
          if (v5)
          {
            goto LABEL_40;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          a3 = v19;
          v26 = 1 << *(v19 + 32);
          if (v16 >= v26)
          {
            goto LABEL_34;
          }

          v27 = v16 >> 6;
          v28 = *(v43 + 8 * (v16 >> 6));
          if (((v28 >> v16) & 1) == 0)
          {
            goto LABEL_35;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_36;
          }

          v29 = v28 & (-2 << (v16 & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v4 = (v27 << 6);
            v31 = v27 + 1;
            v32 = (v42 + 8 * v27);
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v4 += 64;
              ++v31;
              if (v34)
              {
                v35 = OUTLINED_FUNCTION_32_2();
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v35, v36, 0);
                v26 = &v4[__clz(__rbit64(v33))];
                goto LABEL_28;
              }
            }

            v37 = OUTLINED_FUNCTION_32_2();
            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v37, v38, 0);
LABEL_28:
            a3 = v19;
          }

          v39 = *(a3 + 36);
          v49 = v26;
          v50 = v39;
          v51 = 0;
        }

        if (v14 == v11)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v49, v50, v51);
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    __break(1u);
LABEL_38:

    v40 = OUTLINED_FUNCTION_32_2();
    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v40, v41, v5);

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
LABEL_32:
    OUTLINED_FUNCTION_58_1();
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15ConversationKit16CaptionSectionerV0F0VG_AJs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for CaptionSectioner.Caption(0);
  v7 = OUTLINED_FUNCTION_9_0(v6);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = *(a3 + 16);
  if (v13)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v14 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    while (1)
    {
      a1(v14);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v16 = *(v19 + 16);
      if (v16 >= *(v19 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v19 + 16) = v16 + 1;
      OUTLINED_FUNCTION_1_45();
      _s15ConversationKit11ParticipantVWObTm_0(v12, v17);
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_58_1();
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_12CoreGraphics7CGFloatVs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v6 = v17;
    while (v9 < v5)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v15 = a3 + v9;
      a1(&v16, &v15);
      if (v4)
      {
        goto LABEL_20;
      }

      v11 = v16;
      v17 = v6;
      v12 = *(v6 + 16);
      if (v12 >= *(v6 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v17;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v11;
      if (a4 < a3)
      {
        goto LABEL_16;
      }

      ++v9;
      if ((a3 + v9 - 1) >= a4)
      {
        goto LABEL_17;
      }

      if (v10 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI14LayoutSubviewsV_12CoreGraphics7CGFloatVs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for LayoutSubview();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = type metadata accessor for LayoutSubviews();
  v13 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x1E697E3C0]);
  OUTLINED_FUNCTION_32_2();
  v14 = dispatch thunk of Collection.count.getter();
  if (v14)
  {
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v32 = v35;
    OUTLINED_FUNCTION_32_2();
    dispatch thunk of Collection.startIndex.getter();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = v7;
      v16 = 0;
      v28 = (v15 + 16);
      v29 = (v15 + 8);
      v26 = v14;
      v27 = v11;
      while (!__OFADD__(v16, 1))
      {
        v31 = v16 + 1;
        v17 = v12;
        v18 = v4;
        v19 = v13;
        v20 = v17;
        v21 = v19;
        v22 = dispatch thunk of Collection.subscript.read();
        (*v28)(v11);
        v22(&v33, 0);
        a1(&v34, v11);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        (*v29)(v11, v5);
        v23 = v34;
        v24 = v32;
        v35 = v32;
        v25 = *(v32 + 16);
        if (v25 >= *(v32 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v24 = v35;
        }

        *(v24 + 16) = v25 + 1;
        v32 = v24;
        *(v24 + 8 * v25 + 32) = v23;
        v4 = v18;
        v12 = v20;
        v13 = v21;
        dispatch thunk of Collection.formIndex(after:)();
        ++v16;
        v11 = v27;
        if (v31 == v26)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v29)(v11, v5);

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_58_1();
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo18NSNotificationNameaG_So8NSObject_ps5NeverOTg5(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    for (i = (a3 + 32); ; ++i)
    {
      v11 = *i;
      v10 = v11;
      a1(&v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15ConversationKit22TranscriptionViewModelC7CaptionVG_SSs5NeverOTg5(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v6 = v20;
  v8 = type metadata accessor for TranscriptionViewModel.Caption(0);
  OUTLINED_FUNCTION_9_0(v8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v17 = *(v11 + 72);
  while (1)
  {
    a1(v19, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v12 = v19[0];
    v13 = v19[1];
    v20 = v6;
    v14 = *(v6 + 16);
    if (v14 >= *(v6 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v20;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
    v10 += v17;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

Swift::Int CaptionSectioner.Caption.Visibility.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CaptionSectioner.Caption.Visibility()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CaptionSectioner.Caption.Visibility.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t CaptionSectioner.Caption.participant.setter()
{
  return CaptionSectioner.Caption.participant.setter();
}

{
  v2 = OUTLINED_FUNCTION_17_1();
  v4 = v3(v2);
  return outlined assign with take of Participant(v0, v1 + *(v4 + 20));
}

uint64_t CaptionSectioner.Caption.participant.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.dateCreated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CaptionSectioner.Caption(0) + 24);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CaptionSectioner.Caption.dateCreated.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for CaptionSectioner.Caption(v2) + 24);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t CaptionSectioner.Caption.dateCreated.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.dateUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CaptionSectioner.Caption(0) + 28);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CaptionSectioner.Caption.dateUpdated.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for CaptionSectioner.Caption(v2) + 28);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t CaptionSectioner.Caption.dateUpdated.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.image.getter()
{
  type metadata accessor for CaptionSectioner.Caption(0);
}

uint64_t CaptionSectioner.Caption.image.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for CaptionSectioner.Caption(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

uint64_t CaptionSectioner.Caption.image.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.text.getter()
{
  type metadata accessor for CaptionSectioner.Caption(0);

  return OUTLINED_FUNCTION_46();
}

uint64_t CaptionSectioner.Caption.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CaptionSectioner.Caption(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CaptionSectioner.Caption.text.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.isBadTranscription.setter(char a1)
{
  result = type metadata accessor for CaptionSectioner.Caption(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t CaptionSectioner.Caption.isBadTranscription.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.lowConfidenceRanges.getter()
{
  type metadata accessor for CaptionSectioner.Caption(0);
}

uint64_t CaptionSectioner.Caption.lowConfidenceRanges.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for CaptionSectioner.Caption(v2) + 44);

  *(v1 + v3) = v0;
  return result;
}

uint64_t CaptionSectioner.Caption.lowConfidenceRanges.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.visibility.setter(char a1)
{
  result = OUTLINED_FUNCTION_51_0();
  *(v1 + v4) = a1;
  return result;
}

uint64_t CaptionSectioner.Caption.visibility.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.Caption(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.Caption.isDisplayEquivalent(to:)(void *a1)
{
  if (*v2 != *a1)
  {
    goto LABEL_22;
  }

  v4 = OUTLINED_FUNCTION_17_1();
  v5 = type metadata accessor for CaptionSectioner.Caption(v4);
  v6 = v5[5];
  v7 = v2 + v6;
  v8 = v1 + v6;
  OUTLINED_FUNCTION_33_0();
  static Participant.State.== infix(_:_:)();
  if ((v9 & 1) == 0)
  {
    goto LABEL_22;
  }

  type metadata accessor for Participant(0);
  if ((OUTLINED_FUNCTION_63_3() & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = *(v3 + 28);
  v11 = *&v7[v10];
  if (!*(v8 + v10))
  {
    if (!v11)
    {
      goto LABEL_8;
    }

LABEL_22:
    LOBYTE(v11) = 0;
    return v11 & 1;
  }

  if (!v11)
  {
    return v11 & 1;
  }

LABEL_8:
  OUTLINED_FUNCTION_21_12();
  v13 = *(v12 + 4);
  if (v14)
  {
    v15 = 0x100000000;
  }

  else
  {
    v15 = 0;
  }

  if (v13)
  {
    v16 = 0x100000000;
  }

  else
  {
    v16 = 0;
  }

  if (!OUTLINED_FUNCTION_54_1(v15, v16))
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_36_8();
  v19 = v19 && v17 == v18;
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(v2 + v5[12]) == 2) == (*(v1 + v5[12]) != 2))
  {
    goto LABEL_22;
  }

  LOBYTE(v11) = *(v2 + v5[10]) ^ *(v1 + v5[10]) ^ 1;
  return v11 & 1;
}

BOOL static CaptionSectioner.Caption.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_24_1();
  v6 = type metadata accessor for CaptionSectioner.Caption(v5);
  v7 = v6[5];
  v8 = v2 + v7;
  v9 = a2 + v7;
  OUTLINED_FUNCTION_33_0();
  static Participant.State.== infix(_:_:)();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Participant(0);
  if ((OUTLINED_FUNCTION_63_3() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v3 + 28);
  v12 = *(v8 + v11);
  if (*&v9[v11])
  {
    if (!v12)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_12();
  v15 = *(v14 + 4);
  if (v16)
  {
    v17 = 0x100000000;
  }

  else
  {
    v17 = 0;
  }

  if (v15)
  {
    v18 = 0x100000000;
  }

  else
  {
    v18 = 0;
  }

  if (!OUTLINED_FUNCTION_54_1(v17, v18) || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19 = v6[8];
  v20 = *(a2 + v19);
  if (*(v2 + v19))
  {
    if (!v20)
    {
      return 0;
    }

    OUTLINED_FUNCTION_33_0();
    v21 = static Image.== infix(_:_:)();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  OUTLINED_FUNCTION_36_8();
  v24 = v24 && v22 == v23;
  if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v2 + v6[10]) == *(a2 + v6[10]) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo8_NSRangeV_Tt1g5(*(v2 + v6[11]), *(a2 + v6[11])))
  {
    return *(v2 + v6[12]) == *(a2 + v6[12]);
  }

  return 0;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit11ParticipantV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_44_5();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = *(v4 + 16);
  if (v9 == *(v2 + 16) && v9 && v4 != v2)
  {
    OUTLINED_FUNCTION_14_13();
    v11 = v4 + v10;
    v12 = v2 + v10;
    v27 = *(v13 + 72);
    v28 = v14;
    while (1)
    {
      outlined init with copy of Participant(v11, v8);
      outlined init with copy of Participant(v12, v0);
      static Participant.State.== infix(_:_:)();
      v15 = v28;
      if ((v16 & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || (*(v0 + *(v15 + 28)) == 0) != (*&v8[*(v15 + 28)] == 0))
      {
        break;
      }

      v17 = &v8[*(v15 + 24)];
      v18 = *v17;
      v29 = v17[1];
      v30 = v18;
      v19 = v17[2];
      v31 = v17[3];
      v32 = v19;
      v33 = v17[4];
      v34 = v9;
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      v20 = (v0 + *(v15 + 24));
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = v20[4];
      v26 = v34;
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      if (((v30 ^ v21 | v29 ^ v22 | v32 ^ v23 | v31 ^ v24 | v33 ^ v25) & 1) == 0)
      {
        v12 += v27;
        v11 += v27;
        v9 = v26 - 1;
        if (v9)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    OUTLINED_FUNCTION_56_2();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
  }

LABEL_13:
  OUTLINED_FUNCTION_30_0();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit27ClarityUIOutgoingCallActionV_Tt1g5()
{
  OUTLINED_FUNCTION_40_9();
  if (v9 && v0 && v1 != v2)
  {
    v3 = (v2 + 56);
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 8);
      v6 = *v4;
      v7 = *(v3 - 8);
      v8 = *v3;
      v9 = *(v4 - 3) == *(v3 - 3) && *(v4 - 2) == *(v3 - 2);
      if (v9)
      {
        if (v5 != v7)
        {
          return;
        }
      }

      else if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v5 ^ v7))
      {
        return;
      }

      if (v8)
      {
        if (!v6)
        {
          return;
        }
      }

      else if (v6)
      {
        return;
      }

      v3 += 5;
      v4 += 5;
      --v0;
    }

    while (v0);
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit25GameControllerPressActionV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for GameControllerPressAction();
  v6 = OUTLINED_FUNCTION_38_6(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_11();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_45_6();
  v11 = *(v4 + 16);
  if (v11 == *(v2 + 16) && v11 && v4 != v2)
  {
    OUTLINED_FUNCTION_14_13();
    v13 = v4 + v12;
    v14 = v2 + v12;
    v16 = *(v15 + 72);
    do
    {
      outlined init with copy of Participant(v13, v0);
      outlined init with copy of Participant(v14, v9);
      type metadata accessor for GCButtonElementName();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v21 == v19 && v22 == v20)
      {
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();

        if ((v18 & 1) == 0)
        {
          break;
        }
      }

      v14 += v16;
      v13 += v16;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_30_0();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit22TranscriptionViewModelC7CaptionV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for TranscriptionViewModel.Caption(0);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_44_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_45_6();
  v9 = *(v5 + 16);
  if (v9 == *(v3 + 16) && v9 && v5 != v3)
  {
    v10 = 0;
    OUTLINED_FUNCTION_14_13();
    v12 = v5 + v11;
    v13 = v3 + v11;
    v15 = *(v14 + 72);
    while (1)
    {
      outlined init with copy of Participant(v12 + v15 * v10, v1);
      if (v10 == v9)
      {
        break;
      }

      outlined init with copy of Participant(v13 + v15 * v10, v0);
      if (*v1 != *v0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || ((v16 = v6[7], v17 = *(v1 + v16), v18 = *(v1 + v16 + 8), v19 = (v0 + v16), v17 == *v19) ? (v20 = v18 == v19[1]) : (v20 = 0), !v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v1 + v6[8]) != *(v0 + v6[8]) || (v21 = v6[9], v22 = *(v1 + v21), v23 = *(v0 + v21), v24 = *(v22 + 16), v24 != *(v23 + 16))))
      {
LABEL_27:
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        goto LABEL_28;
      }

      if (v24)
      {
        v25 = v22 == v23;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        while (v24)
        {
          OUTLINED_FUNCTION_31_8();
          if ((v27 & 1) == 0)
          {
            goto LABEL_27;
          }

          v24 = v26 - 1;
          if (!v24)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      v28 = *(v1 + v6[10]) ^ *(v0 + v6[10]);
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      OUTLINED_FUNCTION_62_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      if ((v28 & 1) == 0 && ++v10 != v9)
      {
        continue;
      }

      goto LABEL_28;
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8_NSRangeV_Tt1g5(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 == a2[1].i64[0])
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = a1 + 2;
      v4 = a2 + 2;
      do
      {
        v5 = *v3++;
        v6 = v5;
        v7 = *v4++;
        *v6.i8 = vmovn_s64(vceqq_s64(v6, v7));
        v8 = v6.i8[0] & v6.i8[4];
        if ((v6.i8[0] & v6.i8[4] & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit16CaptionSectionerV0D0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CaptionSectioner.Caption(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v41 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v42 = a2 + v13;
  v15 = *(v8 + 72);
  while (1)
  {
    result = outlined init with copy of Participant(v14 + v15 * v12, v10);
    if (v12 == v11)
    {
      break;
    }

    outlined init with copy of Participant(v42 + v15 * v12, v6);
    if (*v10 != *v6)
    {
      goto LABEL_38;
    }

    v17 = v4[5];
    v18 = v10 + v17;
    v19 = v6 + v17;
    static Participant.State.== infix(_:_:)();
    if ((v20 & 1) == 0)
    {
      goto LABEL_38;
    }

    v21 = type metadata accessor for Participant(0);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_38;
    }

    if ((*&v19[*(v21 + 28)] == 0) != (*&v18[*(v21 + 28)] == 0))
    {
      goto LABEL_38;
    }

    v22 = *(v21 + 24);
    v23 = &v18[v22];
    v24 = v18[v22];
    v25 = &v19[v22];
    if (v24 != *v25 || ((v23[1] ^ v25[1]) & 1) != 0 || ((v23[2] ^ v25[2]) & 1) != 0 || ((v23[3] ^ v25[3]) & 1) != 0 || ((v23[4] ^ v25[4]) & 1) != 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_38;
    }

    v26 = v4[8];
    v27 = *(v6 + v26);
    if (*(v10 + v26))
    {
      if (!v27)
      {
        goto LABEL_38;
      }

      v28 = static Image.== infix(_:_:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (v27)
    {
      goto LABEL_38;
    }

    v29 = v4[9];
    v30 = *(v10 + v29);
    v31 = *(v10 + v29 + 8);
    v32 = (v6 + v29);
    v33 = v30 == *v32 && v31 == v32[1];
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }

    if (*(v10 + v4[10]) != *(v6 + v4[10]))
    {
      goto LABEL_38;
    }

    v34 = v4[11];
    v35 = *(v10 + v34);
    v36 = *(v6 + v34);
    v37 = v35[1].i64[0];
    if (v37 != v36[1].i64[0])
    {
      goto LABEL_38;
    }

    if (v37 && v35 != v36)
    {
      v38 = v35 + 2;
      v39 = v36 + 2;
      while (1)
      {
        v40 = vmovn_s64(vceqq_s64(*v38, *v39));
        if ((v40.i32[0] & v40.i32[1] & 1) == 0)
        {
          break;
        }

        ++v38;
        ++v39;
        if (!--v37)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      return 0;
    }

LABEL_34:
    if (*(v10 + v4[12]) != *(v6 + v4[12]))
    {
      goto LABEL_38;
    }

    ++v12;
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    result = 1;
    if (v12 == v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit0B14ControlsActionO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsAction();
  v5 = OUTLINED_FUNCTION_38_6(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_11();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_14_13();
      v14 = a1 + v13;
      v15 = a2 + v13;
      v17 = *(v16 + 72);
      do
      {
        outlined init with copy of Participant(v14, v11);
        outlined init with copy of Participant(v15, v8);
        static ConversationControlsAction.== infix(_:_:)();
        v19 = v18;
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        if ((v19 & 1) == 0)
        {
          break;
        }

        v15 += v17;
        v14 += v17;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit19ParticipantReactionV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  type metadata accessor for ParticipantReaction(0);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_44_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_6();
  v8 = *(v5 + 16);
  if (v8 == *(v3 + 16) && v8 && v5 != v3)
  {
    OUTLINED_FUNCTION_14_13();
    v10 = v5 + v9;
    v11 = v3 + v9;
    v13 = *(v12 + 72);
    while (1)
    {
      outlined init with copy of Participant(v10, v1);
      outlined init with copy of Participant(v11, v0);
      type metadata accessor for Participant(0);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {

        OUTLINED_FUNCTION_23_15();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        OUTLINED_FUNCTION_23_15();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        if ((v19 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v11 += v13;
      v10 += v13;
      if (!--v8)
      {
        goto LABEL_16;
      }
    }

    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
  }

LABEL_16:
  OUTLINED_FUNCTION_30_0();
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v5 = a2 >> 62 ? __CocoaSet.count.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (i != v5 || !i)
    {
      break;
    }

    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_60_0();
    if (!v9)
    {
      v8 = a2;
    }

    if (a2 >> 62)
    {
      v7 = v8;
    }

    if (v6 == v7)
    {
      break;
    }

    if (i < 0)
    {
      __break(1u);
      return;
    }

    type metadata accessor for AnyCancellable();
    v10 = 4;
    while (1)
    {
      v11 = v10 - 4;
      v12 = v10 - 3;
      if (__OFADD__(v10 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = OUTLINED_FUNCTION_57_1();
        MEMORY[0x1BFB22010](v13);
      }

      else
      {
        if (v11 >= *(v17 + 16))
        {
          goto LABEL_29;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = OUTLINED_FUNCTION_56_2();
        MEMORY[0x1BFB22010](v14);
      }

      else
      {
        if (v11 >= *(v16 + 16))
        {
          goto LABEL_30;
        }
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v15)
      {
        ++v10;
        if (v12 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit16CaptionSectionerV14SpeakerSectionV_Tt1g5()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v71 - v10);
  type metadata accessor for CaptionSectioner.SpeakerSection(0);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_11();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - v18;
  v20 = *(v2 + 16);
  v84 = *(v4 + 16);
  if (v84 == v20 && v84 && v4 != v2)
  {
    v83 = v17;
    OUTLINED_FUNCTION_14_13();
    v22 = v4 + v21;
    v23 = 0;
    v80 = v2 + v21;
    v81 = v7;
    v25 = *(v24 + 72);
    v77 = v25;
    v78 = v22;
    while (1)
    {
      OUTLINED_FUNCTION_22_12();
      outlined init with copy of Participant(v22 + v25 * v23, v19);
      if (v23 == v84)
      {
        __break(1u);
        goto LABEL_60;
      }

      v82 = v23;
      OUTLINED_FUNCTION_22_12();
      outlined init with copy of Participant(v80 + v25 * v23, v15);
      if (static UUID.== infix(_:_:)() & 1) == 0 || (static Participant.State.== infix(_:_:)(), (v26 & 1) == 0) || (v27 = type metadata accessor for Participant(0), (static UUID.== infix(_:_:)() & 1) == 0) || (OUTLINED_FUNCTION_52_0(), ((v29 ^ (v28 == 0))) || (OUTLINED_FUNCTION_37_10(), !v60) || (OUTLINED_FUNCTION_47_3(), (v30) || (OUTLINED_FUNCTION_42_8(), (v31) || (OUTLINED_FUNCTION_46_5(), (v32) || (OUTLINED_FUNCTION_41_6(), (v33) || (v34 = *(v83 + 24), v35 = *&v19[v34], v36 = *(v15 + v34), v37 = *(v35 + 16), v37 != *(v36 + 16)))
      {
LABEL_57:
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        goto LABEL_58;
      }

      if (v37 && v35 != v36)
      {
        break;
      }

LABEL_53:
      v23 = v82 + 1;
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      v25 = v77;
      v22 = v78;
      if (v23 == v84)
      {
        goto LABEL_58;
      }
    }

    v38 = 0;
    v39 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v75 = v36 + v39;
    v76 = v35 + v39;
    v73 = v36;
    v74 = v5;
    v72 = v37;
    while (v38 < *(v35 + 16))
    {
      v40 = v27;
      v41 = v19;
      v42 = v15;
      v43 = v38;
      v44 = *(v81 + 72) * v38;
      OUTLINED_FUNCTION_0_39();
      outlined init with copy of Participant(v76 + v44, v11);
      v45 = *(v36 + 16);
      v79 = v43;
      if (v43 >= v45)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_0_39();
      outlined init with copy of Participant(v75 + v44, v0);
      v15 = v42;
      v19 = v41;
      if (*v11 != *v0)
      {
        goto LABEL_56;
      }

      v27 = v40;
      static Participant.State.== infix(_:_:)();
      if ((v46 & 1) == 0)
      {
        goto LABEL_56;
      }

      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_52_0();
      if ((v48 ^ (v47 == 0)))
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_37_10();
      if (!v60)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_47_3();
      if (v49)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_42_8();
      if (v50)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_46_5();
      if (v51)
      {
        goto LABEL_56;
      }

      OUTLINED_FUNCTION_41_6();
      if ((v52 & 1) != 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_56;
      }

      v53 = v5[8];
      v54 = *(v0 + v53);
      if (*(v11 + v53))
      {
        if (!v54)
        {
          goto LABEL_56;
        }

        v55 = static Image.== infix(_:_:)();

        if ((v55 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      else if (v54)
      {
        goto LABEL_56;
      }

      v56 = v5[9];
      v57 = *(v11 + v56);
      v58 = *(v11 + v56 + 8);
      v59 = (v0 + v56);
      v60 = v57 == *v59 && v58 == v59[1];
      if (!v60 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_56;
      }

      if (*(v11 + v5[10]) != *(v0 + v5[10]))
      {
        goto LABEL_56;
      }

      v61 = v5[11];
      v62 = *(v11 + v61);
      v63 = *(v0 + v61);
      v64 = *(v62 + 16);
      if (v64 != *(v63 + 16))
      {
        goto LABEL_56;
      }

      if (v64 && v62 != v63)
      {
        while (1)
        {
          OUTLINED_FUNCTION_31_8();
          if ((v66 & 1) == 0)
          {
            break;
          }

          if (v65 == 1)
          {
            goto LABEL_50;
          }
        }

LABEL_56:
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        goto LABEL_57;
      }

LABEL_50:
      v67 = v5[12];
      v68 = *(v11 + v67);
      v69 = v35;
      v70 = *(v0 + v67);
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      v60 = v68 == v70;
      v36 = v73;
      v5 = v74;
      if (!v60)
      {
        goto LABEL_57;
      }

      v35 = v69;
      v38 = v79 + 1;
      if (v79 + 1 == v72)
      {
        goto LABEL_53;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
LABEL_58:
    OUTLINED_FUNCTION_30_0();
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5()
{
  OUTLINED_FUNCTION_40_9();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v0;
    }

    while (v0);
  }
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit17ClarityUIFavoriteV_Tt1g5()
{
  OUTLINED_FUNCTION_40_9();
  if (v5 && v0 && v1 != v2)
  {
    v3 = (v1 + 40);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 7;
      v4 += 7;
      --v0;
    }

    while (v0);
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(uint64_t result, uint64_t a2)
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

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit0B4LinkV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v5 = a2 + 48;
    v6 = a1 + 48;
    do
    {
      v7 = *(v5 - 16);
      v8 = *(v6 - 16);

      v9 = v7;

      LOBYTE(v7) = static NSObject.== infix(_:_:)();

      if ((v7 & 1) == 0)
      {
        break;
      }

      v5 += 24;
      v6 += 24;
      --v2;
    }

    while (v2);
  }
}

uint64_t CaptionSectioner.Caption.init(id:participant:dateCreated:dateUpdated:image:text:isBadTranscription:lowConfidenceRanges:visibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, char a11)
{
  *a9 = a1;
  v16 = type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_3_38();
  _s15ConversationKit11ParticipantVWObTm_0(a2, &a9[v17]);
  v18 = v16[6];
  v19 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  v21 = *(v20 + 32);
  v21(&a9[v18], a3, v19);
  result = (v21)(&a9[v16[7]], a4, v19);
  *&a9[v16[8]] = a5;
  v23 = &a9[v16[9]];
  *v23 = a6;
  *(v23 + 1) = a7;
  a9[v16[10]] = a8;
  *&a9[v16[11]] = a10;
  a9[v16[12]] = a11;
  return result;
}

uint64_t CaptionSectioner.Caption.participant.getter@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_2_44();
  return outlined init with copy of Participant(v2 + v4, a2);
}

uint64_t CaptionSectioner.SpeakerSection.participant.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.SpeakerSection(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t CaptionSectioner.SpeakerSection.captions.getter()
{
  type metadata accessor for CaptionSectioner.SpeakerSection(0);
}

uint64_t CaptionSectioner.SpeakerSection.captions.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for CaptionSectioner.SpeakerSection(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t CaptionSectioner.SpeakerSection.captions.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for CaptionSectioner.SpeakerSection(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t static CaptionSectioner.SpeakerSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  if (!static Participant.== infix(_:_:)())
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit16CaptionSectionerV0D0V_Tt1g5(v6, v7);
}

uint64_t CaptionSectioner.SpeakerSection.init(id:participant:captions:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_11_19();
  _s15ConversationKit11ParticipantVWObTm_0(v6, v7);
  v8 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  OUTLINED_FUNCTION_3_38();
  result = _s15ConversationKit11ParticipantVWObTm_0(a1, a3 + v9);
  *(a3 + *(v8 + 24)) = a2;
  return result;
}

Swift::Int CaptionSectioner.CaptionID.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CaptionSectioner.CaptionID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CaptionSectioner.CaptionID.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t CaptionSectioner.SectionID.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t CaptionSectioner.SectionID.hash(into:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_10_15();
  lazy protocol witness table accessor for type UUID and conformance UUID(v0, v1);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int CaptionSectioner.SectionID.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_10_15();
  lazy protocol witness table accessor for type UUID and conformance UUID(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CaptionSectioner.SectionID()
{
  Hasher.init(_seed:)();
  CaptionSectioner.SectionID.hash(into:)();
  return Hasher._finalize()();
}

void CaptionSectioner.init(participants:badCaptionCountThreshold:suppressionAge:maximumAge:currentDate:)()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v34 = v11;
  v35 = v9;
  v12 = v11;
  v14 = v13;
  v15 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - v23;
  v36[5] = MEMORY[0x1E69E7CC0];
  v36[6] = v8;
  v36[7] = v6;
  v36[8] = v12;
  v36[9] = v10;
  v36[10] = v4;
  v36[11] = v2;
  CaptionSectioner.gatherAndSortCaptions()();
  v32 = v25;
  v33 = v2;
  v4();
  Date.addingTimeInterval(_:)();
  v26 = *(v17 + 8);
  v27 = v26(v21, v15);
  (v4)(v27);
  Date.addingTimeInterval(_:)();
  v26(v0, v15);
  v36[2] = v21;
  v36[3] = v24;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15ConversationKit16CaptionSectionerV0F0VG_AJs5NeverOTg5(partial apply for closure #1 in CaptionSectioner.updateCaptions(), v36, v32);

  CaptionSectioner.chunkSections(sortedCaptions:)();
  v29 = v28;

  v26(v21, v15);
  v26(v24, v15);
  *v14 = v29;
  v14[1] = v8;
  v14[2] = v6;
  v30 = v35;
  v14[3] = v34;
  v14[4] = v30;
  v31 = v33;
  v14[5] = v4;
  v14[6] = v31;
  OUTLINED_FUNCTION_20_6();
}

Swift::Void __swiftcall CaptionSectioner.updateCaptions()()
{
  OUTLINED_FUNCTION_48_2();
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_39_3();
  v22 = v0;
  v10 = v0[2];
  v26 = v0[1];
  v27 = v10;
  v25 = *v0;
  v28 = *(v0 + 6);
  v11 = *(&v10 + 1);
  CaptionSectioner.gatherAndSortCaptions()();
  v13 = v12;
  v11();
  Date.addingTimeInterval(_:)();
  v14 = *(v4 + 8);
  v15 = OUTLINED_FUNCTION_33_0();
  v16 = v14(v15);
  (v11)(v16);
  Date.addingTimeInterval(_:)();
  v17 = OUTLINED_FUNCTION_62_0();
  v14(v17);
  v23[2] = v8;
  v24 = v1;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15ConversationKit16CaptionSectionerV0F0VG_AJs5NeverOTg5(closure #1 in CaptionSectioner.updateCaptions()partial apply, v23, v13);

  v29 = v25;
  CaptionSectioner.chunkSections(sortedCaptions:)();
  v19 = v18;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v29, &_sSay15ConversationKit16CaptionSectionerV14SpeakerSectionVGMd);
  *v22 = v19;
  v20 = OUTLINED_FUNCTION_33_0();
  v14(v20);
  (v14)(v1, v2);
  OUTLINED_FUNCTION_20_6();
}

void CaptionSectioner.update(for:)(uint64_t a1)
{
  v2 = v1;
  v6 = *(v1 + 24);
  v4 = (v1 + 24);
  v5 = v6;
  v7 = specialized Collection<>.firstIndex(of:)(a1, v6);
  if ((v8 & 1) == 0)
  {
    v12 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      specialized _ArrayBuffer._consumeAndCreateNew()();
      v5 = v16;
      if ((v12 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (v12 < *(v5 + 16))
        {
          v13 = type metadata accessor for Participant(0);
          OUTLINED_FUNCTION_9_0(v13);
          outlined assign with copy of Participant(a1, v5 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v15 + 72) * v12);
          goto LABEL_7;
        }

LABEL_12:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v9 = *(*v4 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9);
  v5 = *v4;
  *(*v4 + 16) = v9 + 1;
  v10 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_9_0(v10);
  OUTLINED_FUNCTION_2_44();
  outlined init with copy of Participant(a1, v11);
LABEL_7:
  *(v2 + 24) = v5;

  CaptionSectioner.updateCaptions()();
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_1();
  v5 = type metadata accessor for Participant(v4);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  OUTLINED_FUNCTION_14_13();
  v12 = a2 + v11;
  v14 = *(v13 + 72);
  while (1)
  {
    OUTLINED_FUNCTION_2_44();
    v15 = OUTLINED_FUNCTION_33_0();
    outlined init with copy of Participant(v15, v16);
    static Participant.State.== infix(_:_:)();
    if ((v17 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*(v2 + *(v5 + 28)) == 0) == (*&v8[*(v5 + 28)] == 0) && v8[*(v5 + 24)] == *(v2 + *(v5 + 24)))
    {
      OUTLINED_FUNCTION_47_3();
      if ((v18 & 1) == 0)
      {
        OUTLINED_FUNCTION_42_8();
        if ((v19 & 1) == 0)
        {
          OUTLINED_FUNCTION_46_5();
          if ((v20 & 1) == 0)
          {
            OUTLINED_FUNCTION_41_6();
            if ((v21 & 1) == 0)
            {
              break;
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_12_18();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    ++v10;
    v12 += v14;
    if (v9 == v10)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_12_18();
  _s15ConversationKit0A14ControlsActionOWOhTm_0();
  return v10;
}

void specialized Collection<>.firstIndex(of:)()
{
  OUTLINED_FUNCTION_48_2();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_13_24();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v3 + 8;
    v11 = *v3;
    OUTLINED_FUNCTION_14_13();
    v13 = v1 + v12;
    v15 = *(v14 + 72);
    v31 = v3 + 8;
    v32 = v4;
    while (1)
    {
      outlined init with copy of Participant(v13, v7);
      if (*v7 != v11 || (static ConversationControlsType.== infix(_:_:)((v7 + 8), v10) & 1) == 0)
      {
LABEL_7:
        OUTLINED_FUNCTION_5_22();
        goto LABEL_8;
      }

      v16 = *(v3 + 64);
      if (v7[64])
      {
        if (!*(v3 + 64))
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (*(v7 + 7) != *(v3 + 56))
        {
          v16 = 1;
        }

        if (v16)
        {
          goto LABEL_7;
        }
      }

      v17 = &v7[*(v4 + 44)];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        v33 = (*(v18 + 56))(ObjectType, v18);
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v21 = 0;
      }

      v22 = v3 + *(v4 + 44);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        break;
      }

      v23 = *(v22 + 8);
      v24 = swift_getObjectType();
      v25 = (*(v23 + 56))(v24, v23);
      v27 = v26;
      swift_unknownObjectRelease();
      if (!v21)
      {
        goto LABEL_28;
      }

      if (!v27)
      {
        goto LABEL_26;
      }

      v4 = v32;
      if (v33 == v25 && v21 == v27)
      {

        OUTLINED_FUNCTION_5_22();
        goto LABEL_30;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      OUTLINED_FUNCTION_5_22();
      v10 = v31;
      if (v29)
      {
        goto LABEL_30;
      }

LABEL_8:
      ++v9;
      v13 += v15;
      if (v8 == v9)
      {
        goto LABEL_30;
      }
    }

    if (v21)
    {
LABEL_26:

      OUTLINED_FUNCTION_5_22();
      v10 = v31;
      v4 = v32;
      goto LABEL_8;
    }

    v27 = 0;
LABEL_28:
    v4 = v32;
    OUTLINED_FUNCTION_5_22();
    v10 = v31;
    if (!v27)
    {
      goto LABEL_30;
    }

    goto LABEL_8;
  }

LABEL_30:
  OUTLINED_FUNCTION_20_6();
}

{
  OUTLINED_FUNCTION_29();
  v0 = 0;
  v2 = *(v1 + 16);
  for (i = v1 + 48; v2 != v0; i += 24)
  {
    v4 = *(i - 16);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v5 = v4;

    OUTLINED_FUNCTION_56_2();
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      break;
    }

    ++v0;
  }

  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = specialized Array.count.getter(v0);
  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
LABEL_11:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_62_0();
      v4 = MEMORY[0x1BFB22010](v8);
      goto LABEL_6;
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v4 = *(v1 + 8 * v3 + 32);
LABEL_6:
    v5 = v4;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SGURL);
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized Array.count.getter(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = OUTLINED_FUNCTION_62_0();
      v5 = MEMORY[0x1BFB22010](v9);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    type metadata accessor for MomentsIndicatorBubble();
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

void CaptionSectioner.gatherAndSortCaptions()()
{
  OUTLINED_FUNCTION_48_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV0C0VSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v105 - v3;
  v133 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v132 = v8 - v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  v12 = v11;
  v127 = type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_1();
  v125 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v105 - v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v105 - v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_39_3();
  v112 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v25 - v24;
  v27 = type metadata accessor for Participant(0);
  v28 = OUTLINED_FUNCTION_38_6(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15_11();
  v131 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v126 = &v105 - v33;
  v106 = v0;
  v34 = *(v0 + 24);
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  v114 = v4;
  v117 = v17;
  v109 = v35;
  if (!v35)
  {
    goto LABEL_42;
  }

  v37 = 0;
  v38 = *(v32 + 80);
  v110 = *(v32 + 72);
  v111 = v34 + ((v38 + 32) & ~v38);
  v107 = (v6 + 8);
  v108 = v26;
  v120 = (v6 + 32);
  v121 = (v6 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  v130 = v12;
  while (1)
  {
    v118 = v39;
    v116 = v37;
    OUTLINED_FUNCTION_2_44();
    v40 = v126;
    outlined init with copy of Participant(v41, v126);
    outlined init with copy of Participant(v40, v26);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v43 = *(v42 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v26 + *(v42 + 64)), *(v26 + *(v42 + 64) + 8));
      memcpy(v135, (v26 + v43), 0x150uLL);
      (*v107)(v26, v133);
      v44 = v135[39];
      v45 = v135[41];
      outlined copy of Participant.CaptionInfo?(v135[39]);
      outlined destroy of Participant.MediaInfo(v135);
      if (v44)
      {
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    else
    {
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
    }

    v45 = v36;
LABEL_8:
    v39 = v118;
    v46 = *(v45 + 16);
    if (v46)
    {
      break;
    }

    v80 = v4;

    v81 = v36;
LABEL_29:
    OUTLINED_FUNCTION_12_18();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    v82 = v81[2];
    v83 = *(v39 + 16);
    if (__OFADD__(v83, v82))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);

      __break(1u);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v83 + v82 > *(v39 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v39 = v84;
    }

    v36 = MEMORY[0x1E69E7CC0];
    v83 = v81;
    if (v81[2])
    {
      if ((*(v39 + 24) >> 1) - *(v39 + 16) < v82)
      {
        goto LABEL_65;
      }

      v4 = v80;
      swift_arrayInitWithCopy();

      v85 = v116;
      if (v82)
      {
        v86 = *(v39 + 16);
        v64 = __OFADD__(v86, v82);
        v87 = v86 + v82;
        if (v64)
        {
          goto LABEL_66;
        }

        *(v39 + 16) = v87;
      }
    }

    else
    {

      v85 = v116;
      v4 = v80;
      if (v82)
      {
        goto LABEL_63;
      }
    }

    v37 = v85 + 1;
    v26 = v108;
    if (v37 == v109)
    {
      goto LABEL_43;
    }
  }

  v135[0] = v36;
  v122 = v46;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v134 = v135[0];
  v17 = 0;
  v128 = type metadata accessor for Participant.Caption(0);
  v47 = *(v128 - 8);
  v48 = *(v47 + 80);
  v113 = v45;
  v124 = v45 + ((v48 + 32) & ~v48);
  v123 = *(v47 + 72);
  v49 = v12;
  while (1)
  {
    v36 = (v124 + v123 * v17);
    v50 = *v36;
    OUTLINED_FUNCTION_2_44();
    outlined init with copy of Participant(v126, v131);
    v51 = v128;
    v52 = *v121;
    v53 = v49;
    v54 = v133;
    (*v121)(v53, v36 + *(v128 + 20), v133);
    v52(v132, v36 + v51[6], v54);
    v55 = v51[8];
    v56 = (v36 + v51[7]);
    v57 = *v56;
    v58 = v56[1];
    v4 = *(v36 + v55);

    v129 = v58;
    if (v4 == 1)
    {
      break;
    }

    v66 = v57;
    v67 = 0;
LABEL_20:
    v68 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *v1 = v50;
    v69 = v127;
    OUTLINED_FUNCTION_3_38();
    _s15ConversationKit11ParticipantVWObTm_0(v131, &v1[v70]);
    v71 = *v120;
    v72 = v133;
    (*v120)(&v1[v69[6]], v130, v133);
    v71(&v1[v69[7]], v132, v72);
    *&v1[v69[8]] = 0;
    v73 = &v1[v69[9]];
    v74 = v129;
    *v73 = v66;
    *(v73 + 1) = v74;
    v1[v69[10]] = v67;
    *&v1[v69[11]] = v68;
    v1[v69[12]] = 0;
    v75 = v134;
    v135[0] = v134;
    v77 = *(v134 + 16);
    v76 = *(v134 + 24);
    if (v77 >= v76 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v76);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v75 = v135[0];
    }

    ++v17;
    *(v75 + 16) = v77 + 1;
    OUTLINED_FUNCTION_17_17();
    v134 = v78;
    OUTLINED_FUNCTION_1_45();
    _s15ConversationKit11ParticipantVWObTm_0(v1, v79);
    v49 = v130;
    if (v17 == v122)
    {
      v12 = v130;

      v80 = v114;
      v17 = v117;
      v39 = v118;
      v81 = v134;
      goto LABEL_29;
    }
  }

  if (String.count.getter() < 1)
  {
    v67 = 0;
    if (*(v36 + v55) == 1)
    {
      goto LABEL_23;
    }

LABEL_19:
    v66 = v57;
    goto LABEL_20;
  }

  v59 = *(v36 + *(v128 + 36));
  v60 = *(v59 + 16);
  if (!v60)
  {
    v65 = 0.0;
LABEL_22:
    v67 = (v65 / String.count.getter()) > 0.75;
    if (*(v36 + v55))
    {
LABEL_23:
      v66 = v57;
      v68 = *(v36 + *(v128 + 36));

      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v61 = 0;
  v62 = (v59 + 40);
  while (1)
  {
    v63 = *v62;
    v62 += 2;
    v64 = __OFADD__(v61, v63);
    v61 += v63;
    if (v64)
    {
      break;
    }

    if (!--v60)
    {
      v65 = v61;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_42:
  v39 = v36;
LABEL_43:
  v135[0] = v39;

  specialized MutableCollection<>.sort(by:)(v135);

  v88 = *(v135[0] + 16);
  if (v88)
  {
    v89 = 0;
    v90 = *(v106 + 32);
    OUTLINED_FUNCTION_17_17();
    v132 = v91;
    v133 = v92;
    v134 = v93;
    v94 = v91 + v92;
    v96 = *(v95 + 72);
    v83 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_0_39();
      v97 = v119;
      outlined init with copy of Participant(v94, v119);
      if (*(v97 + v134) == 1)
      {
        v64 = __OFADD__(v89++, 1);
        if (v64)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v89 = 0;
      }

      OUTLINED_FUNCTION_1_45();
      _s15ConversationKit11ParticipantVWObTm_0(v119, v17);
      *(v17 + v127[10]) = v89 >= v90;
      if (v90 >= v89)
      {
        OUTLINED_FUNCTION_1_45();
        _s15ConversationKit11ParticipantVWObTm_0(v17, v4);
        v98 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_4_25();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        v98 = 1;
      }

      v99 = v127;
      __swift_storeEnumTagSinglePayload(v4, v98, 1, v127);
      if (__swift_getEnumTagSinglePayload(v4, 1, v99) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit16CaptionSectionerV0C0VSgMd);
      }

      else
      {
        OUTLINED_FUNCTION_1_45();
        _s15ConversationKit11ParticipantVWObTm_0(v4, v115);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_43();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v83 = v103;
        }

        v101 = v83[2];
        v100 = v83[3];
        if (v101 >= v100 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v100);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v83 = v104;
        }

        v83[2] = v101 + 1;
        OUTLINED_FUNCTION_1_45();
        _s15ConversationKit11ParticipantVWObTm_0(v115, v102);
        v4 = v114;
      }

      v94 += v96;
      --v88;
      v17 = v117;
    }

    while (v88);
  }

  OUTLINED_FUNCTION_20_6();
}

uint64_t closure #1 in CaptionSectioner.updateCaptions()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_39();
  outlined init with copy of Participant(v2, v3);
  v4 = type metadata accessor for CaptionSectioner.Caption(0);
  result = static Date.< infix(_:_:)();
  if (result)
  {
    v6 = *(v4 + 48);
    v7 = 2;
LABEL_5:
    *(a1 + v6) = v7;
    return result;
  }

  result = static Date.< infix(_:_:)();
  v6 = *(v4 + 48);
  if (result)
  {
    v7 = 1;
    goto LABEL_5;
  }

  *(a1 + v6) = 0;
  return result;
}

void CaptionSectioner.chunkSections(sortedCaptions:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v116 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_32();
  v115 = v9;
  v10 = type metadata accessor for CaptionSectioner.SectionID(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_17();
  v106 = v11 - v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  v114 = v14;
  v107 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  OUTLINED_FUNCTION_1();
  v108 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_32();
  v113 = v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  v109 = (&v98 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_17();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v98 - v26);
  v119 = type metadata accessor for CaptionSectioner.Caption(0);
  OUTLINED_FUNCTION_1();
  v121 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  v110 = v30 - v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  v123 = &v98 - v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  if (!*(v3 + 16))
  {
LABEL_58:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v111 = &v98 - v35;
  v101 = v7;
  v100 = v1;

  v36 = specialized BidirectionalCollection.suffix(_:)(50, v3);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if (v41)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v45 = swift_dynamicCastClass();
    if (!v45)
    {
      swift_unknownObjectRelease();
      v45 = MEMORY[0x1E69E7CC0];
    }

    v46 = *(v45 + 16);

    if (__OFSUB__(v42 >> 1, v40))
    {
      goto LABEL_65;
    }

    if (v46 != (v42 >> 1) - v40)
    {
      goto LABEL_66;
    }

    v44 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v42 = v111;
    if (v44)
    {
      goto LABEL_12;
    }

    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v36, v38, v40, v42);
    v44 = v43;
    v42 = v111;
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    if (*(v44 + 16))
    {
      break;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_unknownObjectRelease();
  }

  v98 = *(v121 + 80);
  v99 = (v98 + 32) & ~v98;
  OUTLINED_FUNCTION_0_39();
  v118 = v47;
  outlined init with copy of Participant(v47, v42);
  v0 = *v0;
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v49 = swift_getKeyPath();
  v124 = 0;
  v125 = v0;
  v126 = closure #1 in CaptionSectioner.chunkSections(sortedCaptions:);
  v127 = 0;
  v103 = KeyPath;
  v128 = KeyPath;
  v129 = v36;
  v104 = v36;
  v102 = v49;
  v130 = v49;
  v50 = *(v44 + 16);
  v122 = v44;

  v105 = v0;

  v51 = 0;
  v40 = 0;
  v117 = MEMORY[0x1E69E7CC0];
  v38 = v120;
  for (i = v50; ; v50 = i)
  {
    if (v40 == v50)
    {
      v52 = 1;
      v40 = v50;
    }

    else
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      if (v40 >= *(v122 + 16))
      {
        goto LABEL_60;
      }

      v36 = v109;
      *v109 = v40;
      OUTLINED_FUNCTION_0_39();
      outlined init with copy of Participant(v54, v36 + v53);
      outlined init with take of (offset: Int, element: CaptionSectioner.Caption)(v36, v24, &_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtMd);
      v52 = 0;
      ++v40;
    }

    __swift_storeEnumTagSinglePayload(v24, v52, 1, v38);
    outlined init with take of (offset: Int, element: CaptionSectioner.Caption)(v24, v27, &_sSi6offset_15ConversationKit16CaptionSectionerV0D0V7elementtSgMd);
    if (__swift_getEnumTagSinglePayload(v27, 1, v38) == 1)
    {
      v73 = v122;

      if (v51 == v50)
      {

        OUTLINED_FUNCTION_4_25();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        goto LABEL_58;
      }

      if (v51 >= *(v73 + 16))
      {
        __break(1u);
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_0_39();
      v74 = v110;
      outlined init with copy of Participant(v75, v110);
      specialized FindMatchByWalking.callAsFunction(firstRowInNewSection:)(v74, v106);
      OUTLINED_FUNCTION_4_25();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      OUTLINED_FUNCTION_2_44();
      v77 = v101;
      outlined init with copy of Participant(v42 + v76, v101);
      specialized MutableCollection.subscript.getter(v51, v73);
      v79 = v78;
      v81 = v80;

      v82 = v117;
      if (v81)
      {
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v87 = swift_dynamicCastClass();
        if (!v87)
        {
          swift_unknownObjectRelease();
          v87 = MEMORY[0x1E69E7CC0];
        }

        v88 = *(v87 + 16);

        if (__OFSUB__(v81 >> 1, v79))
        {
          __break(1u);
        }

        else if (v88 == (v81 >> 1) - v79)
        {
          v86 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v36 = v100;
          v77 = v101;
          if (v86)
          {
            goto LABEL_54;
          }

          v86 = MEMORY[0x1E69E7CC0];
LABEL_53:
          swift_unknownObjectRelease();
LABEL_54:
          OUTLINED_FUNCTION_11_19();
          v89 = OUTLINED_FUNCTION_57_1();
          _s15ConversationKit11ParticipantVWObTm_0(v89, v90);
          v91 = v107;
          OUTLINED_FUNCTION_3_38();
          _s15ConversationKit11ParticipantVWObTm_0(v77, v36 + v92);
          *(v36 + *(v91 + 24)) = v86;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_55:
            v94 = *(v82 + 16);
            v93 = *(v82 + 24);
            if (v94 >= v93 >> 1)
            {
              OUTLINED_FUNCTION_59_3(v93);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v82 = v97;
            }

            OUTLINED_FUNCTION_4_25();
            _s15ConversationKit0A14ControlsActionOWOhTm_0();
            *(v82 + 16) = v94 + 1;
            OUTLINED_FUNCTION_17_17();
            OUTLINED_FUNCTION_25_13();
            _s15ConversationKit11ParticipantVWObTm_0(v36, v95);
            goto LABEL_58;
          }

LABEL_68:
          OUTLINED_FUNCTION_43();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v82 = v96;
          goto LABEL_55;
        }

        swift_unknownObjectRelease_n();
        v77 = v101;
      }

      v83 = OUTLINED_FUNCTION_46();
      specialized _copyCollectionToContiguousArray<A>(_:)(v83, v84, v79, v81);
      v86 = v85;
      v36 = v100;
      goto LABEL_53;
    }

    v55 = v24;
    v56 = *v27;
    OUTLINED_FUNCTION_1_45();
    v58 = v123;
    _s15ConversationKit11ParticipantVWObTm_0(v27 + v57, v123);
    v59 = *(v119 + 20);
    v36 = v58 + v59;
    v38 = *(v116 + 20);
    v24 = v42 + v59;
    v0 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_10_15();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, v60);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      OUTLINED_FUNCTION_4_25();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      v24 = v55;
      v38 = v120;
      goto LABEL_32;
    }

    if (v51 >= *(v122 + 16))
    {
      goto LABEL_61;
    }

    v38 = *(v121 + 72);
    v36 = v118 + v38 * v51;
    OUTLINED_FUNCTION_0_39();
    v42 = v110;
    outlined init with copy of Participant(v36, v110);
    specialized FindMatchByWalking.callAsFunction(firstRowInNewSection:)(v42, v114);
    OUTLINED_FUNCTION_4_25();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    OUTLINED_FUNCTION_2_44();
    outlined init with copy of Participant(v24, v115);
    v0 = v56 - v51;
    if (v56 < v51)
    {
      goto LABEL_62;
    }

    v42 = v122;
    v61 = *(v122 + 16);
    if (v61 < v56)
    {
      goto LABEL_63;
    }

    if (v61 != v0)
    {
      break;
    }

    v62 = v117;
    v24 = v55;
LABEL_27:
    OUTLINED_FUNCTION_11_19();
    v63 = v113;
    _s15ConversationKit11ParticipantVWObTm_0(v114, v113);
    v64 = v107;
    OUTLINED_FUNCTION_3_38();
    _s15ConversationKit11ParticipantVWObTm_0(v115, v63 + v65);
    *(v63 + *(v64 + 24)) = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v62 = v71;
    }

    v42 = v111;
    v38 = v120;
    v36 = *(v62 + 16);
    v66 = *(v62 + 24);
    v0 = v36 + 1;
    if (v36 >= v66 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v66);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v62 = v72;
    }

    OUTLINED_FUNCTION_4_25();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    *(v62 + 16) = v0;
    OUTLINED_FUNCTION_17_17();
    v117 = v62;
    OUTLINED_FUNCTION_25_13();
    _s15ConversationKit11ParticipantVWObTm_0(v113, v67);
    v51 = v56;
LABEL_32:
    OUTLINED_FUNCTION_1_45();
    _s15ConversationKit11ParticipantVWObTm_0(v123, v42);
  }

  v42 = MEMORY[0x1E69E7CC0];
  v70 = v56 == v51;
  v62 = v117;
  v24 = v55;
  if (v70)
  {
    goto LABEL_27;
  }

  if (v0 < 1)
  {
LABEL_41:
    swift_arrayInitWithCopy();
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit16CaptionSectionerV0F0VGMd);
  v68 = v99;
  v42 = swift_allocObject();
  v69 = _swift_stdlib_malloc_size(v42);
  if (v38)
  {
    v70 = v69 - v68 == 0x8000000000000000 && v38 == -1;
    if (v70)
    {
      goto LABEL_72;
    }

    *(v42 + 16) = v0;
    *(v42 + 24) = 2 * ((v69 - v68) / v38);
    goto LABEL_41;
  }

  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t FindMatchByWalking.init(currentSections:newID:sectionRow:rowAgeKey:groupedByPivot:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = result;
  a7[2] = a2;
  a7[3] = a3;
  a7[4] = a4;
  a7[5] = a5;
  a7[6] = a6;
  return result;
}

void specialized FindMatchByWalking.callAsFunction(firstRowInNewSection:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v43 = a2;
  v44 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v44);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v39 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  v51 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = type metadata accessor for CaptionSectioner.Caption(0);
  v46 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v2;
  v22 = v2[1];
  v53 = v2;
  v50 = v22;
  v24 = *(v22 + 16);
  if (v23 >= v24)
  {
LABEL_23:
    (v53[2])(v19);
    return;
  }

  v25 = v53[4];
  v48 = v50 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v49 = v25;
  v26 = (v8 + 8);
  v45 = v7;
  while (1)
  {
    if (v23 >= v24)
    {
      __break(1u);
      goto LABEL_27;
    }

    v27 = v48 + *(v51 + 72) * v23;
    outlined init with copy of Participant(v27, v17);
    swift_getAtKeyPath();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    v28 = *(v54 + 16);
    if (!v28)
    {

      goto LABEL_12;
    }

    outlined init with copy of Participant(v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * (v28 - 1), v21);

    swift_getAtKeyPath();
    v29 = v52;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    static Participant.State.== infix(_:_:)();
    if ((v30 & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (*&v4[*(v44 + 28)] == 0) == (*&v29[*(v44 + 28)] == 0))
    {
      v31 = *(v44 + 24);
      v32 = &v29[v31];
      v33 = v29[v31];
      v34 = &v4[v31];
      v35 = v45;
      if (v33 != *v34 || ((v32[1] ^ v34[1]) & 1) != 0 || ((v32[2] ^ v34[2]) & 1) != 0 || ((v32[3] ^ v34[3]) & 1) != 0)
      {
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        (*v26)(v12, v35);
        goto LABEL_9;
      }

      if (v34[4] == v32[4])
      {
        break;
      }
    }

    (*v26)(v12, v45);
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
LABEL_9:
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
LABEL_10:
    v19 = _s15ConversationKit0A14ControlsActionOWOhTm_0();
LABEL_12:
    *v53 = ++v23;
    v24 = *(v50 + 16);
    if (v23 >= v24)
    {
      goto LABEL_23;
    }
  }

  _s15ConversationKit0A14ControlsActionOWOhTm_0();
  swift_getAtKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v39 = v12;
  v40 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v36 = *v26;
  (*v26)(v42, v35);
  if ((v40 & 1) == 0)
  {
    v12 = v39;
    v36(v39, v35);
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    goto LABEL_10;
  }

  if (v23 < *(v50 + 16))
  {
    v37 = v27;
    v38 = v41;
    outlined init with copy of Participant(v37, v41);
    v36(v12, v45);
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    outlined init with copy of Participant(v38, v43);
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    *v53 = v23 + 1;
    return;
  }

LABEL_27:
  __break(1u);
}

void FindMatchByWalking.callAsFunction(firstRowInNewSection:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v58[1] = v3;
  v77 = *(v1 + 32);
  OUTLINED_FUNCTION_2_7();
  v69 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v66 = v6 - v7;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v58 - v9;
  v68 = *(v11 + 40);
  OUTLINED_FUNCTION_2_7();
  v67 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v59 = (v14 - v15);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v58 - v17;
  v20 = *(v19 + 24);
  v65 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_1();
  v60 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v76 = v58 - v23;
  v24 = *(v2 + 16);
  OUTLINED_FUNCTION_2_7();
  v73 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  v58[0] = v27 - v28;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_32();
  v74 = v30;
  OUTLINED_FUNCTION_2_7();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8();
  v75 = v35 - v34;
  v37 = *v0;
  v36 = v0[1];
  if (v37 >= MEMORY[0x1BFB20DB0](v36, v24))
  {
LABEL_10:
    (v0[2])();
LABEL_11:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  v72 = v0[4];
  ++v73;
  v61 = v32 + 32;
  v62 = (v69 + 8);
  ++v67;
  v63 = (v32 + 8);
  ++v60;
  v64 = v10;
  v78 = v20;
  v79 = v0;
  v70 = v24;
  v71 = v36;
  while (1)
  {
    v38 = v74;
    Array.subscript.getter();
    swift_getAtKeyPath();
    v69 = *v73;
    (v69)(v38, v24);
    v80 = v81;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v39 = v76;
    v40 = v78;
    BidirectionalCollection.last.getter();
    if (__swift_getEnumTagSinglePayload(v39, 1, v40) != 1)
    {
      break;
    }

    (*v60)(v39, v65);

    v0 = v79;
    v41 = *v79 + 1;
    if (__OFADD__(*v79, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v42 = v71;
LABEL_9:
    *v0 = v41;
    v24 = v70;
    if (v41 >= MEMORY[0x1BFB20DB0](v42, v70))
    {
      goto LABEL_10;
    }
  }

  v43 = OUTLINED_FUNCTION_56_2();
  v44(v43);

  OUTLINED_FUNCTION_57_1();
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v45 = v18;
  v46 = v66;
  swift_getAtKeyPath();
  OUTLINED_FUNCTION_33_0();
  v47 = v77;
  v48 = v2;
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *v62;
  v51 = v46;
  v18 = v45;
  (*v62)(v51, v47);
  if ((v49 & 1) == 0 || (v52 = v59, OUTLINED_FUNCTION_57_1(), swift_getAtKeyPath(), v53 = v68, v54 = dispatch thunk of static Comparable.>= infix(_:_:)(), v55 = *v67, (*v67)(v52, v53), (v54 & 1) == 0))
  {
    v2 = v48;
    v50(v64, v77);
    (*v67)(v18, v68);
    (*v63)(v75, v78);
    v0 = v79;
    v41 = *v79 + 1;
    v42 = v71;
    if (__OFADD__(*v79, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v56 = v58[0];
  v57 = v70;
  Array.subscript.getter();
  dispatch thunk of Identifiable.id.getter();
  (v69)(v56, v57);
  v50(v64, v77);
  v55(v18, v68);
  (*v63)(v75, v78);
  if (!__OFADD__(*v79, 1))
  {
    ++*v79;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

uint64_t specialized MutableCollection.subscript.getter(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    type metadata accessor for CaptionSectioner.Caption(0);
  }

  __break(1u);
  return result;
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for CaptionSectioner.Caption(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *(type metadata accessor for TranscriptionViewModel.Caption(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *(type metadata accessor for Participant(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *(type metadata accessor for HUDActivityManager.BannerUpdate(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v3 = v5;
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *(type metadata accessor for Participant.Caption(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

{
  v2 = *(type metadata accessor for Participant(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
}

uint64_t outlined assign with take of Participant(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void specialized _ArrayBuffer._consumeAndCreateNew()()
{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  OUTLINED_FUNCTION_53();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t outlined assign with copy of Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CaptionSectioner.Caption.Visibility and conformance CaptionSectioner.Caption.Visibility()
{
  result = lazy protocol witness table cache variable for type CaptionSectioner.Caption.Visibility and conformance CaptionSectioner.Caption.Visibility;
  if (!lazy protocol witness table cache variable for type CaptionSectioner.Caption.Visibility and conformance CaptionSectioner.Caption.Visibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptionSectioner.Caption.Visibility and conformance CaptionSectioner.Caption.Visibility);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID()
{
  result = lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID;
  if (!lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID;
  if (!lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CaptionSectioner(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for CaptionSectioner(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for CaptionSectioner.Caption()
{
  type metadata accessor for Participant(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Image?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [_NSRange](319, &lazy cache variable for type metadata for [_NSRange], type metadata accessor for _NSRange);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Image?()
{
  if (!lazy cache variable for type metadata for Image?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Image?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CaptionSectioner.Caption.Visibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for CaptionSectioner.SpeakerSection()
{
  type metadata accessor for CaptionSectioner.SectionID(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Participant(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [_NSRange](319, &lazy cache variable for type metadata for [CaptionSectioner.Caption], type metadata accessor for CaptionSectioner.Caption);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [_NSRange](uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for CaptionSectioner.SectionID()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata instantiation function for FindMatchByWalking()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for FindMatchByWalking(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for FindMatchByWalking(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CaptionSectioner.Caption(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CaptionSectioner.Caption(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo8NSNumberC_Tt0g5Tm = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo8NSNumberC_Tt0g5Tm(v3 / 2, &lazy cache variable for type metadata for NSNumber);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((UninitializedySayxG_SpyxGtSiFZSo8NSNumberC_Tt0g5Tm & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TranscriptionViewModel.Caption(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TranscriptionViewModel.Caption(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for HUDActivityManager.BannerUpdate(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HUDActivityManager.BannerUpdate(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for HUDActivityManager.BannerUpdate(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
      OUTLINED_FUNCTION_22(v7);
      OUTLINED_FUNCTION_40_3();
      v9[0] = v6 + v8;
      v9[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo8UIWindowC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo8UIWindowC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((UninitializedySayxG_SpyxGtSiFZSo8UIWindowC_Tt0g5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Participant(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Participant(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for CaptionSectioner.Caption(0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      do
      {
        outlined init with copy of Participant(v22, v16);
        outlined init with copy of Participant(v19, v12);
        v23 = static Date.< infix(_:_:)();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        v24 = v34;
        _s15ConversationKit11ParticipantVWObTm_0(v22, v34);
        swift_arrayInitWithTakeFrontToBack();
        _s15ConversationKit11ParticipantVWObTm_0(v24, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 floatValue];
        v15 = v14;
        [v13 floatValue];
        v17 = v16;

        if (v15 >= v17)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

{
  v34 = type metadata accessor for Date();
  v8 = MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v29 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v35 = *a4;
    v14 = v35 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v31 = v14;
      v32 = a3;
      v16 = *(v35 + 8 * a3);
      v30 = v15;
      v17 = v14;
      do
      {
        v18 = *v17;
        v19 = v16;
        v20 = v18;
        SGURL.recentsDate.getter(v12);
        v21 = v33;
        SGURL.recentsDate.getter(v33);
        v22 = Date.compare(_:)();
        v23 = *v13;
        v24 = v21;
        v25 = v34;
        (*v13)(v24, v34);
        v23(v12, v25);

        if (v22 != -1)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return;
        }

        v26 = *v17;
        v16 = *(v17 + 8);
        *v17 = v16;
        *(v17 + 8) = v26;
        v17 -= 8;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v32 + 1;
      v14 = v31 + 8;
      v15 = v30 - 1;
      if (v32 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

{
  v33 = type metadata accessor for TranscriptionViewModel.Caption(0);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v30 = v19;
      v31 = a3;
      v28 = v22;
      v29 = v21;
      do
      {
        outlined init with copy of Participant.Caption(v22, v16, type metadata accessor for TranscriptionViewModel.Caption);
        outlined init with copy of Participant.Caption(v19, v12, type metadata accessor for TranscriptionViewModel.Caption);
        v23 = static Date.< infix(_:_:)();
        outlined destroy of Participant.Caption(v12, type metadata accessor for TranscriptionViewModel.Caption);
        outlined destroy of Participant.Caption(v16, type metadata accessor for TranscriptionViewModel.Caption);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        outlined init with take of TranscriptionViewModel.Caption(v22, v9);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of TranscriptionViewModel.Caption(v9, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v43[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v43[-v13];
  v14 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v44 = a2;
  if (a3 == a2)
  {
    return;
  }

  v19 = *a4;
  v54 = (v17 + 32);
  v49 = (v17 + 8);
  v56 = v19;
  v20 = v19 + 40 * a3;
  v21 = a1 - a3;
  v67 = v14;
  v50 = &v43[-v18];
  while (2)
  {
    v47 = a3;
    v45 = v21;
    v22 = v21;
    v46 = v20;
    do
    {
      v60 = v22;
      outlined init with copy of IDSLookupManager(v20, v64);
      v59 = (v20 - 40);
      outlined init with copy of IDSLookupManager(v20 - 40, v61);
      v23 = v65;
      v24 = v66;
      v25 = __swift_project_boxed_opaque_existential_1(v64, v65);
      v26 = *(v24 + 8);
      v27 = v58;
      v26(v23, v24);
      if (__swift_getEnumTagSinglePayload(v27, 1, v14) == 1)
      {
        goto LABEL_7;
      }

      v52 = v25;
      v53 = v26;
      v28 = v50;
      v51 = *v54;
      v51(v50, v58, v14);
      v29 = v62;
      v30 = v63;
      v31 = v57;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v32 = v29;
      v14 = v67;
      (*(v30 + 8))(v32, v30);
      if (__swift_getEnumTagSinglePayload(v31, 1, v14) == 1)
      {
        (*v49)(v28, v14);
        v27 = v57;
        v26 = v53;
LABEL_7:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s10Foundation4DateVSgMd);
        v33 = v55;
        v26(v23, v24);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v67);
        v35 = v33;
        v14 = v67;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_s10Foundation4DateVSgMd);
        __swift_destroy_boxed_opaque_existential_1(v61);
        __swift_destroy_boxed_opaque_existential_1(v64);
        v36 = v60;
        if (EnumTagSinglePayload == 1)
        {
          break;
        }

        goto LABEL_10;
      }

      v37 = v48;
      v51(v48, v57, v14);
      v38 = static Date.> infix(_:_:)();
      v39 = *v49;
      (*v49)(v37, v14);
      v39(v28, v14);
      __swift_destroy_boxed_opaque_existential_1(v61);
      __swift_destroy_boxed_opaque_existential_1(v64);
      v36 = v60;
      if ((v38 & 1) == 0)
      {
        break;
      }

LABEL_10:
      if (!v56)
      {
        __break(1u);
        return;
      }

      outlined init with take of ImageName(v20, v64);
      v40 = v59;
      v41 = v59[1];
      *v20 = *v59;
      *(v20 + 16) = v41;
      *(v20 + 32) = *(v40 + 4);
      outlined init with take of ImageName(v64, v40);
      v20 = v40;
      v42 = __CFADD__(v36, 1);
      v22 = v36 + 1;
    }

    while (!v42);
    a3 = v47 + 1;
    v20 = v46 + 40;
    v21 = v45 - 1;
    if (v47 + 1 != v44)
    {
      continue;
    }

    break;
  }
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v49[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v49[-v13];
  v14 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v50 = a2;
  if (a3 == a2)
  {
    return;
  }

  v19 = *a4;
  v55 = (v17 + 8);
  v62 = v19;
  v20 = v19 + 40 * a3;
  v21 = a1 - a3;
  v59 = &v49[-v18];
  v60 = v14;
  v58 = (v17 + 32);
  while (2)
  {
    v53 = a3;
    v51 = v21;
    v22 = v21;
    v52 = v20;
    v23 = v20;
    do
    {
      v71 = v22;
      outlined init with copy of IDSLookupManager(v23, v68);
      v63 = (v23 - 40);
      v64 = v23;
      outlined init with copy of IDSLookupManager(v23 - 40, v65);
      v24 = v69;
      v25 = v70;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      v26 = *(v25 + 32);
      v27 = v26(v24, v25);
      v28 = v66;
      v29 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      if ((v27 ^ (*(v29 + 32))(v28, v29)))
      {
        v30 = v26(v24, v25);
        goto LABEL_6;
      }

      v33 = v69;
      v34 = v70;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      v35 = v61;
      (*(v34 + 8))(v33, v34);
      v36 = v60;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v60);
      v38 = v59;
      if (EnumTagSinglePayload != 1)
      {
        v39 = *v58;
        (*v58)(v59, v61, v36);
        v40 = v66;
        v41 = v67;
        __swift_project_boxed_opaque_existential_1(v65, v66);
        v35 = v56;
        (*(v41 + 8))(v40, v41);
        if (__swift_getEnumTagSinglePayload(v35, 1, v36) != 1)
        {
          v47 = v54;
          v39(v54, v35, v36);
          v30 = static Date.> infix(_:_:)();
          v48 = *v55;
          (*v55)(v47, v36);
          v48(v38, v36);
LABEL_6:
          __swift_destroy_boxed_opaque_existential_1(v65);
          __swift_destroy_boxed_opaque_existential_1(v68);
          v31 = v71;
          v32 = v64;
          if ((v30 & 1) == 0)
          {
            break;
          }

          goto LABEL_12;
        }

        (*v55)(v38, v36);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_s10Foundation4DateVSgMd);
      v42 = v69;
      v43 = v70;
      __swift_project_boxed_opaque_existential_1(v68, v69);
      v44 = v57;
      (*(v43 + 8))(v42, v43);
      LODWORD(v42) = __swift_getEnumTagSinglePayload(v44, 1, v36);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s10Foundation4DateVSgMd);
      __swift_destroy_boxed_opaque_existential_1(v65);
      __swift_destroy_boxed_opaque_existential_1(v68);
      v31 = v71;
      v32 = v64;
      if (v42 == 1)
      {
        break;
      }

LABEL_12:
      if (!v62)
      {
        __break(1u);
        return;
      }

      outlined init with take of ImageName(v32, v68);
      v23 = v63;
      v45 = v63[1];
      *v32 = *v63;
      *(v32 + 16) = v45;
      *(v32 + 32) = *(v23 + 32);
      outlined init with take of ImageName(v68, v23);
      v46 = __CFADD__(v31, 1);
      v22 = v31 + 1;
    }

    while (!v46);
    a3 = v53 + 1;
    v20 = v52 + 40;
    v21 = v51 - 1;
    if (v53 + 1 != v50)
    {
      continue;
    }

    break;
  }
}

{
  v8 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  v46 = a2;
  if (a3 != a2)
  {
    v18 = v14;
    v19 = *a4;
    v20 = *(v15 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v51 = -v20;
    v52 = v19;
    v22 = a1 - a3;
    v45 = v20;
    v23 = v19 + v20 * a3;
    while (2)
    {
      v49 = v21;
      v50 = a3;
      v47 = v23;
      v48 = v22;
      v24 = v22;
      while (1)
      {
        outlined init with copy of ParticipantReaction();
        outlined init with copy of ParticipantReaction();
        v25 = *(v18 + 28);
        v26 = *&v17[v25];
        if (v26)
        {
          v27 = [v26 value];
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v25 = *(v18 + 28);
        }

        else
        {
          v28 = 0;
          v30 = 0xE000000000000000;
        }

        v55 = v24;
        v31 = *&v12[v25];
        if (v31)
        {
          v32 = [v31 value];
          v54 = v28;
          v33 = v17;
          v34 = v12;
          v35 = v18;
          v36 = v32;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          v18 = v35;
          v12 = v34;
          v17 = v33;
          v28 = v54;
        }

        else
        {
          v37 = 0;
          v39 = 0xE000000000000000;
        }

        if (v37 == v28 && v39 == v30)
        {
          break;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        _s15ConversationKit11ParticipantVWOhTm_12();
        _s15ConversationKit11ParticipantVWOhTm_12();
        v42 = v55;
        if (v41)
        {
          if (!v52)
          {
            __break(1u);
            return;
          }

          _s15ConversationKit11ParticipantVWObTm_4();
          swift_arrayInitWithTakeFrontToBack();
          _s15ConversationKit11ParticipantVWObTm_4();
          v21 += v51;
          v23 += v51;
          v43 = __CFADD__(v42, 1);
          v24 = v42 + 1;
          if (!v43)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      _s15ConversationKit11ParticipantVWOhTm_12();
      _s15ConversationKit11ParticipantVWOhTm_12();
LABEL_20:
      a3 = v50 + 1;
      v21 = v49 + v45;
      v22 = v48 - 1;
      v23 = v47 + v45;
      if (v50 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }
}

{
  v34 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
LABEL_4:
    v30 = v19;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    while (1)
    {
      _s15ConversationKit11ParticipantVWOcTm_6(v22, v16, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v19, v12, type metadata accessor for Participant);
      v23 = closure #1 in Array<A>.sortForInCallControls()(v16, v12);
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      _s15ConversationKit11ParticipantV5StateOWOhTm_0();
      if (v4)
      {
        break;
      }

      if (v23)
      {
        if (!v32)
        {
          __break(1u);
          return;
        }

        v24 = v33;
        outlined init with take of Participant(v22, v33);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of Participant(v24, v19);
        v19 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

{
  v36 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *a4;
  v18 = *(v14 + 72);
  v19 = *a4 + v18 * (a3 - 1);
  v20 = -v18;
  v21 = a1 - a3;
  v27 = v18;
  v22 = v17 + v18 * a3;
  while (2)
  {
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v21;
    while (1)
    {
      outlined init with copy of HUDActivityManager.BannerUpdate(v22, v16);
      outlined init with copy of HUDActivityManager.BannerUpdate(v19, v12);
      outlined init with copy of ConversationControlsType((v16 + 1), v33);
      outlined init with copy of ConversationControlsType((v12 + 1), v34);
      if (v33[40] == 1)
      {
        break;
      }

      if (v35 != 1)
      {
        v24 = *v16 < *v12 || *v16 == *v12 && Date.compare(_:)() == -1;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit0A12ControlsTypeO_ACtMd);
LABEL_15:
        outlined destroy of HUDActivityManager.BannerUpdate(v12);
        outlined destroy of HUDActivityManager.BannerUpdate(v16);
        if (!v24)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      }

      outlined destroy of ConversationControlsType(v34);
      outlined destroy of ConversationControlsType(v33);
      outlined destroy of HUDActivityManager.BannerUpdate(v12);
      outlined destroy of HUDActivityManager.BannerUpdate(v16);
LABEL_16:
      if (!v17)
      {
        __break(1u);
        return;
      }

      outlined init with take of HUDActivityManager.BannerUpdate(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of HUDActivityManager.BannerUpdate(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_21;
      }
    }

    if (v35 == 1)
    {
      v24 = *v16 < *v12;
      outlined destroy of ConversationControlsType(v34);
      outlined destroy of ConversationControlsType(v33);
      goto LABEL_15;
    }

    outlined destroy of ConversationControlsType(v33);
    outlined destroy of ConversationControlsType(v34);
    outlined destroy of HUDActivityManager.BannerUpdate(v12);
    outlined destroy of HUDActivityManager.BannerUpdate(v16);
LABEL_21:
    a3 = v32 + 1;
    v19 = v31 + v27;
    v21 = v30 - 1;
    v22 = v29 + v27;
    if (v32 + 1 != v28)
    {
      continue;
    }

    break;
  }
}

{
  v9 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v35 = a3;
      v32 = v24;
      v33 = v23;
      v25 = v23;
      v34 = v21;
      do
      {
        outlined init with copy of HUDActivityManager.BannerUpdate(v24, v18);
        outlined init with copy of HUDActivityManager.BannerUpdate(v21, v14);
        v26 = *v18;
        v27 = OUTLINED_FUNCTION_84_7();
        outlined destroy of HUDActivityManager.BannerUpdate(v27);
        outlined destroy of HUDActivityManager.BannerUpdate(v18);
        if (v26 >= v4)
        {
          break;
        }

        if (!v19)
        {
          __break(1u);
          return;
        }

        outlined init with take of HUDActivityManager.BannerUpdate(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of HUDActivityManager.BannerUpdate(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

{
  v34 = type metadata accessor for Participant.Caption(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v25 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v25 - v14);
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v32 = v16;
    v26 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v30 = v18;
      v31 = a3;
      v28 = v21;
      v29 = v20;
      do
      {
        _s15ConversationKit11ParticipantV5StateOWOcTm_0();
        _s15ConversationKit11ParticipantV5StateOWOcTm_0();
        v22 = *v15;
        v23 = *v11;
        _s15ConversationKit11ParticipantV5StateOWOhTm_1();
        _s15ConversationKit11ParticipantV5StateOWOhTm_1();
        if (v22 >= v23)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        _s15ConversationKit11ParticipantVWObTm_6();
        swift_arrayInitWithTakeFrontToBack();
        _s15ConversationKit11ParticipantVWObTm_6();
        v18 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v31 + 1;
      v18 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

{
  v105 = type metadata accessor for PersonNameComponents();
  v8 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v109 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Date();
  v10 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v97 - v13;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v117);
  v122 = &v97 - v14;
  v15 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v15);
  v118 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v97 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v116 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v97 - v22;
  v23 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v23);
  v115 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v112 = &v97 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v132 = &v97 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v124 = &v97 - v31;
  v99 = a2;
  if (a3 == a2)
  {
    return;
  }

  v32 = *a4;
  v120 = (v10 + 32);
  v110 = (v10 + 8);
  v104 = (v8 + 8);
  v33 = *(v30 + 72);
  v34 = v32 + v33 * (a3 - 1);
  v113 = -v33;
  v35 = a1 - a3;
  v114 = v32;
  v98 = v33;
  v36 = v32 + v33 * a3;
  v111 = v15;
  v123 = v23;
  while (2)
  {
    v103 = a3;
    v100 = v36;
    v126 = v36;
    v101 = v35;
    v102 = v34;
    v125 = v34;
    v37 = v108;
    v38 = v118;
    v39 = v119;
    while (1)
    {
      v40 = v124;
      _s15ConversationKit11ParticipantVWOcTm_6(v126, v124, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v125, v132, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v40, v39, type metadata accessor for Participant.State);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v42 = *(v41 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v39 + *(v41 + 64)), *(v39 + *(v41 + 64) + 8));
        v43 = v121;
        (*v120)(v121, v39, v37);
        outlined destroy of Participant.MediaInfo(v39 + v42);
        v44 = 0;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v39, type metadata accessor for Participant.State);
        v44 = 1;
        v43 = v121;
      }

      __swift_storeEnumTagSinglePayload(v43, v44, 1, v37);
      _s15ConversationKit11ParticipantVWOcTm_6(v132, v38, type metadata accessor for Participant.State);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v46 = v116;
      if (EnumCaseMultiPayload == 4)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v48 = *(v47 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v38 + *(v47 + 64)), *(v38 + *(v47 + 64) + 8));
        (*v120)(v46, v38, v37);
        v43 = v121;
        outlined destroy of Participant.MediaInfo(v38 + v48);
        v49 = 0;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v38, type metadata accessor for Participant.State);
        v49 = 1;
      }

      __swift_storeEnumTagSinglePayload(v46, v49, 1, v37);
      v50 = *(v117 + 48);
      v51 = v46;
      v52 = v122;
      outlined init with take of Date?(v43, v122);
      outlined init with take of Date?(v51, v52 + v50);
      LODWORD(v51) = __swift_getEnumTagSinglePayload(v52, 1, v37);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52 + v50, 1, v37);
      if (v51 == 1)
      {
        break;
      }

      if (EnumTagSinglePayload != 1)
      {
        v69 = *v120;
        v70 = v106;
        v71 = v122;
        (*v120)(v106, v122, v37);
        v72 = v71 + v50;
        v73 = v107;
        v69(v107, v72, v37);
        v74 = v110;
        v75 = static Date.< infix(_:_:)();
        v76 = *v74;
        (*v74)(v73, v37);
        v76(v70, v37);
        v39 = v119;
        goto LABEL_34;
      }

      (*v110)(v122, v37);
      _s15ConversationKit11ParticipantVWOhTm_16(v132, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v124, type metadata accessor for Participant);
      v38 = v118;
      v39 = v119;
LABEL_35:
      if (!v114)
      {
        __break(1u);
        return;
      }

      v93 = v35;
      v94 = v126;
      v95 = v115;
      outlined init with take of Participant(v126, v115);
      v96 = v125;
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of Participant(v95, v96);
      v125 = v96 + v113;
      v126 = v94 + v113;
      v35 = v93 + 1;
      if (v93 == -1)
      {
        goto LABEL_39;
      }
    }

    v54 = v123;
    if (EnumTagSinglePayload == 1)
    {
      v55 = *(v124 + *(v123 + 28));
      if (v55)
      {
        v56 = v55;
        v57 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v56);
        if (v58)
        {
          v59 = v57;
          v60 = v58;
          if ([v56 shouldHideContact])
          {
            v61 = v109;
            PersonNameComponents.init()();
            PersonNameComponents.givenName.setter();
            PersonNameComponents.familyName.setter();
            if (one-time initialization token for initials != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v62 = static NSPersonNameComponentsFormatter.initials;
            isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            v64 = [v62 stringFromPersonNameComponents_];

            v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v67 = v66;

            (*v104)(v61, v105);
            v129 = v65;
            v130 = v67;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol.localizedUppercase.getter();

            v68 = 0;
            v37 = v108;
            v54 = v123;
LABEL_24:

            v127 = v59;
            v128 = v60;
            v78 = *(v132 + *(v54 + 28));
            v39 = v119;
            if (v78)
            {
              v79 = v78;
              v80 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v79);
              if (v81)
              {
                v82 = v80;
                v83 = v81;
                if ([v79 shouldHideContact])
                {
                  PersonNameComponents.init()();
                  PersonNameComponents.givenName.setter();
                  PersonNameComponents.familyName.setter();
                  if (one-time initialization token for initials != -1)
                  {
                    swift_once();
                  }

                  swift_beginAccess();
                  v84 = static NSPersonNameComponentsFormatter.initials;
                  v85 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                  v86 = [v84 stringFromPersonNameComponents_];

                  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v89 = v88;

                  (*v104)(v109, v105);
                  v129 = v87;
                  v130 = v89;
                  lazy protocol witness table accessor for type String and conformance String();
                  StringProtocol.localizedUppercase.getter();

                  v90 = 0;
                  v37 = v108;
                  v39 = v119;
                  goto LABEL_33;
                }
              }

              else
              {
              }
            }

            v91 = v112;
            _s15ConversationKit11ParticipantVWOcTm_6(v132, v112, type metadata accessor for Participant);

            ParticipantContactDetailsCache.contactDetails(for:)();

            _s15ConversationKit11ParticipantVWOhTm_16(v91, type metadata accessor for Participant);
            v90 = v129;
            v82 = v130;
            v83 = v131;
LABEL_33:

            v129 = v82;
            v130 = v83;
            lazy protocol witness table accessor for type String and conformance String();
            v92 = StringProtocol.localizedCompare<A>(_:)();

            v75 = v92 == 1;
LABEL_34:
            _s15ConversationKit11ParticipantVWOhTm_16(v132, type metadata accessor for Participant);
            _s15ConversationKit11ParticipantVWOhTm_16(v124, type metadata accessor for Participant);
            v38 = v118;
            if ((v75 & 1) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_35;
          }
        }

        else
        {
        }
      }

      v77 = v112;
      _s15ConversationKit11ParticipantVWOcTm_6(v124, v112, type metadata accessor for Participant);

      ParticipantContactDetailsCache.contactDetails(for:)();

      _s15ConversationKit11ParticipantVWOhTm_16(v77, type metadata accessor for Participant);
      v68 = v129;
      v59 = v130;
      v60 = v131;
      goto LABEL_24;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v122 + v50, &_s10Foundation4DateVSgMd);
    _s15ConversationKit11ParticipantVWOhTm_16(v132, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_16(v124, type metadata accessor for Participant);
LABEL_39:
    a3 = v103 + 1;
    v34 = v102 + v98;
    v35 = v101 - 1;
    v36 = v100 + v98;
    if (v103 + 1 != v99)
    {
      continue;
    }

    break;
  }
}

{
  v8 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v36 = v19;
      v37 = a3;
      v34 = v21;
      v35 = v20;
      v22 = v19;
      do
      {
        v23 = v44;
        v24 = v42;
        (v42)(v44, v21, v8, v14);
        v25 = v45;
        v24(v45, v22, v8);
        _s10Foundation4UUIDVACSQAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
        v26 = dispatch thunk of static Comparable.< infix(_:_:)();
        v27 = *v18;
        (*v18)(v25, v8);
        v27(v23, v8);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return;
        }

        v28 = *v39;
        v29 = v41;
        (*v39)(v41, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        v28(v22, v29, v8);
        v22 += v38;
        v21 += v38;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v37 + 1;
      v19 = &v36[v32];
      v20 = v35 - 1;
      v21 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    type metadata accessor for UIWindowLevel(0);
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
    while (2)
    {
      v9 = *(v6 + 8 * v4);
      v17 = v8;
      v18 = v7;
      do
      {
        v10 = *v7;
        v11 = v9;
        v12 = v10;
        [v11 windowLevel];
        [v12 windowLevel];
        lazy protocol witness table accessor for type UIWindowLevel and conformance UIWindowLevel();
        v13 = dispatch thunk of static Comparable.< infix(_:_:)();

        if ((v13 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v14 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v14;
        v7 -= 8;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v7 = v18 + 8;
      v8 = v17 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v34 = v19;
      v35 = a3;
      v32 = v21;
      v33 = v20;
      v22 = v20;
      do
      {
        outlined init with copy of Participant?(v21, v16, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        outlined init with copy of Participant?(v19, v12, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        v23 = *(v8 + 36);
        v24 = *(v8 + 48);
        v25 = *&v16[v23] * *&v16[v24];
        v26 = *&v12[v23] * *&v12[v24];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        if (v26 >= v25)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return;
        }

        v27 = v38;
        outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v21, v38, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v27, v19, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
        v19 += v36;
        v21 += v36;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v35 + 1;
      v19 = v34 + v30;
      v20 = v33 - 1;
      v21 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

{
  v34 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      v23 = v34;
      do
      {
        _s15ConversationKit11ParticipantVWOcTm_6(v22, v16, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOcTm_6(v19, v12, type metadata accessor for Participant);
        v24 = MEMORY[0x1BFB1A420](&v16[*(v23 + 20)], &v12[*(v23 + 20)]);
        _s15ConversationKit11ParticipantVWOhTm_16(v12, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_16(v16, type metadata accessor for Participant);
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        outlined init with take of Participant(v22, v9);
        v23 = v34;
        swift_arrayInitWithTakeFrontToBack();
        outlined init with take of Participant(v9, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for CaptionSectioner.Caption(0);
  v110 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v100 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100 - v16;
  v112 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v94 = v20 + 16;
      v95 = *(v20 + 2);
      for (i = v20; v95 >= 2; v20 = i)
      {
        if (!*v112)
        {
          goto LABEL_139;
        }

        v96 = &v20[16 * v95];
        v97 = *v96;
        v20 = &v94[2 * v95];
        v98 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v112 + *(v110 + 72) * *v96, *v112 + *(v110 + 72) * *v20, *v112 + *(v110 + 72) * v98, v5);
        if (v6)
        {
          break;
        }

        if (v98 < v97)
        {
          goto LABEL_127;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_128;
        }

        *v96 = v97;
        *(v96 + 1) = v98;
        v99 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_129;
        }

        v95 = *v94 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v99, v20);
        *v94 = v95;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    goto LABEL_103;
  }

  v101 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v116 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    i = v20;
    v103 = v19;
    if (v19 + 1 < v18)
    {
      v23 = *v112;
      v24 = *(v110 + 72);
      v25 = v19;
      v26 = *v112 + v24 * v22;
      v109 = v18;
      outlined init with copy of Participant(v26, v17);
      v27 = v23 + v24 * v25;
      v5 = v115;
      outlined init with copy of Participant(v27, v115);
      LODWORD(v108) = static Date.< infix(_:_:)();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      v28 = v109;
      v29 = v103 + 2;
      v111 = v24;
      v20 = (v23 + v24 * (v103 + 2));
      while (1)
      {
        v30 = v29;
        if (++v22 >= v28)
        {
          break;
        }

        outlined init with copy of Participant(v20, v17);
        v5 = v115;
        outlined init with copy of Participant(v26, v115);
        v31 = static Date.< infix(_:_:)() & 1;
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        _s15ConversationKit0A14ControlsActionOWOhTm_0();
        v20 += v111;
        v26 += v111;
        v29 = v30 + 1;
        v28 = v109;
        if ((v108 & 1) != v31)
        {
          goto LABEL_9;
        }
      }

      v22 = v28;
LABEL_9:
      if (v108)
      {
        v21 = v103;
        if (v22 < v103)
        {
          goto LABEL_133;
        }

        if (v103 >= v22)
        {
          v20 = i;
          goto LABEL_32;
        }

        v100 = v6;
        if (v28 >= v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = v28;
        }

        v33 = v111 * (v32 - 1);
        v34 = v103;
        v35 = v111 * v32;
        v36 = v103 * v111;
        v37 = v22;
        v20 = i;
        do
        {
          if (v34 != --v37)
          {
            v5 = v22;
            v38 = *v112;
            if (!*v112)
            {
              goto LABEL_140;
            }

            _s15ConversationKit11ParticipantVWObTm_0(v38 + v36, v106);
            v39 = v36 < v33 || v38 + v36 >= (v38 + v35);
            if (v39)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v36 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            _s15ConversationKit11ParticipantVWObTm_0(v106, v38 + v33);
            v20 = i;
            v22 = v5;
          }

          ++v34;
          v33 -= v111;
          v35 -= v111;
          v36 += v111;
        }

        while (v34 < v37);
        v6 = v100;
      }

      else
      {
        v20 = i;
      }

      v21 = v103;
    }

LABEL_32:
    v40 = v112[1];
    if (v22 < v40)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_132;
      }

      if (v22 - v21 < v101)
      {
        break;
      }
    }

LABEL_48:
    if (v22 < v21)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v92;
    }

    v50 = *(v20 + 2);
    v51 = v50 + 1;
    if (v50 >= *(v20 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v93;
    }

    *(v20 + 2) = v51;
    v52 = v20 + 32;
    v53 = &v20[16 * v50 + 32];
    *v53 = v103;
    *(v53 + 1) = v22;
    v109 = *v102;
    if (!v109)
    {
      goto LABEL_141;
    }

    v111 = v22;
    if (v50)
    {
      i = v20;
      while (1)
      {
        v54 = v51 - 1;
        v55 = &v52[16 * v51 - 16];
        v56 = &v20[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v57 = *(v20 + 4);
          v58 = *(v20 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_69:
          if (v60)
          {
            goto LABEL_118;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_121;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_126;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v51 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v51 < 2)
        {
          goto LABEL_120;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_84:
        if (v75)
        {
          goto LABEL_123;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_125;
        }

        if (v82 < v74)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v54 - 1 >= v51)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_135;
        }

        if (!*v112)
        {
          goto LABEL_138;
        }

        v5 = v17;
        v86 = &v52[16 * v54 - 16];
        v87 = *v86;
        v88 = v52;
        v89 = v54;
        v20 = &v52[16 * v54];
        v90 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v112 + *(v110 + 72) * *v86, *v112 + *(v110 + 72) * *v20, *v112 + *(v110 + 72) * v90, v109);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v90 < v87)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v89 > v6)
        {
          goto LABEL_114;
        }

        *v86 = v87;
        *(v86 + 1) = v90;
        if (v89 >= v6)
        {
          goto LABEL_115;
        }

        v51 = v6 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v6 - 1 - v89, v20);
        v20 = i;
        *(i + 2) = v6 - 1;
        v91 = v6 > 2;
        v6 = 0;
        v52 = v88;
        v17 = v5;
        if (!v91)
        {
          goto LABEL_98;
        }
      }

      v61 = &v52[16 * v51];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_116;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_117;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_119;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_122;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_130;
        }

        if (v59 < v85)
        {
          v54 = v51 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v19 = v111;
    v18 = v112[1];
    if (v111 >= v18)
    {
      goto LABEL_101;
    }
  }

  v41 = v21 + v101;
  if (__OFADD__(v21, v101))
  {
    goto LABEL_134;
  }

  if (v41 >= v40)
  {
    v41 = v112[1];
  }

  if (v41 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v22 == v41)
  {
    goto LABEL_48;
  }

  v100 = v6;
  v42 = *v112;
  v43 = *(v110 + 72);
  v44 = *v112 + v43 * (v22 - 1);
  v45 = -v43;
  v46 = v21 - v22;
  v104 = v43;
  v105 = v41;
  v47 = v42 + v22 * v43;
LABEL_41:
  v111 = v22;
  v107 = v47;
  v108 = v46;
  v109 = v44;
  v48 = v44;
  while (1)
  {
    outlined init with copy of Participant(v47, v17);
    v5 = v115;
    outlined init with copy of Participant(v48, v115);
    v49 = static Date.< infix(_:_:)();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    _s15ConversationKit0A14ControlsActionOWOhTm_0();
    if ((v49 & 1) == 0)
    {
LABEL_46:
      v22 = v111 + 1;
      v44 = v109 + v104;
      v46 = v108 - 1;
      v47 = v107 + v104;
      if (v111 + 1 == v105)
      {
        v22 = v105;
        v6 = v100;
        v20 = i;
        v21 = v103;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v42)
    {
      break;
    }

    v5 = v114;
    _s15ConversationKit11ParticipantVWObTm_0(v47, v114);
    swift_arrayInitWithTakeFrontToBack();
    _s15ConversationKit11ParticipantVWObTm_0(v5, v48);
    v48 += v45;
    v47 += v45;
    v39 = __CFADD__(v46++, 1);
    if (v39)
    {
      goto LABEL_46;
    }
  }

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
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = type metadata accessor for CaptionSectioner.Caption(0);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v51 = a1;
  v50 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v43 = a1;
    v44 = v28;
LABEL_36:
    v45 = a2 + v28;
    v46 = a2;
    v30 = a3;
    v31 = v29;
    v42 = v29;
    while (1)
    {
      if (v27 <= a4)
      {
        v51 = v46;
        v49 = v31;
        goto LABEL_58;
      }

      if (v46 <= a1)
      {
        break;
      }

      v41 = v31;
      v32 = v30 + v28;
      v33 = v27 + v28;
      v34 = v30;
      outlined init with copy of Participant(v27 + v28, v11);
      outlined init with copy of Participant(v45, v47);
      v35 = static Date.< infix(_:_:)();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      if (v35)
      {
        if (v34 < v46 || v32 >= v46)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v32;
          v29 = v41;
          a1 = v43;
          v28 = v44;
        }

        else
        {
          v15 = v34 == v46;
          v28 = v44;
          v39 = v45;
          a2 = v45;
          a3 = v32;
          v29 = v41;
          a1 = v43;
          if (!v15)
          {
            v29 = v41;
            swift_arrayInitWithTakeBackToFront();
            a2 = v39;
          }
        }

        goto LABEL_36;
      }

      if (v34 < v27 || v32 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v32;
        v27 += v28;
        v31 = v33;
        a1 = v43;
        v28 = v44;
        v29 = v42;
      }

      else
      {
        v31 = v27 + v28;
        v15 = v27 == v34;
        v30 = v32;
        v27 += v28;
        v37 = v32;
        a1 = v43;
        v28 = v44;
        v29 = v42;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v37;
          v27 = v33;
          v31 = v33;
        }
      }
    }

    v51 = v46;
    v49 = v29;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v14 / v13, a4);
    v46 = a4 + v18 * v13;
    v49 = v46;
    while (a4 < v46 && a2 < a3)
    {
      v21 = a3;
      outlined init with copy of Participant(a2, v11);
      v22 = a2;
      outlined init with copy of Participant(a4, v47);
      v23 = static Date.< infix(_:_:)();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      _s15ConversationKit0A14ControlsActionOWOhTm_0();
      if (v23)
      {
        a2 += v13;
        v24 = a1 < v22 || a1 >= a2;
        v25 = v22;
        if (v24)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v50 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v51 = a1;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v51, &v50, &v49);
}

{
  v53 = type metadata accessor for TranscriptionViewModel.Caption(0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v56 = a1;
  v55 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v16 / v13, a4);
    v28 = a4 + v19 * v13;
    v29 = -v13;
    v30 = v28;
    v48 = a1;
    v49 = v29;
LABEL_36:
    v50 = a2 + v29;
    v51 = a2;
    v31 = a3;
    v32 = v30;
    v47 = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v56 = v51;
        v54 = v32;
        goto LABEL_58;
      }

      if (v51 <= a1)
      {
        break;
      }

      v46 = v32;
      v33 = a4;
      v34 = v31 + v29;
      v35 = v28 + v29;
      v36 = v31;
      outlined init with copy of Participant.Caption(v28 + v29, v11, type metadata accessor for TranscriptionViewModel.Caption);
      v37 = v11;
      v38 = v52;
      outlined init with copy of Participant.Caption(v50, v52, type metadata accessor for TranscriptionViewModel.Caption);
      v39 = static Date.< infix(_:_:)();
      v40 = v38;
      v11 = v37;
      outlined destroy of Participant.Caption(v40, type metadata accessor for TranscriptionViewModel.Caption);
      outlined destroy of Participant.Caption(v37, type metadata accessor for TranscriptionViewModel.Caption);
      if (v39)
      {
        v43 = v36 < v51 || v34 >= v51;
        a4 = v33;
        if (v43)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v34;
          v30 = v46;
          a1 = v48;
          v29 = v49;
        }

        else
        {
          v15 = v36 == v51;
          v29 = v49;
          v44 = v50;
          a2 = v50;
          a3 = v34;
          v30 = v46;
          a1 = v48;
          if (!v15)
          {
            v30 = v46;
            swift_arrayInitWithTakeBackToFront();
            a2 = v44;
          }
        }

        goto LABEL_36;
      }

      v41 = v36 < v28 || v34 >= v28;
      a4 = v33;
      if (v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v34;
        v28 = v35;
        v32 = v35;
        a1 = v48;
        v29 = v49;
        v30 = v47;
      }

      else
      {
        v32 = v35;
        v15 = v28 == v36;
        v31 = v34;
        v28 = v35;
        v42 = v34;
        a1 = v48;
        v29 = v49;
        v30 = v47;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v42;
          v28 = v35;
          v32 = v35;
        }
      }
    }

    v56 = v51;
    v54 = v30;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v14 / v13, a4);
    v51 = a4 + v18 * v13;
    v54 = v51;
    while (a4 < v51 && a2 < a3)
    {
      v21 = a3;
      outlined init with copy of Participant.Caption(a2, v11, type metadata accessor for TranscriptionViewModel.Caption);
      v22 = a2;
      v23 = v52;
      outlined init with copy of Participant.Caption(a4, v52, type metadata accessor for TranscriptionViewModel.Caption);
      v24 = static Date.< infix(_:_:)();
      outlined destroy of Participant.Caption(v23, type metadata accessor for TranscriptionViewModel.Caption);
      outlined destroy of Participant.Caption(v11, type metadata accessor for TranscriptionViewModel.Caption);
      if (v24)
      {
        a2 = v22 + v13;
        v25 = a1 < v22 || a1 >= a2;
        v26 = v22;
        if (v25)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v22;
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v55 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v56 = a1;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v56, &v55, &v54);
}

{
  v8 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_84;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_85;
  }

  v82 = v16;
  v25 = v21 / v20;
  v86 = a1;
  v85 = a4;
  v26 = v23 / v20;
  if (v21 / v20 < v23 / v20)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v21 / v20, a4);
    v79 = a3;
    v80 = (a4 + v25 * v20);
    v84 = v80;
    v27 = v82;
    while (1)
    {
      if (a4 >= v80 || a2 >= a3)
      {
        goto LABEL_82;
      }

      outlined init with copy of ParticipantReaction();
      outlined init with copy of ParticipantReaction();
      v29 = *(v27 + 28);
      v30 = *&v18[v29];
      if (v30)
      {
        v31 = [v30 value];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v29 = *(v27 + 28);
      }

      else
      {
        v83 = 0;
        v33 = 0xE000000000000000;
      }

      v34 = *&v14[v29];
      if (v34)
      {
        v35 = [v34 value];
        v81 = v33;
        v36 = v18;
        v37 = a1;
        v38 = v14;
        v39 = v20;
        v40 = a4;
        v41 = a2;
        v42 = v35;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        a2 = v41;
        a4 = v40;
        v20 = v39;
        v14 = v38;
        a1 = v37;
        v18 = v36;
        v33 = v81;
      }

      else
      {
        v43 = 0;
        v45 = 0xE000000000000000;
      }

      if (v43 == v83 && v45 == v33)
      {

        _s15ConversationKit11ParticipantVWOhTm_12();
        _s15ConversationKit11ParticipantVWOhTm_12();
      }

      else
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        _s15ConversationKit11ParticipantVWOhTm_12();
        _s15ConversationKit11ParticipantVWOhTm_12();
        if (v47)
        {
          v48 = a1 < a2 || a1 >= a2 + v20;
          a3 = v79;
          if (v48)
          {
            v27 = v82;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v27 = v82;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          a2 += v20;
          goto LABEL_46;
        }
      }

      v49 = a1 < a4 || a1 >= a4 + v20;
      a3 = v79;
      if (v49)
      {
        v27 = v82;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v27 = v82;
        if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v85 = a4 + v20;
      a4 += v20;
LABEL_46:
      a1 += v20;
      v86 = a1;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v23 / v20, a4);
  v50 = a4 + v26 * v20;
  v51 = -v20;
  v52 = v50;
  v53 = v82;
  v78 = -v20;
LABEL_48:
  v79 = a2 + v51;
  v81 = a3;
  v75 = v52;
  v77 = a2;
  while (1)
  {
    if (v50 <= a4)
    {
      v86 = a2;
      v84 = v52;
      goto LABEL_82;
    }

    if (a2 <= a1)
    {
      break;
    }

    v76 = v52;
    v54 = v50 + v51;
    v55 = v80;
    outlined init with copy of ParticipantReaction();
    outlined init with copy of ParticipantReaction();
    v56 = *(v53 + 28);
    v57 = *&v55[v56];
    if (v57)
    {
      v58 = [v57 value];
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      v56 = *(v53 + 28);
    }

    else
    {
      v59 = 0;
      v61 = 0xE000000000000000;
    }

    v62 = *&v83[v56];
    if (v62)
    {
      v63 = [v62 value];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;
    }

    else
    {
      v64 = 0;
      v66 = 0xE000000000000000;
    }

    if (v64 == v59 && v66 == v61)
    {
      v68 = 0;
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v53 = v82;

    v69 = v81;
    a3 = v81 + v78;
    _s15ConversationKit11ParticipantVWOhTm_12();
    _s15ConversationKit11ParticipantVWOhTm_12();
    if (v68)
    {
      if (v69 < v77 || a3 >= v77)
      {
        a2 = v79;
        swift_arrayInitWithTakeFrontToBack();
        v52 = v76;
        v51 = v78;
      }

      else
      {
        v52 = v76;
        v22 = v69 == v77;
        v51 = v78;
        v73 = v79;
        a2 = v79;
        if (!v22)
        {
          v74 = v76;
          swift_arrayInitWithTakeBackToFront();
          a2 = v73;
          v52 = v74;
        }
      }

      goto LABEL_48;
    }

    v70 = v69 < v50 || a3 >= v50;
    v71 = v69;
    a2 = v77;
    if (v70)
    {
      swift_arrayInitWithTakeFrontToBack();
      v81 = a3;
      v50 = v54;
      v52 = v54;
      v51 = v78;
    }

    else
    {
      v52 = v54;
      v22 = v50 == v71;
      v81 = a3;
      v50 = v54;
      v51 = v78;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v81 = a3;
        v50 = v54;
        v52 = v54;
      }
    }
  }

  v86 = a2;
  v84 = v75;
LABEL_82:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v86, &v85, &v84);
}

{
  v51 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v51);
  v50 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v49 = (&v44 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v44 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v44 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_86;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_87;
  }

  v23 = v19 / v18;
  v58 = a1;
  v57 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v56 = v25;
    while (1)
    {
      if (a4 >= v25 || a2 >= a3)
      {
        goto LABEL_84;
      }

      outlined init with copy of HUDActivityManager.BannerUpdate(a2, v16);
      outlined init with copy of HUDActivityManager.BannerUpdate(a4, v13);
      outlined init with copy of ConversationControlsType((v16 + 1), v52);
      outlined init with copy of ConversationControlsType((v13 + 1), v54);
      if (v53 == 1)
      {
        if (v55 != 1)
        {
          outlined destroy of ConversationControlsType(v52);
          outlined destroy of ConversationControlsType(v54);
          outlined destroy of HUDActivityManager.BannerUpdate(v13);
          outlined destroy of HUDActivityManager.BannerUpdate(v16);
          goto LABEL_35;
        }

        v27 = *v16 < *v13;
        outlined destroy of ConversationControlsType(v54);
        outlined destroy of ConversationControlsType(v52);
      }

      else
      {
        if (v55 == 1)
        {
          outlined destroy of ConversationControlsType(v54);
          outlined destroy of ConversationControlsType(v52);
          outlined destroy of HUDActivityManager.BannerUpdate(v13);
          outlined destroy of HUDActivityManager.BannerUpdate(v16);
LABEL_29:
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
          goto LABEL_47;
        }

        v27 = *v16 < *v13 || *v16 == *v13 && Date.compare(_:)() == -1;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, &_s15ConversationKit0A12ControlsTypeO_ACtMd);
      }

      outlined destroy of HUDActivityManager.BannerUpdate(v13);
      outlined destroy of HUDActivityManager.BannerUpdate(v16);
      if (v27)
      {
        goto LABEL_29;
      }

LABEL_35:
      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v57 = a4 + v18;
      a4 += v18;
LABEL_47:
      a1 += v18;
      v58 = a1;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v21 / v18, a4);
  v30 = a4 + v24 * v18;
  v31 = -v18;
  v32 = v30;
  v48 = v31;
LABEL_49:
  v33 = a2 + v31;
  v34 = a3;
  v45 = v32;
  v47 = a2 + v31;
  while (1)
  {
    if (v30 <= a4)
    {
      v58 = a2;
      goto LABEL_83;
    }

    if (a2 <= a1)
    {
      break;
    }

    v46 = v32;
    v35 = v30 + v31;
    v36 = v49;
    outlined init with copy of HUDActivityManager.BannerUpdate(v30 + v31, v49);
    v37 = v33;
    v38 = v50;
    outlined init with copy of HUDActivityManager.BannerUpdate(v37, v50);
    outlined init with copy of ConversationControlsType((v36 + 1), v52);
    outlined init with copy of ConversationControlsType((v38 + 1), v54);
    if (v53 == 1)
    {
      if (v55 == 1)
      {
        v39 = *v49 < *v50;
        outlined destroy of ConversationControlsType(v54);
        outlined destroy of ConversationControlsType(v52);
      }

      else
      {
        outlined destroy of ConversationControlsType(v52);
        outlined destroy of ConversationControlsType(v54);
        v39 = 0;
      }
    }

    else if (v55 == 1)
    {
      outlined destroy of ConversationControlsType(v54);
      outlined destroy of ConversationControlsType(v52);
      v39 = 1;
    }

    else
    {
      v39 = *v49 < *v50 || *v49 == *v50 && Date.compare(_:)() == -1;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, &_s15ConversationKit0A12ControlsTypeO_ACtMd);
    }

    a3 = v34 + v48;
    outlined destroy of HUDActivityManager.BannerUpdate(v50);
    outlined destroy of HUDActivityManager.BannerUpdate(v49);
    if (v39)
    {
      if (v34 < a2 || a3 >= a2)
      {
        a2 = v47;
        swift_arrayInitWithTakeFrontToBack();
        v32 = v46;
        v31 = v48;
      }

      else
      {
        v42 = v47;
        v32 = v46;
        v20 = v34 == a2;
        a2 = v47;
        v31 = v48;
        if (!v20)
        {
          v43 = v46;
          swift_arrayInitWithTakeBackToFront();
          a2 = v42;
          v32 = v43;
        }
      }

      goto LABEL_49;
    }

    if (v34 < v30 || a3 >= v30)
    {
      swift_arrayInitWithTakeFrontToBack();
      v34 = a3;
      v30 += v31;
      v32 = v35;
      v33 = v47;
      v31 = v48;
    }

    else
    {
      v32 = v30 + v31;
      v20 = v30 == v34;
      v34 = a3;
      v30 += v31;
      v33 = v47;
      v31 = v48;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v34 = a3;
        v30 = v35;
        v32 = v35;
      }
    }
  }

  v58 = a2;
  v32 = v45;
LABEL_83:
  v56 = v32;
LABEL_84:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v58, &v57, &v56);
}

{
  v50 = a3;
  v51 = type metadata accessor for Participant.Caption(0);
  MEMORY[0x1EEE9AC00](v51);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v42 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = v50 - a2;
  if (v50 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v54 = a1;
  v53 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v16 / v13, a4);
    v26 = a4 + v19 * v13;
    v27 = -v13;
    v28 = v26;
    v29 = v50;
    v47 = v8;
    v48 = a1;
    v46 = -v13;
    v44 = v11;
LABEL_36:
    v49 = a2;
    v50 = a2 + v27;
    v30 = v29;
    v31 = v28;
    v32 = v28;
    v45 = v28;
    while (1)
    {
      if (v26 <= a4)
      {
        v54 = a2;
        v52 = v31;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v43 = v31;
      v33 = v30 + v27;
      v34 = v26 + v27;
      v35 = v26;
      v36 = v30;
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      v37 = *v11;
      v38 = *v8;
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      if (v37 < v38)
      {
        v40 = v36 < v49 || v33 >= v49;
        v29 = v33;
        if (v40)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v11 = v44;
          v8 = v47;
          a1 = v48;
          v26 = v35;
          v27 = v46;
        }

        else
        {
          v28 = v43;
          v11 = v44;
          v15 = v36 == v49;
          v41 = v50;
          a2 = v50;
          v8 = v47;
          a1 = v48;
          v26 = v35;
          v27 = v46;
          if (!v15)
          {
            swift_arrayInitWithTakeBackToFront();
            v26 = v35;
            a2 = v41;
            v28 = v43;
          }
        }

        goto LABEL_36;
      }

      if (v36 < v35 || v33 >= v35)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v33;
        v26 = v34;
        v31 = v34;
        v8 = v47;
        a1 = v48;
        v11 = v44;
        v32 = v45;
        a2 = v49;
        v27 = v46;
      }

      else
      {
        v31 = v34;
        v15 = v35 == v36;
        v30 = v33;
        v26 = v34;
        v8 = v47;
        a1 = v48;
        v11 = v44;
        v32 = v45;
        a2 = v49;
        v27 = v46;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v33;
          v26 = v34;
          v31 = v34;
        }
      }
    }

    v54 = a2;
    v52 = v32;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v14 / v13, a4);
    v49 = a4 + v18 * v13;
    v52 = v49;
    while (a4 < v49 && a2 < v50)
    {
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      _s15ConversationKit11ParticipantV5StateOWOcTm_0();
      v21 = a2;
      v22 = *v11;
      v23 = *v8;
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
      if (v22 >= v23)
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v21;
        }

        else
        {
          a2 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v53 = a4 + v13;
        a4 += v13;
      }

      else
      {
        a2 = v21 + v13;
        if (a1 < v21 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 += v13;
      v54 = a1;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v54, &v53, &v52);
}

{
  v190 = type metadata accessor for PersonNameComponents();
  v205 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v191 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v195 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v194 = &v187 - v13;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v208);
  v193 = &v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v211 = &v187 - v16;
  v209 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v209);
  v199 = &v187 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v198 = &v187 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v207 = &v187 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v206 = &v187 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v196 = &v187 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v187 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v202 = &v187 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v187 - v32;
  v212 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v212);
  v210 = &v187 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v197 = &v187 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v200 = &v187 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v217 = &v187 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v215 = &v187 - v42;
  v44 = *(v43 + 72);
  if (!v44)
  {
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v45 = a2 - a1 == 0x8000000000000000 && v44 == -1;
  if (v45)
  {
    goto LABEL_122;
  }

  v46 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v44 != -1)
  {
    v213 = v33;
    v216 = a2;
    v48 = (a2 - a1) / v44;
    v225 = a1;
    v224 = a4;
    v214 = (v10 + 32);
    v201 = (v10 + 8);
    v189 = (v205 + 8);
    v49 = v46 / v44;
    v50 = v209;
    if (v48 >= v46 / v44)
    {
      v213 = v28;
      v204 = a1;
      v118 = v216;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v216, v49, a4);
      v205 = a4;
      v119 = a4 + v49 * v44;
      v120 = -v44;
      v121 = v119;
      v122 = v193;
      v123 = v199;
      v124 = v198;
      v125 = v197;
      v215 = v120;
LABEL_67:
      v126 = v121;
      v216 = v118;
      v211 = v118 + v120;
      v188 = v121;
      while (1)
      {
        if (v119 <= v205)
        {
          v225 = v216;
          v223 = v126;
          goto LABEL_120;
        }

        if (v216 <= v204)
        {
          v225 = v216;
          v223 = v188;
          goto LABEL_120;
        }

        v217 = a3;
        v207 = v126;
        v127 = v215;
        v128 = v119 + v215;
        _s15ConversationKit11ParticipantVWOcTm_6(v119 + v215, v125, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOcTm_6(v211, v210, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOcTm_6(v125, v124, type metadata accessor for Participant.State);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v130 = *(v129 + 48);
          outlined consume of Participant.CopresenceInfo?(*(v124 + *(v129 + 64)), *(v124 + *(v129 + 64) + 8));
          v131 = v213;
          (*v214)(v213, v124, v9);
          outlined destroy of Participant.MediaInfo(v124 + v130);
          v132 = 0;
        }

        else
        {
          _s15ConversationKit11ParticipantVWOhTm_16(v124, type metadata accessor for Participant.State);
          v132 = 1;
          v131 = v213;
        }

        __swift_storeEnumTagSinglePayload(v131, v132, 1, v9);
        _s15ConversationKit11ParticipantVWOcTm_6(v210, v123, type metadata accessor for Participant.State);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v134 = v196;
        if (EnumCaseMultiPayload == 4)
        {
          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v136 = *(v135 + 48);
          outlined consume of Participant.CopresenceInfo?(*(v123 + *(v135 + 64)), *(v123 + *(v135 + 64) + 8));
          (*v214)(v134, v123, v9);
          v131 = v213;
          outlined destroy of Participant.MediaInfo(v123 + v136);
          v137 = 0;
        }

        else
        {
          _s15ConversationKit11ParticipantVWOhTm_16(v123, type metadata accessor for Participant.State);
          v137 = 1;
        }

        __swift_storeEnumTagSinglePayload(v134, v137, 1, v9);
        v138 = *(v208 + 48);
        outlined init with take of Date?(v131, v122);
        outlined init with take of Date?(v134, v122 + v138);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v122, 1, v9);
        v140 = __swift_getEnumTagSinglePayload(v122 + v138, 1, v9);
        if (EnumTagSinglePayload == 1)
        {
          break;
        }

        v125 = v197;
        if (v140 == 1)
        {
          (*v201)(v122, v9);
          v158 = 1;
        }

        else
        {
          v159 = *v214;
          v160 = v194;
          (*v214)(v194, v122, v9);
          v161 = v122 + v138;
          v162 = v195;
          v159(v195, v161, v9);
          v158 = static Date.< infix(_:_:)();
          v163 = *v201;
          v164 = v162;
          v122 = v193;
          (*v201)(v164, v9);
          v165 = v160;
          v127 = v215;
          v163(v165, v9);
        }

LABEL_101:
        v181 = v217 + v127;
        v182 = v217;
        _s15ConversationKit11ParticipantVWOhTm_16(v210, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_16(v125, type metadata accessor for Participant);
        if (v158)
        {
          v185 = v182 < v216 || v181 >= v216;
          v186 = v182;
          a3 = v181;
          if (v185)
          {
            v118 = v211;
            swift_arrayInitWithTakeFrontToBack();
            v121 = v207;
            v123 = v199;
            v124 = v198;
            v120 = v215;
          }

          else
          {
            v121 = v207;
            v118 = v211;
            v123 = v199;
            v124 = v198;
            v120 = v215;
            if (v186 != v216)
            {
              v118 = v211;
              swift_arrayInitWithTakeBackToFront();
              v121 = v207;
            }
          }

          goto LABEL_67;
        }

        v183 = v182 < v119 || v181 >= v119;
        v184 = v181;
        if (v183)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v181;
          v119 = v128;
          v126 = v128;
          v123 = v199;
          v124 = v198;
        }

        else
        {
          v126 = v128;
          v45 = v119 == v182;
          a3 = v181;
          v119 = v128;
          v123 = v199;
          v124 = v198;
          if (!v45)
          {
            swift_arrayInitWithTakeBackToFront();
            a3 = v184;
            v119 = v128;
            v126 = v128;
          }
        }
      }

      v125 = v197;
      if (v140 != 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v122 + v138, &_s10Foundation4DateVSgMd);
        v158 = 0;
        goto LABEL_101;
      }

      v141 = v212;
      v142 = *&v197[*(v212 + 28)];
      v203 = v128;
      if (v142)
      {
        v143 = v142;
        v144 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v143);
        if (v145)
        {
          v146 = v144;
          v147 = v145;
          if ([v143 shouldHideContact])
          {
            v206 = v146;
            v148 = v191;
            PersonNameComponents.init()();
            PersonNameComponents.givenName.setter();
            PersonNameComponents.familyName.setter();
            if (one-time initialization token for initials != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v149 = static NSPersonNameComponentsFormatter.initials;
            isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            v151 = [v149 stringFromPersonNameComponents_];

            v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v154 = v153;

            (*v189)(v148, v190);
            v220 = v152;
            v221 = v154;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol.localizedUppercase.getter();

            v155 = v147;

            v156 = 0;
            v141 = v212;
            v157 = v206;
LABEL_91:

            v218 = v157;
            v219 = v155;
            v167 = *(v210 + *(v141 + 28));
            v128 = v203;
            v206 = v155;
            if (v167)
            {
              v168 = v167;
              v202 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v168);
              if (v169)
              {
                v170 = v169;
                if ([v168 shouldHideContact])
                {
                  PersonNameComponents.init()();
                  PersonNameComponents.givenName.setter();
                  PersonNameComponents.familyName.setter();
                  if (one-time initialization token for initials != -1)
                  {
                    swift_once();
                  }

                  swift_beginAccess();
                  v171 = static NSPersonNameComponentsFormatter.initials;
                  v187 = v171;
                  v172 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
                  v173 = [v171 stringFromPersonNameComponents_];

                  v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v176 = v175;

                  (*v189)(v191, v190);
                  v220 = v174;
                  v221 = v176;
                  lazy protocol witness table accessor for type String and conformance String();
                  StringProtocol.localizedUppercase.getter();

                  v177 = 0;
                  v178 = v202;
                  goto LABEL_100;
                }
              }

              else
              {
              }
            }

            v179 = v200;
            _s15ConversationKit11ParticipantVWOcTm_6(v210, v200, type metadata accessor for Participant);

            ParticipantContactDetailsCache.contactDetails(for:)();

            _s15ConversationKit11ParticipantVWOhTm_16(v179, type metadata accessor for Participant);
            v177 = v220;
            v178 = v221;
            v170 = v222;
LABEL_100:

            v220 = v178;
            v221 = v170;
            lazy protocol witness table accessor for type String and conformance String();
            v180 = StringProtocol.localizedCompare<A>(_:)();

            v158 = v180 == 1;
            v122 = v193;
            v127 = v215;
            goto LABEL_101;
          }
        }

        else
        {
        }
      }

      v166 = v200;
      _s15ConversationKit11ParticipantVWOcTm_6(v125, v200, type metadata accessor for Participant);

      ParticipantContactDetailsCache.contactDetails(for:)();

      _s15ConversationKit11ParticipantVWOhTm_16(v166, type metadata accessor for Participant);
      v156 = v220;
      v157 = v221;
      v155 = v222;
      goto LABEL_91;
    }

    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v48, a4);
    v210 = a4 + v48 * v44;
    v223 = v210;
    v51 = v216;
    v203 = a3;
    v52 = v202;
    v192 = v9;
    while (1)
    {
      if (a4 >= v210 || v51 >= a3)
      {
LABEL_120:
        specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v225, &v224, &v223);
        return;
      }

      v54 = v44;
      v55 = v215;
      _s15ConversationKit11ParticipantVWOcTm_6(v51, v215, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(a4, v217, type metadata accessor for Participant);
      v56 = v206;
      _s15ConversationKit11ParticipantVWOcTm_6(v55, v206, type metadata accessor for Participant.State);
      v57 = v50;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v59 = *(v58 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v56 + *(v58 + 64)), *(v56 + *(v58 + 64) + 8));
        v60 = v213;
        (*v214)(v213, v56, v9);
        v61 = v56 + v59;
        v52 = v202;
        outlined destroy of Participant.MediaInfo(v61);
        v62 = 0;
        v63 = v207;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v56, type metadata accessor for Participant.State);
        v62 = 1;
        v63 = v207;
        v60 = v213;
      }

      __swift_storeEnumTagSinglePayload(v60, v62, 1, v9);
      _s15ConversationKit11ParticipantVWOcTm_6(v217, v63, type metadata accessor for Participant.State);
      v50 = v57;
      v64 = swift_getEnumCaseMultiPayload();
      v216 = v51;
      if (v64 == 4)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v66 = v63;
        v67 = *(v65 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v66 + *(v65 + 64)), *(v66 + *(v65 + 64) + 8));
        (*v214)(v52, v66, v9);
        outlined destroy of Participant.MediaInfo(v66 + v67);
        v68 = 0;
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_16(v63, type metadata accessor for Participant.State);
        v68 = 1;
      }

      __swift_storeEnumTagSinglePayload(v52, v68, 1, v9);
      v69 = *(v208 + 48);
      v70 = v211;
      outlined init with take of Date?(v213, v211);
      outlined init with take of Date?(v52, v70 + v69);
      v71 = __swift_getEnumTagSinglePayload(v70, 1, v9);
      v72 = __swift_getEnumTagSinglePayload(v70 + v69, 1, v9);
      if (v71 != 1)
      {
        v44 = v54;
        if (v72 == 1)
        {
          (*v201)(v211, v9);
          _s15ConversationKit11ParticipantVWOhTm_16(v217, type metadata accessor for Participant);
          _s15ConversationKit11ParticipantVWOhTm_16(v215, type metadata accessor for Participant);
          a3 = v203;
LABEL_49:
          v51 = v216 + v44;
          if (a1 < v216 || a1 >= v51)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v216)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_66;
        }

        v91 = *v214;
        v92 = v194;
        v93 = v211;
        (*v214)(v194, v211, v9);
        v94 = v195;
        v91(v195, v93 + v69, v9);
        v95 = static Date.< infix(_:_:)();
        v96 = *v201;
        (*v201)(v94, v9);
        v97 = v92;
        v50 = v209;
        v96(v97, v9);
        v52 = v202;
        a3 = v203;
        goto LABEL_48;
      }

      v44 = v54;
      if (v72 != 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v211 + v69, &_s10Foundation4DateVSgMd);
        _s15ConversationKit11ParticipantVWOhTm_16(v217, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_16(v215, type metadata accessor for Participant);
        a3 = v203;
        goto LABEL_55;
      }

      v204 = a1;
      v73 = v212;
      v74 = *(v215 + *(v212 + 28));
      v205 = a4;
      if (!v74)
      {
        goto LABEL_37;
      }

      v75 = v74;
      v76 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v75);
      if (!v77)
      {
        break;
      }

      v78 = v76;
      v79 = v77;
      if (([v75 shouldHideContact] & 1) == 0)
      {

        goto LABEL_37;
      }

      v199 = v78;
      v80 = v79;
      v81 = v191;
      PersonNameComponents.init()();
      PersonNameComponents.givenName.setter();
      PersonNameComponents.familyName.setter();
      if (one-time initialization token for initials != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v82 = static NSPersonNameComponentsFormatter.initials;
      v83 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v84 = [v82 stringFromPersonNameComponents_];

      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      (*v189)(v81, v190);
      v220 = v85;
      v221 = v87;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.localizedUppercase.getter();

      v88 = v80;

      v89 = 0;
      v73 = v212;
      v52 = v202;
      v90 = v199;
LABEL_38:

      v218 = v90;
      v219 = v88;
      v199 = v88;
      v99 = *(v217 + *(v73 + 28));
      v9 = v192;
      if (v99)
      {
        v100 = v99;
        v101 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v100);
        if (v102)
        {
          v103 = v101;
          v104 = v102;
          if ([v100 shouldHideContact])
          {
            v198 = v103;
            v105 = v191;
            PersonNameComponents.init()();
            PersonNameComponents.givenName.setter();
            PersonNameComponents.familyName.setter();
            if (one-time initialization token for initials != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v106 = static NSPersonNameComponentsFormatter.initials;
            v107 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
            v108 = [v106 stringFromPersonNameComponents_];

            v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v111 = v110;

            (*v189)(v105, v190);
            v220 = v109;
            v221 = v111;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol.localizedUppercase.getter();

            v112 = 0;
            a3 = v203;
            v52 = v202;
            v113 = v198;
            goto LABEL_47;
          }
        }

        else
        {
        }
      }

      v114 = v200;
      _s15ConversationKit11ParticipantVWOcTm_6(v217, v200, type metadata accessor for Participant);

      ParticipantContactDetailsCache.contactDetails(for:)();

      _s15ConversationKit11ParticipantVWOhTm_16(v114, type metadata accessor for Participant);
      v112 = v220;
      v113 = v221;
      v104 = v222;
      a3 = v203;
LABEL_47:

      v220 = v113;
      v221 = v104;
      lazy protocol witness table accessor for type String and conformance String();
      v115 = StringProtocol.localizedCompare<A>(_:)();

      v95 = v115 == 1;
      a1 = v204;
      a4 = v205;
      v50 = v209;
LABEL_48:
      _s15ConversationKit11ParticipantVWOhTm_16(v217, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v215, type metadata accessor for Participant);
      if (v95)
      {
        goto LABEL_49;
      }

LABEL_55:
      v117 = a1 < a4 || a1 >= a4 + v44;
      v51 = v216;
      if (v117)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v224 = a4 + v44;
      a4 += v44;
LABEL_66:
      a1 += v44;
      v225 = a1;
    }

LABEL_37:
    v98 = v200;
    _s15ConversationKit11ParticipantVWOcTm_6(v215, v200, type metadata accessor for Participant);

    ParticipantContactDetailsCache.contactDetails(for:)();

    _s15ConversationKit11ParticipantVWOhTm_16(v98, type metadata accessor for Participant);
    v89 = v220;
    v90 = v221;
    v88 = v222;
    goto LABEL_38;
  }

LABEL_123:
  __break(1u);
}

{
  v62 = a4;
  v7 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v50 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v13;
  v65 = a1;
  v64 = v62;
  v57 = (v10 + 8);
  v58 = (v10 + 16);
  v18 = v13;
  v19 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v34 = v62;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v15 / v13, v62);
    v35 = v34 + v19 * v18;
    v36 = -v18;
    v37 = v35;
    v53 = -v18;
    v54 = a1;
LABEL_36:
    v55 = a2;
    v56 = a2 + v36;
    v38 = a3;
    v51 = v37;
    while (1)
    {
      if (v35 <= v62)
      {
        v65 = a2;
        v63 = v37;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v37;
      v61 = v38 + v36;
      v39 = v35 + v36;
      v40 = v35;
      v41 = v59;
      v42 = *v58;
      (*v58)(v59, v39, v7);
      v43 = v60;
      v42(v60, v56, v7);
      _s10Foundation4UUIDVACSQAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
      LOBYTE(v42) = dispatch thunk of static Comparable.< infix(_:_:)();
      v44 = *v57;
      (*v57)(v43, v7);
      v44(v41, v7);
      if (v42)
      {
        v35 = v40;
        a3 = v61;
        if (v38 < v55 || v61 >= v55)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v52;
          v36 = v53;
          a1 = v54;
        }

        else
        {
          v48 = v52;
          v36 = v53;
          v37 = v52;
          v14 = v38 == v55;
          v49 = v56;
          a2 = v56;
          a1 = v54;
          if (!v14)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v49;
            v37 = v48;
          }
        }

        goto LABEL_36;
      }

      v45 = v61;
      if (v38 < v40 || v61 >= v40)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 = v45;
        v35 = v39;
        v37 = v39;
        a1 = v54;
        a2 = v55;
        v36 = v53;
      }

      else
      {
        v37 = v39;
        v14 = v40 == v38;
        v38 = v61;
        v35 = v39;
        a1 = v54;
        a2 = v55;
        v36 = v53;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v38 = v45;
          v35 = v39;
          v37 = v39;
        }
      }
    }

    v65 = a2;
    v63 = v51;
  }

  else
  {
    v20 = v62;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / v13, v62);
    v56 = v20 + v17 * v18;
    v63 = v56;
    v21 = v18;
    v61 = a3;
    while (v62 < v56 && a2 < a3)
    {
      v23 = a1;
      v24 = v59;
      v25 = *v58;
      (*v58)(v59, a2, v7);
      v26 = a2;
      v27 = v60;
      v25(v60, v62, v7);
      _s10Foundation4UUIDVACSQAAWlTm_1(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
      v28 = dispatch thunk of static Comparable.< infix(_:_:)();
      v29 = *v57;
      (*v57)(v27, v7);
      v29(v24, v7);
      if (v28)
      {
        a2 = v26 + v21;
        v30 = v23;
        if (v23 < v26 || v23 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v61;
        }

        else
        {
          a3 = v61;
          if (v23 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v32 = v62 + v21;
        v30 = v23;
        if (v23 < v62 || v23 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v26;
          a3 = v61;
        }

        else
        {
          a3 = v61;
          a2 = v26;
          if (v23 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v32;
        v62 = v32;
      }

      a1 = v30 + v21;
      v65 = a1;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v65, &v64, &v63);
}

{
  v49 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_61;
  }

  v15 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v17 = v13 / v12;
  v54 = a1;
  v53 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v15 / v12, a4);
    v27 = a4 + v18 * v12;
    v28 = -v12;
    v29 = v27;
    v30 = v49;
    v48 = v28;
    v45 = v10;
    v46 = a1;
LABEL_37:
    v49 = a2 + v28;
    v43 = v29;
    v47 = a2;
    while (1)
    {
      if (v27 <= a4)
      {
        v54 = a2;
        v52 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v44 = v29;
      v31 = v30 + v48;
      v32 = v27 + v48;
      v33 = v30;
      outlined init with copy of Participant?(v27 + v48, v10, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v34 = v50;
      outlined init with copy of Participant?(v49, v50, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v35 = *(v51 + 36);
      v36 = *(v51 + 48);
      v37 = *&v10[v35] * *&v10[v36];
      v38 = *(v34 + v35) * *(v34 + v36);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      if (v38 < v37)
      {
        v40 = v33 < v47 || v31 >= v47;
        v30 = v31;
        if (v40)
        {
          a2 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v10 = v45;
          v28 = v48;
          a1 = v46;
        }

        else
        {
          v10 = v45;
          v29 = v44;
          v14 = v33 == v47;
          v28 = v48;
          v41 = v49;
          a2 = v49;
          a1 = v46;
          if (!v14)
          {
            v42 = v44;
            swift_arrayInitWithTakeBackToFront();
            a2 = v41;
            v29 = v42;
          }
        }

        goto LABEL_37;
      }

      if (v33 < v27 || v31 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v31;
        v27 = v32;
        v29 = v32;
        a1 = v46;
        a2 = v47;
        v10 = v45;
      }

      else
      {
        v29 = v32;
        v14 = v27 == v33;
        v30 = v31;
        v27 = v32;
        a1 = v46;
        a2 = v47;
        v10 = v45;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v31;
          v27 = v32;
          v29 = v32;
        }
      }
    }

    v54 = a2;
    v52 = v43;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v13 / v12, a4);
    v48 = a4 + v17 * v12;
    v52 = v48;
    while (a4 < v48 && a2 < v49)
    {
      outlined init with copy of Participant?(a2, v10, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v20 = v50;
      outlined init with copy of Participant?(a4, v50, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v21 = *(v51 + 36);
      v22 = *(v51 + 48);
      v23 = *&v10[v21] * *&v10[v22];
      v24 = *(v20 + v21) * *(v20 + v22);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      if (v24 >= v23)
      {
        if (a1 < a4 || a1 >= a4 + v12)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v53 = a4 + v12;
        a4 += v12;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v12)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v12;
      }

      a1 += v12;
      v54 = a1;
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v54, &v53, &v52);
}

{
  v53 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v56 = a1;
  v55 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v16 / v13, a4);
    v28 = a4 + v19 * v13;
    v29 = -v13;
    v30 = v28;
    v48 = a1;
    v49 = v29;
LABEL_36:
    v50 = a2 + v29;
    v51 = a2;
    v31 = a3;
    v32 = v30;
    v47 = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v56 = v51;
        v54 = v32;
        goto LABEL_58;
      }

      if (v51 <= a1)
      {
        break;
      }

      v46 = v32;
      v33 = a4;
      v34 = v31 + v29;
      v35 = v28 + v29;
      v36 = v31;
      _s15ConversationKit11ParticipantVWOcTm_6(v28 + v29, v11, type metadata accessor for Participant);
      v37 = v11;
      v38 = v52;
      _s15ConversationKit11ParticipantVWOcTm_6(v50, v52, type metadata accessor for Participant);
      v39 = MEMORY[0x1BFB1A420](v37 + *(v53 + 20), v38 + *(v53 + 20));
      v40 = v38;
      v11 = v37;
      _s15ConversationKit11ParticipantVWOhTm_16(v40, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v37, type metadata accessor for Participant);
      if (v39)
      {
        v43 = v36 < v51 || v34 >= v51;
        a4 = v33;
        if (v43)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v34;
          v30 = v46;
          a1 = v48;
          v29 = v49;
        }

        else
        {
          v15 = v36 == v51;
          v29 = v49;
          v44 = v50;
          a2 = v50;
          a3 = v34;
          v30 = v46;
          a1 = v48;
          if (!v15)
          {
            v30 = v46;
            swift_arrayInitWithTakeBackToFront();
            a2 = v44;
          }
        }

        goto LABEL_36;
      }

      v41 = v36 < v28 || v34 >= v28;
      a4 = v33;
      if (v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v34;
        v28 = v35;
        v32 = v35;
        a1 = v48;
        v29 = v49;
        v30 = v47;
      }

      else
      {
        v32 = v35;
        v15 = v28 == v36;
        v31 = v34;
        v28 = v35;
        v42 = v34;
        a1 = v48;
        v29 = v49;
        v30 = v47;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v42;
          v28 = v35;
          v32 = v35;
        }
      }
    }

    v56 = v51;
    v54 = v30;
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v14 / v13, a4);
    v51 = a4 + v18 * v13;
    v54 = v51;
    while (a4 < v51 && a2 < a3)
    {
      v21 = a3;
      _s15ConversationKit11ParticipantVWOcTm_6(a2, v11, type metadata accessor for Participant);
      v22 = a2;
      v23 = v52;
      _s15ConversationKit11ParticipantVWOcTm_6(a4, v52, type metadata accessor for Participant);
      v24 = MEMORY[0x1BFB1A420](&v11[*(v53 + 20)], v23 + *(v53 + 20));
      _s15ConversationKit11ParticipantVWOhTm_16(v23, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v11, type metadata accessor for Participant);
      if (v24)
      {
        a2 = v22 + v13;
        v25 = a1 < v22 || a1 >= a2;
        v26 = v22;
        if (v25)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v22;
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v55 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v56 = a1;
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v56, &v55, &v54, type metadata accessor for Participant);
}