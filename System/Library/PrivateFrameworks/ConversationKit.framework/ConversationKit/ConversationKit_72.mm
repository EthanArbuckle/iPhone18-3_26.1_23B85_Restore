void MultiwayViewController.handleTapInteraction(_:eventType:)()
{
  OUTLINED_FUNCTION_29();
  v94 = v3;
  v95 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_174();
  v11 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_246_3();
  v15 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v97 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v96 = v19 - v18;
  v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(v99, (v0 + v20), sizeof(v99));
  memcpy(v100, (v0 + v20), 0xE8uLL);
  OUTLINED_FUNCTION_46_26(v100);
  if (v51)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v21, &static Logger.conversationControls);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v23))
    {
      v24 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v24);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_18();
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v31 = v6;

    Strong = v6;
  }

  else
  {
    memcpy(v98, v99, sizeof(v98));
    OUTLINED_FUNCTION_145_6();
  }

  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState) == 1)
  {
    MultiwayViewController.toggleReactionsView()();
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v32, &static Logger.conversationControls);
    v22 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v33))
    {
      v34 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v34);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_18();
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
LABEL_16:

LABEL_17:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  if (!Strong || (type metadata accessor for ParticipantView(), (v40 = swift_dynamicCastClass()) == 0))
  {
    v43 = *(v8 + OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer);
    if ([v43 numberOfTapsRequired] == 1)
    {
      MultiwayViewController.didSingleTapBackground()();
      MultiwayViewController.restartAutoHideInCallControlsTimer()();
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v44 = OUTLINED_FUNCTION_13_12();
      *(v44 + 16) = xmmword_1BC4BA940;
      v98[0] = [v43 numberOfTapsRequired];
      v45 = String.init<A>(reflecting:)();
      v47 = v46;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)();
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    goto LABEL_17;
  }

  v93 = Strong;
  v41 = v15;
  v42 = v40;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v0, 1, v41);
  if (v51)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
    v50 = v93;
LABEL_32:
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v52 = OUTLINED_FUNCTION_13_12();
    *(v52 + 16) = xmmword_1BC4BA940;
    OUTLINED_FUNCTION_195_1();
    v53 = v50;
    OUTLINED_FUNCTION_232_3();
    OUTLINED_FUNCTION_254();
    *(v52 + 56) = MEMORY[0x1E69E6158];
    *(v52 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v52 + 32) = v11;
    *(v52 + 40) = v2;
    OUTLINED_FUNCTION_51_22();
    os_log(_:dso:log:type:_:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);

    goto LABEL_17;
  }

  v48 = OUTLINED_FUNCTION_78();
  v49(v48);
  v91 = v41;
  v50 = v93;
  v92 = v93;
  ConversationController.participant(with:)();
  OUTLINED_FUNCTION_115(v2, 1, v11);
  if (v51)
  {

    (*(v97 + 8))(v96, v91);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_184();
  _s15ConversationKit11ParticipantVWObTm_7();
  v54 = [v100[1] view];
  if (v54)
  {
    v55 = v54;
    v56 = [v42 isDescendantOfView_];

    if (v56)
    {
      v57 = *(v8 + OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer);
      v58 = [v57 numberOfTapsRequired];
      if (v58 != 2)
      {
        v59 = v92;
        if (v58 == 1)
        {
          v60 = OUTLINED_FUNCTION_180_4();
          MultiwayViewController.didSingleTapGridParticipantView(_:participant:)(v60, v61);
LABEL_44:
          MultiwayViewController.restartAutoHideInCallControlsTimer()();
LABEL_64:
          v84 = v96;
          goto LABEL_65;
        }

        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        OUTLINED_FUNCTION_194();
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1BC4BAA20;
        [v57 numberOfTapsRequired];
        v70 = String.init<A>(reflecting:)();
        v72 = v71;
        v73 = MEMORY[0x1E69E6158];
        *(v69 + 56) = MEMORY[0x1E69E6158];
        v74 = lazy protocol witness table accessor for type String and conformance String();
        *(v69 + 64) = v74;
        *(v69 + 32) = v70;
        *(v69 + 40) = v72;
        OUTLINED_FUNCTION_195_1();
        v75 = v92;
        v76 = OUTLINED_FUNCTION_232_3();
        *(v69 + 96) = v73;
        *(v69 + 104) = v74;
        *(v69 + 72) = v76;
        *(v69 + 80) = v77;
        OUTLINED_FUNCTION_51_22();
        os_log(_:dso:log:type:_:)();
LABEL_63:

        goto LABEL_64;
      }

      v67 = OUTLINED_FUNCTION_180_4();
      MultiwayViewController.didDoubleTapGridParticipantView(_:participant:)(v67, v68);
LABEL_58:
      MultiwayViewController.restartAutoHideInCallControlsTimer()();
      v84 = v96;
      v59 = v92;
LABEL_65:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);

      (*(v97 + 8))(v84, v91);
      OUTLINED_FUNCTION_0_220();
      _s15ConversationKit11ParticipantVWOhTm_17();
      goto LABEL_17;
    }

    v62 = [v100[0] &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];
    if (v62)
    {
      v63 = v62;
      v64 = [v42 isDescendantOfView_];

      if (v64)
      {
        v59 = v92;
        if (OUTLINED_FUNCTION_270_3(OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer) == 1)
        {
          OUTLINED_FUNCTION_180_4();
          MultiwayViewController.didSingleTapRosterParticipantView(_:participant:)();
          goto LABEL_44;
        }

        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        OUTLINED_FUNCTION_194();
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_1BC4BAA20;
        [v64 &selRef_setOracleUsingController_contact_ + 5];
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_80_0();
        v79 = MEMORY[0x1E69E6158];
        *(v78 + 56) = MEMORY[0x1E69E6158];
        v80 = lazy protocol witness table accessor for type String and conformance String();
        *(v78 + 64) = v80;
        *(v78 + 32) = v64;
        *(v78 + 40) = &selRef__iconForResourceProxy_format_;
        OUTLINED_FUNCTION_195_1();
        v81 = v92;
        v82 = OUTLINED_FUNCTION_232_3();
        *(v78 + 96) = v79;
        *(v78 + 104) = v80;
        *(v78 + 72) = v82;
        *(v78 + 80) = v83;
      }

      else
      {
        if (*(v1 + *(v11 + 28)))
        {
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v65 = OUTLINED_FUNCTION_13_12();
          *(v65 + 16) = xmmword_1BC4BA940;
          OUTLINED_FUNCTION_195_1();
          v59 = v92;
          v66 = v92;
          OUTLINED_FUNCTION_232_3();
          OUTLINED_FUNCTION_80_0();
          *(v65 + 56) = MEMORY[0x1E69E6158];
          *(v65 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v65 + 32) = v64;
          *(v65 + 40) = &selRef__iconForResourceProxy_format_;
          OUTLINED_FUNCTION_51_22();
          os_log(_:dso:log:type:_:)();

          goto LABEL_64;
        }

        if (OUTLINED_FUNCTION_270_3(OBJC_IVAR____TtC15ConversationKit14TapInteraction_tapGestureRecognizer) == 1)
        {
          MultiwayViewController.didTapLocalParticipantView(_:eventType:)(v42, v6, v94, v95);
          goto LABEL_58;
        }

        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        OUTLINED_FUNCTION_194();
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1BC4BAA20;
        [v64 &selRef_setOracleUsingController_contact_ + 5];
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_80_0();
        v86 = MEMORY[0x1E69E6158];
        *(v85 + 56) = MEMORY[0x1E69E6158];
        v87 = lazy protocol witness table accessor for type String and conformance String();
        *(v85 + 64) = v87;
        *(v85 + 32) = v64;
        *(v85 + 40) = &selRef__iconForResourceProxy_format_;
        OUTLINED_FUNCTION_195_1();
        v59 = v92;
        v88 = v92;
        v89 = OUTLINED_FUNCTION_232_3();
        *(v85 + 96) = v86;
        *(v85 + 104) = v87;
        *(v85 + 72) = v89;
        *(v85 + 80) = v90;
      }

      OUTLINED_FUNCTION_51_22();
      os_log(_:dso:log:type:_:)();
      goto LABEL_63;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id MultiwayViewController.didSingleTapGridParticipantView(_:participant:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v88 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v88 - v9;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_16();
  v92 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v92);
  specialized >> prefix<A>(_:)();
  v13 = v12;
  v15 = v14;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd);
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v98, &v2[v16], sizeof(v98));
  memcpy(v99, &v2[v16], 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v99);
  if (result != 1)
  {
    v91 = v2;
    memcpy(v96, v98, sizeof(v96));
    outlined init with copy of MultiwayViewController.ViewContent(v96, v95);
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v89 = a1;
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, &static Logger.conversationControls);
    memcpy(v97, v98, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v97, v95);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    if (os_log_type_enabled(v19, v20))
    {
      v90 = v7;
      v88 = a2;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v95[0] = v22;
      *v21 = 136315394;
      v23 = v99[6];
      v24 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
      swift_beginAccess();
      v94[0] = *(v23 + v24);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v95);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v28 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
      swift_beginAccess();
      if (*(v23 + v28))
      {
        v29 = v91;
        if (*(v23 + v28) == 1)
        {
          v30 = 0xE700000000000000;
          v31 = 0x656C6269736976;
        }

        else
        {
          v30 = 0xEE00756E654D676ELL;
          v31 = 0x69746E6573657270;
        }

        a2 = v88;
      }

      else
      {
        v30 = 0xE600000000000000;
        v31 = 0x6E6564646968;
        a2 = v88;
        v29 = v91;
      }

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v95);

      *(v21 + 14) = v33;
      _os_log_impl(&dword_1BBC58000, v19, v20, "didSingleTapGridParticipantView: inCallControlsState:%s inCallConversationBannerState:%s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      MEMORY[0x1BFB23DF0](v21, -1, -1);

      v7 = v90;
      v32 = v92;
    }

    else
    {

      v29 = v91;
      v32 = v92;
    }

    v34 = v99[6];
    v35 = OBJC_IVAR___CNKFaceTimeConstraintsController_participantGridState;
    swift_beginAccess();
    if ((*(v34 + v35) & 1) == 0)
    {
      MultiwayViewController.didSingleTapBackground()();
    }

    if ((Participant.isActive.getter() & 1) == 0)
    {
      MultiwayViewController.didSingleTapBackground()();
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }

    v36 = v99[1];
    if ((*(v34 + v35) & 1) == 0)
    {
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v32);
      ParticipantGridViewController.select(_:forFocusing:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd);
LABEL_25:
      v44 = v99[7];
      v45 = v99[7];
      MultiwayViewController.bringSubviewToFront(_:)(v44);
      goto LABEL_26;
    }

    v37 = v7;
    v38 = *(v32 + 20);
    v39 = type metadata accessor for UUID();
    v40 = *(v39 - 8);
    v91 = *(v40 + 16);
    v88 = v40 + 16;
    (v91)(v37, a2 + v38, v39);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v39);
    ParticipantGridViewController.isSelected(_:)();
    v42 = v41;
    v90 = v37;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s10Foundation4UUIDVSgMd);
    if (v42)
    {
      v43 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
      swift_beginAccess();
      if (*(v34 + v43))
      {
        if (*(v34 + v43) == 1)
        {
          v93 = 0;
          MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v93, 0xFCu, 1);
          MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);
        }
      }

      else
      {
        v93 = 1;
        MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v93, 0xFCu, 1);
      }

      goto LABEL_25;
    }

    MultiwayViewController.markParticipantWithIdentifierAsUserSelected(_:)();
    v50._rawValue = MultiwayViewController.mostActiveParticipants.getter();
    LOWORD(v94[0]) = 512;
    ParticipantGridViewController.update(with:updateReason:)(v50, v94);

    _s15ConversationKit11ParticipantVWOcTm_16();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v92);
    ParticipantGridViewController.select(_:forFocusing:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd);
    v51 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    swift_beginAccess();
    if (*(v34 + v51))
    {
      v52 = v90;
      (v91)(v90, a2 + v38, v39);
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v39);
      ParticipantGridViewController.isSelected(_:)();
      v54 = v53;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, &_s10Foundation4UUIDVSgMd);
      if ((v54 & 1) == 0)
      {
        v93 = 0;
        MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v93, 0xFCu, 1);
        MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);
      }
    }

    else
    {
      v93 = 1;
      MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v93, 0xFCu, 1);
    }

    result = [v29 view];
    if (result)
    {
      v55 = result;
      [v89 frame];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v64 = [v36 view];
      [v55 convertRect:v64 fromView:{v57, v59, v61, v63}];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;

      v73 = v99[7];
      [v99[7] frame];
      v102.origin.x = v74;
      v102.origin.y = v75;
      v102.size.width = v76;
      v102.size.height = v77;
      v100.origin.x = v66;
      v100.origin.y = v68;
      v100.size.width = v70;
      v100.size.height = v72;
      if (!CGRectIntersectsRect(v100, v102) || (Participant.isActiveWithVideo.getter() & 1) == 0)
      {
        v79 = v73;
        MultiwayViewController.bringSubviewToFront(_:)(v73);
        goto LABEL_46;
      }

      v78 = [v36 view];
      MultiwayViewController.bringSubviewToFront(_:)(v78);

      if (!v99[16])
      {
        goto LABEL_47;
      }

      v79 = v99[16];
      v80 = [v79 superview];
      if (!v80)
      {
LABEL_46:

LABEL_47:
        if (!v99[4])
        {
          goto LABEL_27;
        }

        v82 = [v99[4] view];
        if (!v82)
        {
          goto LABEL_27;
        }

        v45 = v82;
        [v82 frame];
        v103.origin.x = v83;
        v103.origin.y = v84;
        v103.size.width = v85;
        v103.size.height = v86;
        v101.origin.x = v66;
        v101.origin.y = v68;
        v101.size.width = v70;
        v101.size.height = v72;
        if (CGRectIntersectsRect(v101, v103))
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          if (Features.isICUIRedesignEnabled.getter())
          {
            v87 = v45;
            MultiwayViewController.bringSubviewToFront(_:)(v45);

            v45 = [v99[3] view];
            MultiwayViewController.bringSubviewToFront(_:)(v45);
          }
        }

LABEL_26:

LABEL_27:
        v46 = *&v29[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator];
        if (v46)
        {
          v47 = MEMORY[0x1E69E7D40];
          v48 = *((*MEMORY[0x1E69E7D40] & *v46) + 0x78);
          v49 = v46;
          if (v48())
          {
            (*((*v47 & *v49) + 0xC8))(0xD000000000000026, 0x80000001BC51CCC0, 0);
          }
        }

        MultiwayViewController.needsUpdatePresentationContexts.setter(1);
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

      result = [v29 view];
      if (result)
      {
        v81 = result;
        [result bringSubviewToFront_];

        v79 = v81;
        goto LABEL_46;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.didDoubleTapGridParticipantView(_:participant:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_16();
  v8 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  specialized >> prefix<A>(_:)();
  v10 = v9;
  v12 = v11;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd);
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v20, (v2 + v13), sizeof(v20));
  memcpy(v21, (v2 + v13), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v21);
  if (result != 1)
  {
    v15 = v21[6];
    v16 = OBJC_IVAR___CNKFaceTimeConstraintsController_participantGridState;
    result = swift_beginAccess();
    if (*(v15 + v16) == 1)
    {
      memcpy(v19, v20, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v19, &v18);
      MultiwayViewController.toggleFocusedParticipant(_:)(a2);
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  return result;
}

uint64_t MultiwayViewController.didSingleTapRosterParticipantView(_:participant:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_16();
  v9 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  specialized >> prefix<A>(_:)();
  v11 = v10;
  v13 = v12;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v14 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v24, (v1 + v14), sizeof(v24));
  memcpy(v25, (v1 + v14), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v25);
  if (result != 1)
  {
    memcpy(v23, v24, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v23, &v22);
    if (!MultiwayViewController.participantIsShownInGrid(_:)())
    {
      MultiwayViewController.markParticipantWithIdentifierAsUserSelected(_:)();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v9);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
      v17._rawValue = MultiwayViewController.mostActiveParticipants.getter();
      if (EnumTagSinglePayload == 1)
      {
        v21[0] = 512;
        ParticipantGridViewController.update(with:updateReason:)(v17, v21);
      }

      else
      {
        ParticipantGridViewController.defocus(to:)(v17);
      }

      _s15ConversationKit11ParticipantVWOcTm_16();
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
      ParticipantGridViewController.select(_:forFocusing:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd);
      MultiwayViewController.mostActiveParticipants.getter();
      MultiwayViewController.activeRemoteParticipants(in:)();

      swift_beginAccess();

      Array<A>.participants(notIn:)();
      v19 = v18;

      v20[3] = 513;
      ParticipantListViewController.update(with:updateReason:)(v19);

      MultiwayViewController.needsUpdatePresentationContexts.setter(1);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

uint64_t MultiwayViewController.didTapLocalParticipantView(_:eventType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v5 + v9), sizeof(__dst));
  memcpy(v30, (v5 + v9), sizeof(v30));
  result = getEnumTag for TapInteraction.EventType(v30);
  if (result != 1)
  {
    v11 = v30[6];
    v12 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    result = specialized Sequence<>.contains(_:)(*(v11 + v12), &outlined read-only object #0 of MultiwayViewController.didTapLocalParticipantView(_:eventType:));
    if ((result & 1) == 0)
    {
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      MultiwayViewController.focusLocalParticipant()();
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }

    if (!a2)
    {
      return result;
    }

    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v13 = a2;
    [v13 bounds];
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    v18 = CGRectGetWidth(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v19 = CGRectGetHeight(v32);
    v20 = *(v5 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    if ((*(v20 + 16) & 0x80000000) == 0)
    {
LABEL_21:

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }

    v21 = *(v20 + 1);
    if (Features.tapToTrackEnabled.getter())
    {
      v22 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager;
      swift_beginAccess();
      if (*(v5 + v22))
      {

        DockKitAccessoryManager.tapToTrackTriggered(atPoint:cameraPosition:)(__PAIR128__(*&a4 / v19, *&a3 / v18), v21);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.conversationKit);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_20;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "No DockKitAccessoryManager found";
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.conversationKit);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_20;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "DockKit Tap to track feature is not enabled";
    }

    _os_log_impl(&dword_1BBC58000, v24, v25, v27, v26, 2u);
    MEMORY[0x1BFB23DF0](v26, -1, -1);
LABEL_20:

    goto LABEL_21;
  }

  return result;
}

uint64_t MultiwayViewController.didSingleTapBackground()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10[-v2 - 8];
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v12, (v0 + v4), sizeof(v12));
  memcpy(v13, (v0 + v4), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v13);
  if (result != 1)
  {
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v6 = type metadata accessor for Participant(0);
    if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
    {
      memcpy(v11, v12, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v11, v10);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit11ParticipantVSgMd);
      v7 = v13[6];
      v8 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
      swift_beginAccess();
      if (*(v7 + v8))
      {
        if (*(v7 + v8) == 1)
        {
          HIBYTE(v9) = 0;
          MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v9 + 7, 0xFCu, 1);
          MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);
        }
      }

      else
      {
        HIBYTE(v9) = 1;
        MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v9 + 7, 0xFCu, 1);
      }
    }

    else
    {
      memcpy(v11, v12, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v11, v10);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit11ParticipantVSgMd);
      MultiwayViewController.unfocusFocusedParticipant()();
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

uint64_t MultiwayViewController.toggleFocusedParticipant(_:)(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for UUID();
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v53);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v47 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v22 = static OS_dispatch_queue.main.getter();
  (*(v20 + 104))(v22, *MEMORY[0x1E69E8020], v19);
  v23 = _dispatchPreconditionTest(_:)();
  result = (*(v20 + 8))(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v25 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v60, &v2[v25], sizeof(v60));
  memcpy(v61, &v2[v25], 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v61);
  if (result != 1)
  {
    v26 = v61[1];
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v27 = type metadata accessor for Participant(0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v27) == 1)
    {
      memcpy(v59, v60, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v59, v58);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit11ParticipantVSgMd);
      v28 = v57;
      __swift_storeEnumTagSinglePayload(v57, 1, 1, v3);
      goto LABEL_13;
    }

    v49 = v26;
    v50 = v2;
    v29 = *(v54 + 16);
    v30 = &v11[*(v27 + 20)];
    v31 = v27;
    v32 = v57;
    v29(v57, v30, v3);
    memcpy(v59, v60, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v59, v58);
    _s15ConversationKit11ParticipantVWOhTm_17();
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v3);
    v48 = v31;
    v29(v16, (v56 + *(v31 + 20)), v3);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
    v33 = *(v53 + 48);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v6, 1, v3) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v6[v33], 1, v3);
      v2 = v50;
      v27 = v48;
      if (EnumTagSinglePayload == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd);
        v28 = v57;
LABEL_12:
        if (__swift_getEnumTagSinglePayload(v28, 1, v3) != 1)
        {
          MultiwayViewController.unfocusFocusedParticipant()();
LABEL_14:
          v41 = v55;
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          if (__swift_getEnumTagSinglePayload(v41, 1, v27) == 1)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
            v42 = &_s15ConversationKit11ParticipantVSgMd;
            v43 = v41;
          }

          else
          {
            if (*(v41 + *(v27 + 28)))
            {
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
              _s15ConversationKit11ParticipantVWOhTm_17();
              return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd);
            }

            _s15ConversationKit11ParticipantVWOhTm_17();
            v44 = v61[6];
            v45 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
            swift_beginAccess();
            if (!*(v44 + v45))
            {
              if (MultiwayViewController.effectsBrowserIsOpaque.getter())
              {
                v46 = 2;
              }

              else
              {
                v46 = 1;
              }

              [v2 setControlsState:v46 animated:1];
              v58[0] = 1;
              MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v58, 0xFCu, 1);
            }

            v42 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd;
            v43 = v60;
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, v42);
          return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation4UUIDVSgMd);
        }

