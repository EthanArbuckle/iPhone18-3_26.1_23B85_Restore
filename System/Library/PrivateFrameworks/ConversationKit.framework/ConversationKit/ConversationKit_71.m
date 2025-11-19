id MultiwayViewController.updateAdditionalSafeAreaInsets()()
{
  Layout.MultiwayFaceTime.init()(v15);
  v1 = SBUIIsSystemApertureEnabled();
  v2 = v16;
  v3 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets];
  swift_beginAccess();
  v4 = *v3;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  [result safeAreaInsets];
  v8 = v7;

  [v0 additionalSafeAreaInsets];
  v10 = v9;
  Layout.MultiwayFaceTime.init()(v17);
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = result;
  if (v1)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v2;
  }

  v13 = v12 + v4 - (v8 - v10);
  [result safeAreaInsets];

  [v0 additionalSafeAreaInsets];
  [v0 additionalSafeAreaInsets];
  if (v13 < 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v13;
  }

  return [v0 setAdditionalSafeAreaInsets_];
}

BOOL closure #1 in MultiwayViewController.viewDidLoad()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MultiwayViewController.participantIsShownInGrid(_:)();
  }

  else
  {
    return 0;
  }

  return v2;
}

BOOL MultiwayViewController.participantIsShownInGrid(_:)()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v10, v1, sizeof(v10));
  if (getEnumTag for TapInteraction.EventType(v10) == 1)
  {
    return 0;
  }

  else
  {
    v3 = v1[1];
    ParticipantGridViewController.participantIdentifiers.getter();
    v5 = v4;
    v6 = type metadata accessor for Participant(0);
    MEMORY[0x1EEE9AC00](v6);
    v9[2] = v7;
    v2 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, v5);
  }

  return v2;
}

void MultiwayViewController.captionsLayoutState.getter(char *a1@<X8>)
{
  v2 = MultiwayViewController.constraintController.getter();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v5 = v3[v4];
  }

  else
  {
    v5 = 3;
  }

  *a1 = v5;
}

BOOL MultiwayViewController.shouldShowActionTypePhotoCapture.getter()
{
  v0 = MultiwayViewController.call.getter();
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8C68]) initWithCall_];

  v2 = ConversationController.momentsController.getter();
  v3 = [v2 capabilitiesForProvider_];

  LODWORD(v2) = [v3 availability];
  return v2 != 2;
}

void closure #2 in MultiwayViewController.viewDidLoad()(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    MultiwayViewController.react(_:)(a1);
  }
}

void MultiwayViewController.react(_:)(char a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA940;
  v3 = String.init<A>(reflecting:)();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  os_log(_:dso:log:type:_:)();

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 videoDeviceController];

  v8 = [v7 currentInputDevice];
  if (v8)
  {
    v9 = VideoReaction.rawValue.getter(a1);
    v10 = TUPreferredFaceTimeBundleIdentifier();
    if (!v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = MEMORY[0x1BFB209B0](v11);
    }

    AVControlCenterVideoEffectsModulePerformReactionEffect();
  }
}

char *MultiwayViewController.setUpConversationControlsManagerIfNeeded()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = MultiwayViewController.conversationControlsManager.getter();
  if (!v2)
  {
LABEL_11:
    v19 = objc_opt_self();
    v20 = [v19 sharedInstance];
    v21 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v22 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    v24 = *(v22 + 56);
    swift_unknownObjectRetain();
    v25 = v24(ObjectType, v22);
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = MEMORY[0x1BFB209B0](v25, v27);

    v29 = [v20 callWithCallUUID_];

    if (v29)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.conversationKit);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1BBC58000, v31, v32, "MultiwayViewController viewDidLoad. Not able to find matching ConversationControlsManager.", v33, 2u);
        MEMORY[0x1BFB23DF0](v33, -1, -1);
      }

LABEL_23:

      v39 = [v19 sharedInstance];
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v40 = static PlaceholderCallCenter.shared;
      v41 = objc_allocWithZone(type metadata accessor for CallCenter());
      CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v39, v40, 0, 0);
      return _s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tg5Tf4enn_nSo6TUCallC_Tt1g5();
    }

    v34 = [v19 sharedInstance];
    v35 = [v34 frontmostAudioOrVideoCall];

    if (v35)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.conversationKit);
      v31 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1BBC58000, v31, v37, "MultiwayViewController viewDidLoad. Fallback to use active call for ConversationControlsManager.", v38, 2u);
        MEMORY[0x1BFB23DF0](v38, -1, -1);
      }

      goto LABEL_23;
    }

    return 0;
  }

  v3 = v2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2A0))();
  v5 = v4;
  v6 = swift_getObjectType();
  v7 = (*(v5 + 56))(v6, v5);
  v9 = v8;
  swift_unknownObjectRelease();
  v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v11 = *(v10 + 8);
  v12 = swift_getObjectType();
  v13 = *(v11 + 56);
  swift_unknownObjectRetain();
  v14 = v13(v12, v11);
  v16 = v15;
  swift_unknownObjectRelease();
  if (v7 == v14 && v9 == v16)
  {

    return v3;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {

    goto LABEL_11;
  }

  return v3;
}

void closure #5 in MultiwayViewController.viewDidLoad()(uint64_t a1)
{
  OUTLINED_FUNCTION_278(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = OUTLINED_FUNCTION_28_0();
    MultiwayViewController.presentAddParticipantSheet()(v2);
  }
}

void closure #32 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_278(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

Swift::Void __swiftcall MultiwayViewController.handleUserDidToggleCaptions()()
{
  OUTLINED_FUNCTION_277_1();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    v7 = MultiwayViewController.captionsViewController.getter();
    if (v7)
    {
      v8 = v7;
      v9 = direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked;
      OUTLINED_FUNCTION_3_5();
      v8[v9] = 0;
    }

    v10 = MultiwayViewController.isCaptioningEnabled.getter();

    CaptioningStateManager.setCaptioningEnabled(_:)((v10 & 1) == 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.presentAddParticipantSheet()(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for SpringBoardUtilities();
  OUTLINED_FUNCTION_20();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v1);
  swift_unknownObjectWeakInit();
  v2 = OUTLINED_FUNCTION_44_0();

  return a1(v2);
}

uint64_t MultiwayViewController.setupMoreMenu(_:)(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  result = Features.isMoreMenuEnabled.getter();
  if (result)
  {
    if (static Platform.current.getter() == 3 && a1)
    {
      v3 = MultiwayViewController.call.getter();
      LOBYTE(v38[0]) = 0;
      v4 = objc_opt_self();
      v5 = a1;
      v6 = [v4 sharedInstance];
      v7 = type metadata accessor for ShareActivitiesMoreMenuViewModel();
      swift_allocObject();
      v8 = ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:)(v3, v5, v38, v6);
      v9 = lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type ShareActivitiesMoreMenuViewModel and conformance ShareActivitiesMoreMenuViewModel, type metadata accessor for ShareActivitiesMoreMenuViewModel);
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v9 = 0;
      v38[1] = 0;
      v38[2] = 0;
    }

    v38[0] = v8;
    v38[3] = v7;
    v38[4] = v9;
    if (static Platform.current.getter() > 1u)
    {
      v14 = 0;
    }

    else
    {
      MultiwayViewController.call.getter();
      v10 = [objc_opt_self() sharedInstance];
      v11 = type metadata accessor for AudioRouteService();
      type metadata accessor for CallCenterFacade();
      static CallCenterFacade.shared.getter();
      v12 = AudioRouteService.__allocating_init(callCenter:)();
      *(&v36 + 1) = v11;
      v37 = MEMORY[0x1E6995E68];
      *&v35 = v12;
      v13 = objc_allocWithZone(type metadata accessor for RoutesMoreMenuViewModel());
      v14 = RoutesMoreMenuViewModel.init(call:callCenter:audioRouteService:)();
    }

    type metadata accessor for FTMenuItemRegistry();
    v15 = static FTMenuItemRegistry.shared.getter();
    v16 = MultiwayViewController.call.getter();
    v17 = [v16 uniqueProxyIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    if (v14)
    {
      v18 = type metadata accessor for RoutesMoreMenuViewModel();
      v19 = lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type RoutesMoreMenuViewModel and conformance RoutesMoreMenuViewModel, MEMORY[0x1E6995BA0]);
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v30[1] = 0;
      v30[2] = 0;
    }

    v30[0] = v14;
    v30[3] = v18;
    v30[4] = v19;

    v20 = v14;
    CaptioningStateManager.createMoreMenuItemProvider()(v29);

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v21 = VideoCallTranslationController.createMoreMenuItemProvider()();
    v22 = v21;
    if (v21)
    {
      v23 = type metadata accessor for CallTranslationMoreMenuViewModel();
      v21 = lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type CallTranslationMoreMenuViewModel and conformance CallTranslationMoreMenuViewModel, MEMORY[0x1E6995C68]);
    }

    else
    {
      v23 = 0;
      v28[1] = 0;
      v28[2] = 0;
    }

    v27 = 0;
    v28[0] = v22;
    v28[3] = v23;
    v28[4] = v21;
    memset(v26, 0, sizeof(v26));
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v35, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
  }

  return result;
}

void closure #6 in MultiwayViewController.viewDidLoad()(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    MultiwayViewController.updateShutterButtonDodging(_:)(a1 & 1);
  }
}

void MultiwayViewController.updateShutterButtonDodging(_:)(char a1)
{
  v2 = v1;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (!v5)
  {
    v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(__dst, &v2[v6], sizeof(__dst));
    memcpy(v26, &v2[v6], sizeof(v26));
    if (getEnumTag for TapInteraction.EventType(v26) != 1)
    {
      memcpy(v24, __dst, sizeof(v24));
      outlined init with copy of MultiwayViewController.ViewContent(v24, v23);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 67109120;
        *(v10 + 4) = a1 & 1;
        _os_log_impl(&dword_1BBC58000, v8, v9, "updateShutterButtonDodging with shouldDodge=%{BOOL}d", v10, 8u);
        MEMORY[0x1BFB23DF0](v10, -1, -1);
      }

      v11 = v26[6];
      v12 = *(v26[6] + OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout + 24);
      v13 = *(v26[6] + OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout + 32);
      __swift_project_boxed_opaque_existential_1((v26[6] + OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout), v12);
      (*(v13 + 88))(a1 & 1, v12, v13);
      v14 = OBJC_IVAR___CNKFaceTimeConstraintsController_shutterButtonState;
      swift_beginAccess();
      v15 = *(v11 + v14);
      swift_beginAccess();
      if (MultiwayViewConstraintsController.LocalParticipantState.collides(with:)(v15))
      {
        MultiwayViewConstraintsController.shutterButtonState.setter(v15 ^ 1u);
      }

      if ((a1 & 1) == 0)
      {
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1BBC58000, v16, v17, "Manually setting shutterButtonState to .trailing since findo is not expanded", v18, 2u);
          MEMORY[0x1BFB23DF0](v18, -1, -1);
        }

        MultiwayViewConstraintsController.shutterButtonState.setter(1);
      }

      v19 = [v2 view];
      if (v19)
      {
        v20 = v19;
        [v19 setNeedsLayout];

        v21 = [v2 view];
        if (v21)
        {
          v22 = v21;
          [v21 layoutIfNeeded];

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t MultiwayViewController.wantsStandardControls.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v1 = [Strong wantsStandardControls];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t MultiwayViewController.localVideoProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(v1 + v2, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 32))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

BOOL MultiwayViewController.participantGridState.getter()
{
  result = 1;
  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    if (static Platform.current.getter() == 3)
    {
      return 0;
    }

    v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(__dst, v1, sizeof(__dst));
    if (getEnumTag for TapInteraction.EventType(__dst) == 1)
    {
      return 0;
    }

    v2 = v1[6];
    v3 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
    swift_beginAccess();
    if (*(v2 + v3) != 2)
    {
      return 0;
    }
  }

  return result;
}

void MultiwayViewController.updateVideoMessagingAvailableForCurrentState()()
{
  v1 = MultiwayViewController.shouldEnableVideoMessagingForCurrentState()();
  v2 = *(*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1A8);
  v4 = v2;
  v3(v1 & 1);
}

id MultiwayViewController.dimmingLayer.getter(uint64_t *a1, uint64_t (*a2)(void))
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

uint64_t MultiwayViewController.localParticipantState(for:)(uint64_t a1)
{
  v140 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v144 = &v140 - v5;
  v143 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v145 = MultiwayViewController.localParticipantCornerToUse.getter();
  v147 = v1;
  v148 = a1;
  v8 = *(a1 + 16);
  v146 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v9 = v146 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v10 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 208);
  swift_unknownObjectRetain();
  LODWORD(v10) = v12(ObjectType, v10);
  swift_unknownObjectRelease();
  if (v10 == 5 || (v13 = *(v9 + 8), v14 = swift_getObjectType(), v15 = *(v13 + 208), swift_unknownObjectRetain(), LODWORD(v13) = v15(v14, v13), swift_unknownObjectRelease(), v13 == 6))
  {
    v16 = *(v9 + 8);
    v17 = swift_getObjectType();
    v18 = *(v16 + 568);
    swift_unknownObjectRetain();
    v19 = v18(v17, v16);
    swift_unknownObjectRelease();
    v20 = v148;
    if (v8 & 1) != 0 || (*(v148 + 34) & 1) != 0 || ((v19 ^ 1))
    {
LABEL_9:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, logger);
      outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v155);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      outlined destroy of MultiwayViewController.ConversationSnapshot(v20);
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_14;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v153[0] = v25;
      *v24 = 136315138;
      v26 = *(v20 + 16);
      v155[0] = *v20;
      v155[1] = v26;
      LODWORD(v155[2]) = *(v20 + 32);
      outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v154);
      v27 = String.init<A>(reflecting:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v153);

      *(v24 + 4) = v29;
      v30 = "localParticipantState for %s is .fullScreen for disconnecting or disconnected not answered calls, ringing or hold music";
LABEL_13:
      _os_log_impl(&dword_1BBC58000, v22, v23, v30, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
      MEMORY[0x1BFB23DF0](v24, -1, -1);
LABEL_14:

      return 129;
    }
  }

  else
  {
    v20 = v148;
    if (v8 & 1) != 0 || (*(v148 + 34))
    {
      goto LABEL_9;
    }
  }

  v33 = v147;
  v34 = (v147 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v153, v34, sizeof(v153));
  memcpy(v154, v34, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v154) != 1)
  {
    v35 = v154[6];
    v36 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    if (*(v35 + v36) == 128)
    {
      swift_beginAccess();
      _s15ConversationKit11ParticipantVWOcTm_16();
      memcpy(v155, v153, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v155, v152);
      v37 = Participant.isActiveWithVideo.getter();
      _s15ConversationKit11ParticipantVWOhTm_17();
      if (v37)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, logger);
        outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v152);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        outlined destroy of MultiwayViewController.ConversationSnapshot(v20);
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v151[0] = v42;
          *v41 = 136315138;
          v43 = *(v20 + 16);
          v152[0] = *v20;
          v152[1] = v43;
          LODWORD(v152[2]) = *(v20 + 32);
          outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v150);
          v44 = String.init<A>(reflecting:)();
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v151);

          *(v41 + 4) = v46;
          _os_log_impl(&dword_1BBC58000, v39, v40, "localParticipantState for %s is .expanded", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x1BFB23DF0](v42, -1, -1);
          MEMORY[0x1BFB23DF0](v41, -1, -1);
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v153, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        return 128;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v153, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  v47 = *v20;
  if (*v20)
  {
    v48 = *(v20 + 8);
    if (*(v48 + 16) == 1)
    {
      v49 = v144;
      specialized Collection.first.getter(v48, v144);
      if (__swift_getEnumTagSinglePayload(v49, 1, v143) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s15ConversationKit11ParticipantVSgMd);
LABEL_71:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v106 = type metadata accessor for Logger();
        __swift_project_value_buffer(v106, logger);
        outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v155);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        outlined destroy of MultiwayViewController.ConversationSnapshot(v20);
        if (!os_log_type_enabled(v22, v23))
        {
          goto LABEL_14;
        }

        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v150[0] = v25;
        *v24 = 136315138;
        v107 = *(v20 + 16);
        v155[0] = *v20;
        v155[1] = v107;
        LODWORD(v155[2]) = *(v20 + 32);
        outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v152);
        v108 = String.init<A>(reflecting:)();
        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v150);

        *(v24 + 4) = v110;
        v30 = "localParticipantState for %s is .fullScreen for oneToOne without isTrackingActiveConversation";
        goto LABEL_13;
      }

      _s15ConversationKit11ParticipantVWObTm_7();
      v87 = v141;
      _s15ConversationKit11ParticipantVWOcTm_16();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v89 = *(v88 + 48);
        outlined consume of Participant.CopresenceInfo?(*&v87[*(v88 + 64)], *&v87[*(v88 + 64) + 8]);
        outlined destroy of Participant.MediaInfo(&v87[v89]);
        v90 = type metadata accessor for Date();
        (*(*(v90 - 8) + 8))(v87, v90);
        if (*(v20 + 17))
        {
          if ([*(v33 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags) uPlusOneFullBleedHandoffEnabled] && (*(v20 + 1) & 1) != 0)
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v91 = type metadata accessor for Logger();
            __swift_project_value_buffer(v91, logger);
            outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v155);
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.default.getter();
            outlined destroy of MultiwayViewController.ConversationSnapshot(v20);
            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              v144 = v34;
              v96 = v95;
              v150[0] = v95;
              *v94 = 136315650;
              v97 = *(v20 + 16);
              v155[0] = *v20;
              v155[1] = v97;
              LODWORD(v155[2]) = *(v20 + 32);
              outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v152);
              v98 = String.init<A>(reflecting:)();
              v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v150);

              *(v94 + 4) = v100;
              *(v94 + 12) = 2080;
              v101 = v145;
              LOBYTE(v155[0]) = v145;
              v102 = String.init<A>(reflecting:)();
              v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v150);

              *(v94 + 14) = v104;
              *(v94 + 22) = 1024;
              *(v94 + 24) = 1;
              _os_log_impl(&dword_1BBC58000, v92, v93, "localParticipantState for %s is localParticipantCornerSize for cornerToUse %s in oneToOne with shouldIgnoreWaitingOnFirstFrame: %{BOOL}d", v94, 0x1Cu);
              swift_arrayDestroy();
              v105 = v96;
              v34 = v144;
              MEMORY[0x1BFB23DF0](v105, -1, -1);
              MEMORY[0x1BFB23DF0](v94, -1, -1);

LABEL_94:
              memcpy(v155, v34, 0xE8uLL);
              outlined init with copy of [CaptionSectioner.SpeakerSection]();
              v31 = MultiwayViewController.localParticipantCornerSize(for:viewContent:)(v101, v155);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v155, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
              _s15ConversationKit11ParticipantVWOhTm_17();
              return v31;
            }

            goto LABEL_93;
          }

          memcpy(v152, v34, 0xE8uLL);
          if (getEnumTag for TapInteraction.EventType(v152) == 1)
          {
            if (*(v20 + 32))
            {
LABEL_82:
              if (one-time initialization token for logger != -1)
              {
                swift_once();
              }

              v116 = type metadata accessor for Logger();
              __swift_project_value_buffer(v116, logger);
              outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v155);
              v117 = Logger.logObject.getter();
              v118 = static os_log_type_t.default.getter();
              outlined destroy of MultiwayViewController.ConversationSnapshot(v20);
              if (os_log_type_enabled(v117, v118))
              {
                v119 = swift_slowAlloc();
                v120 = swift_slowAlloc();
                v149 = v120;
                *v119 = 136315138;
                v121 = *(v20 + 16);
                v155[0] = *v20;
                v155[1] = v121;
                LODWORD(v155[2]) = *(v20 + 32);
                outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v150);
                v122 = String.init<A>(reflecting:)();
                v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v149);

                *(v119 + 4) = v124;
                _os_log_impl(&dword_1BBC58000, v117, v118, "localParticipantState for %s is .fullScreen for oneToOne waitingOnFirstRemoteFrame and isCurrentlyFullScreen", v119, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v120);
                MEMORY[0x1BFB23DF0](v120, -1, -1);
                MEMORY[0x1BFB23DF0](v119, -1, -1);
              }

              _s15ConversationKit11ParticipantVWOhTm_17();
              return 129;
            }
          }

          else
          {
            memcpy(v155, v34, 0xE8uLL);
            if (getEnumTag for TapInteraction.EventType(v155) != 1)
            {
              v125 = v34[6];
              v126 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
              swift_beginAccess();
              if ((*(v20 + 32) & 1) != 0 && *(v125 + v126) == 129)
              {
                goto LABEL_82;
              }
            }
          }

          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v127 = type metadata accessor for Logger();
          __swift_project_value_buffer(v127, logger);
          outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v155);
          v92 = Logger.logObject.getter();
          v128 = static os_log_type_t.default.getter();
          outlined destroy of MultiwayViewController.ConversationSnapshot(v20);
          if (os_log_type_enabled(v92, v128))
          {
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            v144 = v34;
            v131 = v130;
            v149 = v130;
            *v129 = 136315394;
            v132 = *(v20 + 16);
            v155[0] = *v20;
            v155[1] = v132;
            LODWORD(v155[2]) = *(v20 + 32);
            outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v150);
            v133 = String.init<A>(reflecting:)();
            v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v134, &v149);

            *(v129 + 4) = v135;
            *(v129 + 12) = 2080;
            v101 = v145;
            LOBYTE(v155[0]) = v145;
            v136 = String.init<A>(reflecting:)();
            v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v137, &v149);

            *(v129 + 14) = v138;
            _os_log_impl(&dword_1BBC58000, v92, v128, "localParticipantState for %s is localParticipantCornerSize for cornerToUse %s in oneToOne", v129, 0x16u);
            swift_arrayDestroy();
            v139 = v131;
            v34 = v144;
            MEMORY[0x1BFB23DF0](v139, -1, -1);
            MEMORY[0x1BFB23DF0](v129, -1, -1);

            goto LABEL_94;
          }

