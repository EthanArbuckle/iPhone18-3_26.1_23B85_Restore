uint64_t closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, &static Logger.conversationControls);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "Start screen sharing (countdown)", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    v6 = *(v1 + 160);

    ConversationControlsManager.startScreenShareWithCountdown(completion:)(partial apply for closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:), v1, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, vars0, vars8);

    ConversationControlsMenuButtonProvider.disableMenuContainerViewInteraction()();
  }

  return result;
}

void closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v9 = partial apply for closure #1 in closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:);
  v10 = a1;
  v5 = MEMORY[0x1E69E9820];
  v6 = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed () -> ();
  v8 = &block_descriptor_32_1;
  v3 = _Block_copy(&v5);

  v9 = partial apply for closure #2 in closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:);
  v10 = a1;
  v5 = MEMORY[0x1E69E9820];
  v6 = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v8 = &block_descriptor_35_0;
  v4 = _Block_copy(&v5);

  [v2 animateWithDuration:v3 animations:v4 completion:0.5];
  _Block_release(v4);
  _Block_release(v3);
}

id closure #1 in closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:)(uint64_t a1)
{
  result = *(a1 + 232);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void closure #2 in ConversationControlsShareMenuButtonProvider.menu(for:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x2C0))();
    if (v6)
    {
      v7 = v6;
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, &static Logger.conversationControls);
      v9 = a4;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136315138;
        v14 = TUConversationActivitySession.uniqueIdentifier.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_1BBC58000, v10, v11, "End active SharePlay activity: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1BFB23DF0](v13, -1, -1);
        MEMORY[0x1BFB23DF0](v12, -1, -1);
      }

      v17 = [objc_opt_self() sharedInstance];
      v18 = [v17 conversationManager];

      [v18 presentDismissalAlertForActivitySession:v9 onConversation:v7];
      ConversationControlsMenuButtonProvider.disableMenuContainerViewInteraction()();
    }

    else
    {
    }
  }
}

void closure #3 in ConversationControlsShareMenuButtonProvider.menu(for:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5, char a6)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.conversationControls);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v15);
      _os_log_impl(&dword_1BBC58000, v11, v12, a5, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    ConversationControlsShareMenuButtonProvider.setAutomaticShareState(_:)(a6 & 1);
    ConversationControlsMenuButtonProvider.disableMenuContainerViewInteraction()();
  }

  OUTLINED_FUNCTION_62();
}

void closure #5 in ConversationControlsShareMenuButtonProvider.menu(for:)()
{
  LOWORD(v8) = 0;
  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy15ConversationKit32SharePlayDiscoverabilityMenuViewVGMd));
  v1 = UIHostingController.init(rootView:)();
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  v7 = [v1 view];
  if (v7)
  {

    return;
  }

LABEL_7:
  __break(1u);
}

void ConversationControlsShareMenuButtonProvider.__ivar_destroyer()
{

  v1 = *(v0 + 248);
}

id *ConversationControlsShareMenuButtonProvider.deinit()
{
  v0 = ConversationControlsMenuButtonProvider.deinit();

  return v0;
}

uint64_t ConversationControlsShareMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsShareMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

id CountdownLabelView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static NSNumberFormatter.localizedStringForInt(_:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v4 = [v2 localizedStringFromNumber:v3 numberStyle:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

char *CountdownLabelView.init()()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown) = 0;
  v1 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v2 = OUTLINED_FUNCTION_28();
  v5 = [v3 v4];
  v6 = OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_countdownLabel;
  *(v0 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_countdownLabel) = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = *(v0 + v6);
  v8 = objc_opt_self();
  v9 = *MEMORY[0x1E69DB958];
  v10 = v7;
  v11 = [v8 systemFontOfSize:20.0 weight:v9];
  [v10 setFont_];

  v31 = type metadata accessor for CountdownLabelView();
  v12 = OUTLINED_FUNCTION_28();
  v15 = objc_msgSendSuper2(v13, v14, v12, v0, v31);
  v16 = [v15 layer];
  v17 = [objc_opt_self() whiteColor];
  v18 = [v17 CGColor];

  [v16 setBorderColor_];
  v19 = [v15 layer];
  [v19 setBorderWidth_];

  v20 = OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_countdownLabel;
  [v15 addSubview_];
  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BA930;
  v23 = [*&v15[v20] centerXAnchor];
  v24 = [v15 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v22 + 32) = v25;
  v26 = [*&v15[v20] centerYAnchor];
  v27 = [v15 centerYAnchor];

  v28 = [v26 constraintEqualToAnchor_];
  *(v22 + 40) = v28;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 activateConstraints_];

  return v15;
}

id CountdownLabelView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CountdownLabelView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CountdownLabelView.set(countdownIsActive:countdownLabelText:)(Swift::Bool countdownIsActive, Swift::String_optional countdownLabelText)
{
  *(v2 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown) = countdownIsActive;
  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_countdownLabel);
  if (countdownLabelText.value._object)
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_62_0();
    v6 = MEMORY[0x1BFB209B0](v5);
  }

  else
  {
    v7 = v3;
    v6 = 0;
  }

  v8 = v6;
  [v3 setText_];
}

id CountdownLabelView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CountdownLabelView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CountdownLabelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ShareMenuActionState and conformance ShareMenuActionState()
{
  result = lazy protocol witness table cache variable for type ShareMenuActionState and conformance ShareMenuActionState;
  if (!lazy protocol witness table cache variable for type ShareMenuActionState and conformance ShareMenuActionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareMenuActionState and conformance ShareMenuActionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForegroundApp? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ForegroundApp? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ForegroundApp? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit13ForegroundAppCSgMd);
    lazy protocol witness table accessor for type ForegroundApp and conformance NSObject();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundApp? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForegroundApp and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type ForegroundApp and conformance NSObject;
  if (!lazy protocol witness table cache variable for type ForegroundApp and conformance NSObject)
  {
    type metadata accessor for ForegroundApp();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundApp and conformance NSObject);
  }

  return result;
}

uint64_t outlined destroy of Notification?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined bridged method (mbnn) of @objc UIAction.discoverabilityTitle.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setDiscoverabilityTitle_];
}

id partial apply for closure #2 in closure #1 in closure #1 in ConversationControlsShareMenuButtonProvider.menu(for:)()
{
  result = *(v0 + 232);
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

uint64_t ConversationControlsStringProvider.callTypeSubtitles(for:)(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v3 = v2;
  swift_getObjectType();
  v4 = *(v3 + 184);
  v5 = v4();
  v6 = [v5 isFaceTimeProvider];

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BAC30;
    isa = ConversationControlsStringProvider.faceTimeIncomingCallSubtitle(for:)(a1);
LABEL_12:
    *(v7 + 32) = isa;
    goto LABEL_13;
  }

  v9 = OUTLINED_FUNCTION_11_46();
  v10 = (v4)(v9);
  v11 = [v10 isSystemProvider];

  if (!v11)
  {
    v26 = OUTLINED_FUNCTION_11_46();
    v27 = (v4)(v26);
    v28 = [v27 localizedName];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = OUTLINED_FUNCTION_11_46();
    v33(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BAC30;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v34 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_14_2();
    v35.super.isa = v34;
    OUTLINED_FUNCTION_17_0(v36, v37, v38, v39, v35);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v40 = OUTLINED_FUNCTION_13_12();
    *(v40 + 16) = xmmword_1BC4BA940;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 32) = v29;
    *(v40 + 40) = v31;
    v41 = static String.localizedStringWithFormat(_:_:)();
    v43 = v42;

    v24 = v41;
    v25 = v43;
LABEL_11:
    isa = NSAttributedString.__allocating_init(string:)(*&v24).super.isa;
    goto LABEL_12;
  }

  v7 = ConversationControlsStringProvider.telephonyCallSubtitles(for:)(a1);
  if (!specialized Array.count.getter(v7))
  {

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, &static Logger.conversationControls);
    swift_unknownObjectRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v45 = v16;
      *v15 = 136446210;
      v17 = OUTLINED_FUNCTION_11_46();
      v18 = (v4)(v17);
      v19 = [v18 identifier];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v45);

      *(v15 + 4) = v23;
      _os_log_impl(&dword_1BBC58000, v13, v14, "Unknown call type subtitle for provider: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BAC30;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v24 = OUTLINED_FUNCTION_19_22();
    goto LABEL_11;
  }

LABEL_13:
  swift_unknownObjectRelease();
  return v7;
}

uint64_t ConversationControlsStringProvider.screenShareHUDStrings(initiator:incomingRequest:)()
{
  OUTLINED_FUNCTION_27_20();
  OUTLINED_FUNCTION_10_42();
  v0 = objc_opt_self();
  v1 = [v0 conversationKit];
  OUTLINED_FUNCTION_22_26();
  v2.super.isa = v1;
  OUTLINED_FUNCTION_17_0(v3, v4, v5, v6, v2);
  OUTLINED_FUNCTION_16_6();

  v7 = [v0 conversationKit];
  OUTLINED_FUNCTION_22_26();
  v8.super.isa = v7;
  OUTLINED_FUNCTION_17_0(v9, v10, v11, v12, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v13 = OUTLINED_FUNCTION_13_12();
  *(v13 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();

  Participant.name(_:)();
  v15 = v14;
  v17 = v16;

  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  String.init(format:_:)();

  return OUTLINED_FUNCTION_44_0();
}

NSAttributedString __swiftcall ConversationControlsStringProvider.incomingRemoteControlRequestSubtitle(requestingParticipantDisplayName:)(Swift::String requestingParticipantDisplayName)
{
  object = requestingParticipantDisplayName._object;
  countAndFlagsBits = requestingParticipantDisplayName._countAndFlagsBits;
  v3 = 0xD00000000000002DLL;
  v4 = "@_WANTS_TO_CONTROL_YOUR_PAD";
  switch(static Platform.current.getter())
  {
    case 1u:
      v5 = "SCREEN_SHARING_%@_WANTS_TO_CONTROL_YOUR_PAD";
      goto LABEL_5;
    case 2u:
      v4 = "@_WANTS_TO_CONTROL_YOUR_MAC";
      v3 = 0xD00000000000002ALL;
      break;
    case 3u:
      v5 = "SCREEN_SHARING_%@_WANTS_TO_CONTROL_YOUR_MAC";
LABEL_5:
      v4 = (v5 - 32);
      v3 = 0xD00000000000002BLL;
      break;
    default:
      break;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v6 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_5_5();
  v7.super.isa = v6;
  OUTLINED_FUNCTION_17_0(v3, v4 | 0x8000000000000000, v8, v9, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BAA20;
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v12;
  *(v10 + 32) = countAndFlagsBits;
  *(v10 + 40) = object;
  v13 = objc_opt_self();

  v14 = [v13 currentDevice];
  v15 = [v14 model];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v16;
  *(v10 + 80) = v18;
  String.init(format:_:)();
  OUTLINED_FUNCTION_16_6();

  v19._countAndFlagsBits = OUTLINED_FUNCTION_44_0();
  return NSAttributedString.__allocating_init(string:)(v19);
}

id ConversationControlsStringProvider.collaborationHUDStrings(initiator:itemTitle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v86 = a1;
  OUTLINED_FUNCTION_23_28();
  *&v87 = type metadata accessor for PersonNameComponents();
  v84 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSg_SSSgtMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v81 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v81 - v11;
  v13 = MEMORY[0x1E69E6158];
  if (a3)
  {
    v14 = objc_opt_self();

    v15 = [v14 &off_1E7FE9588];
    OUTLINED_FUNCTION_14_2();
    v16.super.isa = v15;
    OUTLINED_FUNCTION_17_0(v17, v18, v19, v20, v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v21 = OUTLINED_FUNCTION_13_12();
    *(v21 + 16) = xmmword_1BC4BA940;
    v22 = v13;
    *(v21 + 56) = v13;
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    v23 = String.init(format:_:)();
    v25 = v24;
  }

  else
  {
    v26 = v3;
    v22 = MEMORY[0x1E69E6158];
    v27 = [objc_opt_self() conversationKit];
    v28.super.isa = v27;
    v23 = OUTLINED_FUNCTION_17_0(0xD000000000000024, 0x80000001BC5013E0, v26, 0xEF74694B6E6F6974, v28);
    v25 = v29;
  }

  v30 = v86;
  v31 = [v86 nameComponents];
  v32 = v87;
  if (v31)
  {
    v33 = v31;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v34, 1, v32);
  v35 = outlined bridged method (pb) of @objc TUCollaborationInitiator.handle.getter(v30);
  v37 = v36;
  outlined init with take of PersonNameComponents?(v12, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v32) == 1)
  {
    if (v37)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v38 = swift_allocObject();
      v87 = xmmword_1BC4BA940;
      *(v38 + 16) = xmmword_1BC4BA940;
      v39 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_5_5();
      v40.super.isa = v39;
      OUTLINED_FUNCTION_17_0(v41, v42, v43, v44, v40);
      OUTLINED_FUNCTION_18_8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v45 = OUTLINED_FUNCTION_13_12();
      *(v45 + 16) = v87;
      *(v45 + 56) = v22;
      *(v45 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v45 + 32) = v35;
      *(v45 + 40) = v37;
      OUTLINED_FUNCTION_15_14();
      String.init(format:_:)();
      OUTLINED_FUNCTION_17_37();
      *(v38 + 32) = v45;
      *(v38 + 40) = v25;
    }
  }

  else
  {
    *&v82 = v35;
    v83 = v25;
    v86 = v23;
    v46 = v84;
    if (v37)
    {
      (*(v84 + 32))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1BC4BA940;
      v48 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_5_5();
      v49.super.isa = v48;
      v81[1] = OUTLINED_FUNCTION_17_0(v50, v51, v52, v53, v49);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1BC4BAA20;
      v55 = objc_opt_self();
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v57 = [v55 localizedStringFromPersonNameComponents:isa style:0 options:0];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = v32;
      v62 = MEMORY[0x1E69E6158];
      *(v54 + 56) = MEMORY[0x1E69E6158];
      v63 = lazy protocol witness table accessor for type String and conformance String();
      *(v54 + 32) = v58;
      *(v54 + 40) = v60;
      *(v54 + 96) = v62;
      *(v54 + 104) = v63;
      v64 = v82;
      *(v54 + 64) = v63;
      *(v54 + 72) = v64;
      *(v54 + 80) = v37;
      String.init(format:_:)();
      OUTLINED_FUNCTION_18_8();

      *(v47 + 32) = v60;
      *(v47 + 40) = v57;
      (*(v46 + 8))(v85, v61);
    }

    else
    {
      v65 = v85;
      (*(v84 + 32))(v85, v9, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v66 = swift_allocObject();
      v82 = xmmword_1BC4BA940;
      *(v66 + 16) = xmmword_1BC4BA940;
      v67 = [objc_opt_self() &off_1E7FE9588];
      OUTLINED_FUNCTION_9_49();
      OUTLINED_FUNCTION_5_5();
      v68.super.isa = v67;
      OUTLINED_FUNCTION_17_0(v69, v70, v71, v72, v68);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v73 = OUTLINED_FUNCTION_13_12();
      *(v73 + 16) = v82;
      v74 = objc_opt_self();
      v75 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v76 = [v74 localizedStringFromPersonNameComponents:v75 style:0 options:0];

      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      *(v73 + 56) = MEMORY[0x1E69E6158];
      *(v73 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v73 + 32) = v77;
      *(v73 + 40) = v79;
      String.init(format:_:)();
      OUTLINED_FUNCTION_18_8();

      *(v66 + 32) = v77;
      *(v66 + 40) = v73;
      (*(v46 + 8))(v65, v32);
    }

    return v86;
  }

  return v23;
}

void ConversationControlsStringProvider.groupCallSubtitle(conversation:isConnecting:)(void *a1, unint64_t a2)
{
  v4 = [a1 mergedActiveRemoteParticipants];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Set.count.getter(v5);

  v7 = [a1 pendingMembers];
  OUTLINED_FUNCTION_10_9();
  type metadata accessor for NSObject(v8, v9);
  OUTLINED_FUNCTION_10_9();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v10, v11);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = specialized Set.count.getter(v12);

  v14 = [a1 localParticipantAssociation];
  if (!v14 || (v14, [a1 state] != 1))
  {
    if (v6 || v13 < 1)
    {
      if (a2)
      {
        v25 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_5_5();
        v26.super.isa = v25;
        v6 = OUTLINED_FUNCTION_17_0(v27, 0xEA0000000000474ELL, v28, v29, v26);
        a2 = v30;

        goto LABEL_17;
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      a2 = static Features.shared;
      if (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (GondolaControlsRecipeGenerator.isPresentingFullScreenCallUI.getter())
      {
        v6 = 0;
        a2 = 0xE000000000000000;
        goto LABEL_17;
      }

      String.localizedConversationControls.getter();
      OUTLINED_FUNCTION_18_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v31 = OUTLINED_FUNCTION_13_12();
      v32 = MEMORY[0x1E69E6530];
      *(v31 + 16) = xmmword_1BC4BA940;
      v33 = MEMORY[0x1E69E65A8];
      *(v31 + 56) = v32;
      *(v31 + 64) = v33;
      *(v31 + 32) = v6;
      OUTLINED_FUNCTION_15_14();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_17_37();
    }

    else
    {
      String.localizedConversationControls.getter();
      OUTLINED_FUNCTION_16_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v22 = OUTLINED_FUNCTION_13_12();
      v23 = MEMORY[0x1E69E6530];
      *(v22 + 16) = xmmword_1BC4BA940;
      v24 = MEMORY[0x1E69E65A8];
      *(v22 + 56) = v23;
      *(v22 + 64) = v24;
      *(v22 + 32) = v13;
      OUTLINED_FUNCTION_44_0();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_17_37();
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_30_14();
  a2 = v15;
  v6 = TUStringKeyForProduct();

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_18_8();

    v16 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_5_5();
    v17 = OUTLINED_FUNCTION_15_14();
    v18.super.isa = v16;
    OUTLINED_FUNCTION_17_0(v17, v19, v20, v21, v18);
    OUTLINED_FUNCTION_17_37();

LABEL_17:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v34._countAndFlagsBits = v6;
    v34._object = a2;
    NSAttributedString.__allocating_init(string:)(v34);
    return;
  }

  __break(1u);
}

void ConversationControlsStringProvider.individualCallSubtitle(conversation:call:isConnecting:)(void *a1, uint64_t a2, uint8_t *a3, char a4)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationKit);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = a4 & 1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = [v9 isVideo];

    _os_log_impl(&dword_1BBC58000, v10, v11, "[CallSubtitle] individualCall: connecting=%{BOOL}d video=%{BOOL}d", v12, 0xEu);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v10 = v9;
  }

  if (a4)
  {
    v13 = static Platform.current.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = OUTLINED_FUNCTION_25(v15);
    if (v13 == 2)
    {
      if (!v16)
      {
LABEL_10:

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
        v22 = OUTLINED_FUNCTION_19_22();
LABEL_17:
        NSAttributedString.__allocating_init(string:)(*&v22);
        return;
      }

LABEL_9:
      v17 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v17);
      OUTLINED_FUNCTION_8_57();
      _os_log_impl(v18, v19, v20, v21, v13, 2u);
      OUTLINED_FUNCTION_27();
      goto LABEL_10;
    }

    if (v16)
    {
      v49 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v49);
      OUTLINED_FUNCTION_8_57();
      _os_log_impl(v50, v51, v52, v53, v13, 2u);
      OUTLINED_FUNCTION_27();
    }

    v54 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_5_5();
    v58 = 0xEA0000000000474ELL;
    goto LABEL_41;
  }

  v24 = [v9 localParticipantAssociation];
  if (!v24 || (v24, [v9 state]!= 1))
  {
    if (![v9 avMode])
    {
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_23_28();
      v59 = [v9 activeRemoteParticipants];
      OUTLINED_FUNCTION_10_9();
      type metadata accessor for NSObject(v60, v61);
      OUTLINED_FUNCTION_10_9();
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(v62, v63);
      v64 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = specialized Set.isEmpty.getter(v64);

      v14 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      v67 = OUTLINED_FUNCTION_25(v66);
      if (v65)
      {
        if (v67)
        {
          v68 = OUTLINED_FUNCTION_33();
          *v68 = 0;
          OUTLINED_FUNCTION_8_57();
          _os_log_impl(v69, v70, v71, v72, v68, 2u);
          OUTLINED_FUNCTION_27();
        }

        v73 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_4_15();
        v55 = 0x44455449564E49;
        v58 = 0xE700000000000000;
      }

      else
      {
        if (v67)
        {
          v95 = OUTLINED_FUNCTION_33();
          *v95 = 0;
          OUTLINED_FUNCTION_8_57();
          _os_log_impl(v96, v97, v98, v99, v95, 2u);
          OUTLINED_FUNCTION_27();
        }

        v100 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_4_15();
        v55 = 0x455649544341;
        v58 = 0xE600000000000000;
      }

      v56 = a2;
      v57 = a3;
LABEL_41:
      v101.super.isa = v14;
      OUTLINED_FUNCTION_17_0(v55, v58, v56, v57, v101);
      OUTLINED_FUNCTION_18_8();

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString);
      v102._countAndFlagsBits = OUTLINED_FUNCTION_15_14();
      NSAttributedString.__allocating_init(string:)(v102);
      return;
    }

    if ([v9 isVideo])
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v45 = *MEMORY[0x1E69DDD80];
      v151 = 0;
      OUTLINED_FUNCTION_6_57(v45);
      outlined init with copy of SymbolImageDescription(v153, v149);
      outlined destroy of SymbolImageDescription(v152);
      v46 = static UIImage.symbolImage(for:)(v153);
      outlined destroy of SymbolImageDescription(v153);
      if (v46)
      {
        v47 = [objc_opt_self() secondaryLabelColor];
        v48 = [v46 imageWithTintColor_];
      }

      else
      {
        v48 = 0;
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v103 = (*((*MEMORY[0x1E69E7D40] & *static HUDActivityManager.shared) + 0xB0))();
      if (v103)
      {
        v104 = v103;
        v105 = [v103 isPresentingFullScreenCallUI];
      }

      else
      {
        v105 = 0;
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_27_20();
      OUTLINED_FUNCTION_10_42();
      v109 = Features.isICUIRedesignEnabled.getter() & v105;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      v112 = OUTLINED_FUNCTION_25(v111);
      if (v109)
      {
        if (v112)
        {
          v113 = OUTLINED_FUNCTION_33();
          *v113 = 0;
          OUTLINED_FUNCTION_8_57();
          _os_log_impl(v114, v115, v116, v117, v113, 2u);
          OUTLINED_FUNCTION_27();
        }

        v118 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_4_15();
        OUTLINED_FUNCTION_22_26();
        v119.super.isa = v110;
        v124 = OUTLINED_FUNCTION_17_0(v120, v121, v122, v123, v119);
        v126 = v125;

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString);

        v127._countAndFlagsBits = v124;
        v127._object = v126;
        NSAttributedString.__allocating_init(string:)(v127);
        goto LABEL_64;
      }

      if (v112)
      {
        v128 = OUTLINED_FUNCTION_33();
        *v128 = 0;
        OUTLINED_FUNCTION_8_57();
        _os_log_impl(v129, v130, v131, v132, v128, 2u);
        OUTLINED_FUNCTION_27();
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v133 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_2_86();
      OUTLINED_FUNCTION_22_26();
    }

    else
    {
      swift_getObjectType();
      if (Call.isFromMessagesScreenShare.getter())
      {
        v74 = OUTLINED_FUNCTION_21_25();
        if (v75(v74) == 3)
        {
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.default.getter();
          if (OUTLINED_FUNCTION_25(v77))
          {
            v78 = OUTLINED_FUNCTION_33();
            *v78 = 0;
            OUTLINED_FUNCTION_8_57();
            _os_log_impl(v79, v80, v81, v82, v78, 2u);
            OUTLINED_FUNCTION_27();
          }

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
          v83 = [objc_opt_self() conversationKit];
          OUTLINED_FUNCTION_5_5();
          v85.super.isa = v83;
          OUTLINED_FUNCTION_17_0(v84 + 22, 0x80000001BC501530, v86, v87, v85);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v88 = OUTLINED_FUNCTION_13_12();
          *(v88 + 16) = xmmword_1BC4BA940;
          v89 = OUTLINED_FUNCTION_21_25();
          v90(v89);
          OUTLINED_FUNCTION_18_8();
          *(v88 + 56) = MEMORY[0x1E69E6158];
          *(v88 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v88 + 32) = v83;
          *(v88 + 40) = a3;
          String.init(format:_:)();
          OUTLINED_FUNCTION_18_8();

          v22 = OUTLINED_FUNCTION_15_14();
          goto LABEL_17;
        }
      }

      v91 = OUTLINED_FUNCTION_21_25();
      v93 = v92(v91);
      v13 = [v93 isTelephonyProvider];

      if (v13)
      {
        v14 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();
        if (!OUTLINED_FUNCTION_25(v94))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v106 = *MEMORY[0x1E69DDD80];
      v151 = 0;
      OUTLINED_FUNCTION_6_57(v106);
      outlined init with copy of SymbolImageDescription(v153, v149);
      outlined destroy of SymbolImageDescription(v152);
      v107 = static UIImage.symbolImage(for:)(v153);
      outlined destroy of SymbolImageDescription(v153);
      if (v107)
      {
        v108 = [objc_opt_self() secondaryLabelColor];
        v48 = [v107 imageWithTintColor_];
      }

      else
      {
        v48 = 0;
      }

      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v139))
      {
        v140 = OUTLINED_FUNCTION_33();
        *v140 = 0;
        OUTLINED_FUNCTION_8_57();
        _os_log_impl(v141, v142, v143, v144, v140, 2u);
        OUTLINED_FUNCTION_27();
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v133 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_2_86();
      OUTLINED_FUNCTION_5_5();
    }

    v145.super.isa = v133;
    v146 = OUTLINED_FUNCTION_17_0(v134, v135, v136, v137, v145);
    v148 = v147;

    memset(v149, 0, sizeof(v149));
    v150 = 1;
    static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v146, v148, v48, v149);
LABEL_64:

    return;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_25(v26))
  {
    v27 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v27);
    OUTLINED_FUNCTION_8_57();
    _os_log_impl(v28, v29, v30, v31, a3, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_30_14();
  v33 = v32;
  v34 = TUStringKeyForProduct();

  if (v34)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_5_5();
    v39.super.isa = v34;
    v42 = OUTLINED_FUNCTION_17_0(v35, v37, v40, v41, v39);
    v44 = v43;

    v22 = v42;
    v23 = v44;
    goto LABEL_17;
  }

  __break(1u);
}