LABEL_13:
        MultiwayViewController.focus(on:shouldBringLocalParticipantViewToFront:)(v56, 1);
        goto LABEL_14;
      }
    }

    else
    {
      v35 = v52;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(&v6[v33], 1, v3) != 1)
      {
        v36 = v54;
        v37 = v51;
        (*(v54 + 32))(v51, &v6[v33], v3);
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v38 = v35;
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *(v36 + 8);
        v40(v37, v3);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
        v40(v38, v3);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSgMd);
        v2 = v50;
        v28 = v57;
        v27 = v48;
        if ((v39 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
      (*(v54 + 8))(v35, v3);
      v2 = v50;
      v27 = v48;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation4UUIDVSg_ADtMd);
    v28 = v57;
    goto LABEL_13;
  }

  return result;
}

uint64_t MultiwayViewController.focusLocalParticipant()()
{
  v0 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_16();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v0);
  specialized >> prefix<A>(_:)();
  v8 = v7;
  v10 = v9;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  MultiwayViewController.unfocusFocusedParticipant()();
  _s15ConversationKit11ParticipantVWOcTm_16();
  MultiwayViewController.focus(on:shouldBringLocalParticipantViewToFront:)(v2, 1);
  return _s15ConversationKit11ParticipantVWOhTm_17();
}

uint64_t MultiwayViewController.collapseLocalParticipantView()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "collapseLocalParticipantView", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v6), sizeof(__dst));
  memcpy(v14, (v1 + v6), sizeof(v14));
  result = getEnumTag for TapInteraction.EventType(v14);
  if (result != 1)
  {
    v8 = v14[6];
    v9 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    if ((*(v8 + v9) & 0xFE) == 0x80)
    {
      memcpy(v12, __dst, sizeof(v12));
      outlined init with copy of MultiwayViewController.ViewContent(v12, v11);
      v10 = MultiwayViewController.localParticipantCornerToUse.getter() | 0x40;
    }

    else
    {
      memcpy(v12, __dst, sizeof(v12));
      outlined init with copy of MultiwayViewController.ViewContent(v12, v11);
      v10 = 128;
    }

    v12[0] = 0;
    MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v12, v10, 1);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

uint64_t MultiwayViewController.localParticipantViewDidLongPress(_:localParticipantView:)()
{
  OUTLINED_FUNCTION_239_3();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_279_0(v5);
  OUTLINED_FUNCTION_279_0(v6);
  result = OUTLINED_FUNCTION_46_26(v6);
  if (!v1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v2 = v6[7];
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v3 = v2;
    OUTLINED_FUNCTION_208();
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      MultiwayViewController.toggleReactionsView()();
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

void MultiwayViewController.localParticipantViewDidTap(_:localParticipantView:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v29, (v0 + v4), sizeof(v29));
  OUTLINED_FUNCTION_46_26(v29);
  if (!v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v6 = v29[7];
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v7 = v6;
    OUTLINED_FUNCTION_288();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v9 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v9, static Logger.conversationKit);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v11))
      {
        v12 = OUTLINED_FUNCTION_42();
        v13 = swift_slowAlloc();
        v27[0] = v13;
        *v12 = 136315138;
        v14 = String.init<A>(reflecting:)();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v27);

        *(v12 + 4) = v16;
        OUTLINED_FUNCTION_8_10();
        _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_4_4();
      }

      switch(v3)
      {
        case 1:
          MultiwayViewController.pauseVideoMessageRecording()();
          goto LABEL_26;
        case 2:
          type metadata completion function for SyncedScreeningAlphaGradientView();
          MultiwayViewController.cancelVideoRecording(completion:)();
          goto LABEL_26;
        case 3:
          ConversationController.stopRecordingVideoMessage()();
          goto LABEL_26;
        case 4:
          MultiwayViewController.collapseLocalParticipantView()();
          goto LABEL_26;
        case 5:
          MultiwayViewController.toggleRecordingLocalVideo()();
          goto LABEL_26;
        case 6:
          MultiwayViewController.toggleLocalOrientation()();
          goto LABEL_26;
        case 7:
          type metadata accessor for SpringBoardUtilities();
          OUTLINED_FUNCTION_20();
          v26 = swift_allocObject();
          OUTLINED_FUNCTION_95_3(v26);
          swift_unknownObjectWeakInit();

          OUTLINED_FUNCTION_15_14();
          specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);

          break;
        case 8:
          MultiwayViewController.toggleCameraBlur()();
          goto LABEL_26;
        case 9:
          MultiwayViewController.handleLocalParticipantViewDidTapFlipCamera()();
          goto LABEL_26;
        case 10:
          MultiwayViewController.toggleCinematicFraming()();
          goto LABEL_26;
        case 11:
          ConversationController.callBack()();
          goto LABEL_26;
        case 12:
          if (!*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator))
          {
            goto LABEL_26;
          }

          OUTLINED_FUNCTION_244_2();
          OUTLINED_FUNCTION_4_137();
          v23 = *(v22 + 184);
          v25 = v24;
          OUTLINED_FUNCTION_262_2();
          v23(0xD00000000000001ALL);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);

          break;
        case 13:
          MultiwayViewController.closeVideoMessageCallBack()();
          goto LABEL_26;
        case 14:
          ConversationController.toggleReactionEffectGesture()();
          goto LABEL_26;
        case 15:
          ConversationController.toggleStudioLight()();
          goto LABEL_26;
        case 16:
          MultiwayViewController.toggleBackgroundReplacement()();
          goto LABEL_26;
        default:
          MultiwayViewController.startRecordingVideoMessage()();
          goto LABEL_26;
      }
    }

    else
    {
LABEL_26:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void MultiwayViewController.toggleRecordingLocalVideo()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  if ((*(v1 + 312))(ObjectType, v1))
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID;
    swift_beginAccess();
    if (*(v3 + 8))
    {
      ConversationController.stopRecordingLocalVideo()();
    }

    else
    {
      ConversationController.startRecordingLocalVideo()();
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.toggleLocalOrientation()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_110_7();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v4))
    {
      v5 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v5);
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((*(v1 + v11) & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    ConversationController.deviceOrientation.setter(v12);
    v13 = MultiwayViewController.constraintController.getter();
    if (!v13 || (v14 = v13, v15 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), LODWORD(v15) = v14[v15], v14, v15 != 128))
    {
      v16 = MultiwayViewController.localParticipantCornerToUse.getter();
      MultiwayViewController.setLocalParticipantState(_:animated:)(v16 | 0x40u, 1);
    }
  }
}

void closure #1 in MultiwayViewController.localParticipantViewDidTap(_:localParticipantView:)(char a1)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      MultiwayViewController.toggleLocalParticipantEffectsButton()();
    }
  }
}

void MultiwayViewController.handleLocalParticipantViewDidTapFlipCamera()()
{
  if ([*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags) frsvEnabled])
  {
    ConversationController.toggleFRSV()();
  }

  else
  {
    MultiwayViewController.showButtonShelfIfFrontCamera(_:)(0);
    ConversationController.swapLocalParticipantCamera()();

    MultiwayViewController.updateShouldShowReactionPickerTipView()();
  }
}

uint64_t MultiwayViewController.pauseVideoMessageRecording()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v10, (v0 + v1), sizeof(v10));
  result = getEnumTag for TapInteraction.EventType(v10);
  if (result != 1)
  {
    v3 = *(*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xF0);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v5 = v3;
    LOBYTE(v4) = v4();

    if (VideoMessageController.State.rawValue.getter(v4) == 0x676E696D726177 && v6 == 0xE700000000000000)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }
    }

    ConversationController.pauseRecordingVideoMessage()();
    LocalParticipantView.endCountdown()();
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

uint64_t MultiwayViewController.startRecordingVideoMessage()()
{
  v1 = v0;
  MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(1, 0, 0);
  MultiwayViewController.removeAllEffectsObjects()();
  MultiwayViewController.localVideoProvider.getter();
  v2 = __src[3];
  v3 = __src[4];
  __swift_project_boxed_opaque_existential_1(__src, __src[3]);
  (*(v3 + 96))(0, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(__src);
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v4), sizeof(__dst));
  memcpy(__src, (v1 + v4), sizeof(__src));
  result = getEnumTag for TapInteraction.EventType(__src);
  if (result != 1)
  {
    memcpy(v24, __src, sizeof(v24));
    v6 = MultiwayViewController.call.getter();
    memcpy(v23, __dst, sizeof(v23));
    outlined init with copy of MultiwayViewController.ViewContent(v23, v22);
    v7 = [v6 isSendingVideo];

    if (v7)
    {
      v8 = MultiwayViewController.isPresentingEffectsBrowser.getter();
      v9 = MEMORY[0x1E69E7D40];
      if (v8)
      {
        if (__src[10])
        {
          v10 = *((*MEMORY[0x1E69E7D40] & *__src[10]) + 0x98);
          v11 = __src[10];
          v10(0);
        }

        v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
        swift_beginAccess();
        *(v1 + v12) = 0;
        MultiwayViewController.showEffectsControls(_:shouldUpdateLocalParticipantState:)(0, 0);
      }

      v13 = *(*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
      v14 = *((*v9 & *v13) + 0xF0);
      v15 = v13;
      LOBYTE(v14) = v14();

      if (VideoMessageController.State.rawValue.getter(v14) == 0x7964616572 && v16 == 0xE500000000000000)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          [__src[7] updateCountdownWith_];
          v19 = swift_allocObject();
          memcpy((v19 + 16), v24, 0xE8uLL);
          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v21 = swift_allocObject();
          memcpy((v21 + 16), v24, 0xE8uLL);
          *(v21 + 248) = v20;
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          outlined init with copy of [CaptionSectioner.SpeakerSection]();

          ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:)();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        }
      }

      ConversationController.startRecordingVideoMessage()();
    }

    else
    {
      MultiwayViewController.showCameraAlert()();
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

Swift::Void __swiftcall MultiwayViewController.closeVideoMessageCallBack()()
{
  v0 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_iOSDelegate;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v0 = Strong;
    [Strong unansweredCallUIDismissed];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_33_42();
  v2 = *v0;
  if (*v0)
  {

    v2(v3);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }
}

Swift::Void __swiftcall MultiwayViewController.pipDidRotate()()
{
  OUTLINED_FUNCTION_50_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_100();
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v6 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_35_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_142_4();
  memcpy(v7, v8, v9);
  OUTLINED_FUNCTION_46_26(&v17);
  if (!v10)
  {
    v11 = *(v6 + 104);
    v12 = OBJC_IVAR____TtC15ConversationKit35MostActiveParticipantViewController_ignoreFocusedParticipantUpdates;
    OUTLINED_FUNCTION_3_5();
    v13 = v11[v12];
    v11[v12] = 0;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v1, 1, v4);
    if (v10)
    {
      v14 = v11;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
    }

    else
    {
      OUTLINED_FUNCTION_1_184();
      OUTLINED_FUNCTION_2_40();
      _s15ConversationKit11ParticipantVWObTm_7();
      v15 = v11;
      if (v13)
      {
        OUTLINED_FUNCTION_6_4();
        MostActiveParticipantViewController.focus(on:)();
        v16 = OUTLINED_FUNCTION_215_3();
        MostActiveParticipantViewController.update(participant:broadcastingState:)(v16);
      }

      OUTLINED_FUNCTION_0_220();
      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    MostActiveParticipantViewController.handleParticipantVideoRotationForPIP()();
  }

  OUTLINED_FUNCTION_49();
}

BOOL MultiwayViewController.canShowReactionsView()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationKit);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = &selRef_sharedInstance;
  v6 = &selRef_isRecordingAllowed;
  v7 = &selRef_displayString;
  if (os_log_type_enabled(v3, v4))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40[0] = v9;
    *v8 = 136315906;
    v10 = *&v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
    v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    swift_beginAccess();
    __dst[0] = *(v10 + v11);
    type metadata accessor for TUConversationState(0);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v40);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    v15 = &v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    swift_beginAccess();
    memcpy(__dst, v15, sizeof(__dst));
    if (getEnumTag for TapInteraction.EventType(__dst) == 1)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v18 = *(v15 + 6);
      v19 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      swift_beginAccess();
      v39 = *(v18 + v19);
      v17 = String.init<A>(reflecting:)();
      v16 = v20;
    }

    v5 = &selRef_sharedInstance;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v40);

    *(v8 + 14) = v21;
    *(v8 + 22) = 2080;
    v22 = v10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    v39 = *(v22 + 16) >> 7;
    v23 = String.init<A>(reflecting:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v40);

    *(v8 + 24) = v25;
    *(v8 + 32) = 1024;
    v26 = [objc_opt_self() sharedInstance];
    v6 = &selRef_isRecordingAllowed;
    v27 = [v26 videoDeviceController];

    v7 = &selRef_displayString;
    LODWORD(v26) = [v27 currentInputSupportsReactionEffects];

    *(v8 + 34) = v26;
    _os_log_impl(&dword_1BBC58000, v3, v4, "canShowReactionsView - conversationState: %s, localParticipantState: %s, isVideoEnabled: %s, cameraSupportsReactions:%{BOOL}d", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v9, -1, -1);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
  }

  else
  {
  }

  v28 = *&v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
  v29 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  swift_beginAccess();
  result = 0;
  if (*(v28 + v29) == 3)
  {
    v30 = v28 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    if (*(v30 + 16) < 0)
    {
      v31 = [objc_opt_self() *v5];
      v32 = [v31 v6[278]];

      LODWORD(v31) = [v32 v7[275]];
      if (v31)
      {
        v33 = &v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
        swift_beginAccess();
        memcpy(__dst, v33, sizeof(__dst));
        if (getEnumTag for TapInteraction.EventType(__dst) != 1)
        {
          v34 = *(v33 + 6);
          v35 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
          swift_beginAccess();
          v36 = *(v34 + v35);
          if (v36 < 0x40 || (v36 & 0xC0) == 0x40)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL MultiwayViewController.inCallControlsVisible.getter()
{
  result = 1;
  if ((MultiwayViewController.isModallyPresentingCallDetails.getter() & 1) == 0)
  {
    v2 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_201_3();
    OUTLINED_FUNCTION_3_0();
    v3 = swift_beginAccess();
    OUTLINED_FUNCTION_135_3(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15, v16, v17, v18, v19, v20, v21[0]);
    OUTLINED_FUNCTION_46_26(v21);
    if (v11)
    {
      return 0;
    }

    v12 = *(v2 + 48);
    v13 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    OUTLINED_FUNCTION_113_4();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (*(v12 + v13) - 1 > 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MultiwayViewController.isCameraMixedWithScreen.getter()
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v2 = type metadata accessor for Participant(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_7_5();
  _s15ConversationKit11ParticipantVWOcTm_16();
  OUTLINED_FUNCTION_206();
  _s15ConversationKit11ParticipantVWOcTm_16();
  OUTLINED_FUNCTION_62_0();
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    _s15ConversationKit11ParticipantVWOhTm_17();
    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
    goto LABEL_5;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
  v5 = *(v4 + 48);
  outlined consume of Participant.CopresenceInfo?(*(v0 + *(v4 + 64)), *(v0 + *(v4 + 64) + 8));
  memcpy(v10, (v0 + v5), sizeof(v10));
  type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v0);
  memcpy(v9, &v10[16], 0x4BuLL);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined destroy of Participant.MediaInfo(v10);
  OUTLINED_FUNCTION_0_220();
  _s15ConversationKit11ParticipantVWOhTm_17();
  if (!v9[0])
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v7 = BYTE1(v9[9]);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  return v7 & 1;
}

void MultiwayViewController.captionsViewController(_:didRequestToBeMinimized:)(uint64_t a1, char a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_172_2(v10);
  OUTLINED_FUNCTION_46_26(v10);
  if (v5 || (v6 = *(v4 + 48), v7 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), *(v6 + v7)))
  {
    if (a2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = v8;
    MultiwayViewController.updateCaptionsLayoutState(_:)(&v9);
  }
}

uint64_t MultiwayViewController.shouldShowTranscriptDrawer.getter()
{
  if (static Platform.current.getter() == 3)
  {
    v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_146_3(v26);
    OUTLINED_FUNCTION_46_26(v26);
    if (!v15)
    {
      v4 = *(v1 + 48);
      v5 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
      OUTLINED_FUNCTION_3_0();
      v6 = swift_beginAccess();
      v7 = *(v4 + v5);
      OUTLINED_FUNCTION_135_3(v6, v8, v9, v10, v11, v12, v13, v14, v18, v19, v20, v21, v22, v23, v24, v25[0]);
      OUTLINED_FUNCTION_46_26(v25);
      if (v15)
      {
        if (v7)
        {
LABEL_14:
          v2 = ConversationController.isOneToOneModeEnabled.getter();
          return v2 & 1;
        }
      }

      else
      {
        v16 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        if (*(v4 + v16) <= 0x80u && v7 != 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t MultiwayViewController.participantsViewController(_:didTapKickMember:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_101();
  v3 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_223_3();
  v5 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v5, v6, v3);
  if (v7)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit11ParticipantVSgMd);
  }

  OUTLINED_FUNCTION_1_184();
  OUTLINED_FUNCTION_33_0();
  _s15ConversationKit11ParticipantVWObTm_7();
  ConversationController.canKick(_:)();
  if (v9)
  {
    MultiwayViewController.showKickParticipantAlert(toKick:)();
  }

  OUTLINED_FUNCTION_0_220();
  return _s15ConversationKit11ParticipantVWOhTm_17();
}

void MultiwayViewController.showKickParticipantAlert(toKick:)()
{
  OUTLINED_FUNCTION_29();
  v40 = v0;
  v36 = v1;
  v2 = type metadata accessor for Participant(0);
  v3 = OUTLINED_FUNCTION_9_0(v2);
  v39 = v4;
  v38 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v10.super.isa = v8;
  OUTLINED_FUNCTION_17_0(v9 + 5, 0x80000001BC505C50, 0x61737265766E6F43, 0xEF74694B6E6F6974, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = OUTLINED_FUNCTION_13_12();
  *(v11 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v12 = v41;
  v13 = v42;
  v14 = v43;

  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  String.init(format:_:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v35 = v7;
  v15 = [v7 &off_1E7FE9588];
  OUTLINED_FUNCTION_40_0();
  v16.super.isa = v15;
  OUTLINED_FUNCTION_17_0(0xD00000000000001ELL, 0x80000001BC505C80, 0x61737265766E6F43, 0xEF74694B6E6F6974, v16);

  OUTLINED_FUNCTION_153_3();
  v21 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v17, v18, v19, v20, 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v22 = [v7 &off_1E7FE9588];
  OUTLINED_FUNCTION_40_0();
  v23.super.isa = v22;
  OUTLINED_FUNCTION_17_0(0xD000000000000032, 0x80000001BC505CA0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v23);

  OUTLINED_FUNCTION_20();
  v24 = swift_allocObject();
  v25 = v40;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_7_5();
  _s15ConversationKit11ParticipantVWOcTm_16();
  *(swift_allocObject() + 16) = v24;
  OUTLINED_FUNCTION_1_184();
  _s15ConversationKit11ParticipantVWObTm_7();
  v26 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v27 = [v35 conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v28.super.isa = v27;
  OUTLINED_FUNCTION_17_0(v29, v30, v31, v32, v28);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_62_0();
  v33 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v21 addAction_];
  [v21 addAction_];
  OUTLINED_FUNCTION_259(v25, sel_presentViewController_animated_completion_, v21);

  OUTLINED_FUNCTION_30_0();
}

uint64_t MultiwayViewController.videoVisibility(for:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v17, v3, sizeof(v17));
  if (getEnumTag for TapInteraction.EventType(v17) == 1 || (v4 = v3[1], memcpy(v16, v3, 0xE8uLL), getEnumTag for TapInteraction.EventType(v16) == 1))
  {
    v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    v6 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    swift_beginAccess();
    return *(*(v5 + v6) + 16);
  }

  else
  {
    v9 = *v3;
    v10 = v4;
    v11 = v9;
    ParticipantGridViewController.participantIdentifiers.getter();
    v13 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v15[2] = a1;
    v14 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v15, v13);

    if (v14)
    {

      return 0;
    }

    else
    {
      v7 = ParticipantListViewController.visibilityIndex(for:)(a1);
    }
  }

  return v7;
}

uint64_t MultiwayViewController.prominenceIndex(for:)(uint64_t a1)
{
  v3 = type metadata accessor for Participant(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  active = MultiwayViewController.mostActiveParticipants.getter();
  v9 = *(active + 16);
  if (v9)
  {
    v26 = a1;
    v27 = v1;
    v10 = *(v3 + 28);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v25[1] = active;
    v12 = active + v11;
    v13 = *(v4 + 72);
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      _s15ConversationKit11ParticipantVWOcTm_16();
      if (*&v7[v10])
      {
        _s15ConversationKit11ParticipantVWObTm_7();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v16;
        }

        v15 = *(v14 + 16);
        if (v15 >= *(v14 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v14 = v17;
        }

        *(v14 + 16) = v15 + 1;
        _s15ConversationKit11ParticipantVWObTm_7();
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_17();
      }

      v12 += v13;
      --v9;
    }

    while (v9);

    a1 = v26;
    v1 = v27;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v18);
  v25[-2] = a1;
  v19 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ParticipantGridViewController.updateProminenceEMA(withParticipant:ema:audioPriority:videoPriority:), &v25[-4], v14);
  v21 = v20;

  if (v21)
  {
    v22 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    v23 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    swift_beginAccess();
    return *(*(v22 + v23) + 16) - 1;
  }

  return v19;
}

void MultiwayViewController.spatialPosition(for:)()
{
  OUTLINED_FUNCTION_218_4();
  v1 = v0;
  v3 = v2;
  v4 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  OUTLINED_FUNCTION_25_54();
  swift_beginAccess();
  OUTLINED_FUNCTION_190_1(v20);
  if (getEnumTag for TapInteraction.EventType(v20) == 1 || (v5 = *(v4 + 1), OUTLINED_FUNCTION_190_1(v19), OUTLINED_FUNCTION_46_26(v19), v6))
  {
LABEL_13:
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_216_3();
    return;
  }

  v7 = *v4;
  v8 = v5;
  v9 = v7;
  ParticipantGridViewController.participantIdentifiers.getter();
  v10 = OUTLINED_FUNCTION_24_1();
  v11 = type metadata accessor for Participant(v10);
  MEMORY[0x1EEE9AC00](v11);
  v18[2] = v12;
  v13 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v18, v8);

  v14 = [v1 view];
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      ParticipantGridViewController.spatialPosition(for:relativeTo:)(v3, v14);
LABEL_10:
      OUTLINED_FUNCTION_40_1();

      v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if (!*&v1[v16])
      {
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        OUTLINED_FUNCTION_35();
        MultiwayViewController.rotate(portraitRect:for:)(v17);
        OUTLINED_FUNCTION_40_1();
      }

      goto LABEL_13;
    }

    __break(1u);
  }

  else if (v14)
  {
    ParticipantListViewController.spatialPosition(for:relativeTo:)(v3, v14);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t MultiwayViewController.presentationContext(for:withVideoVisibility:withProminence:withSpatialPosition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  result = type metadata accessor for Participant(0);
  v19 = a1 + *(result + 28);
  if (*v19 && (*(v19 + 16) & 1) == 0)
  {
    v21 = *(v19 + 8);
    result = MultiwayViewController.videoQuality(for:)(a1 + *(result + 20));
    v20 = a3 & 1;
    *a5 = v21;
    *(a5 + 8) = result;
    *(a5 + 16) = a2;
    *(a5 + 24) = a4;
    *(a5 + 32) = a6;
    *(a5 + 40) = a7;
    *(a5 + 48) = a8;
    *(a5 + 56) = a9;
  }

  else
  {
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    v20 = 2;
  }

  *(a5 + 64) = v20;
  return result;
}

uint64_t MultiwayViewController.videoQuality(for:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v62 = (&v51 - v18);
  v19 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v63, v19, 0xE8uLL);
  Enum = getEnumTag for TapInteraction.EventType(v63);
  result = 0;
  if (Enum != 1)
  {
    v58 = v3;
    v59 = v4;
    v57 = v8;
    v22 = v1;
    v23 = v19[1];
    ParticipantGridViewController.participantIdentifiers.getter();
    v25 = v24;
    MEMORY[0x1EEE9AC00](v24);
    v56 = a1;
    *(&v51 - 2) = a1;
    v26 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v51 - 4), v25);

    if (!v26)
    {
      goto LABEL_25;
    }

    ParticipantGridViewController.participantIdentifiers.getter();
    v28 = *(v27 + 16);

    v55 = v22;
    v29 = *(v22 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults);
    v30 = *(v22 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
    ObjectType = swift_getObjectType();
    if ((v30[34])(ObjectType, v30) >= v28)
    {

      return 2;
    }

    v52 = ObjectType;
    v53 = v29;
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v32 = type metadata accessor for Participant(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v32);
    v54 = v23;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit11ParticipantVSgMd);
      v34 = v62;
      v35 = v58;
      __swift_storeEnumTagSinglePayload(v62, 1, 1, v58);
      (*(v59 + 16))(v16, v56, v35);
    }

    else
    {
      v36 = *(v32 + 20);
      v35 = v58;
      v37 = *(v59 + 16);
      v34 = v62;
      v37(v62, &v11[v36], v58);
      _s15ConversationKit11ParticipantVWOhTm_17();
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
      v37(v16, v56, v35);
    }

    __swift_storeEnumTagSinglePayload(v16, 0, 1, v35);
    v38 = *(v6 + 48);
    v39 = v57;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v39, 1, v35) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s10Foundation4UUIDVSgMd);
      if (__swift_getEnumTagSinglePayload(v39 + v38, 1, v35) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s10Foundation4UUIDVSgMd);
LABEL_22:

        return 2;
      }
    }

    else
    {
      v40 = v61;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(v39 + v38, 1, v35) != 1)
      {
        v62 = v30;
        v47 = v59;
        v46 = v60;
        (*(v59 + 32))(v60, v39 + v38, v35);
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        LODWORD(v58) = dispatch thunk of static Equatable.== infix(_:_:)();
        v48 = v40;
        v49 = *(v47 + 8);
        v49(v46, v35);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s10Foundation4UUIDVSgMd);
        v49(v48, v35);
        v30 = v62;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s10Foundation4UUIDVSgMd);
        if (v58)
        {
          goto LABEL_22;
        }