LABEL_93:

          v101 = v145;
          goto LABEL_94;
        }
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_17();
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
      goto LABEL_71;
    }
  }

  v144 = v34;
  v50 = *(v20 + 32);
  if (v50)
  {
    v51 = *(v20 + 24);
    if (v51 != 3)
    {
      if ((v52 = *(v9 + 8), v53 = swift_getObjectType(), v54 = *(v52 + 208), swift_unknownObjectRetain(), v55 = v54(v53, v52), v33 = v147, v20 = v148, LODWORD(v52) = v55, swift_unknownObjectRelease(), v52 != 3) || (v56 = MultiwayViewController.call.getter(), v57 = [v56 isIncoming], v56, (v57 & 1) == 0) && (v51 | 2) != 2 || ((v58 = *(v9 + 8), v59 = swift_getObjectType(), v60 = *(v58 + 208), swift_unknownObjectRetain(), v61 = v60(v59, v58), v20 = v148, LODWORD(v58) = v61, swift_unknownObjectRelease(), v58 == 3) ? (v62 = (v51 | 2) == 2) : (v62 = 0), v62 && ConversationController.conversationHasActiveRemoteParticipants.getter()))
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        __swift_project_value_buffer(v111, logger);
        outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v155);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        outlined destroy of MultiwayViewController.ConversationSnapshot(v20);
        if (!os_log_type_enabled(v22, v23))
        {
          goto LABEL_14;
        }

        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v150[0] = v25;
        *v24 = 136315138;
        v112 = *(v20 + 16);
        v155[0] = *v20;
        v155[1] = v112;
        LODWORD(v155[2]) = *(v20 + 32);
        outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v152);
        v113 = String.init<A>(reflecting:)();
        v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v150);

        *(v24 + 4) = v115;
        v30 = "localParticipantState for %s is .fullScreen for unjoined isWaitingOnFirstRemoteFrame with conversationHasActiveRemoteParticipants";
        goto LABEL_13;
      }
    }
  }

  v63 = *(v20 + 24);
  if (v63 != 2)
  {
    if (v63 == 1)
    {
LABEL_51:
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      __swift_project_value_buffer(v69, logger);
      outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v155);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      outlined destroy of MultiwayViewController.ConversationSnapshot(v20);
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_14;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v150[0] = v25;
      *v24 = 136315138;
      v70 = *(v20 + 16);
      v155[0] = *v20;
      v155[1] = v70;
      LODWORD(v155[2]) = *(v20 + 32);
      outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v152);
      v71 = String.init<A>(reflecting:)();
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v150);

      *(v24 + 4) = v73;
      v30 = "localParticipantState for %s is .fullscreen since we are in staging";
      goto LABEL_13;
    }

    if (v63)
    {
      goto LABEL_43;
    }
  }

  if ((*(v20 + 33) & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_43:
  if ([*(v33 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags) uPlusOneFullBleedHandoffEnabled] && v63 == 3 && (v47 & 1) != 0 && (v50 & 1) != 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, logger);
    outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v155);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    outlined destroy of MultiwayViewController.ConversationSnapshot(v20);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_14;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v150[0] = v25;
    *v24 = 136315138;
    v65 = *(v20 + 16);
    v155[0] = *v20;
    v155[1] = v65;
    LODWORD(v155[2]) = *(v20 + 32);
    outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v152);
    v66 = String.init<A>(reflecting:)();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v150);

    *(v24 + 4) = v68;
    v30 = "localParticipantState for %s is .fullscreen while waiting for remote frame";
    goto LABEL_13;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  __swift_project_value_buffer(v74, logger);
  outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v155);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  outlined destroy of MultiwayViewController.ConversationSnapshot(v20);
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v150[0] = v78;
    *v77 = 136315394;
    v79 = *(v20 + 16);
    v155[0] = *v20;
    v155[1] = v79;
    LODWORD(v155[2]) = *(v20 + 32);
    outlined init with copy of MultiwayViewController.ConversationSnapshot(v20, v152);
    v80 = String.init<A>(reflecting:)();
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v150);

    *(v77 + 4) = v82;
    *(v77 + 12) = 2080;
    v83 = v145;
    LOBYTE(v155[0]) = v145;
    v84 = String.init<A>(reflecting:)();
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v150);

    *(v77 + 14) = v86;
    _os_log_impl(&dword_1BBC58000, v75, v76, "localParticipantState for %s is localParticipantCornerSize for cornerToUse: %s", v77, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v78, -1, -1);
    MEMORY[0x1BFB23DF0](v77, -1, -1);
  }

  else
  {

    v83 = v145;
  }

  memcpy(v155, v144, 0xE8uLL);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v31 = MultiwayViewController.localParticipantCornerSize(for:viewContent:)(v83, v155);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v155, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  return v31;
}

void specialized closure #7 in MultiwayViewController.viewDidLoad()(char a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memmove(__dst, &v6[v7], 0xE8uLL);
    Enum = getEnumTag for TapInteraction.EventType(__dst);
    if (Enum == 1)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(a1 & 1, Enum != 1, v9);
  }
}

void MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(char a1, char a2, void *a3)
{
  v7 = a3;
  if (!a3)
  {
    v8 = (v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(__dst, v8, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(__dst) != 1)
    {
      v7 = v8[16];
      v9 = v7;
    }

    v10 = v7;
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1 & 1;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = a3;

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a1 & 1;
  if (a2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
    ObjectType = swift_getObjectType();
    v18 = *(v16 + 320);

    if ((v18(ObjectType, v16) & 1) == 0)
    {

      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = partial apply for closure #1 in MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:);
      *(v20 + 24) = v12;
      __dst[4] = partial apply for closure #3 in MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:);
      __dst[5] = v20;
      __dst[0] = MEMORY[0x1E69E9820];
      __dst[1] = 1107296256;
      __dst[2] = thunk for @escaping @callee_guaranteed () -> ();
      __dst[3] = &block_descriptor_307;
      v21 = _Block_copy(__dst);

      v22 = swift_allocObject();
      *(v22 + 16) = partial apply for closure #2 in MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:);
      *(v22 + 24) = v15;
      __dst[4] = partial apply for closure #3 in MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:);
      __dst[5] = v22;
      __dst[0] = MEMORY[0x1E69E9820];
      __dst[1] = 1107296256;
      __dst[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      __dst[3] = &block_descriptor_313;
      v23 = _Block_copy(__dst);

      [v19 animateWithDuration:6 delay:v21 options:v23 animations:0.25 completion:0.0];

      _Block_release(v23);
      _Block_release(v21);
      return;
    }
  }

  else
  {
  }

  closure #1 in MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(v11, a1 & 1);

  closure #2 in MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(v13, a1 & 1);
}

uint64_t MultiwayViewController.usesPaddingInsteadOfSafeArea.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong usesPaddingInsteadOfSafeArea];
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v1 = Features.isICUIRedesignEnabled.getter();
  }

  return v1 & 1;
}

uint64_t MultiwayViewController.registerCaptioningStateObservers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit22CaptioningStateManagerC0iJ0Os5NeverOGSo17OS_dispatch_queueCGMd);
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = &v11 - v4;

  v6 = CaptioningStateManager.captioningStatePublisher.getter();

  v13 = v6;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v7 = static OS_dispatch_queue.main.getter();
  v14 = v7;
  v8 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit22CaptioningStateManagerC0fG0Os5NeverOGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CaptioningStateManager.CaptioningState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit22CaptioningStateManagerC0fG0Os5NeverOGMd);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CaptioningStateManager.CaptioningState, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit22CaptioningStateManagerC0iJ0Os5NeverOGSo17OS_dispatch_queueCGMd);
  v9 = v12;
  Publisher<>.sink(receiveValue:)();

  (*(v3 + 8))(v5, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t MultiwayViewController.playOutgoingGFTRingtoneIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    ConversationController.lookupActiveConversation()();
    if (v12)
    {
      outlined init with take of TapInteractionHandler(&v11, v13);
      v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);
      v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0xC8);
      v10 = v8;
      v9(v13);

      return __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v11, &_s15ConversationKit0A0_pSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #8 in MultiwayViewController.viewDidLoad()(char *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    v7 = *&v6[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0xF0))();
  }

  else
  {
    v8 = 1;
  }

  *a2 = v8;
  a2[1] = v3;
}

void closure #9 in MultiwayViewController.viewDidLoad()(char a1, __objc2_class **a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(__dst, &v5[v6], sizeof(__dst));
    memmove(v11, &v5[v6], 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(v11) != 1)
    {
      v7 = *&v5[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 600);
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      swift_unknownObjectRetain();
      LOBYTE(v7) = v9(ObjectType, v7);
      swift_unknownObjectRelease();
      if (v7)
      {
        MultiwayViewController.updateDelegateUsingState(oldVideoMessageState:newVideoMessageState:)(a1, a2);
        MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(a2);
        LocalParticipantView.videoMessagingState.setter();
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }
}

void MultiwayViewController.updateDelegateUsingState(oldVideoMessageState:newVideoMessageState:)(char a1, char a2)
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27[0] = v8;
    *v7 = 136315394;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v27);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Updating delegate message flow using oldVideoMessageState %s to newVideoMessageState %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  if (a2 == 2)
  {
    if (VideoMessageController.State.rawValue.getter(a1) == 0x7964616552746F6ELL && v15 == 0xE800000000000000)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  if (a1 == 2)
  {
    if (VideoMessageController.State.rawValue.getter(a2) == 0x7964616552746F6ELL && v18 == 0xE800000000000000)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          return;
        }

        v22 = Strong;
        v23 = &selRef_didEnterVideoMessagingFlow;
        goto LABEL_31;
      }
    }
  }

  switch(a2)
  {
    case 1:
LABEL_27:
      swift_beginAccess();
      v25 = swift_unknownObjectWeakLoadStrong();
      if (!v25)
      {
        return;
      }

      v22 = v25;
      v23 = &selRef_didExitVideoMessagingFlow;
      break;
    case 7:
      swift_beginAccess();
      v26 = swift_unknownObjectWeakLoadStrong();
      if (!v26)
      {
        return;
      }

      v22 = v26;
      v23 = &selRef_endedRecordingVideoMessage;
      break;
    case 5:
      swift_beginAccess();
      v24 = swift_unknownObjectWeakLoadStrong();
      if (!v24)
      {
        return;
      }

      v22 = v24;
      v23 = &selRef_beganRecordingVideoMessage;
      break;
    default:
      return;
  }

LABEL_31:
  if ([v22 respondsToSelector_])
  {
    [v22 *v23];
  }

  swift_unknownObjectRelease();
}

uint64_t closure #10 in MultiwayViewController.viewDidLoad()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation3URLVSgMd);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v9 = *(*&v8[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController] + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
      v10 = objc_opt_self();
      v11 = v9;
      if ([v10 isCommunicationSafetyEnabled] && ((*((*MEMORY[0x1E69E7D40] & *v11) + 0x168))() & 1) != 0)
      {
        v12 = objc_allocWithZone(MEMORY[0x1E69CA8E8]);
        v13 = @nonobjc SCUIInterventionViewController.init(workflow:contextDictionary:)(1, 0);
        [v13 setInterventionDelegate_];
        [v13 setModalInPresentation_];
        [v8 presentModalViewController:v13 withTransition:8];

        v8 = v13;
      }

      else
      {
        MultiwayViewController.showLocalVideoMessagePreview(usingURL:)();
      }

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

void MultiwayViewController.showLocalVideoMessagePreview(usingURL:)()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
  v3 = OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController;
  v4 = *(v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
  MultiwayViewController.videoMessagePlayerViewModelFor(_:and:)();
  v6 = v5;
  memset(v14, 0, sizeof(v14));
  v7 = objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewController());
  v8 = v6;
  v9 = VideoMessagePlayerViewController.init(viewModel:participantInfo:)(v8, v14);
  [v1 showViewController:v9 sender:0];
  v10 = *(v2 + v3);
  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x158);
  v12 = v8;
  v13 = v10;
  v11(v8);
}

void MultiwayViewController.setupCallTranslationIfNeeded()()
{
  if ([*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags) videoCallTranslationEnabled])
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v1 = MultiwayViewController.call.getter();
    VideoCallTranslationController.updateCall(_:)(v1);
  }
}

Swift::Void __swiftcall MultiwayViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_247();
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, v1 & 1);
  MultiwayViewController.updateShouldShowReactionPickerTipView()();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_243_2();
  if (v3)
  {
    MultiwayViewController.startTipStateObserver()();
    MultiwayViewController.tipKitStartObservation()();
  }
}

Swift::Void __swiftcall MultiwayViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_247();
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, v1 & 1);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = OUTLINED_FUNCTION_13_12();
  *(v3 + 16) = xmmword_1BC4BA940;
  v4 = lazy protocol witness table accessor for type String and conformance String();
  v5 = 0x6D696E6120746F6ELL;
  if (v1)
  {
    v5 = 0x646574616D696E61;
  }

  v6 = 0xEC00000064657461;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = v4;
  if (v1)
  {
    v6 = 0xE800000000000000;
  }

  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_272_1();

  MultiwayViewController.updateStatusBarHidden()();
  MultiwayViewController.resumeUserInterface()();
  MultiwayViewController.updateViewConstraints()();
  v7 = 513;
  MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(&v7);
  MultiwayViewController.updateHasParticipantVideo()();
}

void *MultiwayViewController.updateStatusBarHidden()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result viewController:v0 setStatusBarHidden:MultiwayViewController.shouldHideStatusBar.getter()];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MultiwayViewController.updateHasParticipantVideo()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  swift_beginAccess();
  if ((*(v8 + v9) & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    goto LABEL_23;
  }

  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  if (!*(*(v8 + v10) + 16))
  {
    goto LABEL_23;
  }

  v30[1] = v1;
  v11 = v8 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v12 = *(v11 + 8);
  swift_unknownObjectRetain();
  if ((ConversationController.isOneToOneModeEnabled.getter() & 1) == 0 || (ObjectType = swift_getObjectType(), v14 = *(v12 + 136), v33 = ObjectType, (v14(ObjectType, v12) & 1) == 0))
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v31 = *(v12 + 208);
  v32 = v12 + 208;
  if (v31(v33, v12) == 1)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = v31(v33, v12);
    swift_unknownObjectRelease();
    if (v29 != 3)
    {
      goto LABEL_8;
    }
  }

  if (MultiwayViewController.stoppedSendingVideoDueToOffscreen.getter())
  {
    goto LABEL_9;
  }

LABEL_8:
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_16();
  v15 = Participant.isActiveWithVideo.getter();
  _s15ConversationKit11ParticipantVWOhTm_17();
  if (v15)
  {
LABEL_9:
    v16 = 1;
    return MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(v16, &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo, MultiwayViewController.hasParticipantVideo.didset);
  }

  result = ConversationController.visibleParticipants.getter();
  v33 = *(result + 16);
  if (!v33)
  {

LABEL_23:
    v16 = 0;
    return MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(v16, &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo, MultiwayViewController.hasParticipantVideo.didset);
  }

  v18 = 0;
  v19 = &_s15ConversationKit11ParticipantV9VideoInfoVSgMd;
  v20 = result;
  v31 = (result + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  v32 = result;
  while (v18 < *(v20 + 16))
  {
    _s15ConversationKit11ParticipantVWOcTm_16();
    _s15ConversationKit11ParticipantVWOcTm_16();
    _s15ConversationKit11ParticipantVWOhTm_17();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v21 = v2;
      v22 = v6;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v24 = v19;
      v25 = *(v23 + 48);
      outlined consume of Participant.CopresenceInfo?(*&v4[*(v23 + 64)], *&v4[*(v23 + 64) + 8]);
      v26 = &v4[v25];
      v19 = v24;
      memcpy(v35, v26, sizeof(v35));
      v27 = type metadata accessor for Date();
      (*(*(v27 - 8) + 8))(v4, v27);
      memcpy(v34, &v35[16], 0x4BuLL);
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      result = outlined destroy of Participant.MediaInfo(v35);
      if (v34[0])
      {
        v28 = v34[1];
        result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, v24);
        if (v28)
        {

          v16 = 1;
          return MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(v16, &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo, MultiwayViewController.hasParticipantVideo.didset);
        }

        v19 = v24;
        v6 = v22;
        v2 = v21;
      }

      else
      {
        v6 = v22;
        v2 = v21;
      }

      v20 = v32;
    }

    else
    {
      result = _s15ConversationKit11ParticipantVWOhTm_17();
    }

    if (v33 == ++v18)
    {

      v16 = 0;
      return MultiwayViewController.isInCallEndedBlockAndReportFlow.setter(v16, &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo, MultiwayViewController.hasParticipantVideo.didset);
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MultiwayViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_247();
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidDisappear_, v1 & 1);
  if (!_UISolariumEnabled() || (MultiwayViewController.isPresentingCallDetails.getter() & 1) == 0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationKit);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_42();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_sSo8NSObjectCSgMd);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_18();
    }

    MultiwayViewController.pauseUserInterface()();
    MultiwayViewController.stopTipStateObserver()();
    MultiwayViewController.tipKitStopObservation()();
  }
}

uint64_t MultiwayViewController.isPresentingCallDetails.getter()
{
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator))
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_137();
  v2 = *(v1 + 120);
  v4 = v3;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

Swift::Void __swiftcall MultiwayViewController.viewSafeAreaInsetsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewSafeAreaInsetsDidChange);
  MultiwayViewController.updateAdditionalSafeAreaInsets()();
}

Swift::Void __swiftcall MultiwayViewController.viewDidLayoutSubviews()()
{
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_viewDidLayoutSubviews);
  v5 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo];
  memcpy(__dst, &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsCaptureInfo], sizeof(__dst));
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 8) = 0;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC18EffectsCaptureInfo33_055EFD27ECDD2CFC2CD9ED96D724A17ELLVSgMd);
  v6 = MultiwayViewController.flashView.getter();
  v7 = OUTLINED_FUNCTION_3_64();
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v7 bounds];
  OUTLINED_FUNCTION_40_1();

  v9 = OUTLINED_FUNCTION_35();
  [v10 v11];

  v12 = MultiwayViewController.insulatingView.getter();
  if (v12)
  {
    v13 = v12;
    v14 = OUTLINED_FUNCTION_3_64();
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      OUTLINED_FUNCTION_40_1();

      v16 = OUTLINED_FUNCTION_35();
      [v17 v18];

      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_5:
  MultiwayViewController.mediaPipSafeAreaFrame.getter();
  MultiwayViewController.cachedMediaPipSafeAreaFrame.setter(v19, v20, v21, v22);
  v23 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_172_2(v34);
  OUTLINED_FUNCTION_46_26(v34);
  if (!v24)
  {
    v25 = *(v23 + 23);
    if (v25)
    {
      type metadata accessor for ButtonGradientBackgroundView();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_172_2(v33);
        OUTLINED_FUNCTION_46_26(v33);
        if (!v24)
        {
          v26 = *(v23 + 22);
          if (v26)
          {
            v27 = v25;
            v28 = v26;
            [v28 frame];
            OUTLINED_FUNCTION_40_1();
            v29 = OUTLINED_FUNCTION_3_64();
            v30 = OUTLINED_FUNCTION_35();
            [v31 v32];
            OUTLINED_FUNCTION_40_1();

            v36[0] = v1;
            v36[1] = v2;
            v36[2] = v3;
            v36[3] = v4;
            v37 = 0;
            ButtonGradientBackgroundView.buttonFrame.setter(v36);
          }
        }
      }
    }
  }
}

void MultiwayViewController.mediaPipSafeAreaFrame.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v7 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v116, &v1[v7], sizeof(v116));
  memcpy(v117, &v1[v7], 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v117) == 1)
  {
    return;
  }

  v8 = v117[6];
  v9 = *(v117[6] + OBJC_IVAR___CNKFaceTimeConstraintsController_bannerDodgingLayoutGuide);
  if (!v9)
  {
    return;
  }

  memcpy(v115, v116, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v115, &v114);
  [v9 layoutFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
  swift_beginAccess();
  if (v18[1] == 0.0 && v18[2] == 0.0 || (v19 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner, swift_beginAccess(), (v1[v19] & 1) != 0))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    return;
  }

  v110 = v15;
  v112 = v13;
  v113 = v11;
  v20 = [v1 view];
  if (!v20)
  {
    goto LABEL_60;
  }

  v21 = v20;
  v111 = v17;
  [v20 bounds];
  v107 = v23;
  v108 = v22;
  v105 = v25;
  v106 = v24;

  v26 = [v117[1] view];
  if (!v26)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v27 = v26;
  [v26 frame];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  MultiwayViewController.gridViewOverlappingInsets.getter();
  v38 = UIEdgeInsetsInsetRect(v29, v31, v33, v35, v36, v37);
  v103 = v39;
  v104 = v38;
  v40 = v39;
  v42 = v41;
  v102 = v41;
  v100 = v43;
  v118.origin.y = v112;
  v118.origin.x = v113;
  v118.size.width = v110;
  v118.size.height = v111;
  MinY = CGRectGetMinY(v118);
  v45 = v107;
  v46 = v108;
  v119.origin.x = v108;
  v119.origin.y = v107;
  v48 = v105;
  v47 = v106;
  v119.size.width = v106;
  v119.size.height = v105;
  v49 = MinY - CGRectGetMinY(v119);
  if (v49 <= 0.0)
  {
    v49 = 0.0;
  }

  v109 = v49;
  v120.origin.x = v38;
  v120.origin.y = v40;
  v120.size.width = v42;
  v50 = v100;
  v120.size.height = v100;
  v51 = CGRectGetMinY(v120);
  v121.origin.x = v46;
  v121.origin.y = v45;
  v121.size.width = v47;
  v121.size.height = v48;
  v52 = v51 - CGRectGetMinY(v121);
  v53 = v52 - static Layout.MediaPip.padding.getter();
  if (v109 > v53)
  {
    v54 = v109;
  }

  else
  {
    v54 = v53;
  }

  if (v53 > 0.0)
  {
    v55 = v54;
  }

  else
  {
    v55 = v109;
  }

  v101 = v55;
  v122.origin.x = v46;
  v122.origin.y = v45;
  v122.size.width = v47;
  v122.size.height = v48;
  CGRectGetMaxY(v122);
  v123.origin.y = v112;
  v123.origin.x = v113;
  v56 = v110;
  v123.size.height = v111;
  v123.size.width = v110;
  CGRectGetMaxY(v123);
  v124.origin.x = v46;
  v124.origin.y = v45;
  v124.size.width = v47;
  v124.size.height = v48;
  CGRectGetMaxY(v124);
  v125.origin.y = v103;
  v125.origin.x = v104;
  v125.size.width = v102;
  v125.size.height = v50;
  CGRectGetMaxY(v125);
  static Layout.MediaPip.padding.getter();
  v57 = UIEdgeInsetsInsetRect(v113, v112, v56, v111, v101 - v109, 0.0);
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v117[4];
  if (v117[4])
  {
    v65 = v117[5];
    ObjectType = swift_getObjectType();
    v67 = *(v65 + 64);
    v68 = v64;
    v69 = v67(ObjectType, v65);
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v76 = swift_getObjectType();
    v77 = *(v65 + 72);
    v78 = v68;
    LOBYTE(v65) = v77(v76, v65);

    if (v65)
    {
      v79 = 0;
    }

    else
    {
      if ((*v18 | 2) == 3)
      {
        v126.origin.x = v69;
        v126.origin.y = v71;
        v126.size.width = v73;
        v126.size.height = v75;
        CGRectGetHeight(v126);
        static Layout.MediaPip.padding.getter();
        v57 = UIEdgeInsetsInsetRect(v57, v59, v61, v63, 0.0, 0.0);
        v59 = v80;
        v61 = v81;
        v63 = v82;
      }

      v79 = 1;
    }
  }

  else
  {
    v79 = 0;
  }

  [v117[7] frame];
  Height = CGRectGetHeight(v127);
  v84 = Height + static Layout.MediaPip.padding.getter();
  v85 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
  swift_beginAccess();
  v86 = *(v8 + v85);
  if (v86 >> 6)
  {
    if (v86 >> 6 != 1)
    {
      v89 = 0.0;
      if (v86 == 128)
      {
LABEL_55:
        v57 = UIEdgeInsetsInsetRect(v57, v59, v61, v63, v89, 0.0);
        v59 = v92;
        v61 = v93;
        v63 = v94;
      }

      goto LABEL_56;
    }

    v86 &= 0x3Fu;
  }

  if (ConversationController.isOneToOneModeEnabled.getter())
  {
    v87 = *v18;
    switch(v86)
    {
      case 1u:
        if (v79)
        {
          if (v87 > 3 || v87 == 2)
          {
            goto LABEL_54;
          }
        }

        else if (*v18)
        {
          goto LABEL_54;
        }

        break;
      case 2u:
        v89 = 0.0;
        if (v87 != 3)
        {
          goto LABEL_55;
        }

        break;
      case 3u:
        if (v87 == 2)
        {
          v90 = v79;
        }

        else
        {
          v90 = 1;
        }

        v89 = 0.0;
        if (v90)
        {
          goto LABEL_55;
        }

        break;
      default:
        if (v87 == 3)
        {
          v88 = v79;
        }

        else
        {
          v88 = 0;
        }

        if (v87 != 1 && (v88 & 1) == 0)
        {
LABEL_54:
          v89 = v84;
          goto LABEL_55;
        }

        break;
    }
  }

LABEL_56:
  v95 = v18[2];
  v96 = static Layout.MediaPip.padding.getter();
  v97 = v95 + v96 + v96 + 1.0;
  v128.origin.x = v57;
  v128.origin.y = v59;
  v128.size.width = v61;
  v128.size.height = v63;
  v98 = CGRectGetHeight(v128);
  if (v98 < v97)
  {
    v129.origin.x = v57;
    v129.origin.y = v59;
    v129.size.width = v61;
    v129.size.height = v63;
    CGRectGetHeight(v129);
    v130.origin.x = v57;
    v130.origin.y = v59;
    v130.size.width = v61;
    v130.size.height = v63;
    CGRectGetMaxY(v130);
    v131.origin.y = v112;
    v131.origin.x = v113;
    v131.size.width = v110;
    v131.size.height = v111;
    CGRectGetMaxY(v131);
    v98 = UIEdgeInsetsInsetRect(v57, v59, v61, v63, 0.0, 0.0);
  }

  v99 = [v1 view];
  UIRectRoundToViewScale();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
}