NSAttributedString ConversationControlsStringProvider.handoffNearbySubtitle(conversation:)(void *a1)
{
  v2 = [a1 resolvedAudioVideoMode];
  if (!v2)
  {
    v3 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_5_5();
    v5 = 0xE900000000000059;
    goto LABEL_6;
  }

  if (v2 == 1 || v2 == 2)
  {
    v3 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_2_86();
    OUTLINED_FUNCTION_5_5();
LABEL_6:
    v8.super.isa = v3;
    v9 = OUTLINED_FUNCTION_17_0(v4, v5, v6, v7, v8);
    v11 = v10;

    v12 = [a1 handoffEligibility];
    if (v12)
    {
      v13 = outlined bridged method (ob) of @objc TUConversationHandoffEligibility.localizedDeviceCategory.getter(v12);
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        v33[0] = v9;
        v33[1] = v11;
        MEMORY[0x1BFB20B10](2108704, 0xE300000000000000);
        MEMORY[0x1BFB20B10](v15, v16);
      }
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString);
    v17._countAndFlagsBits = v9;
    v17._object = v11;
    return NSAttributedString.__allocating_init(string:)(v17);
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, &static Logger.conversationControls);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v33[0] = v24;
    *v23 = 136315138;
    v33[2] = [v20 resolvedAudioVideoMode];
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v33);

    *(v23 + 4) = v27;
    OUTLINED_FUNCTION_8_57();
    _os_log_impl(v28, v29, v30, v31, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v32._countAndFlagsBits = OUTLINED_FUNCTION_19_22();
  return NSAttributedString.__allocating_init(string:)(v32);
}

NSAttributedString __swiftcall ConversationControlsStringProvider.handoffCompletedSubtitle(localizedDeviceCategory:)(Swift::String_optional localizedDeviceCategory)
{
  OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_10_42();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v7 = objc_opt_self();

    v8 = [v7 conversationKit];
    OUTLINED_FUNCTION_29_3();
    v9.super.isa = v8;
    OUTLINED_FUNCTION_17_0(0x255F4E4F5F574F4ELL, 0xE900000000000040, v2, v1, v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v10 = OUTLINED_FUNCTION_13_12();
    *(v10 + 16) = xmmword_1BC4BA940;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;
    OUTLINED_FUNCTION_10_9();
    String.init(format:_:)();
    OUTLINED_FUNCTION_16_6();
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v11 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    v12.super.isa = v11;
    OUTLINED_FUNCTION_17_0(0xD000000000000013, 0x80000001BC501560, v2, v1, v12);
    OUTLINED_FUNCTION_16_6();
  }

  v13._countAndFlagsBits = OUTLINED_FUNCTION_44_0();
  return NSAttributedString.__allocating_init(string:)(v13);
}

Class ConversationControlsStringProvider.faceTimeIncomingCallSubtitle(for:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0))();
  if (v3)
  {
    v4 = v3;
    if ([v3 resolvedAudioVideoMode] == 2)
    {
      v5 = 0xEE004F454449565FLL;
    }

    else
    {
      v5 = 0xEE004F494455415FLL;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v34._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0x454D495445434146;
    v6._object = v5;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v7, v34);

    v9 = [v4 link];
    if (v9 && (v10 = outlined bridged method (ob) of @objc TUConversationLink.displayName.getter(v9), v11))
    {
      countAndFlagsBits = v10;
      object = v11;

      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.conversationKit);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_29;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BBC58000, v15, v16, "[CallSubtitle] faceTimeIncoming: using linkName", v17, 2u);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.conversationKit);
      v15 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v15, v19))
      {
        countAndFlagsBits = v8._countAndFlagsBits;
        object = v8._object;
        goto LABEL_29;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BBC58000, v15, v19, "[CallSubtitle] faceTimeIncoming: using generic", v17, 2u);
      countAndFlagsBits = v8._countAndFlagsBits;
      object = v8._object;
    }

    MEMORY[0x1BFB23DF0](v17, -1, -1);
LABEL_29:

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v32._countAndFlagsBits = countAndFlagsBits;
    v32._object = object;
    v31.super.isa = NSAttributedString.__allocating_init(string:)(v32).super.isa;

    return v31.super.isa;
  }

  (*((*v2 & *a1) + 0x2A0))();
  v21 = v20;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.conversationKit);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BBC58000, v23, v24, "[CallSubtitle] faceTimeIncoming: no conversation", v25, 2u);
    MEMORY[0x1BFB23DF0](v25, -1, -1);
  }

  ObjectType = swift_getObjectType();
  if ((*(v21 + 136))(ObjectType, v21))
  {
    v27 = 0xEE004F454449565FLL;
  }

  else
  {
    v27 = 0xEE004F494455415FLL;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v35._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0x454D495445434146;
  v28._object = v27;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v29, v35);

  v31.super.isa = NSAttributedString.__allocating_init(string:)(v30).super.isa;
  swift_unknownObjectRelease();
  return v31.super.isa;
}

uint64_t ConversationControlsStringProvider.telephonyCallSubtitles(for:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 184))(ObjectType, v5);
  v8 = [v7 isTelephonyProvider];

  if (!v8)
  {
LABEL_16:
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CallParticipantLabelDescriptor();
  v9 = (*((*v2 & *a1) + 0xA38))();
  v10 = static CallParticipantLabelDescriptor.labelDescriptor(for:callCount:alertAvailable:allowsDuration:)(v3, v5, 1, v9 & 1, 0);
  if (!v10)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, &static Logger.conversationControls);
    swift_unknownObjectRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v39);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1BBC58000, v19, v20, "Unable to obtain label descriptor for telephony call: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      MEMORY[0x1BFB23DF0](v21, -1, -1);
    }

    goto LABEL_16;
  }

  v11 = v10;
  v12 = (*((*v2 & *v10) + 0x90))();
  (*((*v2 & *v11) + 0xA8))();
  if (v13)
  {
    v14 = v12[2];
    if (!swift_isUniquelyReferenced_nonNull_native() || v14 >= v12[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v12 = v15;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    swift_unknownObjectRetain();
    if ([v17 isOutgoing])
    {
      swift_unknownObjectRelease();

      v12 = &outlined read-only object #0 of ConversationControlsStringProvider.telephonyCallSubtitles(for:);
    }

    else
    {
      v27 = [v17 displayContext];
      if (v27)
      {
        outlined bridged method (ob) of @objc TUCallDisplayContext.callDirectoryLabel.getter(v27);
        if (v28)
        {

          v30 = (*((*v2 & *v11) + 0xC0))(v29);
          if (v31)
          {
            v32 = v30;
            v33 = v31;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
            v12 = swift_allocObject();
            *(v12 + 1) = xmmword_1BC4BA940;
            v12[4] = v32;
            v12[5] = v33;
          }
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v34 = v12[2];
  if (!v34)
  {

    swift_unknownObjectRelease();

    return MEMORY[0x1E69E7CC0];
  }

  v39 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v35 = (v12 + 5);
  do
  {
    v36 = *(v35 - 1);
    v37 = *v35;

    v38._countAndFlagsBits = v36;
    v38._object = v37;
    NSAttributedString.__allocating_init(string:)(v38);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v35 += 2;
    --v34;
  }

  while (v34);

  swift_unknownObjectRelease();

  return v39;
}

uint64_t outlined bridged method (ob) of @objc TUConversationHandoffEligibility.localizedDeviceCategory.getter(void *a1)
{
  v2 = [a1 localizedDeviceCategory];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc TUCollaborationInitiator.handle.getter(void *a1)
{
  v1 = [a1 handle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined init with take of PersonNameComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  if (*(*v0 + 16))
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
  }

  else
  {
    __break(1u);
  }
}

void specialized RangeReplaceableCollection.removeFirst()(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  specialized Collection.first.getter(*v1);
  if (v5)
  {
    outlined init with take of TapInteractionHandler(&v4, a1);
    if (*(v3 + 16))
    {
      specialized Array.replaceSubrange<A>(_:with:)();
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void specialized NoticeQueueStore.peek()()
{
  OUTLINED_FUNCTION_0_103();
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4 == v3)
    {

      *v0 = v5;
      specialized Collection.first.getter(v5);
      return;
    }

    if (v3 >= *(v1 + 16))
    {
      break;
    }

    outlined init with copy of IDSLookupManager(v2, &v20);
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    v6 = OUTLINED_FUNCTION_1_87();
    if (v7(v6))
    {
      __swift_destroy_boxed_opaque_existential_1(&v20);
    }

    else
    {
      outlined init with take of TapInteractionHandler(&v20, &v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_3_82();
        v5 = v22;
      }

      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v5 = v22;
      }

      OUTLINED_FUNCTION_4_68(isUniquelyReferenced_nonNull_native, v9, v10, v11, v12, v13, v14, v15, v18, v19);
    }

    v2 += 40;
    ++v3;
  }

  __break(1u);
}

void specialized NoticeQueueStore.pop()()
{
  OUTLINED_FUNCTION_0_103();
  v5 = MEMORY[0x1E69E7CC0];
  while (v4 != v3)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    outlined init with copy of IDSLookupManager(v2, &v21);
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    v6 = OUTLINED_FUNCTION_1_87();
    if (v7(v6))
    {
      __swift_destroy_boxed_opaque_existential_1(&v21);
    }

    else
    {
      outlined init with take of TapInteractionHandler(&v21, &v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_3_82();
        v5 = v23;
      }

      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v5 = v23;
      }

      OUTLINED_FUNCTION_4_68(isUniquelyReferenced_nonNull_native, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    }

    v2 += 40;
    ++v3;
  }

  *v0 = v5;
  specialized Collection.first.getter(v5);
  v18 = v22;
  outlined destroy of Notice?(&v21);
  if (v18)
  {
    specialized RangeReplaceableCollection.removeFirst()(v19);
  }

  else
  {
    *(v19 + 32) = 0;
    *v19 = 0u;
    *(v19 + 16) = 0u;
  }
}

uint64_t SimpleNoticeQueue.push(notice:)(uint64_t a1)
{
  outlined init with copy of IDSLookupManager(a1, v12);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v2 = *(*v1 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v2);
  v3 = v13;
  v4 = v14;
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v9 + 16))(v8, v6);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v2, v8, v1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t CoalescingNoticeQueue.push(notice:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized CoalescingNoticeQueue.push(notice:)(v4, v1, v2, v3);
}

uint64_t protocol witness for NoticeQueue.push(notice:) in conformance CoalescingNoticeQueue(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized CoalescingNoticeQueue.push(notice:)(v4, v1, v2, v3);
}

uint64_t ReplacingNoticeQueue.push(notice:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit6Notice_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  result = outlined init with copy of IDSLookupManager(a1, v3 + 32);
  *v1 = v3;
  return result;
}

uint64_t specialized CoalescingNoticeQueue.push(notice:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v59[3] = a3;
  v59[4] = a4;
  v51 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  v8 = *(*(a3 - 8) + 16);
  v50 = a3;
  v8(boxed_opaque_existential_1, a1, a3);
  v9 = 0;
  v10 = *a2;
  v11 = *(*a2 + 16);
  v12 = *a2 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v9)
    {

      *a2 = v13;
      specialized BidirectionalCollection.last.getter(v13, &v53);
      if (v54)
      {
        outlined init with take of TapInteractionHandler(&v53, &v56);
        v18 = v57;
        v19 = v58;
        __swift_mutable_project_boxed_opaque_existential_1(&v56, v57);
        if ((*(v19 + 208))(v59, v18, v19))
        {
          if (one-time initialization token for conversationControls != -1)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }

        __swift_destroy_boxed_opaque_existential_1(&v56);
      }

      else
      {
        outlined destroy of Notice?(&v53);
      }

      outlined init with copy of IDSLookupManager(v59, &v56);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v34 = *(*a2 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v34);
      v35 = __swift_mutable_project_boxed_opaque_existential_1(&v56, v57);
      v36 = MEMORY[0x1EEE9AC00](v35);
      v38 = &v50 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v38, v36);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v34, v38, a2, v50, v51);
      __swift_destroy_boxed_opaque_existential_1(&v56);
      return __swift_destroy_boxed_opaque_existential_1(v59);
    }

    if (v9 >= *(v10 + 16))
    {
      break;
    }

    outlined init with copy of IDSLookupManager(v12, &v56);
    v14 = v57;
    v15 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    if ((*(v15 + 40))(v14, v15))
    {
      __swift_destroy_boxed_opaque_existential_1(&v56);
    }

    else
    {
      outlined init with take of TapInteractionHandler(&v56, &v53);
      v52[0] = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
        v13 = v52[0];
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v13 = v52[0];
      }

      *(v13 + 16) = v17 + 1;
      outlined init with take of TapInteractionHandler(&v53, v13 + 40 * v17 + 32);
    }

    v12 += 40;
    ++v9;
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_15:
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v59, &v53);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v52[0] = v24;
    *v23 = 136315394;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    v25 = (*(v51 + 120))(v50);
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v52);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    swift_beginAccess();
    v29 = v57;
    v30 = v58;
    __swift_project_boxed_opaque_existential_1(&v56, v57);
    v31 = (*(v30 + 120))(v29, v30);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v52);

    *(v23 + 14) = v33;
    _os_log_impl(&dword_1BBC58000, v21, v22, "Coalesced notice:%s into existingNotice:%s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v24, -1, -1);
    MEMORY[0x1BFB23DF0](v23, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  specialized RangeReplaceableCollection<>.removeLast()(&v53);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  swift_beginAccess();
  outlined init with copy of IDSLookupManager(&v56, &v53);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v40 = *(*a2 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v40);
  v41 = v54;
  v42 = v55;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(&v53, v54);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v50 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v46, v44);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v40, v46, a2, v41, v42);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v48 = *a2;
  __swift_destroy_boxed_opaque_existential_1(&v56);
  *a2 = v48;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of TapInteractionHandler(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined destroy of Notice?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, char a11, unsigned __int8 a12, void *a13, uint64_t a14)
{
  v15 = v14;
  v63 = a8;
  v64 = a1;
  v56 = a4;
  v57 = a5;
  v58 = a3;
  v60 = a2;
  v61 = a14;
  v65 = a13;
  v59 = a10;
  v62 = a9;
  HIDWORD(v55) = a12;
  v18 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v69[3] = &type metadata for ScreeningStatusOverride;
  *&v69[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  *&v69[0] = Defaults.init()();
  CallScreeningService.init(overrides:)();
  v24 = type metadata accessor for Features();
  v25 = [objc_allocWithZone(v24) init];
  type metadata accessor for SystemApertureIconFactory(0);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E6995EE0];
  v28 = (v26 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v28[3] = v18;
  v28[4] = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(v20 + 16))(boxed_opaque_existential_1, v23, v18);
  v30 = (v26 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v30[3] = v24;
  v30[4] = &protocol witness table for Features;
  *v30 = v25;
  v31 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
  v32 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  __swift_storeEnumTagSinglePayload(v26 + v31, 1, 1, v32);
  v33 = v23;
  v34 = v18;
  v35 = v56;
  v36 = v57;
  (*(v20 + 8))(v33, v34);
  *(v15 + 184) = BYTE4(v55);
  *(v15 + 192) = v58;
  *(v15 + 200) = v35;
  *(v15 + 208) = v36;
  *(v15 + 216) = v26;
  if (a7)
  {
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v35);

    v37 = String.count.getter();

    if ((v59 & 1) == 0)
    {

      v40 = v62;
      v39 = v63;
      goto LABEL_9;
    }

    v38 = a6;
    v40 = v62;
    v39 = v63;
  }

  else
  {
    v38 = a6;
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v35);
    v40 = v62;
    v39 = v63;
    if ((v59 & 1) == 0)
    {
LABEL_9:
      v41 = v65;
      v42 = v64;
      v43 = ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
      goto LABEL_11;
    }

    v37 = 0;
  }

  static Layout.ConversationControls.values.getter(v69);
  if (*&v69[37] < v37)
  {

    goto LABEL_9;
  }

  v44 = v65;
  v45 = v64;
  v43 = ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
  swift_beginAccess();
  *(v43 + 120) = v38;
  *(v43 + 128) = a7;

  ControlsButtonProvider.title.didset(v46);
  v47 = ControlsButtonProvider.prominentTitleFont.getter();
  ControlsButtonProvider.titleFont.setter(v47);

LABEL_11:
  outlined init with copy of SymbolImageDescribing?(v39, v70);
  if (v70[3])
  {
    outlined init with take of ImageName(v70, v71);
    if (*(v43 + 41) != 2 || (a11 & 1) != 0)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v48 = v72;
      v49 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(v49 + 8))(v70, v48, v49);
      v50 = static UIImage.symbolImage(for:)(v70);
      outlined destroy of SymbolImageDescription(v70);
      ControlsButtonProvider.image.setter(v50);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
  }

  else
  {
    outlined destroy of SymbolImageDescribing?(v70);
  }

  outlined init with copy of SymbolImageDescribing?(v40, v71);
  if (v72)
  {
    outlined init with take of ImageName(v71, v66);
    if (*(v43 + 41) != 2)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v51 = v67;
      v52 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      (*(v52 + 8))(v71, v51, v52);
      v53 = static UIImage.symbolImage(for:)(v71);
      outlined destroy of SymbolImageDescription(v71);
      ControlsButtonProvider.accessory.setter(v53);
    }

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v35);
    outlined destroy of SymbolImageDescribing?(v40);
    outlined destroy of SymbolImageDescribing?(v39);
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  else
  {

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v35);
    outlined destroy of SymbolImageDescribing?(v40);
    outlined destroy of SymbolImageDescribing?(v39);
    outlined destroy of SymbolImageDescribing?(v71);
  }

  return v43;
}

Swift::Void __swiftcall ConversationControlsPrimaryActionButtonProvider.buttonChanged()()
{
  ControlsButtonProvider.buttonChanged()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(v0 + 41) == 2)
    {
      type metadata accessor for UILayoutPriority(0);
      lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
      v3 = v2;
      OUTLINED_FUNCTION_1_88();
      LODWORD(v4) = v7;
      [v2 setContentCompressionResistancePriority:1 forAxis:v4];

      v5 = v2;
      OUTLINED_FUNCTION_1_88();
      LODWORD(v6) = v7;
      [v2 setContentHuggingPriority:0 forAxis:v6];
    }
  }
}

void ConversationControlsPrimaryActionButtonProvider.buttonConfiguration.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for UIButton.Configuration.Size();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ConversationControlsMenuButtonProvider.buttonConfiguration.getter(a1);
  if (*(v1 + 184) == 1)
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E69DC568], v6);
    UIButton.Configuration.buttonSize.setter();
  }

  v12 = UIButton.Configuration.preferredSymbolConfigurationForImage.getter();
  if (!v12)
  {
    v12 = [objc_opt_self() unspecifiedConfiguration];
  }

  v13 = v12;
  v14 = [objc_opt_self() configurationWithWeight_];
  v15 = [v13 configurationByApplyingConfiguration_];

  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  if (static Platform.current.getter() == 2)
  {
    UIConfigurationColorTransformer.init(_:)();
    v16 = type metadata accessor for UIConfigurationColorTransformer();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v16);
    UIButton.Configuration.imageColorTransformer.setter();
  }
}

id closure #1 in ConversationControlsPrimaryActionButtonProvider.buttonConfiguration.getter()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

UIMenu ConversationControlsPrimaryActionButtonProvider.menu(for:)(void *a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICustomViewMenuElement);
    v8 = (v3 + 32);
    do
    {
      v9 = swift_allocObject();
      v10 = *v8++;
      swift_weakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      *(v11 + 40) = a1;
      *(v11 + 48) = a2;
      swift_unknownObjectRetain();
      v12 = a1;
      @nonobjc UICustomViewMenuElement.__allocating_init(viewProvider:)(partial apply for closure #1 in closure #1 in ConversationControlsPrimaryActionButtonProvider.menu(for:), v11);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
    v5 = v21;
  }

  v13 = [objc_opt_self() conversationKit];
  swift__string._object = 0xE000000000000000;
  v14.value._countAndFlagsBits = 0x61737265766E6F43;
  v14.value._object = 0xEF74694B6E6F6974;
  v15._object = 0x80000001BC501580;
  v15._countAndFlagsBits = 0xD000000000000027;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, swift__string);

  if (v5 >> 62)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
    preferredElementSize = v5;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v22.value.super.isa = 0;
  v22.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, 0, v22, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v20);
}