LABEL_14:
        v23 = v54;
        ParticipantGridViewController.participantIdentifiers.getter();
        v42 = *(v41 + 16);

        v43 = v52;
        if ((v30[35])(v52, v30) >= v42)
        {
          goto LABEL_19;
        }

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if (Features.isICUIRedesignEnabled.getter())
        {
          v44 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
          v45 = v55;
          swift_beginAccess();
          if (*(v45 + v44) == 1)
          {
LABEL_19:

            return 1;
          }
        }

        if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
        {
          v50 = (v30[31])(v43, v30);

          return (v50 & 1) != 0;
        }

LABEL_25:

        return 0;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s10Foundation4UUIDVSgMd);
      (*(v59 + 8))(v40, v35);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_14;
  }

  return result;
}

ConversationKit::MultiwayViewController::VideoVisibility __swiftcall MultiwayViewController.VideoVisibility.init(visibility:isInCanvas:)(Swift::Int visibility, Swift::Bool isInCanvas)
{
  v2 = isInCanvas;
  result.visibility = visibility;
  result.isInCanvas = v2;
  return result;
}

void MultiwayViewController.inCallControlsViewController(_:didTap:from:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_185_5();
  v10(v9);
  _dispatchPreconditionTest(_:)();
  v11 = OUTLINED_FUNCTION_229_0();
  v12(v11);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_63:
    OUTLINED_FUNCTION_0_6();
LABEL_5:
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v14 = OUTLINED_FUNCTION_13_12();
    *(v14 + 16) = xmmword_1BC4BA940;
    v128[29] = v6;
    type metadata accessor for CNKCommand(0);
    v15 = String.init<A>(reflecting:)();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    OUTLINED_FUNCTION_51_22();
    os_log(_:dso:log:type:_:)();

LABEL_61:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_191_0(v129);
  OUTLINED_FUNCTION_191_0(v130);
  OUTLINED_FUNCTION_46_26(v130);
  if (v13)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

  switch(v6)
  {
    case 0:
    case 1:
    case 11:
    case 12:
    case 15:
    case 18:
      goto LABEL_61;
    case 2:
      v18 = OUTLINED_FUNCTION_24_56();
      memcpy(v18, v19, v20);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.removeAllEffectsObjects()();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_4_137();
      v22 = *(v21 + 376);
      v24 = v23;
      v22();

      ConversationController.leaveConversation(reason:)();
      goto LABEL_60;
    case 3:
      v36 = OUTLINED_FUNCTION_24_56();
      memcpy(v36, v37, v38);
      OUTLINED_FUNCTION_145_6();
      ConversationController.joinConversation()();
      goto LABEL_60;
    case 4:
      v49 = OUTLINED_FUNCTION_24_56();
      memcpy(v49, v50, v51);
      OUTLINED_FUNCTION_145_6();
      ConversationController.swapLocalParticipantCamera()();
      v52 = v131;
      v53 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      switch(*(v52 + v53))
      {
        case 0:
        case 1:
        case 2:
        case 3:
          goto LABEL_60;
        case 4:
          [v2 setControlsState:1 animated:1];
          goto LABEL_60;
        case 5:
          [v2 setControlsState:2 animated:1];
          goto LABEL_60;
        case 6:
          [v2 setControlsState:3 animated:1];
          goto LABEL_60;
        default:
          goto LABEL_65;
      }

    case 5:
      v33 = OUTLINED_FUNCTION_24_56();
      memcpy(v33, v34, v35);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.toggleAudioMute()();
      goto LABEL_60;
    case 6:
      v46 = OUTLINED_FUNCTION_24_56();
      memcpy(v46, v47, v48);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.toggleVideoMute(shouldPauseIfStopped:)(0);
      goto LABEL_60;
    case 7:
      v25 = OUTLINED_FUNCTION_24_56();
      memcpy(v25, v26, v27);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.toggleCinematicFraming()();
      goto LABEL_60;
    case 8:
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_61;
      }

      v29 = Strong;
      v30 = OUTLINED_FUNCTION_24_56();
      memcpy(v30, v31, v32);
      OUTLINED_FUNCTION_145_6();
      [v29 viewControllerDidRequestAddParticipants:v2 showContacts:0];
      swift_unknownObjectRelease();
      goto LABEL_60;
    case 9:
      v42 = v131;
      v43 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v44 = *(v42 + v43) - 2;
      if (v44 > 4)
      {
        v45 = 4;
      }

      else
      {
        v45 = qword_1BC4E9570[v44];
      }

      [v2 setControlsState:v45 animated:1];
      goto LABEL_61;
    case 10:
      v104 = OUTLINED_FUNCTION_24_56();
      memcpy(v104, v105, v106);
      OUTLINED_FUNCTION_145_6();
      type metadata completion function for SyncedScreeningAlphaGradientView();
      ConversationController.openMessagesConversation(completion:)();
      goto LABEL_60;
    case 13:
      v39 = OUTLINED_FUNCTION_24_56();
      memcpy(v39, v40, v41);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.handleToggleLayoutAction()();
      goto LABEL_60;
    case 14:
      v110 = OUTLINED_FUNCTION_24_56();
      if (v4)
      {
        memcpy(v110, v111, v112);
        OUTLINED_FUNCTION_145_6();
        v113 = v4;
LABEL_57:
        v125 = v4;
        MultiwayViewController.handleShareLinkAction(_:)(v113);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v129, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);

        goto LABEL_61;
      }

      memcpy(v110, v111, v112);
      OUTLINED_FUNCTION_145_6();
      v124 = [v2 view];
      if (v124)
      {
        v113 = v124;
        goto LABEL_57;
      }

      __break(1u);
LABEL_65:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
    case 16:
      v54 = OUTLINED_FUNCTION_24_56();
      memcpy(v54, v55, v56);
      OUTLINED_FUNCTION_145_6();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      static os_log_type_t.error.getter();
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)();
      goto LABEL_60;
    case 17:
      v89 = OUTLINED_FUNCTION_24_56();
      memcpy(v89, v90, v91);
      OUTLINED_FUNCTION_145_6();
      ConversationController.cancelJoinCountdown()();
      goto LABEL_60;
    case 19:
      v107 = OUTLINED_FUNCTION_24_56();
      memcpy(v107, v108, v109);
      OUTLINED_FUNCTION_145_6();
      MultiwayViewController.handleUserDidToggleCaptions()();
      goto LABEL_60;
    case 20:
      v57 = OUTLINED_FUNCTION_24_56();
      memcpy(v57, v58, v59);
      OUTLINED_FUNCTION_145_6();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v60 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v60, static Logger.conversationKit);
      v61 = v2;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 67109120;
        v65 = MultiwayViewController.call.getter();
        v66 = TUCall.isBlocked()();

        *(v64 + 4) = v66;
        _os_log_impl(&dword_1BBC58000, v62, v63, "call is blocked() : %{BOOL}d", v64, 8u);
        OUTLINED_FUNCTION_27();
      }

      else
      {

        v62 = v61;
      }

      v114 = MultiwayViewController.call.getter();
      v115 = TUCall.isBlocked()();

      if (v115)
      {
        v88 = MultiwayViewController.call.getter();
        TUCall.unblock()();
        goto LABEL_48;
      }

      v116 = *(&v61->isa + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_spamAlertBuilder);
      v117 = MultiwayViewController.call.getter();
      if (one-time initialization token for faceTime != -1)
      {
        OUTLINED_FUNCTION_9_62();
      }

      v118 = OUTLINED_FUNCTION_35_30();
      v96 = specialized SpamAlertBuilder.buildBlockAlert(for:with:presentingViewController:didDismiss:)(v118, v119, v120, v121, 0, v116);

      v122 = [v61 presentedViewController];
      if (v122)
      {
        v123 = v122;
        OUTLINED_FUNCTION_259(v122, sel_presentViewController_animated_completion_, v96);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v129, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        goto LABEL_61;
      }

LABEL_53:

      goto LABEL_60;
    case 21:
      v67 = OUTLINED_FUNCTION_24_56();
      memcpy(v67, v68, v69);
      OUTLINED_FUNCTION_145_6();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v70 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v70, static Logger.conversationKit);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v72))
      {
        v73 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_182_0(v73);
        OUTLINED_FUNCTION_8_10();
        _os_log_impl(v74, v75, v76, v77, v78, 2u);
        OUTLINED_FUNCTION_4_4();
      }

      v79 = MultiwayViewController.call.getter();
      if (one-time initialization token for faceTime != -1)
      {
        OUTLINED_FUNCTION_9_62();
      }

      v80 = static ReportSpamManager.faceTime;
      v128[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
      v128[4] = &protocol witness table for TUCall;
      v128[0] = v79;
      outlined init with copy of IDSLookupManager(v128, v127);
      OUTLINED_FUNCTION_77_0();
      v81 = swift_allocObject();
      outlined init with take of TapInteractionHandler(v127, (v81 + 2));
      v81[8] = 0;
      v81[9] = 0;
      v81[7] = 0;
      outlined init with copy of IDSLookupManager(v128, v126);
      v82 = swift_allocObject();
      outlined init with take of TapInteractionHandler(v126, (v82 + 2));
      v82[7] = v80;
      v82[8] = 0;
      v82[9] = 0;
      v82[10] = 0;
      OUTLINED_FUNCTION_24();
      v83 = swift_allocObject();
      *(v83 + 16) = 0;
      *(v83 + 24) = 0;
      OUTLINED_FUNCTION_24();
      v84 = swift_allocObject();
      *(v84 + 16) = 0;
      *(v84 + 24) = 0;

      _s15ConversationKit16SpamAlertBuilderC014reportAndBlockD033_1968E5514C13C55B0B1DD71C8D317F122of12blockHandler0sg6ReportT006cancelT0011preparationT0So17UIAlertControllerCAA0C9Modelable_p_ySbcSgA3NtFTf4ennnnn_nSo6TUCallC_Ttg5(partial apply for closure #1 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:), v81, _s15ConversationKit16SpamAlertBuilderC19buildReportAndBlock3for4with24presentingViewController10didDismissSo07UIAlertN0CAA0C9Modelable_p_AA0gC7ManagerCSo06UIViewN0CSgyycSgtFySbcfU0_TATm_0, v82, partial apply for closure #3 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v83);
      v86 = v85;

      [0 fetchSharing];
      __swift_destroy_boxed_opaque_existential_1(v128);
      v87 = [v2 presentedViewController];
      if (v87)
      {
        v88 = v87;
        OUTLINED_FUNCTION_259(v87, sel_presentViewController_animated_completion_, v86);

LABEL_48:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v129, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

      else
      {

LABEL_60:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v129, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

      goto LABEL_61;
    default:
      v92 = OUTLINED_FUNCTION_24_56();
      memcpy(v92, v93, v94);
      OUTLINED_FUNCTION_145_6();
      if (one-time initialization token for default != -1)
      {
        OUTLINED_FUNCTION_0_45();
      }

      v95 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v95, &static Log.default);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.fault.getter();
      if (OUTLINED_FUNCTION_163(v97))
      {
        v98 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v98);
        OUTLINED_FUNCTION_219();
        _os_log_impl(v99, v100, v101, v102, v103, 2u);
        OUTLINED_FUNCTION_18();
      }

      goto LABEL_53;
  }
}

void MultiwayViewController.didCreateCollectionViewForInCallControlsViewController(_:)()
{
  OUTLINED_FUNCTION_239_3();
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_172_2(v10);
  OUTLINED_FUNCTION_46_26(v10);
  if (!v3)
  {
    v4 = *(v2 + 16);
    type metadata accessor for InCallControlsViewController();
    v5 = v4;
    v6 = v1;
    OUTLINED_FUNCTION_206();
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      OUTLINED_FUNCTION_113_4();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v9[0] = 513;

      InCallControlsViewController.update(with:updateReason:)(v8, v9);
    }
  }
}

id closure #1 in MultiwayViewController.setLocalParticipantState(_:animated:)(uint64_t a1, char a2, unsigned __int8 a3, void *a4)
{
  v7 = a3;
  v8 = *(a1 + 56);
  LocalParticipantView.isInRoster.setter(a2);
  v9 = *(v8 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
  v10 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_isExpanded;
  swift_beginAccess();
  *(v9 + v10) = v7 == 128;
  ParticipantView.isExpanded.didset();
  LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in MultiwayViewController.setLocalParticipantState(_:animated:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_381;
  v13 = _Block_copy(aBlock);
  v14 = a4;

  [v11 animateWithDuration:0 delay:v13 options:0 animations:0.3 completion:0.1];
  _Block_release(v13);
  result = *(a1 + 64);
  if (result)
  {
    v16 = 0.0;
    v17 = 1.0;
    if (v7 != 128)
    {
      v17 = 0.0;
    }

    if ((a3 & 0x80u) != 0)
    {
      v16 = v17;
    }

    return [result setAlpha_];
  }

  return result;
}

void closure #1 in closure #1 in MultiwayViewController.setLocalParticipantState(_:animated:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = a2;
  v4 = MultiwayViewController.dimmingLayer.getter(&OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView, closure #1 in MultiwayViewController.mePipDimmingBackgroundView.getter);
  v7 = v4;
  v5 = 0.0;
  v6 = 1.0;
  if (v3 != 128)
  {
    v6 = 0.0;
  }

  if (v2 < 0)
  {
    v5 = v6;
  }

  [v4 setAlpha_];
}

void closure #2 in MultiwayViewController.setLocalParticipantState(_:animated:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
    swift_beginAccess();
    v9 = *&v7[v8];
    v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x1B8);
    v11 = v9;
    v12 = v10();

    if ((v12 & 1) == 0)
    {
      v13 = &v7[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
      swift_beginAccess();
      memmove(__dst, v13, 0xE8uLL);
      if (getEnumTag for TapInteraction.EventType(__dst) != 1)
      {
        v14 = *(v13 + 6);
        v15 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
        swift_beginAccess();
        if (static MultiwayViewConstraintsController.LocalParticipantState.== infix(_:_:)(a3, *(v14 + v15)))
        {
          MultiwayViewController.updateZoomControls(for:)(a3);
          if (a4)
          {
            MultiwayViewController.testing_localPreviewDidFinishMinimize()();
          }
        }
      }
    }
  }
}

UIMenu_optional __swiftcall MultiwayViewController.audioRouteMenu()()
{
  v0 = MultiwayViewController.audioRouteMenu()(&selRef_audioRouteMenu);
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t MultiwayViewController.audioRouteGlyph(for:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_67();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = [Strong audioRouteGlyphFor_];
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();
  return a1;
}

id MultiwayViewController.audioRouteGlyph(for:buttonStyle:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_67();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = [Strong audioRouteGlyphFor:a1 buttonStyle:a2];
  swift_unknownObjectRelease();
  return v5;
}

SEL *MultiwayViewController.audioRouteMenu()(SEL *a1)
{
  OUTLINED_FUNCTION_9_67();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = [Strong *a1];
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();
  return a1;
}

BOOL MultiwayViewController.canDismissControls.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_276_1(v81);
  OUTLINED_FUNCTION_276_1(v82);
  OUTLINED_FUNCTION_46_26(v82);
  if (v0)
  {
    return 0;
  }

  else
  {
    v2 = v82[6];
    v3 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    OUTLINED_FUNCTION_3_0();
    v4 = swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      v12 = OUTLINED_FUNCTION_157_3(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79);
      OUTLINED_FUNCTION_278_1(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80);
      v1 = MultiwayViewController.inCallConversationBannerHidable()();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v81, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }

    else
    {
      return 1;
    }
  }

  return v1;
}

uint64_t MultiwayViewController.isScreenSharingVisible.getter()
{
  v1 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (v1[1] == 0.0 && v1[2] == 0.0 || (OUTLINED_FUNCTION_3_0(), swift_beginAccess(), OUTLINED_FUNCTION_243_2(), v2))
  {
    v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen;
    OUTLINED_FUNCTION_19_1();
    v4 = v0[v3];
  }

  else
  {
    v4 = 1;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationKit);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v8))
  {
    v9 = swift_slowAlloc();
    v10 = v9;
    *v9 = 67109888;
    *(v9 + 4) = v4;
    *(v9 + 8) = 1024;
    v11 = v1[1] != 0.0;
    if (v1[2] != 0.0)
    {
      v11 = 1;
    }

    *(v9 + 10) = v11;
    *(v9 + 14) = 1024;
    v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *(v10 + 16) = *(&v6->isa + v12);
    *(v10 + 20) = 1024;
    v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *(v10 + 22) = *(&v6->isa + v13);

    _os_log_impl(&dword_1BBC58000, v7, v8, "isScreenSharingVisible: %{BOOL}d, isMediaPipped: %{BOOL}d, isPipStashed:%{BOOL}d, isScreenSharingFullScreen:%{BOOL}d", v10, 0x1Au);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v7 = v6;
  }

  return v4;
}

Swift::Void __swiftcall MultiwayViewController.didRejectCall()()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {

    MultiwayViewController.didExpandIncomingCallBanner.setter(0);
  }
}