Swift::Void __swiftcall MultiwayViewController.willMove(toParent:)(UIViewController_optional *toParent)
{
  OUTLINED_FUNCTION_247();
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  [(UIViewController_optional *)&v6 willMoveToParentViewController:?];
  if (v1)
  {
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 traitCollectionWithUserInterfaceStyle_];
    [v4 setOverrideTraitCollection:v5 forChildViewController:v2];
  }
}

uint64_t MultiwayViewController.scheduleUpdate(for:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Participant(0);
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  result = MultiwayViewController.nextScheduledUpdateInterval(for:)(a1);
  if ((v16 & 1) == 0)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v25 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v17 = *(v9 + 8);
    v26 = v8;
    v27 = v17;
    v17(v11, v8);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s15ConversationKit11ParticipantVWOcTm_16();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    _s15ConversationKit11ParticipantVWObTm_7();
    aBlock[4] = partial apply for closure #1 in MultiwayViewController.scheduleUpdate(for:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_562;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v21 = v29;
    v22 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v25;
    MEMORY[0x1BFB21510](v14, v6, v21, v20);
    _Block_release(v20);

    (*(v32 + 8))(v21, v22);
    (*(v30 + 8))(v6, v31);
    return v27(v14, v26);
  }

  return result;
}

uint64_t MultiwayViewController.updateFullScreenFocus(changeSource:defocusAnimationStyle:)(int a1, int a2)
{
  v3 = v2;
  LODWORD(v129) = a2;
  LODWORD(v131) = a1;
  v4 = type metadata accessor for UUID();
  v127 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v120 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v6);
  v128 = &v113 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v122 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v113 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v113 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v126 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v130 = &v113 - v17;
  v132 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v132);
  v19 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v113 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v121 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v113 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v113 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v113 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v113 - v34;
  v36 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v136, (v3 + v36), sizeof(v136));
  memcpy(v137, (v3 + v36), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v137);
  if (result != 1)
  {
    v115 = v19;
    v116 = v4;
    v117 = v22;
    memcpy(v135, v136, 0xE8uLL);
    v38 = v137[1];
    swift_beginAccess();
    v118 = v38;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of MultiwayViewController.ViewContent(v135, v134);
    LODWORD(v38) = MultiwayViewController.participantGridState.getter();
    MultiwayViewConstraintsController.participantGridState.setter(v38 & 1);
    v39 = v35;
    v40 = *(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
    ObjectType = swift_getObjectType();
    v42 = (*(v40 + 320))(ObjectType, v40);
    MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(1, v42 & 1, 0, 0, 0, 0);
    HIDWORD(v119) = v38;
    if (v38)
    {
      v43 = v39;
      if (__swift_getEnumTagSinglePayload(v39, 1, v132) == 1)
      {
LABEL_32:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v136, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s15ConversationKit11ParticipantVSgMd);
      }

      MultiwayViewController.mostActiveParticipants.getter();
      v44 = MultiwayViewController.activeRemoteParticipants(in:)();

      ParticipantGridViewController.fullScreenDefocus(to:animationStyle:)(v44, v129);
      swift_beginAccess();

      Array<A>.participants(notIn:)();
      v46 = v45;

      v133 = 513;
      ParticipantListViewController.update(with:updateReason:)(v46);

LABEL_31:
      MultiwayViewController.setShutterButton(hidden:animated:overriddenShutterButton:)(BYTE4(v119) & 1, 1, 0);
      goto LABEL_32;
    }

    v129 = v39;
    if (MultiwayViewController.isPipped.getter() && (v131 & 1) != 0)
    {
      goto LABEL_7;
    }

    ConversationController.remoteOneToOneParticipant.getter();
    v49 = v132;
    if (__swift_getEnumTagSinglePayload(v32, 1, v132) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v136, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      v47 = &_s15ConversationKit11ParticipantVSgMd;
      v48 = v32;
      goto LABEL_10;
    }

    v50 = v117;
    _s15ConversationKit11ParticipantVWObTm_7();
    v51 = v127;
    v52 = v127 + 16;
    v53 = *(v127 + 16);
    v54 = v50 + *(v49 + 20);
    v55 = v130;
    v56 = v116;
    v53(v130, v54, v116);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v49);
    v114 = v52;
    v131 = v53;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit11ParticipantVSgMd);
      v58 = 1;
      v59 = v126;
    }

    else
    {
      v59 = v126;
      v53(v126, &v29[*(v49 + 20)], v56);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v58 = 0;
    }

    __swift_storeEnumTagSinglePayload(v59, v58, 1, v56);
    v60 = *(v6 + 48);
    v61 = v130;
    v62 = v128;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v62, 1, v56) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v59, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s10Foundation4UUIDVSgMd);
      if (__swift_getEnumTagSinglePayload(v62 + v60, 1, v56) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s10Foundation4UUIDVSgMd);
LABEL_27:
        _s15ConversationKit11ParticipantVWOhTm_17();
LABEL_7:
        v47 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd;
        v48 = v136;
LABEL_10:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, v47);
        v43 = v129;
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, &_s15ConversationKit11ParticipantVSgMd);
      }
    }

    else
    {
      v63 = v124;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      if (__swift_getEnumTagSinglePayload(v62 + v60, 1, v56) != 1)
      {
        v84 = v120;
        (*(v51 + 32))(v120, v62 + v60, v56);
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        LODWORD(v126) = dispatch thunk of static Equatable.== infix(_:_:)();
        v85 = *(v51 + 8);
        v85(v84, v56);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v59, &_s10Foundation4UUIDVSgMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s10Foundation4UUIDVSgMd);
        v85(v124, v56);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s10Foundation4UUIDVSgMd);
        v64 = v117;
        if (v126)
        {
          goto LABEL_27;
        }

LABEL_20:
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        __swift_project_value_buffer(v65, &static Log.default);
        v66 = v125;
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        _s15ConversationKit11ParticipantVWOcTm_16();
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        v69 = os_log_type_enabled(v67, v68);
        v70 = v123;
        v71 = v131;
        if (v69)
        {
          v72 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v134[0] = v130;
          *v72 = 136315394;
          v73 = v121;
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          v74 = v132;
          if (__swift_getEnumTagSinglePayload(v73, 1, v132) == 1)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit11ParticipantVSgMd);
            v75 = 1;
            v76 = v116;
          }

          else
          {
            v76 = v116;
            v71(v70, v73 + *(v74 + 20), v116);
            _s15ConversationKit11ParticipantVWOhTm_17();
            v75 = 0;
          }

          __swift_storeEnumTagSinglePayload(v70, v75, 1, v76);
          specialized >> prefix<A>(_:)(v70, v86, v87, v88, v89, v90, v91, v92, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
          v93 = v76;
          v95 = v94;
          v97 = v96;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s10Foundation4UUIDVSgMd);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v125, &_s15ConversationKit11ParticipantVSgMd);
          v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v134);

          *(v72 + 4) = v98;
          *(v72 + 12) = 2080;
          v99 = v122;
          v131(v122, &v115[*(v74 + 20)], v93);
          __swift_storeEnumTagSinglePayload(v99, 0, 1, v93);
          specialized >> prefix<A>(_:)(v99, v100, v101, v102, v103, v104, v105, v106, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
          v108 = v107;
          v110 = v109;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s10Foundation4UUIDVSgMd);
          _s15ConversationKit11ParticipantVWOhTm_17();
          v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, v134);

          *(v72 + 14) = v111;
          _os_log_impl(&dword_1BBC58000, v67, v68, "Grid fullscreen focused on %s, should be %s", v72, 0x16u);
          v112 = v130;
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v112, -1, -1);
          MEMORY[0x1BFB23DF0](v72, -1, -1);

          v64 = v117;
        }

        else
        {

          _s15ConversationKit11ParticipantVWOhTm_17();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit11ParticipantVSgMd);
        }

        ParticipantGridViewController.fullScreenFocus(on:)(v64, v77, v78, v79, v80, v81, v82, v83, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
        _s15ConversationKit11ParticipantVWOhTm_17();
        v43 = v129;
        goto LABEL_31;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v59, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s10Foundation4UUIDVSgMd);
      (*(v51 + 8))(v63, v56);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, &_s10Foundation4UUIDVSg_ADtMd);
    v64 = v117;
    goto LABEL_20;
  }

  return result;
}

uint64_t MultiwayViewController.setParticipantListState(_:animated:)(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v24, (v3 + v12), sizeof(v24));
    memcpy(v25, (v3 + v12), sizeof(v25));
    result = getEnumTag for TapInteraction.EventType(v25);
    if (result != 1)
    {
      memcpy(v23, v25, sizeof(v23));
      v13 = v25[6];
      v14 = OBJC_IVAR___CNKFaceTimeConstraintsController_participantListState;
      result = swift_beginAccess();
      v15 = a1 & 1;
      if (*(v13 + v14) != v15)
      {
        memcpy(v22, v24, 0xE8uLL);
        outlined init with copy of MultiwayViewController.ViewContent(v22, v21);
        MultiwayViewConstraintsController.participantListState.setter(v15);
        if (a2)
        {
          v16 = objc_opt_self();
          v17 = swift_allocObject();
          memcpy((v17 + 16), v23, 0xE8uLL);
          v20[4] = partial apply for closure #1 in MultiwayViewController.setParticipantListState(_:animated:);
          v20[5] = v17;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 1107296256;
          v20[2] = thunk for @escaping @callee_guaranteed () -> ();
          v20[3] = &block_descriptor_346;
          v18 = _Block_copy(v20);
          memcpy(v21, v24, sizeof(v21));
          outlined init with copy of MultiwayViewController.ViewContent(v21, v19);

          [v16 animateWithDuration:0 delay:v18 options:0 animations:0.3 completion:0.0];
          _Block_release(v18);
        }

        MultiwayViewController.dodgeMediaPip(visibilityDidChange:)(0);
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.notifyFullScreenFocusedParticipantChanged(oldFullScreenFocusedParticipant:newFullScreenFocusedParticipant:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v11);
  *&v56 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v19);
  if (__swift_getEnumTagSinglePayload(a1, 1, v19) == 1 || __swift_getEnumTagSinglePayload(a2, 1, v19) != 1 || (v55 = v10, v20 = ConversationController.isOneToOneModeEnabled.getter(), v10 = v55, (v20 & 1) != 0))
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit11ParticipantVSgMd);
    }

    v55 = v2;
    _s15ConversationKit11ParticipantVWObTm_7();
    Participant.videoInfo.getter();
    if (!v57[0])
    {
      return _s15ConversationKit11ParticipantVWOhTm_17();
    }

    v22 = v57[3];
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s15ConversationKit11ParticipantVSgMd);
    }

    else
    {
      Participant.videoInfo.getter();
      _s15ConversationKit11ParticipantVWOhTm_17();
      if (v58[0])
      {
        v23 = v58[3];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        if (v23 == v22)
        {
          goto LABEL_13;
        }
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong viewController:v55 fullScreenFocusedParticipantOrientationChanged:v22];
      swift_unknownObjectRelease();
    }

LABEL_13:
    v53 = Participant.isReceivingVideoFrames.getter();
    v25 = v56;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v25, 1, v19) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s15ConversationKit11ParticipantVSgMd);
    }

    else
    {
      Participant.videoInfo.getter();
      _s15ConversationKit11ParticipantVWOhTm_17();
      if (v59[0])
      {
        v52 = v61;
        v56 = v60;
        v26 = v62;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v59, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        v27 = 0;
        goto LABEL_18;
      }
    }

    v26 = 0;
    v56 = 0u;
    v27 = 1;
    v52 = 0u;
LABEL_18:
    Participant.videoInfo.getter();
    if (v63[0])
    {
      v28 = v66;
      v50 = v64;
      v51 = v65;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      if (v27)
      {
        v27 = 0;
      }

      else
      {
        v74[0] = v50;
        v74[1] = v51;
        v75 = v28 & 1;
        v72[0] = v56;
        v72[1] = v52;
        v73 = v26 & 1;
        v27 = static AspectRatio.== infix(_:_:)(v72, v74);
      }
    }

    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v19);
    v54 = v7;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd);
    }

    else
    {
      Participant.videoInfo.getter();
      _s15ConversationKit11ParticipantVWOhTm_17();
      if (v67[0])
      {
        v30 = v67[3];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v67, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        v31 = 0;
        goto LABEL_30;
      }
    }

    v30 = 0;
    v31 = 1;
LABEL_30:
    v32 = v27;
    Participant.videoInfo.getter();
    v33 = v68[0];
    v34 = v68[0] == 0;
    if (v68[0])
    {
      v35 = v68[3];
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      if (v31)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v35 = 0;
      if (v31)
      {
        goto LABEL_38;
      }
    }

    if (v33)
    {
      v36 = v30 == v35;
    }

    else
    {
      v36 = 0;
    }

    v34 = v36;
LABEL_38:
    v37 = v54;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v37, 1, v19) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit11ParticipantVSgMd);
      v38 = 2;
    }

    else
    {
      v39 = Participant.isReceivingVideoFrames.getter();
      _s15ConversationKit11ParticipantVWOhTm_17();
      v38 = v39 & 1;
    }

    v40 = Participant.isReceivingVideoFrames.getter();
    if (v38 == 2 || !v32 || !v34)
    {
      v41 = 1;
    }

    else
    {
      v41 = v40 ^ v38;
    }

    Participant.videoInfo.getter();
    if (v69[0])
    {
      v42 = *&v69[5];
      v43 = *&v69[6];
      v44 = *&v69[7];
      v45 = *&v69[8];
      v46 = v70;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v69, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
      if (v53 & v41)
      {
        Participant.videoInfo.getter();
        if (v71[0])
        {
          v47 = v71[3];
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
          if ((v47 | 2) != 3)
          {
            v42 = v44;
            v43 = v45;
          }
        }

        v48 = 1.0;
        if (v46)
        {
          v49 = 1.0;
        }

        else
        {
          v49 = v42;
        }

        if ((v46 & 1) == 0)
        {
          v48 = v43;
        }

        goto LABEL_61;
      }
    }

    if (__swift_getEnumTagSinglePayload(a1, 1, v19) == 1)
    {
      Participant.videoInfo.getter();
      if (!v71[0])
      {
        v49 = 1.0;
        v48 = 1.0;
LABEL_61:
        notifyDelegates #1 (fullScreenFocusedParticipantAspectRatio:) in MultiwayViewController.notifyFullScreenFocusedParticipantChanged(oldFullScreenFocusedParticipant:newFullScreenFocusedParticipant:)(v55, v49, v48);
        return _s15ConversationKit11ParticipantVWOhTm_17();
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    }

    return _s15ConversationKit11ParticipantVWOhTm_17();
  }

  return notifyDelegates #1 (fullScreenFocusedParticipantAspectRatio:) in MultiwayViewController.notifyFullScreenFocusedParticipantChanged(oldFullScreenFocusedParticipant:newFullScreenFocusedParticipant:)(v2, 1.0, 1.0);
}

void MultiwayViewController.updateOneToOneShutterButtonTapability(for:isMomentsAvailable:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5 + 8;
  v7 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v14, v8, sizeof(v14));
  if (getEnumTag for TapInteraction.EventType(v14) != 1)
  {
    v9 = v8[16];
    if (v9)
    {
      v10 = v9;
      ConversationController.remoteOneToOneParticipant.getter();
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd);
      }

      else
      {
        _s15ConversationKit11ParticipantVWObTm_7();
        if (static UUID.== infix(_:_:)())
        {
          if (a2)
          {
            if (one-time initialization token for shutterButtonEnabled != -1)
            {
              swift_once();
            }

            v11 = &static Colors.ParticipantViews.shutterButtonEnabled;
          }

          else
          {
            if (one-time initialization token for shutterButtonDisabled != -1)
            {
              swift_once();
            }

            v11 = &static Colors.ParticipantViews.shutterButtonDisabled;
          }

          v12 = *v11;
          [v10 setTintColor_];

          _s15ConversationKit11ParticipantVWOhTm_17();
        }

        else
        {
          _s15ConversationKit11ParticipantVWOhTm_17();
        }
      }
    }
  }
}

uint64_t MultiwayViewController.notifyLocalParticipantAspectRatioChanged()()
{
  result = ConversationController.isOneToOneModeEnabled.getter();
  if (result)
  {
    result = MultiwayViewController.isPipped.getter();
    if (result)
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v2 = result;
        if ([result respondsToSelector_])
        {
          MultiwayViewController.pipContentAspectRatioForOneToOneLocalPreview.getter();
          [v2 viewController:v0 localParticipantAspectRatioChanged:?];
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t notifyDelegates #1 (fullScreenFocusedParticipantAspectRatio:) in MultiwayViewController.notifyFullScreenFocusedParticipantChanged(oldFullScreenFocusedParticipant:newFullScreenFocusedParticipant:)(uint64_t a1, double a2, double a3)
{
  v6 = MultiwayViewController.participantGridState.getter();
  v7 = a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentFullScreenFocusedAspectRatio;
  swift_beginAccess();
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = 0;
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostRecentGridIsFullScreen;
  swift_beginAccess();
  *(a1 + v8) = !v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong viewController:a1 fullScreenFocusedParticipantAspectRatioChanged:!v6 participantGridIsFullScreen:{a2, a3}];
    swift_unknownObjectRelease();
  }

  v10 = (a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler);
  result = swift_beginAccess();
  v12 = *v10;
  if (*v10)
  {

    v12(v13);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v12);
  }

  return result;
}

void MultiwayViewController.updateMutedTalkerUI(mutedTalker:)(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    v13 = MultiwayViewController.isPipped.getter();
    v14 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
    if (!v13)
    {
      swift_beginAccess();
      v21 = *(v1 + v14);
      v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x178);
      v11 = v21;
      v22();
      goto LABEL_10;
    }

    swift_beginAccess();
    v15 = *(v1 + v14);
    v16 = MEMORY[0x1E69E7D40];
    v17 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x128);
    v18 = v15;
    v19 = v17();

    if ((v19 & 1) == 0)
    {
      return;
    }

    v20 = *(v2 + v14);
    v10 = *((*v16 & *v20) + 0x160);
    v11 = v20;
    v12 = 0;
LABEL_8:
    v10(v12);
LABEL_10:

    return;
  }

  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x128);
  v7 = v4;
  v8 = v6();

  if ((v8 & 1) != 0 && MultiwayViewController.isPipped.getter())
  {
    v9 = *(v2 + v3);
    v10 = *((*v5 & *v9) + 0x160);
    v11 = v9;
    v12 = 1;
    goto LABEL_8;
  }
}

uint64_t MultiwayViewController.updateLocalParticipantVideoOrientation()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v17, (v1 + v8), sizeof(v17));
  memcpy(v18, (v1 + v8), sizeof(v18));
  result = getEnumTag for TapInteraction.EventType(v18);
  if (result != 1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
    swift_beginAccess();
    if (*(v9 + 8) == 1)
    {
      memcpy(v16, v17, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v16, v15);
    }

    else
    {
      memcpy(v16, v17, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v16, v15);
      if (ConversationController.isOneToOneModeEnabled.getter())
      {
        if (*(v9 + 8))
        {
          v10 = 1;
        }

        else
        {
          v10 = *v9;
        }

LABEL_10:
        v11 = v18[6];
        MultiwayViewConstraintsController.localParticipantVideoOrientation.setter(v10);
        v12 = v18[7];
        v13 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_localParticipantVideoOrientation;
        swift_beginAccess();
        *&v12[v13] = v10;
        v14 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
        swift_beginAccess();
        if (*(v11 + v14) == 128)
        {
          [v12 setNeedsLayout];
        }

        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }
    }

    v10 = 1;
    goto LABEL_10;
  }

  return result;
}

uint64_t MultiwayViewController.updateLocalParticipantAspectRatio()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v34, (v1 + v9), sizeof(v34));
    memcpy(v35, (v1 + v9), sizeof(v35));
    result = getEnumTag for TapInteraction.EventType(v35);
    if (result != 1)
    {
      memcpy(v28, v34, 0xE8uLL);
      swift_beginAccess();
      _s15ConversationKit11ParticipantVWOcTm_16();
      outlined init with copy of MultiwayViewController.ViewContent(v28, v24);
      Participant.videoInfo.getter();
      _s15ConversationKit11ParticipantVWOhTm_17();
      v10 = 0uLL;
      if (v24[0])
      {
        v22 = v25;
        v23 = v26;
        v11 = v27;
        v12 = ConversationController.isOneToOneModeEnabled.getter();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
        if (v12)
        {
          v10 = v22;
          v13 = v23;
        }

        else
        {
          v11 = 1;
          v13 = 0uLL;
          v10 = 0uLL;
        }
      }

      else
      {
        v11 = 1;
        v13 = 0uLL;
      }

      v29 = v10;
      v30 = v13;
      v31 = v11 & 1;
      v14 = v35[6] + OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantAspectRatio;
      swift_beginAccess();
      v15 = *(v14 + 16);
      v32[0] = *v14;
      v32[1] = v15;
      v33 = *(v14 + 32);
      if (!static AspectRatio.== infix(_:_:)(&v29, v32))
      {
        MultiwayViewConstraintsController.localParticipantAspectRatio.setter(&v29);
        v16 = v35[7];
        v17 = v35[7] + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_aspectRatio;
        swift_beginAccess();
        v18 = v30;
        *v17 = v29;
        *(v17 + 16) = v18;
        *(v17 + 32) = v31;
        [v16 setNeedsLayout];
        v19 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
        ObjectType = swift_getObjectType();
        v21 = (*(v19 + 320))(ObjectType, v19);
        MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(1, v21 & 1, 0, 0, 0, 0);
      }

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.setLocalParticipantState(_:animated:)(uint64_t a1, _BOOL4 a2)
{
  v3 = v2;
  v87 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v79 - v8;
  v85 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v85);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v82 = v11;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v83 = v3;
    v21 = v20;
    v81 = swift_slowAlloc();
    v93[0] = v81;
    *v21 = 136315394;
    LOBYTE(v92[0]) = a1;
    v22 = String.init<A>(reflecting:)();
    v86 = a1;
    v24 = v13;
    v25 = v12;
    v26 = v9;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v93);
    a1 = v86;

    *(v21 + 4) = v27;
    v9 = v26;
    v12 = v25;
    v13 = v24;
    *(v21 + 12) = 1024;
    *(v21 + 14) = v87;
    _os_log_impl(&dword_1BBC58000, v17, v18, "setLocalParticipantState %s animated: %{BOOL}d", v21, 0x12u);
    v28 = v81;
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    v29 = v21;
    v3 = v83;
    MEMORY[0x1BFB23DF0](v29, -1, -1);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v30 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_66:
    swift_once();
    goto LABEL_53;
  }

  v31 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v91, &v3[v31], sizeof(v91));
  memcpy(v92, &v3[v31], sizeof(v92));
  result = getEnumTag for TapInteraction.EventType(v92);
  if (result == 1)
  {
    return result;
  }

  memcpy(v93, v92, 0xE8uLL);
  v15 = v92[6];
  v33 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
  swift_beginAccess();
  v80 = v33;
  LODWORD(v12) = *(v15 + v33);
  if (static MultiwayViewConstraintsController.LocalParticipantState.== infix(_:_:)(*(v15 + v33), a1))
  {
    v34 = OBJC_IVAR___CNKFaceTimeConstraintsController_shouldForceAllowNextLocalParticipantStateUpdate;
    result = swift_beginAccess();
    if (*(v15 + v34) != 1)
    {
      return result;
    }
  }

  v35 = OBJC_IVAR___CNKFaceTimeConstraintsController_shutterButtonState;
  swift_beginAccess();
  v36 = *(v15 + v35);
  if (v12 < 0x81 || a1 == 129)
  {
    memcpy(v90, v91, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v90, v89);
    v87 = 0;
  }

  else
  {
    v87 = a1 < 0x81u;
    memcpy(v90, v91, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v90, v89);
    MultiwayViewController.testing_requestingLocalPreviewMinimize()();
  }

  LODWORD(v81) = ParticipantListViewController.participantCount.getter() > 0;
  if (MultiwayViewConstraintsController.LocalParticipantState.collides(with:)(v36))
  {
    v86 = a1;
    v37 = [objc_opt_self() currentDevice];
    v38 = [v37 userInterfaceIdiom];

    if (v38)
    {
      MultiwayViewConstraintsController.shutterButtonState.setter(v36 ^ 1u);
      a1 = v86;
    }

    else
    {
      v44 = v92[3];
      v45 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController;
      swift_beginAccess();
      v46 = *(v44 + v45);
      a1 = v86;
      if (v46)
      {
        v47 = *MEMORY[0x1E69E7D40] & *v46;
        v83 = v3;
        v48 = *(v47 + 528);
        v49 = v46;
        v50 = v48();
        v3 = v83;
        v51 = v50;

        a1 = v86;
        if (v51)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy15ConversationKit9FindoViewVGMd);
          if (swift_dynamicCastClass())
          {
            v52 = v51;
            dispatch thunk of UIHostingController.rootView.getter();
            v79 = v52;

            v89[0] = v90[1];
            v89[1] = v90[2];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd);
            State.wrappedValue.getter();
            v53 = v88;

            if ((*(*v53 + 376))(v54))
            {
              MultiwayViewConstraintsController.shutterButtonState.setter(v36 ^ 1u);
            }

            a1 = v86;
          }

          else
          {
          }

          v3 = v83;
        }
      }
    }
  }

  if ((static MultiwayViewConstraintsController.LocalParticipantState.== infix(_:_:)(a1, v12) & 1) == 0)
  {
    if ((v12 & 0xC0) == 0x80)
    {
      v39 = v3;
      if (v12 == 128)
      {
LABEL_22:
        v3 = v39;
        MultiwayViewController.hideEffectsBrowser()();
        goto LABEL_23;
      }

      if (v12 == 129)
      {
        v40 = &v3[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_windowAspectRatioHandler];
        swift_beginAccess();
        v41 = *v40;
        if (*v40)
        {

          v41(v42);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v41);
        }

        goto LABEL_22;
      }
    }