char *closure #1 in closure #1 in ConversationControlsPrimaryActionButtonProvider.menu(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v11 = Strong;
  ObjectType = swift_getObjectType();
  v13 = (*(a4 + 184))(ObjectType, a4);
  v14 = [v13 isSystemProvider];

  v32 = a6;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v17 = *(v11 + 216);

    v15 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(a3, v17, ObjectType, a4);

    if (v15)
    {
    }
  }

  v18 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v19 = objc_opt_self();
  v31 = v15;
  v20 = [v19 clearColor];
  v21 = swift_unknownObjectRetain();
  v22 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v21, 0, v15, v20, v18, ObjectType, a4);
  v23 = (*(a4 + 72))(ObjectType, a4);
  v25 = v24;
  v26 = [v22 view];
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = a5;
  v28[4] = v32;
  v28[5] = a3;
  v28[6] = a4;
  objc_allocWithZone(type metadata accessor for ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView());
  swift_unknownObjectRetain();

  v29 = a5;
  v16 = ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.init(title:accessoryView:onSelection:)(v23, v25, v26, partial apply for closure #1 in closure #1 in closure #1 in ConversationControlsPrimaryActionButtonProvider.menu(for:), v28);

  return v16;
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationControlsPrimaryActionButtonProvider.menu(for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = objc_opt_self();
      v17 = a2;
      v18 = [v16 defaultCenter];
      static Notification.contextMenuDidDismiss(target:)(v15);
      NSNotificationCenter.post(_:afterAnimatorCompletes:)(v11, 0);

      (*(v9 + 8))(v11, v8);
    }

    v19 = *(v13 + 200);
    if (v19)
    {
      v19(a4, a5);
    }
  }

  return result;
}

id closure #1 in variable initialization expression of ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.titleLabel(void *a1)
{
  [a1 setAlpha_];
  v1 = [objc_opt_self() systemFontOfSize_];
  [a1 setFont_];

  [a1 setNumberOfLines_];
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];

  return a1;
}

char *ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.init(title:accessoryView:onSelection:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = closure #1 in variable initialization expression of ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.titleLabel(v12);

  *&v5[v11] = v13;
  v14 = &v5[OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_onSelection];
  *v14 = a4;
  *(v14 + 1) = a5;
  v52.receiver = v5;
  v52.super_class = type metadata accessor for ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView();
  super_class = v52.super_class;

  v15 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_titleLabel;
  v17 = *&v15[OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_titleLabel];
  v18 = v15;
  outlined bridged method (mbnn) of @objc UILabel.text.setter(a1, a2, v17);
  v19 = *&v15[v16];
  v20 = v18;
  [v20 addSubview_];
  v49 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BC4BA920;
  v22 = [*&v15[v16] leadingAnchor];
  v23 = [v20 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:16.0];

  *(v21 + 32) = v24;
  v25 = [v20 trailingAnchor];

  v26 = [*&v15[v16] trailingAnchor];
  v27 = OUTLINED_FUNCTION_0_104();
  v29 = [v27 v28];

  *(v21 + 40) = v29;
  v30 = [*&v15[v16] topAnchor];
  v31 = [v20 topAnchor];

  v32 = OUTLINED_FUNCTION_0_104();
  v34 = [v32 v33];

  *(v21 + 48) = v34;
  v35 = [*&v15[v16] centerYAnchor];
  v36 = [v20 centerYAnchor];

  v37 = [v35 constraintEqualToAnchor_];
  *(v21 + 56) = v37;
  v38 = [v20 bottomAnchor];

  v39 = [*&v15[v16] bottomAnchor];
  v40 = OUTLINED_FUNCTION_0_104();
  v42 = [v40 v41];

  *(v21 + 64) = v42;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v49 activateConstraints_];

  if (a3)
  {
    v44 = v20;
    v45 = a3;
    ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.addAccessoryView(_:)(v45);
  }

  v51[3] = super_class;
  v51[0] = v20;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v46 = v20;
  v47 = @nonobjc UITapGestureRecognizer.init(target:action:)(v51, sel_onTap);
  [v46 addGestureRecognizer_];

  return v46;
}

id ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.init(coder:)()
{
  v1 = OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_titleLabel;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = closure #1 in variable initialization expression of ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.titleLabel(v2);

  *(v0 + v1) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.addAccessoryView(_:)(void *a1)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4CB3D0;
  v5 = [a1 leadingAnchor];
  v6 = [*&v1[OBJC_IVAR____TtCC15ConversationKit47ConversationControlsPrimaryActionButtonProvider19AvatarSelectionView_titleLabel] trailingAnchor];
  v7 = OUTLINED_FUNCTION_2_87();
  v9 = [v7 v8];

  *(v4 + 32) = v9;
  v10 = [v1 trailingAnchor];
  v11 = [a1 trailingAnchor];
  v12 = OUTLINED_FUNCTION_2_87();
  v14 = [v12 v13];

  *(v4 + 40) = v14;
  v15 = [a1 topAnchor];
  v16 = [v1 topAnchor];
  v17 = OUTLINED_FUNCTION_2_87();
  v19 = [v17 v18];

  *(v4 + 48) = v19;
  v20 = [a1 centerYAnchor];
  v21 = [v1 centerYAnchor];
  v22 = OUTLINED_FUNCTION_2_87();
  v24 = [v22 v23];

  *(v4 + 56) = v24;
  v25 = [v1 bottomAnchor];
  v26 = [a1 bottomAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26 constant:12.0];

  *(v4 + 64) = v27;
  v28 = [a1 heightAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v4 + 72) = v29;
  v30 = [a1 widthAnchor];
  v31 = [v30 constraintEqualToConstant_];

  *(v4 + 80) = v31;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints_];
}

id ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationControlsPrimaryActionButtonProvider.AvatarSelectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ConversationControlsPrimaryActionButtonProvider.__ivar_destroyer()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 200));
}

uint64_t ConversationControlsPrimaryActionButtonProvider.deinit()
{
  v0 = ConversationControlsMenuButtonProvider.deinit();

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 200));

  return v0;
}

uint64_t ConversationControlsPrimaryActionButtonProvider.__deallocating_deinit()
{
  ConversationControlsPrimaryActionButtonProvider.deinit();

  return swift_deallocClassInstance();
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  ObjectType = swift_getObjectType();

  return specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(a1, a3, a4, a5, v5, ObjectType, a2);
}

uint64_t ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = [objc_opt_self() tu:a1 contactStoreConfigurationForConversation:?];
  v9 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  v10 = [v7 mergedRemoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
  lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = specialized Set.count.getter(v11);
  if (v12)
  {
    v13 = v12;
    v69 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = specialized Set.startIndex.getter(v11);
    v66 = result;
    v67 = v15;
    v68 = v16 & 1;
    if ((v13 & 0x8000000000000000) == 0)
    {
      v58 = v9;
      v59 = a5;
      v60 = v7;
      v17 = 0;
      v63 = v13;
      v64 = v11 & 0xC000000000000001;
      v18 = &selRef_isRecordingAllowed;
      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v20 = v68;
        v21 = OUTLINED_FUNCTION_4_69();
        v22 = v11;
        specialized Set.subscript.getter(v21, v23, v24, v11, &lazy cache variable for type metadata for TUConversationMember);
        v26 = v25;
        v27 = v18;
        v28 = [v25 v18[6]];
        v29 = [v28 shouldHideContact];

        if (v29)
        {
          [objc_allocWithZone(MEMORY[0x1E695CF18]) initWithContact_];
        }

        else
        {
          v30 = [v26 v27 + 248];
          [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

          v26 = v30;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_1_5();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        v11 = v22;
        if (v64)
        {
          if (!v20)
          {
            goto LABEL_22;
          }

          v18 = &selRef_isRecordingAllowed;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v42 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd);
          v43 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v43(v65, 0);
        }

        else
        {
          v31 = OUTLINED_FUNCTION_4_69();
          v34 = specialized _NativeSet.index(after:)(v31, v32, v33, v22);
          v36 = v35;
          v38 = v37;
          v39 = OUTLINED_FUNCTION_4_69();
          result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v39, v40, v41);
          v66 = v34;
          v67 = v36;
          v68 = v38 & 1;
          v18 = &selRef_isRecordingAllowed;
          v42 = v63;
        }

        ++v17;
        if (v19 == v42)
        {

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v66, v67, v68);
          v44 = v69;
          v7 = v60;
          v9 = v58;
          a5 = v59;
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    v44 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v45 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
    v46 = a2;
    v47 = a5;
    v48 = ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v9, v44, a2, v47);
    v49 = [v48 avatarViewController];
    v50 = a4;
    if (!a4)
    {
      a3 = TUConversation.participantListDisplayName.getter();
      v50 = v51;
    }

    v52 = outlined bridged method (pb) of @objc TUConversation.messagesGroupPhotoData.getter(v7);
    v54 = v53;
    v55 = [v48 contacts];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = objc_allocWithZone(MEMORY[0x1E695D158]);
    v57 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(a3, v50, v52, v54);
    [v49 updateViewWithGroupIdentity_];

    return v48;
  }

  return result;
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(contactStore:handle:badgeImage:)(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BAC30;
    v6 = [a2 shouldHideContact];
    v7 = objc_allocWithZone(MEMORY[0x1E695CF18]);
    if (v6)
    {
      v8 = [v7 initWithContact_];
    }

    else
    {
      v8 = [v7 _initWithHandle_];
    }

    *(v5 + 32) = v8;
  }

  v9 = [objc_opt_self() clearColor];
  v10 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
  v11 = OUTLINED_FUNCTION_62_0();
  v13 = ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v11, v12, a3, v9);

  return v13;
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(contactStore:participants:badgeImage:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = *(a2 + 16);
  if (!v12)
  {

    goto LABEL_11;
  }

  v22 = a3;
  specialized ContiguousArray.reserveCapacity(_:)();
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  do
  {
    outlined init with copy of Participant(v13, v11);
    v15 = *(v11 + *(v5 + 28));
    if (!v15)
    {
      goto LABEL_6;
    }

    v16 = v15;
    if ([v16 shouldHideContact])
    {

LABEL_6:
      [objc_allocWithZone(MEMORY[0x1E695CF18]) initWithContact_];
      goto LABEL_8;
    }

    [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

LABEL_8:
    outlined destroy of Participant(v11);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v13 += v14;
    --v12;
  }

  while (v12);

  a3 = v22;
LABEL_11:
  v17 = [objc_opt_self() clearColor];
  v18 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
  v19 = OUTLINED_FUNCTION_4_31();
  return ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v19, v20, a3, v17);
}

uint64_t ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:badgeImage:)(uint64_t a1, void *a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  specialized ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:badgeImage:)(v10, a2, v2, v5, v6);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:activeRemoteParticipant:badgeImage:)(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 24);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9);
  v13 = specialized ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:activeRemoteParticipant:badgeImage:)(v11, a2, a3, v3, v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t static ConversationControlsBadgingAvatarViewController.hasAvatar(for:)(NSObject *a1)
{
  v1 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3].isa);
  OUTLINED_FUNCTION_62_0();
  dispatch thunk of BasicCall.underlyingObject.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  v1 = v27;
  v2 = outlined bridged method (pb) of @objc TUCall.contactIdentifiers.getter(v27);
  if (!v2)
  {
LABEL_14:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, &static Logger.conversationControls);
    v6 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BBC58000, v6, v24, "hasAvatar: call has no contactIdentifiers", v25, 2u);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
    }

LABEL_19:

    goto LABEL_20;
  }

  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {

    goto LABEL_14;
  }

  v5 = [objc_opt_self() tu:v27 contactStoreConfigurationForCall:?];
  v6 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  v7 = (v3 + 40);
  v8 = -v4;
  v9 = -1;
  while (1)
  {
    if (v8 + v9 == -1)
    {

      goto LABEL_19;
    }

    if (++v9 >= *(v3 + 16))
    {
      break;
    }

    v10 = v7 + 2;
    v12 = *(v7 - 1);
    v11 = *v7;

    v13._countAndFlagsBits = v12;
    v13._object = v11;
    LOBYTE(v12) = CNContactStore.hasImage(forContactId:)(v13);

    v7 = v10;
    if (v12)
    {

      return 1;
    }
  }

  __break(1u);
LABEL_23:
  OUTLINED_FUNCTION_0_0();
LABEL_10:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(v1, v26);
  v1 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    swift_getDynamicType();
    v19 = _typeName(_:qualified:)();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(v26);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v27);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1BBC58000, v1, v16, "hasAvatar: Unexpected call type: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
    MEMORY[0x1BFB23DF0](v17, -1, -1);
LABEL_20:

    return 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return 0;
}

id ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [objc_opt_self() settingsWithContactStore:a1 threeDTouchEnabled:0];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v9 = objc_msgSendSuper2(&v15, sel_initWithSettings_, v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
  v10 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setContacts_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNBadgingAvatarBadgeStyleSettings);
  v12 = CNBadgingAvatarBadgeStyleSettings.__allocating_init(position:color:backgroundColor:cropStyle:)(2, 0, 0, 1);
  [v10 setBadgeStyleSettings_];

  v13 = [v10 badgeStyleSettings];
  [v13 setBackgroundColor_];

  [v10 setBadgeImage_];
  return v10;
}

Swift::Int ConversationControlsBadgingAvatarViewController.hash(callUUID:)()
{
  v1 = v0;
  Hasher.init()();
  v2 = [v0 contacts];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter(v3);

  MEMORY[0x1BFB22640](v4);
  UUID.uuidString.getter();
  String.hash(into:)();

  v5 = [v1 badgeImage];
  if (v5)
  {
    v6 = v5;
    v7 = UIImagePNGRepresentation(v5);
    if (v7)
    {
      v8 = v7;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = OUTLINED_FUNCTION_62_0();
      v10 = MEMORY[0x1BFB1A2C0](v9);
      MEMORY[0x1BFB22640](v10);

      v11 = OUTLINED_FUNCTION_62_0();
      outlined consume of Data._Representation(v11, v12);
    }

    else
    {
    }
  }

  return Hasher.finalize()();
}

id ConversationControlsBadgingAvatarViewController.__allocating_init(settings:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSettings_];

  return v3;
}

id ConversationControlsBadgingAvatarViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationControlsBadgingAvatarViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CNBadgingAvatarBadgeStyleSettings.__allocating_init(position:color:backgroundColor:cropStyle:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPosition:a1 color:a2 backgroundColor:a3 cropStyle:a4];

  return v6;
}

id @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v7 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v7 = 0;
  }

  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a3, a4);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v4 initGroupWithName:v7 photo:isa contacts:v9];

  return v10;
}

uint64_t outlined bridged method (pb) of @objc TUConversation.messagesGroupPhotoData.getter(void *a1)
{
  v1 = [a1 messagesGroupPhotoData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc CNMutableContact.firstName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setFirstName_];
}

uint64_t specialized _NativeSet.index(after:)(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return _HashTable.occupiedBucket(after:)();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void specialized Set.subscript.getter(uint64_t a1)
{
  if (a1 < 0 || (OUTLINED_FUNCTION_1_89(), v4 ^ v5 | v3))
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_58();
  if ((v8 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v7 + 36) != v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = *(v7 + 48);
  v10 = v9 + *(*(type metadata accessor for Participant(0) - 8) + 72) * v2;

  outlined init with copy of Participant(v10, v1);
}

{
  if (a1 < 0 || (OUTLINED_FUNCTION_1_89(), v4 ^ v5 | v3))
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8_58();
  if ((v8 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v7 + 36) != v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = *(v7 + 48);
  v10 = type metadata accessor for Participant();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v13 = v9 + *(v11 + 72) * v2;

  v12(v1, v13, v10);
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized Set.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 24 * result;
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    *a4 = *v4;
    *(a4 + 8) = v6;
    *(a4 + 16) = v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

id specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v10 = a2;
    swift_unknownObjectRelease();
    v11 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v10, a3, 0, 0, a4);

    return v11;
  }

  else
  {
    (*(a7 + 48))(v53, a6, a7);
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    v15 = dispatch thunk of BasicCall.contactStoreConfiguration.getter();
    v48 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    __swift_destroy_boxed_opaque_existential_1(v53);
    v16 = (*(a7 + 192))(a6, a7);
    v17 = specialized Set.count.getter(v16);
    if (v17)
    {
      v18 = v17;
      v47 = a1;
      v52 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      result = specialized Set.startIndex.getter(v16);
      v49 = result;
      v50 = v19;
      v51 = v20 & 1;
      if ((v18 & 0x8000000000000000) == 0)
      {
        v21 = 0;
        while (!__OFADD__(v21++, 1))
        {
          v23 = OUTLINED_FUNCTION_1_5();
          specialized Set.subscript.getter(v23, v24, v51, v16, &lazy cache variable for type metadata for TUHandle);
          v26 = v25;
          v27 = [v25 shouldHideContact];
          v28 = objc_allocWithZone(MEMORY[0x1E695CF18]);
          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = v26;
          }

          v30 = &selRef_initWithContact_;
          if (!v27)
          {
            v30 = &selRef__initWithHandle_;
          }

          [v28 *v30];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          result = specialized ContiguousArray._endMutation()();
          if ((v16 & 0xC000000000000001) != 0)
          {
            if (!v51)
            {
              goto LABEL_39;
            }

            OUTLINED_FUNCTION_1_5();
            if (__CocoaSet.Index.handleBitPattern.getter())
            {
              swift_isUniquelyReferenced_nonNull_native();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd);
            v35 = Set.Index._asCocoa.modify();
            __CocoaSet.formIndex(after:isUnique:)();
            result = v35(v53, 0);
          }

          else
          {
            if (v51)
            {
              goto LABEL_40;
            }

            if ((v49 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            v31 = 1 << *(v16 + 32);
            if (v49 >= v31)
            {
              goto LABEL_35;
            }

            v32 = v49 >> 6;
            v33 = *(v16 + 56 + 8 * (v49 >> 6));
            if (((v33 >> v49) & 1) == 0)
            {
              goto LABEL_36;
            }

            if (*(v16 + 36) != v50)
            {
              goto LABEL_37;
            }

            v34 = v33 & (-2 << (v49 & 0x3F));
            if (v34)
            {
              v31 = __clz(__rbit64(v34)) | v49 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v36 = v32 << 6;
              v37 = v32 + 1;
              v38 = (v16 + 64 + 8 * v32);
              while (v37 < (v31 + 63) >> 6)
              {
                v40 = *v38++;
                v39 = v40;
                v36 += 64;
                ++v37;
                if (v40)
                {
                  v41 = OUTLINED_FUNCTION_1_5();
                  result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v41, v42, 0);
                  v31 = __clz(__rbit64(v39)) + v36;
                  goto LABEL_29;
                }
              }

              v43 = OUTLINED_FUNCTION_1_5();
              result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v43, v44, 0);
            }

LABEL_29:
            v49 = v31;
            v50 = v50;
            v51 = 0;
          }

          if (v21 == v18)
          {

            swift_unknownObjectRelease();
            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v49, v50, v51);
            v45 = v52;
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {

      swift_unknownObjectRelease();
      v45 = MEMORY[0x1E69E7CC0];
LABEL_33:
      v46 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
      return ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v48, v45, a3, a4);
    }
  }

  return result;
}

void specialized ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:badgeImage:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for URL();
  v78 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v65 - v12;
  v13 = type metadata accessor for CharacterSet();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 32))(v21, a1, a4, v19);
  if ((dispatch thunk of BasicCall.isPushToTalk.getter() & 1) == 0)
  {

    goto LABEL_26;
  }

  v77 = a4;
  v74 = a5;
  dispatch thunk of BasicCall.underlyingObject.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  if ((swift_dynamicCast() & 1) == 0)
  {

    a4 = v77;
    goto LABEL_26;
  }

  v66 = v9;
  v73 = v79;
  v22 = [v79 channelDisplayName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v71 = v25;
  v72 = v23;
  v80 = v23;
  v81 = v25;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v26 = StringProtocol.components(separatedBy:)();
  (*(v14 + 8))(v16, v13);
  v27 = specialized Collection.prefix(_:)(2, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v35 = (v33 >> 1) - v31;
  if (!__OFSUB__(v33 >> 1, v31))
  {
    v36 = v34;
    v69 = v27;
    v70 = v17;
    if (v35 <= 0)
    {
      v39 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      if (v31 > 0 || v33 < 2)
      {
        goto LABEL_28;
      }

      v39 = *v29;
      v38 = v29[1];
    }

    outlined bridged method (mbnn) of @objc CNMutableContact.firstName.setter(v39, v38, v36);
    if (v35 < 2)
    {
      v42 = 0;
      v41 = 0xE000000000000000;
    }

    else
    {
      if (v31 > 1 || v33 < 4)
      {
        goto LABEL_29;
      }

      v42 = v29[2];
      v41 = v29[3];
    }

    outlined bridged method (mbnn) of @objc CNMutableContact.lastName.setter(v42, v41, v36);
    v43 = dispatch thunk of BasicCall.contactStoreConfiguration.getter();
    v44 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v45 = swift_allocObject();
    v67 = xmmword_1BC4BAC30;
    *(v45 + 16) = xmmword_1BC4BAC30;
    *(v45 + 32) = v36;
    v46 = objc_opt_self();
    v74 = a2;
    v47 = v36;
    v48 = v44;
    v49 = [v46 clearColor];
    v50 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
    v51 = ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v48, v45, a2, v49);
    v52 = [v73 imageURL];
    if (v52)
    {
      v53 = v52;
      v65 = v48;
      v54 = v75;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = v76;
      v56 = v66;
      (*(v78 + 32))(v76, v54, v66);
      v57 = Data.init(contentsOf:options:)();
      v17 = v70;
      v58 = v57;
      v60 = v59;
      a4 = v77;
      (*(v78 + 8))(v55, v56);
      v48 = v65;
    }

    else
    {
      v58 = 0;
      v60 = 0xF000000000000000;
      v17 = v70;
      a4 = v77;
    }

    v61 = swift_allocObject();
    *(v61 + 16) = v67;
    *(v61 + 32) = v47;
    v62 = objc_allocWithZone(MEMORY[0x1E695D158]);
    outlined copy of Data?(v58, v60);
    v63 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v72, v71, v58, v60);
    v64 = [v51 avatarViewController];

    [v64 updateViewWithGroupIdentity_];
    outlined consume of Data?(v58, v60);

    swift_unknownObjectRelease();
LABEL_26:
    (*(v17 + 8))(v21, a4);
    return;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

id specialized ConversationControlsBadgingAvatarViewController.__allocating_init(pttCall:activeRemoteParticipant:badgeImage:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 32))(v19, a1, a5, v17);
  if (dispatch thunk of BasicCall.isPushToTalk.getter())
  {
    v52 = v14;
    v48 = v9;
    v20 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
    v21 = [a2 name];
    v54 = a2;
    if (!v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = MEMORY[0x1BFB209B0](v22);
    }

    [v20 setNickname_];

    v23 = dispatch thunk of BasicCall.contactStoreConfiguration.getter();
    v24 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BC4BAC30;
    *(v25 + 32) = v20;
    v26 = objc_opt_self();
    v50 = a3;
    v27 = v24;
    v49 = v20;
    v28 = [v26 clearColor];
    v29 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
    v51 = v27;
    v30 = ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v27, v25, a3, v28);
    v31 = v54;
    v32 = [v54 imageURL];
    if (v32)
    {
      v33 = v32;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = v53;
      v35 = v48;
      (*(v53 + 32))(v52, v11, v48);
      v36 = Data.init(contentsOf:options:)();
      v38 = v37;
      (*(v34 + 8))(v52, v35);
    }

    else
    {
      v36 = 0;
      v38 = 0xF000000000000000;
    }

    v39 = [v31 name];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    outlined copy of Data?(v36, v38);
    v43 = [v30 contacts];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = objc_allocWithZone(MEMORY[0x1E695D158]);
    v45 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v40, v42, v36, v38);
    v46 = [v30 avatarViewController];

    [v46 updateViewWithGroupIdentity_];
    outlined consume of Data?(v36, v38);
  }

  else
  {

    v30 = 0;
  }

  (*(v15 + 8))(v19, a5);
  return v30;
}