id MultiwayViewController.updateState(for:preferredControlsSize:presentingMenu:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0_91();
  v6 = v5;
  swift_getObjectType();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v48);
  OUTLINED_FUNCTION_150_1(v49);
  result = OUTLINED_FUNCTION_46_26(v49);
  if (!v15)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v8 = v49[3];
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v9 = v8;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      v11 = v49[6];
      v12 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if ((a2 & 1) == 0)
      {
        v13 = *(v11 + v12);
        v14 = v11 + OBJC_IVAR___CNKFaceTimeConstraintsController_bannerControlsSize;
        OUTLINED_FUNCTION_73();
        if ((*(v14 + 16) & 1) == 0 && *v14 == v3)
        {
          v15 = *(v14 + 8) == v2 && v13 == 1;
          if (v15)
          {
            return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
          }
        }

        v43 = *(v14 + 16);
        *v14 = v3;
        *(v14 + 8) = v2;
        *(v14 + 16) = 0;
        MultiwayViewConstraintsController.bannerControlsSize.didset();
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v16 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v16, &static Logger.conversationControls);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v18))
        {
          v19 = swift_slowAlloc();
          v42 = v12;
          v44 = swift_slowAlloc();
          *v19 = 136446466;
          v20 = _typeName(_:qualified:)();
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v44);

          *(v19 + 4) = v22;
          *(v19 + 12) = 2082;
          OUTLINED_FUNCTION_3_109();
          v23 = CGSize.debugDescription.getter();
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v44);

          *(v19 + 14) = v25;
          _os_log_impl(&dword_1BBC58000, v17, v18, "[%{public}s] set preffered contentSize of banner to %{public}s", v19, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
        {
          v26 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsType;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          outlined init with copy of ConversationControlsType(&v6[v26], &v44);
          if (v47 == 7 && (v27 = vorrq_s8(v45, v46), !(*&vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)) | v44)))
          {
            outlined destroy of ConversationControlsType(&v44);
            v32 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController;
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            if (*&v6[v32])
            {
              OUTLINED_FUNCTION_4_137();
              v34 = *(v33 + 1096);
              v36 = v35;
              v34();
              v38 = v37;

              if (static Platform.current.getter())
              {
                MultiwayViewConstraintsController.configure(rosterCellWidth:)(v38, 0);
                v39 = ParticipantListViewController.collectionView.getter();
                if (v39)
                {
                  v40 = v39;
                  v41 = [v39 collectionViewLayout];

                  [v41 invalidateLayout];
                }
              }
            }
          }

          else
          {
            outlined destroy of ConversationControlsType(&v44);
          }
        }

        if (v43)
        {
          goto LABEL_22;
        }
      }

      if (*(v11 + v12))
      {
LABEL_22:
        result = [v6 view];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v28 = result;
        [result layoutIfNeeded];

        OUTLINED_FUNCTION_202_2();
        MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v29, v30, v31);
      }
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

Swift::Void __swiftcall MultiwayViewController.presentCallDetails()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = static Features.shared;
  if ((Features.isMoreMenuEnabled.getter() & 1) != 0 && (v2 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent), OUTLINED_FUNCTION_25_54(), swift_beginAccess(), OUTLINED_FUNCTION_190_1(v18), OUTLINED_FUNCTION_46_26(v18), !v3) && (v2 = v2[3], v4 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController, OUTLINED_FUNCTION_9_67(), *(v2 + v4)) && (OUTLINED_FUNCTION_4_137(), v6 = *(v5 + 528), v8 = v7, v2 = v6(), v8, v2) && (v9 = [v2 view], v2, v9))
  {
    if (*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator))
    {
      OUTLINED_FUNCTION_244_2();
      OUTLINED_FUNCTION_4_137();
      v11 = *(v10 + 176);
      v13 = v12;
      OUTLINED_FUNCTION_262_2();
      v11(0xD000000000000027);
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator))
  {
    OUTLINED_FUNCTION_244_2();
    OUTLINED_FUNCTION_4_137();
    v15 = *(v14 + 184);
    v17 = v16;
    OUTLINED_FUNCTION_262_2();
    v15(0xD000000000000027);
  }
}

void MultiwayViewController.presentShareCardViewController(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_172_2(v11);
  OUTLINED_FUNCTION_46_26(v11);
  if (!v5)
  {
    v6 = *(v4 + 24);
    v7 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController;
    OUTLINED_FUNCTION_9_67();
    v8 = *&v6[v7];
    if (v8)
    {
      v9 = v8;
      v10 = OUTLINED_FUNCTION_246();
      a2(v10);
    }
  }
}

void closure #1 in MultiwayViewController.showKickParticipantAlert(toKick:)()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, &static Logger.conversationControls);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BBC58000, v1, v2, "MultiwayViewController: did tap on kick from the kick participant alert", v3, 2u);
    MEMORY[0x1BFB23DF0](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    ConversationController.kick(_:)();
  }
}

void closure #2 in MultiwayViewController.showKickParticipantAlert(toKick:)()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, &static Logger.conversationControls);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BBC58000, v1, v2, "MultiwayViewController: did tap on cancel from the kick participant alert", v3, 2u);
    MEMORY[0x1BFB23DF0](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t MultiwayViewController.inCallControlsViewController(_:didKick:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_101();
  v3 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_223_3();
  v5 = OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_115(v5, v6, v3);
  if (v7)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit11ParticipantVSgMd);
  }

  OUTLINED_FUNCTION_1_184();
  OUTLINED_FUNCTION_33_0();
  _s15ConversationKit11ParticipantVWObTm_7();
  ConversationController.canKick(_:)();
  if (v9)
  {
    MultiwayViewController.showKickParticipantAlert(toKick:)();
  }

  OUTLINED_FUNCTION_0_220();
  return _s15ConversationKit11ParticipantVWOhTm_17();
}

uint64_t MultiwayViewController.hasConnectedToCall.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v1 + 8);
  swift_getObjectType();
  v3 = *(v2 + 104);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_45_1();
  v3(v4);
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();
  return v2 & 1;
}

void MultiwayViewController.participantGridViewController(_:didUpdateVisibleParticipantsFrom:to:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_178_1(v95);
  OUTLINED_FUNCTION_178_1(&v96);
  OUTLINED_FUNCTION_46_26(&v96);
  if (v12)
  {
LABEL_42:
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v13 = *(v3 + 16);
    v81 = v13;
    if (v13)
    {
      v14 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_284_0(v94);
      outlined init with copy of MultiwayViewController.ViewContent(v94, v93);
      v93[0] = v14;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v93[0];
      OUTLINED_FUNCTION_17_17();
      v17 = v3 + v16;
      OUTLINED_FUNCTION_207_1();
      do
      {
        OUTLINED_FUNCTION_7_5();
        OUTLINED_FUNCTION_78();
        _s15ConversationKit11ParticipantVWOcTm_16();
        v18 = OUTLINED_FUNCTION_136_5();
        v19(v18);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
        v93[0] = v15;
        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v20);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v15 = v93[0];
        }

        *(v15 + 16) = v21 + 1;
        OUTLINED_FUNCTION_258_1();
        v22();
        v17 += v89;
        --v13;
      }

      while (v13);
    }

    else
    {
      OUTLINED_FUNCTION_284_0(v94);
      outlined init with copy of MultiwayViewController.ViewContent(v94, v93);
      v15 = MEMORY[0x1E69E7CC0];
    }

    v23 = *(v1 + 16);
    v24 = v1;
    v25 = MEMORY[0x1E69E7CC0];
    v82 = v23;
    if (v23)
    {
      v94[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v94[0];
      OUTLINED_FUNCTION_17_17();
      v27 = v24 + v26;
      OUTLINED_FUNCTION_207_1();
      do
      {
        OUTLINED_FUNCTION_7_5();
        OUTLINED_FUNCTION_78();
        _s15ConversationKit11ParticipantVWOcTm_16();
        v28 = OUTLINED_FUNCTION_136_5();
        v29(v28);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
        v94[0] = v25;
        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v30);
          v35 = v34;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v32 = v35;
          v25 = v94[0];
        }

        *(v25 + 16) = v32;
        OUTLINED_FUNCTION_258_1();
        v33();
        v27 += v89;
        --v23;
      }

      while (v23);
    }

    v36 = 0;
    v85 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v37 = v81;
    while (v36 != v37)
    {
      OUTLINED_FUNCTION_165_4();
      v90 = v38;
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v39 = 0;
      v40 = *(v25 + 16);
      while (v40 != v39)
      {
        OUTLINED_FUNCTION_257_1();
        OUTLINED_FUNCTION_13_82();
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, v41);
        v42 = OUTLINED_FUNCTION_273_1();
        v39 = v37;
        if (v42)
        {
          OUTLINED_FUNCTION_0_220();
          _s15ConversationKit11ParticipantVWOhTm_17();
          v36 = v90;
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_1_184();
      _s15ConversationKit11ParticipantVWObTm_7();
      v43 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94[0] = v85;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_271_3();
        v43 = v94[0];
      }

      v37 = v81;
      v46 = *(v43 + 16);
      v45 = *(v43 + 24);
      if (v46 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v45);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v94[0];
      }

      *(v43 + 16) = v46 + 1;
      v85 = v43;
      OUTLINED_FUNCTION_1_184();
      _s15ConversationKit11ParticipantVWObTm_7();
      v36 = v90;
    }

    v47 = 0;
    v93[0] = v85;
    v48 = MEMORY[0x1E69E7CC0];
LABEL_27:
    while (v47 != v82)
    {
      OUTLINED_FUNCTION_165_4();
      v91 = v49;
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v50 = 0;
      v51 = *(v15 + 16);
      while (v51 != v50)
      {
        OUTLINED_FUNCTION_257_1();
        OUTLINED_FUNCTION_13_82();
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, v52);
        v53 = OUTLINED_FUNCTION_273_1();
        v50 = v37;
        if (v53)
        {
          OUTLINED_FUNCTION_0_220();
          _s15ConversationKit11ParticipantVWOhTm_17();
          v47 = v91;
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_1_184();
      _s15ConversationKit11ParticipantVWObTm_7();
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v94[0] = v48;
      if ((v54 & 1) == 0)
      {
        OUTLINED_FUNCTION_271_3();
        v48 = v94[0];
      }

      v56 = *(v48 + 16);
      v55 = *(v48 + 24);
      if (v56 >= v55 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v55);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v48 = v94[0];
      }

      *(v48 + 16) = v56 + 1;
      OUTLINED_FUNCTION_1_184();
      _s15ConversationKit11ParticipantVWObTm_7();
      v47 = v91;
    }

    specialized Array.append<A>(contentsOf:)(v48);
    v84 = v93[0];
    v83 = *(v93[0] + 16);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v57 = 0;
    while (1)
    {
      if (v83 == v57)
      {

        MultiwayViewController.updateCornerButtonsVisibility()();
        MultiwayViewController.needsUpdatePresentationContexts.setter(1);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        goto LABEL_42;
      }

      if (v57 >= *(v84 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v92 = v57 + 1;
      v58 = v96;
      v59 = OUTLINED_FUNCTION_215_3();
      v60 = v58;
      v87 = v58;
      ParticipantListViewController.update(participant:broadcastingState:)(v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit26ParticipantsViewController_pGMd);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1BC4BE790;
      v62 = v97;
      v88 = v97;
      v63 = type metadata accessor for ParticipantGridViewController();
      *(v61 + 56) = v63;
      *(v61 + 64) = &protocol witness table for ParticipantGridViewController;
      *(v61 + 32) = v62;
      *(v61 + 96) = type metadata accessor for ParticipantListViewController();
      *(v61 + 104) = &protocol witness table for ParticipantListViewController;
      *(v61 + 72) = v60;
      v64 = v98;
      *(v61 + 136) = type metadata accessor for InCallBannerHostViewController();
      *(v61 + 144) = &protocol witness table for InCallBannerHostViewController;
      *(v61 + 112) = v64;
      v65 = v99;
      *(v61 + 176) = type metadata accessor for MostActiveParticipantViewController();
      *(v61 + 184) = &protocol witness table for MostActiveParticipantViewController;
      *(v61 + 152) = v65;
      v66 = v100;
      *(v61 + 216) = type metadata accessor for CaptionsViewController();
      *(v61 + 224) = &protocol witness table for CaptionsViewController;
      *(v61 + 192) = v66;
      __swift_project_boxed_opaque_existential_1((v61 + 32), v63);
      v86 = off_1F3ADF178[0];
      v67 = v88;
      v68 = v87;
      v69 = v64;
      v70 = v65;
      v71 = v66;
      v72 = OUTLINED_FUNCTION_206();
      (v86)(v72);
      __swift_project_boxed_opaque_existential_1((v61 + 72), *(v61 + 96));
      v73 = OUTLINED_FUNCTION_26_52();
      v74(v73);
      __swift_project_boxed_opaque_existential_1((v61 + 112), *(v61 + 136));
      v75 = OUTLINED_FUNCTION_26_52();
      v76(v75);
      __swift_project_boxed_opaque_existential_1((v61 + 152), *(v61 + 176));
      v77 = OUTLINED_FUNCTION_26_52();
      v78(v77);
      __swift_project_boxed_opaque_existential_1((v61 + 192), *(v61 + 216));
      v79 = OUTLINED_FUNCTION_26_52();
      v80(v79);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v57 = v92;
      OUTLINED_FUNCTION_0_220();
      _s15ConversationKit11ParticipantVWOhTm_17();
    }

    __break(1u);
  }
}

uint64_t MultiwayViewController.participantGridViewController(_:participantDidHideSash:)()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v8);
  OUTLINED_FUNCTION_150_1(v9);
  result = OUTLINED_FUNCTION_46_26(v9);
  if (!v1)
  {
    v2 = v9[7];
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v3 = v2;
    MultiwayViewController.bringSubviewToFront(_:)(v2);

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_4_137();
    v5 = *(v4 + 440);
    v7 = v6;
    LOBYTE(v3) = v5();

    if (v3)
    {
      MultiwayViewController.updateZoomControls(for:)(0xFCu);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

uint64_t MultiwayViewController.participantGridViewController(_:didDodgeMediaPipWithActiveParticipants:)()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_279_0(v10);
  OUTLINED_FUNCTION_279_0(&v11);
  result = OUTLINED_FUNCTION_46_26(&v11);
  if (!v1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();

    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_91_2();
    Array<A>.participants(notIn:)();
    v3 = v2;

    ParticipantListViewController.update(with:updateReason:)(v3);

    v4 = ParticipantListViewController.participantCount.getter() > 0;
    MultiwayViewController.setParticipantListState(_:animated:)(v4, 1);
    v5 = v12;
    if (v12)
    {
      v6 = v13;
      ObjectType = swift_getObjectType();
      v8 = v5;
      v9 = ParticipantListViewController.participantCount.getter();
      (*(v6 + 88))(v9, ObjectType, v6);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

uint64_t MultiwayViewController.participantGridViewController(_:didSetOverlayHidden:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_178_1(v106);
  OUTLINED_FUNCTION_178_1(v107);
  result = OUTLINED_FUNCTION_46_26(v107);
  if (!v11)
  {
    v12 = OUTLINED_FUNCTION_111_8(result, v4, v5, v6, v7, v8, v9, v10, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
    OUTLINED_FUNCTION_217_4(v12, v13, v14, v15, v16, v17, v18, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81);
    ParticipantListViewController.setOverlayHidden(_:)(a2 & 1);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v106, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

uint64_t MultiwayViewController.configurableRosterCellWidth.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_146_3(v5);
  OUTLINED_FUNCTION_46_26(v5);
  if (v2)
  {
    return 0;
  }

  v3 = *(v1 + 48) + OBJC_IVAR___CNKFaceTimeConstraintsController_configurableRosterCellWidth;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *v3;
}

void MultiwayViewController.cameraViewController(_:didRenderFrame:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_35_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_142_4();
  memcpy(v7, v8, v9);
  OUTLINED_FUNCTION_46_26(v26);
  if (!v10)
  {
    v11 = *(v6 + 72);
    if (v11)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
      v12 = a1;
      v13 = v11;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        v15 = [a2 pixelBuffer];
        [a2 timestamp];
        v16 = objc_allocWithZone(MEMORY[0x1E69865E0]);
        OUTLINED_FUNCTION_15_14();
        OUTLINED_FUNCTION_97_0();
        v21 = @nonobjc AVCVideoFrame.init(pixelBuffer:time:imageData:)(v17, v18, v19, v20, 0, 0xF000000000000000);
        if (v21)
        {
          v22 = v21;
          v23 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          v24 = *(v3 + v23);
          if (v24)
          {
            v25 = v24;
            [v25 encodeProcessedVideoFrame_];
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.cameraViewControllerPresentationRectWasDoubleTapped(_:)(CFXCameraViewController *a1)
{
  OUTLINED_FUNCTION_159_3();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_12_3();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_9_37();
  v7(v6);
  if ((v3 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_191_0(v13);
  OUTLINED_FUNCTION_191_0(v14);
  OUTLINED_FUNCTION_46_26(v14);
  if (!v8)
  {
    v9 = *(v14[7] + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v10 = v9;
    v3 = UIView.tapInteractions(withTapCount:)(2);

    if (specialized Array.count.getter(v3))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) == 0)
      {
        v11 = *(v3 + 32);
LABEL_6:
        v12 = v11;

        TapInteraction.triggerInteraction()();

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        return;
      }

LABEL_10:
      v11 = MEMORY[0x1BFB22010](0, v3);
      goto LABEL_6;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }
}

void MultiwayViewController.cameraViewController(_:presentationRectWasPinchedWith:scale:velocity:)(double a1)
{
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_4_137();
  v4 = *(v3 + 512);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_28_0();
  v4(v7, a1);
}

void MultiwayViewController.cameraViewController(_:didChange:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v24 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_37_0();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v0;
  v11[4] = v3;
  OUTLINED_FUNCTION_7_6(v11);
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v25[2] = v12;
  v25[3] = &block_descriptor_95_2;
  v13 = _Block_copy(v25);
  v14 = v5;
  v15 = v0;

  static DispatchQoS.unspecified.getter();
  v25[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_16_71();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v16, v17);
  v18 = OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v19, v20);
  OUTLINED_FUNCTION_260();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v21);
  _Block_release(v13);

  v22 = OUTLINED_FUNCTION_181();
  v23(v22);
  (*(v8 + 8))(v1, v24);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in MultiwayViewController.cameraViewController(_:didChange:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = MultiwayViewController.effectsViewController.getter();
  if (v5)
  {
    v6 = v5;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = MultiwayViewController.effectsBrowserContainerViewController.getter();
      if (v9)
      {
        v10 = v9;
        type metadata accessor for EffectsBrowserContainerViewController();
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          (*((*MEMORY[0x1E69E7D40] & *v11) + 0x98))(a3 != 0);
          MultiwayViewController.updateLocalParticipantControls()();
        }
      }

      specialized EffectsHandler.updateAVCEffects(with:)(a3);
    }
  }
}

uint64_t MultiwayViewController.shouldAlwaysPresentExpandedApps(for:)()
{
  if (!*&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController])
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 120);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_28_0();
  v6 = v2(v5);

  return v6 & 1;
}

void MultiwayViewController.effectBrowserViewController(_:presentExpandedAppViewController:animated:completion:)()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController))
  {
    OUTLINED_FUNCTION_152_3();
    OUTLINED_FUNCTION_4_137();
    v2 = *(v1 + 128);
    v3;
    v4 = OUTLINED_FUNCTION_206();
    v2(v4);
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

void MultiwayViewController.effectBrowserViewController(_:dismissExpandedAppViewController:animated:completion:)()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController))
  {
    OUTLINED_FUNCTION_152_3();
    OUTLINED_FUNCTION_4_137();
    v2 = *(v1 + 136);
    v3;
    v4 = OUTLINED_FUNCTION_206();
    v2(v4);
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

double MultiwayViewController.expandedAppViewControllerSize(for:)()
{
  if (!*&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController])
  {
    return 0.0;
  }

  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 144);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_28_0();
  v6 = v2(v5);

  return v6;
}

uint64_t MultiwayViewController.effectBrowserViewController(_:willChangeDockHeight:)(double a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v90);
  OUTLINED_FUNCTION_150_1(v91);
  result = OUTLINED_FUNCTION_46_26(v91);
  if (!v5)
  {
    v6 = v91[6];
    v7 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
    OUTLINED_FUNCTION_3_0();
    result = swift_beginAccess();
    v15 = *(v6 + v7) - 2;
    if (v15 <= 4 && ((0x1Bu >> v15) & 1) != 0)
    {
      v16 = qword_1BC4E9598[v15];
      v17 = qword_1BC4E95C0[v15];
      v18 = v92;
      if (v92)
      {
        v19 = *((*MEMORY[0x1E69E7D40] & *v92) + 0xB0);
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        v20 = v18;
        v19(a1);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_157_3(result, v8, v9, v10, v11, v12, v13, v14, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88);
        OUTLINED_FUNCTION_278_1(v21, v22, v23, v24, v25, v26, v27, v28, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89);
      }

      if (a1 <= 50.0)
      {
        v29 = v17;
      }

      else
      {
        v29 = v16;
      }

      [v2 setControlsState:v29 animated:1];
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v90, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  return result;
}

id MultiwayViewController.didCapture(_:)(void *a1)
{
  v4 = v1;
  v6 = &v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo];
  if (!*&v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo])
  {
    v26[0] = 0;
    *&v26[1] = *(v6 + 8);
    *&v26[3] = *(v6 + 24);
    *&v26[5] = *(v6 + 40);
    *&v26[7] = *(v6 + 56);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v7 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_24();
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v26;
    OUTLINED_FUNCTION_24();
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in MultiwayViewController.didCapture(_:);
    *(v9 + 24) = v8;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_104;
    v2 = _Block_copy(aBlock);
    v3 = aBlock[5];
    v10 = v4;

    dispatch_sync(v7, v2);

    _Block_release(v2);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    memcpy(__dst, v26, sizeof(__dst));
    memcpy(v28, v6, sizeof(v28));
    memcpy(v6, v26, 0x48uLL);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s15ConversationKit22MultiwayViewControllerC18EffectsCaptureInfo33_055EFD27ECDD2CFC2CD9ED96D724A17ELLVSgMd);
    memcpy(aBlock, v26, sizeof(aBlock));
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(aBlock, &_s15ConversationKit22MultiwayViewControllerC18EffectsCaptureInfo33_055EFD27ECDD2CFC2CD9ED96D724A17ELLVSgMd);
  }

  memcpy(aBlock, v6, sizeof(aBlock));
  v12 = aBlock[0];
  if (!aBlock[0])
  {
    goto LABEL_9;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_35_30();
  swift_beginAccess();
  v13 = v12;
  result = outlined bridged method (pb) of @objc CNContact.imageData.getter(a1);
  if (v14 >> 60 == 15)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_80_0();
  v15.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data?(v2, v3);
  result = [a1 pixelBuffer];
  if (result)
  {
    v16 = result;
    v17 = [a1 depthPixelBuffer];
    v18 = OUTLINED_FUNCTION_35();
    [v19 v20];
    OUTLINED_FUNCTION_158();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, v22);
    OUTLINED_FUNCTION_158();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, v24);

LABEL_9:
    v25 = OUTLINED_FUNCTION_38_2();
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v25);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t closure #1 in MultiwayViewController.didCapture(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v3, sizeof(__dst));
  result = getEnumTag for TapInteraction.EventType(__dst);
  if (result != 1)
  {
    v5 = v3[9];
    if (v5)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        v6 = result;
        memcpy(v23, v3, sizeof(v23));
        result = getEnumTag for TapInteraction.EventType(v23);
        if (result != 1)
        {
          v7 = v3[7];
          v8 = v5;
          [v7 frame];
          v10 = v9;
          v12 = v11;
          v14 = v13;
          v16 = v15;
          memcpy(v22, a2, sizeof(v22));
          *a2 = v6;
          a2[1] = v10;
          a2[2] = v12;
          a2[3] = v14;
          a2[4] = v16;
          a2[5] = 0;
          a2[6] = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(a2 + 7) = _Q0;
          return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit22MultiwayViewControllerC18EffectsCaptureInfo33_055EFD27ECDD2CFC2CD9ED96D724A17ELLVSgMd);
        }
      }
    }
  }

  return result;
}