LABEL_23:
    MultiwayViewController.hideZoomControlIfNeeded()();
  }

  if (v12 != 128)
  {
    goto LABEL_37;
  }

  if (a1 != 128)
  {
    swift_beginAccess();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v43 = v85;
    if (__swift_getEnumTagSinglePayload(v9, 1, v85) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantVSgMd);
    }

    else
    {
      v55 = v82;
      _s15ConversationKit11ParticipantVWObTm_7();
      if (!*&v55[*(v43 + 28)])
      {
        active = MultiwayViewController.mostActiveParticipants.getter();
        ParticipantGridViewController.defocus(to:)(active);
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
    }

LABEL_37:
    if ((a1 & 0xC0) == 0x40)
    {
      goto LABEL_39;
    }
  }

  LOBYTE(v90[0]) = 0;
  MultiwayViewController.reactionsState.setter(v90, &OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState, MultiwayViewController.reactionsState.didset);
LABEL_39:
  MultiwayViewConstraintsController.localParticipantState.setter(a1);
  v18 = a1;
  LocalParticipantView.configureControls(_:)(a1);
  MultiwayViewController.updateLocalParticipantControls()();
  v56 = MultiwayViewController.dimmingLayer.getter(&OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView, closure #1 in MultiwayViewController.mePipDimmingBackgroundView.getter);
  [v56 setHidden_];

  v57 = *&v3[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
  ObjectType = swift_getObjectType();
  LOBYTE(v56) = (*(v57 + 320))(ObjectType, v57);
  v59 = swift_allocObject();
  memcpy((v59 + 16), v93, 0xE8uLL);
  *(v59 + 248) = v81;
  *(v59 + 249) = v18;
  *(v59 + 256) = v3;
  v60 = v3;
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = v18;
  *(v62 + 25) = v87;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v63 = v60;

  MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(1, v56 & 1, partial apply for closure #1 in MultiwayViewController.setLocalParticipantState(_:animated:), v59, partial apply for closure #2 in MultiwayViewController.setLocalParticipantState(_:animated:), v62);

  v64 = v18;

  if ((v18 & 0x80) != 0)
  {
    if ((v18 & 0x7F) != 0)
    {
      v72 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
      swift_beginAccess();
      if (!*(v15 + v72))
      {
        if (MultiwayViewController.effectsBrowserIsOpaque.getter())
        {
          v73 = 2;
        }

        else
        {
          v73 = 1;
        }

        [v63 setControlsState:v73 animated:1];
      }
    }

    v71 = 0;
    goto LABEL_58;
  }

  v65 = objc_opt_self();
  v66 = [v65 currentDevice];
  v67 = [v66 userInterfaceIdiom];

  if (v67 == 1)
  {
    goto LABEL_41;
  }

  v74 = [v65 currentDevice];
  v75 = [v74 userInterfaceIdiom];

  if (v75)
  {
    goto LABEL_54;
  }

  swift_beginAccess();
  if (static AmbientState.isPresented != 1)
  {
    goto LABEL_54;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_66;
  }

LABEL_53:
  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_41:
  v68 = MultiwayViewController.constraintController.getter();
  if (!v68)
  {
LABEL_54:
    v71 = 1;
    goto LABEL_55;
  }

  v69 = v68;
  v70 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
  swift_beginAccess();
  LODWORD(v70) = v69[v70];

  v71 = v70 != 2;
LABEL_55:
  if ((ConversationController.isOneToOneModeEnabled.getter() & 1) == 0)
  {
    swift_beginAccess();
    v76 = v84;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v77 = __swift_getEnumTagSinglePayload(v76, 1, v85) != 1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v76, &_s15ConversationKit11ParticipantVSgMd);
    v71 &= v77;
  }

  v64 = v18;
LABEL_58:
  ParticipantViewDragController.dragEnabled.setter(v71);
  MultiwayViewController.updateIsCaptionsViewDragEnabled()();
  if (v12 > 0x80 || v64 >= 0x81u)
  {
    MultiwayViewController.updateViewVisibility(localParticipantState:)(*(v15 + v80));
  }

  MultiwayViewController.updateShouldShowReactionPickerTipView()();
  MultiwayViewController.dodgeMediaPip(visibilityDidChange:)(0);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v91, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
}

void MultiwayViewController.rotate(portraitRect:for:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v2 = [v1 view];
      if (!v2)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    case 1:
      return;
    case 2:
      v2 = [v1 view];
      if (v2)
      {
        goto LABEL_5;
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    case 3:
      v4 = [v1 view];
      if (!v4)
      {
        goto LABEL_15;
      }

      v5 = v4;
      [v4 bounds];

      v2 = [v1 view];
      if (v2)
      {
LABEL_5:
        v3 = v2;
        [v2 bounds];
      }

      else
      {
LABEL_17:
        __break(1u);
      }

      return;
    default:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, &static Log.default);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BBC58000, v7, v8, "Unknown enum case", v9, 2u);
        MEMORY[0x1BFB23DF0](v9, -1, -1);
      }

      return;
  }
}

void closure #1 in MultiwayViewController.updatePhoneLocalParticipantControlOrientation()(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_deviceOrientation;
  swift_beginAccess();
  v7 = LocalParticipantView.controlRotation(for:)(*(a1 + v6));
  v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x1D0);
  v9 = v5;
  v8(v7);

  LocalParticipantView.updateShelfPiPControls(for:)(*(a1 + v6));
  v10 = [a2 superview];
  [v10 layoutIfNeeded];
}

void closure #2 in MultiwayViewController.updatePhoneLocalParticipantControlOrientation()(double a1)
{
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_4_137();
  v4 = *(v3 + 488);
  v6 = v5;
  v4(a1);

  v7 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_shelfPiPControlsAlpha;
  OUTLINED_FUNCTION_3_5();
  *(v1 + v7) = a1;
  LocalParticipantView.shelfPiPControlsAlpha.didset();
}

Swift::Void __swiftcall MultiwayViewController.removeAllEffectsObjects()()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_206();
  v9(v8);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  specialized EffectsHandler.wipeEffectsState()();
  v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
  OUTLINED_FUNCTION_3_5();
  v11 = *(v2 + v10);
  *(v2 + v10) = 0;

  v12 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_172_2(v33);
  if (getEnumTag for TapInteraction.EventType(v33) != 1)
  {
    v13 = v12[9];
    if (v13)
    {
      v14 = v13;
      [v14 willMoveToParentViewController_];
      [v14 removeFromParentViewController];
      if (![v14 isViewLoaded])
      {
LABEL_7:
        [v14 didMoveToParentViewController_];

        goto LABEL_8;
      }

      v15 = [v14 &_OBJC_LABEL_PROTOCOL___CNUIObjectViewControllerDelegate];
      if (v15)
      {
        v16 = v15;
        [v15 0x1FA964078];

        goto LABEL_7;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_172_2(v32);
  OUTLINED_FUNCTION_46_26(v32);
  if (v17)
  {
    goto LABEL_14;
  }

  v18 = v12[11];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  MultiwayViewController.hideEffectsBrowser()();
  [v19 willMoveToParentViewController_];
  [v19 removeFromParentViewController];
  if ([v19 isViewLoaded])
  {
    v20 = [v19 view];
    if (v20)
    {
      v21 = v20;
      [v20 removeFromSuperview];

      goto LABEL_13;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_13:
  [v19 didMoveToParentViewController_];

LABEL_14:
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_172_2(v31);
  OUTLINED_FUNCTION_46_26(v31);
  if (!v17)
  {
    v22 = v12[9];
    v12[9] = 0;
  }

  OUTLINED_FUNCTION_172_2(v30);
  OUTLINED_FUNCTION_46_26(v30);
  if (!v17)
  {
    v23 = v12[11];
    v12[11] = 0;
  }

  swift_endAccess();
  OUTLINED_FUNCTION_172_2(v29);
  OUTLINED_FUNCTION_46_26(v29);
  if (!v17)
  {
    v24 = v12[6];
    v25 = *&v24[OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout + 32];
    OUTLINED_FUNCTION_179_2(&v24[OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout], *&v24[OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout + 24]);
    v26 = *(v25 + 136);
    v27 = v24;
    v28 = OUTLINED_FUNCTION_62_0();
    v26(v28);
  }

  OUTLINED_FUNCTION_30_0();
}

void MultiwayViewController.showEffectsControls(_:shouldUpdateLocalParticipantState:)(char a1, char a2)
{
  v5 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
  swift_beginAccess();
  v2[v8] = 1;
  if (a1)
  {
    specialized EffectsHandler.setUpEffectsObjectsIfNecessary()();
  }

  v9 = &v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  swift_beginAccess();
  memcpy(v44, v9, sizeof(v44));
  if (getEnumTag for TapInteraction.EventType(v44) == 1 || (v10 = v9[11]) == 0)
  {
    v11 = 0;
  }

  else
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v10;
    }
  }

  memcpy(v43, v9, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v43) == 1 || (v13 = v9[9]) == 0)
  {
    v14 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v13;
    }

    if ((a2 & 1) == 0)
    {
LABEL_19:
      v16 = 0;
      if (a1)
      {
        goto LABEL_20;
      }

LABEL_18:
      v17 = 1;
      goto LABEL_21;
    }
  }

  memcpy(v42, v9, sizeof(v42));
  if (getEnumTag for TapInteraction.EventType(v42) == 1 || !v9[11])
  {
    goto LABEL_19;
  }

  v16 = 1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  v17 = 2;
LABEL_21:
  [v2 setControlsState:v17 animated:1];
  if ((a1 & 1) == 0)
  {
    if (v16)
    {
      MultiwayViewController.unfocusFocusedParticipant()();
    }

    if (v11)
    {
      v31 = [v11 view];
      if (!v31)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v32 = v31;
      [v31 setAlpha_];
    }

    if (!v14)
    {
LABEL_50:

      return;
    }

    if (![v14 effectsState])
    {
      v34 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
      swift_beginAccess();
      v35 = *&v2[v34];
      if (v35)
      {
        if ([v35 mode])
        {
          v36 = *&v2[v34];
          if (v36)
          {
            v37 = v36;
            [v37 setMode_];
          }
        }
      }
    }

    v33 = v14;
    v14 = v11;
LABEL_49:

    v11 = v14;
    goto LABEL_50;
  }

  if (v16)
  {
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOcTm_16();
    MultiwayViewController.focus(on:shouldBringLocalParticipantViewToFront:)(v7, 1);
    _s15ConversationKit11ParticipantVWOhTm_17();
  }

  if (!v11)
  {
    goto LABEL_46;
  }

  v18 = [v11 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_52;
  }

  v19 = v18;
  [v18 setAlpha_];

  v20 = v11;
  v21 = [v20 view];
  if (v21)
  {
    v22 = v21;
    [v21 setAlpha_];

    memcpy(v42, v9, sizeof(v42));
    if (getEnumTag for TapInteraction.EventType(v42) != 1)
    {
      v23 = v9[7];
      v24 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
      swift_beginAccess();
      v25 = *(v23 + v24);
      if (v25)
      {
        v26 = objc_opt_self();
        v27 = v25;
        v28 = [v26 currentDevice];
        v29 = [v28 userInterfaceIdiom];

        if (v29 == 1)
        {
          v30 = [v27 view];
          [v20 showMemojiPicker_];

LABEL_45:
LABEL_46:
          v38 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
          swift_beginAccess();
          v39 = *&v2[v38];
          if (v39)
          {
            v40 = v39;
            [v40 setMode_];
          }

          v33 = v11;
          goto LABEL_49;
        }
      }
    }

    [v20 showMemojiPicker_];
    goto LABEL_45;
  }

LABEL_53:
  __break(1u);
}

uint64_t MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(unsigned __int8 *a1, unsigned int a2, int a3)
{
  v129 = a3;
  v131 = a2;
  v125 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v123 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v124 = &v121 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v133) = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, logger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v130 = v10;
  v132 = v12;
  if (v19)
  {
    v128 = v9;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v140[0] = v21;
    *v20 = 136315394;
    LOBYTE(v139[0]) = v133;
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v140);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    if (v131 <= 0xFBu)
    {
      LOBYTE(v139[0]) = v131;
      v26 = String.init<A>(reflecting:)();
      v25 = v27;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, v140);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_1BBC58000, v17, v18, "setConversationBannerState %s localParticipantState %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v21, -1, -1);
    MEMORY[0x1BFB23DF0](v20, -1, -1);

    v9 = v128;
    v10 = v130;
    v12 = v132;
  }

  else
  {
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v29 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  v30 = v133;
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_107:
    swift_once();
    goto LABEL_17;
  }

  if (v133)
  {
    v31 = v134;
    if (v133 != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v31 = v134;
  }

  v32 = MultiwayViewController.dimmingLayer.getter(&OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___dimmingLayer, closure #1 in MultiwayViewController.dimmingLayer.getter);
  GlassDimmingView.updateAlpha(isHidden:duration:)();

LABEL_15:
  v33 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v138, (v31 + v33), sizeof(v138));
  memcpy(v139, (v31 + v33), sizeof(v139));
  result = getEnumTag for TapInteraction.EventType(v139);
  if (result == 1)
  {
    return result;
  }

  memcpy(v140, v139, 0xE8uLL);
  memcpy(v137, v138, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v137, v136);
  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_107;
  }

LABEL_17:
  v35 = __swift_project_value_buffer(v9, &static Logger.conversationControls);
  (*(v10 + 16))(v12, v35, v9);
  v36 = v139[3];
  v37 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsManager;
  swift_beginAccess();
  v38 = *(v36 + v37);
  v39 = *((*MEMORY[0x1E69E7D40] & *v38) + 0x928);
  v40 = v38;
  v41 = v39();

  if (v30)
  {
    goto LABEL_18;
  }

  v53 = v41 >> 5;
  if (!(v41 >> 5))
  {
    goto LABEL_18;
  }

  if (v53 != 6)
  {
    if (v53 != 4 || v41 != 129)
    {
      goto LABEL_40;
    }

LABEL_18:
    v42 = v139[6];
    v43 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    swift_beginAccess();
    v126 = *(v42 + v43);
    v44 = swift_allocObject();
    v45 = v30;
    v46 = v44;
    *(v44 + 16) = v45;
    v47 = (v44 + 16);
    v48 = v42 + OBJC_IVAR___CNKFaceTimeConstraintsController_bannerControlsSize;
    swift_beginAccess();
    if (*(v48 + 16) == 1)
    {
      *v47 = 0;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((*(*static Defaults.shared + 680))())
    {
      *v47 = 1;
    }

    if (MultiwayViewController.sensitiveContentController.getter())
    {

      swift_beginAccess();
      if ((static SensitiveContentController.shieldState & 1) == 0)
      {
        *v47 = 0;
        v49 = MultiwayViewController.bannerPresentationManager.getter();
        if (v49)
        {
          v50 = v49;
          v51 = MEMORY[0x1BFB209B0](0xD000000000000042, 0x80000001BC51D660);
          [v50 dismissPresentedBannerForReason:v51 animated:1];
        }
      }
    }

    LOBYTE(v136[0]) = *v47;
    v133 = v42;
    MultiwayViewConstraintsController.inCallConversationBannerState.setter(v136);
    v52 = v134;
    if ((MultiwayViewController.isOnScreen.getter() & 1) == 0 || MultiwayViewController.isPipped.getter())
    {
LABEL_67:
      swift_beginAccess();
      v87 = *v47;
      if (![*(v52 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags) videoCallTranslationEnabled])
      {
        goto LABEL_76;
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
      {
        goto LABEL_76;
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      VideoCallTranslationController.hudViewModel.getter();
      v88 = CallTranslationHUDViewModel.isTranslationStarted.getter();

      if (v88)
      {
        if (v87)
        {
          LOBYTE(v89) = 0;
        }

        else
        {
          v117 = v9;
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v118, v119))
          {
            v120 = swift_slowAlloc();
            *v120 = 0;
            _os_log_impl(&dword_1BBC58000, v118, v119, "Ensure translation can see hud", v120, 2u);
            MEMORY[0x1BFB23DF0](v120, -1, -1);
          }

          LOBYTE(v89) = 0;
          v9 = v117;
        }
      }

      else
      {
LABEL_76:
        v89 = 1u >> (v87 & 7);
      }

      InCallBannerHostViewController.beginHUDTransition(isDismissed:)(v89);
      v90 = v139[4];
      v91 = v134;
      if (v139[4])
      {
        v92 = v139[5];
        ObjectType = swift_getObjectType();
        v94 = v90;
        v95 = ConversationController.isOneToOneModeEnabled.getter();
        (*(v92 + 24))(v95 & 1, ObjectType, v92);

        v96 = swift_getObjectType();
        LOBYTE(v136[0]) = *v47;
        (*(v92 + 48))(v136, v96, v92);
      }

      MultiwayViewController.updateCornerButtonsVisibility()();
      v97 = *(v91 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
      v98 = swift_getObjectType();
      v99 = (*(v97 + 320))(v98, v97);
      v100 = swift_allocObject();
      memcpy((v100 + 16), v140, 0xE8uLL);
      *(v100 + 248) = v46;
      swift_unknownObjectWeakInit();
      v101 = swift_allocObject();
      memcpy((v101 + 16), v140, 0xE8uLL);
      *(v101 + 248) = v46;
      outlined init with copy of MultiwayViewController.ViewContent(v139, v136);

      outlined init with copy of [CaptionSectioner.SpeakerSection]();

      v102 = v129;
      MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(v129 & 1, v99 & 1, partial apply for closure #1 in MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:), v100, partial apply for closure #2 in MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:), v101);

      MEMORY[0x1BFB23F10](v135);
      if (v131 <= 0xFBu)
      {
        MultiwayViewController.setLocalParticipantState(_:animated:)(v131, v102 & 1);
      }

      MultiwayViewController.ConversationSnapshot.init(of:)(*(v91 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController), v136);
      v103 = MultiwayViewController.localParticipantState(for:)(v136);
      outlined destroy of MultiwayViewController.ConversationSnapshot(v136);
      MultiwayViewController.setLocalParticipantState(_:animated:)(v103, v102 & 1);
      v104 = *v47;
      if (v126)
      {
        if (!*v47)
        {
          v128 = v9;
          v105 = v139[7];
          v106 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
          swift_beginAccess();
          if (!*(v105 + v106) || (v107 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState, v108 = v133, swift_beginAccess(), (*(v108 + v107) & 0xFE) != 0x80))
          {
            MultiwayViewController.hideEffectsBrowser()();
          }

          swift_beginAccess();
          v109 = v124;
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          v110 = v125;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v109, 1, v125);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, &_s15ConversationKit11ParticipantVSgMd);
          if (EnumTagSinglePayload == 1)
          {
            v112 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
            v113 = v133;
            swift_beginAccess();
            if ((*(v113 + v112) & 0xFE) != 0x80)
            {
              v114 = v123;
              __swift_storeEnumTagSinglePayload(v123, 1, 1, v110);
              ParticipantGridViewController.select(_:forFocusing:)();
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v114, &_s15ConversationKit11ParticipantVSgMd);
            }
          }

          v104 = *v47;
          v9 = v128;
        }

        v115 = v130;
        if (v126 == 2)
        {
          if (v104 == 2)
          {
            goto LABEL_101;
          }

          if (v104)
          {
            goto LABEL_100;
          }
        }

        else if (v104)
        {
          if (v104 != 1)
          {
            goto LABEL_100;
          }

          goto LABEL_101;
        }
      }

      else
      {
        v115 = v130;
        if (!*v47)
        {
          goto LABEL_101;
        }
      }

      swift_beginAccess();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v116 = Participant.isActiveWithVideo.getter();
      _s15ConversationKit11ParticipantVWOhTm_17();
      if ((v116 & 1) == 0)
      {
LABEL_100:
        MultiwayViewController.dodgeMediaPip(visibilityDidChange:)(0);
      }

LABEL_101:
      MultiwayViewController.updateShouldShowReactionPickerTipView()();
      (*(v115 + 8))(v132, v9);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v138, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }

    if (*v47)
    {
      if (*v47 == 1)
      {
        if (v126 == 1)
        {
          goto LABEL_58;
        }
      }

      else if (v126 == 2)
      {
        goto LABEL_58;
      }
    }

    else if (!v126)
    {
LABEL_58:
      swift_beginAccess();
      v52 = v134;
      if (*v47 - 1 <= 1)
      {
        if ((Features.isIncomingCallBannerEnabled.getter() & 1) == 0)
        {
          v72 = MultiwayViewController.bannerPresentationManager.getter();
          if (v72)
          {
            v73 = v72;
            v74 = MEMORY[0x1BFB209B0](0xD00000000000003ELL, 0x80000001BC51D620);
            [v73 dismissPresentedBannerForReason:v74 animated:1];
          }
        }

        v75 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
        swift_beginAccess();
        v76 = *(v52 + v75);
        v77 = *((*MEMORY[0x1E69E7D40] & *v76) + 0x128);
        v78 = v76;
        v79 = v77();

        if ((v79 & 1) != 0 && !MultiwayViewController.isPipped.getter())
        {
          v80 = v9;
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = 0;
            _os_log_impl(&dword_1BBC58000, v81, v82, "MutedTalker: hiding banner for InCall control presentation", v83, 2u);
            MEMORY[0x1BFB23DF0](v83, -1, -1);
          }

          v52 = v134;
          *(v134 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didNotifyMutedCaller) = 0;
          v84 = *(v52 + v75);
          v85 = *((*MEMORY[0x1E69E7D40] & *v84) + 0x178);
          v86 = v84;
          v85();

          v9 = v80;
        }
      }

      goto LABEL_67;
    }

    v128 = v9;

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v136[0] = v122;
      *v64 = 136315138;
      swift_beginAccess();
      v65 = *(v46 + 16);

      v66 = 0xE700000000000000;
      v67 = 0x656C6269736976;
      if (v65 != 1)
      {
        v67 = 0x69746E6573657270;
        v66 = 0xEE00756E654D676ELL;
      }

      if (v65)
      {
        v68 = v67;
      }

      else
      {
        v68 = 0x6E6564646968;
      }

      if (v65)
      {
        v69 = v66;
      }

      else
      {
        v69 = 0xE600000000000000;
      }

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v136);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_1BBC58000, v62, v63, "InCallBannerState:%s", v64, 0xCu);
      v71 = v122;
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x1BFB23DF0](v71, -1, -1);
      MEMORY[0x1BFB23DF0](v64, -1, -1);
    }

    else
    {
    }

    v9 = v128;
    goto LABEL_58;
  }

  if (v41 == 192)
  {
    goto LABEL_18;
  }