Swift::Void __swiftcall MenuAssertionManager.acquireAssertion(reason:)(Swift::String reason)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = MEMORY[0x1BFB209B0](reason._countAndFlagsBits, reason._object);
  v5 = [v3 acquireForReason_];

  swift_beginAccess();
  if (v5)
  {
    v6 = swift_unknownObjectRetain();
    MEMORY[0x1BFB20CC0](v6);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  swift_endAccess();
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall MenuAssertionManager.releaseLastAssertion()()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    swift_endAccess();
    return;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = specialized Array._customRemoveLast()();
  if (v2)
  {
LABEL_6:
    v6 = v2;
    swift_endAccess();
    [v6 invalidate];
    swift_unknownObjectRelease();
    return;
  }

  v3 = specialized Array.count.getter(*(v0 + 24));
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (!v4)
  {
    v2 = specialized Array.remove(at:)(v5);
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall MenuAssertionManager.releaseAllAssertions()()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = specialized Array.count.getter(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      *(v0 + 24) = MEMORY[0x1E69E7CC0];

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB22010](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(v1 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    [v4 invalidate];
    swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id *MenuAssertionManager.deinit()
{
  (*(*v0 + 18))();
  [v0[2] invalidate];

  return v0;
}

uint64_t MenuAssertionManager.__deallocating_deinit()
{
  MenuAssertionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t MenuAssertionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  MenuAssertionManager.init()();
  return v0;
}

uint64_t MenuAssertionManager.init()()
{
  v1 = MEMORY[0x1BFB209B0](0xD000000000000014, 0x80000001BC501820);
  v2 = [objc_opt_self() assertionWithIdentifier_];

  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return v0;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return OUTLINED_FUNCTION_0_105(a1, specialized _ArrayBuffer._consumeAndCreateNew(), type metadata accessor for HUDActivityManager.BannerUpdate, specialized UnsafeMutablePointer.moveInitialize(from:count:), a2);
}

{
  return OUTLINED_FUNCTION_0_105(a1, specialized _ArrayBuffer._consumeAndCreateNew(), type metadata accessor for Participant, specialized UnsafeMutablePointer.moveInitialize(from:count:), a2);
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(uint64_t, unint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_1_90();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v15 = *(v7 + 16);
  if (v15 <= a1)
  {
    __break(1u);
  }

  else
  {
    v16 = *(a3(0) - 8);
    v17 = *(v16 + 72);
    v18 = v7 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v17 * a1;
    outlined init with take of HUDActivityManager.BannerUpdate(v18, a6, a4);
    result = a5(v18 + v17, v15 - 1 - a1, v18);
    *(v7 + 16) = v15 - 1;
    *v6 = v7;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8 + 40, v7, v8 + 32);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

void specialized Array.remove(at:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v5 = v8;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v5 + 40 * a1;
    outlined init with take of TapInteractionHandler((v7 + 32), a2);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v7 + 72, v6 - 1 - a1, v7 + 32);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  OUTLINED_FUNCTION_1_90();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    result = a2(v4);
    v4 = result;
  }

  v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = (v4 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v13 = *(v12 + 0x20);
    a3(v12 + 40, v11);
    *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    *v3 = v4;
    return v13;
  }

  return result;
}

void specialized Array._customRemoveLast()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_90();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v2 = v7;
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
    outlined init with take of HUDActivityManager.BannerUpdate(v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a1, type metadata accessor for HUDActivityManager.BannerUpdate);
    *(v2 + 16) = v5;
    *v1 = v2;

    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

{
  OUTLINED_FUNCTION_1_90();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v2 = v6;
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    outlined init with take of TapInteractionHandler((v2 + 40 * v4 - 8), a1);
    *(v2 + 16) = v5;
    *v1 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with take of HUDActivityManager.BannerUpdate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ConversationControlsButton.localizedName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return ConversationControlsButton.localizedName.didset();
}

id static ConversationControlsButtonFactory.makeButton(frame:provider:)()
{
  OUTLINED_FUNCTION_1_91();
  if (*(v0 + 40))
  {
    v1 = objc_allocWithZone(type metadata accessor for ConversationControlsButton());

    OUTLINED_FUNCTION_18_1();
    return ConversationControlsButton.init(frame:provider:)();
  }

  else
  {
    v3 = objc_allocWithZone(type metadata accessor for SystemApertureButton());

    OUTLINED_FUNCTION_18_1();
    return SystemApertureButton.init(frame:provider:)();
  }
}

id SystemApertureButton.__allocating_init(frame:provider:)()
{
  OUTLINED_FUNCTION_1_91();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_18_1();
  return SystemApertureButton.init(frame:provider:)();
}

id ConversationControlsButton.__allocating_init(frame:provider:)()
{
  OUTLINED_FUNCTION_1_91();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_18_1();
  return ConversationControlsButton.init(frame:provider:)();
}

uint64_t key path getter for ConversationControlsButton.delegate : ConversationControlsButton@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___CNKConversationControlsButton_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ConversationControlsButton.delegate : ConversationControlsButton(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR___CNKConversationControlsButton_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ConversationControlsButton.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___CNKConversationControlsButton_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationControlsButton.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___CNKConversationControlsButton_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_15_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t ConversationControlsButton.localizedName.getter()
{
  OUTLINED_FUNCTION_6_11();
  v1 = *v0;

  return v1;
}

uint64_t key path getter for ConversationControlsButton.localizedName : ConversationControlsButton@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t key path setter for ConversationControlsButton.localizedName : ConversationControlsButton(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return ConversationControlsButton.localizedName.setter(v1, v2);
}

uint64_t ConversationControlsButton.localizedName.didset()
{
  v1 = v0 + OBJC_IVAR___CNKConversationControlsButton_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*ConversationControlsButton.localizedName.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ConversationControlsButton.localizedName.modify;
}

uint64_t ConversationControlsButton.localizedName.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return ConversationControlsButton.localizedName.didset();
  }

  return result;
}

id ConversationControlsButton.init(frame:provider:)()
{
  OUTLINED_FUNCTION_1_91();
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR___CNKConversationControlsButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR___CNKConversationControlsButton_provider) = v0;
  v4 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v5, v6, v4, v1, ObjectType);
}

id ConversationControlsButton.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

void ConversationControlsButton.init(coder:)()
{
  *(v0 + OBJC_IVAR___CNKConversationControlsButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_4_70();
  __break(1u);
}

Swift::Void __swiftcall ConversationControlsButton.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  [v2 setAnimationsEnabled_];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  OUTLINED_FUNCTION_2_88();
  (*(v3 + 552))();
  [v2 setAnimationsEnabled_];
}

uint64_t ConversationControlsButton.contextMenuInteraction(_:willDisplayMenuFor:animator:)()
{
  return ConversationControlsButton.contextMenuInteraction(_:willDisplayMenuFor:animator:)();
}

{
  v10.receiver = v0;
  v10.super_class = OUTLINED_FUNCTION_8_59();
  OUTLINED_FUNCTION_11_47(v10.super_class, sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_, v1, v2, v3, v4, v5, v6, v10);
  OUTLINED_FUNCTION_2_88();
  v7 = OUTLINED_FUNCTION_15_14();
  return v8(v7);
}

uint64_t ConversationControlsButton.contextMenuInteraction(_:willEndFor:animator:)()
{
  return ConversationControlsButton.contextMenuInteraction(_:willEndFor:animator:)();
}

{
  v10.receiver = v0;
  v10.super_class = OUTLINED_FUNCTION_8_59();
  OUTLINED_FUNCTION_11_47(v10.super_class, sel_contextMenuInteraction_willEndForConfiguration_animator_, v1, v2, v3, v4, v5, v6, v10);
  OUTLINED_FUNCTION_2_88();
  v7 = OUTLINED_FUNCTION_15_14();
  return v8(v7);
}

void @objc ConversationControlsButton.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

UIContextMenuConfiguration_optional __swiftcall ConversationControlsButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v2 = ConversationControlsButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(_.super.isa, &OBJC_IVAR___CNKConversationControlsButton_provider);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

CGPoint __swiftcall ConversationControlsButton.menuAttachmentPoint(for:)(UIContextMenuConfiguration a1)
{
  v1 = ConversationControlsButton.menuAttachmentPoint(for:)(a1.super.isa, &OBJC_IVAR___CNKConversationControlsButton_provider, &protocol witness table for ConversationControlsButton);
  result.y = v2;
  result.x = v1;
  return result;
}

uint64_t ConversationControlsButton.cnkContentAlpha.getter()
{
  return ConversationControlsButton.cnkContentAlpha.getter();
}

{
  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 216))();
}

uint64_t ConversationControlsButton.cnkContentAlpha.setter()
{
  return ConversationControlsButton.cnkContentAlpha.setter();
}

{
  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 224))();
}

uint64_t (*ConversationControlsButton.cnkContentAlpha.modify(uint64_t a1))()
{
  *(a1 + 8) = *(v1 + OBJC_IVAR___CNKConversationControlsButton_provider);
  OUTLINED_FUNCTION_0_1();
  *a1 = (*(v3 + 216))();
  return ConversationControlsButton.cnkContentAlpha.modify;
}

uint64_t (*protocol witness for Control.cnkContentAlpha.modify in conformance ConversationControlsButton(uint64_t a1))()
{
  v2 = *(v1 + OBJC_IVAR___CNKConversationControlsButton_provider);
  *(a1 + 8) = v2;
  *a1 = (*(*v2 + 216))();
  return ConversationControlsButton.cnkContentAlpha.modify;
}

id SystemApertureButton.init(frame:provider:)()
{
  OUTLINED_FUNCTION_1_91();
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR____TtC15ConversationKit20SystemApertureButton_provider) = v0;
  v8 = ObjectType;

  v3 = OUTLINED_FUNCTION_18_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v1, v8);
  [v6 setShowsMenuFromSource_];

  return v6;
}

id @objc ConversationControlsButton.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x1BFB209B0](v5, v7);

  return v8;
}

uint64_t ConversationControlsButton.description.getter(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  _StringGuts.grow(_:)(32);

  v11 = 60;
  v12 = 0xE100000000000000;
  v9 = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v4 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v4);

  MEMORY[0x1BFB20B10](0x6E6F74747562203ALL, 0xEB00000000203D20);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_description, v9);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v6);

  MEMORY[0x1BFB20B10](0x6469766F7270203BLL, 0xED0000203D207265);
  type metadata accessor for ControlsButtonProvider();

  v7 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v7);

  MEMORY[0x1BFB20B10](62, 0xE100000000000000);
  return v11;
}

Swift::Void __swiftcall SystemApertureButton.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  OUTLINED_FUNCTION_2_88();
  (*(v1 + 552))();
}

uint64_t ConversationControlsButton.didMoveToWindow()()
{
  OUTLINED_FUNCTION_247();
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_didMoveToWindow);
  OUTLINED_FUNCTION_2_88();
  return (*(v1 + 560))(v0);
}

UIContextMenuConfiguration_optional __swiftcall SystemApertureButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v2 = ConversationControlsButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(_.super.isa, &OBJC_IVAR____TtC15ConversationKit20SystemApertureButton_provider);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

void *ConversationControlsButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(uint64_t a1, void *a2)
{
  v3 = *(**(v2 + *a2) + 264);

  if (v3(v4))
  {
    v6 = v5;
    type metadata accessor for UIContextMenuConfiguration();
    OUTLINED_FUNCTION_24();
    v7 = swift_allocObject();
    *(v7 + 24) = v6;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_24();
    v8 = swift_allocObject();
    *(v8 + 24) = &protocol witness table for ControlsButtonProvider;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_24();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)();
    v11 = v10;
    [v10 setPreferredMenuAlignment_];
    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return v11;
}

uint64_t ConversationControlsButton._contextMenuInteraction(_:styleForMenuWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_1();
  if (!(*(v9 + 264))())
  {
    return 0;
  }

  v11 = v10;
  v12 = swift_getObjectType();
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel__contextMenuInteraction_styleForMenuWithConfiguration_, a1, a2);
  (*(v11 + 24))(v4, a4, v13, v12, v11);
  OUTLINED_FUNCTION_247();
  swift_unknownObjectRelease();

  return a4;
}

CGPoint __swiftcall SystemApertureButton.menuAttachmentPoint(for:)(UIContextMenuConfiguration a1)
{
  v1 = ConversationControlsButton.menuAttachmentPoint(for:)(a1.super.isa, &OBJC_IVAR____TtC15ConversationKit20SystemApertureButton_provider, &protocol witness table for SystemApertureButton);
  result.y = v2;
  result.x = v1;
  return result;
}

double ConversationControlsButton.menuAttachmentPoint(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_247();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_0_1();
  if ((*(v7 + 264))())
  {
    v9 = v8;
    v10 = swift_getObjectType();
    v11 = COERCE_DOUBLE((*(v9 + 16))(v4, a3, v3, v10, v9));
    v13 = v12;
    swift_unknownObjectRelease();
    if ((v13 & 1) == 0)
    {
      return v11;
    }
  }

  v15.receiver = v4;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_menuAttachmentPointForConfiguration_, v3);
  return result;
}

id ConversationControlsButton.__allocating_init(frame:)()
{
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

uint64_t (*SystemApertureButton.cnkContentAlpha.modify(uint64_t a1))()
{
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC15ConversationKit20SystemApertureButton_provider);
  OUTLINED_FUNCTION_0_1();
  *a1 = (*(v3 + 216))();
  return SystemApertureButton.cnkContentAlpha.modify;
}

uint64_t (*protocol witness for Control.cnkContentAlpha.modify in conformance SystemApertureButton(uint64_t a1))()
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit20SystemApertureButton_provider);
  *(a1 + 8) = v2;
  *a1 = (*(*v2 + 216))();
  return SystemApertureButton.cnkContentAlpha.modify;
}

unint64_t type metadata accessor for UIContextMenuConfiguration()
{
  result = lazy cache variable for type metadata for UIContextMenuConfiguration;
  if (!lazy cache variable for type metadata for UIContextMenuConfiguration)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  }

  return result;
}

uint64_t outlined init with copy of ConversationControlsSecondaryPillButtonType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConversationHUDSecondaryPillView.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_activity;
  swift_beginAccess();
  return outlined init with copy of Activity?(v1 + v3, a1);
}

uint64_t outlined init with copy of Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConversationHUDSecondaryPillView.activity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_activity;
  swift_beginAccess();
  outlined assign with copy of Activity?(a1, v1 + v3);
  swift_endAccess();
  ConversationHUDSecondaryPillView.updateIconView()();
  ConversationHUDSecondaryPillView.updateTitle()();
  ConversationHUDSecondaryPillView.updateCallToAction()();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit8Activity_pSgMd);
}

uint64_t outlined assign with copy of Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*ConversationHUDSecondaryPillView.activity.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ConversationHUDSecondaryPillView.activity.modify;
}

void ConversationHUDSecondaryPillView.activity.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ConversationHUDSecondaryPillView.updateIconView()();
    ConversationHUDSecondaryPillView.updateTitle()();
    ConversationHUDSecondaryPillView.updateCallToAction()();
  }
}

uint64_t key path getter for ConversationHUDSecondaryPillView.backgroundMaterialView : ConversationHUDSecondaryPillView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

UIView *closure #1 in ConversationHUDSecondaryPillView.backgroundMaterialView.getter(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsContext))
  {
    if (*(a1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsContext) == 1)
    {
      v1 = objc_opt_self();
      if (one-time initialization token for backgroundBlurEffect != -1)
      {
        swift_once();
      }

      v2 = [v1 _effectForBlurEffect_vibrancyStyle_];
      v3 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
      v4 = [v3 contentView];
      v5 = [objc_opt_self() tintColor];
      [v4 setBackgroundColor_];

      v6 = objc_allocWithZone(MEMORY[0x1E69DD250]);
      v7 = v3;
      v8 = [v6 init];
      [(UIView *)v8 addSubview:v7];
      v9 = ConversationHUDSecondaryPillView.contentHStack.getter();
      [(UIView *)v8 addSubview:v9];

      UIView.addConstraintsToFill(_:insets:)(v8, *MEMORY[0x1E69DC5C0]);
      v10 = v8;
    }

    else
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
      {
        type metadata accessor for ConversationHUDInCallBackdropView();
        v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v22 = ConversationHUDSecondaryPillView.contentHStack.getter();
        [(UIView *)v7 addSubview:v22];

        v20 = v7;
        goto LABEL_12;
      }

      v15 = [objc_opt_self() effectWithStyle_];
      v16 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

      v17 = objc_allocWithZone(MEMORY[0x1E69DD250]);
      v7 = v16;
      v18 = [v17 init];
      [(UIView *)v18 addSubview:v7];
      v19 = ConversationHUDSecondaryPillView.contentHStack.getter();
      [(UIView *)v18 addSubview:v19];

      UIView.addConstraintsToFill(_:insets:)(v18, *MEMORY[0x1E69DC5C0]);
      v10 = v18;
    }
  }

  else
  {
    v11 = [objc_opt_self() effectWithStyle_];
    v12 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    v13 = [v12 contentView];
    v14 = ConversationHUDSecondaryPillView.contentHStack.getter();
    [v13 addSubview_];

    v10 = v12;
    v7 = v10;
  }

  v20 = v10;
LABEL_12:
  [(UIView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(UIView *)v7 _setContinuousCornerRadius:ConversationHUDSecondaryPillView.minimumCornerRadius.getter()];
  [(UIView *)v7 setClipsToBounds:1];

  return v20;
}

void ConversationHUDSecondaryPillView.backgroundMaterialView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView) = a1;
}

void (*ConversationHUDSecondaryPillView.backgroundMaterialView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationHUDSecondaryPillView.backgroundMaterialView.getter();
  return ConversationHUDSecondaryPillView.backgroundMaterialView.modify;
}

void ConversationHUDSecondaryPillView.backgroundMaterialView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView) = v2;
}

double ConversationHUDSecondaryPillView.minimumCornerRadius.getter()
{
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v3 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)();
  OUTLINED_FUNCTION_0_106();
  outlined destroy of ConversationControlsSecondaryPillButtonType(v2, v4);
  result = 38.0;
  if ((v3 & 1) == 0)
  {
    return 28.0;
  }

  return result;
}

id ConversationHUDSecondaryPillView.appStoreLockup.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___appStoreLockup;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___appStoreLockup);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in ConversationHUDSecondaryPillView.appStoreLockup.getter(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    outlined consume of IMAccount??(v4);
  }

  outlined copy of IMAccount??(v2);
  return v3;
}

id closure #1 in ConversationHUDSecondaryPillView.appStoreLockup.getter(void *a1)
{
  v2 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  *&v6 = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = &v47 - v7;
  if (![*(a1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_featureFlags) uninstalledAppStoreLockupEnabled])
  {
    return 0;
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC8);
  v9(v50);
  v10 = v51;
  if (!v51)
  {
    v28 = &_s15ConversationKit8Activity_pSgMd;
    v29 = v50;
    goto LABEL_8;
  }

  v49 = v2;
  v11 = v52;
  v12 = __swift_project_boxed_opaque_existential_1(v50, v51);
  v13 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v14);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s15ConversationKit8Activity_pSgMd);
  v48 = (*(v11 + 32))(v10, v11);
  v18 = v17;
  v19 = (*(v13 + 8))(v16, v10);
  if (!v18)
  {
    return 0;
  }

  (v9)(v50, v19);
  v20 = v51;
  if (v51)
  {
    v21 = v52;
    v22 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v23 = *(v20 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22);
    v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s15ConversationKit8Activity_pSgMd);
    (*(v21 + 112))(v20, v21);
    (*(v23 + 8))(v26, v20);
    v27 = type metadata accessor for Collaboration(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v27) != 1)
    {

      v28 = &_s15ConversationKit13CollaborationVSgMd;
      v29 = v8;
LABEL_8:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, v28);
      return 0;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s15ConversationKit8Activity_pSgMd);
    v30 = type metadata accessor for Collaboration(0);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v30);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit13CollaborationVSgMd);
  swift_storeEnumTagMultiPayload();
  v31 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)();
  outlined destroy of ConversationControlsSecondaryPillButtonType(v4, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  if ((v31 & 1) == 0)
  {

    return 0;
  }

  v32 = [objc_allocWithZone(MEMORY[0x1E698B3C8]) initWithFrame_];
  [v32 setSize_];
  [v32 setShowsPlaceholderContent_];
  v33 = objc_allocWithZone(MEMORY[0x1E698B3D0]);
  v34 = @nonobjc ASCLockupViewGroup.init(name:)(0x502068636E75614CLL, 0xEB000000006C6C69);
  [v32 setGroup_];
  v35 = swift_allocObject();
  v36 = v48;
  v35[2] = v48;
  v35[3] = v18;
  v35[4] = v32;

  v37 = v32;
  ASCLockupViewGroup.__lockupRequest(for:completion:)(v36, v18);

  v38 = objc_opt_self();
  v39 = [v38 whiteColor];
  v40 = [v38 blackColor];
  v41 = [v38 blackColor];
  v42 = [v38 whiteColor];
  v43 = [v38 whiteColor];
  v44 = objc_allocWithZone(MEMORY[0x1E698B3E8]);
  v45 = @nonobjc ASCOfferTheme.init(titleBackgroundColor:titleTextColor:subtitleTextColor:iconTintColor:progressColor:)(v39, v40, v41, v42, v43);
  [v37 setOfferTheme_];

  return v37;
}

void closure #1 in closure #1 in ConversationHUDSecondaryPillView.appStoreLockup.getter(uint64_t a1, void *a2, int a3, int a4, id a5)
{
  if (a2)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, &static Logger.conversationControls);

    v7 = a2;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315394;

      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v27);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v27);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_1BBC58000, oslog, v8, "Failed to request lockup for bundleIdentifier: %s, error: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v10, -1, -1);
      v18 = v9;
LABEL_6:
      MEMORY[0x1BFB23DF0](v18, -1, -1);

      return;
    }