UIView *MultiwayViewController.setupReducedMotionAnimation(forSnapshot:animations:completion:)(void *a1, uint64_t a2, uint64_t *a3)
{
  result = [v3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  [(UIView *)result addSubview:a1];

  result = [v3 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*a3);
  UIView.addConstraintsToFill(_:insets:)(v9, *MEMORY[0x1E69DC5C0]);

  (*a2)();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *a2 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
  *(a2 + 8) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *a3 = partial apply for closure #2 in closure #1 in ParticipantGridView.startAnimations(_:animationStyle:completion:);
  a3[1] = v11;
  v12 = a1;

  return v12;
}

void closure #1 in MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(void *a1, void (*a2)(void))
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 layoutIfNeeded];

    if (a2)
    {
      a2();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #2 in MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7)
  {

    v7(a1 & 1);
    result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  }

  if (a3)
  {
    return a3(a1 & 1);
  }

  return result;
}

BOOL MultiwayViewController.shouldHideStatusBar.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) == 1)
  {
    return 0;
  }

  v3 = __dst[6];
  v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
  swift_beginAccess();
  return *(v3 + v4) == 0;
}

void MultiwayViewController.setControlsState(_:animated:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_185_5();
  v10(v9);
  _dispatchPreconditionTest(_:)();
  v11 = OUTLINED_FUNCTION_229_0();
  v12(v11);
  if (v8)
  {
    v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    memcpy(v31, &v2[v13], sizeof(v31));
    memcpy(v32, &v2[v13], 0xE8uLL);
    OUTLINED_FUNCTION_46_26(v32);
    if (!v14)
    {
      memcpy(v30, v32, sizeof(v30));
      v15 = v6 - 4;
      v16 = (v6 < 7) & (0x6Cu >> v6);
      v17 = v32[6];
      v18 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v19 = *(v17 + v18);
      memcpy(v29, v31, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v29, &v28);
      if (MultiwayViewController.effectsBrowserIsOpaque.getter())
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      if (!v6)
      {
        if (static Platform.current.getter() == 1)
        {
          if (ConversationController.isOneToOneModeEnabled.getter())
          {
            v6 = 0;
          }

          else
          {
            v6 = v20;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      MultiwayViewConstraintsController.inCallControlsState.setter(v6);
      v21 = *&v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
      ObjectType = swift_getObjectType();
      v23 = (*(v21 + 320))(ObjectType, v21);
      v24 = swift_allocObject();
      memcpy((v24 + 16), v30, 0xE8uLL);
      *(v24 + 248) = v15 < 3;
      *(v24 + 249) = v16;
      *(v24 + 256) = v2;
      *(v24 + 264) = v19;
      OUTLINED_FUNCTION_20();
      v25 = swift_allocObject();
      *(v25 + 16) = v2;
      v26 = v2;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      v27 = v26;
      MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(v4 & 1, v23 & (v15 > 2), partial apply for closure #1 in MultiwayViewController.setControlsState(_:animated:), v24, partial apply for closure #2 in MultiwayViewController.setControlsState(_:animated:), v25);

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in MultiwayViewController.setControlsState(_:animated:)(uint64_t a1, char a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  v10 = *(a1 + 16);
  v11 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isExpanded;
  swift_beginAccess();
  *(v10 + v11) = a2;
  InCallControlsViewController.isExpanded.didset();
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = [v12 view];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = 0.0;
    if (a3)
    {
      v15 = 1.0;
    }

    [v13 setAlpha_];
  }

  v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
  swift_beginAccess();
  v17 = *(a4 + v16);
  v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x1B8);
  v19 = v17;
  v20 = v18();

  if (v20)
  {
    MultiwayViewController.updateZoomControls(for:)(a5);
  }
}

void closure #2 in MultiwayViewController.setControlsState(_:animated:)(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() currentDevice];
    v2 = [v1 userInterfaceIdiom];

    if (!v2)
    {
      MultiwayViewController.needsUpdatePresentationContexts.setter(1);
    }
  }
}

uint64_t closure #1 in MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9[-v4];
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6);
  InCallBannerHostViewController.hudTransition()();
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  ParticipantView.updateGradientOverlayView(isHidden:alpha:)(2, *&v7, 0);
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
  }

  _s15ConversationKit11ParticipantVWObTm_7();
  ParticipantGridViewController.update(participant:gradientOverlayAlpha:)();
  return _s15ConversationKit11ParticipantVWOhTm_17();
}

uint64_t closure #2 in MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  if (a1)
  {
    InCallBannerHostViewController.hideOrShowRootView()();
  }

  result = swift_beginAccess();
  if (!*(a3 + 16))
  {
    v6 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsType;
    swift_beginAccess();
    outlined init with copy of ConversationControlsType(v4 + v6, v10);
    *&v9[25] = *&v10[25];
    *v9 = *v10;
    *&v9[16] = *&v10[16];
    if (v10[40])
    {
      if (v10[40] == 2)
      {
        outlined destroy of ConversationControlsType(v9);
      }

      else if (v10[40] != 7 || *v9 != 4 || (v7 = vorrq_s8(*&v9[8], *&v9[24]), *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL))))
      {
        v8 = v9;
        return outlined destroy of ConversationControlsType(v8);
      }
    }

    memset(v10, 0, 40);
    v10[40] = 7;
    InCallBannerHostViewController.updateConversationControlsViewController(type:forceUpdate:)(v10, 0);
    v8 = v10;
    return outlined destroy of ConversationControlsType(v8);
  }

  return result;
}

void closure #1 in MultiwayViewController.setParticipantListState(_:animated:)(id *a1)
{
  v1 = [*a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 superview];

    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in MultiwayViewController.presentAddParticipantSheet()()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v4 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  if (v2)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v37 = v6;
      v10 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
      v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of IDSLookupManager(v10 + v11, v43);
      v13 = v44;
      v12 = v45;
      OUTLINED_FUNCTION_179_2(v43, v44);
      v14 = v10 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v15 = *(v14 + 8);
      v16 = *(v12 + 104);
      v17 = swift_unknownObjectRetain();
      v16(v38, v17, v15, v13, v12);
      swift_unknownObjectRelease();
      if (v39)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
        if (swift_dynamicCast())
        {
          v18 = v42;
          __swift_destroy_boxed_opaque_existential_1(v43);
          v19 = v9;
          _s15ConversationKit0A24HUDDetailsViewControllerC022generateFTPeoplePickerdE012conversation8delegateSo012UINavigationE0CSo14TUConversationC_AA06PeoplehdE8Delegate_ptFZTf4nen_nAA08MultiwaydE0C_Tt1g5();
          v21 = v20;

          v22 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
          v36 = static OS_dispatch_queue.main.getter();
          OUTLINED_FUNCTION_20();
          v23 = swift_allocObject();
          OUTLINED_FUNCTION_278(v23);
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_24();
          v24 = swift_allocObject();
          *(v24 + 16) = v22;
          *(v24 + 24) = v21;
          v40 = partial apply for closure #1 in closure #1 in MultiwayViewController.presentAddParticipantSheet();
          v41 = v24;
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 1107296256;
          OUTLINED_FUNCTION_89_8();
          v38[2] = v25;
          v39 = &block_descriptor_236;
          v26 = _Block_copy(v38);
          v35 = v21;

          static DispatchQoS.unspecified.getter();
          v38[0] = MEMORY[0x1E69E7CC0];
          OUTLINED_FUNCTION_16_71();
          lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v27, v28);
          v29 = OUTLINED_FUNCTION_243();
          __swift_instantiateConcreteTypeFromMangledNameV2(v29);
          OUTLINED_FUNCTION_9_8();
          lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v30, v31);
          OUTLINED_FUNCTION_260();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v32 = OUTLINED_FUNCTION_117();
          MEMORY[0x1BFB215C0](v32);
          _Block_release(v26);

          v33 = OUTLINED_FUNCTION_181();
          v34(v33);
          (*(v37 + 8))(v0, v4);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v43);
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v43);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s15ConversationKit0A0_pSgMd);
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall MultiwayViewController.peoplePickerAdded(_:shouldAddOtherInvitedToRemoteMembers:)(Swift::OpaquePointer _, Swift::Bool shouldAddOtherInvitedToRemoteMembers)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(v4 + v5, v13);
  v6 = v14;
  v7 = v15;
  OUTLINED_FUNCTION_179_2(v13, v14);
  v8 = v4 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v9 = *(v8 + 8);
  v10 = *(v7 + 104);
  v11 = swift_unknownObjectRetain();
  v10(v16, v11, v9, v6, v7);
  swift_unknownObjectRelease();
  if (v16[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pMd);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
      swift_unknownObjectRetain();
      addPeople(_:toConversation:onActiveCall:shouldAddOtherInvitedToRemoteMembers:)();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_257(v3, sel_dismissViewControllerAnimated_completion_);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit0A0_pSgMd);
  }
}

void closure #1 in MultiwayViewController.presentContactCard()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  if (v1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = objc_opt_self();
        swift_unknownObjectRetain();
        v48 = [v8 tu:v7 contactStoreConfigurationForCall:?];
        v9 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
        v10 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v7);
        if (!v10)
        {
          goto LABEL_13;
        }

        if (!v10[2])
        {

          goto LABEL_13;
        }

        v11 = v10[4];
        v12 = v10[5];

        v13 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v7);
        if (v13)
        {
          v14 = *(v13 + 16);

          if (v14 == 1)
          {
            v46 = MEMORY[0x1BFB209B0](v11, v12);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            OUTLINED_FUNCTION_37_0();
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_1BC4BAC30;
            v44 = objc_opt_self();
            *(v15 + 32) = [v44 descriptorForRequiredKeys];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v17 = [v9 contactForIdentifier:v46 keysToFetch:isa];

            if (v17)
            {
              v47 = v17;
              v18 = [v44 viewControllerForContact_];
LABEL_15:
              [v18 setContactStore_];
              [v18 setShouldShowSharedProfileBanner_];
              [v18 setDelegate_];
              type metadata accessor for MultiwayViewController();
              v23 = objc_allocWithZone(MEMORY[0x1E69DC708]);
              v43 = v5;
              @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
              v25 = v24;
              v45 = v24;
              v26 = [v18 navigationItem];
              [v26 setLeftBarButtonItem_];

              v27 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
              v28 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
              v42 = static OS_dispatch_queue.main.getter();
              OUTLINED_FUNCTION_20();
              v29 = swift_allocObject();
              OUTLINED_FUNCTION_278(v29);
              swift_unknownObjectWeakInit();
              OUTLINED_FUNCTION_24();
              v30 = swift_allocObject();
              *(v30 + 16) = v28;
              *(v30 + 24) = v27;
              v49[4] = partial apply for closure #1 in closure #1 in MultiwayViewController.presentContactCard();
              v49[5] = v30;
              v49[0] = MEMORY[0x1E69E9820];
              v49[1] = 1107296256;
              v49[2] = thunk for @escaping @callee_guaranteed () -> ();
              v49[3] = &block_descriptor_228;
              v31 = _Block_copy(v49);
              v41 = v27;

              static DispatchQoS.unspecified.getter();
              v49[0] = MEMORY[0x1E69E7CC0];
              OUTLINED_FUNCTION_16_71();
              lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v32, v33);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
              OUTLINED_FUNCTION_9_8();
              lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v34, v35);
              OUTLINED_FUNCTION_260();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v36 = OUTLINED_FUNCTION_117();
              MEMORY[0x1BFB215C0](v36);
              swift_unknownObjectRelease();
              _Block_release(v31);

              v37 = OUTLINED_FUNCTION_181();
              v38(v37);
              v39 = OUTLINED_FUNCTION_206();
              v40(v39);
              goto LABEL_17;
            }

LABEL_13:
            v19 = [v7 handle];
            if (!v19)
            {

              swift_unknownObjectRelease();
              goto LABEL_17;
            }

            v20 = v19;
            v21 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
            v22 = [objc_opt_self() viewControllerForUnknownContact_];

            v18 = v22;
            [v18 setActions_];

            v47 = 0;
            goto LABEL_15;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in closure #1 in MultiwayViewController.presentAddParticipantSheet()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_278(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    OUTLINED_FUNCTION_259(Strong, sel_presentViewController_animated_completion_, a2);
  }
}

void MultiwayViewController.dismissContactCard()()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall MultiwayViewController.contactViewController(_:didCompleteWith:)(CNContactViewController *_, CNContact_optional didCompleteWith)
{
  v3 = [v2 presentedViewController];
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_257(v3, sel_dismissViewControllerAnimated_completion_);
  }
}

void MultiwayViewController.participantViewDragControllerDidStartDrag(_:)()
{
  MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(1, 1, 0);
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_201_3();
  OUTLINED_FUNCTION_3_0();
  v2 = swift_beginAccess();
  OUTLINED_FUNCTION_135_3(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_46_26(v21);
  if (!v10)
  {
    v11 = *(v1 + 56);
    v12 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
    OUTLINED_FUNCTION_6_0();
    v11[v12] = 1;
    v13 = v11;
    LocalParticipantView.requiresControlsHidden.didset();
  }
}

void MultiwayViewController.participantViewDragController(_:didEndDragAtPosition:velocity:)()
{
  OUTLINED_FUNCTION_81_2();
  v3 = v0;
  OUTLINED_FUNCTION_20_2();
  v4 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  OUTLINED_FUNCTION_35_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_142_4();
  memcpy(v5, v6, v7);
  OUTLINED_FUNCTION_46_26(v49);
  if (v8)
  {
    goto LABEL_33;
  }

  v9 = [v4[1] view];
  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = v9;
  MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(0, 1, 0);
  MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
  [v10 bounds];
  v12 = v11 * 0.5;
  [v10 bounds];
  v14 = v13 * 0.5;
  v15 = MultiwayViewController.constraintController.getter();
  v16 = v15;
  if (v14 <= v2)
  {
    if (v12 > v1)
    {
      if (v15 && (v20 = OBJC_IVAR___CNKFaceTimeConstraintsController_floatingControlsState, OUTLINED_FUNCTION_192_3(), OUTLINED_FUNCTION_3_0(), swift_beginAccess(), LOBYTE(v20) = v16[v20], v16, (v20 & 1) != 0))
      {
        v18 = 0;
        v19 = 65;
      }

      else
      {
        v18 = 1;
        v19 = 1;
      }

      goto LABEL_23;
    }

    if (v15)
    {
      v22 = OBJC_IVAR___CNKFaceTimeConstraintsController_floatingControlsState;
      OUTLINED_FUNCTION_192_3();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      LOBYTE(v22) = v16[v22];

      if (v22)
      {
        v18 = 0;
        v19 = 67;
        goto LABEL_23;
      }
    }

    v19 = 3;
    goto LABEL_22;
  }

  if (v12 <= v1)
  {
    if (v15)
    {
      v21 = OBJC_IVAR___CNKFaceTimeConstraintsController_floatingControlsState;
      OUTLINED_FUNCTION_192_3();
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      LOBYTE(v21) = v16[v21];

      if (v21)
      {
        v18 = 0;
        v19 = 66;
        goto LABEL_23;
      }
    }

    v19 = 2;
LABEL_22:
    v18 = 1;
    goto LABEL_23;
  }

  if (!v15 || (v17 = OBJC_IVAR___CNKFaceTimeConstraintsController_floatingControlsState, OUTLINED_FUNCTION_192_3(), OUTLINED_FUNCTION_3_0(), swift_beginAccess(), LOBYTE(v17) = v16[v17], v16, (v17 & 1) == 0))
  {
    v19 = 0;
    goto LABEL_22;
  }

  v18 = 0;
  v19 = 64;
LABEL_23:
  OUTLINED_FUNCTION_142_4();
  memcpy(v23, v24, v25);
  OUTLINED_FUNCTION_46_26(v48);
  if (!v8)
  {
    v26 = v4[6];
    v27 = OBJC_IVAR___CNKFaceTimeConstraintsController_shouldForceAllowNextLocalParticipantStateUpdate;
    OUTLINED_FUNCTION_3_5();
    v26[v27] = 1;
  }

  OUTLINED_FUNCTION_142_4();
  memcpy(v28, v29, v30);
  OUTLINED_FUNCTION_46_26(v47);
  if (!v8)
  {
    v31 = v4[7];
    v32 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
    OUTLINED_FUNCTION_3_5();
    v31[v32] = 0;
    v33 = v31;
    LocalParticipantView.requiresControlsHidden.didset();
  }

  if (v18)
  {
    v34 = v19;
  }

  else
  {
    v34 = v19 & 3;
  }

  v35 = *&v3[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
  ObjectType = swift_getObjectType();
  (*(v35 + 584))(v34, ObjectType, v35);
  LOBYTE(aBlock[0]) = 0;
  MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(aBlock, v19, 0);
  v37 = *&v3[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
  v38 = swift_getObjectType();
  if (((*(v37 + 320))(v38, v37) & 1) == 0)
  {
    type metadata accessor for ParticipantViewDragController();
    v39 = OUTLINED_FUNCTION_3_109();
    v41 = static ParticipantViewDragController.boingAnimator(usingVelocity:)(v39, v40);
    OUTLINED_FUNCTION_20();
    v42 = swift_allocObject();
    *(v42 + 16) = v3;
    aBlock[4] = partial apply for closure #1 in MultiwayViewController.participantViewDragController(_:didEndDragAtPosition:velocity:);
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_89_8();
    aBlock[2] = v43;
    aBlock[3] = &block_descriptor_116;
    v44 = _Block_copy(aBlock);
    v45 = v3;

    [v41 addAnimations_];
    _Block_release(v44);
    [v41 startAnimation];
  }

  MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);

LABEL_33:
  OUTLINED_FUNCTION_80();
}

BOOL closure #1 in MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    v5 = 1.0;
    if (a2)
    {
      v5 = 0.0;
    }

    [Strong setAlpha_];
  }

  return v4 == 0;
}

BOOL closure #2 in MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    [Strong setEnabled_];
  }

  return v4 == 0;
}

uint64_t MultiwayViewController.captionsViewDragControllerDidStartDrag(_:atPosition:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v108);
  OUTLINED_FUNCTION_150_1(v109);
  result = OUTLINED_FUNCTION_46_26(v109);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_111_8(result, v1, v2, v3, v4, v5, v6, v7, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
    OUTLINED_FUNCTION_217_4(v9, v10, v11, v12, v13, v14, v15, v16, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83);
    v17 = OUTLINED_FUNCTION_3_109();
    MultiwayViewConstraintsController.updateCaptionsBubbleViewConstraints(forPosition:withSnapping:)(__PAIR128__(v18, *&v17), 0);
    OUTLINED_FUNCTION_202_2();
    MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v19, v20, v21);
    MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(1, 1, 0);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v108, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