LABEL_40:
  v54 = v132;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v136[0] = v58;
    *v57 = 136315138;
    v135[96] = v41;
    v59 = String.init<A>(reflecting:)();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v136);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_1BBC58000, v55, v56, "Ignoring request to hide in-call controls in mode %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x1BFB23DF0](v58, -1, -1);
    MEMORY[0x1BFB23DF0](v57, -1, -1);
  }

  (*(v10 + 8))(v54, v9);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v138, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
}

void MultiwayViewController.updateScreenSharingSnapshotView(_:)(char a1)
{
  v4 = v1;
  v6 = &v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  swift_beginAccess();
  memcpy(__dst, v6, sizeof(__dst));
  memcpy(__src, v6, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(__src) != 1)
  {
    memcpy(v109, __src, sizeof(v109));
    v7 = __src[2];
    v8 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_isScreenSharing;
    swift_beginAccess();
    *(v7 + v8) = a1 & 1;
    memcpy(v108, __dst, sizeof(v108));
    outlined init with copy of MultiwayViewController.ViewContent(v108, v107);
    InCallControlsViewController.updateScreenShareButton()();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v9 = (*((*MEMORY[0x1E69E7D40] & *static ScreenSharingInteractionController.shared) + 0x128))();
    v102 = v9;
    v104 = a1;
    if ((a1 & 1) != 0 && v9 != 2 && (MultiwayViewController.isOnScreen.getter() & 1) != 0 && !MultiwayViewController.isPipped.getter())
    {
      v103 = 1;
      LODWORD(v106) = 16;
    }

    else
    {
      LODWORD(v106) = 0;
      v103 = 0;
    }

    v10 = MultiwayViewController.ViewContent.allViews.getter();
    v11 = specialized Array.count.getter(v10);
    v12 = &off_1E7FE9000;
    if (v11)
    {
      v13 = v11;
      if (v11 >= 1)
      {
        v14 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1BFB22010](v14, v10);
          }

          else
          {
            v15 = *(v10 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = MultiwayViewController.captionsViewController.getter();
          if (v17)
          {
            v18 = v17;
            v19 = v4;
            v20 = v16;
            v21 = v12;
            v22 = [v18 v12[474]];

            if (v22)
            {

              v23 = v20 == v22;
              v12 = v21;
              v4 = v19;
              if (v23)
              {
                v24 = MultiwayViewController.captionsViewController.getter();
                if (!v24)
                {
                  goto LABEL_24;
                }

                v25 = v24[direct field offset for CaptionsViewController.allowsScreenshots];

                if (v25 != 1)
                {
                  goto LABEL_24;
                }
              }
            }

            else
            {

              v12 = v21;
              v4 = v19;
            }
          }

          v20 = [v16 layer];
          [v20 setDisableUpdateMask_];

LABEL_24:
          ++v14;

          if (v13 == v14)
          {
            goto LABEL_25;
          }
        }
      }

      __break(1u);
      goto LABEL_53;
    }

LABEL_25:

    v26 = *&v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator];
    if (v26)
    {
      v27 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x98);
      v28 = v26;
      v27(v103);
    }

    if (__src[21])
    {
      v29 = __src[21];
      v30 = [v29 superview];
      if (v30)
      {

        [v29 removeFromSuperview];
        memcpy(v107, v6, sizeof(v107));
        if (getEnumTag for TapInteraction.EventType(v107) != 1)
        {
          v31 = *(v6 + 21);
          *(v6 + 21) = 0;
        }
      }

      else
      {
      }
    }

    if ((v104 & 1) == 0 || (v32 = [v4 v12[474]]) == 0 || (v33 = v32, v3 = objc_msgSend(v32, sel_snapshotViewAfterScreenUpdates_, 0), v33, !v3))
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      return;
    }

    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v34 = [v4 v12[474]];
    if (v34)
    {
      v35 = v34;
      [v34 addSubview_];

      v36 = [v4 v12 + 2808];
      if (v36)
      {
        v37 = v36;
        [v36 sendSubviewToBack_];

        [v3 setTranslatesAutoresizingMaskIntoConstraints_];
        [v2 addSubview_];
        v38 = [objc_opt_self() effectWithStyle_];
        v39 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

        v40 = v39;
        [v40 setTranslatesAutoresizingMaskIntoConstraints_];
        v106 = v40;
        [v2 addSubview_];
        v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        [v10 setTranslatesAutoresizingMaskIntoConstraints_];
        if (one-time initialization token for background == -1)
        {
LABEL_38:
          [v10 setBackgroundColor_];
          if (v102 != 2 && (MultiwayViewController.isOnScreen.getter() & 1) != 0 && !MultiwayViewController.isPipped.getter())
          {
            v41 = [v10 layer];
            [v41 setDisableUpdateMask_];
          }

          [v2 addSubview_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1BC4E8C10;
          v43 = [v3 topAnchor];
          v44 = [v2 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
          v45 = [v43 constraintEqualToAnchor_];

          *(v42 + 32) = v45;
          v46 = [v3 leadingAnchor];
          v47 = [v2 leadingAnchor];
          v48 = [v46 constraintEqualToAnchor_];

          *(v42 + 40) = v48;
          v49 = [v3 bottomAnchor];
          v50 = [v2 &off_1E7FE9D20 + 5];
          v51 = [v49 constraintEqualToAnchor_];

          *(v42 + 48) = v51;
          v105 = v3;
          v52 = [v3 trailingAnchor];
          v53 = [v2 trailingAnchor];
          v54 = [v52 constraintEqualToAnchor_];

          *(v42 + 56) = v54;
          v55 = [v106 topAnchor];
          v56 = [v2 topAnchor];
          v57 = [v55 constraintEqualToAnchor_];

          *(v42 + 64) = v57;
          v58 = [v106 leadingAnchor];
          v59 = [v2 leadingAnchor];
          v60 = [v58 constraintEqualToAnchor_];

          *(v42 + 72) = v60;
          v61 = [v106 bottomAnchor];
          v62 = [v2 bottomAnchor];
          v63 = [v61 constraintEqualToAnchor_];

          *(v42 + 80) = v63;
          v64 = [v106 trailingAnchor];

          v65 = [v2 trailingAnchor];
          v66 = [v64 constraintEqualToAnchor_];

          *(v42 + 88) = v66;
          v67 = [v10 topAnchor];
          v68 = [v2 topAnchor];
          v69 = [v67 constraintEqualToAnchor_];

          *(v42 + 96) = v69;
          v70 = [v10 leadingAnchor];
          v71 = [v2 leadingAnchor];
          v72 = [v70 constraintEqualToAnchor_];

          *(v42 + 104) = v72;
          v73 = [v10 bottomAnchor];
          v74 = [v2 bottomAnchor];
          v75 = [v73 constraintEqualToAnchor_];

          *(v42 + 112) = v75;
          v76 = [v10 trailingAnchor];
          v77 = [v2 trailingAnchor];
          v78 = [v76 constraintEqualToAnchor_];

          *(v42 + 120) = v78;
          v79 = [v2 topAnchor];
          v80 = [v4 view];
          if (v80)
          {
            v81 = v80;
            v82 = [v80 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];

            v83 = [v79 constraintEqualToAnchor_];
            *(v42 + 128) = v83;
            v84 = [v2 leadingAnchor];
            v85 = [v4 view];
            if (v85)
            {
              v86 = v85;
              v87 = [v85 leadingAnchor];

              v88 = [v84 constraintEqualToAnchor_];
              *(v42 + 136) = v88;
              v89 = [v2 bottomAnchor];
              v90 = [v4 view];
              if (v90)
              {
                v91 = v90;
                v92 = [v90 bottomAnchor];

                v93 = [v89 constraintEqualToAnchor_];
                *(v42 + 144) = v93;
                v94 = [v2 trailingAnchor];
                v95 = [v4 view];
                if (v95)
                {
                  v96 = v95;
                  v97 = objc_opt_self();
                  v98 = [v96 trailingAnchor];

                  v99 = [v94 constraintEqualToAnchor_];
                  *(v42 + 152) = v99;
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v97 activateConstraints_];

                  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
                  memcpy(v107, v6, sizeof(v107));
                  if (getEnumTag for TapInteraction.EventType(v107) == 1)
                  {
                  }

                  else
                  {
                    v101 = *(v6 + 21);
                    *(v6 + 21) = v2;
                  }

                  return;
                }

LABEL_59:
                __break(1u);
                return;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

LABEL_53:
        swift_once();
        goto LABEL_38;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_56;
  }
}

Swift::Void __swiftcall MultiwayViewController.showOneToOneLivePhotosAlert(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_55();
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(__dst, (v2 + v4), sizeof(__dst));
  memcpy(v35, (v2 + v4), 0xE8uLL);
  OUTLINED_FUNCTION_46_26(v35);
  if (!v5 && v35[17])
  {
    v6 = v35[17];
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = OUTLINED_FUNCTION_13_12();
    *(v7 + 16) = xmmword_1BC4BA940;
    aBlock = v3;
    v29 = v1;

    v8 = MEMORY[0x1E69E6158];
    v9 = String.init<A>(reflecting:)();
    v11 = v10;
    *(v7 + 56) = v8;
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v12 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer;
    v13 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer);
    if (v13)
    {
      [v13 invalidate];
    }

    v14 = v6;
    [v14 setAlpha_];
    [v14 setHidden_];
    [v14 setUserInteractionEnabled_];

    v15 = OUTLINED_FUNCTION_45_1();
    outlined bridged method (mbgnn) of @objc UILabel.text.setter(v15, v16, v17);
    OUTLINED_FUNCTION_20();
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    v19 = objc_opt_self();
    OUTLINED_FUNCTION_24();
    v20 = swift_allocObject();
    *(v20 + 16) = partial apply for closure #1 in MultiwayViewController.fadeInView(view:duration:);
    *(v20 + 24) = v18;
    v32 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v33 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = thunk for @escaping @callee_guaranteed () -> ();
    v31 = &block_descriptor_114;
    v21 = _Block_copy(&aBlock);
    v22 = v14;

    [v19 animateWithDuration:v21 animations:0 completion:0.25];
    _Block_release(v21);
    v23 = objc_opt_self();
    OUTLINED_FUNCTION_20();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = partial apply for closure #3 in MultiwayViewController.showOneToOneLivePhotosAlert(_:);
    v33 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v31 = &block_descriptor_61_2;
    v25 = _Block_copy(&aBlock);

    v26 = [v23 scheduledTimerWithTimeInterval:0 repeats:v25 block:3.0];

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    _Block_release(v25);
    v27 = *(v2 + v12);
    *(v2 + v12) = v26;
  }
}

void closure #53 in MultiwayViewController.init(activeCall:conversationController:bannerPresentationManager:defaults:features:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void MultiwayViewController.hideAlert()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v16, (v0 + v1), sizeof(v16));
  if (getEnumTag for TapInteraction.EventType(v16) != 1)
  {
    v2 = v16[17];
    if (v16[17])
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = partial apply for closure #1 in MultiwayViewController.hideAlert();
      *(v5 + 24) = v3;
      aBlock[4] = partial apply for closure #1 in DropdownMenuButton.primaryButton(action:text:color:);
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_421;
      v6 = _Block_copy(aBlock);
      v7 = v2;

      outlined init with copy of [CaptionSectioner.SpeakerSection]();

      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v13[4] = partial apply for closure #3 in MultiwayViewController.hideAlert();
      v13[5] = v8;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1107296256;
      v13[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v13[3] = &block_descriptor_427;
      v9 = _Block_copy(v13);
      v10 = v7;

      [v4 animateWithDuration:0x20000 delay:v6 options:v9 animations:0.15 completion:0.0];
      _Block_release(v9);
      _Block_release(v6);
      v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hideOneToOneLivePhotoAlertViewTimer);
      if (v11)
      {
        v12 = v11;
        [v12 invalidate];

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

      else
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }
    }
  }
}

void MultiwayViewController.resetCaptionsViewDragState()()
{
  MultiwayViewController.updateIsCaptionsViewDragEnabled()();
  v0 = MultiwayViewController.constraintController.getter();
  if (v0)
  {
    v4 = v0;
    v1 = &v0[OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout];
    v2 = *(v1 + 3);
    v3 = *(v1 + 4);
    __swift_project_boxed_opaque_existential_1(v1, v2);
    (*(v3 + 128))(v2, v3);
  }
}

void MultiwayViewController.showZoomControl()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[7];
    v3 = [v2 superview];
    if (v3)
    {
      v4 = v3;
      v5 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
      swift_beginAccess();
      v6 = MEMORY[0x1E69E7D40];
      v7 = *((*MEMORY[0x1E69E7D40] & **&v2[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView]) + 0x238);
      v8 = *(v0 + v5);
      v9 = v7();
      (*((*v6 & *v8) + 0x238))(v4, v2, v9);

      goto LABEL_9;
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Log.default);
  v9 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BBC58000, v9, v11, "PipZoomControl: Not able to add because of missing local participant view", v12, 2u);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
  }

LABEL_9:
}

void MultiwayViewController.hideZoomControl()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  if (getEnumTag for TapInteraction.EventType(__dst) == 1 || (v2 = [v1[7] superview]) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, &static Log.default);
    v7 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v7, v9, "PipZoomControl: Not able to remove because of missing local participant view", v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }
  }

  else
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
    swift_beginAccess();
    v5 = *(v0 + v4);
    v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x248);
    v7 = v5;
    v6(v3);
  }
}

void MultiwayViewController.hideZoomControlIfNeeded()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipZoomControl;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B8);
  v5 = v3;
  v6 = v4();

  if (v6)
  {
    MultiwayViewController.hideZoomControl()();
  }
}

uint64_t MultiwayViewController.nextScheduledUpdateInterval(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  if (!*(a1 + *(type metadata accessor for Participant(0) + 28)))
  {
    return 0;
  }

  _s15ConversationKit11ParticipantVWOcTm_16();
  v15 = 0.1;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 3u:
      goto LABEL_5;
    case 4u:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v19 = *(v18 + 48);
      outlined consume of Participant.CopresenceInfo?(*&v4[*(v18 + 64)], *&v4[*(v18 + 64) + 8]);
      outlined destroy of Participant.MediaInfo(&v4[v19]);
LABEL_5:
      (*(v6 + 8))(v4, v5);
      return 0;
    case 5u:
      (*(v6 + 32))(v11, v4, v5);
      Date.addingTimeInterval(_:)();
      Date.timeIntervalSinceNow.getter();
      v15 = v20;
      v21 = *(v6 + 8);
      v21(v8, v5);
      v21(v11, v5);
      goto LABEL_7;
    case 6u:
      goto LABEL_8;
    default:
      (*(v6 + 32))(v14, v4, v5);
      Date.addingTimeInterval(_:)();
      v16 = *(v6 + 8);
      v16(v14, v5);
      Date.timeIntervalSinceNow.getter();
      v15 = v17;
      v16(v11, v5);
LABEL_7:
      if (v15 <= 0.0)
      {
        return 0;
      }

LABEL_8:
      result = *&v15;
      break;
  }

  return result;
}

uint64_t closure #1 in MultiwayViewController.scheduleUpdate(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
  }

  v7 = Strong;
  v8 = *(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

  ConversationController.participant(with:)();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
  }

  _s15ConversationKit11ParticipantVWObTm_7();
  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v13 = 513;
    MultiwayViewController.conversationControllerDidUpdateRemoteParticipant(_:updateReason:)(v5, &v13);
  }

  return _s15ConversationKit11ParticipantVWOhTm_17();
}

BOOL MultiwayViewController.inCallConversationBannerHidable()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v30[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30[-v5];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30[-v8];
  v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v36, (v0 + v10), sizeof(v36));
  memcpy(v37, (v0 + v10), sizeof(v37));
  if (getEnumTag for TapInteraction.EventType(v37) == 1)
  {
    return 0;
  }

  v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 304);
  memcpy(v35, v36, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v35, &v31);
  if ((v13(ObjectType, v11) & 1) == 0)
  {
    v14 = v37[3];
    if ((InCallBannerHostViewController.menuPresented.getter() & 1) == 0)
    {
      v15 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_conversationControlsViewController;
      swift_beginAccess();
      v16 = *(v14 + v15);
      if (v16)
      {
        v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x480);
        v18 = v16;
        v17();
      }

      else
      {
        v19 = type metadata accessor for ConversationControlsRecipe();
        __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
      }

      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      v20 = type metadata accessor for ConversationControlsRecipe();
      if (__swift_getEnumTagSinglePayload(v6, 1, v20) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      }

      else
      {
        outlined init with copy of ConversationControlsType(v6, &v31);
        v21 = v34;
        outlined destroy of ConversationControlsType(&v31);
        _s15ConversationKit11ParticipantVWOhTm_17();
        if (v21 == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
          v22 = &_s15ConversationKit0A14ControlsRecipeVSgMd;
          v23 = v9;
          goto LABEL_26;
        }
      }

      outlined init with take of ConversationControlsRecipe?(v9, v3);
      if (__swift_getEnumTagSinglePayload(v3, 1, v20) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        goto LABEL_19;
      }

      outlined init with copy of ConversationControlsType(v3, &v31);
      if (v34)
      {
        if (v34 == 2)
        {
          outlined destroy of ConversationControlsType(&v31);
        }

        else if (v34 != 7 || v31 != 4 || (v24 = vorrq_s8(v32, v33), *&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL))))
        {
          outlined destroy of ConversationControlsType(&v31);
          _s15ConversationKit11ParticipantVWOhTm_17();
LABEL_19:
          v25 = v37[6];
          v26 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
          swift_beginAccess();
          if ((*(v25 + v26) & 0xFE) != 0x80)
          {
            v28 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
            swift_beginAccess();
            v29 = *(v25 + v28);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
            return v29 == 1;
          }

          goto LABEL_20;
        }
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
      v22 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd;
      v23 = v36;
LABEL_26:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, v22);
      return 1;
    }
  }

LABEL_20:
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  return 0;
}

void MultiwayViewController.restartAutoHideInCallControlsTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (MultiwayViewController.wantsStandardControls.getter())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    *v5 = static OS_dispatch_queue.main.getter();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
    v6 = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer;
      v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_inCallControlsDismissTimer);
      if (v8)
      {
        [v8 invalidate];
      }

      if (MultiwayViewController.inCallConversationBannerHidable()())
      {
        v9 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
        swift_beginAccess();
        memcpy(v20, v9, sizeof(v20));
        v10 = 10.0;
        if (getEnumTag for TapInteraction.EventType(v20) != 1)
        {
          v11 = v9[3];
          v12 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsType;
          swift_beginAccess();
          outlined init with copy of ConversationControlsType(v11 + v12, v19);
          v10 = ConversationControlsType.dismissTimerDuration(inCallControls:)(1);
          outlined destroy of ConversationControlsType(v19);
        }

        v13 = objc_opt_self();
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19[4] = partial apply for closure #1 in MultiwayViewController.restartAutoHideInCallControlsTimer();
        v19[5] = v14;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 1107296256;
        v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        v19[3] = &block_descriptor_398;
        v15 = _Block_copy(v19);

        v16 = [v13 scheduledTimerWithTimeInterval:0 repeats:v15 block:v10];
        _Block_release(v15);
        v17 = *(v1 + v7);
        *(v1 + v7) = v16;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in MultiwayViewController.restartAutoHideInCallControlsTimer()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v51 - v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (!MultiwayViewController.inCallConversationBannerHidable()())
    {
LABEL_5:

      return;
    }

    v13 = (&v12->isa + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memmove(v59, v13, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(v59) == 1)
    {
      LOBYTE(v55) = 0;
      MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v55, 252, 1);
      goto LABEL_5;
    }

    v53 = v10;
    v14 = v13[3];
    v15 = one-time initialization token for conversationControls;
    v16 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v7, &static Logger.conversationControls);
    v51 = v8;
    (*(v8 + 16))(v53, v17, v7);
    v18 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsType;
    swift_beginAccess();
    v52 = v16;
    outlined init with copy of ConversationControlsType(v16 + v18, &v55);
    switch(v58)
    {
      case 1:
      case 2:
        outlined destroy of ConversationControlsType(&v55);
        goto LABEL_11;
      case 3:
        outlined destroy of ConversationControlsType(&v55);
        goto LABEL_32;
      case 4:
      case 6:
        outlined destroy of ConversationControlsType(&v55);
        goto LABEL_19;
      case 5:
        goto LABEL_19;
      case 7:
        if (!(*(&v56 + 1) | v57 | v55 | v56 | *(&v55 + 1)))
        {
          goto LABEL_32;
        }

        v38 = *(&v56 + 1) | v57 | v56 | *(&v55 + 1);
        if (v55 == 1 && !v38)
        {
          goto LABEL_32;
        }

        v27 = v52;
        if (v55 == 2 && !v38)
        {
          if (([v12 axShouldDisableAutoHidingControls]& 1) != 0)
          {
            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.default.getter();
            v41 = os_log_type_enabled(v39, v40);
            v37 = v51;
            if (v41)
            {
              v42 = swift_slowAlloc();
              *v42 = 0;
              _os_log_impl(&dword_1BBC58000, v39, v40, "AX settings enabled, preventing dismissal of controls", v42, 2u);
              v27 = v52;
              MEMORY[0x1BFB23DF0](v42, -1, -1);
              v43 = v12;
LABEL_39:

              goto LABEL_40;
            }

            v43 = v27;
            v27 = v39;
            goto LABEL_38;
          }

          LOBYTE(v54[0]) = 0;
          MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v54, 252, 1);

LABEL_44:
          (*(v51 + 8))(v53, v7);
          return;
        }

        if (v55 == 3 && !v38 || v55 == 4 && !v38)
        {
          goto LABEL_22;
        }

        if (((v55 - 5) > 3 || v38) && (v55 == 9 && !v38 || v55 == 10 && !v38 || v55 == 11 && !v38 || v55 == 12 && !v38 || v55 == 13 && !v38 || ((v47 = v55 & 0xFFFFFFFFFFFFFFFELL, v55 != 18) ? (v48 = v47 == 16) : (v48 = 1), !v48 ? (v49 = v47 == 14) : (v49 = 1), (!v49 || v38) && (v55 == 19 && !v38 || (v55 != 24 ? (v50 = (v55 & 0xFFFFFFFFFFFFFFFCLL) == 20) : (v50 = 1), (!v50 || v38) && (v55 == 25 && !v38 || v55 == 26 && !v38 || v55 == 27 && !v38))))))
        {
LABEL_32:
          v37 = v51;
          v27 = v52;
        }

        else
        {
LABEL_19:
          v27 = v52;
          v28 = v52;
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v54[0] = v32;
            *v31 = 136315138;
            outlined init with copy of ConversationControlsType(v27 + v18, &v55);
            v33 = specialized >> prefix<A>(_:)(&v55);
            v35 = v34;
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v55, &_s15ConversationKit0A12ControlsTypeOSgMd);
            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v54);
            v27 = v52;

            *(v31 + 4) = v36;
            _os_log_impl(&dword_1BBC58000, v29, v30, "presentedBannerDismissalTimer %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v32);
            MEMORY[0x1BFB23DF0](v32, -1, -1);
            MEMORY[0x1BFB23DF0](v31, -1, -1);
          }

LABEL_22:
          v37 = v51;
        }

        if (([v12 axShouldDisableAutoHidingControls]& 1) == 0)
        {
          LOBYTE(v55) = 0;
          MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v55, 252, 1);