LABEL_15:

    return;
  }

  if (!a1)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, &static Logger.conversationControls);

    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;

      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1BBC58000, oslog, v20, "Failed to get lockupRequest for bundleIdentifier %s and received no error", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      v18 = v21;
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  [a5 setRequest_];
}

void ASCLockupViewGroup.__lockupRequest(for:completion:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([v2 respondsToSelector_])
  {
    v5 = v2;
    swift_unknownObjectRetain();
    v6 = MEMORY[0x1BFB209B0](a1, a2);
    v7 = *MEMORY[0x1E698B348];
    OUTLINED_FUNCTION_1_92();
    v12 = 1107296256;
    v13 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
    v14 = &block_descriptor_3;
    v8 = _Block_copy(aBlock);

    [v5 _lockupRequestForBundleID_withContext_enableAppDistribution_completionBlock_];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = MEMORY[0x1BFB209B0](a1, a2);
    v9 = *MEMORY[0x1E698B348];
    OUTLINED_FUNCTION_1_92();
    v12 = 1107296256;
    v13 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
    v14 = &block_descriptor_37;
    v10 = _Block_copy(aBlock);

    [v2 _lockupRequestForBundleID_withContext_completionBlock_];
    _Block_release(v10);
  }
}

id closure #1 in ConversationHUDSecondaryPillView.contentHStack.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v2 setAxis_];
  [v2 setAlignment_];
  [v2 setSpacing_];

  v3 = ConversationHUDSecondaryPillView.appStoreLockup.getter();
  if (v3)
  {
    v4 = v3;
    [v2 addArrangedSubview_];
  }

  else
  {
    if (*(a1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView))
    {
      [v2 addArrangedSubview_];
    }

    v5 = ConversationHUDSecondaryPillView.labelsVStack.getter();
    [v2 addArrangedSubview_];

    if (*(a1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction))
    {
      [v2 addArrangedSubview_];
    }
  }

  return v2;
}

id ConversationHUDSecondaryPillView.backgroundMaterialView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id closure #1 in ConversationHUDSecondaryPillView.labelsVStack.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v2 setAxis_];
  [v2 setAlignment_];
  [v2 setSpacing_];
  v3 = ConversationHUDSecondaryPillView.titleLabel.getter();
  [v2 addArrangedSubview_];

  v4 = ConversationHUDSecondaryPillView.subtitleLabel.getter();
  v5 = outlined bridged method (ob) of @objc UILabel.text.getter(v4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      [v2 addArrangedSubview_];
    }
  }

  return v2;
}

id ConversationHUDSecondaryPillView.titleLabel.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = closure #1 in ConversationHUDSecondaryPillView.titleLabel.getter(a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in ConversationHUDSecondaryPillView.titleLabel.getter(SEL *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  OUTLINED_FUNCTION_7_57([v2 setNumberOfLines_], sel_setClipsToBounds_);
  [v2 setLineBreakMode_];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  v5 = UIFont.caseSensitive()().super.isa;
  [v2 setFont_];

  OUTLINED_FUNCTION_7_57(v6, sel_setAdjustsFontForContentSizeCategory_);
  v7 = [objc_opt_self() *a1];
  [v2 setTextColor_];

  v9 = OUTLINED_FUNCTION_7_57(v8, sel_setMarqueeEnabled_);
  OUTLINED_FUNCTION_7_57(v9, sel_setMarqueeRunning_);
  type metadata accessor for UILayoutPriority(0);
  lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
  OUTLINED_FUNCTION_5_65();
  LODWORD(v10) = v13;
  [v2 setContentCompressionResistancePriority:0 forAxis:v10];
  OUTLINED_FUNCTION_5_65();
  LODWORD(v11) = v13;
  [v2 setContentHuggingPriority:0 forAxis:v11];
  return v2;
}

id ConversationHUDSecondaryPillView.init(controlsManager:controlsContext:buttonType:menuHostViewController:activity:)(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_featureFlags;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v14 = &v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_activity];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v15 = &v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_margins];
  __asm { FMOV            V1.2D, #12.0 }

  *v15 = xmmword_1BC4CB620;
  v15[1] = _Q1;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___appStoreLockup] = 1;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___contentHStack] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___labelsVStack] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___titleLabel] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___subtitleLabel] = 0;
  v21 = &v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_menuHostViewController];
  *v22 = 0;
  v22[1] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsManager] = a1;
  v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsContext] = a2;
  outlined init with copy of ConversationControlsSecondaryPillButtonType(a3, &v6[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType]);
  *v22 = a4;
  v22[1] = a5;
  swift_beginAccess();
  v23 = a4;
  v24 = a1;
  outlined assign with copy of Activity?(a6, v14);
  swift_endAccess();
  v28.receiver = v6;
  v28.super_class = type metadata accessor for ConversationHUDSecondaryPillView();
  v25 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ConversationHUDSecondaryPillView.setupRootView()();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a6, &_s15ConversationKit8Activity_pSgMd);
  OUTLINED_FUNCTION_0_106();
  outlined destroy of ConversationControlsSecondaryPillButtonType(a3, v26);
  return v25;
}

void ConversationHUDSecondaryPillView.setupRootView()()
{
  v1 = [v0 layer];
  [v1 setAllowsGroupOpacity_];

  v2 = ConversationHUDSecondaryPillView.createIconView()();
  v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView);
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView) = v2;

  ConversationHUDSecondaryPillView.updateTitle()();
  ConversationHUDSecondaryPillView.updateSubtitle()();
  v4 = ConversationHUDSecondaryPillView.createCallToAction()();
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction);
  v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction);
  *v5 = v4;
  v5[1] = v7;

  v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  [v0 addSubview_];

  ConversationHUDSecondaryPillView.setupLayoutConstraints()();
}

id ConversationHUDSecondaryPillView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDSecondaryPillView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_featureFlags;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_activity;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_margins);
  __asm { FMOV            V1.2D, #12.0 }

  *v3 = xmmword_1BC4CB620;
  v3[1] = _Q1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___backgroundMaterialView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___appStoreLockup) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___contentHStack) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___labelsVStack) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___subtitleLabel) = 0;
  v9 = (v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_menuHostViewController);
  *v10 = 0;
  v10[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationHUDSecondaryPillView.layoutSubviews()()
{
  swift_getObjectType();
  v26.receiver = v0;
  v26.super_class = type metadata accessor for ConversationHUDSecondaryPillView();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v1 = ConversationHUDSecondaryPillView.minimumCornerRadius.getter();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v3 = v2();
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  v12 = CGRectGetHeight(v27) * 0.5;
  if (v1 <= v12)
  {
    v1 = v12;
  }

  v13 = v2();
  [v13 _continuousCornerRadius];
  v15 = v14;

  if (v15 != v1)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, &static Logger.conversationControls);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136446466;
      v21 = _typeName(_:qualified:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v1;
      _os_log_impl(&dword_1BBC58000, v17, v18, "[%{public}s] updating corner radius to %f", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB23DF0](v20, -1, -1);
      MEMORY[0x1BFB23DF0](v19, -1, -1);
    }

    v24 = v2();
    [v24 _setContinuousCornerRadius_];
  }
}

void ConversationHUDSecondaryPillView.addTarget(_:action:)(void *a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of Any(a1, v10);
  v6 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v7 = @nonobjc UITapGestureRecognizer.init(target:action:)(v10, a2);
  [v3 addGestureRecognizer_];

  v8 = *&v3[OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction];
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = v8;
    [v9 addTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:a2 forControlEvents:64];

    swift_unknownObjectRelease();
  }
}

id ConversationHUDSecondaryPillView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConversationHUDSecondaryPillView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDSecondaryPillView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ConversationHUDSecondaryPillView.createIconView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v48 - v3;
  v5 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v48 - v9);
  outlined init with copy of ConversationControlsSecondaryPillButtonType(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType, v48 - v9);
  if (!swift_getEnumCaseMultiPayload())
  {
    v19 = *v10;
    v15 = ConversationHUDSecondaryPillView.createIconViewForLagunaRecommendation(_:)();

    return v15;
  }

  outlined destroy of ConversationControlsSecondaryPillButtonType(v10, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  swift_storeEnumTagMultiPayload();
  v11 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)();
  v12 = outlined destroy of ConversationControlsSecondaryPillButtonType(v7, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  if ((v11 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))(&v53, v12);
    if (!v54)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v53, &_s15ConversationKit8Activity_pSgMd);
      return 0;
    }

    outlined init with take of TapInteractionHandler(&v53, v50);
    v20 = [*(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_featureFlags) uninstalledAppStoreLockupEnabled];
    v21 = v51;
    v22 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    if (!v20)
    {
      if (((*(v22 + 40))(v21, v22) & 1) == 0)
      {
        v25 = 0x80000001BC501B70;
        v23 = 0xD000000000000012;
        goto LABEL_15;
      }

      v21 = v51;
      v22 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
    }

    v23 = (*(v22 + 32))(v21, v22);
    v25 = v24;
LABEL_15:
    v26 = v51;
    v27 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    (*(v27 + 112))(v26, v27);
    v28 = type metadata accessor for Collaboration(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v28);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit13CollaborationVSgMd);
    if (EnumTagSinglePayload == 1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
      v30 = static UIImageView.appIcon(for:)(v23, v25);
      if (v30)
      {
        goto LABEL_17;
      }
    }

    else
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      SymbolImageDescribers.ConversationActivityIcon.symbolImageDescription.getter(11);
      v32 = static UIImage.symbolImage(for:)(&v53);
      outlined destroy of SymbolImageDescription(&v53);
      if (v32)
      {
        v33 = [objc_opt_self() whiteColor];
        v34 = [v32 imageWithTintColor:v33 renderingMode:1];
      }

      else
      {
        v34 = 0;
      }

      v35 = v51;
      v36 = v52;
      __swift_project_boxed_opaque_existential_1(v50, v51);
      if (((*(v36 + 40))(v35, v36) & 1) == 0)
      {

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
        v45 = static UIImageView.defaultAppIcon(for:)(v34);

        v31 = v45;
        goto LABEL_29;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
      v30 = static UIImageView.appIcon(for:)(v23, v25);

      if (v30)
      {
LABEL_17:
        v31 = v30;

LABEL_29:
        v15 = v31;
        ConversationHUDSecondaryPillView.constrainIconView(_:)(v15);

        __swift_destroy_boxed_opaque_existential_1(v50);
        return v15;
      }
    }

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, &static Logger.conversationControls);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136315138;
      if (v25)
      {
        v48[0] = v23;
        v48[1] = v25;
        v42 = String.init<A>(reflecting:)();
        v44 = v43;
      }

      else
      {
        v44 = 0xE300000000000000;
        v42 = 7104878;
      }

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v49);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_1BBC58000, v38, v39, "Unable to obtain icon for bundleIdentifier: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1BFB23DF0](v41, -1, -1);
      MEMORY[0x1BFB23DF0](v40, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v50);
    return 0;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static NameAndPhotoUtilities.shared;
  v14 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalAvatarView;
  swift_beginAccess();
  v15 = *(v13 + v14);
  if (v15)
  {
    v16 = v15;
    ConversationHUDSecondaryPillView.constrainIconView(_:)(v16);
    v17 = [v16 layer];
    [v17 setCornerRadius_];

    v18 = [v16 layer];
    [v18 setMasksToBounds_];
  }

  return v15;
}

void ConversationHUDSecondaryPillView.updateTitle()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v167 = &v166 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v168 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v166 - v7;
  v169 = type metadata accessor for Collaboration(0);
  MEMORY[0x1EEE9AC00](v169);
  v166 = (&v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v166 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v166 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v166 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v166 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v166 - v26);
  v28 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType;
  outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType, &v166 - v26);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of ConversationControlsSecondaryPillButtonType(v27, type metadata accessor for ConversationControlsSecondaryPillButtonType);
    outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + v28, v24);
    if (swift_getEnumCaseMultiPayload() - 9 <= 2)
    {
      outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + v28, v21);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 11:
          v30 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v31 = "VIEWING_YOUR_SCREEN";
          v32 = [objc_opt_self() conversationKit];
          v163 = 0xE000000000000000;
          v33 = 0x61737265766E6F43;
          v34 = 0xEF74694B6E6F6974;
          v35 = 0xD00000000000001DLL;
          goto LABEL_25;
        case 10:
          v30 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v31 = "NEW_CONTACT_NAME_BANNER_TITLE";
          v32 = [objc_opt_self() conversationKit];
          v163 = 0xE000000000000000;
          v33 = 0x61737265766E6F43;
          v34 = 0xEF74694B6E6F6974;
          v35 = 0xD000000000000017;
          goto LABEL_25;
        case 9:
          v30 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v31 = "SHARE_NAME_BANNER_TITLE";
          v32 = [objc_opt_self() conversationKit];
          v163 = 0xE000000000000000;
          v33 = 0x61737265766E6F43;
          v34 = 0xEF74694B6E6F6974;
          v35 = 0xD000000000000021;
LABEL_25:
          v68 = v31 | 0x8000000000000000;
LABEL_29:
          v69._countAndFlagsBits = 0;
          v69._object = 0xE000000000000000;
          v70 = 0;
          v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v35, *&v33, v32, v69, *(&v163 - 1));

          outlined bridged method (mbnn) of @objc UILabel.text.setter(v71._countAndFlagsBits, v71._object, v30);
LABEL_30:

          return;
      }

      v50 = v21;
LABEL_27:
      outlined destroy of ConversationControlsSecondaryPillButtonType(v50, type metadata accessor for ConversationControlsSecondaryPillButtonType);
      return;
    }

    outlined destroy of ConversationControlsSecondaryPillButtonType(v24, type metadata accessor for ConversationControlsSecondaryPillButtonType);
    outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + v28, v18);
    v42 = swift_getEnumCaseMultiPayload();
    if (v42 == 12)
    {
LABEL_12:
      outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + v28, v15);
      v43 = swift_getEnumCaseMultiPayload();
      if (v43 == 12)
      {
        v30 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v32 = [objc_opt_self() conversationKit];
        v163 = 0xE000000000000000;
        v33 = 0x61737265766E6F43;
        v34 = 0xEF74694B6E6F6974;
        v68 = 0x80000001BC501CC0;
        v35 = 0xD000000000000013;
        goto LABEL_29;
      }

      if (v43 == 1)
      {
        v44 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v45 = [objc_opt_self() conversationKit];
        v175._object = 0xE000000000000000;
        v46._countAndFlagsBits = 0x535F4E4545524353;
        v46._object = 0xEE00474E49524148;
        v47.value._countAndFlagsBits = 0x61737265766E6F43;
        v47.value._object = 0xEF74694B6E6F6974;
        v48._countAndFlagsBits = 0;
        v48._object = 0xE000000000000000;
        v175._countAndFlagsBits = 0;
        v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v175);

        outlined bridged method (mbnn) of @objc UILabel.text.setter(v49._countAndFlagsBits, v49._object, v44);
      }

      v50 = v15;
      goto LABEL_27;
    }

    if (v42 == 1)
    {
      outlined destroy of ConversationControlsSecondaryPillButtonType(v18, type metadata accessor for ConversationControlsSecondaryPillButtonType);
      goto LABEL_12;
    }

    v57 = outlined destroy of ConversationControlsSecondaryPillButtonType(v18, type metadata accessor for ConversationControlsSecondaryPillButtonType);
    v58 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
    v58(&v170, v57);
    if (!v171)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v170, &_s15ConversationKit8Activity_pSgMd);
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, &static Logger.conversationControls);
      v73 = v1;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v170 = v77;
        *v76 = 136315138;
        (v58)(v172);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pSgMd);
        v78 = String.init<A>(describing:)();
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v170);

        *(v76 + 4) = v80;
        _os_log_impl(&dword_1BBC58000, v74, v75, "SecondaryPillButton: No activity:%s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x1BFB23DF0](v77, -1, -1);
        MEMORY[0x1BFB23DF0](v76, -1, -1);
      }

      v30 = ConversationHUDSecondaryPillView.titleLabel.getter();
      [v30 setText_];
      goto LABEL_30;
    }

    outlined init with take of TapInteractionHandler(&v170, v172);
    outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + v28, v12);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 2u:
      case 4u:
        v59 = v173;
        v60 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v61 = (*(v60 + 104))(v59, v60);
        if (v61)
        {
          v62 = v61;
          v63 = [v61 activity];
          v64 = [v63 isScreenSharingActivity];

          if (v64)
          {
            v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
            v66 = "%@_Collaboration_Title_Quoted";
            v67 = [objc_opt_self() conversationKit];
            goto LABEL_59;
          }
        }

        v81 = v173;
        v82 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v83 = v168;
        (*(v82 + 112))(v81, v82);
        LODWORD(v81) = __swift_getEnumTagSinglePayload(v83, 1, v169);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v83, &_s15ConversationKit13CollaborationVSgMd);
        if (v81 == 1)
        {
          v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v84 = [objc_opt_self() conversationKit];
          v164 = 0xE000000000000000;
          v85 = 0x616853206E696F4ALL;
          v86 = 0xEE0079616C506572;
          v87 = 0x61737265766E6F43;
          v88 = 0xEF74694B6E6F6974;
          goto LABEL_69;
        }

        v124 = v173;
        v125 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v126 = (*(v125 + 48))(v124, v125);
        if (v127)
        {
          v94 = v126;
          v95 = v127;
          v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v96 = "Join Collaboration";
          v97 = [objc_opt_self() conversationKit];
          v165 = 0xE000000000000000;
          v98 = 0x61737265766E6F43;
          v99 = 0xEF74694B6E6F6974;
          v100 = 0xD00000000000001DLL;
          goto LABEL_55;
        }

        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v84 = [objc_opt_self() conversationKit];
        v85 = 0xD000000000000012;
        v164 = 0xE000000000000000;
        v87 = 0x61737265766E6F43;
        v88 = 0xEF74694B6E6F6974;
        v86 = 0x80000001BC501B90;
        goto LABEL_69;
      case 3u:
        v103 = v173;
        v104 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        (*(v104 + 112))(v103, v104);
        if (__swift_getEnumTagSinglePayload(v8, 1, v169) != 1)
        {
          v134 = v166;
          _s15ConversationKit11ParticipantVWObTm_3(v8, v166, type metadata accessor for Collaboration);
          if (v134[7] == 1 || (v135 = v134[9]) == 0)
          {
            v137 = ConversationHUDSecondaryPillView.titleLabel.getter();
            v158 = [objc_opt_self() conversationKit];
            v159._countAndFlagsBits = 0xD000000000000012;
            v180._object = 0xE000000000000000;
            v159._object = 0x80000001BC501B90;
            v160.value._countAndFlagsBits = 0x61737265766E6F43;
            v160.value._object = 0xEF74694B6E6F6974;
            v161._countAndFlagsBits = 0;
            v161._object = 0xE000000000000000;
            v180._countAndFlagsBits = 0;
            v162 = NSLocalizedString(_:tableName:bundle:value:comment:)(v159, v160, v158, v161, v180);
            countAndFlagsBits = v162._countAndFlagsBits;
            object = v162._object;
          }

          else
          {
            v136 = v134[8];

            v137 = ConversationHUDSecondaryPillView.titleLabel.getter();
            v138 = [objc_opt_self() conversationKit];
            v178._object = 0xE000000000000000;
            v139._countAndFlagsBits = 0xD00000000000001DLL;
            v139._object = 0x80000001BC501BB0;
            v140.value._countAndFlagsBits = 0x61737265766E6F43;
            v140.value._object = 0xEF74694B6E6F6974;
            v141._countAndFlagsBits = 0;
            v141._object = 0xE000000000000000;
            v178._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v139, v140, v138, v141, v178);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v142 = swift_allocObject();
            *(v142 + 16) = xmmword_1BC4BA940;
            *(v142 + 56) = MEMORY[0x1E69E6158];
            *(v142 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v142 + 32) = v136;
            *(v142 + 40) = v135;
            countAndFlagsBits = String.init(format:_:)();
            object = v144;
          }

          outlined bridged method (mbnn) of @objc UILabel.text.setter(countAndFlagsBits, object, v137);

          v101 = type metadata accessor for Collaboration;
          v102 = v134;
LABEL_74:
          outlined destroy of ConversationControlsSecondaryPillButtonType(v102, v101);
          goto LABEL_71;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit13CollaborationVSgMd);
        v105 = v173;
        v106 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v107 = (*(v106 + 104))(v105, v106);
        if (v107)
        {
          v108 = v107;
          v94 = outlined bridged method (ob) of @objc TUConversationActivity.localizedApplicationName.getter([v107 activity]);
          v95 = v109;

          if (v95)
          {
            v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
            v97 = [objc_opt_self() conversationKit];
            v165 = 0xE000000000000000;
            v100 = 0x6975716552204025;
            v110 = 0xEB00000000646572;
            v98 = 0x61737265766E6F43;
            v99 = 0xEF74694B6E6F6974;
            goto LABEL_56;
          }
        }

        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v84 = [objc_opt_self() conversationKit];
        v85 = 0xD000000000000011;
        v164 = 0xE000000000000000;
        v86 = 0x80000001BC501CA0;
        v87 = 0x61737265766E6F43;
        v88 = 0xEF74694B6E6F6974;
        goto LABEL_69;
      case 5u:
        v89 = [objc_opt_self() sharedInstance];
        v90 = [v89 neighborhoodActivityConduit];

        v91 = [v90 activeSplitSessionTV];
        if (!v91 || (v92 = outlined bridged method (ob) of @objc TUNearbyDeviceHandle.name.getter(v91), !v93))
        {
          v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v66 = "O_USE_SHAREPLAY_TITLE";
          v67 = [objc_opt_self() conversationKit];
LABEL_59:
          v84 = v67;
          v164 = 0xE000000000000000;
          v87 = 0x61737265766E6F43;
          v88 = 0xEF74694B6E6F6974;
          v86 = v66 | 0x8000000000000000;
          v85 = 0xD000000000000013;
          goto LABEL_69;
        }

        v94 = v92;
        v95 = v93;
        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v96 = "Playing on Apple TV";
        v97 = [objc_opt_self() conversationKit];
        v165 = 0xE000000000000000;
        v98 = 0x61737265766E6F43;
        v99 = 0xEF74694B6E6F6974;
        v100 = 0xD000000000000014;
LABEL_55:
        v110 = v96 | 0x8000000000000000;
        goto LABEL_56;
      case 6u:
        v120 = v173;
        v121 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v122 = (*(v121 + 48))(v120, v121);
        if (!v123)
        {
          v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v84 = [objc_opt_self() conversationKit];
          v164 = 0xE000000000000000;
          v85 = 0x414C504552414853;
          v87 = 0x61737265766E6F43;
          v88 = 0xEF74694B6E6F6974;
          v86 = 0xE900000000000059;
          goto LABEL_69;
        }

        v94 = v122;
        v95 = v123;
        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v97 = [objc_opt_self() conversationKit];
        v165 = 0xE000000000000000;
        v100 = 0x616C506572616853;
        v110 = 0xEC00000040252079;
        v98 = 0x61737265766E6F43;
        v99 = 0xEF74694B6E6F6974;