uint64_t MultiwayViewController.captionsViewDragController(_:didMoveToPosition:)()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_150_1(v110);
  OUTLINED_FUNCTION_150_1(v111);
  result = OUTLINED_FUNCTION_46_26(v111);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_111_8(result, v1, v2, v3, v4, v5, v6, v7, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
    OUTLINED_FUNCTION_217_4(v9, v10, v11, v12, v13, v14, v15, v16, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85);
    v17 = OUTLINED_FUNCTION_3_109();
    v19 = MultiwayViewController.nextLocalParticipantState(forNewCaptionsViewPosition:)(v17, v18);
    if (v19 < 0xFCu)
    {
      v20 = v19;
      v21 = v111[19];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if ((*(v21 + 88) & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_3_109();
        MultiwayViewConstraintsController.updateCaptionsBubbleViewConstraints(forPosition:withSnapping:)(__PAIR128__(v23, *&v22), 0);
        MultiwayViewController.setLocalParticipantState(_:animated:)(v20, 1);
      }
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v110, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

  return result;
}

void MultiwayViewController.captionsViewDragController(_:didEndDragAtPosition:velocity:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_0_91();
  v8 = &v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  OUTLINED_FUNCTION_25_54();
  swift_beginAccess();
  OUTLINED_FUNCTION_190_1(v23);
  OUTLINED_FUNCTION_46_26(v23);
  if (!v9)
  {
    v10 = v8[6];
    v11 = OUTLINED_FUNCTION_3_109();
    MultiwayViewConstraintsController.updateCaptionsBubbleViewConstraints(forPosition:withSnapping:)(__PAIR128__(v12, *&v11), 1);
    LOBYTE(v22[0]) = 0;
    MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v22, 0xFCu, 0);
    v13 = *&v5[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
    ObjectType = swift_getObjectType();
    if (((*(v13 + 320))(ObjectType, v13) & 1) == 0)
    {
      type metadata accessor for ParticipantViewDragController();
      v15 = static ParticipantViewDragController.boingAnimator(usingVelocity:)(a3, a4);
      OUTLINED_FUNCTION_20();
      v16 = swift_allocObject();
      *(v16 + 16) = v5;
      v22[4] = partial apply for closure #1 in MultiwayViewController.captionsViewDragController(_:didEndDragAtPosition:velocity:);
      v22[5] = v16;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = thunk for @escaping @callee_guaranteed () -> ();
      v22[3] = &block_descriptor_122;
      v17 = _Block_copy(v22);
      v18 = v5;

      [v15 addAnimations_];
      _Block_release(v17);
      [v15 startAnimation];
    }

    v19 = OUTLINED_FUNCTION_3_109();
    v21 = MultiwayViewController.nextLocalParticipantState(forNewCaptionsViewPosition:)(v19, v20);
    if (v21 <= 0xFBu)
    {
      MultiwayViewController.setLocalParticipantState(_:animated:)(v21, 1);
    }
  }
}

void closure #1 in MultiwayViewController.participantViewDragController(_:didEndDragAtPosition:velocity:)(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void *MultiwayViewController.pipViewController.getter()
{
  v2 = OUTLINED_FUNCTION_33_42();
  OUTLINED_FUNCTION_112_7(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16[0]);
  getEnumTag for TapInteraction.EventType(v16);
  OUTLINED_FUNCTION_204_2();
  if (!v10)
  {
    v1 = *(v0 + 104);
    v11 = v1;
  }

  return v1;
}

__C::CGRect __swiftcall MultiwayViewController.frameForRestoreAnimation()()
{
  OUTLINED_FUNCTION_218_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_246_3();
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(v36, (v0 + v6), sizeof(v36));
  memcpy(v37, (v0 + v6), sizeof(v37));
  if (getEnumTag for TapInteraction.EventType(v37) != 1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v0, 1, v4);
    if (v7)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit11ParticipantVSgMd);
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_1_184();
    OUTLINED_FUNCTION_208();
    _s15ConversationKit11ParticipantVWObTm_7();
    OUTLINED_FUNCTION_226_3();
    outlined init with copy of MultiwayViewController.ViewContent(&v35, &v34);
    v21 = ConversationController.isOneToOneModeEnabled.getter();
    v22 = *(v1 + *(v4 + 28));
    if (v21)
    {
      if (!v22)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_5;
      }
    }

    else if (!v22)
    {
      [v37[7] frame];
      OUTLINED_FUNCTION_40_1();
LABEL_15:
      v27 = [objc_opt_self() mainScreen];
      [v27 fixedCoordinateSpace];

      v28 = OUTLINED_FUNCTION_280_1();
      if (v28)
      {
        v29 = v28;
        v30 = [v28 coordinateSpace];

        v31 = OUTLINED_FUNCTION_35();
        [v32 v33];
        OUTLINED_FUNCTION_40_1();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    v23 = OUTLINED_FUNCTION_280_1();
    if (!v23)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v24 = v23;
    v25 = OUTLINED_FUNCTION_40_2();
    ParticipantGridViewController.spatialPosition(for:relativeTo:)(v25, v26);
    OUTLINED_FUNCTION_40_1();

    goto LABEL_15;
  }

LABEL_5:
  v8 = [objc_opt_self() mainScreen];
  [v8 fixedCoordinateSpace];

  v9 = OUTLINED_FUNCTION_280_1();
  if (!v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = v9;
  [v9 frame];
  OUTLINED_FUNCTION_40_1();

  v15 = OUTLINED_FUNCTION_280_1();
  if (!v15)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15;
  v17 = [v15 coordinateSpace];

  v18 = OUTLINED_FUNCTION_35();
  [v19 v20];
  OUTLINED_FUNCTION_40_1();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_17:
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_216_3();
LABEL_22:
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

id MultiwayViewController.underlyingView.getter()
{
  v1 = [v0 view];

  return v1;
}

id MultiwayViewController.senderHandle(videoMessageController:)(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x138))();
  if (!result)
  {
    v2 = [objc_opt_self() facetimeService];
    v3 = IMPreferredAccountForService();

    if (v3 && (v4 = outlined bridged method (ob) of @objc IMAccount.displayName.getter(v3), v5))
    {
      v6 = v4;
      v7 = v5;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      return TUHandle.__allocating_init(type:value:)(1, v6, v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_29();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_174();
  v11 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_159();
  v15 = type metadata accessor for URL();
  OUTLINED_FUNCTION_7_0();
  (*(v16 + 16))(v1, v8, v15);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  LOBYTE(v62) = 0;
  v20 = objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewModel(0));
  VideoMessagePlayerViewModel.init(videoMessageURL:playerSpaciality:)();
  v22 = v21;
  v23 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v24 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  specialized Collection.first.getter(*(v23 + v24), v3);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v11);
  v26 = MEMORY[0x1E69E7D40];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_1_184();
    _s15ConversationKit11ParticipantVWObTm_7();
    v27 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v28.super.isa = v27;
    OUTLINED_FUNCTION_17_0(0xD000000000000016, 0x80000001BC51BD20, v29, v30, v28);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v31 = OUTLINED_FUNCTION_13_12();
    *(v31 + 16) = xmmword_1BC4BA940;
    v32 = (v2 + *(v11 + 36));
    v34 = *v32;
    v33 = v32[1];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      Participant.contactDetails.getter();
      v34 = v63;
      v35 = v64;

      v26 = MEMORY[0x1E69E7D40];
    }

    *(v31 + 32) = v34;
    *(v31 + 40) = v35;

    v36 = String.init(format:_:)();
    v38 = v37;

    (*((*v26 & *v22) + 0x188))(v36, v38);
    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
  }

  OUTLINED_FUNCTION_20();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_43_25();
  v40 = *((*v26 & *v22) + 0x1C0);

  v41 = OUTLINED_FUNCTION_251_3();
  v42 = v40(v41);
  *v43 = partial apply for closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  v43[1] = v39;

  v44 = OUTLINED_FUNCTION_250_2();
  v42(v44);

  OUTLINED_FUNCTION_20();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_43_25();
  OUTLINED_FUNCTION_24();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v6;

  v47 = v6;
  v48 = OUTLINED_FUNCTION_251_3();
  v49 = v40(v48);
  *(v50 + 16) = partial apply for closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  *(v50 + 24) = v46;

  v51 = OUTLINED_FUNCTION_250_2();
  v49(v51);

  OUTLINED_FUNCTION_20();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_43_25();

  v53 = OUTLINED_FUNCTION_251_3();
  v54 = v40(v53);
  *(v55 + 48) = partial apply for closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  *(v55 + 56) = v52;

  v56 = OUTLINED_FUNCTION_250_2();
  v54(v56);

  OUTLINED_FUNCTION_20();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_43_25();

  v58 = OUTLINED_FUNCTION_251_3();
  v59 = v40(v58);
  *(v60 + 64) = partial apply for closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  *(v60 + 72) = v57;

  v61 = OUTLINED_FUNCTION_250_2();
  v59(v61);

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:), v6, v5);
}

uint64_t closure #1 in closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    type metadata completion function for SyncedScreeningAlphaGradientView();
    ConversationController.resetRecordingVideoMessage(completion:)();
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationController];

    if (v5)
    {
    }
  }

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = a2;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v5[18] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for Participant(0);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[26] = v9;
  v5[27] = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:), v9, v8);
}

uint64_t closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  v53 = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 224) = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController;
    *(v0 + 232) = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController;
    v3 = *(Strong + v2);
    v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v5 = MEMORY[0x1E69E7CC0];
    v51 = *(v3 + v4);
    v52 = MEMORY[0x1E69E7CC0];
    v6 = *(v51 + 16);
    if (v6)
    {
      v7 = *(v0 + 184);
      v8 = *(v0 + 192);
      v9 = *(*(v0 + 176) + 28);
      v10 = v51 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v11 = *(v7 + 72);

      do
      {
        OUTLINED_FUNCTION_7_5();
        _s15ConversationKit11ParticipantVWOcTm_16();
        v12 = *(v8 + v9);
        if (v12)
        {
          v13 = v12;
          OUTLINED_FUNCTION_0_220();
          v14 = _s15ConversationKit11ParticipantVWOhTm_17();
          MEMORY[0x1BFB20CC0](v14);
          v15 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v15 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v15);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v5 = v52;
        }

        else
        {
          OUTLINED_FUNCTION_0_220();
          _s15ConversationKit11ParticipantVWOhTm_17();
        }

        v10 += v11;
        --v6;
      }

      while (v6);
    }

    v16 = MultiwayViewController.senderHandle(videoMessageController:)(*(v0 + 136));
    *(v0 + 240) = v16;
    if (v16)
    {
      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      *(v0 + 248) = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v5);
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
      {
        v19 = *(v0 + 152);
        UUID.init()();
        v20 = OUTLINED_FUNCTION_90_2();
        OUTLINED_FUNCTION_115(v20, v21, v19);
        if (!v22)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(*(v0 + 144), &_s10Foundation4UUIDVSgMd);
        }
      }

      else
      {
        (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
      }

      v37 = swift_task_alloc();
      *(v0 + 256) = v37;
      *v37 = v0;
      v37[1] = closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
      OUTLINED_FUNCTION_265_2();

      return VideoMessageController.complete(sendingTo:sendingFrom:in:)();
    }

    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v23, &static Logger.videoMessaging);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_18_0(v25))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v26, v27, "Can't sent a video message with no sender handle");
      OUTLINED_FUNCTION_27();
    }

    lazy protocol witness table accessor for type VideoMessagingError and conformance VideoMessagingError();
    v28 = swift_allocError();
    swift_willThrow();
    *(v0 + 112) = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (swift_dynamicCast())
    {
      if (one-time initialization token for videoMessaging != -1)
      {
        OUTLINED_FUNCTION_0_8();
      }

      OUTLINED_FUNCTION_52(v23, &static Logger.videoMessaging);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_163(v31))
      {
        v32 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_182_0(v32);
        OUTLINED_FUNCTION_269_2(&dword_1BBC58000, v33, v34, "Video message send called when already sending.");
        OUTLINED_FUNCTION_4_4();
      }

      v35 = *(v0 + 224);

      v36 = *(v0 + 112);
      goto LABEL_35;
    }

    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    OUTLINED_FUNCTION_52(v23, &static Logger.videoMessaging);
    v39 = v28;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 224);
    if (!v42)
    {

      v36 = v28;
LABEL_35:

      goto LABEL_36;
    }

    v44 = OUTLINED_FUNCTION_42();
    v45 = swift_slowAlloc();
    v52 = v45;
    *v44 = 136315138;
    *(v0 + 120) = v28;
    v46 = v28;
    v47 = String.init<A>(reflecting:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v52);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_1BBC58000, v40, v41, "Unknown error on send: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

LABEL_36:
  OUTLINED_FUNCTION_220_1();

  OUTLINED_FUNCTION_13();

  return v50();
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  *(*v1 + 264) = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);

  v3 = v2[27];
  v4 = v2[26];
  if (v0)
  {
    v5 = closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  }

  else
  {
    v5 = closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 240);

  OUTLINED_FUNCTION_198_4();
  OUTLINED_FUNCTION_4_137();
  v3 = *(v2 + 784);
  v5 = v4;
  v3();

  if (one-time initialization token for videoMessaging != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v6, &static Logger.videoMessaging);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v8))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v9, v10, "Video message send complete. Requesting dismissal");
    OUTLINED_FUNCTION_27();
  }

  v11 = *(v0 + 224);

  v12 = [v11 navigationController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 popViewControllerAnimated_];
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v0 + 224);
  if (Strong)
  {
    [Strong unansweredCallUIDismissed];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_220_1();

  OUTLINED_FUNCTION_13();

  return v17();
}

{
  v27 = v0;
  v1 = *(v0 + 240);

  v2 = *(v0 + 264);
  *(v0 + 112) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v4, &static Logger.videoMessaging);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v6))
    {
      v7 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v7);
      OUTLINED_FUNCTION_269_2(&dword_1BBC58000, v8, v9, "Video message send called when already sending.");
      OUTLINED_FUNCTION_4_4();
    }

    v10 = *(v0 + 224);

    v11 = *(v0 + 112);
  }

  else
  {

    if (one-time initialization token for videoMessaging != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v12, &static Logger.videoMessaging);
    v13 = v2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 224);
    if (v16)
    {
      v18 = OUTLINED_FUNCTION_42();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      *(v0 + 120) = v2;
      v20 = v2;
      v21 = String.init<A>(reflecting:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1BBC58000, v14, v15, "Unknown error on send: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();

      goto LABEL_13;
    }

    v11 = v2;
  }

LABEL_13:
  OUTLINED_FUNCTION_220_1();

  OUTLINED_FUNCTION_13();

  return v24();
}

uint64_t closure #1 in closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:), v6, v5);
}

uint64_t closure #1 in closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    ConversationController.saveRecordedVideoMessage()();
  }

  **(v0 + 40) = v2 == 0;
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_100();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  type metadata accessor for MainActor();
  OUTLINED_FUNCTION_246();

  static MainActor.shared.getter();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_37_0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v4;
  v13[3] = v14;
  v13[4] = a1;
  v15 = type metadata completion function for SyncedScreeningAlphaGradientView();
  a4(v15);
}

uint64_t closure #1 in closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:), v6, v5);
}

uint64_t closure #1 in closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    ConversationController.discardRecordedVideoMessage()();
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationController];

    if (v5)
    {
    }
  }

  OUTLINED_FUNCTION_13();

  return v6();
}

Swift::Void __swiftcall MultiwayViewController.prepareForAppSwitcher()()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_4_137();
  v1 = *(v0 + 240);
  v3 = v2;
  LOBYTE(v1) = v1();

  if (VideoMessageController.State.rawValue.getter(v1) == 0x676E696D726177 && v4 == 0xE700000000000000)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_4_137();
      v8 = *(v7 + 240);
      v10 = v9;
      LOBYTE(v8) = v8();

      if (VideoMessageController.State.rawValue.getter(v8) == 0x6552657669746361 && v11 == 0xEF676E6964726F63)
      {
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      ConversationController.stopRecordingVideoMessage()();
LABEL_18:
      OUTLINED_FUNCTION_49();
      return;
    }
  }

  OUTLINED_FUNCTION_49();

  MultiwayViewController.pauseVideoMessageRecording()();
}

void MultiwayViewController.showCameraAlert()()
{
  v1 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v2 = objc_opt_self();
  v3 = [v2 conversationKit];
  v20._object = 0xE000000000000000;
  v4._object = 0x80000001BC51CBD0;
  v4._countAndFlagsBits = 0xD000000000000020;
  v5.value._countAndFlagsBits = 0x61737265766E6F43;
  v5.value._object = 0xEF74694B6E6F6974;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v20);

  v18 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v7._countAndFlagsBits, v7._object, 0, 0xE000000000000000, 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v8 = [v2 conversationKit];
  v21._object = 0xE000000000000000;
  v9._object = 0x80000001BC51CC00;
  v9._countAndFlagsBits = 0xD000000000000020;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v21);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v18 addAction_];

  v13 = [v2 conversationKit];
  v22._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000024;
  v14._object = 0x80000001BC51CC30;
  v15.value._countAndFlagsBits = 0x61737265766E6F43;
  v15.value._object = 0xEF74694B6E6F6974;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v22);

  v17 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v18 addAction_];

  [v1 presentViewController:v18 animated:1 completion:0];
}

void closure #2 in MultiwayViewController.startRecordingVideoMessage()(char a1)
{
  LocalParticipantView.endCountdown()();
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

      ConversationController.startRecordingVideoMessage()();
    }
  }
}

void closure #1 in MultiwayViewController.showCameraAlert()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    MultiwayViewController.startRecordingVideoMessage()();
  }
}

uint64_t closure #1 in MultiwayViewController.showUnrecoverableAlertFromError(_:)()
{
  if (one-time initialization token for videoMessaging != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, &static Logger.videoMessaging);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10[0] = v4;
    *v3 = 136315138;
    v5 = String.init<A>(reflecting:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1BBC58000, v1, v2, "Dismissing due to error %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x1BFB23DF0](v4, -1, -1);
    MEMORY[0x1BFB23DF0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    MultiwayViewController.cancelVideoRecording(completion:)();
  }

  return result;
}

void closure #1 in closure #1 in MultiwayViewController.showUnrecoverableAlertFromError(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 unansweredCallUIDismissed];
      swift_unknownObjectRelease();
    }
  }
}

void MultiwayViewController.didConfirm(forInterventionViewController:)()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_239_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_159();
  v4 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  if (v0)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_170();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      OUTLINED_FUNCTION_257(v6, sel_dismissViewControllerAnimated_completion_);
    }
  }

  OUTLINED_FUNCTION_198_4();
  OUTLINED_FUNCTION_4_137();
  v8 = *(v7 + 528);
  v10 = v9;
  v8();

  v11 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_115(v11, v12, v4);
  if (v13)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_206();
    v15(v14);
    MultiwayViewController.showLocalVideoMessagePreview(usingURL:)();
    v16 = OUTLINED_FUNCTION_33_0();
    v17(v16);
  }

  OUTLINED_FUNCTION_49();
}

void MultiwayViewController.didReject(forInterventionViewController:)(uint64_t a1)
{
  if (a1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_235();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      OUTLINED_FUNCTION_257(v1, sel_dismissViewControllerAnimated_completion_);
    }
  }

  ConversationController.discardRecordedVideoMessage()();
}

void @objc MultiwayViewController.didConfirm(forInterventionViewController:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id @nonobjc AVCVideoFrame.init(pixelBuffer:time:imageData:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a5, a6);
  }

  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v14 = [v6 initWithPixelBuffer:a1 time:v16 imageData:isa];

  return v14;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t outlined bridged method (ob) of @objc IMAccount.displayName.getter(void *a1)
{
  v2 = [a1 displayName];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_15_14();
}

void specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v24[3] = v14(0);
  v24[4] = v5;
  v24[0] = v13;
  outlined init with copy of IDSLookupManager(v24, &v23);
  v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ParticipantsViewController_pMd);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  if (swift_dynamicCast())
  {
    v21 = v1;
    v15 = v22[0];
    OUTLINED_FUNCTION_25_54();
    v16 = swift_beginAccess();
    v17 = *v9;
    v22[0] = v15;
    MEMORY[0x1EEE9AC00](v16);
    v20[2] = v22;

    v18 = specialized Sequence.contains(where:)(v3, v20, v17);

    if (v18)
    {
    }

    else
    {
      OUTLINED_FUNCTION_30_2();
      v19 = v15;
      MEMORY[0x1BFB20CC0]();
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10));
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      LOWORD(v22[0]) = v7;
      v21(v11, v22);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_30_0();
}

uint64_t specialized closure #1 in MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(uint64_t a1, uint64_t a2, uint64_t *a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v23[3] = a5;
  v23[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  outlined init with copy of IDSLookupManager(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ParticipantsViewController_pMd);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  if (swift_dynamicCast())
  {
    v20 = a2;
    v13 = v21[0];
    v14 = swift_beginAccess();
    v15 = *a3;
    MEMORY[0x1EEE9AC00](v14);
    v19[2] = v21;

    v16 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v19, v15);

    if (v16)
    {
    }

    else
    {
      swift_beginAccess();
      v17 = v13;
      MEMORY[0x1BFB20CC0]();
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10));
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      LOWORD(v21[0]) = a4;
      (*(a6 + 72))(v20, v21, a5, a6);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void specialized NameAndPhotoUtilities.denyIncomingName(from:)(void *a1)
{
  if (one-time initialization token for nickname != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.nickname);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = [v3 handle];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 value];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v15);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, oslog, v4, "Denying incoming name from handle %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  else
  {
  }
}