LABEL_40:
          (*(v37 + 8))(v53, v7);
          return;
        }

        v39 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1BBC58000, v39, v44, "AX settings enabled, preventing dismissal of controls", v45, 2u);
          MEMORY[0x1BFB23DF0](v45, -1, -1);
          v43 = v27;
          v27 = v12;
          goto LABEL_39;
        }

        v43 = v39;
LABEL_38:
        v39 = v12;
        goto LABEL_39;
      default:
LABEL_11:
        v19 = MultiwayViewController.conversationControlsManager.getter();
        if (!v19)
        {
          goto LABEL_43;
        }

        v20 = v19;
        v21 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0xAC8))();

        if ((v21 & 1) == 0)
        {
          goto LABEL_43;
        }

        swift_beginAccess();
        outlined init with copy of [CaptionSectioner.SpeakerSection]();
        v22 = *(&v56 + 1);
        if (*(&v56 + 1))
        {
          v23 = v57;
          __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
          (*(v23 + 8))(v22, v23);
          __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
          __swift_destroy_boxed_opaque_existential_1(&v55);
          if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
          {
            (*(v4 + 32))(v6, v2, v3);
            v24 = MultiwayViewController.conversationControlsManager.getter();
            if (v24)
            {
              v25 = v24;
              v26 = *(v24 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator);

              ConversationControlsNoticeCoordinator.noticeDismissed(noticeUUID:dismissContext:)();
            }

            (*(v4 + 8))(v6, v3);
LABEL_43:
            v57 = 0;
            v55 = 0u;
            v56 = 0u;
            v58 = 7;
            v46 = v52;
            InCallBannerHostViewController.updateConversationControlsViewController(type:forceUpdate:)(&v55, 0);

            outlined destroy of ConversationControlsType(&v55);
            goto LABEL_44;
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v55, &_s15ConversationKit6Notice_pSgMd);
          __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd);
        goto LABEL_43;
    }
  }
}

uint64_t closure #1 in MultiwayViewController.activeRemoteParticipants(in:)(uint64_t a1)
{
  v2 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  if (*(a1 + *(type metadata accessor for Participant(0) + 28)))
  {
    _s15ConversationKit11ParticipantVWOcTm_16();
    v12 = 1;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
        (*(v6 + 8))(v4, v5);
        goto LABEL_5;
      case 3u:
        goto LABEL_7;
      case 4u:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v17 = *(v16 + 48);
        outlined consume of Participant.CopresenceInfo?(*&v4[*(v16 + 64)], *&v4[*(v16 + 64) + 8]);
        v12 = Participant.isActiveWithAV.getter();
        outlined destroy of Participant.MediaInfo(&v4[v17]);
LABEL_7:
        (*(v6 + 8))(v4, v5);
        return v12 & 1;
      case 5u:
        (*(v6 + 32))(v8, v4, v5);
        Date.timeIntervalSince(_:)();
        v14 = v18;
        (*(v6 + 8))(v8, v5);
        v15 = 7.0;
        goto LABEL_9;
      case 6u:
        return v12 & 1;
      default:
        (*(v6 + 32))(v11, v4, v5);
        Date.timeIntervalSince(_:)();
        v14 = v13;
        (*(v6 + 8))(v11, v5);
        v15 = 45.0;
LABEL_9:
        v12 = v14 < v15;
        break;
    }
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12 & 1;
}

BOOL MultiwayViewController.isPresentingEffectsBrowser.getter()
{
  v0 = MultiwayViewController.effectsBrowserViewController.getter();
  v1 = [v0 parentViewController];

  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t MultiwayViewController.shouldEnableVideoMessagingForCurrentState()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  if (((*(v2 + 600))(ObjectType, v2) & 1) == 0 || (v4 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent), swift_beginAccess(), memcpy(__dst, v4, sizeof(__dst)), getEnumTag for TapInteraction.EventType(__dst) == 1) || (memcpy(v14, v4, sizeof(v14)), getEnumTag for TapInteraction.EventType(v14) == 1) || (v5 = v4[6], v6 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState, swift_beginAccess(), v7 = *(v5 + v6), v7 >> 6 < 2) || v7 == 128 || (v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_call, swift_beginAccess(), v9 = *(v8 + 8), v10 = swift_getObjectType(), v11 = *(v9 + 544), swift_unknownObjectRetain(), LOBYTE(v8) = v11(v10, v9), swift_unknownObjectRelease(), (v8 & 1) == 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = ConversationController.isRemoteParticipantEligibleForVideoMessaging.getter();
  }

  return v12 & 1;
}

void MultiwayViewController.updateMostActiveParticipantTileForPiP(with:cornerRadius:)(uint64_t a1, int a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v66, (v4 + v14), sizeof(v66));
  memcpy(v67, (v4 + v14), 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v67) == 1)
  {
    goto LABEL_4;
  }

  memcpy(v65, v67, sizeof(v65));
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit11ParticipantVSgMd);
LABEL_4:
    v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_lastUpdatedMostActiveParticipantViewForPiP;
    v16 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_lastUpdatedMostActiveParticipantViewForPiP);
    v17 = v16;
    MultiwayViewController.resetParticipantViewForPiP(_:)(v16);

    v18 = *(v4 + v15);
    *(v4 + v15) = 0;

    return;
  }

  v60 = a2;
  v58 = a1;
  _s15ConversationKit11ParticipantVWObTm_7();
  memcpy(v64, v66, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v64, v63);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  v57 = xmmword_1BC4BA940;
  *(v19 + 16) = xmmword_1BC4BA940;
  *v63 = a3;
  v20 = String.init<A>(reflecting:)();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v56 = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 64) = v56;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v59 = *(v11 + 28);
  if (*&v13[v59])
  {
    ParticipantGridViewController.participantViews.getter();
    v24 = v23;
    MEMORY[0x1EEE9AC00](v23);
    *(&v55 - 2) = v13;
    specialized Sequence.first(where:)(partial apply for closure #1 in MultiwayViewController.updateMostActiveParticipantTileForPiP(with:cornerRadius:), (&v55 - 4), v24);
    v26 = v25;
  }

  else
  {
    v26 = *(v67[7] + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_participantView);
    v27 = v26;
  }

  v28 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_lastUpdatedMostActiveParticipantViewForPiP;
  v29 = *(v4 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_lastUpdatedMostActiveParticipantViewForPiP);
  if (!v29)
  {
    v34 = 0;
    if (!v26)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!v26 || (type metadata accessor for ParticipantView(), v30 = v29, v31 = v26, v55 = v13, v32 = v31, v33 = static NSObject.== infix(_:_:)(), v30, v32, v13 = v55, v29 = *(v4 + v28), v34 = v29, (v33 & 1) == 0))
  {
LABEL_15:
    v35 = v29;
    MultiwayViewController.resetParticipantViewForPiP(_:)(v29);

    v34 = *(v4 + v28);
  }

LABEL_16:
  *(v4 + v28) = v26;
  v36 = v26;

  if (v26)
  {
    [v36 setAlpha_];
  }

  if (*&v13[v59])
  {
    v37 = v67[7];
    v38 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden;
    swift_beginAccess();
    *(v37 + v38) = 0;
  }

  else
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v57;
    LOBYTE(v63[0]) = a3 < 1.0;
    v40 = String.init<A>(reflecting:)();
    v41 = v56;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = v41;
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v43 = v67[7];
    v44 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden;
    swift_beginAccess();
    *(v43 + v44) = a3 < 1.0;
  }

  v45 = v60;
  LocalParticipantView.updateHiding()();
  v46 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  swift_beginAccess();
  if (!*(v4 + v46))
  {
    if (v26)
    {
      v47 = v36;
      ParticipantView.shouldOverrideShadowHidden.setter(1);
    }

    v48 = objc_opt_self();
    v49 = swift_allocObject();
    *(v49 + 16) = v26;
    v63[4] = partial apply for closure #2 in MultiwayViewController.updateMostActiveParticipantTileForPiP(with:cornerRadius:);
    v63[5] = v49;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 1107296256;
    v63[2] = thunk for @escaping @callee_guaranteed () -> ();
    v63[3] = &block_descriptor_715;
    v50 = _Block_copy(v63);
    v51 = v36;

    [v48 animateWithDuration:0 delay:v50 options:0 animations:0.15 completion:0.0];
    _Block_release(v50);
    if (v45)
    {
      goto LABEL_23;
    }

LABEL_27:
    v52 = objc_opt_self();
    v53 = swift_allocObject();
    memcpy((v53 + 16), v65, 0xE8uLL);
    *(v53 + 248) = v58;
    v62[4] = partial apply for closure #3 in MultiwayViewController.updateMostActiveParticipantTileForPiP(with:cornerRadius:);
    v62[5] = v53;
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 1107296256;
    v62[2] = thunk for @escaping @callee_guaranteed () -> ();
    v62[3] = &block_descriptor_709;
    v54 = _Block_copy(v62);
    memcpy(v63, v66, sizeof(v63));
    outlined init with copy of MultiwayViewController.ViewContent(v63, &v61);

    [v52 _animateUsingDefaultTimingWithOptions_animations_completion_];

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    _Block_release(v54);
    goto LABEL_28;
  }

  if ((v45 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
LABEL_28:
  _s15ConversationKit11ParticipantVWOhTm_17();
}

uint64_t closure #1 in MultiwayViewController.updateMostActiveParticipantTileForPiP(with:cornerRadius:)(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v24 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  swift_beginAccess();
  v14 = *(type metadata accessor for Participant(0) + 20);
  v25 = v3;
  (*(v3 + 16))(v13, v26 + v14, v2);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v2);
  v15 = *(v6 + 56);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) != 1)
  {
    v17 = v24;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(&v8[v15], 1, v2) != 1)
    {
      v18 = v25;
      v19 = v23;
      (*(v25 + 32))(v23, &v8[v15], v2);
      lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v18 + 8);
      v20(v19, v2);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd);
      v20(v17, v2);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation4UUIDVSgMd);
      return v16 & 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd);
    (*(v25 + 8))(v17, v2);
    goto LABEL_6;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd);
  if (__swift_getEnumTagSinglePayload(&v8[v15], 1, v2) != 1)
  {
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation4UUIDVSg_ADtMd);
    v16 = 0;
    return v16 & 1;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation4UUIDVSgMd);
  v16 = 1;
  return v16 & 1;
}

void *MultiwayViewController.resetParticipantViewForPiP(_:)(void *result)
{
  if (result)
  {
    v1 = result;
    [result setAlpha_];
    v2 = ConversationController.isOneToOneModeEnabled.getter();
    v3 = 0.0;
    if ((v2 & 1) == 0)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      (*(*static Defaults.shared + 400))();
    }

    [v1 _setCornerRadius_];
    return ParticipantView.shouldOverrideShadowHidden.setter(0);
  }

  return result;
}

uint64_t closure #2 in MultiwayViewController.updateMostActiveParticipantTileForPiP(with:cornerRadius:)(uint64_t result)
{
  if (result)
  {
    return ParticipantView.shouldOverrideShadowHidden.setter(0);
  }

  return result;
}

void closure #3 in MultiwayViewController.updateMostActiveParticipantTileForPiP(with:cornerRadius:)(double a1)
{
  v2 = MostActiveParticipantViewController.currentParticipantView.getter();
  v3 = OBJC_IVAR____TtC15ConversationKit15ParticipantView_customCornerRadius;
  swift_beginAccess();
  *&v2[v3] = a1;
  ParticipantView.customCornerRadius.didset();
}

Swift::Void __swiftcall MultiwayViewController.toggleVideoMute(shouldPauseIfStopped:)(Swift::Bool shouldPauseIfStopped)
{
  v3 = v1;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_12_3();
  v8(v7);
  _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_9_37();
  v10(v9);
  if (v6)
  {
    v11 = *(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    OUTLINED_FUNCTION_25_54();
    swift_beginAccess();
    if (*(v11 + 16) < 0)
    {
      specialized EffectsHandler.wipeEffectsState()();
    }

    ConversationController.toggleLocalVideo(shouldPauseIfStopped:)(shouldPauseIfStopped);
    MultiwayViewController.updateShouldShowReactionPickerTipView()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.toggleAudioMute()(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_159_3();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_12_3();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_9_37();
  result = v8(v7);
  if (v4)
  {
    return a1(result);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MultiwayViewController.toggleCinematicFraming()()
{
  v1 = OUTLINED_FUNCTION_277_1();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    if (MultiwayViewController.effectsViewController.getter())
    {
      OUTLINED_FUNCTION_77_2();
      type metadata accessor for CameraViewController();
      OUTLINED_FUNCTION_108_0();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        MultiwayViewController.localVideoProvider.getter();
        v10 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v11 = OUTLINED_FUNCTION_182();
        v13 = v12(v11, v10);
        __swift_destroy_boxed_opaque_existential_1(v21);
        if ((v13 & 1) == 0 && [v9 effectsState] == 2)
        {
          MultiwayViewController.resetEffectsState()();
        }
      }
    }

    ConversationController.toggleCinematicFraming()();
    v14 = MultiwayViewController.inCallControlsViewController.getter();
    if (v14)
    {
      v15 = v14;
      MultiwayViewController.localVideoProvider.getter();
      v16 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v17 = OUTLINED_FUNCTION_28_0();
      v19 = v18(v17, v16);
      v20 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_cinematicFramingIsEnabled;
      OUTLINED_FUNCTION_3_5();
      v15[v20] = v19 & 1;
      InCallControlsViewController.cinematicFramingIsEnabled.didset();

      __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MultiwayViewController.resetEffectsState()()
{
  MultiwayViewController.didRequestMemojiPicker.setter(0);
  v0 = MultiwayViewController.effectsViewController.getter();
  if (v0)
  {

    MultiwayViewController.removeAllEffectsObjects()();
  }
}

Swift::Void __swiftcall MultiwayViewController.muteVideo()()
{
  OUTLINED_FUNCTION_277_1();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    specialized EffectsHandler.wipeEffectsState()();
    ConversationController.stopLocalVideoForMiniWindow()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall MultiwayViewController.openMessagesConversation()()
{
  OUTLINED_FUNCTION_277_1();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    type metadata completion function for SyncedScreeningAlphaGradientView();
    ConversationController.openMessagesConversation(completion:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.viewWillTransition(to:with:)(void *a1)
{
  OUTLINED_FUNCTION_0_91();
  v24 = v1;
  ObjectType = swift_getObjectType();
  v4 = OUTLINED_FUNCTION_3_109();
  objc_msgSendSuper2(v5, v6, a1, v4);
  result = MultiwayViewController.layoutIdiom.getter(&aBlock);
  if ((aBlock & 1) == 0)
  {
    OUTLINED_FUNCTION_20();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_95_3(v8);
    swift_unknownObjectWeakInit();
    v22 = partial apply for closure #1 in MultiwayViewController.viewWillTransition(to:with:);
    v23 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v21 = &block_descriptor_65;
    v9 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_20();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v22 = partial apply for closure #2 in MultiwayViewController.viewWillTransition(to:with:);
    v23 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v21 = &block_descriptor_71_0;
    v11 = _Block_copy(&aBlock);
    v12 = v1;
    OUTLINED_FUNCTION_182();

    [a1 animateAlongsideTransition:v9 completion:v11];
    _Block_release(v11);
    _Block_release(v9);
    result = OUTLINED_FUNCTION_6_11();
    if (a1[3])
    {
      v13 = OUTLINED_FUNCTION_201_3();
      outlined init with copy of IDSLookupManager(v13, v14);
      v15 = v22;
      __swift_project_boxed_opaque_existential_1(&aBlock, v21);
      v16 = OUTLINED_FUNCTION_28_0();
      v17(v16, v15);
      return __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }
  }

  return result;
}

void closure #1 in MultiwayViewController.viewWillTransition(to:with:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12[0] = v6;
      *v5 = 136315138;
      v7 = String.init<A>(reflecting:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v12);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1BBC58000, v3, v4, "viewWillTransition to device orientation value: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      MultiwayViewController.updateViewConstraints()();
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.toggleLocalParticipantEffectsButton()()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_159_3();
  v1 = type metadata accessor for Participant(v0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_191_0(v14);
  OUTLINED_FUNCTION_191_0(v15);
  OUTLINED_FUNCTION_46_26(v15);
  if (!v3)
  {
    v4 = v15[6];
    v5 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v6 = *(v4 + v5) >> 6;
    if (v6)
    {
      if (v6 == 1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        OUTLINED_FUNCTION_7_5();
        _s15ConversationKit11ParticipantVWOcTm_16();
        memcpy(v13, v14, 0xE8uLL);
        outlined init with copy of MultiwayViewController.ViewContent(v13, v12);
        v7 = OUTLINED_FUNCTION_60_16();
        MultiwayViewController.focus(on:shouldBringLocalParticipantViewToFront:)(v7, v8);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
      }

      else
      {
        v9 = v16;
        if (v16)
        {
          v10 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x90);
          outlined init with copy of [CaptionSectioner.SpeakerSection]();
          v11 = v9;
          LOBYTE(v10) = v10();

          if ((v10 & 1) != 0 && *(v4 + v5) >= 0x81u)
          {
            specialized EffectsHandler.wipeEffectsState()();
          }
        }

        else
        {
          memcpy(v13, v14, 0xE8uLL);
          outlined init with copy of MultiwayViewController.ViewContent(v13, v12);
        }

        MultiwayViewController.didRequestMemojiPicker.setter(1);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }
    }
  }

  OUTLINED_FUNCTION_49();
}

uint64_t MultiwayViewController.focus(on:shouldBringLocalParticipantViewToFront:)(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v64) = a2;
  v70 = a1;
  v4 = type metadata accessor for UUID();
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v65 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v23 = static OS_dispatch_queue.main.getter();
  (*(v21 + 104))(v23, *MEMORY[0x1E69E8020], v20);
  v24 = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v25 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v73, (v3 + v25), sizeof(v73));
  memcpy(v74, (v3 + v25), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v74);
  if (result == 1)
  {
    return result;
  }

  v62 = v6;
  v27 = type metadata accessor for Participant(0);
  v28 = *(v69 + 16);
  v28(v19, v70 + *(v27 + 20), v4);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v4);
  v29 = v74[1];
  swift_beginAccess();
  v60 = v29;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v27);
  v61 = v27;
  if (EnumTagSinglePayload == 1)
  {
    memcpy(v72, v73, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v72, v71);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit11ParticipantVSgMd);
    v31 = v68;
    v32 = v68;
    v33 = 1;
  }

  else
  {
    v34 = &v12[*(v27 + 20)];
    v31 = v68;
    v28(v68, v34, v4);
    memcpy(v72, v73, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v72, v71);
    _s15ConversationKit11ParticipantVWOhTm_17();
    v32 = v31;
    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v32, v33, 1, v4);
  v35 = v67;
  v36 = *(v66 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v37 = __swift_getEnumTagSinglePayload(v35, 1, v4);
  v38 = v62;
  if (v37 != 1)
  {
    v66 = v3;
    v39 = v65;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    if (__swift_getEnumTagSinglePayload(v35 + v36, 1, v4) != 1)
    {
      v57 = v69;
      (*(v69 + 32))(v38, v35 + v36, v4);
      lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      v59 = *(v57 + 8);
      v59(v38, v4);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
      v59(v39, v4);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_s10Foundation4UUIDVSgMd);
      v3 = v70;
      if (v58)
      {
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

LABEL_12:
      if ((Participant.isActive.getter() & 1) == 0)
      {
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

      if (MultiwayViewController.sensitiveContentController.getter())
      {

        swift_beginAccess();
        if (static SensitiveContentController.shieldState != 1)
        {
          return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        }
      }

      MultiwayViewController.unfocusFocusedParticipant()();
      if (one-time initialization token for conversationKit == -1)
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1BC4BA940;
        v41 = v63;
        _s15ConversationKit11ParticipantVWOcTm_16();
        v42 = v61;
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v61);
        specialized >> prefix<A>(_:)();
        v44 = v43;
        v46 = v45;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v41, &_s15ConversationKit11ParticipantVSgMd);
        *(v40 + 56) = MEMORY[0x1E69E6158];
        *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v40 + 32) = v44;
        *(v40 + 40) = v46;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        ParticipantGridViewController.focus(on:)(v3, v47, v48, v49, v50, v51, v52, v53, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]);
        if ((v64 & 0x100000000) != 0)
        {
          v54 = v74[7];
          v55 = v74[7];
          MultiwayViewController.bringSubviewToFront(_:)(v54);
        }

        LOBYTE(v71[0]) = 0;
        if (*(v3 + *(v42 + 28)))
        {
          v56 = 4294967292;
        }

        else
        {
          v56 = 4294967168;
        }

        MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v71, v56, 1);
        MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(1);
        MultiwayViewController.needsUpdatePresentationContexts.setter(1);
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

LABEL_26:
      swift_once();
      goto LABEL_16;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
    (*(v69 + 8))(v39, v4);
LABEL_11:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_s10Foundation4UUIDVSg_ADtMd);
    v3 = v70;
    goto LABEL_12;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s10Foundation4UUIDVSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
  if (__swift_getEnumTagSinglePayload(v35 + v36, 1, v4) != 1)
  {
    goto LABEL_11;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_s10Foundation4UUIDVSgMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
}

uint64_t closure #1 in MultiwayViewController.updateLocalParticipantControls()(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v7 = *(v6 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
  v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xF0);
  v9 = v7;
  LOBYTE(v8) = v8();

  if (VideoMessageController.State.rawValue.getter(v8) == 0xD000000000000014 && 0x80000001BC4F1C50 == v10)
  {

    return 0;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return 0;
  }

  if (!ConversationController.hasRingingCalls.getter())
  {
    if (a2 < 0)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v13 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(v6 + v13, v21);
  v14 = v22;
  v15 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v16 = *((*(v15 + 8))(v14, v15) + 16);

  __swift_destroy_boxed_opaque_existential_1(v21);
  result = 0;
  if (v16 <= 1 && a2 < 0)
  {
LABEL_14:
    v18 = *(a3 + 16);
    v19 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
    swift_beginAccess();
    if (*(v18 + v19) == 1)
    {
      v20 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didRequestMemojiPicker;
      swift_beginAccess();
      return *(a1 + v20);
    }

    return 0;
  }

  return result;
}

uint64_t MultiwayViewController.unfocusFocusedParticipant()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32[-v9];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = _dispatchPreconditionTest(_:)();
  v17 = *(v12 + 8);
  v16 = (v12 + 8);
  v17(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v36, (v1 + v18), sizeof(v36));
  memcpy(v37, (v1 + v18), 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v37);
  if (result == 1)
  {
    return result;
  }

  v16 = v37;
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v14 = type metadata accessor for Participant(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v14) != 1)
  {
    v23 = *(v14 + 5);
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 16))(v10, &v7[v23], v24);
    memcpy(v35, v36, 0xE8uLL);
    outlined init with copy of MultiwayViewController.ViewContent(v35, &v34);
    _s15ConversationKit11ParticipantVWOhTm_17();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v24);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_6:
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      active = MultiwayViewController.mostActiveParticipants.getter();
      ParticipantGridViewController.defocus(to:)(active);

      __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
      ParticipantGridViewController.select(_:forFocusing:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
      v26 = v16[7];
      v27 = v26;
      MultiwayViewController.bringSubviewToFront(_:)(v26);

      v28 = MultiwayViewController.localParticipantCornerToUse.getter();
      v29 = v16[6];
      v30 = OBJC_IVAR___CNKFaceTimeConstraintsController_floatingControlsState;
      swift_beginAccess();
      if (*(v29 + v30))
      {
        v31 = v28 | 0x40;
      }

      else
      {
        v31 = v28;
      }

      v33 = 0;
      MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(&v33, v31, 1);
      MultiwayViewController.needsUpdatePresentationContexts.setter(1);
      v21 = &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd;
      v22 = v36;
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, v21);
    }

LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd);
  v20 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  v21 = &_s10Foundation4UUIDVSgMd;
  v22 = v10;
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, v21);
}