LABEL_56:
        v128._countAndFlagsBits = 0;
        v128._object = 0xE000000000000000;
        v129 = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v100, *&v98, v97, v128, *(&v165 - 1));

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1BC4BA940;
        *(v130 + 56) = MEMORY[0x1E69E6158];
        *(v130 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v130 + 32) = v94;
        *(v130 + 40) = v95;
        v131 = String.init(format:_:)();
        v133 = v132;
        goto LABEL_57;
      case 7u:
        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        if (one-time initialization token for conversationKit != -1)
        {
          swift_once();
        }

        v177._object = 0xE000000000000000;
        v111._countAndFlagsBits = 0xD000000000000025;
        v111._object = 0x80000001BC501C30;
        v112._countAndFlagsBits = 0;
        v112._object = 0xE000000000000000;
        v177._countAndFlagsBits = 0;
        v115 = NSLocalizedString(_:tableName:bundle:value:comment:)(v111, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v112, v177);
        v114 = v115._object;
        v113 = v115._countAndFlagsBits;
        goto LABEL_70;
      case 8u:
        v116 = v173;
        v117 = v174;
        __swift_project_boxed_opaque_existential_1(v172, v173);
        v118 = v167;
        (*(v117 + 120))(v116, v117);
        v119 = type metadata accessor for StagedCollaboration(0);
        if (__swift_getEnumTagSinglePayload(v118, 1, v119) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v118, &_s15ConversationKit19StagedCollaborationVSgMd);
          goto LABEL_65;
        }

        v146 = (v118 + *(v119 + 28));
        v148 = *v146;
        v147 = v146[1];

        outlined destroy of ConversationControlsSecondaryPillButtonType(v118, type metadata accessor for StagedCollaboration);
        if (!v147)
        {
LABEL_65:
          v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
          v84 = [objc_opt_self() conversationKit];
          v164 = 0xE000000000000000;
          v85 = 0xD00000000000001BLL;
          v86 = 0x80000001BC501BF0;
          v87 = 0x61737265766E6F43;
          v88 = 0xEF74694B6E6F6974;
LABEL_69:
          v155._countAndFlagsBits = 0;
          v155._object = 0xE000000000000000;
          v156 = 0;
          v157 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v85, *&v87, v84, v155, *(&v164 - 1));

          v113 = v157._countAndFlagsBits;
          v114 = v157._object;
          goto LABEL_70;
        }

        v65 = ConversationHUDSecondaryPillView.titleLabel.getter();
        v149 = [objc_opt_self() conversationKit];
        v179._object = 0xE000000000000000;
        v150._object = 0x80000001BC501C10;
        v150._countAndFlagsBits = 0xD000000000000013;
        v151.value._countAndFlagsBits = 0x61737265766E6F43;
        v151.value._object = 0xEF74694B6E6F6974;
        v152._countAndFlagsBits = 0;
        v152._object = 0xE000000000000000;
        v179._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v150, v151, v149, v152, v179);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_1BC4BA940;
        *(v153 + 56) = MEMORY[0x1E69E6158];
        *(v153 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v153 + 32) = v148;
        *(v153 + 40) = v147;
        v131 = String.init(format:_:)();
        v133 = v154;
LABEL_57:

        v113 = v131;
        v114 = v133;
LABEL_70:
        outlined bridged method (mbnn) of @objc UILabel.text.setter(v113, v114, v65);

LABEL_71:
        __swift_destroy_boxed_opaque_existential_1(v172);
        break;
      default:
        v101 = type metadata accessor for ConversationControlsSecondaryPillButtonType;
        v102 = v12;
        goto LABEL_74;
    }
  }

  else
  {
    v36 = *v27;
    v37 = outlined bridged method (ob) of @objc TUNearbyDeviceHandle.name.getter([*v27 deviceHandle]);
    if (v38)
    {
      v39 = v37;
      v40 = v38;
      v41 = ConversationHUDSecondaryPillView.titleLabel.getter();
      outlined bridged method (mbnn) of @objc UILabel.text.setter(v39, v40, v41);
    }

    else
    {
      v51 = ConversationHUDSecondaryPillView.titleLabel.getter();
      v52 = [objc_opt_self() conversationKit];
      v176._object = 0xE000000000000000;
      v53._countAndFlagsBits = 0x56545F454C505041;
      v54.value._countAndFlagsBits = 0x61737265766E6F43;
      v54.value._object = 0xEF74694B6E6F6974;
      v53._object = 0xE800000000000000;
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      v176._countAndFlagsBits = 0;
      v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v176);

      outlined bridged method (mbnn) of @objc UILabel.text.setter(v56._countAndFlagsBits, v56._object, v51);
    }
  }
}

void ConversationHUDSecondaryPillView.updateSubtitle()()
{
  v1 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsSecondaryPillButtonType(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      _s15ConversationKit11ParticipantVWObTm_3(v6, v3, type metadata accessor for Participant);
      v16 = ConversationHUDSecondaryPillView.subtitleLabel.getter();
      v17 = [objc_opt_self() conversationKit];
      v33._object = 0xE000000000000000;
      v18.value._countAndFlagsBits = 0x61737265766E6F43;
      v18.value._object = 0xEF74694B6E6F6974;
      v19._object = 0x80000001BC4F3EC0;
      v19._countAndFlagsBits = 0xD000000000000024;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v33._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v33);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BC4BA940;
      Participant.contactDetails.getter();
      v22 = v32[1];

      Participant.name(_:)();
      v24 = v23;
      v26 = v25;

      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v21 + 32) = v24;
      *(v21 + 40) = v26;
      v27 = String.init(format:_:)();
      v29 = v28;

      outlined bridged method (mbnn) of @objc UILabel.text.setter(v27, v29, v16);

      v30 = type metadata accessor for Participant;
      v31 = v3;
      break;
    case 11:
      v8 = ConversationHUDSecondaryPillView.subtitleLabel.getter();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v12 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsManager)) + 0x2A0))();
      v11 = NameAndPhotoUtilities.pendingIncomingName(from:)(v12, v13);
      v10 = v14;
      swift_unknownObjectRelease();
      if (v10)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    case 10:
    case 9:
      v8 = ConversationHUDSecondaryPillView.subtitleLabel.getter();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v9 = (static NameAndPhotoUtilities.shared + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalDisplayName);
      swift_beginAccess();
      v10 = v9[1];
      if (v10)
      {
        v11 = *v9;

LABEL_12:
        v15 = MEMORY[0x1BFB209B0](v11, v10);

LABEL_14:
        [v8 setText_];

        return;
      }

LABEL_13:
      v15 = 0;
      goto LABEL_14;
    default:
      v30 = type metadata accessor for ConversationControlsSecondaryPillButtonType;
      v31 = v6;
      break;
  }

  outlined destroy of ConversationControlsSecondaryPillButtonType(v31, v30);
}

uint64_t ConversationHUDSecondaryPillView.createCallToAction()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConversationControlsAction();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsSecondaryPillButtonType(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      outlined destroy of ConversationControlsSecondaryPillButtonType(v7, type metadata accessor for ConversationControlsSecondaryPillButtonType);
      *v10 = 1;
      goto LABEL_9;
    case 1u:
      swift_storeEnumTagMultiPayload();
      outlined destroy of ConversationControlsSecondaryPillButtonType(v7, type metadata accessor for ConversationControlsSecondaryPillButtonType);
      goto LABEL_10;
    case 3u:
      if (![*(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_featureFlags) uninstalledAppStoreLockupEnabled])
      {
        goto LABEL_9;
      }

      (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))(&v25);
      v11 = *(&v26 + 1);
      if (*(&v26 + 1))
      {
        v12 = v27;
        v13 = __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
        v14 = *(v11 - 8);
        v15 = MEMORY[0x1EEE9AC00](v13);
        v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v17, v15);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v25, &_s15ConversationKit8Activity_pSgMd);
        (*(v12 + 112))(v11, v12);
        (*(v14 + 8))(v17, v11);
        v18 = type metadata accessor for Collaboration(0);
        if (__swift_getEnumTagSinglePayload(v4, 1, v18) != 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit13CollaborationVSgMd);
LABEL_9:
          swift_storeEnumTagMultiPayload();
LABEL_10:
          v19 = *(v1 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_menuHostViewController);
          v27 = 0;
          v25 = 0u;
          v26 = 0u;
          v20 = v19;
          ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
          v22 = v21;

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v25, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
          outlined destroy of ConversationControlsSecondaryPillButtonType(v10, type metadata accessor for ConversationControlsAction);
          return v22;
        }
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v25, &_s15ConversationKit8Activity_pSgMd);
        v24 = type metadata accessor for Collaboration(0);
        __swift_storeEnumTagSinglePayload(v4, 1, 1, v24);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit13CollaborationVSgMd);
      return 0;
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
      goto LABEL_9;
    default:
      outlined destroy of ConversationControlsSecondaryPillButtonType(v7, type metadata accessor for ConversationControlsSecondaryPillButtonType);
      return 0;
  }
}

Swift::Void __swiftcall ConversationHUDSecondaryPillView.setupLayoutConstraints()()
{
  v3 = v1;
  v4 = 0.0;
  if (*(&v1->super.super.isa + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsContext))
  {
    if (*(&v1->super.super.isa + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_controlsContext) == 1)
    {
      static Layout.ConversationControls.values.getter(v42);
      v5 = v42[13];
      v0 = static Layout.ConversationControls.values.getter(v43);
      v4 = v43[13];
    }

    else
    {
      v0 = static Layout.ConversationControls.values.getter(v43);
      v5 = v43[18];
    }
  }

  else
  {
    v5 = 0.0;
  }

  v6 = *((*MEMORY[0x1E69E7D40] & v1->super.super.isa) + 0xE0);
  v7 = (v6)(v0);
  v45.top = 0.0;
  v45.leading = v5;
  v45.bottom = v4;
  v45.trailing = v5;
  UIView.addConstraintsToFill(_:insets:)(v3, v45);

  v8 = ConversationHUDSecondaryPillView.contentHStack.getter();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA7F0;
  v10 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___contentHStack;
  v11 = [*(&v3->super.super.isa + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView____lazy_storage___contentHStack) topAnchor];
  OUTLINED_FUNCTION_6_58();
  v12 = v6();
  v13 = [v12 topAnchor];

  v14 = OUTLINED_FUNCTION_4_71();
  *(v9 + 32) = v14;
  v15 = [*(&v3->super.super.isa + v10) leadingAnchor];
  OUTLINED_FUNCTION_6_58();
  v16 = v6();
  v17 = [v16 leadingAnchor];

  v18 = OUTLINED_FUNCTION_4_71();
  *(v9 + 40) = v18;
  v19 = [*(&v3->super.super.isa + v10) bottomAnchor];
  OUTLINED_FUNCTION_6_58();
  v20 = v6();
  v21 = [v20 bottomAnchor];

  v22 = OUTLINED_FUNCTION_4_71();
  *(v9 + 48) = v22;
  v23 = [*(&v3->super.super.isa + v10) trailingAnchor];
  OUTLINED_FUNCTION_6_58();
  v24 = v6();
  v25 = [v24 trailingAnchor];

  v26 = OUTLINED_FUNCTION_4_71();
  *(v9 + 56) = v26;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints_];

  v28 = ConversationHUDSecondaryPillView.appStoreLockup.getter();
  if (v28)
  {
    v29 = v28;
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BC4BC370;
    v31 = [v29 leadingAnchor];
    v32 = [*(&v3->super.super.isa + v10) leadingAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    *(v30 + 32) = v33;
    v34 = [v29 trailingAnchor];
    v35 = [*(&v3->super.super.isa + v10) trailingAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    *(v30 + 40) = v36;
    v37 = [v29 bottomAnchor];
    v38 = [*(&v3->super.super.isa + v10) bottomAnchor];
    v39 = [v37 constraintEqualToAnchor_];

    *(v30 + 48) = v39;
    v40 = Array._bridgeToObjectiveC()().super.isa;

    [v41 activateConstraints_];
  }
}

id ConversationHUDSecondaryPillView.createIconViewForLagunaRecommendation(_:)()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  SymbolImageDescribers.TVHandoff.symbolImageDescription.getter();
  v0 = static UIImage.symbolImage(for:)(v5);
  outlined destroy of SymbolImageDescription(v5);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v2 = v1;
  [v2 setContentMode_];
  v3 = [objc_opt_self() whiteColor];
  [v2 setTintColor_];

  ConversationHUDSecondaryPillView.constrainIconView(_:)(v2);
  return v2;
}

void ConversationHUDSecondaryPillView.constrainIconView(_:)(void *a1)
{
  v2 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v5 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)();
  outlined destroy of ConversationControlsSecondaryPillButtonType(v4, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  if (v5)
  {
    v6 = 52.0;
  }

  else
  {
    v6 = 32.0;
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA930;
  v9 = [a1 heightAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v8 + 32) = v10;
  v11 = [a1 widthAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v8 + 40) = v12;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints_];
}

void ConversationHUDSecondaryPillView.updateIconView()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_iconView);
  if (v2)
  {
    v3 = v2;
    v4 = ConversationHUDSecondaryPillView.contentHStack.getter();
    [v4 removeArrangedSubview_];

    [v3 removeFromSuperview];
  }

  v5 = ConversationHUDSecondaryPillView.createIconView()();
  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v7 = v5;

    v8 = ConversationHUDSecondaryPillView.contentHStack.getter();
    [v8 insertArrangedSubview:v7 atIndex:0];
  }
}

void ConversationHUDSecondaryPillView.updateCallToAction()()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_callToAction);
  if (v2)
  {
    v3 = v2;
    v4 = ConversationHUDSecondaryPillView.contentHStack.getter();
    [v4 removeArrangedSubview_];

    [v3 removeFromSuperview];
  }

  v5 = ConversationHUDSecondaryPillView.createCallToAction()();
  if (v5)
  {
    v7 = *v1;
    *v1 = v5;
    *(v1 + 8) = v6;
    v8 = v5;

    v9 = ConversationHUDSecondaryPillView.contentHStack.getter();
    [v9 addArrangedSubview_];
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t type metadata accessor for ConversationHUDSecondaryPillView()
{
  result = type metadata singleton initialization cache for ConversationHUDSecondaryPillView;
  if (!type metadata singleton initialization cache for ConversationHUDSecondaryPillView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @nonobjc ASCLockupViewGroup.init(name:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithName_];

  return v4;
}

id @nonobjc ASCOfferTheme.init(titleBackgroundColor:titleTextColor:subtitleTextColor:iconTintColor:progressColor:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = [v5 initWithTitleBackgroundColor:a1 titleTextColor:a2 subtitleTextColor:a3 iconTintColor:a4 progressColor:a5];

  return v11;
}

uint64_t type metadata completion function for ConversationHUDSecondaryPillView()
{
  result = type metadata accessor for ConversationControlsSecondaryPillButtonType(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t outlined destroy of ConversationControlsSecondaryPillButtonType(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.initializeCountdownView(with:fullValue:)(Swift::Double with, Swift::Double fullValue)
{
  OUTLINED_FUNCTION_5_18();
  (*(v4 + 224))();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = type metadata accessor for Logger();
  v21 = OUTLINED_FUNCTION_8_49(v5, &static Logger.conversationControls);
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_29(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = with;
    *(v14 + 12) = 2048;
    *(v14 + 14) = fullValue;
    OUTLINED_FUNCTION_1_93();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    OUTLINED_FUNCTION_3_83();
  }
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.startCountdown()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 184);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_5_18();
  (*(v3 + 232))();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = type metadata accessor for Logger();
  v19 = OUTLINED_FUNCTION_8_49(v4, &static Logger.conversationControls);
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_29(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_1_93();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_3_83();
  }
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.tick()()
{
  OUTLINED_FUNCTION_5_18();
  (*(v0 + 240))();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = type metadata accessor for Logger();
  v16 = OUTLINED_FUNCTION_8_49(v1, &static Logger.conversationControls);
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_29(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_1_93();
    _os_log_impl(v10, v11, v12, v13, v14, 2u);
    OUTLINED_FUNCTION_3_83();
  }
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.countdownEnded()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 184);
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_4_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v0 + 184);
      swift_getObjectType();
      v6 = *(v5 + 24);
      v7 = v4;
      v6();

      swift_unknownObjectRelease();
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = type metadata accessor for Logger();
    v9 = OUTLINED_FUNCTION_8_49(v8, &static Logger.conversationControls);
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_33();
      *v11 = 0;
      _os_log_impl(&dword_1BBC58000, v9, v10, "[CountdownJoinButtonProvider] countdownEnded", v11, 2u);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v12 = type metadata accessor for Logger();
    v4 = OUTLINED_FUNCTION_8_49(v12, &static Logger.conversationControls);
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v13))
    {
      v14 = OUTLINED_FUNCTION_33();
      *v14 = 0;
      _os_log_impl(&dword_1BBC58000, v4, v13, "[CountdownJoinButtonProvider] Skipping joinConversation because button no longer exists after countdownEnded.", v14, 2u);
      MEMORY[0x1BFB23DF0](v14, -1, -1);
    }
  }
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.cancelJoinCountdown()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 184);
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = type metadata accessor for Logger();
  v18 = OUTLINED_FUNCTION_8_49(v3, &static Logger.conversationControls);
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_29(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_1_93();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_3_83();
  }
}

uint64_t ConversationControlsCountdownJoinButtonProvider.init(controlsManager:context:shape:)(void *a1, char a2, char a3)
{
  v4 = v3;
  v3[23] = 0;
  swift_unknownObjectWeakInit();
  v3[25] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher;
  v9 = type metadata accessor for CountdownVoucher(0);
  __swift_storeEnumTagSinglePayload(v4 + v8, 1, 1, v9);
  type metadata accessor for ConversationControlsJoinCallCountdownView();
  v4[21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[23] = &protocol witness table for ConversationControlsManager;
  v10 = swift_unknownObjectWeakAssign();
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x328))(v10);
  v4[25] = &protocol witness table for ConversationControlsJoinCountdownActionController;
  swift_unknownObjectWeakAssign();

  v4[20] = a1;
  v12 = ControlsButtonProvider.init(context:shape:)(a2, a3);
  v13 = *(v12 + 168);
  swift_retain_n();
  v14 = a1;
  v15 = v13;
  static Layout.ConversationControls.values.getter(v25);
  OUTLINED_FUNCTION_5_18();
  (*(v16 + 160))();

  v17 = *(v12 + 168);
  v18 = objc_opt_self();
  v19 = v17;
  (*((*v11 & *v19) + 0xB8))([v18 secondarySystemFillColor]);

  type metadata accessor for UIImage();
  v20 = *MEMORY[0x1E69DDDC8];
  v24[64] = 0;
  v26[0] = 0x69662E6F65646976;
  v26[1] = 0xEA00000000006C6CLL;
  v26[2] = 2;
  v26[3] = v20;
  v27 = 0;
  v28 = 7;
  v29 = 0;
  v30 = 0;
  v31[0] = 0x69662E6F65646976;
  v31[1] = 0xEA00000000006C6CLL;
  v31[2] = 2;
  v31[3] = v20;
  v32 = 0;
  v33 = 7;
  v34 = 0;
  v35 = 0;
  v21 = v20;
  outlined init with copy of SymbolImageDescription(v26, v24);
  outlined destroy of SymbolImageDescription(v31);
  v22 = static UIImage.symbolImage(for:)(v26);
  outlined destroy of SymbolImageDescription(v26);
  ControlsButtonProvider.image.setter(v22);

  return v12;
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.buttonChanged()()
{
  ControlsButtonProvider.buttonChanged()();
  OUTLINED_FUNCTION_4_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000013, 0x80000001BC501E00, Strong);
    [v2 setClipsToBounds_];
    [v2 addSubview_];
    [v2 addTarget:v0 action:sel_cancelJoinCountdown forControlEvents:64];
    v3 = [v2 imageView];
    if (v3)
    {
      v4 = v3;
      [v3 setAlpha_];
    }
  }
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.didLayoutSubviews(button:)(UIButton *button)
{
  ControlsButtonProvider.didLayoutSubviews(button:)(button);
  v3 = *(v1 + 168);
  [(UIButton *)button bounds];
  [v3 setFrame_];
  v4 = [(UIButton *)button layer];
  [(UIButton *)button bounds];
  [v4 setCornerRadius_];
}

Swift::Void __swiftcall ConversationControlsCountdownJoinButtonProvider.movedToWindow(button:)(UIButton *button)
{
  v2 = v1;
  v4 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31[-v14];
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v31[-v18];
  v20 = [(UIButton *)button window];
  if (v20)
  {

    v21 = OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher;
    OUTLINED_FUNCTION_4_0();
    outlined init with copy of CountdownVoucher?(v2 + v21, v19);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v4);
    outlined destroy of CountdownVoucher?(v19);
    if (EnumTagSinglePayload != 1)
    {
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v2 + 200);
      ObjectType = swift_getObjectType();
      (*(v23 + 8))(v2, &protocol witness table for ConversationControlsCountdownJoinButtonProvider, ObjectType, v23);
      swift_unknownObjectRelease();
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    __swift_storeEnumTagSinglePayload(v15, v25, 1, v4);
    swift_beginAccess();
    v29 = v2 + v21;
    v30 = v15;
  }

  else
  {
    v26 = OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher;
    OUTLINED_FUNCTION_4_0();
    outlined init with copy of CountdownVoucher?(v2 + v26, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
    {
      outlined destroy of CountdownVoucher?(v12);
      return;
    }

    outlined init with take of CountdownVoucher(v12, v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v2 + 200);
      v28 = swift_getObjectType();
      (*(v27 + 16))(v6, v28, v27);
      swift_unknownObjectRelease();
    }

    outlined destroy of CountdownVoucher(v6);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v4);
    swift_beginAccess();
    v29 = v2 + v26;
    v30 = v9;
  }

  outlined assign with take of CountdownVoucher?(v30, v29);
  swift_endAccess();
}

uint64_t ConversationControlsCountdownJoinButtonProvider.__ivar_destroyer()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 176);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 192);
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher;

  return outlined destroy of CountdownVoucher?(v1);
}

uint64_t ConversationControlsCountdownJoinButtonProvider.deinit()
{
  v0 = ControlsButtonProvider.deinit();

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 176);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 192);
  outlined destroy of CountdownVoucher?(v0 + OBJC_IVAR____TtC15ConversationKit47ConversationControlsCountdownJoinButtonProvider_voucher);
  return v0;
}