void *specialized CaptioningStateManager.init(capabilities:call:)(void *a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - v8;
  v39 = type metadata accessor for Locale();
  v9 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LanguageManager();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  a3[10] = 0;
  swift_unknownObjectWeakInit();
  a3[11] = MEMORY[0x1E69E7CD0];
  v35 = a3 + 11;
  ObservationRegistrar.init()();
  a3[8] = a1;
  v41 = 0;
  v42 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMd);
  swift_allocObject();
  v17 = a1;
  v18 = CurrentValueSubject.init(_:)();
  v19 = v40;
  a3[2] = v18;
  a3[3] = v19;
  a3[4] = v16;
  [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  LanguageManager.init(featureFlags:)();
  static Locale.current.getter();
  v20 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v22 = v21;
  v24 = v23;
  (*(v9 + 8))(v11, v39);
  v25 = (*(v13 + 8))(v15, v12);
  a3[5] = v20;
  a3[6] = v22;
  a3[7] = v24;
  v26 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v17) + 0x70))(v25))
  {
    v40 = (*((*v26 & *v17) + 0x68))();
    v41 = v40;
    v27 = [objc_opt_self() mainRunLoop];
    v43 = v27;
    v28 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v29 = v34;
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    v30 = v36;
    Publisher.receive<A>(on:options:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
    v31 = v38;
    Publisher<>.sink(receiveValue:)();

    (*(v37 + 8))(v30, v31);
    swift_getKeyPath();
    v41 = a3;
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type CaptioningStateManager and conformance CaptioningStateManager, type metadata accessor for CaptioningStateManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = a3;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v41 = a3;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return a3;
}

uint64_t specialized ParticipantViewDragController.init(participantView:constraintIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  *(a4 + 48) = &protocol witness table for LocalParticipantView;
  swift_unknownObjectWeakAssign();
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  [*(a4 + 96) addTarget:a4 action:sel_handlePanGestureRecognizer_];
  [*(a4 + 96) setEnabled_];
  [a1 addGestureRecognizer_];

  return a4;
}

char *specialized MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(void *a1, char *a2, void *a3, uint64_t a4, void *a5, char *a6)
{
  v291 = a4;
  v292 = a5;
  v287 = a2;
  v288 = a3;
  v285 = a1;
  ObjectType = swift_getObjectType();
  v295 = type metadata accessor for Participant(0);
  v289 = *(v295 - 8);
  v290 = (v295 - 8);
  v293 = v289;
  MEMORY[0x1EEE9AC00](v295 - 8);
  v294 = &v280 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v281 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v282 = &v280 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v10 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v12 = &v280 - v11;
  v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_queryForSuggestedBannerStartTime;
  v14 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(&a6[v13], 1, 1, v14);
  *&a6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager] = 0;
  v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CEKCinematicSubjectIndicatorView);
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v16 = a6;
  v283 = v8;
  *&a6[v15] = Dictionary.init(dictionaryLiteral:)();
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isInCallEndedBlockAndReportFlow] = 0;
  v17 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags;
  *&v16[v17] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v18 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_spamAlertBuilder;
  type metadata accessor for SpamAlertBuilder();
  *&v16[v18] = swift_allocObject();
  v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyleBeforeReactionsVisible] = 2;
  v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_sidebarStateStream;
  type metadata accessor for SidebarStateStream();
  swift_allocObject();
  *&v16[v20] = SidebarStateStream.init(initial:)();
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didRequestMemojiPicker] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask] = 0;
  v21 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTip;
  v22 = type metadata accessor for VideoReactionPickerTip();
  __swift_storeEnumTagSinglePayload(&v16[v21], 1, 1, v22);
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsTips] = 1;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects] = 0;
  v23 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 8) = 0;
  v24 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_linkShareCoordinator];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__cachedDidExpandActiveVideoCallFromBanner] = 2;
  v25 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  _s15ConversationKit22MultiwayViewControllerC0D7ContentVSgWOi0_(v299);
  memcpy(&v16[v25], v299, 0xE8uLL);
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController] = 1;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didNotifyMutedCaller] = 0;
  v26 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedPresentationSize];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize];
  *v27 = 0;
  *(v27 + 1) = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsConnectionAnimation] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState] = 4;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation] = 1;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations] = 2;
  v28 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__isOnScreen;
  v298 = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(&v16[v28], v12, v284);
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___dimmingLayer] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner] = 0;
  v29 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentFullScreenFocusedAspectRatio];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen] = 2;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_unansweredCallDismissalHandler];
  *v34 = 0;
  *(v34 + 1) = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled] = 0;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_lastUpdatedMostActiveParticipantViewForPiP] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView] = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView] = 1;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews] = 0;
  v35 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v36 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen] = 0;
  v37 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
  *v37 = 4;
  *(v37 + 1) = 0;
  *(v37 + 2) = 0;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callUUIDsThatPresentedSNaPSecondaryPill] = v31;
  v38 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer;
  *&v16[v38] = [objc_allocWithZone(type metadata accessor for TonePlayer()) init];
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_subscriptions] = MEMORY[0x1E69E7CD0];
  v39 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets];
  v40 = *(MEMORY[0x1E69DDCE0] + 16);
  *v39 = *MEMORY[0x1E69DDCE0];
  *(v39 + 1) = v40;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView] = 0;
  v41 = v287;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController] = v287;
  v42 = objc_allocWithZone(CNKBannerPresentationManager);
  v43 = v41;
  v44 = [v42 init];
  v45 = OBJC_IVAR___CNKBannerPresentationManager_value;
  swift_beginAccess();
  v46 = *&v44[v45];
  v47 = v288;
  *&v44[v45] = v288;
  v288 = v47;

  swift_beginAccess();
  v48 = *&v16[v19];
  *&v16[v19] = v44;
  v287 = v44;

  v49 = &v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults];
  v50 = v292;
  *v49 = v291;
  *(v49 + 1) = &protocol witness table for Defaults;
  v284 = v16;
  *&v16[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_features] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
  v51 = (*(v293 + 80) + 32) & ~*(v293 + 80);
  v293 = v289[9];
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BC4BA940;
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_16();
  swift_beginAccess();
  v290 = v43;
  v297 = v52;

  v289 = v50;

  specialized Array.append<A>(contentsOf:)(v53);
  v54 = v297;
  v55 = *(v297 + 16);
  if (v55)
  {
    v297 = v31;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v56 = v297;
    v280 = v54;
    v57 = v54 + v51;
    v59 = v281;
    v58 = v282;
    v60 = (v281 + 16);
    v292 = (v281 + 32);
    v61 = v283;
    do
    {
      v62 = v294;
      _s15ConversationKit11ParticipantVWOcTm_16();
      (*v60)(v58, &v62[*(v295 + 20)], v61);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v297 = v56;
      v63 = *(v56 + 16);
      if (v63 >= *(v56 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v56 = v297;
      }

      *(v56 + 16) = v63 + 1;
      (*(v59 + 32))(v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v63, v58, v61);
      v57 += v293;
      --v55;
    }

    while (v55);
    v64 = v56;
  }

  else
  {

    v64 = MEMORY[0x1E69E7CC0];
  }

  v65 = ObjectType;
  swift_beginAccess();
  v66 = v284;
  if (static AmbientState.isPresented == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v67 = Features.isICUIRedesignEnabled.getter();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v68 = Features.isICUIRedesignEnabled.getter();
    if (v68)
    {
      v67 = *(v64 + 16) > 4uLL;
    }

    else
    {
      v67 = (*(*v291 + 528))(v68);
    }
  }

  v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle] = v67 & 1;
  v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState] = 0;
  v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTipState] = 0;
  v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isLocalReactionActive] = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {

    v70 = v285;
    goto LABEL_23;
  }

  v69 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  swift_beginAccess();
  LOBYTE(v69) = v66[v69];

  v70 = v285;
  if ((v69 & 1) == 0)
  {
LABEL_23:
    v71 = Features.isICUIRedesignEnabled.getter();
    if ((v71 & 1) != 0 || ((*(*v291 + 528))(v71) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v72 = [objc_opt_self() currentDevice];
  v73 = [v72 userInterfaceIdiom];

  if (!v73 && static AmbientState.isPresented == 1)
  {
    Features.isICUIRedesignEnabled.getter();
  }

LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerCy10Foundation4UUIDVGMd);
  swift_allocObject();
  specialized MostActiveParticipantsController.init(participantIdentifiers:configuration:)();
  *&v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController] = v74;
  *&v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl] = [objc_allocWithZone(type metadata accessor for PipZoomControl()) init];
  *&v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController] = [objc_allocWithZone(type metadata accessor for MutedTalkerBannerViewController()) init];
  *&v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation] = 1;
  v75 = one-time initialization token for shared;
  v76 = v70;
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = static ConversationCapabilities.shared;
  type metadata accessor for CaptioningStateManager();
  v78 = swift_allocObject();
  v79 = v77;
  v295 = v76;
  *&v66[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captioningStateManager] = specialized CaptioningStateManager.init(capabilities:call:)(v79, v76, v78);
  v296.receiver = v66;
  v296.super_class = v65;
  v80 = objc_msgSendSuper2(&v296, sel_initWithNibName_bundle_, 0, 0);
  v81 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
  swift_beginAccess();
  v82 = *&v80[v81];
  v83 = *((*MEMORY[0x1E69E7D40] & *v82) + 0x148);
  v84 = v80;
  v85 = v82;
  v83(v80);

  v86 = objc_allocWithZone(type metadata accessor for EffectsLayoutController());
  v87 = EffectsLayoutController.init(containingViewController:)(v84);
  v88 = *&v84[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController];
  *&v84[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController] = v87;

  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = v290;
  v91 = &v290[OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant];
  swift_beginAccess();
  v92 = *v91;
  *v91 = closure #2 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v91[1] = v89;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v92);

  v93 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant];
  swift_beginAccess();
  v95 = *v94;
  *v94 = closure #3 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v94[1] = v93;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v95);

  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v97 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant];
  swift_beginAccess();
  v98 = *v97;
  *v97 = closure #4 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v97[1] = v96;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v98);

  v99 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v100 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant];
  swift_beginAccess();
  v101 = *v100;
  *v100 = closure #5 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v100[1] = v99;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v101);

  v102 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v103 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant];
  swift_beginAccess();
  v104 = *v103;
  *v103 = closure #6 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v103[1] = v102;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v104);

  v105 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant];
  swift_beginAccess();
  v107 = *v106;
  *v106 = closure #7 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v106[1] = v105;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v107);

  v108 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v109 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange];
  swift_beginAccess();
  v110 = *v109;
  *v109 = closure #8 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v109[1] = v108;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v110);

  v111 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v112 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange];
  swift_beginAccess();
  v113 = *v112;
  *v112 = closure #9 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v112[1] = v111;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v113);

  v114 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v115 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant];
  swift_beginAccess();
  v116 = *v115;
  *v115 = closure #10 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v115[1] = v114;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v116);

  v117 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v118 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis];
  swift_beginAccess();
  v119 = *v118;
  *v118 = closure #11 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v118[1] = v117;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v119);

  v120 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v121 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition];
  swift_beginAccess();
  v122 = *v121;
  *v121 = closure #12 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v121[1] = v120;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v122);

  v123 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v124 = swift_allocObject();
  v125 = v291;
  v124[2] = v123;
  v124[3] = v125;
  v124[4] = &protocol witness table for Defaults;
  v126 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo];
  swift_beginAccess();
  v127 = *v126;
  *v126 = closure #13 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v126[1] = v124;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v127);

  v128 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v129 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing];
  swift_beginAccess();
  v130 = *v129;
  *v129 = closure #14 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v129[1] = v128;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v130);

  v131 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v132 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive];
  swift_beginAccess();
  v133 = *v132;
  *v132 = closure #15 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v132[1] = v131;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v133);

  v134 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v135 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode];
  swift_beginAccess();
  v136 = *v135;
  *v135 = closure #16 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v135[1] = v134;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v136);

  v137 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v138 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive];
  swift_beginAccess();
  v139 = *v138;
  *v138 = closure #17 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v138[1] = v137;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v139);

  v140 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v141 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange];
  swift_beginAccess();
  v142 = *v141;
  *v141 = closure #18 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v141[1] = v140;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v142);

  v143 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v144 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange];
  swift_beginAccess();
  v145 = *v144;
  *v144 = closure #19 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v144[1] = v143;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v145);

  v146 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v147 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange];
  swift_beginAccess();
  v148 = *v147;
  *v147 = closure #20 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v147[1] = v146;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v148);

  v149 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v150 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact];
  swift_beginAccess();
  v151 = *v150;
  *v150 = closure #21 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v150[1] = v149;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v151);

  v152 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v153 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting];
  swift_beginAccess();
  v154 = *v153;
  *v153 = closure #22 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v153[1] = v152;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v154);

  v155 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange];
  swift_beginAccess();
  v157 = *v156;
  *v156 = closure #23 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v156[1] = v155;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v157);

  v158 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v159 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange];
  swift_beginAccess();
  v160 = *v159;
  *v159 = closure #24 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v159[1] = v158;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v160);

  v161 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v162 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation];
  swift_beginAccess();
  v163 = *v162;
  *v162 = closure #25 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v162[1] = v161;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v163);

  v164 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v165 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange];
  swift_beginAccess();
  v166 = *v165;
  *v165 = closure #26 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v165[1] = v164;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v166);

  v167 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v168 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange];
  swift_beginAccess();
  v169 = *v168;
  *v168 = closure #27 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v168[1] = v167;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v169);

  v170 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v171 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange];
  swift_beginAccess();
  v172 = *v171;
  *v171 = closure #28 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v171[1] = v170;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v172);

  v173 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v174 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange];
  swift_beginAccess();
  v175 = *v174;
  *v174 = closure #29 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v174[1] = v173;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v175);

  v176 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v177 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange];
  swift_beginAccess();
  v178 = *v177;
  *v177 = closure #30 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v177[1] = v176;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v178);

  v179 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v180 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange];
  swift_beginAccess();
  v181 = *v180;
  *v180 = closure #31 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v180[1] = v179;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v181);

  v182 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v183 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange];
  swift_beginAccess();
  v184 = *v183;
  *v183 = closure #32 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v183[1] = v182;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v184);

  v185 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v186 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange];
  swift_beginAccess();
  v187 = *v186;
  *v186 = closure #33 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v186[1] = v185;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v187);

  v188 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v189 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange];
  swift_beginAccess();
  v190 = *v189;
  *v189 = closure #34 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v189[1] = v188;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v190);

  v191 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v192 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange];
  swift_beginAccess();
  v193 = *v192;
  *v192 = closure #35 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v192[1] = v191;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v193);

  v194 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v195 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize];
  swift_beginAccess();
  v196 = *v195;
  *v195 = closure #36 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v195[1] = v194;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v196);

  v197 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v198 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange];
  swift_beginAccess();
  v199 = *v198;
  *v198 = closure #37 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v198[1] = v197;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v199);

  v200 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v201 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange];
  swift_beginAccess();
  v202 = *v201;
  *v201 = closure #38 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v201[1] = v200;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v202);

  v203 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v204 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange];
  swift_beginAccess();
  v205 = *v204;
  *v204 = closure #39 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v204[1] = v203;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v205);

  v206 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v207 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls];
  swift_beginAccess();
  v208 = *v207;
  *v207 = closure #40 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v207[1] = v206;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v208);

  v209 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v210 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic];
  swift_beginAccess();
  v211 = *v210;
  *v210 = closure #41 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v210[1] = v209;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v211);

  v212 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v213 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants];
  swift_beginAccess();
  v214 = *v213;
  *v213 = closure #42 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v213[1] = v212;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v214);

  v215 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v216 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations];
  swift_beginAccess();
  v217 = *v216;
  *v216 = closure #43 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v216[1] = v215;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v217);

  v218 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v219 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange];
  swift_beginAccess();
  v220 = *v219;
  *v219 = closure #44 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v219[1] = v218;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v220);

  v221 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v222 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame];
  swift_beginAccess();
  v223 = *v222;
  *v222 = closure #45 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v222[1] = v221;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v223);

  v224 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v225 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange];
  swift_beginAccess();
  v226 = *v225;
  *v225 = closure #46 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v225[1] = v224;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v226);

  v227 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v228 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange];
  swift_beginAccess();
  v229 = *v228;
  *v228 = closure #47 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v228[1] = v227;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v229);

  v230 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v231 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants];
  swift_beginAccess();
  v232 = *v231;
  *v231 = closure #48 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v231[1] = v230;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v232);

  v233 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v234 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange];
  swift_beginAccess();
  v235 = *v234;
  *v234 = closure #49 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v234[1] = v233;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v235);

  v236 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v237 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment];
  swift_beginAccess();
  v238 = *v237;
  *v237 = closure #50 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v237[1] = v236;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v238);

  v239 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v240 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions];
  swift_beginAccess();
  v241 = *v240;
  *v240 = closure #51 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v240[1] = v239;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v241);

  v242 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v243 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange];
  swift_beginAccess();
  v244 = *v243;
  *v243 = closure #52 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v243[1] = v242;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v244);

  v245 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v246 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities];
  swift_beginAccess();
  v247 = *v246;
  *v246 = closure #53 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v246[1] = v245;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v247);

  v248 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v249 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured];
  swift_beginAccess();
  v250 = *v249;
  *v249 = closure #54 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  v249[1] = v248;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v250);

  v251 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController;
  v252 = *&v84[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController];
  v253 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_beginAccess();
  v254 = *(v252 + 16);
  *(v252 + 16) = closure #55 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
  *(v252 + 24) = v253;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v254);

  v256 = (*(*v125 + 384))(v255);
  if (v256)
  {
    v257 = *&v84[v251];
    v258 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    v259 = *(v257 + 32);
    *(v257 + 32) = closure #56 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply;
    *(v257 + 40) = v258;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v259);
  }

  v260 = (*(*v291 + 136))(v256);
  v261 = v295;
  if (v260)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    [v261 setUplinkMuted_];
  }

  MultiwayViewController.testing_callStatusDidChange(_:)([v261 status]);
  v262 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);

  v263 = static OS_dispatch_queue.main.getter();
  notifyRegisterDispatch(name:queue:handler:)(0xD000000000000027, 0x80000001BC4F78A0, v263, closure #57 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply, v262);

  v264 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v265 = static OS_dispatch_queue.main.getter();
  notifyRegisterDispatch(name:queue:handler:)(0xD000000000000028, 0x80000001BC4F78D0, v265, closure #58 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)partial apply, v264);

  type metadata accessor for DockKitAccessoryManager();
  swift_allocObject();
  v266 = DockKitAccessoryManager.init()();
  v267 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager;
  swift_beginAccess();
  *&v84[v267] = v266;

  if (Features.buttonRemoteControlEnabled.getter())
  {
    v269 = v287;
    v268 = v288;
    v270 = MEMORY[0x1E69E7D40];
    if (*&v84[v267])
    {

      DockKitAccessoryManager.start()();

      v271 = *&v84[v267];
      if (v271)
      {
        swift_beginAccess();
        *(v271 + 56) = &protocol witness table for MultiwayViewController;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  else
  {
    v269 = v287;
    v268 = v288;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v272 = type metadata accessor for Logger();
    __swift_project_value_buffer(v272, static Logger.conversationKit);
    v273 = Logger.logObject.getter();
    v274 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v273, v274))
    {
      v275 = swift_slowAlloc();
      *v275 = 0;
      _os_log_impl(&dword_1BBC58000, v273, v274, "DockKit system events control feature not enabled", v275, 2u);
      MEMORY[0x1BFB23DF0](v275, -1, -1);
    }

    v270 = MEMORY[0x1E69E7D40];
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v276 = *((*v270 & *static ScreenSharingInteractionController.shared) + 0x1C8);
  v277 = v84;
  v276();
  v278 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for localPreviewDidFinishRotationAnimation != -1)
  {
    swift_once();
  }

  [v278 addObserver:v277 selector:sel_handleCameraFlipAnimationDidFinish_ name:static Strings.Notifications.localPreviewDidFinishRotationAnimation object:0];

  return v277;
}

char *specialized MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(void *a1, char *a2, void *a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t (**a8)(void))
{
  v291 = a7;
  v292 = a8;
  v293 = a4;
  v294 = a5;
  v288 = a2;
  v289 = a3;
  v285 = a1;
  ObjectType = swift_getObjectType();
  v297 = type metadata accessor for Participant(0);
  v287 = *(v297 - 8);
  v290 = (v297 - 8);
  v295 = v287;
  MEMORY[0x1EEE9AC00](v297 - 8);
  v296 = &v280 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v281 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v282 = &v280 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v12 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v14 = &v280 - v13;
  v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_queryForSuggestedBannerStartTime;
  v16 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(&a6[v15], 1, 1, v16);
  *&a6[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager] = 0;
  v17 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CEKCinematicSubjectIndicatorView);
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v18 = a6;
  v283 = v10;
  *&a6[v17] = Dictionary.init(dictionaryLiteral:)();
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isInCallEndedBlockAndReportFlow] = 0;
  v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags;
  *&v18[v19] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_spamAlertBuilder;
  type metadata accessor for SpamAlertBuilder();
  *&v18[v20] = swift_allocObject();
  v21 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyleBeforeReactionsVisible] = 2;
  v22 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_sidebarStateStream;
  type metadata accessor for SidebarStateStream();
  swift_allocObject();
  *&v18[v22] = SidebarStateStream.init(initial:)();
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didRequestMemojiPicker] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask] = 0;
  v23 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTip;
  v24 = type metadata accessor for VideoReactionPickerTip();
  __swift_storeEnumTagSinglePayload(&v18[v23], 1, 1, v24);
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsTips] = 1;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects] = 0;
  v25 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  *(v25 + 8) = 0;
  v26 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_linkShareCoordinator];
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__cachedDidExpandActiveVideoCallFromBanner] = 2;
  v27 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  _s15ConversationKit22MultiwayViewControllerC0D7ContentVSgWOi0_(v301);
  memcpy(&v18[v27], v301, 0xE8uLL);
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___sensitiveContentController] = 1;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_shouldShowZoomControls] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didNotifyMutedCaller] = 0;
  v28 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedPresentationSize];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedGridViewSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsConnectionAnimation] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState] = 4;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_frontBoardInterfaceOrientation] = 1;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations] = 2;
  v30 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController__isOnScreen;
  v300 = 0;
  Published.init(initialValue:)();
  (*(v12 + 32))(&v18[v30], v14, v284);
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___dimmingLayer] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner] = 0;
  v31 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deskViewTapHandler];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentFullScreenFocusedAspectRatio];
  *v32 = 0;
  *(v32 + 1) = 0;
  v32[16] = 1;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen] = 2;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_unansweredCallDismissalHandler];
  *v36 = 0;
  *(v36 + 1) = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isPipStashed] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled] = 0;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsUpdatePresentationContexts] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_lastUpdatedMostActiveParticipantViewForPiP] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView] = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___insulatingView] = 1;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews] = 0;
  v37 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene];
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isScreenSharingFullScreen] = 0;
  v39 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
  *v39 = 4;
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callUUIDsThatPresentedSNaPSecondaryPill] = v33;
  v40 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer;
  *&v18[v40] = [objc_allocWithZone(type metadata accessor for TonePlayer()) init];
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_subscriptions] = MEMORY[0x1E69E7CD0];
  v41 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets];
  v42 = *(MEMORY[0x1E69DDCE0] + 16);
  *v41 = *MEMORY[0x1E69DDCE0];
  *(v41 + 1) = v42;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView] = 0;
  v43 = v288;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController] = v288;
  v44 = objc_allocWithZone(CNKBannerPresentationManager);
  v45 = v43;
  v46 = [v44 init];
  v47 = OBJC_IVAR___CNKBannerPresentationManager_value;
  swift_beginAccess();
  v48 = *&v46[v47];
  v49 = v289;
  *&v46[v47] = v289;
  v289 = v49;

  swift_beginAccess();
  v50 = *&v18[v21];
  *&v18[v21] = v46;
  v288 = v46;

  v51 = &v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults];
  v52 = v292;
  *v51 = v293;
  *(v51 + 1) = v52;
  v284 = v18;
  v53 = v294;
  *&v18[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_features] = v294;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
  v54 = (*(v295 + 80) + 32) & ~*(v295 + 80);
  v295 = v287[9];
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1BC4BA940;
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_16();
  swift_beginAccess();
  v290 = v45;
  v299 = v55;
  swift_unknownObjectRetain();
  v287 = v53;

  specialized Array.append<A>(contentsOf:)(v56);
  v57 = v299;
  v58 = *(v299 + 16);
  if (v58)
  {
    v299 = v33;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v59 = v299;
    v280 = v57;
    v60 = v57 + v54;
    v62 = v281;
    v61 = v282;
    v63 = (v281 + 16);
    v294 = (v281 + 32);
    v64 = v283;
    do
    {
      v65 = v296;
      _s15ConversationKit11ParticipantVWOcTm_16();
      (*v63)(v61, &v65[*(v297 + 20)], v64);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v299 = v59;
      v66 = *(v59 + 16);
      if (v66 >= *(v59 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v59 = v299;
      }

      *(v59 + 16) = v66 + 1;
      (*(v62 + 32))(v59 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v66, v61, v64);
      v60 += v295;
      --v58;
    }

    while (v58);
    v67 = v59;
  }

  else
  {

    v67 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v68 = v284;
  if (static AmbientState.isPresented == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v69 = Features.isICUIRedesignEnabled.getter();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v69 = *(v67 + 16) > 4uLL;
    }

    else
    {
      v69 = v292[31](v291);
    }
  }

  v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle] = v69 & 1;
  v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState] = 0;
  v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTipState] = 0;
  v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isLocalReactionActive] = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {

    v71 = ObjectType;
    goto LABEL_23;
  }

  v70 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  swift_beginAccess();
  LOBYTE(v70) = v68[v70];

  v71 = ObjectType;
  if ((v70 & 1) == 0)
  {
LABEL_23:
    if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 || (v292[31](v291) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v72 = [objc_opt_self() currentDevice];
  v73 = [v72 userInterfaceIdiom];

  if (!v73 && static AmbientState.isPresented == 1)
  {
    Features.isICUIRedesignEnabled.getter();
  }

LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerCy10Foundation4UUIDVGMd);
  swift_allocObject();
  specialized MostActiveParticipantsController.init(participantIdentifiers:configuration:)();
  *&v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController] = v74;
  *&v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl] = [objc_allocWithZone(type metadata accessor for PipZoomControl()) init];
  *&v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController] = [objc_allocWithZone(type metadata accessor for MutedTalkerBannerViewController()) init];
  *&v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation] = 1;
  v75 = one-time initialization token for shared;
  v76 = v285;
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = static ConversationCapabilities.shared;
  type metadata accessor for CaptioningStateManager();
  v78 = swift_allocObject();
  v79 = v77;
  v297 = v76;
  *&v68[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captioningStateManager] = specialized CaptioningStateManager.init(capabilities:call:)(v79, v76, v78);
  v298.receiver = v68;
  v298.super_class = v71;
  v80 = objc_msgSendSuper2(&v298, sel_initWithNibName_bundle_, 0, 0);
  v81 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
  swift_beginAccess();
  v82 = *&v80[v81];
  v83 = *((*MEMORY[0x1E69E7D40] & *v82) + 0x148);
  v84 = v80;
  v85 = v82;
  v83(v80);

  v86 = objc_allocWithZone(type metadata accessor for EffectsLayoutController());
  v87 = EffectsLayoutController.init(containingViewController:)(v84);
  v88 = *&v84[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController];
  *&v84[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsLayoutController] = v87;

  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = v290;
  v91 = &v290[OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant];
  swift_beginAccess();
  v92 = *v91;
  *v91 = partial apply for closure #2 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v91[1] = v89;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v92);

  v93 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant];
  swift_beginAccess();
  v95 = *v94;
  *v94 = partial apply for closure #3 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v94[1] = v93;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v95);

  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v97 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant];
  swift_beginAccess();
  v98 = *v97;
  *v97 = partial apply for closure #4 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v97[1] = v96;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v98);

  v99 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v100 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant];
  swift_beginAccess();
  v101 = *v100;
  *v100 = partial apply for closure #5 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v100[1] = v99;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v101);

  v102 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v103 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant];
  swift_beginAccess();
  v104 = *v103;
  *v103 = partial apply for closure #6 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v103[1] = v102;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v104);

  v105 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant];
  swift_beginAccess();
  v107 = *v106;
  *v106 = partial apply for closure #7 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v106[1] = v105;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v107);

  v108 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v109 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange];
  swift_beginAccess();
  v110 = *v109;
  *v109 = partial apply for closure #8 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v109[1] = v108;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v110);

  v111 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v112 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange];
  swift_beginAccess();
  v113 = *v112;
  *v112 = partial apply for closure #9 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v112[1] = v111;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v113);

  v114 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v115 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant];
  swift_beginAccess();
  v116 = *v115;
  *v115 = partial apply for closure #10 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v115[1] = v114;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v116);

  v117 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v118 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis];
  swift_beginAccess();
  v119 = *v118;
  *v118 = partial apply for closure #11 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v118[1] = v117;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v119);

  v120 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v121 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition];
  swift_beginAccess();
  v122 = *v121;
  *v121 = partial apply for closure #12 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v121[1] = v120;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v122);

  v123 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v124 = swift_allocObject();
  v125 = v292;
  v126 = v293;
  v124[2] = v123;
  v124[3] = v126;
  v124[4] = v125;
  v127 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo];
  swift_beginAccess();
  v128 = *v127;
  *v127 = partial apply for closure #13 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v127[1] = v124;
  swift_unknownObjectRetain();

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v128);

  v129 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v130 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing];
  swift_beginAccess();
  v131 = *v130;
  *v130 = partial apply for closure #14 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v130[1] = v129;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v131);

  v132 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v133 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive];
  swift_beginAccess();
  v134 = *v133;
  *v133 = partial apply for closure #15 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v133[1] = v132;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v134);

  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v136 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode];
  swift_beginAccess();
  v137 = *v136;
  *v136 = partial apply for closure #16 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v136[1] = v135;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v137);

  v138 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v139 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive];
  swift_beginAccess();
  v140 = *v139;
  *v139 = partial apply for closure #17 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v139[1] = v138;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v140);

  v141 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v142 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange];
  swift_beginAccess();
  v143 = *v142;
  *v142 = partial apply for closure #18 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v142[1] = v141;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v143);

  v144 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v145 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange];
  swift_beginAccess();
  v146 = *v145;
  *v145 = partial apply for closure #19 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v145[1] = v144;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v146);

  v147 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v148 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange];
  swift_beginAccess();
  v149 = *v148;
  *v148 = partial apply for closure #20 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v148[1] = v147;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v149);

  v150 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v151 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact];
  swift_beginAccess();
  v152 = *v151;
  *v151 = partial apply for closure #21 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v151[1] = v150;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v152);

  v153 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v154 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting];
  swift_beginAccess();
  v155 = *v154;
  *v154 = partial apply for closure #22 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v154[1] = v153;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v155);

  v156 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v157 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange];
  swift_beginAccess();
  v158 = *v157;
  *v157 = partial apply for closure #23 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v157[1] = v156;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v158);

  v159 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v160 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange];
  swift_beginAccess();
  v161 = *v160;
  *v160 = partial apply for closure #24 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v160[1] = v159;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v161);

  v162 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v163 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation];
  swift_beginAccess();
  v164 = *v163;
  *v163 = partial apply for closure #25 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v163[1] = v162;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v164);

  v165 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v166 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange];
  swift_beginAccess();
  v167 = *v166;
  *v166 = partial apply for closure #26 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v166[1] = v165;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v167);

  v168 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v169 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange];
  swift_beginAccess();
  v170 = *v169;
  *v169 = partial apply for closure #27 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v169[1] = v168;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v170);

  v171 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v172 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange];
  swift_beginAccess();
  v173 = *v172;
  *v172 = partial apply for closure #28 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v172[1] = v171;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v173);

  v174 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v175 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange];
  swift_beginAccess();
  v176 = *v175;
  *v175 = partial apply for closure #29 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v175[1] = v174;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v176);

  v177 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v178 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange];
  swift_beginAccess();
  v179 = *v178;
  *v178 = partial apply for closure #30 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v178[1] = v177;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v179);

  v180 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v181 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange];
  swift_beginAccess();
  v182 = *v181;
  *v181 = partial apply for closure #31 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v181[1] = v180;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v182);

  v183 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v184 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange];
  swift_beginAccess();
  v185 = *v184;
  *v184 = partial apply for closure #32 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v184[1] = v183;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v185);

  v186 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v187 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange];
  swift_beginAccess();
  v188 = *v187;
  *v187 = partial apply for closure #33 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v187[1] = v186;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v188);

  v189 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v190 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange];
  swift_beginAccess();
  v191 = *v190;
  *v190 = partial apply for closure #34 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v190[1] = v189;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v191);

  v192 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v193 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange];
  swift_beginAccess();
  v194 = *v193;
  *v193 = partial apply for closure #35 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v193[1] = v192;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v194);

  v195 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v196 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize];
  swift_beginAccess();
  v197 = *v196;
  *v196 = partial apply for closure #36 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v196[1] = v195;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v197);

  v198 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v199 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange];
  swift_beginAccess();
  v200 = *v199;
  *v199 = partial apply for closure #37 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v199[1] = v198;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v200);

  v201 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v202 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange];
  swift_beginAccess();
  v203 = *v202;
  *v202 = partial apply for closure #38 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v202[1] = v201;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v203);

  v204 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v205 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange];
  swift_beginAccess();
  v206 = *v205;
  *v205 = partial apply for closure #39 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v205[1] = v204;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v206);

  v207 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v208 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls];
  swift_beginAccess();
  v209 = *v208;
  *v208 = partial apply for closure #40 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v208[1] = v207;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v209);

  v210 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v211 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic];
  swift_beginAccess();
  v212 = *v211;
  *v211 = partial apply for closure #41 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v211[1] = v210;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v212);

  v213 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v214 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants];
  swift_beginAccess();
  v215 = *v214;
  *v214 = partial apply for closure #42 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v214[1] = v213;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v215);

  v216 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v217 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations];
  swift_beginAccess();
  v218 = *v217;
  *v217 = partial apply for closure #43 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v217[1] = v216;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v218);

  v219 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v220 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange];
  swift_beginAccess();
  v221 = *v220;
  *v220 = partial apply for closure #44 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v220[1] = v219;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v221);

  v222 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v223 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame];
  swift_beginAccess();
  v224 = *v223;
  *v223 = partial apply for closure #45 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v223[1] = v222;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v224);

  v225 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v226 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange];
  swift_beginAccess();
  v227 = *v226;
  *v226 = partial apply for closure #46 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v226[1] = v225;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v227);

  v228 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v229 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange];
  swift_beginAccess();
  v230 = *v229;
  *v229 = partial apply for closure #47 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v229[1] = v228;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v230);

  v231 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v232 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants];
  swift_beginAccess();
  v233 = *v232;
  *v232 = partial apply for closure #48 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v232[1] = v231;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v233);

  v234 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v235 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange];
  swift_beginAccess();
  v236 = *v235;
  *v235 = partial apply for closure #49 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v235[1] = v234;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v236);

  v237 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v238 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment];
  swift_beginAccess();
  v239 = *v238;
  *v238 = partial apply for closure #50 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v238[1] = v237;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v239);

  v240 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v241 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions];
  swift_beginAccess();
  v242 = *v241;
  *v241 = partial apply for closure #51 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v241[1] = v240;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v242);

  v243 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v244 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange];
  swift_beginAccess();
  v245 = *v244;
  *v244 = partial apply for closure #52 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v244[1] = v243;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v245);

  v246 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v247 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities];
  swift_beginAccess();
  v248 = *v247;
  *v247 = partial apply for closure #53 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v247[1] = v246;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v248);

  v249 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v250 = &v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured];
  swift_beginAccess();
  v251 = *v250;
  *v250 = partial apply for closure #54 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  v250[1] = v249;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v251);

  v252 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController;
  v253 = *&v84[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController];
  v254 = swift_allocObject();
  swift_unknownObjectWeakInit();

  swift_beginAccess();
  v255 = *(v253 + 16);
  *(v253 + 16) = partial apply for closure #55 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
  *(v253 + 24) = v254;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v255);

  if (v292[16](v291))
  {
    v256 = *&v84[v252];
    v257 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    v258 = *(v256 + 32);
    *(v256 + 32) = partial apply for closure #56 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:);
    *(v256 + 40) = v257;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v258);
  }

  v259 = v292[6](v291);
  v260 = v287;
  v261 = v297;
  if (v259)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    [v261 setUplinkMuted_];
  }

  MultiwayViewController.testing_callStatusDidChange(_:)([v261 status]);
  v262 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);

  v263 = static OS_dispatch_queue.main.getter();
  notifyRegisterDispatch(name:queue:handler:)(0xD000000000000027, 0x80000001BC4F78A0, v263, partial apply for closure #57 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:), v262);

  v264 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v265 = static OS_dispatch_queue.main.getter();
  notifyRegisterDispatch(name:queue:handler:)(0xD000000000000028, 0x80000001BC4F78D0, v265, partial apply for closure #58 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:), v264);

  type metadata accessor for DockKitAccessoryManager();
  swift_allocObject();
  v266 = DockKitAccessoryManager.init()();
  v267 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager;
  swift_beginAccess();
  *&v84[v267] = v266;

  if (Features.buttonRemoteControlEnabled.getter())
  {
    v269 = v288;
    v268 = v289;
    v270 = MEMORY[0x1E69E7D40];
    if (*&v84[v267])
    {

      DockKitAccessoryManager.start()();

      v271 = *&v84[v267];
      if (v271)
      {
        swift_beginAccess();
        *(v271 + 56) = &protocol witness table for MultiwayViewController;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  else
  {
    v269 = v288;
    v268 = v289;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v272 = type metadata accessor for Logger();
    __swift_project_value_buffer(v272, static Logger.conversationKit);
    v273 = Logger.logObject.getter();
    v274 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v273, v274))
    {
      v275 = swift_slowAlloc();
      *v275 = 0;
      _os_log_impl(&dword_1BBC58000, v273, v274, "DockKit system events control feature not enabled", v275, 2u);
      MEMORY[0x1BFB23DF0](v275, -1, -1);
    }

    v270 = MEMORY[0x1E69E7D40];
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v276 = *((*v270 & *static ScreenSharingInteractionController.shared) + 0x1C8);
  v277 = v84;
  v276();
  v278 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for localPreviewDidFinishRotationAnimation != -1)
  {
    swift_once();
  }

  [v278 addObserver:v277 selector:sel_handleCameraFlipAnimationDidFinish_ name:static Strings.Notifications.localPreviewDidFinishRotationAnimation object:0];

  swift_unknownObjectRelease();
  return v277;
}

char *specialized EffectsBrowserContainerViewController.init(delegate:)(void *a1, _BYTE *a2)
{
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserViewController] = 0;
  a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsEnabled] = 0;
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_effectsBrowserHeight] = 0x404D000000000000;
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_constraintsToUpdate] = MEMORY[0x1E69E7CC0];
  *&a2[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = a2;
  v7.super_class = type metadata accessor for EffectsBrowserContainerViewController();
  v4 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  *&v4[OBJC_IVAR____TtC15ConversationKit37EffectsBrowserContainerViewController_delegate + 8] = &protocol witness table for MultiwayViewController;
  swift_unknownObjectWeakAssign();
  v5 = v4;
  EffectsBrowserContainerViewController.setupViews()();

  return v5;
}