Swift::Void __swiftcall MultiwayViewController.effectsAvailabilityDidChange(_:)(Swift::Bool a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = OUTLINED_FUNCTION_13_12();
  *(v3 + 16) = xmmword_1BC4BA940;
  v4 = a1;
  LOBYTE(v13[0]) = a1;
  v5 = String.init<A>(reflecting:)();
  v7 = v6;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_272_1();

  v8 = v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_146_3(v13);
  OUTLINED_FUNCTION_46_26(v13);
  if (!v9)
  {
    v10 = *(v8 + 16);
    v11 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
    OUTLINED_FUNCTION_3_5();
    v10[v11] = v4;
    v12 = v10;
    MultiwayViewController.updateLocalParticipantControls()();
  }
}

Swift::Void __swiftcall MultiwayViewController.hideEffectsBrowser()()
{
  v0 = MultiwayViewController.effectsBrowserViewController.getter();
  if (v0)
  {
    v6 = v0;
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = MultiwayViewController.effectsViewController.getter();
      if (v3)
      {
        v4 = v3;
        objc_opt_self();
        OUTLINED_FUNCTION_170();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          [v5 resign];
        }
      }

      [v2 hideBrowserAnimated:0 completion:0];
    }
  }
}

uint64_t MultiwayViewController.localParticipantCornerToUse.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - v3 + 88;
  if ((ConversationController.isOneToOneModeEnabled.getter() & 1) == 0)
  {
    v11 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(v15, v11, sizeof(v15));
    if (getEnumTag for TapInteraction.EventType(v15) == 1)
    {
      v12 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
    }

    else
    {
      swift_beginAccess();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      v13 = type metadata accessor for Participant(0);
      if (__swift_getEnumTagSinglePayload(v4, 1, v13) != 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
        goto LABEL_2;
      }
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit11ParticipantVSgMd);
    return static MultiwayViewConstraintsController.MultiwayCorner.defaultCorner.getter();
  }

LABEL_2:
  if (static Platform.current.getter() == 2)
  {
    return static MultiwayViewConstraintsController.MultiwayCorner.defaultCorner.getter();
  }

  v5 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v15, v5, sizeof(v15));
  if (getEnumTag for TapInteraction.EventType(v15) == 1 || (v6 = v5[6], v7 = OBJC_IVAR___CNKFaceTimeConstraintsController_mostRecentLocalParticipantCorner, swift_beginAccess(), result = *(v6 + v7), result == 4))
  {
    v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
    ObjectType = swift_getObjectType();
    return (*(v9 + 576))(ObjectType, v9);
  }

  return result;
}

uint64_t MultiwayViewController.localParticipantCornerSize(for:viewContent:)(uint64_t a1, const void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_16();
  v7 = Participant.isActiveWithVideo.getter();
  _s15ConversationKit11ParticipantVWOhTm_17();
  if ((v7 & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_10;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35[0] = v13;
    *v12 = 136315138;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v35);

    *(v12 + 4) = v16;
    v17 = "localParticipantCornerSize: localParticipant is not active with video, using .regular(corner: %s";
    goto LABEL_9;
  }

  if ((MultiwayViewController.wantsStandardControls.getter() & 1) != 0 && (memcpy(v35, a2, 0xE8uLL), getEnumTag for TapInteraction.EventType(v35) != 1))
  {
    v18 = v35[6];
    v19 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    swift_beginAccess();
    v8 = 6u >> (*(v18 + v19) & 7);
  }

  else
  {
    v8 = 0;
  }

  if ((*(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState) & 1) == 0)
  {
    v20 = *(v3 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isLocalReactionActive);
    if ((v8 | v20))
    {
      goto LABEL_15;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
LABEL_10:

      return a1;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34[0] = v13;
    *v12 = 136315138;
    v31 = String.init<A>(reflecting:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v34);

    *(v12 + 4) = v33;
    v17 = "localParticipantCornerSize: using .regular(corner: %s) since isShowingControls=false and isPreviewingLocalReaction=false";
LABEL_9:
    _os_log_impl(&dword_1BBC58000, v10, v11, v17, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
    goto LABEL_10;
  }

  LOBYTE(v20) = 1;
LABEL_15:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34[0] = v25;
    *v24 = 136315650;
    v26 = String.init<A>(reflecting:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v34);

    *(v24 + 4) = v28;
    *(v24 + 12) = 1024;
    *(v24 + 14) = v8 & 1;
    *(v24 + 18) = 1024;
    *(v24 + 20) = v20 & 1;
    _os_log_impl(&dword_1BBC58000, v22, v23, "localParticipantCornerSize: using .info(corner: %s) since isShowingControls=%{BOOL}d and isPreviewingLocalReaction=%{BOOL}d", v24, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1BFB23DF0](v25, -1, -1);
    MEMORY[0x1BFB23DF0](v24, -1, -1);
  }

  return a1 | 0x40;
}

void closure #1 in MultiwayViewController.registerCaptioningStateObservers()(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v1;
    v6 = v2;
    MultiwayViewController.onCaptioningStateDidChange(_:)(&v5);
  }
}

void MultiwayViewController.onCaptioningStateDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);

  CaptioningStateManager.isCaptioningEnabled.getter();

  if (v4 == 1)
  {
    if (v3 == 1)
    {

      MultiwayViewController.promptForCaptionsSpeechModelFetch()();
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callDetailsCoordinator);
      if (v6)
      {
        v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x88);
        v8 = v6;
        v7();
      }

      v9 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
      swift_beginAccess();
      memcpy(__dst, v9, sizeof(__dst));
      if (getEnumTag for TapInteraction.EventType(__dst) != 1)
      {
        v10 = v9[4];
        if (v10)
        {
          v11 = v9[5];
          ObjectType = swift_getObjectType();
          v13 = *(v11 + 128);
          v14 = v10;
          v13(ObjectType, v11);
        }
      }

      specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(2);
    }
  }

  else
  {
    v5 = MultiwayViewController.captionsViewController.getter();
    if (v5)
    {
      v15 = v5;
      CaptionsViewController.languageModelDownloadingProgress.setter();
    }
  }
}

void MultiwayViewController.promptForCaptionsSpeechModelFetch()()
{
  type metadata accessor for PlatformAlert();
  v0 = objc_opt_self();
  v1 = [v0 conversationKit];
  v32._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001BC51CED0;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v32);

  v6 = [v0 conversationKit];
  v33._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000023;
  v7._object = 0x80000001BC51CEF0;
  v8.value._countAndFlagsBits = 0x61737265766E6F43;
  v8.value._object = 0xEF74694B6E6F6974;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v33);

  v11 = static PlatformAlert.create(with:message:)(v5._countAndFlagsBits, v5._object, v10._countAndFlagsBits, v10._object);

  if (v11)
  {
    v12 = [v0 conversationKit];
    v34._object = 0xE000000000000000;
    v13._object = 0x80000001BC51CF20;
    v13._countAndFlagsBits = 0xD000000000000016;
    v14.value._countAndFlagsBits = 0x61737265766E6F43;
    v14.value._object = 0xEF74694B6E6F6974;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0;
    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v34);

    v30[0] = 0;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = *(*v11 + 328);

    v18(v16._countAndFlagsBits, v16._object, v30, partial apply for closure #1 in MultiwayViewController.promptForCaptionsSpeechModelFetch(), v17);

    v19 = [v0 conversationKit];
    v35._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0x4C45434E4143;
    v20._object = 0xE600000000000000;
    v21.value._countAndFlagsBits = 0x61737265766E6F43;
    v21.value._object = 0xEF74694B6E6F6974;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v35._countAndFlagsBits = 0;
    v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v35);

    v30[0] = 2;
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    v25 = v29;
    v18(v23._countAndFlagsBits, v23._object, v30, partial apply for closure #2 in MultiwayViewController.promptForCaptionsSpeechModelFetch(), v24);

    (*(*v11 + 336))(0);
  }

  else
  {

    CaptioningStateManager.setCaptioningEnabled(_:)(0);

    v26 = MultiwayViewController.captionsViewController.getter();
    if (v26)
    {
      v27 = v26;
      v28 = direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked;
      swift_beginAccess();
      v27[v28] = 0;
    }
  }
}

uint64_t closure #1 in MultiwayViewController.promptForCaptionsSpeechModelFetch()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MultiwayViewController.captionsViewController.getter();

    if (v2)
    {
      CaptionsViewController.languageModelDownloadingProgress.setter();
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    CaptioningStateManager.fetchSpeechModel()();
  }

  return result;
}

uint64_t closure #2 in MultiwayViewController.promptForCaptionsSpeechModelFetch()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v0 = MultiwayViewController.captionsViewController.getter();
  if (v0)
  {
    v1 = v0;
    v2 = direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked;
    swift_beginAccess();
    v1[v2] = 0;
  }

  CaptioningStateManager.setCaptioningEnabled(_:)(0);
}

Swift::Void __swiftcall MultiwayViewController.implementNewCaptionsState(newLayoutState:newRecognizerState:)(ConversationKit::CaptionsLayoutState newLayoutState, Swift::Bool newRecognizerState)
{
  v4 = *newLayoutState;
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v6 = OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v7 = *(v5 + v6);
  ConversationController.captionsRecognizerShouldBeRunning.setter();
  v24 = v4;
  MultiwayViewController.updateCaptionsLayoutState(_:)(&v24);
  v8 = *(v5 + v6);
  if (v7 == v8)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_110_7();
    }

    v16 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v16, logger);
    v11 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109376;
      *(v18 + 4) = newRecognizerState;
      *(v18 + 8) = 1024;
      *(v18 + 10) = v8;
      OUTLINED_FUNCTION_219();
      _os_log_impl(v19, v20, v21, v22, v23, 0xEu);
      OUTLINED_FUNCTION_18();
    }
  }

  else
  {
    v9 = MEMORY[0x1E69D8E28];
    if (*(v5 + v6))
    {
      v9 = MEMORY[0x1E69D8E20];
    }

    v10 = *v9;
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    OUTLINED_FUNCTION_3_0();
    CFNotificationCenterPostNotification(v12, v13, v14, v15, 1u);
  }
}

void MultiwayViewController.updateCaptionsLayoutState(_:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = MultiwayViewController.constraintController.getter();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
    swift_beginAccess();
    v6 = v4[v5];

    if (v2 == 3)
    {
      if (v6 == 3)
      {
        return;
      }
    }

    else if (v6 != 3 && v2 == v6)
    {
      return;
    }
  }

  else if (v2 == 3)
  {
    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315394;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v23);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = MultiwayViewController.constraintController.getter();
    if (v17)
    {
      v18 = v17;
      swift_beginAccess();

      v19 = String.init<A>(reflecting:)();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v19 = 7104878;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v23);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_1BBC58000, v10, v11, "updateCaptionsLayoutState to %s from %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v13, -1, -1);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
  }

  swift_unknownObjectWeakInit();
  specialized closure #1 in MultiwayViewController.updateCaptionsLayoutState(_:)(&v23, v2);
  MEMORY[0x1BFB23F10](&v23);
}

void specialized closure #1 in MultiwayViewController.updateCaptionsLayoutState(_:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v54 - v4 + 80;
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = a2;
  v10 = MultiwayViewController.constraintController.getter();
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
    swift_beginAccess();
    v13 = v11[v12];

    if (v13)
    {
      if (v13 == 1)
      {
        if (v9 != 2)
        {
          goto LABEL_15;
        }

        goto LABEL_9;
      }

      if (v9 != 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_15;
      }

      if (v9 != 1)
      {
LABEL_9:
        v14 = MultiwayViewController.captionsViewController.getter();
        if (v14)
        {
          v15 = v14;
          CaptionsViewController.minimize(_:)(0);
        }

        LOBYTE(v58[0]) = 0;
        MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v58, 0xFCu, 1);
        goto LABEL_15;
      }
    }

    v16 = MultiwayViewController.captionsViewController.getter();
    if (v16)
    {
      v17 = v16;
      CaptionsViewController.minimize(_:)(1);
    }
  }

LABEL_15:
  v18 = MultiwayViewController.constraintController.getter();
  if (v18)
  {
    v19 = v18;
    v20 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
    swift_beginAccess();
    v21 = v19[v20];
  }

  else
  {
    v21 = 3;
  }

  v22 = MultiwayViewController.constraintController.getter();
  if (v22)
  {
    v23 = v22;
    LOBYTE(v58[0]) = v9;
    MultiwayViewConstraintsController.captionsState.setter(v58);
  }

  v24 = *&v8[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
  ObjectType = swift_getObjectType();
  v26 = (*(v24 + 320))(ObjectType, v24);
  MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(1, v26 & 1, 0, 0, 0, 0);
  if (v21 == 3)
  {
    if (v9 == 3)
    {
      goto LABEL_33;
    }
  }

  else if (v9 != 3 && v21 == v9)
  {
    goto LABEL_33;
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    if ([v28 respondsToSelector_])
    {
      [v29 didChangeCaptionsLayout];
    }

    swift_unknownObjectRelease();
  }

  v30 = &v8[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsLayoutChangeHandler];
  swift_beginAccess();
  v31 = *v30;
  if (*v30)
  {

    v31(v32);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v31);
  }

LABEL_33:
  v33 = MultiwayViewController.isCaptioningEnabled.getter();
  MultiwayViewController.updateCameraBlurState(captionEnabled:)(v33 & 1);
  MultiwayViewController.updateCurrentLayout()();
  MultiwayViewController.oneOnOneParticipant.getter(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
    return;
  }

  _s15ConversationKit11ParticipantVWObTm_7();
  v34 = &v8[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  swift_beginAccess();
  memmove(v58, v34, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v58) != 1)
  {
    v35 = v34[1];
    ParticipantGridViewController.update(participant:broadcastingState:)();
  }

  v36 = objc_opt_self();
  v37 = [v36 currentDevice];
  v38 = [v37 userInterfaceIdiom];

  if (v38 != 1)
  {
    v43 = [v36 currentDevice];
    v44 = [v43 userInterfaceIdiom];

    if (v44)
    {
      goto LABEL_51;
    }

    swift_beginAccess();
    if (static AmbientState.isPresented != 1)
    {
      goto LABEL_51;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v39 = MultiwayViewController.constraintController.getter();
  if (v39 && (v40 = v39, v41 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState, swift_beginAccess(), LODWORD(v41) = v40[v41], v40, v41 == 2))
  {
    MultiwayViewController.setLocalParticipantState(_:animated:)(3, 1);
    memmove(v57, v34, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(v57) != 1)
    {

      v42 = 0;
LABEL_50:
      ParticipantViewDragController.dragEnabled.setter(v42);
    }
  }

  else
  {
    memmove(v57, v34, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(v57) != 1)
    {

      v42 = 1;
      goto LABEL_50;
    }
  }

LABEL_51:
  memcpy(v56, v34, sizeof(v56));
  memmove(v57, v34, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v57) == 1)
  {
    _s15ConversationKit11ParticipantVWOhTm_17();
LABEL_56:

    return;
  }

  memcpy(v55, v56, sizeof(v55));
  v45 = v57[18];
  outlined init with copy of MultiwayViewController.ViewContent(v55, v54);
  v46 = [v45 view];
  if (v46)
  {
    v47 = v46;
    [v46 frame];
    v49 = v48;
    v51 = v50;

    v52 = MultiwayViewController.nextLocalParticipantState(forNewCaptionsViewPosition:)(v49, v51);
    if (v52 > 0xFBu)
    {
      _s15ConversationKit11ParticipantVWOhTm_17();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      goto LABEL_56;
    }

    v54[0] = 0;
    MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v54, v52, 1);
    MultiwayViewController.updateIsCaptionsViewDragEnabled()();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);

    _s15ConversationKit11ParticipantVWOhTm_17();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.updateCameraBlurState(captionEnabled:)(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v2 + v4), sizeof(__dst));
  memcpy(v15, (v2 + v4), sizeof(v15));
  result = getEnumTag for TapInteraction.EventType(v15);
  if (result != 1)
  {
    memcpy(v13, __dst, sizeof(v13));
    outlined init with copy of MultiwayViewController.ViewContent(v13, v10);
    if (ConversationController.supportsCameraBlur.getter())
    {
      MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter();
    }

    LocalParticipantView.supportsCameraBlur.setter();
    if ((a1 & 1) != 0 && ([objc_opt_self() allowsPortraitBlurWhenCaptionsEnabled] & 1) == 0)
    {
      MultiwayViewController.localVideoProvider.getter();
      v6 = v11;
      v7 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v7 + 96))(0, v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MultiwayViewController.localVideoProvider.getter();
      v8 = v11;
      v9 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v9 + 136))(1, v8, v9);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  return result;
}

uint64_t MultiwayViewController.oneOnOneParticipant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v5 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  ConversationController.remoteOneToOneParticipant.getter();
  v7 = OUTLINED_FUNCTION_60_16();
  OUTLINED_FUNCTION_115(v7, v8, v5);
  if (v9)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
LABEL_7:
    v11 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v11, 1, v5);
  }

  OUTLINED_FUNCTION_1_184();
  OUTLINED_FUNCTION_40_2();
  _s15ConversationKit11ParticipantVWObTm_7();
  v10 = Participant.isActiveWithVideo.getter();
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_184();
  _s15ConversationKit11ParticipantVWObTm_7();
  v11 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v5);
}

uint64_t MultiwayViewController.nextLocalParticipantState(forNewCaptionsViewPosition:)(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v2 + v5), sizeof(__dst));
  memcpy(v49, (v2 + v5), sizeof(v49));
  if (getEnumTag for TapInteraction.EventType(v49) == 1)
  {
    goto LABEL_10;
  }

  v6 = v49[19];
  swift_beginAccess();
  if (*(v6 + 16) != 1)
  {
    goto LABEL_10;
  }

  memcpy(v47, __dst, sizeof(v47));
  outlined init with copy of MultiwayViewController.ViewContent(v47, v46);
  MultiwayViewController.captionsLayoutState.getter(v44);
  if (LOBYTE(v44[0]) != 1)
  {
LABEL_9:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
LABEL_10:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1BBC58000, v24, v25, "nextLocalParticipantState is nil due to viewContent state", v26, 2u);
      MEMORY[0x1BFB23DF0](v26, -1, -1);
    }

    return 252;
  }

  result = [v49[18] view];
  if (result)
  {
    v8 = result;
    [result frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v49[7] frame];
    v51.origin.x = v17;
    v51.origin.y = v18;
    v51.size.width = v19;
    v51.size.height = v20;
    v50.origin.x = v10;
    v50.origin.y = v12;
    v50.size.width = v14;
    v50.size.height = v16;
    if (CGRectIntersectsRect(v50, v51))
    {
      MultiwayViewController.ConversationSnapshot.init(of:)(*(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController), v46);
      v21 = MultiwayViewController.localParticipantState(for:)(v46);
      outlined destroy of MultiwayViewController.ConversationSnapshot(v46);
      if (!(v21 >> 6))
      {
        v22 = 16777986;
        goto LABEL_18;
      }

      if (v21 >> 6 == 1)
      {
        v21 &= 0x3Fu;
        v22 = 1094730562;
LABEL_18:
        v28 = 8 * v21;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v27 = v22 >> v28;
        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, logger);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v45 = v33;
          *v32 = 136315394;
          *v44 = a1;
          *&v44[1] = a2;
          type metadata accessor for CGPoint(0);
          v34 = String.init<A>(reflecting:)();
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v45);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2080;
          LOBYTE(v44[0]) = v27;
          v37 = String.init<A>(reflecting:)();
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v45);

          *(v32 + 14) = v39;
          _os_log_impl(&dword_1BBC58000, v30, v31, "nextLocalParticipantState forNewCaptionsViewPosition %s is %s", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB23DF0](v33, -1, -1);
          MEMORY[0x1BFB23DF0](v32, -1, -1);
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        return v27;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, logger);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1BBC58000, v41, v42, "nextLocalParticipantState is nil, unhandled localParticipantState", v43, 2u);
        MEMORY[0x1BFB23DF0](v43, -1, -1);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      return 252;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t MultiwayViewController.updateIsCaptionsViewDragEnabled()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), sizeof(__dst));
  memcpy(v9, (v0 + v1), sizeof(v9));
  result = getEnumTag for TapInteraction.EventType(v9);
  if (result != 1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    MultiwayViewController.ConversationSnapshot.init(of:)(v3, v7);
    v4 = MultiwayViewController.localParticipantState(for:)(v7);
    outlined destroy of MultiwayViewController.ConversationSnapshot(v7);
    if ((v4 & 0x80) == 0)
    {
      v5 = [*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_featureFlags) captionDraggingEnabled];
      if (!v5)
      {
LABEL_8:
        CaptionsViewDragController.dragEnabled.setter(v5 & 1);
        return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

      if (!static Platform.current.getter())
      {
        MultiwayViewController.captionsLayoutState.getter(&v6);
        if (v6 == 1)
        {
          LOBYTE(v5) = ConversationController.isOneToOneModeEnabled.getter();
          goto LABEL_8;
        }
      }
    }

    LOBYTE(v5) = 0;
    goto LABEL_8;
  }

  return result;
}

uint64_t MultiwayViewController.handleShareLinkAction(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F88], v8);
  v12 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in MultiwayViewController.handleShareLinkAction(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_353_0;
  v15 = _Block_copy(aBlock);

  v16 = a1;
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v20 + 8))(v4, v2);
  (*(v18 + 8))(v7, v19);
}

uint64_t closure #1 in MultiwayViewController.handleShareLinkAction(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);

    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    v8 = a2;
    ConversationController.shareableLink(completionHandler:)(partial apply for closure #1 in closure #1 in MultiwayViewController.handleShareLinkAction(_:), v7);
  }

  return result;
}

uint64_t closure #1 in closure #1 in MultiwayViewController.handleShareLinkAction(_:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - v16;
  if (a1)
  {
    v36 = v9;
    v18 = a1;
    v19 = [v18 URL];
    if (v19)
    {
      v20 = v19;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = type metadata accessor for URL();
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v21);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s10Foundation3URLVSgMd);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v35 = static OS_dispatch_queue.main.getter();
      v22 = swift_allocObject();
      v22[2] = a3;
      v22[3] = v18;
      v22[4] = a4;
      aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in MultiwayViewController.handleShareLinkAction(_:);
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_362;
      v23 = _Block_copy(aBlock);
      v24 = v18;

      v25 = a4;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v26 = v35;
      MEMORY[0x1BFB215C0](0, v14, v11, v23);
      _Block_release(v23);

      (*(v36 + 8))(v11, v8);
      return (*(v37 + 8))(v14, v12);
    }

    v28 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v28);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s10Foundation3URLVSgMd);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BC4BA940;
  if (a2)
  {
    aBlock[0] = a2;
    v30 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v31 = String.init<A>(reflecting:)();
    v33 = v32;
  }

  else
  {
    v33 = 0xE300000000000000;
    v31 = 7104878;
  }

  *(v29 + 56) = MEMORY[0x1E69E6158];
  *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void closure #1 in closure #1 in closure #1 in MultiwayViewController.handleShareLinkAction(_:)(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v15 = 0;
    v7 = type metadata accessor for LinkShareCoordinator();
    objc_allocWithZone(v7);
    v8 = a2;
    v9 = v6;
    v10 = a3;
    v16 = v7;
    v17 = &protocol witness table for LinkShareCoordinator;
    v14 = LinkShareCoordinator.init(type:hostViewController:originatingView:)();
    v11 = v9 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_linkShareCoordinator;
    swift_beginAccess();
    outlined assign with take of AttributedString?();
    swift_endAccess();
    if (*(v11 + 24))
    {
      outlined init with copy of IDSLookupManager(v11, &v14);
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_1(&v14, v16);
      (v13[2])(TPNumberPadCharacter.rawValue.getter, 0, v12, v13);

      __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
    }
  }
}

void closure #1 in MultiwayViewController.scheduleLinkEducationFirstTimeAlert()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MultiwayViewController.showLinkEducationFirstTimeAlert(for:)(a2);
  }
}