uint64_t ConversationControlsCountdownJoinButtonProvider.__deallocating_deinit()
{
  ConversationControlsCountdownJoinButtonProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of CountdownVoucher?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CountdownVoucher?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of CountdownVoucher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CountdownVoucher(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CountdownVoucher(uint64_t a1)
{
  v2 = type metadata accessor for CountdownVoucher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of CountdownVoucher?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ConversationControlsCountdownJoinButtonProvider()
{
  result = type metadata singleton initialization cache for ConversationControlsCountdownJoinButtonProvider;
  if (!type metadata singleton initialization cache for ConversationControlsCountdownJoinButtonProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ConversationControlsCountdownJoinButtonProvider()
{
  type metadata accessor for CountdownVoucher?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CountdownVoucher?()
{
  if (!lazy cache variable for type metadata for CountdownVoucher?)
  {
    type metadata accessor for CountdownVoucher(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CountdownVoucher?);
    }
  }
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0x64656E696F6ALL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1952867692;
    }

    else
    {
      v4 = 0x6E456172656D6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xED000064656C6261;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x64656E696F6ALL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1952867692;
    }

    else
    {
      v2 = 0x6E456172656D6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xED000064656C6261;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_10();
  }

  return v8 & 1;
}

{
  v2 = 1701736302;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x746365726964;
    }

    else
    {
      v4 = 0x79616C6572;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701736302;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x746365726964;
    }

    else
    {
      v2 = 0x79616C6572;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_10();
  }

  return v8 & 1;
}

{
  v2 = 0x656C746974;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656C746974;
  switch(v4)
  {
    case 1:
      v5 = 0x41746E6572727563;
      v3 = 0xEF79746976697463;
      break;
    case 2:
      v5 = 0x7069636974726170;
      v7 = 1937010273;
      goto LABEL_11;
    case 3:
      v5 = 0x6572616873;
      break;
    case 4:
      v5 = 0x6143656C67676F74;
      v6 = 0x736E6F697470;
      goto LABEL_8;
    case 5:
      v5 = 0xD000000000000017;
      v3 = 0x80000001BC4F1D50;
      break;
    case 6:
      v5 = 0x7373654D6E65706FLL;
      v7 = 1936025441;
LABEL_11:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 7:
      v5 = 0x646E416B636F6C62;
      v6 = 0x74726F706552;
LABEL_8:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 8:
      v3 = 0xE800000000000000;
      v5 = 0x656C746954747470;
      break;
    case 9:
      v5 = 0x545450657661656CLL;
      v3 = 0xEF6C656E6E616843;
      break;
    case 10:
      v5 = 0x415454506E65706FLL;
      v3 = 0xEA00000000007070;
      break;
    default:
      break;
  }

  v8 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x41746E6572727563;
      v8 = 0xEF79746976697463;
      break;
    case 2:
      v2 = 0x7069636974726170;
      v10 = 1937010273;
      goto LABEL_24;
    case 3:
      v2 = 0x6572616873;
      break;
    case 4:
      v2 = 0x6143656C67676F74;
      v9 = 0x736E6F697470;
      goto LABEL_21;
    case 5:
      v2 = 0xD000000000000017;
      v8 = 0x80000001BC4F1D50;
      break;
    case 6:
      v2 = 0x7373654D6E65706FLL;
      v10 = 1936025441;
LABEL_24:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 7:
      v2 = 0x646E416B636F6C62;
      v9 = 0x74726F706552;
LABEL_21:
      v8 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 8:
      v8 = 0xE800000000000000;
      v2 = 0x656C746954747470;
      break;
    case 9:
      v2 = 0x545450657661656CLL;
      v8 = 0xEF6C656E6E616843;
      break;
    case 10:
      v2 = 0x415454506E65706FLL;
      v8 = 0xEA00000000007070;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_35_10();
  }

  return v12 & 1;
}

{
  v2 = 0xEF6E6F6973736553;
  v3 = 0x65756E69746E6F63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x736553657661656CLL;
    }

    else
    {
      v5 = 0x6E6F697463416F6ELL;
    }

    if (v4 == 1)
    {
      v6 = 0xEC0000006E6F6973;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x65756E69746E6F63;
    v6 = 0xEF6E6F6973736553;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x736553657661656CLL;
    }

    else
    {
      v3 = 0x6E6F697463416F6ELL;
    }

    if (a2 == 1)
    {
      v2 = 0xEC0000006E6F6973;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_42_16();
  }

  return v8 & 1;
}

{
  v2 = 0xEB00000000656C62;
  v3 = 0x616C696176616E75;
  v4 = a1;
  v5 = 0x616C696176616E75;
  v6 = 0xEB00000000656C62;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x7964616552746F6ELL;
      break;
    case 2:
      v6 = 0x80000001BC4F1C50;
      v5 = 0xD000000000000014;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x7964616572;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v7 = 1836212599;
      goto LABEL_11;
    case 5:
      v5 = 0x6552657669746361;
      v6 = 0xEF676E6964726F63;
      break;
    case 6:
      v5 = 0xD000000000000013;
      v6 = 0x80000001BC4F1C90;
      break;
    case 7:
      v5 = 0x6F4364726F636572;
      v6 = 0xEE006574656C706DLL;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v7 = 1684956531;
LABEL_11:
      v5 = v7 | 0x676E6900000000;
      break;
    case 9:
      v6 = 0xE400000000000000;
      v5 = 1953391987;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7964616552746F6ELL;
      break;
    case 2:
      v2 = 0x80000001BC4F1C50;
      v3 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x7964616572;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v8 = 1836212599;
      goto LABEL_22;
    case 5:
      v3 = 0x6552657669746361;
      v2 = 0xEF676E6964726F63;
      break;
    case 6:
      v3 = 0xD000000000000013;
      v2 = 0x80000001BC4F1C90;
      break;
    case 7:
      v3 = 0x6F4364726F636572;
      v2 = 0xEE006574656C706DLL;
      break;
    case 8:
      v2 = 0xE700000000000000;
      v8 = 1684956531;
LABEL_22:
      v3 = v8 | 0x676E6900000000;
      break;
    case 9:
      v2 = 0xE400000000000000;
      v3 = 1953391987;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_42_16();
  }

  return v10 & 1;
}

{
  v2 = 1852403562;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1702260589;
    }

    else
    {
      v4 = 0x50646E416E696F6ALL;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEB0000000079616CLL;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1852403562;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1702260589;
    }

    else
    {
      v2 = 0x50646E416E696F6ALL;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB0000000079616CLL;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_10();
  }

  return v8 & 1;
}

{
  v2 = 0xEE00646574616572;
  v3 = 0x43796C6C61636F6CLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x64657469766E69;
    }

    else
    {
      v5 = 0x6574736576726168;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v5 = 0x43796C6C61636F6CLL;
    v6 = 0xEE00646574616572;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x64657469766E69;
    }

    else
    {
      v3 = 0x6574736576726168;
    }

    if (a2 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE900000000000064;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_42_16();
  }

  return v8 & 1;
}

{
  v2 = 0xE900000000000079;
  v3 = 0x616C706572616873;
  v4 = a1;
  v5 = "screenshare-sharebutton";
  v6 = 0x616C706572616873;
  v7 = 0xE900000000000079;
  v8 = "shareplay-sharebutton";
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000015;
      v7 = 0x80000001BC4F1A70;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_63_6();
      v7 = 0xEB00000000650079;
      break;
    case 3:
      v7 = 0x80000001BC4F1AA0;
      v6 = 0xD000000000000017;
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_63_6();
      v7 = 0xEF7070612D650079;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000015;
      v2 = (v8 - 32) | 0x8000000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_62_6();
      v2 = 0xEB00000000650079;
      break;
    case 3:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000017;
      break;
    case 4:
      OUTLINED_FUNCTION_62_6();
      v2 = 0xEF7070612D650079;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_42_16();
  }

  return v10 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  return specialized == infix<A>(_:_:)(a1, a2, MEMORY[0x1E696B170], &lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName, MEMORY[0x1E696B170]);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ImageNames.Staging.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ImageNames.ParticipantView.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, MEMORY[0x1E6995AA8], &lazy protocol witness table cache variable for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action, MEMORY[0x1E6995AA8]);
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v3 = 0xD00000000000002ALL;
  }

  if (v2)
  {
    v4 = "systemApertureLayoutMode";
  }

  else
  {
    v4 = "e.alloy.facetime.messaging";
  }

  if (a2)
  {
    v5 = 0xD000000000000026;
  }

  else
  {
    v5 = 0xD00000000000002ALL;
  }

  if (a2)
  {
    v6 = "e.alloy.facetime.messaging";
  }

  else
  {
    v6 = "systemApertureLayoutMode";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_10();
  }

  return v8 & 1;
}

{
  v3 = VideoReaction.rawValue.getter(a1);
  v4 = VideoReaction.rawValue.getter(a2);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6765746E696E6F6ELL;
  }

  else
  {
    v3 = 0x7461726765746E69;
  }

  if (v2)
  {
    v4 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xED00006465746172;
  }

  if (a2)
  {
    v5 = 0x6765746E696E6F6ELL;
  }

  else
  {
    v5 = 0x7461726765746E69;
  }

  if (a2)
  {
    v6 = 0xED00006465746172;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_10();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_35_10();
  }

  return v10 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_43_10();
  v8(v7);
  lazy protocol witness table accessor for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action(a4, a5);
  OUTLINED_FUNCTION_312();
  dispatch thunk of RawRepresentable.rawValue.getter();
  OUTLINED_FUNCTION_312();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_42_16();
  }

  return v10 & 1;
}

void specialized >> prefix<A>(_:)()
{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for Participant(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit11ParticipantVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for Participant);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit19ParticipantGridViewC017FullScreenFocusedC4InfoVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ParticipantGridView.FullScreenFocusedParticipantInfo);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ParticipantViewModel(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit20ParticipantViewModelOSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ParticipantViewModel);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ConversationControlsSecondaryPillButtonType(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ConversationControlsSecondaryPillButtonType);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_9();
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v7)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit0A14ControlsActionOSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ConversationControlsAction);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_9();
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v7)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ConversationControlsRecipe);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for HUDActivityManager.BannerUpdate(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for HUDActivityManager.BannerUpdate);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RecentsCallItem(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit15RecentsCallItemVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RecentsCallItem);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for SharedContentViewModel(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit22SharedContentViewModelOSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for SharedContentViewModel);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RecentsCallItemType(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit19RecentsCallItemTypeOSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RecentsCallItemType);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RecentOngoingConversationMetadata(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RecentOngoingConversationMetadata);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for ScreenShareAttributes(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit21ScreenShareAttributesVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for ScreenShareAttributes);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for StagedCollaboration(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit19StagedCollaborationVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for StagedCollaboration);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for Participant.State(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit11ParticipantV5StateOSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for Participant.State);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RemoteControlMessage(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit20RemoteControlMessageOSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RemoteControlMessage);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RemoteControlRequest(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit20RemoteControlRequestVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RemoteControlRequest);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RemoteControlResponse(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit21RemoteControlResponseVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RemoteControlResponse);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_8_9();
  type metadata accessor for RecentCallRecentItemMetadata(v5);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_72();
  OUTLINED_FUNCTION_3_84();
  if (v8)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    outlined init with take of ConversationControlsSecondaryPillButtonType(v0, v1, type metadata accessor for RecentCallRecentItemMetadata);
    OUTLINED_FUNCTION_27_21();
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_24_23();
    OUTLINED_FUNCTION_54_8();
  }

  OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_49();
}

uint64_t *ConversationControlsRecipeGenerator.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_46_12();
  }

  return &static ConversationControlsRecipeGenerator.shared;
}