char *specialized CallDetailsCoordinator.init(hostViewController:controlsManager:deferredPresentationManager:)(void *a1, void *a2, void *a3, _BYTE *a4)
{
  swift_getObjectType();
  a4[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_shouldHideViewsFromScreenSharing] = 0;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  *&a4[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController] = static CallDetailsCoordinator.makeDetailsNavigationController(using:)(a2);
  v14.receiver = a4;
  v14.super_class = type metadata accessor for CallDetailsCoordinator();
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = *&v8[OBJC_IVAR___CNKCallDetailsCoordinatorInternal_detailsNavigationController];
  v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x78);
  v11 = v8;
  v12 = v9;
  v10(v8);

  return v11;
}

id specialized CallControlsViewController.init(captionsStateController:controlsManager:rosterViewProvider:service:sidebarStateStream:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  ObjectType = swift_getObjectType();
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_menuState] = 1;
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterCount] = 0;
  v12 = &a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_captionsStateController];
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_captionsStateController + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v13 = &a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterViewProvider];
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_rosterViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_cancellables] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dymanicStateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *&a6[v14] = PassthroughSubject.init()();
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_dynamicStateCancellable] = 0;
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusViewModel] = 0;
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___statusView] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_shouldUnconditionallyHideMenuView] = 0;
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController____lazy_storage___menuViewController] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingCallAgain] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_showingRingingCall] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isCallDisconnectingOrDisconnected] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isOnScreen] = 0;
  a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_isIncomingCallBannerExpanded] = 0;
  *(v12 + 1) = &protocol witness table for MultiwayViewController;
  swift_unknownObjectWeakAssign();
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_controlsManager] = a2;
  *(v13 + 1) = &protocol witness table for ParticipantListViewController;
  swift_unknownObjectWeakAssign();
  v15 = a2;

  outlined init with copy of IDSLookupManager(a4, &a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_service]);
  *&a6[OBJC_IVAR____TtC15ConversationKit26CallControlsViewController_sidebarStateStream] = a5;
  v19.receiver = a6;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

unint64_t lazy protocol witness table accessor for type URL? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type URL? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type URL? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd);
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL? and conformance <A> A?);
  }

  return result;
}

void partial apply for closure #1 in MultiwayViewController.showKickParticipantAlert(toKick:)()
{
  v0 = OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for Participant(v0);
  OUTLINED_FUNCTION_22(v1);

  closure #1 in MultiwayViewController.showKickParticipantAlert(toKick:)();
}

unint64_t lazy protocol witness table accessor for type VideoMessagingError and conformance VideoMessagingError()
{
  result = lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError;
  if (!lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError;
  if (!lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoMessagingError and conformance VideoMessagingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultiwayViewController.LayoutStyle and conformance MultiwayViewController.LayoutStyle()
{
  result = lazy protocol witness table cache variable for type MultiwayViewController.LayoutStyle and conformance MultiwayViewController.LayoutStyle;
  if (!lazy protocol witness table cache variable for type MultiwayViewController.LayoutStyle and conformance MultiwayViewController.LayoutStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiwayViewController.LayoutStyle and conformance MultiwayViewController.LayoutStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultiwayViewController.LayoutIdiom and conformance MultiwayViewController.LayoutIdiom()
{
  result = lazy protocol witness table cache variable for type MultiwayViewController.LayoutIdiom and conformance MultiwayViewController.LayoutIdiom;
  if (!lazy protocol witness table cache variable for type MultiwayViewController.LayoutIdiom and conformance MultiwayViewController.LayoutIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiwayViewController.LayoutIdiom and conformance MultiwayViewController.LayoutIdiom);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoMessagingError(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for MultiwayViewController()
{
  result = type metadata singleton initialization cache for MultiwayViewController;
  if (!type metadata singleton initialization cache for MultiwayViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MultiwayViewController()
{
  _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for VideoReactionPickerTip?, MEMORY[0x1E69D8938]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Bool>();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MultiwayViewController.LayoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MultiwayViewController.ViewContent(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
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

uint64_t storeEnumTagSinglePayload for MultiwayViewController.ViewContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MultiwayViewController.ConversationSnapshot(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for MultiwayViewController.ConversationSnapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultiwayViewController.VideoVisibility(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiwayViewController.VideoVisibility(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #4 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #3 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in AsyncCancellableTimer.wait(with:);
  v6 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #2 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(v6, v7, v8, v2, v1);
}

uint64_t objectdestroy_276Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v4 = OUTLINED_FUNCTION_16_2();

  return closure #1 in closure #1 in MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)(v4, v5, v6, v0);
}

uint64_t objectdestroy_40Tm()
{

  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t objectdestroy_106Tm()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver()()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_196_5();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver()(v5, v6, v7, v8, v0);
}

uint64_t objectdestroy_430Tm()
{
  v1 = type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver()()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_9_0(v1);
  OUTLINED_FUNCTION_196_5();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver()(v5, v6, v7, v8, v0);
}

void partial apply for specialized closure #1 in MomentsBackedViewControllerProtocol.remoteDidTakePhoto()()
{
  specialized closure #1 in MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(v0, MultiwayViewController.nameForPhotoIndicator.getter, MultiwayViewController.insulatingView.getter);
}

{
  specialized closure #1 in MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(v0, MostActiveParticipantViewController.nameForPhotoIndicator.getter, MostActiveParticipantViewController.insulatingView.getter);
}

uint64_t objectdestroy_75Tm_0()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for Participant(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_108_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 5u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v4 + 8))(v0 + v2);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v17 + 8))(v0 + v2);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v19 = v3 + *(v18 + 48);

      if (*(v19 + 120) >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v19 + 96);
      }

      if (*(v19 + 312))
      {
        swift_unknownObjectRelease();
      }

      if (*(v3 + *(v18 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v5 = v1[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v3 + v5);
  v7 = (v3 + v1[7]);
  if (*v7)
  {
  }

  v8 = v3 + v1[14];
  v9 = type metadata accessor for Date();
  v10 = OUTLINED_FUNCTION_60_16();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
  {
    v12 = OUTLINED_FUNCTION_40_2();
    v13(v12);
  }

  v14 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v8 + v14, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v8 + v14, v9);
  }

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}