uint64_t MultiwayViewController.showLinkEducationFirstTimeAlert(for:)(void *a1)
{
  v1 = MultiwayViewController.localParticipantHandleFormattedString(for:)(a1);
  if (v2)
  {
    countAndFlagsBits = v1;
    object = v2;
  }

  else
  {
    v5 = [objc_opt_self() &off_1E7FE9588];
    v25._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0xD00000000000002DLL;
    v6._object = 0x80000001BC51D0C0;
    v7.value._countAndFlagsBits = 0x61737265766E6F43;
    v7.value._object = 0xEF74694B6E6F6974;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v25._countAndFlagsBits = 0;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v25);
    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
  }

  type metadata accessor for PlatformAlert();
  v10 = objc_opt_self();
  v11 = [v10 conversationKit];
  v26._object = 0xE000000000000000;
  v12._object = 0x80000001BC51D0F0;
  v12._countAndFlagsBits = 0xD000000000000023;
  v13.value._countAndFlagsBits = 0x61737265766E6F43;
  v13.value._object = 0xEF74694B6E6F6974;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v26);

  v16 = static PlatformAlert.create(with:message:)(countAndFlagsBits, object, v15._countAndFlagsBits, v15._object);

  if (v16)
  {
    v18 = [v10 conversationKit];
    v27._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0xD000000000000025;
    v19._object = 0x80000001BC51D120;
    v20.value._countAndFlagsBits = 0x61737265766E6F43;
    v20.value._object = 0xEF74694B6E6F6974;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v27);

    v23 = 0;
    (*(*v16 + 328))(v22._countAndFlagsBits, v22._object, &v23, TPNumberPadCharacter.rawValue.getter, 0);

    (*(*v16 + 336))(0);
  }

  return result;
}

uint64_t MultiwayViewController.localParticipantHandleFormattedString(for:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = OUTLINED_FUNCTION_28_0();
  v4 = v3(v2, v1);
  if (!v4)
  {
    return OUTLINED_FUNCTION_62_0();
  }

  v5 = v4;
  v6 = [v4 association];
  if (v6)
  {
    v7 = v6;
    if ([v6 type] == 2 && (objc_msgSend(v7, sel_isPrimary) & 1) == 0)
    {
      v8 = [v7 handle];

      goto LABEL_7;
    }
  }

  v8 = [v5 handle];
LABEL_7:
  v9 = v8;
  TUHandle.formattedPhoneNumber.getter();
  if (v10)
  {
  }

  else
  {
    v11 = [v9 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_62_0();
}

void *MultiwayViewController.accessibilityConstraintController()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  v2 = 0;
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[6];
    v3 = v2;
  }

  return v2;
}

Swift::Void __swiftcall MultiwayViewController.embedEffectsBrowserViewController(_:)(UIViewController *a1)
{
  [v1 loadViewIfNeeded];
  v3 = a1;

  MultiwayViewController.effectsBrowserViewController.setter(a1);
}

__n128 key path getter for MultiwayViewController.additionalLocalParticipantInsets : MultiwayViewController@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

id MultiwayViewController.additionalLocalParticipantInsets.setter()
{
  OUTLINED_FUNCTION_20_2();
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_additionalLocalParticipantInsets);
  OUTLINED_FUNCTION_3_5();
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return MultiwayViewController.updateAdditionalSafeAreaInsets()();
}

uint64_t MultiwayViewController.additionalLocalParticipantInsets.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t MultiwayViewController.bannerPresentationManagerBox.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id closure #1 in MultiwayViewController.mePipDimmingBackgroundView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = [objc_opt_self() blackColor];
  [v0 setBackgroundColor_];

  [v0 setAlpha_];
  [v0 setHidden_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id MultiwayViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    MEMORY[0x1BFB209B0]();
    OUTLINED_FUNCTION_246();
  }

  else
  {
    v3 = 0;
  }

  v6 = [objc_allocWithZone(v4) initWithNibName:v3 bundle:a3];

  return v6;
}

void (*protocol witness for EffectsHandler.effectsViewController.modify in conformance MultiwayViewController(void **a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = MultiwayViewController.effectsViewController.getter();
  return MultiwayViewController.effectsViewController.modify;
}

void (*protocol witness for EffectsHandler.effectsBrowserViewController.modify in conformance MultiwayViewController(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = MultiwayViewController.effectsBrowserViewController.getter();
  return MultiwayViewController.effectsBrowserViewController.modify;
}

Swift::Void __swiftcall MultiwayViewController.didSelectApp(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_50_2();
  v4 = OUTLINED_FUNCTION_159_3();
  v5 = type metadata accessor for Participant(v4);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_100();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  v9 = OUTLINED_FUNCTION_23_34();
  v10(v9);
  _dispatchPreconditionTest(_:)();
  v11 = OUTLINED_FUNCTION_26_30();
  v12(v11);
  if (v8)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_191_0(v22);
    OUTLINED_FUNCTION_191_0(v23);
    OUTLINED_FUNCTION_46_26(v23);
    if (!v13)
    {
      v14 = v23[6];
      v15 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if ((*(v14 + v15) - 4) >= 3)
      {
        OUTLINED_FUNCTION_226_3();
        outlined init with copy of MultiwayViewController.ViewContent(v21, v20);
      }

      else
      {
        v16 = objc_opt_self();
        OUTLINED_FUNCTION_226_3();
        outlined init with copy of MultiwayViewController.ViewContent(v21, v20);
        v17 = [v16 currentDevice];
        v18 = [v17 userInterfaceIdiom];

        if (!v18)
        {
          [v1 setControlsState:2 animated:1];
        }
      }

      v19 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      if (*(v14 + v19) > 0x3Fu)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

      else
      {
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        OUTLINED_FUNCTION_7_5();
        _s15ConversationKit11ParticipantVWOcTm_16();
        MultiwayViewController.focus(on:shouldBringLocalParticipantViewToFront:)(v2, 0);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        OUTLINED_FUNCTION_0_220();
        _s15ConversationKit11ParticipantVWOhTm_17();
      }
    }

    OUTLINED_FUNCTION_49();
  }

  else
  {
    __break(1u);
  }
}

void MultiwayViewController.didSelectEffect(_:)()
{
  OUTLINED_FUNCTION_239_3();
  if (CFXEffect.isAnimoji()())
  {
    MultiwayViewController.localVideoProvider.getter();
    OUTLINED_FUNCTION_82_0(v12);
    v0 = OUTLINED_FUNCTION_2_14();
    v2 = v1(v0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v2)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v3 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v3, static Logger.conversationKit);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_163(v5))
      {
        v6 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v6);
        OUTLINED_FUNCTION_219();
        _os_log_impl(v7, v8, v9, v10, v11, 2u);
        OUTLINED_FUNCTION_18();
      }

      MultiwayViewController.toggleCinematicFraming()();
    }
  }
}

uint64_t MultiwayViewController.didDismissPicker(_:effectsState:)()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_178_1(v130);
  OUTLINED_FUNCTION_178_1(v131);
  result = OUTLINED_FUNCTION_46_26(v131);
  if (!v14)
  {
    v1 = v131[7];
    v2 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
    OUTLINED_FUNCTION_3_0();
    result = swift_beginAccess();
    if (*(v1 + v2))
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v3 == v6 && v5 == v7;
      if (v14)
      {
        v32 = OUTLINED_FUNCTION_157_3(v6, v7, v8, v9, v10, v11, v12, v13, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127);
        OUTLINED_FUNCTION_278_1(v32, v33, v34, v35, v36, v37, v38, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129);
      }

      else
      {
        OUTLINED_FUNCTION_1_5();
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = v15;
        v24 = OUTLINED_FUNCTION_157_3(v15, v17, v18, v19, v20, v21, v22, v23, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127);
        OUTLINED_FUNCTION_278_1(v24, v25, v26, v27, v28, v29, v30, v31, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128);

        if ((v16 & 1) == 0)
        {
          return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v130, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        }
      }

      MultiwayViewController.didRequestMemojiPicker.setter(0);
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v130, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  return result;
}

uint64_t MultiwayViewController.captionsBubbleModeIsAllowed.getter()
{
  if (static Platform.current.getter())
  {
    v1 = 1;
  }

  else
  {
    v2 = [v0 traitCollection];
    v3 = [v2 preferredContentSizeCategory];

    LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

BOOL MultiwayViewController.isReadyToShowCallDetails.getter()
{
  if ((MultiwayViewController.isOnScreen.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1) == 0;
}

void MultiwayViewController.gridViewOverlappingInsets.getter()
{
  OUTLINED_FUNCTION_81_2();
  OUTLINED_FUNCTION_159_3();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v7 = OUTLINED_FUNCTION_12_3();
  v8(v7);
  _dispatchPreconditionTest(_:)();
  v9 = OUTLINED_FUNCTION_9_37();
  v10(v9);
  if (v6)
  {
    v11 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo];
    OUTLINED_FUNCTION_35_30();
    swift_beginAccess();
    if (v11[1] == 0.0 && v11[2] == 0.0)
    {
      goto LABEL_26;
    }

    MultiwayViewController.layoutIdiom.getter(v43);
    if (!v43[0])
    {
      goto LABEL_26;
    }

    if (MultiwayViewController.isModallyPresentingCallDetails.getter())
    {
      goto LABEL_26;
    }

    v1 = &v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_205_5();
    memcpy(v12, v13, v14);
    OUTLINED_FUNCTION_46_26(&v38);
    if (v15)
    {
      goto LABEL_26;
    }

    v16 = v1[6];
    v17 = &v16[OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantAspectRatio];
    OUTLINED_FUNCTION_25_54();
    swift_beginAccess();
    v18 = *(v17 + 32);
    if ((v18 & 1) == 0 && *v17 != 1.0)
    {
      goto LABEL_26;
    }

    v19 = v17[1] == 1.0 ? 1 : *(v17 + 32);
    if (v19 != 1)
    {
      goto LABEL_26;
    }

    v20 = v17[2] == 1.0 ? 1 : *(v17 + 32);
    if ((v20 & 1) == 0)
    {
      goto LABEL_26;
    }

    if (v17[3] == 1.0)
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_26;
    }

    v21 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if ((v16[v21] & 0xFE) == 0x80)
    {
      goto LABEL_26;
    }

    v22 = OBJC_IVAR___CNKFaceTimeConstraintsController_participantGridState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (v16[v22] != 1)
    {
      goto LABEL_26;
    }

    v4 = v16;
    static Layout.LocalParticipantViewCameraControls.iOS.getter(&v39);
    Layout.MultiwayFaceTime.init()(&v40);
    Layout.MultiwayFaceTime.init()(v41);
    v2 = v41[1];
    v23 = *&v4[OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout + 24];
    v24 = *&v4[OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout + 32];
    __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR___CNKFaceTimeConstraintsController_viewControllerLayout], v23);
    (*(v24 + 192))(v23, v24);
    if (v16[v21] >= 0x40u)
    {
      Layout.MultiwayFaceTime.init()(&v42);
    }

    v25 = OBJC_IVAR___CNKFaceTimeConstraintsController_participantListState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v26 = v4[v25];
    v6 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (v26)
    {
      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = v4[v6];
  if ((v27 - 1) <= 1)
  {
    if (one-time initialization token for bottomInsetAfterPadding != -1)
    {
      swift_once();
    }

LABEL_31:
    v27 = v4[v6];
  }

  if (v27 || (OUTLINED_FUNCTION_205_5(), memcpy(v28, v29, v30), OUTLINED_FUNCTION_46_26(&v37), v15))
  {

LABEL_26:
    OUTLINED_FUNCTION_80();
    return;
  }

  v31 = v1[1];
  v32 = OBJC_IVAR____TtC15ConversationKit29ParticipantGridViewController_participants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(*&v31[v32] + 16) == 1)
  {
    v33 = v31;
  }

  else
  {
    v36 = v31;
    ParticipantGridViewController.effectiveLayoutStyle.getter(v43);
    if (v43[0] == 2 || !v43[0])
    {

      goto LABEL_26;
    }
  }

  v34 = [v0 view];
  if (v34)
  {
    v35 = v34;
    [v34 safeAreaInsetFrame];

    Layout.MultiwayFaceTime.init()(v43);
    goto LABEL_26;
  }

  __break(1u);
}

void MultiwayViewController.mediaPipFrame.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = [v1 viewIfLoaded];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 window];
      if (v9 && (v10 = v9, v11 = [v9 windowScene], v10, v11))
      {
        v12 = &v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipFrameInWindowScene];
        swift_beginAccess();
        [v8 convertRect:objc_msgSend(v11 fromCoordinateSpace:{sel_coordinateSpace), *v12, v12[1], v12[2], v12[3]}];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:)(int a1)
{
  LODWORD(v26) = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = v26 & 1;
    v18 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v19 = *(v5 + 8);
    v25 = v4;
    v26 = v19;
    v19(v7, v4);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v17;
    aBlock[4] = partial apply for closure #1 in MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_412;
    v22 = _Block_copy(aBlock);

    v23 = v27;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v24 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB21510](v10, v23, v24, v22);
    _Block_release(v22);

    (*(v31 + 8))(v24, v1);
    (*(v28 + 8))(v23, v30);
    return v26(v10, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mediaPipInfo;
    swift_beginAccess();
    if (*(v5 + 8) != 0.0 || *(v5 + 16) != 0.0)
    {
      v6 = &v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame];
      if (!CGRectIsEmpty(*&v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_cachedMediaPipSafeAreaFrame]))
      {
        v7 = *v6;
        v8 = v6[1];
        v9 = v6[2];
        v10 = v6[3];
        MultiwayViewController.mediaPipFrame.getter();
        v17.origin.x = v11;
        v17.origin.y = v12;
        v17.size.width = v13;
        v17.size.height = v14;
        v16.origin.x = v7;
        v16.origin.y = v8;
        v16.size.width = v9;
        v16.size.height = v10;
        if (!CGRectContainsRect(v16, v17))
        {
          MultiwayViewController.cachedMediaPipSafeAreaFrame.setter(0.0, 0.0, 0.0, 0.0);
          v15 = [v4 viewIfLoaded];
          [v15 setNeedsLayout];

          if ((a2 & 1) == 0)
          {
            MultiwayViewController.verifyMediaPipSafeAreaFrameSoon(isSecondTry:)(1);
          }
        }
      }
    }
  }
}

uint64_t MultiwayViewController.nameForPhotoIndicator.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v8 - v2;
  MultiwayViewController.oneOnOneParticipant.getter(v8 - v2);
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_115(v3, 1, v4);
  if (v5)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    Participant.contactDetails.getter();
    v6 = v8[1];
    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
  }

  return OUTLINED_FUNCTION_15_14();
}

void MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43[-v4];
  v6 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v12 = (v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(v54, v12, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v54) != 1)
  {
    v51 = v8;
    v50 = a1;
    v46 = v1;
    v13 = v12[3];
    v14 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsManager;
    swift_beginAccess();
    v15 = *(v13 + v14);
    v16 = MEMORY[0x1E69E7D40];
    v17 = (*MEMORY[0x1E69E7D40] & *v15) + 2560;
    v18 = *((*MEMORY[0x1E69E7D40] & *v15) + 0xA00);
    v47 = v15;
    v19 = v15;
    v48 = v18;
    v49 = v17;
    v18();
    _s15ConversationKit11ParticipantVWObTm_7();
    if (swift_getEnumCaseMultiPayload() - 9 >= 3)
    {

      _s15ConversationKit11ParticipantVWOhTm_17();
      return;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationKit);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v51;
    v45 = v21;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      v27 = v53[0];
      *v26 = 136315394;
      v44 = v23;
      v48();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
      specialized >> prefix<A>(_:)();
      v29 = v28;
      v31 = v30;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v53);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v33 = v50;
      v52 = v50 & 1;
      v34 = String.init<A>(reflecting:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v53);

      *(v26 + 14) = v36;
      v16 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_1BBC58000, v22, v44, "Hiding Name+Photo banner %s dueToExplicitUserAction: %s", v26, 0x16u);
      swift_arrayDestroy();
      v37 = v27;
      v25 = v51;
      MEMORY[0x1BFB23DF0](v37, -1, -1);
      MEMORY[0x1BFB23DF0](v26, -1, -1);
    }

    else
    {

      v33 = v50;
    }

    v38 = v45;
    if ((v33 & 1) == 0)
    {
      goto LABEL_20;
    }

    v48();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 9) >= 2)
    {
      if (EnumCaseMultiPayload != 11)
      {
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_20;
      }

      v40 = v16;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v42 = MultiwayViewController.call.getter();
      specialized NameAndPhotoUtilities.denyIncomingName(from:)(v42);
    }

    else
    {
      v40 = v16;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v41 = static NameAndPhotoUtilities.shared;
      v42 = MultiwayViewController.call.getter();
      specialized NameAndPhotoUtilities.denySendingNameAndPhoto(using:)(v42, v41);
    }

    v16 = v40;
LABEL_20:
    swift_storeEnumTagMultiPayload();
    (*((*v16 & *v38) + 0xA08))(v25);
  }
}

void MultiwayViewController.showSNAPHudIfNeeded(for:)(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = &v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
  swift_beginAccess();
  memcpy(v50, v18, 0xE8uLL);
  if (getEnumTag for TapInteraction.EventType(v50) == 1)
  {
    MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(0);
  }

  else
  {
    v38 = v3;
    v19 = *(v18 + 3);
    v20 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsManager;
    swift_beginAccess();
    v21 = *(v19 + v20);
    v22 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_queryForSuggestedBannerStartTime;
    swift_beginAccess();
    if (__swift_getEnumTagSinglePayload(&v2[v22], 1, v11))
    {
      v23 = v21;
    }

    else
    {
      (*(v12 + 16))(v17, &v2[v22], v11);
      v24 = v21;
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v25 = *(v12 + 8);
      v25(v14, v11);
      v25(v17, v11);
    }

    if (one-time initialization token for secondsDelayBeforeShowingNameAndPhotoBanner != -1)
    {
      swift_once();
    }

    static DispatchTime.now()();
    v37 = v10;
    + infix(_:_:)();
    v40 = *(v40 + 8);
    (v40)(v7, v46);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v26 = static OS_dispatch_queue.main.getter();
    outlined init with copy of ConversationControlsType(v39, &v48);
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    *(v27 + 24) = v2;
    v28 = v49[0];
    *(v27 + 32) = v48;
    *(v27 + 48) = v28;
    *(v27 + 57) = *(v49 + 9);
    v47[4] = partial apply for closure #1 in MultiwayViewController.showSNAPHudIfNeeded(for:);
    v47[5] = v27;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 1107296256;
    v47[2] = thunk for @escaping @callee_guaranteed () -> ();
    v47[3] = &block_descriptor_404;
    v29 = _Block_copy(v47);
    v30 = v21;
    v31 = v2;

    v32 = v41;
    static DispatchQoS.unspecified.getter();
    v47[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v33 = v43;
    v34 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v35 = v37;
    MEMORY[0x1BFB21510](v37, v32, v33, v29);
    _Block_release(v29);

    (*(v45 + 8))(v33, v34);
    (*(v42 + 8))(v32, v44);
    (v40)(v35, v46);
  }
}

uint64_t specialized MultiwayViewController.getSuggestedBannerType(completion:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1 - 16];
  static Date.now.getter();
  v3 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  swift_beginAccess();
  outlined assign with take of AttributedString?();
  swift_endAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = MultiwayViewController.call.getter();
  v5 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  NameAndPhotoUtilities.suggestedBannerType(for:)(v4, v5, &v11);

  if (v12[24] == 255)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v11, &_s15ConversationKit0A12ControlsTypeOSgMd);
  }

  v13 = v11;
  v14[0] = *v12;
  *(v14 + 9) = *&v12[9];
  v6 = MultiwayViewController.call.getter();
  v7 = [v6 status];

  if (v7 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      MultiwayViewController.showSNAPHudIfNeeded(for:)(&v13);
    }
  }

  else
  {
    MultiwayViewController.hideSNaPSecondaryPillIfNeeded(dueToExplicitUserAction:)(0);
  }

  return outlined destroy of ConversationControlsType(&v13);
}

void closure #1 in MultiwayViewController.showSNAPHudIfNeeded(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v55 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = *MEMORY[0x1E69E7D40] & *a1;
  v59 = *(v16 + 0xA00);
  v60 = v16 + 2560;
  v59(v13);
  swift_storeEnumTagMultiPayload();
  v17 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)();
  _s15ConversationKit11ParticipantVWOhTm_17();
  _s15ConversationKit11ParticipantVWOhTm_17();
  if (v17)
  {
    v56 = v11;
    v57 = a1;
    v18 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callUUIDsThatPresentedSNaPSecondaryPill;
    v19 = *(a2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_callUUIDsThatPresentedSNaPSecondaryPill);
    v20 = MultiwayViewController.call.getter();

    v21 = [v20 uniqueProxyIdentifierUUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x1EEE9AC00](v22);
    *(&v55 - 2) = v10;
    LOBYTE(v20) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v55 - 4), v19);

    (*(v8 + 8))(v10, v7);
    if ((v20 & 1) == 0)
    {
      v23 = MultiwayViewController.call.getter();
      v24 = [v23 uniqueProxyIdentifierUUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v25 = *(*(a2 + v18) + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v25);
      v26 = *(a2 + v18);
      *(v26 + 16) = v25 + 1;
      (*(v8 + 32))(v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v10, v7);
      *(a2 + v18) = v26;
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.conversationKit);
      v28 = v57;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      v55 = v28;

      v31 = os_log_type_enabled(v29, v30);
      v32 = v56;
      if (v31)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v62 = v34;
        *v33 = 136315138;
        v35 = v61;
        (v59)();
        __swift_storeEnumTagSinglePayload(v35, 0, 1, v32);
        specialized >> prefix<A>(_:)();
        v37 = v36;
        v39 = v38;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v35, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v62);

        *(v33 + 4) = v40;
        _os_log_impl(&dword_1BBC58000, v29, v30, "Showing Name+Photo banner %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1BFB23DF0](v34, -1, -1);
        MEMORY[0x1BFB23DF0](v33, -1, -1);
      }

      outlined init with copy of ConversationControlsType(v58, &v62);
      if (v65 == 7 && ((v41 = vorrq_s8(v63, v64), v42 = vorr_s8(*v41.i8, *&vextq_s8(v41, v41, 8uLL)), v62 == 12) && !*&v42 || v62 == 13 && !*&v42 || v62 == 19 && !*&v42))
      {
        swift_storeEnumTagMultiPayload();
        (*((*MEMORY[0x1E69E7D40] & *v55) + 0xA08))(v15);
      }

      else
      {
        outlined destroy of ConversationControlsType(&v62);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.conversationKit);
    v44 = a1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62 = v48;
      *v47 = 136315138;
      v49 = v61;
      (v59)();
      __swift_storeEnumTagSinglePayload(v49, 0, 1, v11);
      specialized >> prefix<A>(_:)();
      v51 = v50;
      v53 = v52;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v62);

      *(v47 + 4) = v54;
      _os_log_impl(&dword_1BBC58000, v45, v46, "Not showing Name+Photo banner because showing a different secondryPill button %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1BFB23DF0](v48, -1, -1);
      MEMORY[0x1BFB23DF0](v47, -1, -1);
    }
  }
}

void MultiwayViewController.nameAndPhotoUtilitiesDidUpdatePersonalNickname(oldValue:newValue:)(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (a2)
    {
      MultiwayViewController.updateSecondaryPillForSNaPIfNeeded()();
    }
  }
}

uint64_t MultiwayViewController.nameAndPhotoUtilitiesNameAndPhotoAvailable(forDestinations:withBannerType:)(uint64_t a1)
{
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (v11[24] == 255)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v10, &_s15ConversationKit0A12ControlsTypeOSgMd);
  }

  v12 = v10;
  v13[0] = *v11;
  *(v13 + 9) = *&v11[9];
  *&v10 = a1;

  specialized MutableCollection<>.sort(by:)(&v10);
  v2 = MultiwayViewController.call.getter();
  v3 = [v2 remoteParticipantHandles];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v4, &lazy cache variable for type metadata for TUHandle);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v5);
  v7 = v6;

  *&v10 = v7;

  specialized MutableCollection<>.sort(by:)(&v10);

  OUTLINED_FUNCTION_44_0();
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5();
  LOBYTE(v7) = v8;

  if (v7)
  {
    MultiwayViewController.showSNAPHudIfNeeded(for:)(&v12);
  }

  return outlined destroy of ConversationControlsType(&v12);
}