uint64_t ConversationControlsRecipeGenerator.generate(for:type:controlsManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v396 = a1;
  v395 = type metadata accessor for PushToTalkNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = (v9 - v8);
  v400 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  v397 = &v394 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v394 - v21;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, &static Logger.conversationControls);
  outlined init with copy of ConversationControlsType(a2, &v410);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v399 = a3;
    v28 = v27;
    v409[0] = v27;
    *v26 = 136315138;
    outlined init with copy of ConversationControlsType(&v410, &v401);
    specialized >> prefix<A>(_:)(&v401);
    v394 = v12;
    OUTLINED_FUNCTION_74_3();
    v29 = v16;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v401, &_s15ConversationKit0A12ControlsTypeOSgMd);
    outlined destroy of ConversationControlsType(&v410);
    v30 = OUTLINED_FUNCTION_312();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v32);

    *(v26 + 4) = v33;
    v16 = v29;
    v22 = v398;
    v12 = v394;
    _os_log_impl(&dword_1BBC58000, v24, v25, "generating recipe for type %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v34 = v28;
    a3 = v399;
    MEMORY[0x1BFB23DF0](v34, -1, -1);
    MEMORY[0x1BFB23DF0](v26, -1, -1);
  }

  else
  {

    outlined destroy of ConversationControlsType(&v410);
  }

  v35 = type metadata accessor for ConversationControlsRecipe();
  __swift_storeEnumTagSinglePayload(a4, 1, 1, v35);
  outlined init with copy of ConversationControlsType(a2, &v410);
  v36 = v410;
  switch(v414)
  {
    case 1:
      v399 = a3;
      v90 = v22;
      outlined init with take of TapInteractionHandler(&v410, &v401);
      if (v396 == 2)
      {
        goto LABEL_56;
      }

      outlined init with copy of IDSLookupManager(&v401, v409);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
      if (swift_dynamicCast())
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v91 = OUTLINED_FUNCTION_48_10();
        PushToTalkControlsRecipeGenerator.pttHUDRecipe(controlsManager:)(v91, v92, v93);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        outlined init with take of ConversationControlsRecipe?(v22, a4);
        outlined destroy of PushToTalkNotice(v10, type metadata accessor for PushToTalkNotice);
      }

      else
      {
        v139 = v405;
        __swift_project_boxed_opaque_existential_1(&v401, v404);
        v140 = OUTLINED_FUNCTION_6_4();
        v141(v140, v139);
        if (v406 == 1)
        {
        }

        else
        {
          v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v152 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v153 = static Features.shared;
        v407 = &type metadata for ScreeningStatusOverride;
        v408 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        type metadata accessor for Defaults();
        OUTLINED_FUNCTION_50_1();
        v154 = v153;
        v406 = Defaults.init()();
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        OUTLINED_FUNCTION_56_7();
        v155 = OUTLINED_FUNCTION_84();
        v156 = OUTLINED_FUNCTION_29_18(v155, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_72_5(v156, v157);
        OUTLINED_FUNCTION_30_15();
        v158();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v159 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_17_5(v159);
        (*(v36 + 8))(v16, *(&v36 + 1));
        OUTLINED_FUNCTION_48_10();
        OUTLINED_FUNCTION_31_2();
        DefaultHUDControlsRecipeGenerator.defaultHUDRecipe(controlsManager:)(v160, v161, v162);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        outlined init with take of ConversationControlsRecipe?(v22, a4);
      }

LABEL_55:
      __swift_destroy_boxed_opaque_existential_1(v409);
LABEL_56:
      v173 = v397;
      outlined init with copy of (CGFloat, AutoplayCandidate)(a4, v397, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v173, 1, v35);
      OUTLINED_FUNCTION_31_2();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v175, v176);
      if (EnumTagSinglePayload == 1)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v177 = static SystemApertureIconFactory.shared;
        v409[3] = &type metadata for ScreeningStatusOverride;
        v409[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        type metadata accessor for Defaults();
        OUTLINED_FUNCTION_50_1();

        v409[0] = Defaults.init()();
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        OUTLINED_FUNCTION_56_7();
        v178 = OUTLINED_FUNCTION_84();
        v179 = OUTLINED_FUNCTION_29_18(v178, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_72_5(v179, v180);
        OUTLINED_FUNCTION_30_15();
        v181();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v182 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_17_5(v182);
        v183 = OUTLINED_FUNCTION_57_6();
        v184(v183);
        outlined init with copy of IDSLookupManager(&v401, v409);
        v185 = OUTLINED_FUNCTION_48_10();
        NoticeRecipeGenerator.noticeRecipe(controlsManager:notice:)(v185, v186, v177, v178, v187);

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v409, &_s15ConversationKit6Notice_pSgMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        outlined init with take of ConversationControlsRecipe?(v90, a4);
      }

      return __swift_destroy_boxed_opaque_existential_1(&v401);
    case 2:
      v404 = &type metadata for ScreeningStatusOverride;
      v52 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      OUTLINED_FUNCTION_52_10(v52);
      OUTLINED_FUNCTION_50_1();
      v53 = Defaults.init()();
      OUTLINED_FUNCTION_12_43(v53);
      CallScreeningService.init(overrides:)();
      [objc_allocWithZone(type metadata accessor for Features()) init];
      v398 = v36;
      v54 = a4;
      OUTLINED_FUNCTION_44_10();
      v55 = OUTLINED_FUNCTION_84();
      v56 = OUTLINED_FUNCTION_29_18(v55, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
      OUTLINED_FUNCTION_70_2(v56, v57);
      OUTLINED_FUNCTION_39_11();
      v58();
      OUTLINED_FUNCTION_59_5(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
      v59 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
      v60 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
      OUTLINED_FUNCTION_19_23(v55 + v59, v61, v62, v60);
      v63(v16, v35);
      OUTLINED_FUNCTION_76_3();
      HandoffControlsRecipeGenerator.handoffCompletedRecipe(controlsManager:localizedDeviceCategory:)();
      swift_setDeallocating();
      SystemApertureIconFactory.deinit();
      OUTLINED_FUNCTION_75_5();
      swift_deallocClassInstance();

      goto LABEL_12;
    case 3:
      v404 = &type metadata for ScreeningStatusOverride;
      v64 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      OUTLINED_FUNCTION_52_10(v64);
      OUTLINED_FUNCTION_50_1();
      v65 = Defaults.init()();
      OUTLINED_FUNCTION_12_43(v65);
      CallScreeningService.init(overrides:)();
      [objc_allocWithZone(type metadata accessor for Features()) init];
      v54 = a4;
      OUTLINED_FUNCTION_44_10();
      v66 = OUTLINED_FUNCTION_84();
      v67 = OUTLINED_FUNCTION_29_18(v66, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
      OUTLINED_FUNCTION_72_5(v67, v68);
      OUTLINED_FUNCTION_39_11();
      v69();
      OUTLINED_FUNCTION_59_5(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
      v70 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
      v71 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
      OUTLINED_FUNCTION_19_23(v66 + v70, v72, v73, v71);
      v74(v16, *(&v36 + 1));
      OUTLINED_FUNCTION_76_3();
      HandoffControlsRecipeGenerator.lagunaHandoffHUDRecipe(controlsManager:suggestion:)();
      swift_setDeallocating();
      SystemApertureIconFactory.deinit();
      OUTLINED_FUNCTION_75_5();
      swift_deallocClassInstance();

LABEL_12:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      v37 = a3;
      v51 = v54;
      return outlined init with take of ConversationControlsRecipe?(v37, v51);
    case 4:
      v404 = &type metadata for ScreeningStatusOverride;
      v38 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      OUTLINED_FUNCTION_52_10(v38);
      OUTLINED_FUNCTION_50_1();
      v39 = Defaults.init()();
      OUTLINED_FUNCTION_12_43(v39);
      CallScreeningService.init(overrides:)();
      [objc_allocWithZone(type metadata accessor for Features()) init];
      v398 = v36;
      OUTLINED_FUNCTION_60_6();
      v40 = OUTLINED_FUNCTION_84();
      v41 = OUTLINED_FUNCTION_68_4((v40 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService));
      (*(v12 + 16))(v41, v16, v16);
      OUTLINED_FUNCTION_36_16(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
      v42 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
      v43 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
      OUTLINED_FUNCTION_19_23(v40 + v42, v44, v45, v43);
      v46(v16, v16);
      ScreenSharingControlsRecipeGenerator.incomingRemoteControlRequestHUDRecipe(controlsManager:requestingParticipantDisplayName:)(a3, v398, *(&v36 + 1), v40, v47, v48, v49, v50, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      v37 = v22;
      v51 = a4;
      return outlined init with take of ConversationControlsRecipe?(v37, v51);
    case 5:
      v404 = &type metadata for ScreeningStatusOverride;
      v94 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      OUTLINED_FUNCTION_52_10(v94);
      OUTLINED_FUNCTION_50_1();
      v95 = Defaults.init()();
      OUTLINED_FUNCTION_12_43(v95);
      CallScreeningService.init(overrides:)();
      [objc_allocWithZone(type metadata accessor for Features()) init];
      v96 = a4;
      OUTLINED_FUNCTION_44_10();
      v97 = OUTLINED_FUNCTION_84();
      v98 = OUTLINED_FUNCTION_68_4((v97 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService));
      (*(v12 + 16))(v98, v16, v16);
      OUTLINED_FUNCTION_36_16(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
      v99 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
      v100 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
      OUTLINED_FUNCTION_19_23(v97 + v99, v101, v102, v100);
      v103(v16, v16);
      v104 = OUTLINED_FUNCTION_76_3();
      ScreenSharingControlsRecipeGenerator.rejectedRemoteControlRequestHUDRecipe(controlsManager:context:)(v104, v105, v97, v106, v107, v108, v109, v110, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
      goto LABEL_26;
    case 6:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_74_3();
      v397 = a4;
      v399 = a3;
      v111 = static Features.shared;
      OUTLINED_FUNCTION_55_9();
      if (!v112)
      {
        OUTLINED_FUNCTION_8_6();
      }

      v113 = static SystemApertureIconFactory.shared;
      v404 = &type metadata for ScreeningStatusOverride;
      v114 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      OUTLINED_FUNCTION_52_10(v114);
      OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_6_4();

      v115 = Defaults.init()();
      OUTLINED_FUNCTION_12_43(v115);
      CallScreeningService.init(overrides:)();
      [objc_allocWithZone(type metadata accessor for Features()) init];
      v116 = OUTLINED_FUNCTION_43_10();
      type metadata accessor for SystemApertureIconFactory(v116);
      v117 = OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_68_4((v117 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService));
      OUTLINED_FUNCTION_38_14();
      v118();
      OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
      v119 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
      OUTLINED_FUNCTION_23_4(v119);
      (*(v12 + 8))(v16, v16);
      v120 = v398;
      CallsControlsRecipeGenerator.swapCallsRecipe(shownCall:controlsManager:)(v36, *(&v36 + 1), v399, v10, v113, v117, v121, v122, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
      swift_unknownObjectRelease();

      v123 = v397;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v397, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      v37 = v120;
      v51 = v123;
      return outlined init with take of ConversationControlsRecipe?(v37, v51);
    case 7:
      if (!(*(&v410 + 1) | v410 | v413 | v412 | v411))
      {
        v76 = v22;
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v124 = static Features.shared;
        v404 = &type metadata for ScreeningStatusOverride;
        v125 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v125);
        OUTLINED_FUNCTION_50_1();
        v126 = v124;
        v127 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v127);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        OUTLINED_FUNCTION_56_7();
        v128 = OUTLINED_FUNCTION_84();
        v129 = OUTLINED_FUNCTION_29_18(v128, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_72_5(v129, v130);
        OUTLINED_FUNCTION_30_15();
        v131();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v132 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_17_5(v132);
        v133 = OUTLINED_FUNCTION_57_6();
        v134(v133);
        OUTLINED_FUNCTION_31_2();
        DefaultHUDControlsRecipeGenerator.defaultHUDRecipe(controlsManager:)(v135, v136, v137);

        goto LABEL_35;
      }

      v75 = v413 | *(&v410 + 1) | v412 | v411;
      if (v410 == 1 && !v75)
      {
        v76 = v22;
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v77 = static Features.shared;
        v404 = &type metadata for ScreeningStatusOverride;
        v78 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v78);
        OUTLINED_FUNCTION_50_1();
        v79 = v77;
        v80 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v80);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        OUTLINED_FUNCTION_56_7();
        v81 = OUTLINED_FUNCTION_84();
        v82 = OUTLINED_FUNCTION_29_18(v81, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_72_5(v82, v83);
        OUTLINED_FUNCTION_30_15();
        v84();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v85 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_17_5(v85);
        v86 = OUTLINED_FUNCTION_57_6();
        v87(v86);
        OUTLINED_FUNCTION_31_2();
        DefaultHUDControlsRecipeGenerator.unauthorizedParticipantHUDRecipe(controlsManager:)(v88, v89);

        goto LABEL_19;
      }

      if (v410 == 2 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        PushToTalkControlsRecipeGenerator.pttHUDRecipe(controlsManager:)(a3, static SystemApertureIconFactory.shared, v22);
        goto LABEL_8;
      }

      if (v410 == 3 && !v75)
      {
        v404 = &type metadata for ScreeningStatusOverride;
        v142 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v142);
        OUTLINED_FUNCTION_50_1();
        v143 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v143);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v76 = v22;
        OUTLINED_FUNCTION_60_6();
        v144 = OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_22_27(v144, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_39_11();
        v145();
        OUTLINED_FUNCTION_59_5(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v146 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
        v147 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_19_23(v144 + v146, v148, v149, v147);
        v150 = OUTLINED_FUNCTION_43_0();
        v151(v150);
        HandoffControlsRecipeGenerator.handoffHUDRecipe(controlsManager:)();
LABEL_19:
        swift_setDeallocating();
        SystemApertureIconFactory.deinit();
        OUTLINED_FUNCTION_75_5();
        swift_deallocClassInstance();
LABEL_35:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        v37 = v76;
        goto LABEL_36;
      }

      if (v410 == 4 && !v75)
      {
        v404 = &type metadata for ScreeningStatusOverride;
        v163 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v163);
        OUTLINED_FUNCTION_50_1();
        v164 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v164);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v96 = a4;
        OUTLINED_FUNCTION_44_10();
        v165 = OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_22_27(v165, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_39_11();
        v166();
        OUTLINED_FUNCTION_36_16(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v167 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
        v168 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_19_23(v165 + v167, v169, v170, v168);
        v171 = OUTLINED_FUNCTION_43_0();
        v172(v171);
        OUTLINED_FUNCTION_76_3();
        HandoffControlsRecipeGenerator.lagunaHandoffCompletedRecipe(controlsManager:)();
LABEL_26:

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v96, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        v37 = a3;
        v51 = v96;
        return outlined init with take of ConversationControlsRecipe?(v37, v51);
      }

      v399 = a3;
      if (v410 == 5 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        OUTLINED_FUNCTION_64_6();
        v188 = static Features.shared;
        OUTLINED_FUNCTION_55_9();
        if (!v112)
        {
          OUTLINED_FUNCTION_8_6();
        }

LABEL_67:
        v404 = &type metadata for ScreeningStatusOverride;
        v189 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v189);
        OUTLINED_FUNCTION_50_1();
        OUTLINED_FUNCTION_6_4();

        v190 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v190);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v191 = OUTLINED_FUNCTION_43_10();
        type metadata accessor for SystemApertureIconFactory(v191);
        v192 = OUTLINED_FUNCTION_84();
        v193 = OUTLINED_FUNCTION_29_18(v192, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_70_2(v193, v194);
        OUTLINED_FUNCTION_20_26();
        v195();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v196 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v197 = OUTLINED_FUNCTION_15_30(v196);
        v198(v197);
        OUTLINED_FUNCTION_48_10();
        CallsControlsRecipeGenerator.makeIncomingCall(using:isThirdParty:)();
LABEL_75:

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        v37 = v36;
        goto LABEL_36;
      }

      if (v410 == 6 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        OUTLINED_FUNCTION_64_6();
        v199 = static Features.shared;
        OUTLINED_FUNCTION_55_9();
        if (!v112)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v404 = &type metadata for ScreeningStatusOverride;
        v200 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v200);
        OUTLINED_FUNCTION_50_1();
        OUTLINED_FUNCTION_6_4();

        v201 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v201);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v202 = OUTLINED_FUNCTION_43_10();
        type metadata accessor for SystemApertureIconFactory(v202);
        v203 = OUTLINED_FUNCTION_84();
        v204 = OUTLINED_FUNCTION_29_18(v203, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_70_2(v204, v205);
        OUTLINED_FUNCTION_20_26();
        v206();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v207 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v208 = OUTLINED_FUNCTION_15_30(v207);
        v209(v208);
        OUTLINED_FUNCTION_26_22();
        CallsControlsRecipeGenerator.makeOngoingTelephonyCall(using:)();
        goto LABEL_75;
      }

      if (v410 == 7 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        OUTLINED_FUNCTION_64_6();
        v210 = static Features.shared;
        OUTLINED_FUNCTION_55_9();
        if (!v112)
        {
          OUTLINED_FUNCTION_8_6();
        }

        goto LABEL_67;
      }

      if (v410 == 8 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        OUTLINED_FUNCTION_64_6();
        v211 = static Features.shared;
        OUTLINED_FUNCTION_55_9();
        if (!v112)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v404 = &type metadata for ScreeningStatusOverride;
        v212 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v212);
        OUTLINED_FUNCTION_50_1();
        OUTLINED_FUNCTION_6_4();

        v213 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v213);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v214 = OUTLINED_FUNCTION_43_10();
        type metadata accessor for SystemApertureIconFactory(v214);
        v215 = OUTLINED_FUNCTION_84();
        v216 = OUTLINED_FUNCTION_29_18(v215, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_70_2(v216, v217);
        OUTLINED_FUNCTION_20_26();
        v218();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v219 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v220 = OUTLINED_FUNCTION_15_30(v219);
        v221(v220);
        v222 = OUTLINED_FUNCTION_26_22();
        CallsControlsRecipeGenerator.makeOngoingThirdPartyVoIPCall(using:)(v222, v223, v224, v225, v226, v227, v228, v229, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
        goto LABEL_75;
      }

      if (v410 == 9 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        OUTLINED_FUNCTION_64_6();
        v230 = static Features.shared;
        OUTLINED_FUNCTION_55_9();
        if (!v112)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v404 = &type metadata for ScreeningStatusOverride;
        v231 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v231);
        OUTLINED_FUNCTION_50_1();
        OUTLINED_FUNCTION_6_4();

        v232 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v232);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v233 = OUTLINED_FUNCTION_43_10();
        type metadata accessor for SystemApertureIconFactory(v233);
        v234 = OUTLINED_FUNCTION_84();
        v235 = OUTLINED_FUNCTION_29_18(v234, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_70_2(v235, v236);
        OUTLINED_FUNCTION_20_26();
        v237();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v238 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v239 = OUTLINED_FUNCTION_15_30(v238);
        v240(v239);
        OUTLINED_FUNCTION_26_22();
        CallsControlsRecipeGenerator.callAgainHUDRecipe(controlsManager:)();
        goto LABEL_75;
      }

      v241 = v16;
      if (v410 == 10 && !v75)
      {
        CollaborationControlsRecipeGenerator.collaborationHUDRecipe(controlsManager:alternateAppearance:)(a3, 0, v22);
LABEL_8:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a4, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        v37 = v22;
LABEL_36:
        v51 = a4;
        return outlined init with take of ConversationControlsRecipe?(v37, v51);
      }

      v242 = a4;
      v243 = v22;
      if (v410 == 11 && !v75)
      {
        v244 = OUTLINED_FUNCTION_34_18();
        CollaborationControlsRecipeGenerator.collaborationHUDRecipe(controlsManager:alternateAppearance:)(v244, 1, v245);
        goto LABEL_159;
      }

      if (v410 == 12 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_18_4();
        }

        ShareNameAndPhotoControlsRecipeGenerator.shareNameAndPhotoRecipe(nameAndPhotoUtilities:)(static NameAndPhotoUtilities.shared, v22);
        goto LABEL_159;
      }

      if (v410 == 13 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_18_4();
        }

        ShareNameAndPhotoControlsRecipeGenerator.shareNameRecipe(nameAndPhotoUtilities:)(static NameAndPhotoUtilities.shared, v22);
        goto LABEL_159;
      }

      if (v410 == 14 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v246 = OUTLINED_FUNCTION_34_18();
        EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyVideoStreamingRequestRecipe(controlsManager:)(v246, v247, v248);
        goto LABEL_159;
      }

      if (v410 == 15 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v249 = OUTLINED_FUNCTION_34_18();
        EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyMediaUploadRequestRecipe(controlsManager:)(v249, v250);
        goto LABEL_159;
      }

      if (v410 == 16 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v251 = OUTLINED_FUNCTION_34_18();
        EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyRTTVideoStreamingRequestRecipe(controlsManager:)(v251, v252, v253);
        goto LABEL_159;
      }

      if (v410 == 17 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        OUTLINED_FUNCTION_34_18();
        EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyRTTMediaUploadRequestRecipe(controlsManager:)();
        goto LABEL_159;
      }

      if (v410 == 18 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        OUTLINED_FUNCTION_34_18();
        EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyMediaUploadRequestDuringStreamingRecipe(controlsManager:)();
        goto LABEL_159;
      }

      if (v410 == 19 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_18_4();
        }

        ShareNameAndPhotoControlsRecipeGenerator.incomingNameUpdateRecipe(nameAndPhotoUtilities:controlsManager:)(a3, v22);
        goto LABEL_159;
      }

      if (v410 == 20 && !v75)
      {
        v254 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
        OUTLINED_FUNCTION_49_0(v254);
        v404 = &type metadata for ScreeningStatusOverride;
        v255 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v255);
        OUTLINED_FUNCTION_50_1();
        v256 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v256);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
        OUTLINED_FUNCTION_56_7();
        v257 = OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_22_27(v257, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_10_43();
        v258();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v259 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v260 = OUTLINED_FUNCTION_6_59(v259);
        v261(v260);
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v262 = static SystemApertureIconFactory.shared;

        v263 = OUTLINED_FUNCTION_5_66();
        IntelligenceRecipeGenerator.liveVoicemailOngoingRecipe(controlsManager:)(v263, v262, v264);
LABEL_158:

        goto LABEL_159;
      }

      if (v410 == 21 && !v75)
      {
        v265 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
        OUTLINED_FUNCTION_49_0(v265);
        v404 = &type metadata for ScreeningStatusOverride;
        v266 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v266);
        OUTLINED_FUNCTION_50_1();
        v267 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v267);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
        OUTLINED_FUNCTION_56_7();
        v268 = OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_22_27(v268, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_10_43();
        v269();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v270 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v271 = OUTLINED_FUNCTION_6_59(v270);
        v272(v271);
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        OUTLINED_FUNCTION_5_66();
        IntelligenceRecipeGenerator.callScreeningRingingCallRecipe(controlsManager:)();
        goto LABEL_158;
      }

      if (v410 == 22 && !v75)
      {
        v273 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
        OUTLINED_FUNCTION_49_0(v273);
        v404 = &type metadata for ScreeningStatusOverride;
        v274 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v274);
        OUTLINED_FUNCTION_50_1();
        v275 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v275);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
        OUTLINED_FUNCTION_56_7();
        v276 = OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_22_27(v276, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_10_43();
        v277();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v278 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v279 = OUTLINED_FUNCTION_6_59(v278);
        v280(v279);
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        OUTLINED_FUNCTION_5_66();
        IntelligenceRecipeGenerator.callScreeningIncomingCallRecipe(controlsManager:)();
        goto LABEL_158;
      }

      if (v410 == 23 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        OUTLINED_FUNCTION_74_3();
        v404 = &type metadata for ScreeningStatusOverride;
        v281 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v281);
        OUTLINED_FUNCTION_50_1();
        OUTLINED_FUNCTION_6_4();

        v282 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v282);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        OUTLINED_FUNCTION_56_7();
        v283 = OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_22_27(v283, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_10_43();
        v284();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v285 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v286 = OUTLINED_FUNCTION_6_59(v285);
        v287(v286);
        v288 = OUTLINED_FUNCTION_5_66();
        GreenTeaControlsRecipeGenerator.incomingGreenTea3PHUDRecipe(controlsManager:)(v288, v289, v290);
LABEL_170:

LABEL_171:

        goto LABEL_159;
      }

      if (v410 == 24 && !v75)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        OUTLINED_FUNCTION_74_3();
        v404 = &type metadata for ScreeningStatusOverride;
        v291 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v291);
        OUTLINED_FUNCTION_50_1();
        OUTLINED_FUNCTION_6_4();

        v292 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v292);
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        OUTLINED_FUNCTION_56_7();
        v293 = OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_22_27(v293, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        OUTLINED_FUNCTION_10_43();
        v294();
        OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v295 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        v296 = OUTLINED_FUNCTION_6_59(v295);
        v297(v296);
        v298 = OUTLINED_FUNCTION_5_66();
        GreenTeaControlsRecipeGenerator.ongoingGreenTea3PHUDRecipe(controlsManager:)(v298, v299, v300, v301);
        goto LABEL_170;
      }

      if (v410 == 25 && !v75)
      {
        v404 = &type metadata for ScreeningStatusOverride;
        v302 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v302);
        OUTLINED_FUNCTION_50_1();
        v303 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v303);
        v304 = v241;
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        OUTLINED_FUNCTION_60_6();
        v305 = OUTLINED_FUNCTION_84();
        v306 = OUTLINED_FUNCTION_29_18(v305, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        v308 = *(v307 - 256);
        v306[3] = v308;
        v306[4] = v309;
        __swift_allocate_boxed_opaque_existential_1(v306);
        OUTLINED_FUNCTION_38_14();
        v310();
        OUTLINED_FUNCTION_36_16(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v311 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
        v312 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_19_23(v305 + v311, v313, v314, v312);
        v315(v304, v308);
        v316 = OUTLINED_FUNCTION_34_18();
        ScreenSharingControlsRecipeGenerator.outgoingScreenSharingRequestHUDRecipe(controlsManager:)(v316, v305, v317, v318, v319, v320, v321, v322, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405);
        goto LABEL_171;
      }

      if (v410 == 26 && !v75)
      {
        v404 = &type metadata for ScreeningStatusOverride;
        v323 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v323);
        OUTLINED_FUNCTION_50_1();
        v324 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v324);
        v325 = v241;
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        OUTLINED_FUNCTION_60_6();
        v326 = OUTLINED_FUNCTION_84();
        v327 = OUTLINED_FUNCTION_29_18(v326, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        v329 = *(v328 - 256);
        v327[3] = v329;
        v327[4] = v330;
        __swift_allocate_boxed_opaque_existential_1(v327);
        OUTLINED_FUNCTION_38_14();
        v331();
        OUTLINED_FUNCTION_36_16(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v332 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
        v333 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_19_23(v326 + v332, v334, v335, v333);
        v336(v325, v329);
        OUTLINED_FUNCTION_34_18();
        ScreenSharingControlsRecipeGenerator.incomingScreenSharingRequestHUDRecipe(controlsManager:)();
        goto LABEL_171;
      }

      if (v410 != 27 || v75)
      {
        if (v410 == 28 && !v75)
        {
          v349 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
          OUTLINED_FUNCTION_49_0(v349);
          v404 = &type metadata for ScreeningStatusOverride;
          v350 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
          OUTLINED_FUNCTION_52_10(v350);
          OUTLINED_FUNCTION_50_1();
          v351 = Defaults.init()();
          OUTLINED_FUNCTION_12_43(v351);
          CallScreeningService.init(overrides:)();
          [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
          OUTLINED_FUNCTION_56_7();
          v352 = OUTLINED_FUNCTION_84();
          OUTLINED_FUNCTION_22_27(v352, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
          OUTLINED_FUNCTION_10_43();
          v353();
          OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
          v354 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
          v355 = OUTLINED_FUNCTION_6_59(v354);
          v356(v355);
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_8_6();
          }

          v357 = static SystemApertureIconFactory.shared;

          v358 = OUTLINED_FUNCTION_5_66();
          IntelligenceRecipeGenerator.waitOnHoldRecipe(controlsManager:)(v358, v359, v360, v357, v361);
          goto LABEL_158;
        }

        if (v410 == 29 && !v75)
        {
          v362 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
          OUTLINED_FUNCTION_49_0(v362);
          v404 = &type metadata for ScreeningStatusOverride;
          v363 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
          OUTLINED_FUNCTION_52_10(v363);
          OUTLINED_FUNCTION_50_1();
          v364 = Defaults.init()();
          OUTLINED_FUNCTION_12_43(v364);
          CallScreeningService.init(overrides:)();
          [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
          OUTLINED_FUNCTION_56_7();
          v365 = OUTLINED_FUNCTION_84();
          OUTLINED_FUNCTION_22_27(v365, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
          OUTLINED_FUNCTION_10_43();
          v366();
          OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
          v367 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
          v368 = OUTLINED_FUNCTION_6_59(v367);
          v369(v368);
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_8_6();
          }

          OUTLINED_FUNCTION_5_66();
          IntelligenceRecipeGenerator.waitOnHoldRequiresUserAttentionRecipe(controlsManager:)();
          goto LABEL_158;
        }

        if (v410 == 30 && !v75)
        {
          v370 = OUTLINED_FUNCTION_67_5(objc_allocWithZone(MEMORY[0x1E69D8BE8]));
          OUTLINED_FUNCTION_49_0(v370);
          v404 = &type metadata for ScreeningStatusOverride;
          v371 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
          OUTLINED_FUNCTION_52_10(v371);
          OUTLINED_FUNCTION_50_1();
          v372 = Defaults.init()();
          OUTLINED_FUNCTION_12_43(v372);
          CallScreeningService.init(overrides:)();
          [objc_allocWithZone(type metadata accessor for Features()) (v12 + 2936)];
          OUTLINED_FUNCTION_56_7();
          v373 = OUTLINED_FUNCTION_84();
          OUTLINED_FUNCTION_22_27(v373, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
          OUTLINED_FUNCTION_10_43();
          v374();
          OUTLINED_FUNCTION_16_37(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
          v375 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
          v376 = OUTLINED_FUNCTION_6_59(v375);
          v377(v376);
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_8_6();
          }

          v378 = static SystemApertureIconFactory.shared;

          v379 = OUTLINED_FUNCTION_5_66();
          IntelligenceRecipeGenerator.waitOnHoldHoldDetectedRecipe(controlsManager:)(v379, v380, v381, v378, v382);
          goto LABEL_158;
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v383 = one-time initialization token for shared;
        OUTLINED_FUNCTION_49_0(static Features.shared);
        if (v383 != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v397 = static SystemApertureIconFactory.shared;
        v404 = &type metadata for ScreeningStatusOverride;
        v384 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v384);
        OUTLINED_FUNCTION_50_1();
        OUTLINED_FUNCTION_6_4();

        v385 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v385);
        v386 = v241;
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v387 = OUTLINED_FUNCTION_43_10();
        type metadata accessor for SystemApertureIconFactory(v387);
        v388 = OUTLINED_FUNCTION_84();
        v389 = OUTLINED_FUNCTION_29_18(v388, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        v345 = *(v390 - 256);
        v389[3] = v345;
        v389[4] = v391;
        __swift_allocate_boxed_opaque_existential_1(v389);
        OUTLINED_FUNCTION_38_14();
        v392();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v393 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_23_4(v393);
        (*(v12 + 8))(v386, v345);
        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_73_3();
        CallsControlsRecipeGenerator.videoUpgradeRequest(controlsManager:)();
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v337 = one-time initialization token for shared;
        OUTLINED_FUNCTION_49_0(static Features.shared);
        if (v337 != -1)
        {
          OUTLINED_FUNCTION_8_6();
        }

        v397 = static SystemApertureIconFactory.shared;
        v404 = &type metadata for ScreeningStatusOverride;
        v338 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        OUTLINED_FUNCTION_52_10(v338);
        OUTLINED_FUNCTION_50_1();
        OUTLINED_FUNCTION_6_4();

        v339 = Defaults.init()();
        OUTLINED_FUNCTION_12_43(v339);
        v340 = v241;
        CallScreeningService.init(overrides:)();
        [objc_allocWithZone(type metadata accessor for Features()) init];
        v341 = OUTLINED_FUNCTION_43_10();
        type metadata accessor for SystemApertureIconFactory(v341);
        v342 = OUTLINED_FUNCTION_84();
        v343 = OUTLINED_FUNCTION_29_18(v342, OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
        v345 = *(v344 - 256);
        v343[3] = v345;
        v343[4] = v346;
        __swift_allocate_boxed_opaque_existential_1(v343);
        OUTLINED_FUNCTION_38_14();
        v347();
        OUTLINED_FUNCTION_21_26(OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
        v348 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
        OUTLINED_FUNCTION_23_4(v348);
        (*(v12 + 8))(v340, v345);
        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_73_3();
        CallsControlsRecipeGenerator.podcastRecordingRequest(controlsManager:)();
      }

      swift_setDeallocating();
      SystemApertureIconFactory.deinit();
      OUTLINED_FUNCTION_75_5();
      swift_deallocClassInstance();
LABEL_159:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v242, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      v37 = v243;
      v51 = v242;
      return outlined init with take of ConversationControlsRecipe?(v37, v51);
    default:
      GondolaControlsRecipeGenerator.pendingAuthorizationRequestRecipe(controlsManager:)(a3, v22);
      goto LABEL_8;
  }
}

void *Call.isFromMessagesScreenShare.getter()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return ([result originatingUIType] == 32);
  }

  return result;
}

void one-time initialization function for shared()
{
  type metadata accessor for ConversationControlsRecipeGenerator();
  v0 = swift_allocObject();
  ConversationControlsRecipeGenerator.init()();
  static ConversationControlsRecipeGenerator.shared = v0;
}

uint64_t ConversationControlsRecipeGenerator.__allocating_init()()
{
  v0 = swift_allocObject();
  ConversationControlsRecipeGenerator.init()();
  return v0;
}

uint64_t static ConversationControlsRecipeGenerator.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_46_12();
  }
}

uint64_t ConversationControlsRecipeGenerator.deinit()
{

  return v0;
}

uint64_t ConversationControlsRecipeGenerator.__deallocating_deinit()
{
  ConversationControlsRecipeGenerator.deinit();

  return swift_deallocClassInstance();
}

void ConversationControlsRecipeGenerator.init()()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  v2 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  type metadata accessor for CallCenterFacade();
  *(v0 + 16) = static CallCenterFacade.shared.getter();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = static Features.shared;
  *(v0 + 24) = static Features.shared;
  v10 = one-time initialization token for shared;
  v11 = v9;
  if (v10 != -1)
  {
    OUTLINED_FUNCTION_8_6();
  }

  *(v1 + 32) = static SystemApertureIconFactory.shared;
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  v12 = OUTLINED_FUNCTION_50_1();

  Defaults.init()();
  CallScreeningService.init(overrides:)();
  v13 = type metadata accessor for Features();
  [objc_allocWithZone(v13) init];
  v14 = OUTLINED_FUNCTION_43_10();
  type metadata accessor for SystemApertureIconFactory(v14);
  v15 = OUTLINED_FUNCTION_84();
  v16 = MEMORY[0x1E6995EE0];
  v17 = (v15 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v17[3] = v2;
  v17[4] = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(v4 + 16))(boxed_opaque_existential_1, v8, v2);
  v19 = (v15 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v19[3] = v13;
  v19[4] = &protocol witness table for Features;
  *v19 = v12;
  v20 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
  v21 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  __swift_storeEnumTagSinglePayload(v15 + v20, 1, 1, v21);
  (*(v4 + 8))(v8, v2);
  *(v1 + 40) = v15;
  OUTLINED_FUNCTION_49();
}

uint64_t outlined init with take of ConversationControlsRecipe?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type FilterMenuViewModel.Action and conformance FilterMenuViewModel.Action(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of ConversationControlsSecondaryPillButtonType(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}