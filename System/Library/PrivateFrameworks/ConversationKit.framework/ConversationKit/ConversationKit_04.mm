uint64_t @objc TUCall.disconnectedReasonRequiresCallBackUI.getter(void *a1)
{
  v1 = a1;
  v2 = TUCall.disconnectedReasonRequiresCallBackUI.getter();

  return v2 & 1;
}

uint64_t TUCall.disconnectedReasonRequiresCallBackUI.getter()
{
  v1 = v0;
  v2 = [v0 disconnectedReason];
  if (v2 <= 0x18 && ((1 << v2) & 0x1C2C020) != 0)
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 activeConversationForCall_];

    if (v5)
    {
      v6 = [v5 isOneToOneModeEnabled];
    }

    else
    {
      v7 = [v1 remoteParticipantHandles];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject();
      v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = specialized Set.count.getter(v8);

      v6 = v9 == 1;
    }

    type metadata accessor for SpringBoardUtilities();
    v10 = static SpringBoardUtilities.checkSpringBoardState(for:)();
    if ((![v1 isIncoming] || objc_msgSend(v1, sel_isConnecting)) && !v10)
    {
      v12 = [v1 isConversation];

      v11 = v12 ^ 1 | v6;
      return v11 & 1;
    }
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t lazy protocol witness table accessor for type TUHandle and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUHandle and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUHandle and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUHandle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
  }

  return result;
}

BOOL @objc TUCall.canDisplayRedirectingUI()(void *a1)
{
  v1 = a1;
  v2 = TUCall.canDisplayRedirectingUI()();

  return v2;
}

void *static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:alertAvailable:allowsDuration:)(void *a1, uint64_t a2, char a3, char a4)
{
  v9 = [objc_opt_self() sharedInstance];
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_1_150();
  }

  v10 = static CallParticipantLabelDescriptor.featureFlags;
  v11 = specialized static CallParticipantLabelDescriptor.labelDescriptorWithStrings(for:callCount:callCenter:alertAvailable:allowsDuration:featureFlags:)(a1, a2, v9, a3 & 1, a4 & 1, v10, v4);

  return v11;
}

BOOL static SpringBoardUtilities.checkSpringBoardState(for:)()
{
  state64[1] = *MEMORY[0x1E69E9840];
  out_token = 0;
  v0 = String.utf8CString.getter();
  v1 = notify_register_check((v0 + 32), &out_token);

  if (v1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    state64[0] = v6;
    *v5 = 136315138;
    LODWORD(v17) = v1;
    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, state64);

    *(v5 + 4) = v9;
    v10 = "Unable to get token to check if SpringBoard is passcode locked: result = %s";
LABEL_11:
    _os_log_impl(&dword_1BBC58000, v3, v4, v10, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
LABEL_12:

    return 0;
  }

  state64[0] = 0;
  if (notify_get_state(out_token, state64))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v5 + 4) = v14;
    v10 = "Unable to get SpringBoard passcode lock state: result = %s";
    goto LABEL_11;
  }

  return state64[0] != 0;
}

Swift::Bool __swiftcall TUCall.canDisplayRedirectingUI()()
{
  v1 = [v0 callStatus] == 6 || objc_msgSend(v0, sel_callStatus) == 1;
  v2 = [v0 isEmergency];
  result = 0;
  if (v2)
  {
    if (!v1)
    {
      return [v0 hasBeenRedirected];
    }
  }

  return result;
}

uint64_t @objc TUCall.disconnectedReasonRequiresCallFailureUI.getter(void *a1)
{
  v1 = a1;
  v2 = TUCall.disconnectedReasonRequiresCallFailureUI.getter();

  return v2 & 1;
}

uint64_t CallParticipantLabelDescriptor.isDynamic.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_isDynamic;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t String.localized.getter()
{
  OUTLINED_FUNCTION_12_39();
  v0 = [objc_opt_self() conversationKit];
  v6._object = 0xE000000000000000;
  OUTLINED_FUNCTION_10_36();
  v6._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v3, v4, v6);
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

{
  OUTLINED_FUNCTION_5_5();
  return String.localized.getter();
}

uint64_t CallParticipantLabelDescriptor.isDynamic.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30CallParticipantLabelDescriptor_isDynamic;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

unint64_t lazy protocol witness table accessor for type Features.ConversationKit and conformance Features.ConversationKit()
{
  result = lazy protocol witness table cache variable for type Features.ConversationKit and conformance Features.ConversationKit;
  if (!lazy protocol witness table cache variable for type Features.ConversationKit and conformance Features.ConversationKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.ConversationKit and conformance Features.ConversationKit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features.ConversationKit and conformance Features.ConversationKit;
  if (!lazy protocol witness table cache variable for type Features.ConversationKit and conformance Features.ConversationKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features.ConversationKit and conformance Features.ConversationKit);
  }

  return result;
}

id CNKScreenSharingStateMonitorFactory.sharedMonitor.getter()
{
  if (one-time initialization token for sharedMonitor != -1)
  {
    swift_once();
  }

  v1 = static ScreenSharingStateMonitor.sharedMonitor;

  return v1;
}

void ScreenSharingStateMonitor.call.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_call;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  ScreenSharingStateMonitor.updateConversationController(using:)(v2);
}

uint64_t ScreenSharingStateMonitor.updateConversationController(using:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38[-1] - v6;
  if (a1)
  {
    v8 = *(v2 + OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_conversationControllerProvider);
    if (v8)
    {
      v9 = a1;
      v10 = OUTLINED_FUNCTION_40_2();
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v10);
      v11 = v8(v9);
      v12 = OUTLINED_FUNCTION_40_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v12);
    }

    else
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v16 = objc_opt_self();
      v8 = a1;
      v17 = [v16 sharedInstance];
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v18 = static PlaceholderCallCenter.shared;
      v19 = objc_allocWithZone(type metadata accessor for CallCenter());
      v20 = CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v17, v18, 0, 0);
      swift_unknownObjectWeakInit();
      v43 = 0;
      swift_unknownObjectWeakInit();
      v21 = [objc_opt_self() sharedManager];
      type metadata accessor for IDSCapabilitiesChecker();
      v22 = swift_allocObject();
      v39 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
      v40 = &protocol witness table for TUIDSLookupManager;
      v38[0] = v21;
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v23 = MEMORY[0x1E69E7CC0];
      v22[2] = Dictionary.init(dictionaryLiteral:)();
      v22[3] = Dictionary.init(dictionaryLiteral:)();
      v22[5] = 0;
      swift_unknownObjectWeakInit();
      v22[6] = v23;
      outlined init with copy of IDSLookupManager(v38, (v22 + 7));
      v24 = [objc_opt_self() defaultCenter];
      [v24 addObserver:v22 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v21];

      __swift_destroy_boxed_opaque_existential_1(v38);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v25 = static Defaults.shared;
      v26 = objc_allocWithZone(type metadata accessor for ConversationController(0));
      outlined init with copy of DefaultParticipantMediaProviderCreator(v41, &v37);
      outlined init with copy of DefaultParticipantCaptionsProviderCreator(&v42, v38);
      v27 = v20;

      specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v8, v27, &v37, v38, 0, &v45, 2, v22, v25, v26, v37, v38[0], v38[1], v38[2], v39, v40, v41[0], v41[1], v41[2], v42, v43, v44);
      v11 = v28;

      outlined destroy of DefaultParticipantCaptionsProviderCreator(&v42);
      outlined destroy of DefaultParticipantMediaProviderCreator(v41);
    }

    *(&v46 + 1) = type metadata accessor for ConversationController(0);
    v47 = &protocol witness table for ConversationController;
    v29 = v11;

    *&v45 = v29;
    v30 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_conversationController;
    OUTLINED_FUNCTION_30_2();
    outlined assign with take of ScreenSharingStateMonitorConversationProviderProtocol?(&v45, v2 + v30);
    swift_endAccess();
    OUTLINED_FUNCTION_3_75();
    OUTLINED_FUNCTION_10_37();
    v31 = &v29[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo];
    OUTLINED_FUNCTION_3_5();
    *v31 = partial apply for closure #1 in ScreenSharingStateMonitor.updateConversationController(using:);
    v31[1] = v8;

    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_3_75();
    OUTLINED_FUNCTION_10_37();
    v32 = &v29[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange];
    OUTLINED_FUNCTION_3_5();
    *v32 = partial apply for closure #2 in ScreenSharingStateMonitor.updateConversationController(using:);
    v32[1] = v8;

    OUTLINED_FUNCTION_12_40();
    OUTLINED_FUNCTION_3_75();
    OUTLINED_FUNCTION_10_37();
    v33 = &v29[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing];
    OUTLINED_FUNCTION_3_5();
    *v33 = partial apply for closure #3 in ScreenSharingStateMonitor.updateConversationController(using:);
    v33[1] = v8;

    OUTLINED_FUNCTION_12_40();
    v34 = OUTLINED_FUNCTION_3_75();
    swift_unknownObjectWeakInit();
    v35 = &v29[OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange];
    OUTLINED_FUNCTION_3_5();
    *v35 = partial apply for closure #4 in ScreenSharingStateMonitor.updateConversationController(using:);
    v35[1] = v34;

    v36 = OUTLINED_FUNCTION_40_2();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v36);
  }

  else
  {
    v13 = type metadata accessor for Participant(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
    ScreenSharingStateMonitor.currentlySharingParticipant.setter(v7);
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    v14 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_conversationController;
    OUTLINED_FUNCTION_30_2();
    outlined assign with take of ScreenSharingStateMonitorConversationProviderProtocol?(&v45, v2 + v14);
    swift_endAccess();
    ScreenSharingStateMonitor.didChangeScreenSharingState(_:)(0);
    ScreenSharingStateMonitor.didChangeScreenSharingBroadcastingState(_:)(0);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_89();
      swift_once();
    }

    static os_log_type_t.default.getter();
    return os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_1BBCA0B7C()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocObject();
}

void specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29();
  v424 = v23;
  v425 = v22;
  LODWORD(v427) = v24;
  HIDWORD(v414) = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v438 = v32;
  ObjectType = swift_getObjectType();
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4();
  v447 = v34;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_32();
  v443 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v38 = OUTLINED_FUNCTION_22(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_4();
  v442 = v39;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  v446 = v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_32();
  v417 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  v411 = v46;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_32();
  v410 = v48;
  v49 = OUTLINED_FUNCTION_4_24();
  v441 = type metadata accessor for Participant.CountdownInfo(v49);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_8();
  v431 = (v52 - v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_22(v53);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_1();
  *&v440 = v55;
  OUTLINED_FUNCTION_4_24();
  v445 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v423 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_4();
  v435 = v58;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5();
  v434 = v60;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_32();
  v433 = v62;
  v63 = OUTLINED_FUNCTION_4_24();
  v422 = type metadata accessor for Participant.State(v63);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_8();
  v432 = (v66 - v65);
  v67 = OUTLINED_FUNCTION_4_24();
  v448 = type metadata accessor for Participant(v67);
  OUTLINED_FUNCTION_1();
  v416 = v68;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_4();
  v439 = v70;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_32();
  v429 = v72;
  OUTLINED_FUNCTION_4_24();
  v428 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v426 = v73;
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_8();
  v430 = v76 - v75;
  OUTLINED_FUNCTION_4_24();
  v437 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v421 = v77;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_8();
  v420 = v80 - v79;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_8();
  v419 = v83 - v82;
  OUTLINED_FUNCTION_4_24();
  v84 = type metadata accessor for DispatchQoS();
  v85 = OUTLINED_FUNCTION_22(v84);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v436 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  v468 = type metadata accessor for CallCenter();
  v469 = &protocol witness table for CallCenter;
  v467[0] = v31;
  v466[3] = &type metadata for DefaultParticipantMediaProviderCreator;
  v466[4] = &protocol witness table for DefaultParticipantMediaProviderCreator;
  OUTLINED_FUNCTION_20();
  v466[0] = swift_allocObject();
  outlined init with take of DefaultParticipantMediaProviderCreator(v29, v466[0] + 16);
  v465[3] = &type metadata for DefaultParticipantCaptionsProviderCreator;
  v465[4] = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
  OUTLINED_FUNCTION_24();
  v465[0] = swift_allocObject();
  outlined init with take of DefaultParticipantCaptionsProviderCreator(v27, v465[0] + 16);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController) = 0;
  v418 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  *&v461 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v86, v87);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v421[13](v420, *MEMORY[0x1E69E8090], v437);
  *(v418 + a22) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes) = 0;
  v88 = a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes;
  v470 = 1;
  *(v88 + 64) = 0u;
  *(v88 + 80) = 0u;
  *(v88 + 32) = 0u;
  *(v88 + 48) = 0u;
  *v88 = 0u;
  *(v88 + 16) = 0u;
  *(v88 + 96) = 1;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider) = 0;
  v89 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
  v90 = MEMORY[0x1E69E7CC0];
  *(a22 + v89) = Dictionary.init(dictionaryLiteral:)();
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
  v95 = a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate;
  *(v95 + 48) = 0;
  *(v95 + 16) = 0u;
  *(v95 + 32) = 0u;
  *v95 = 0u;
  v96 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  OUTLINED_FUNCTION_13_82();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v97, v98);
  *(a22 + v96) = Dictionary.init(dictionaryLiteral:)();
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount) = 0;
  v419 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation) = 1;
  v99 = a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *v99 = 0;
  *(v99 + 8) = 1;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) = 0;
  v100 = OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags;
  *(a22 + v100) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff) = 0;
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_enableVideoOnJoin) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView) = 0;
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID);
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageConversationUUID);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs) = v90;
  v101 = MEMORY[0x1E69E7CD0];
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsThatHaveReceivedFirstVideoFrame) = MEMORY[0x1E69E7CD0];
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame) = v101;
  v102 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  type metadata accessor for DispatchWorkItem();
  *(a22 + v102) = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_35_16(OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDResolvingCroppedAspectRatio);
  OUTLINED_FUNCTION_43_29(OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  v103 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + a22;
  *(v103 + 4) = 0;
  *v103 = 0u;
  *(v103 + 1) = 0u;
  v413 = v103;
  v104 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver;
  static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_24_1();
  v105 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  OUTLINED_FUNCTION_170();
  *(a22 + v104) = CPCarPlayObserver.init(queue:)();
  Date.init()();
  v106 = [v438 remoteParticipantHandles];
  OUTLINED_FUNCTION_41();
  v109 = type metadata accessor for NSObject(v107, v108);
  OUTLINED_FUNCTION_1_65();
  OUTLINED_FUNCTION_41();
  v421 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(v110, v111);
  v112 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Set.count.getter(v112);
  OUTLINED_FUNCTION_6_4();

  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) = v106 == 1;
  v437 = a22;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) = v427;
  v113 = OUTLINED_FUNCTION_243();
  v114(v113);
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v422 = v109;
    OUTLINED_FUNCTION_0_1();
    LODWORD(v420) = (*(v115 + 592))();
    OUTLINED_FUNCTION_0_1();
    v117 = (*(v116 + 168))();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_25_54();
    swift_beginAccess();
    v118 = static Colors.ParticipantGradients.default;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v441);
    v122 = v468;
    v123 = v469;
    OUTLINED_FUNCTION_179_2(v467, v468);
    v124 = v123[13];

    v124(&v461, v438, v436, v122, v123);
    if (v463)
    {
      __swift_project_boxed_opaque_existential_1(&v461, v463);
      OUTLINED_FUNCTION_15_14();
      v125 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
      __swift_destroy_boxed_opaque_existential_1(&v461);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v461, &_s15ConversationKit0A0_pSgMd);
      v125 = 0;
    }

    v126 = v445;
    v127 = type metadata accessor for ParticipantContactDetailsCache();
    v128 = v127;
    if (one-time initialization token for queue != -1)
    {
      v127 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v127);
    OUTLINED_FUNCTION_182_5();
    v129 = v438;
    *(v130 - 32) = v128;
    *(v130 - 24) = v129;
    *(v130 - 16) = v436;
    v418 = v128;
    OS_dispatch_queue.sync<A>(execute:)();
    v412 = 0;
    v131 = v461;
    v132 = v448;
    v133 = v439;
    v134 = v439 + *(v448 + 28);
    *(v134 + 32) = 0;
    *v134 = 0u;
    *(v134 + 16) = 0u;
    v135 = (v133 + v132[9]);
    *(v133 + v132[10]) = 0;
    *(v133 + v132[11]) = MEMORY[0x1E69E7CD0];
    *(v133 + v132[12]) = 0;
    _s15ConversationKit11ParticipantVWObTm_7();
    v136 = v133 + v132[5];
    v137 = v433;
    v432 = *(v423 + 32);
    v433 = v423 + 32;
    v432(v136, v137, v126);
    v138 = v133 + v132[6];
    *v138 = v420 & 1;
    *(v138 + 1) = 257;
    *(v138 + 3) = 0;
    *(v138 + 4) = v117 & 1;
    outlined consume of Participant.RemoteIdentifiers?(*v134);
    *(v134 + 32) = 0;
    *v134 = 0u;
    *(v134 + 16) = 0u;
    *(v133 + v132[8]) = v118;
    *v135 = 0;
    v135[1] = 0;
    *(v133 + v132[15]) = v125;
    *(v133 + v132[13]) = 0;
    v139 = v440;
    v140 = v441;
    OUTLINED_FUNCTION_115(v440, 1, v441);
    if (v141)
    {
      OUTLINED_FUNCTION_10_0();
      v142 = v428;
      __swift_storeEnumTagSinglePayload(v143, v144, v145, v428);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v146, v147, v148, v142);
      v154 = v431;
      v149 = OUTLINED_FUNCTION_90_2();
      __swift_storeEnumTagSinglePayload(v149, v150, 1, v142);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v151, v152, v153, v142);
      outlined assign with take of AttributedString?();
      outlined assign with take of AttributedString?();
      v154[*(v140 + 24)] = 0;
      OUTLINED_FUNCTION_115(v139, 1, v140);
      v155 = &selRef_isRecordingAllowed;
      v109 = v421;
      if (!v141)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v139, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_90_7();
      v154 = v431;
      _s15ConversationKit11ParticipantVWObTm_7();
      v155 = &selRef_isRecordingAllowed;
      v109 = v421;
    }

    v156 = v448;
    OUTLINED_FUNCTION_90_7();
    v157 = v439;
    _s15ConversationKit11ParticipantVWObTm_7();
    *(v157 + *(v156 + 64)) = v131;
    _s15ConversationKit11ParticipantVWObTm_7();
    _s15ConversationKit11ParticipantVWObTm_7();
    v158 = [v438 v155[86]];
    v159 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v160 = specialized Set.count.getter(v159);
    if (v160)
    {
      break;
    }

    v191 = MEMORY[0x1E69E7CC0];
LABEL_43:
    MEMORY[0x1EEE9AC00](v190);
    OUTLINED_FUNCTION_182_5();
    v192 = v430;
    *(v193 - 32) = v430;
    *(v193 - 24) = v467;
    v194 = v438;
    v195 = v436;
    *(v193 - 16) = v438;
    *(v193 - 8) = v195;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(partial apply for closure #2 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:), v196, v191);
    v198 = v197;

    *(v437 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants) = v198;
    v199 = v469;
    OUTLINED_FUNCTION_179_2(v467, v468);
    OUTLINED_FUNCTION_97_0();
    v200();
    if (v463)
    {
      v201 = __swift_project_boxed_opaque_existential_1(&v461, v463);
      v202 = OUTLINED_FUNCTION_40_2();
      v204 = v203(v202);
      v199 = &v410;
      MEMORY[0x1EEE9AC00](v204);
      OUTLINED_FUNCTION_182_5();
      *(v205 - 32) = v192;
      *(v205 - 24) = v467;
      *(v205 - 16) = v194;
      *(v205 - 8) = v195;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(partial apply for closure #3 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:), v206, v204);
      OUTLINED_FUNCTION_246();

      __swift_destroy_boxed_opaque_existential_1(&v461);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v461, &_s15ConversationKit0A0_pSgMd);
      v201 = MEMORY[0x1E69E7CC0];
    }

    v207 = v437;
    *(v437 + OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants) = v201;
    outlined init with copy of IDSLookupManager(v467, v207 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    v208 = (v207 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    *v208 = v194;
    v208[1] = v195;
    outlined init with copy of IDSLookupManager(v466, v207 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator);
    outlined init with copy of IDSLookupManager(v465, v207 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator);
    *(v207 + OBJC_IVAR____TtC15ConversationKit22ConversationController_includeLocalParticipantInVisibleParticipants) = BYTE4(v414) & 1;
    outlined init with copy of IDSLookupManager(v467, &v461);
    v209 = v419;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v210 = *(v207 + v209);
    v429 = v194;
    v211 = _s15ConversationKit17BroadcastingStateO4call0E6Center17deviceOrientation28shouldMaintainCameraPositionAcA4Call_p_AA0mF8Provider_pSo09CNKDeviceH0VSbtcfCTf4ennnn_nSo6TUCallC_Tt3g5(v429, &v461, v210, 0);
    v212 = v207 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    *v212 = v211;
    *(v212 + 8) = v213;
    *(v212 + 16) = v214;
    *(v207 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker) = v424;
    v215 = (v207 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults);
    *v215 = a21;
    v215[1] = &protocol witness table for Defaults;
    outlined init with copy of IDSLookupManager(v467, &v461);
    objc_opt_self();
    OUTLINED_FUNCTION_288();

    *&v440 = v199;
    v216 = [v199 defaultCenter];
    OUTLINED_FUNCTION_24_1();
    v217 = objc_allocWithZone(type metadata accessor for VideoMessageController());
    VideoMessageController.init(callCenter:notificationCenter:)();
    *(v207 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController) = v218;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v422 = a21;
    if (v459)
    {
      outlined init with take of TapInteractionHandler(&v457, &v461);
    }

    else
    {
      v463 = &type metadata for SingleDisplaySharingSession;
      v464 = &protocol witness table for SingleDisplaySharingSession;
      OUTLINED_FUNCTION_194();
      v219 = swift_allocObject();
      *&v461 = v219;
      v219[1] = 0u;
      v219[2] = 0u;
      v219[3] = 0u;
      v219[4] = 0u;
      v219[5] = 0u;
      v219[6] = 0u;
    }

    LODWORD(v109) = v427;
    OUTLINED_FUNCTION_30_2();
    outlined assign with take of AttributedString?();
    swift_endAccess();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v220 = 0;
    if (*(v212 + 16) < 0 && v109 == 1)
    {
      OUTLINED_FUNCTION_82_0(v467);
      v221 = OUTLINED_FUNCTION_2_14();
      v223 = v222(v221);
      v220 = [v223 isPreviewRunning];
    }

    v224 = v437;
    *(v437 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) = v220;
    v456.receiver = v224;
    v456.super_class = ObjectType;
    v225 = objc_msgSendSuper2(&v456, sel_init);
    v226 = *&v225[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver];
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type ConversationController and conformance ConversationController, type metadata accessor for ConversationController);
    v227 = v225;
    v228 = v226;
    dispatch thunk of CPCarPlayObserver.delegate.setter();

    v229 = v468;
    v230 = v469;
    OUTLINED_FUNCTION_179_2(v467, v468);
    (v230[13])(&v457, v429, v195, v229, v230);
    if (v459)
    {
      outlined init with take of TapInteractionHandler(&v457, &v461);
      v228 = v227;
      ConversationController.updateIdentityClaimingAssociations(in:)();
      __swift_destroy_boxed_opaque_existential_1(&v461);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v457, &_s15ConversationKit0A0_pSgMd);
    }

    OUTLINED_FUNCTION_20();
    v231 = swift_allocObject();
    OUTLINED_FUNCTION_278(v231);
    swift_unknownObjectWeakInit();

    v232 = &v227[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock];
    OUTLINED_FUNCTION_3_5();
    *v232 = partial apply for closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:);
    v232[1] = v228;

    v233 = OUTLINED_FUNCTION_40_2();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v233);

    if ((v109 - 1) <= 1)
    {
      v234 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of IDSLookupManager(&v227[v234], &v461);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit31ParticipantMediaProviderCreator_pMd);
      if (swift_dynamicCast())
      {
        v455 = 0;
        outlined init with take of DefaultParticipantMediaProviderCreator(&v454, &v453);
        swift_unknownObjectWeakAssign();
        v463 = &type metadata for DefaultParticipantMediaProviderCreator;
        v464 = &protocol witness table for DefaultParticipantMediaProviderCreator;
        OUTLINED_FUNCTION_20();
        *&v461 = swift_allocObject();
        outlined init with take of DefaultParticipantMediaProviderCreator(&v453, v461 + 16);
        OUTLINED_FUNCTION_30_2();
        __swift_destroy_boxed_opaque_existential_1(&v227[v234]);
        outlined init with take of TapInteractionHandler(&v461, &v227[v234]);
        swift_endAccess();
      }

      else
      {
        v454 = 0;
        v455 = 1;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v454, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMd);
      }
    }

    v235 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of IDSLookupManager(&v227[v235], &v461);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit34ParticipantCaptionsProviderCreator_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of DefaultParticipantCaptionsProviderCreator(&v453, v452);
      v452[1] = &protocol witness table for ConversationController;
      swift_unknownObjectWeakAssign();
      v463 = &type metadata for DefaultParticipantCaptionsProviderCreator;
      v464 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
      OUTLINED_FUNCTION_24();
      *&v461 = swift_allocObject();
      outlined init with take of DefaultParticipantCaptionsProviderCreator(v452, v461 + 16);
      OUTLINED_FUNCTION_30_2();
      __swift_destroy_boxed_opaque_existential_1(&v227[v235]);
      outlined init with take of TapInteractionHandler(&v461, &v227[v235]);
      swift_endAccess();
    }

    else
    {
      v453 = xmmword_1BC4BB7D0;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v453, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMd);
    }

    static ParticipantContactDetailsCache.resetAll()();
    v236 = &v227[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    OUTLINED_FUNCTION_25_54();
    swift_beginAccess();
    v237 = *v236;
    v238 = *(v236 + 8);
    v441 = v236;
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(v237, v238, *(v236 + 16), 2);
    ConversationController.lookupActiveConversation()();
    ConversationController.update(with:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v461, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    if (Features.nudityDetectionEnabled.getter())
    {
      static SensitiveContentPolicy.prefetch()();
    }

    v239 = &v227[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    OUTLINED_FUNCTION_30_2();
    v240 = *(v239 + 4);
    v241 = OUTLINED_FUNCTION_208();
    __swift_mutable_project_boxed_opaque_existential_1(v241, v242);
    v243 = *(v240 + 56);
    v244 = v227;
    OUTLINED_FUNCTION_97_0();
    v243();
    swift_endAccess();
    OUTLINED_FUNCTION_0_1();
    v246 = *(v245 + 176);
    v155 = v244;

    v246(v225, &protocol witness table for ConversationController);

    ConversationController.updateIDSStatusForVideoMessaging()();
    ConversationController.setupScreenSharingSessionCallbacks()();
    v247 = [v429 screenShareAttributes];
    ConversationController.updateScreenSharingSession(with:)(v247);

    LOBYTE(v239) = ConversationController.updateIsUsingIPadExternalCamera()();
    v248 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    OUTLINED_FUNCTION_3_5();
    *(v155 + v248) = v239 & 1;
    v154 = [v440 defaultCenter];
    v161 = &off_1E7FE9000;
    [v154 addObserver:v155 selector:sel_handleLocalVideoPreviewFirstFrameArrived_ name:*MEMORY[0x1E69D90D8] object:0];

    v249 = OUTLINED_FUNCTION_19_53();
    [v249 v250];
    v251 = OUTLINED_FUNCTION_19_53();
    [v251 v252];
    v253 = OUTLINED_FUNCTION_19_53();
    [v253 v254];
    v255 = OUTLINED_FUNCTION_19_53();
    [v255 v256];
    v257 = OUTLINED_FUNCTION_19_53();
    [v257 v258];
    if (v109 == 1)
    {
      v259 = OUTLINED_FUNCTION_19_53();
      [v259 v260];
      v261 = OUTLINED_FUNCTION_19_53();
      [v261 v262];
      v263 = OUTLINED_FUNCTION_19_53();
      [v263 v264];
      v265 = OUTLINED_FUNCTION_19_53();
      [v265 v266];
      v267 = OUTLINED_FUNCTION_19_53();
      [v267 v268];
      v269 = OUTLINED_FUNCTION_19_53();
      [v269 v270];
      v271 = OUTLINED_FUNCTION_19_53();
      [v271 v272];
      v273 = OUTLINED_FUNCTION_19_53();
      [v273 v274];
      v275 = OUTLINED_FUNCTION_19_53();
      [v275 v276];
      v277 = OUTLINED_FUNCTION_19_53();
      [v277 v278];
    }

    v279 = OUTLINED_FUNCTION_19_53();
    [v279 v280];
    v281 = OUTLINED_FUNCTION_19_53();
    [v281 v282];
    v283 = OUTLINED_FUNCTION_19_53();
    [v283 v284];
    v285 = OUTLINED_FUNCTION_19_53();
    [v285 v286];
    v287 = OUTLINED_FUNCTION_19_53();
    [v287 v288];
    if (!v109)
    {
      v289 = OUTLINED_FUNCTION_19_53();
      [v289 v290];
    }

    v291 = OUTLINED_FUNCTION_19_53();
    [v291 v292];
    v293 = OUTLINED_FUNCTION_14_75();
    [v293 v294];
    v295 = OUTLINED_FUNCTION_14_75();
    [v295 v296];
    v297 = OUTLINED_FUNCTION_14_75();
    [v297 v298];
    if (Features.nudityDetectionEnabled.getter())
    {
      v299 = MEMORY[0x1BFB209B0](0xD000000000000042, 0x80000001BC509370);
      v300 = OUTLINED_FUNCTION_14_75();
      [v300 v301];
    }

    v302 = OUTLINED_FUNCTION_19_53();
    [v302 v303];
    v304 = OUTLINED_FUNCTION_19_53();
    [v304 v305];
    if (static Platform.current.getter() != 3)
    {
      goto LABEL_75;
    }

    if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
    {
      goto LABEL_104;
    }

LABEL_74:
    v306 = OUTLINED_FUNCTION_14_75();
    [v306 v307];
    v308 = MEMORY[0x1BFB209B0](0xD00000000000001ALL, 0x80000001BC509350);
    v309 = OUTLINED_FUNCTION_14_75();
    [v309 v310];

LABEL_75:
    LODWORD(v440) = v109;
    v311 = OUTLINED_FUNCTION_14_75();
    [v311 v312];
    v313 = OUTLINED_FUNCTION_14_75();
    [v313 v314];
    v315 = OUTLINED_FUNCTION_14_75();
    [v315 v316];
    v317 = OUTLINED_FUNCTION_14_75();
    [v317 v318];
    v319 = OUTLINED_FUNCTION_14_75();
    [v319 v320];
    v321 = OUTLINED_FUNCTION_14_75();
    [v321 v322];
    v323 = OUTLINED_FUNCTION_14_75();
    [v323 v324];
    v325 = *MEMORY[0x1E69D8D68];
    v326 = *(v161 + 3712);
    v421 = v154;
    [v154 v326];
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v327 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v328 = swift_allocObject();
    *(v328 + 16) = xmmword_1BC4BB990;
    v329 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v427 = v155;
    v330 = v417;
    OUTLINED_FUNCTION_97_0();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    specialized >> prefix<A>(_:)(v330, v331, v332, v333, v334, v335, v336, v337, v410, v411, v412, v413, v414, ObjectType, v416, v417, v418, v419);
    OUTLINED_FUNCTION_254();
    v338 = v427;
    OUTLINED_FUNCTION_158();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v339, v340);
    v341 = MEMORY[0x1E69E6158];
    *(v328 + 56) = MEMORY[0x1E69E6158];
    v342 = lazy protocol witness table accessor for type String and conformance String();
    *(v328 + 64) = v342;
    *(v328 + 32) = v329;
    *(v328 + 40) = v155;
    v343 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *&v461 = *(v338 + v343);
    type metadata accessor for TUConversationState(0);
    v344 = String.init<A>(reflecting:)();
    *(v328 + 96) = v341;
    *(v328 + 104) = v342;
    *(v328 + 72) = v344;
    *(v328 + 80) = v345;
    v346 = *(v441 + 16);
    v461 = *v441;
    v462 = v346;
    v347 = String.init<A>(reflecting:)();
    *(v328 + 136) = v341;
    *(v328 + 144) = v342;
    *(v328 + 112) = v347;
    *(v328 + 120) = v348;
    LOBYTE(v461) = v440;
    v349 = String.init<A>(reflecting:)();
    *(v328 + 176) = v341;
    *(v328 + 184) = v342;
    v419 = v342;
    *(v328 + 152) = v349;
    *(v328 + 160) = v350;
    static os_log_type_t.default.getter();
    v420 = v327;
    os_log(_:dso:log:type:_:)();

    v351 = OUTLINED_FUNCTION_13_12();
    v440 = xmmword_1BC4BA940;
    v418 = v351;
    *(v351 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    v352 = (*(v416 + 80) + 32) & ~*(v416 + 80);
    v441 = *(v416 + 72);
    v353 = swift_allocObject();
    *(v353 + 16) = v440;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_16();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *&v461 = v353;

    specialized Array.append<A>(contentsOf:)(v354);
    v355 = v461;
    v356 = *(v461 + 16);
    if (!v356)
    {

      v360 = MEMORY[0x1E69E7CC0];
LABEL_92:
      *&v461 = v360;
      v397 = OUTLINED_FUNCTION_15_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(v397);
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v398 = BidirectionalCollection<>.joined(separator:)();
      v400 = v399;

      *&v461 = v398;
      *(&v461 + 1) = v400;
      v401 = MEMORY[0x1E69E6158];
      v402 = String.init<A>(reflecting:)();
      v404 = v418;
      v403 = v419;
      v418[7] = v401;
      v404[8] = v403;
      v404[4] = v402;
      v404[5] = v405;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      ConversationController.fetchExistingScreenSharingAttributes()();
      if (*(v338 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) == 1)
      {
        OUTLINED_FUNCTION_82_0(v467);
        v406 = OUTLINED_FUNCTION_2_14();
        v408 = v407(v406);
        [v408 startPreview];

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v425, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v425, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
      }

      v409 = v430;
      __swift_destroy_boxed_opaque_existential_1(v465);
      __swift_destroy_boxed_opaque_existential_1(v466);
      (*(v426 + 8))(v409, v428);
      __swift_destroy_boxed_opaque_existential_1(v467);
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v451 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v357 = 0;
    v358 = *(v355 + 16);
    v439 = v355;
    *&v440 = v358;
    v359 = v355 + v352;
    v360 = v451;
    v361 = (v423 + 16);
    v431 = (v423 + 8);
    v437 = v423 + 16;
    v438 = v356;
    v109 = &_s10Foundation4UUIDVSgMR;
    while (v440 != v357)
    {
      if (v357 >= *(v355 + 16))
      {
        goto LABEL_98;
      }

      v362 = v444;
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v363 = v447;
      *v447 = v357;
      v364 = v363 + *(v362 + 48);
      OUTLINED_FUNCTION_1_184();
      _s15ConversationKit11ParticipantVWObTm_7();
      *&v461 = v357;
      v449 = dispatch thunk of CustomStringConvertible.description.getter();
      v450 = v365;
      MEMORY[0x1BFB20B10](979659048, 0xE400000000000000);
      v366 = *v361;
      v367 = v445;
      (*v361)(v446, &v364[*(v448 + 20)], v445);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v368, v369, v370, v367);
      v371 = v442;
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      v372 = OUTLINED_FUNCTION_60_16();
      OUTLINED_FUNCTION_115(v372, v373, v367);
      if (v141)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v371, &_s10Foundation4UUIDVSgMd);
        v380 = 0xE300000000000000;
        v377 = 7104878;
      }

      else
      {
        v436 = v360;
        v374 = v434;
        v375 = OUTLINED_FUNCTION_33_0();
        (v432)(v375);
        v376 = OUTLINED_FUNCTION_40_2();
        v366(v376);
        v377 = String.init<A>(reflecting:)();
        v378 = v367;
        v380 = v379;
        v381 = v374;
        v360 = v436;
        (*v431)(v381, v378);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v446, &_s10Foundation4UUIDVSgMd);
      MEMORY[0x1BFB20B10](v377, v380);

      MEMORY[0x1BFB20B10](8236, 0xE200000000000000);
      v382 = &v364[*(v448 + 28)];
      v383 = *v382;
      if (*v382)
      {
        v385 = *(v382 + 3);
        v384 = *(v382 + 4);
        v386 = *(v382 + 4);
        v387 = *(v382 + 1);
        *&v461 = v383;
        *(&v461 + 1) = v387;
        v462 = v386 & 1;
        v463 = v385;
        v464 = v384;

        v388 = v383;
        v389 = String.init<A>(reflecting:)();
        v391 = v390;
      }

      else
      {
        v391 = 0xE300000000000000;
        v389 = 7104878;
      }

      MEMORY[0x1BFB20B10](v389, v391);

      v392 = v449;
      v393 = v450;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v447, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
      v451 = v360;
      v395 = *(v360 + 16);
      v394 = *(v360 + 24);
      if (v395 >= v394 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v394);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v360 = v451;
      }

      *(v360 + 16) = v395 + 1;
      v396 = v360 + 16 * v395;
      *(v396 + 32) = v392;
      *(v396 + 40) = v393;
      ++v357;
      v359 += v441;
      v355 = v439;
      v361 = v437;
      if (v438 == v357)
      {

        v338 = v427;
        goto LABEL_92;
      }
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    OUTLINED_FUNCTION_0_9();
  }

  v161 = v160;
  v460 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v457 = specialized Set.startIndex.getter(v159);
  *(&v457 + 1) = v162;
  v458 = v163 & 1;
  if (v161 < 0)
  {
    __break(1u);
LABEL_104:
    swift_once();
    goto LABEL_74;
  }

  v164 = 0;
  v441 = v159 & 0xC000000000000001;
  if (v159 < 0)
  {
    v165 = v159;
  }

  else
  {
    v165 = v159 & 0xFFFFFFFFFFFFFF8;
  }

  v439 = v159 + 56;
  *&v440 = v165;
  v431 = (v159 + 64);
  while (1)
  {
    v166 = __OFADD__(v164, 1);
    v164 = (v164 + 1);
    if (v166)
    {
      __break(1u);
      goto LABEL_97;
    }

    v167 = v457;
    v168 = DWORD2(v457);
    v169 = v458;
    v170 = OUTLINED_FUNCTION_256_3();
    specialized Set.subscript.getter(v170, v171, v169, v159);
    v109 = v172;
    v173 = TUNormalizedHandleForTUHandle();
    if (v173)
    {
      v174 = v173;

      v109 = v174;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v441)
    {
      break;
    }

    if (v169)
    {
      goto LABEL_106;
    }

    if ((v167 & 0x8000000000000000) != 0)
    {
      goto LABEL_99;
    }

    v175 = 1 << *(v159 + 32);
    if (v167 >= v175)
    {
      goto LABEL_99;
    }

    v176 = v167 >> 6;
    v177 = *(v439 + 8 * (v167 >> 6));
    if (((v177 >> v167) & 1) == 0)
    {
      goto LABEL_100;
    }

    if (*(v159 + 36) != v168)
    {
      goto LABEL_101;
    }

    v178 = v177 & (-2 << (v167 & 0x3F));
    if (v178)
    {
      v175 = __clz(__rbit64(v178)) | v167 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v180 = v176 << 6;
      v181 = v176 + 1;
      v182 = &v431[8 * v176];
      while (v181 < (v175 + 63) >> 6)
      {
        v184 = *v182++;
        v183 = v184;
        v180 += 64;
        ++v181;
        if (v184)
        {
          v185 = OUTLINED_FUNCTION_256_3();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v185, v186, 0);
          v175 = __clz(__rbit64(v183)) + v180;
          goto LABEL_39;
        }
      }

      v187 = OUTLINED_FUNCTION_256_3();
      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v187, v188, 0);
    }

LABEL_39:
    v189 = *(v159 + 36);
    *&v457 = v175;
    *(&v457 + 1) = v189;
    v458 = 0;
LABEL_40:
    if (v164 == v161)
    {

      v190 = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v457, *(&v457 + 1), v458);
      v191 = v460;
      goto LABEL_43;
    }
  }

  if (v169)
  {
    OUTLINED_FUNCTION_256_3();
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd);
    v179 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v179(&v461, 0);
    goto LABEL_40;
  }

  __break(1u);
LABEL_106:
  __break(1u);
}

uint64_t sub_1BBCA3960()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_1BBCA3994()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t sub_1BBCA39C4()
{
  if (v0[2])
  {
  }

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  if (v0[12])
  {
  }

  OUTLINED_FUNCTION_194();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static ParticipantContactDetailsCache.cache(for:)@<X0>(void *a1@<X8>)
{
  return closure #1 in static ParticipantContactDetailsCache.cache(for:)(*(v1 + 32), a1);
}

{
  return closure #1 in static ParticipantContactDetailsCache.cache(for:)(*(v1 + 24), a1);
}

uint64_t closure #1 in static ParticipantContactDetailsCache.cache(for:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v7 = *(a1 + 184);
  v8 = v7(ObjectType, a1);
  outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_17_27();
  }

  else
  {
    v10 = v7(ObjectType, a1);
    v11 = [v10 identifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_17_27();
  }

  v12 = static ParticipantContactDetailsCache.queue_cache(forBundleIdentifier:)(v3, v2);

  *a2 = v12;
  return result;
}

uint64_t sub_1BBCA3BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_29_2();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24));
    if (v9 >= 2)
    {
      return ((v9 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t OUTLINED_FUNCTION_84_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_84_6()
{

  return outlined init with copy of ConversationControlsType(v0, v1 - 240);
}

double OUTLINED_FUNCTION_84_8@<D0>(uint64_t a1@<X8>)
{
  *(v2 - 144) = v1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_84_10()
{

  return outlined destroy of ConversationControlsType(v0 + 32);
}

const char *Features.ConversationKit.feature.getter(char a1)
{
  result = "FullScreenOutgoingFTA";
  switch(a1)
  {
    case 1:
      result = "PoorConnectionLabels";
      break;
    case 2:
      result = "EnhancedEmergency";
      break;
    case 3:
      result = "SADMessages";
      break;
    case 4:
      return result;
    case 5:
      result = "CallRecordingDomino";
      break;
    case 6:
      result = "ModernBannerSystem";
      break;
    case 7:
      result = "ButtonShelf";
      break;
    default:
      result = "ModernMePiP";
      break;
  }

  return result;
}

void *ScreenSharingStateMonitor.call.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_call;
  OUTLINED_FUNCTION_4_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ScreenSharingStateMonitor.call.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_call;
  OUTLINED_FUNCTION_3_5();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  ScreenSharingStateMonitor.call.didset();
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSObject(255, a2);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_141_1()
{

  return static NSObject.== infix(_:_:)();
}

uint64_t (*OUTLINED_FUNCTION_135_2())(void *a1)
{

  return ConversationControlsNoticeCoordinator.noticeQueue.modify((v0 - 168));
}

void *OUTLINED_FUNCTION_135_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char __dst)
{

  return memcpy(&__dst, v16, 0xE8uLL);
}

void sub_1BBCA42B4()
{
  OUTLINED_FUNCTION_248_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_29_2();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0 + 1;
  }
}

uint64_t OUTLINED_FUNCTION_218_0()
{

  return swift_once();
}

uint64_t CallCenter.activeConversation(for:)()
{
  OUTLINED_FUNCTION_30_25();
  v2 = v1;
  ObjectType = swift_getObjectType();
  result = (*(v0 + 504))(ObjectType, v0);
  v5 = result;
  if (result)
  {
    result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
    v6 = &protocol witness table for TUConversation;
  }

  else
  {
    v6 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  *v2 = v5;
  v2[3] = result;
  v2[4] = v6;
  return result;
}

uint64_t _s15ConversationKit17BroadcastingStateO4call0E6Center17deviceOrientation28shouldMaintainCameraPositionAcA4Call_p_AA0mF8Provider_pSo09CNKDeviceH0VSbtcfCTf4ennnn_nSo6TUCallC_Tt3g5(void *a1, void *a2, uint64_t a3, char a4)
{
  if (![a1 isSendingVideo])
  {
    goto LABEL_7;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v7 + 152))())
  {
    if (a4)
    {
      v8 = 0;
    }

    else
    {
      v9 = a2[3];
      v10 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v9);
      v11 = OUTLINED_FUNCTION_182();
      v13 = [v12(v11 v10)];
      OUTLINED_FUNCTION_288();
      swift_unknownObjectRelease();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      specialized Array.count.getter(v14);
      OUTLINED_FUNCTION_288();

      v8 = v9 < 2;
    }

    [a1 isUplinkMuted];
    if (!v8)
    {
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v15 = OUTLINED_FUNCTION_43_0();
      v16(v15);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v17 = OUTLINED_FUNCTION_43_0();
      v18(v17);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    [a1 isSharingScreen];
  }

  else
  {
LABEL_7:
    [a1 isUplinkMuted];
    [a1 isSharingScreen];
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return OUTLINED_FUNCTION_1_5();
}

uint64_t type metadata accessor for VideoMessageController()
{
  result = type metadata singleton initialization cache for VideoMessageController;
  if (!type metadata singleton initialization cache for VideoMessageController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void VideoMessageController.init(callCenter:notificationCenter:)()
{
  OUTLINED_FUNCTION_29();
  v68 = v1;
  v64 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVAJGMd);
  OUTLINED_FUNCTION_1();
  v70 = v3;
  v71 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v60 - v6;
  type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v66 = v8;
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v65 = (v9 - v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v63 = &v60 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v62 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v60 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation3URLVSgGMd);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v60 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22VideoMessageControllerC5StateOGMd);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v60 - v33;
  v35 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController__state;
  v73 = 0;
  Published.init(initialValue:)();
  (*(v31 + 32))(&v0[v35], v34, v29);
  v36 = &v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentActiveConversation];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 4) = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_mostRecentLocalHandle] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoSensitive] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_videoMessageSendSoundPlayer] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_viewStateReadyForVideoMessageRecording] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoMessagingEnabled] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession] = 0;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController__latestVideoMessageURL;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v28, v25, &_s10Foundation3URLVSgMd);
  Published.init(initialValue:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s10Foundation3URLVSgMd);
  (*(v18 + 32))(&v0[v41], v21, v61);
  *&v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController__momentsController] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_warmedMomentsController] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_sendingInProgress] = 0;
  v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_ignoresStateUpdates] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownSink] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_subscriptions] = MEMORY[0x1E69E7CD0];
  v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownShown] = 0;
  v46 = v64;
  outlined init with copy of IDSLookupManager(v64, &v0[OBJC_IVAR____TtC15ConversationKit22VideoMessageController_callCenter]);
  v47 = type metadata accessor for VideoMessageController();
  v74.receiver = v0;
  v74.super_class = v47;
  v48 = objc_msgSendSuper2(&v74, sel_init);
  v49 = v72;
  v50 = v68;
  NSNotificationCenter.publisher(for:object:)();
  v51 = v62;
  v52 = v50;
  NSNotificationCenter.publisher(for:object:)();
  v53 = v66;
  v54 = *(v66 + 16);
  v55 = v49;
  v56 = v67;
  v54(v63, v55, v67);
  v54(v65, v51, v56);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
  v57 = v69;
  Publishers.Merge.init(_:_:)();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Merge<NSNotificationCenter.Publisher, NSNotificationCenter.Publisher> and conformance Publishers.Merge<A, B>, &_s7Combine10PublishersO5MergeVy_So20NSNotificationCenterC10FoundationE9PublisherVAJGMd);
  v58 = v70;
  Publisher<>.sink(receiveValue:)();

  (*(v71 + 8))(v57, v58);
  OUTLINED_FUNCTION_30_2();
  AnyCancellable.store(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v46);
  v59 = *(v53 + 8);
  v59(v51, v56);
  v59(v72, v56);
  OUTLINED_FUNCTION_30_0();
}

uint64_t sub_1BBCA4E30()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ParticipantContactDetailsCache.resetAll()()
{
  if (one-time initialization token for queue != -1)
  {
    OUTLINED_FUNCTION_1_71();
  }

  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in static ParticipantContactDetailsCache.resetAll();
  *(v2 + 24) = v1;
  v8[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v8[5] = v2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_19;
  v3 = _Block_copy(v8);

  v4 = OUTLINED_FUNCTION_62_0();
  dispatch_sync(v4, v5);
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of Participant(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_1(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_2(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_3()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_4()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_5(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_6(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_7(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_9()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_10()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_11(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_12()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_13()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_15(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_16(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_17()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOhTm_18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(a1);
  return a1;
}

void static Participant.State.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v59 = v5;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v60 = v7;
  OUTLINED_FUNCTION_33_1();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v57 - v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_39_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateO_AEtMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v57 - v15;
  v17 = v57 + *(v14 + 56) - v15;
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  type metadata accessor for Participant.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_143_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    case 2u:
      OUTLINED_FUNCTION_143_4();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    case 3u:
      OUTLINED_FUNCTION_143_4();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    case 4u:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v19 = *(v18 + 48);
      v20 = *(v18 + 64);
      v21 = *&v16[v20 + 16];
      v75 = *&v16[v20];
      v76 = v21;
      v22 = *&v16[v20 + 48];
      *v77 = *&v16[v20 + 32];
      *&v77[16] = v22;
      OUTLINED_FUNCTION_143_4();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v23 = *&v17[v20 + 16];
        v71 = *&v17[v20];
        v72 = v23;
        v24 = *&v17[v20 + 48];
        v73 = *&v17[v20 + 32];
        v74 = v24;
        v25 = *(v3 + 32);
        v26 = v60;
        v25(v60, v16, v1);
        v27 = v59;
        v28 = OUTLINED_FUNCTION_158_1();
        (v25)(v28);
        memcpy(v70, &v16[v19], sizeof(v70));
        memcpy(v69, &v17[v19], sizeof(v69));
        if ((static Date.== infix(_:_:)() & 1) == 0 || (static Participant.MediaInfo.== infix(_:_:)(), (v29 & 1) == 0))
        {
          OUTLINED_FUNCTION_172_1();
          outlined destroy of CallControlsService?(v46, v47);
          OUTLINED_FUNCTION_172_1();
          outlined destroy of CallControlsService?(v48, v49);
          outlined destroy of Participant.MediaInfo(v69);
          outlined destroy of Participant.MediaInfo(v70);
          v50 = *(v3 + 8);
          v50(v27, v1);
          v50(v26, v1);
          goto LABEL_33;
        }

        v31 = *(&v75 + 1);
        v30 = v75;
        v32 = v76;
        *v68 = *&v77[1];
        *&v68[15] = *&v77[16];
        v33 = v71;
        v65 = v72;
        v66 = v73;
        v67 = v74;
        if (*(&v75 + 1))
        {
          if (*(&v71 + 1))
          {
            LODWORD(v58) = v77[0];
            v64[0] = v71;
            v64[1] = v72;
            v64[2] = v73;
            v64[3] = v74;
            v34 = v72;
            v57[1] = v73;
            v35 = v75 == v71 && *(&v71 + 1) == *(&v75 + 1);
            if (v35 || (v36 = v75, v37 = _stringCompareWithSmolCheck(_:_:expecting:)(), v30 = v36, (v37 & 1) != 0))
            {
              v36 = v30;
              v38 = v32 == v34 && *(&v32 + 1) == *(&v34 + 1);
              v39 = *(&v32 + 1);
              if (!v38)
              {
                OUTLINED_FUNCTION_172_1();
                _stringCompareWithSmolCheck(_:_:expecting:)();
              }

              outlined destroy of Participant.MediaInfo(v69);
              outlined destroy of Participant.MediaInfo(v70);
              v40 = OUTLINED_FUNCTION_102_4();
              (*(&v32 + 1))(v40);
              v41 = OUTLINED_FUNCTION_194_4();
              (*(&v32 + 1))(v41);
              outlined destroy of CallControlsService?(v64, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
              v42 = v58;
            }

            else
            {
              v39 = *(&v32 + 1);
              outlined destroy of CallControlsService?(v64, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
              outlined destroy of Participant.MediaInfo(v69);
              outlined destroy of Participant.MediaInfo(v70);
              v55 = OUTLINED_FUNCTION_102_4();
              (*(&v32 + 1))(v55);
              v56 = OUTLINED_FUNCTION_194_4();
              (*(&v32 + 1))(v56);
              v42 = v58;
            }

            v61[0] = v36;
            v61[1] = v31;
            v61[2] = v32;
            v61[3] = v39;
            v62 = v42;
            *v63 = *v68;
            *&v63[15] = *&v68[15];
            outlined destroy of CallControlsService?(v61, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_269_1();
          outlined destroy of Participant.MediaInfo(v70);
          v53 = OUTLINED_FUNCTION_102_4();
          (*(&v32 + 1))(v53);
          v54 = OUTLINED_FUNCTION_194_4();
          (*(&v32 + 1))(v54);
        }

        else
        {
          OUTLINED_FUNCTION_269_1();
          outlined destroy of Participant.MediaInfo(v70);
          v51 = OUTLINED_FUNCTION_102_4();
          (*(&v32 + 1))(v51);
          v52 = OUTLINED_FUNCTION_194_4();
          (*(&v32 + 1))(v52);
          if (!*(&v33 + 1))
          {
            v64[0] = 0uLL;
            OUTLINED_FUNCTION_155_1();
            outlined destroy of CallControlsService?(v64, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
            goto LABEL_33;
          }
        }

        *&v64[0] = v31;
        *(&v64[0] + 1) = v58;
        OUTLINED_FUNCTION_155_1();
        v64[4] = v33;
        v64[5] = v65;
        v64[6] = v66;
        v64[7] = v67;
        outlined destroy of CallControlsService?(v64, &_s15ConversationKit11ParticipantV14CopresenceInfoVSg_AFtMd);
        goto LABEL_33;
      }

      outlined destroy of CallControlsService?(&v75, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
      outlined destroy of Participant.MediaInfo(&v16[v19]);
LABEL_31:
      (*(v3 + 8))(v16, v1);
LABEL_32:
      OUTLINED_FUNCTION_4_132();
      _s15ConversationKit11ParticipantV5StateOWOhTm_1();
LABEL_33:
      OUTLINED_FUNCTION_30_0();
      return;
    case 5u:
      OUTLINED_FUNCTION_143_4();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    case 6u:
      OUTLINED_FUNCTION_143_4();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    default:
      OUTLINED_FUNCTION_143_4();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_31;
      }

LABEL_27:
      v43 = *(v3 + 32);
      v43(v0, v16, v1);
      v43(v11, v17, v1);
      static Date.== infix(_:_:)();
      v44 = *(v3 + 8);
      v45 = OUTLINED_FUNCTION_138_2();
      v44(v45);
      (v44)(v0, v1);
      goto LABEL_33;
  }
}

uint64_t outlined assign with copy of Participant.State(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t ConversationController.visibleParticipants.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *(v1 + v2);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v4);
  v5 = v3;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_includeLocalParticipantInVisibleParticipants) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    v6 = OUTLINED_FUNCTION_24_1();
    v7 = type metadata accessor for Participant(v6);
    OUTLINED_FUNCTION_9_0(v7);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BC4BA940;
    v11 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v1 + v11, v10 + v9);
    specialized Array.append<A>(contentsOf:)(v5);
    return v10;
  }

  return v5;
}

uint64_t storeEnumTagSinglePayload for ScreenSharingSpectatorView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_281_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t ConversationController.deviceOrientation.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_296_0();
  v7 = *(v3 + v4);
  *(v3 + v4) = a1;
  return a3(v7);
}

uint64_t ConversationController.conversationState.didset(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  result = swift_beginAccess();
  if (*&v1[v4] != a1)
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationController);
    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315394;
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v21);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      type metadata accessor for TUConversationState(0);
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v21);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1BBC58000, v8, v9, "[%s] conversationState changed to %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v11, -1, -1);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    v18 = &v7[OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange];
    result = swift_beginAccess();
    v19 = *v18;
    if (*v18)
    {
      v20 = *&v2[v4];

      v19(a1, v20);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v19);
    }
  }

  return result;
}

uint64_t CallCenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit10CallCenter_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Collection.first.getter(a1, type metadata accessor for Participant, type metadata accessor for Participant, a2);
}

{
  return specialized Collection.first.getter(a1, specialized Set.startIndex.getter, specialized Set.endIndex.getter, specialized Set.subscript.getter, type metadata accessor for Participant, a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x1E69695A8], a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for ConversationControlsAction, type metadata accessor for ConversationControlsAction, a2);
}

{
  return specialized Collection.first.getter(a1, MEMORY[0x1E6969C28], a2);
}

{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd);
  if (v4)
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &_s12CoreGraphics7CGFloatV_15ConversationKit17AutoplayCandidateVtMd);
  }

  v6 = OUTLINED_FUNCTION_4_27();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for RecentsCallItem, type metadata accessor for RecentsCallItem, a2);
}

{
  return specialized Collection.first.getter(a1, specialized Set.startIndex.getter, specialized Set.endIndex.getter, specialized Set.subscript.getter, MEMORY[0x1E696B330], a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for CaptionSectioner.SpeakerSection, type metadata accessor for CaptionSectioner.SpeakerSection, a2);
}

{
  return specialized Collection.first.getter(a1, type metadata accessor for CaptionSectioner.Caption, type metadata accessor for CaptionSectioner.Caption, a2);
}

uint64_t sub_1BBCA6690(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_29_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_29_2();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_55_1(*(a1 + a3[8]));
      }

      v8 = type metadata accessor for Participant.CountdownInfo(0);
      v12 = a3[14];
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t OUTLINED_FUNCTION_63_3()
{

  return static UUID.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_63_4()
{

  return outlined init with copy of Participant.State();
}

void OUTLINED_FUNCTION_63_8()
{

  UIControl.addAction(for:handler:)(64, v0, v1);
}

void OUTLINED_FUNCTION_63_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_119_5(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t type metadata accessor for IDSCapabilitiesChecker.ParticipantDestination()
{
  result = type metadata singleton initialization cache for IDSCapabilitiesChecker.ParticipantDestination;
  if (!type metadata singleton initialization cache for IDSCapabilitiesChecker.ParticipantDestination)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of IDSCapabilitiesChecker.ParticipantDestination(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSCapabilitiesChecker.ParticipantDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBCA6ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t TUIDSLookupManager.capabilities(for:)()
{
  OUTLINED_FUNCTION_15_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  OUTLINED_FUNCTION_29_6();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v0 isFaceTimeAudioAvailableForAnyDestinationInDestinations_];

  OUTLINED_FUNCTION_29_6();
  v6 = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v0 isFaceTimeVideoAvailableForAnyDestinationInDestinations_];

  OUTLINED_FUNCTION_29_6();
  v8 = Array._bridgeToObjectiveC()().super.isa;
  v9 = [v0 isFaceTimeMultiwayAvailableForAnyDestinationInDestinations_];

  OUTLINED_FUNCTION_29_6();
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v0 isVideoMessagingAvailableForAnyDestinationInDestinations_];

  v12 = 256;
  if (!v5)
  {
    v12 = 0;
  }

  v13 = 0x10000;
  if (!v7)
  {
    v13 = 0;
  }

  v14 = v13 | v12;
  v15 = 0x1000000;
  if (!v9)
  {
    v15 = 0;
  }

  v16 = 0x10000000000;
  if (!v11)
  {
    v16 = 0;
  }

  return v14 | v15 | v16;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_65();
  OUTLINED_FUNCTION_0_72();
  if (v5)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_29_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_13_33();
    if (!v7)
    {
      goto LABEL_11;
    }

    v2 = v6;
  }

  if (v3)
  {
    v8 = *(*v1 + 56) + 6 * v2;
    *(v8 + 4) = WORD2(v0);
    *v8 = v0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6_45();
    v10(v9);
    specialized _NativeDictionary._insert(at:key:value:)();
  }

  OUTLINED_FUNCTION_30_0();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_65();
  OUTLINED_FUNCTION_0_72();
  if (v2)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_29_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit19ParticipantGridViewC23FrozenFrameOverlayState33_C3C0D7D8F62A84253427EC61D899943ELLOGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_13_33();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_30_0();

    outlined assign with take of ParticipantGridView.FrozenFrameOverlayState(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_6_45();
    v8(v7);
    OUTLINED_FUNCTION_15_23();
    specialized _NativeDictionary._insert(at:key:value:)();
    OUTLINED_FUNCTION_30_0();
  }
}

{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_31_15();
  v3 = v2;
  v5 = v4;
  v7 = OUTLINED_FUNCTION_10_28(v6, v4);
  specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  OUTLINED_FUNCTION_0_72();
  if (v11)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS15ConversationKit22IDSCapabilitiesCheckerC12CapabilitiesOGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    v14 = OUTLINED_FUNCTION_1_5();
    specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    OUTLINED_FUNCTION_23_21();
    if (!v17)
    {
      goto LABEL_12;
    }

    v12 = v16;
  }

  v18 = *v1;
  if (v13)
  {
    v19 = *(v18 + 56) + 6 * v12;
    *(v19 + 4) = WORD2(v0);
    *v19 = v0;
    OUTLINED_FUNCTION_49();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v12, v5, v3, v0 & 0xFFFFFFFFFFFFLL, v18);
    OUTLINED_FUNCTION_49();
  }
}

{
  OUTLINED_FUNCTION_50_2();
  v4 = OUTLINED_FUNCTION_4_46(v2, v3);
  specialized __RawDictionaryStorage.find<A>(_:)(v4);
  OUTLINED_FUNCTION_0_72();
  if (v5)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySO15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVGMd);
  v6 = OUTLINED_FUNCTION_5_43();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v6, v7))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v0);
    OUTLINED_FUNCTION_7_43();
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_49();

    outlined assign with take of ScreenSharingStateMonitor.Observation(v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)(v12, v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_2_68();
  specialized __RawDictionaryStorage.find<A>(_:)(v2);
  OUTLINED_FUNCTION_0_72();
  if (v3)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit20MomentsIndicatorTypeOAC0eF6BubbleCGMd);
  v4 = OUTLINED_FUNCTION_5_43();
  v6 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v4, v5);
  if (v6)
  {
    v9 = OUTLINED_FUNCTION_38_12();
    specialized __RawDictionaryStorage.find<A>(_:)(v9);
    OUTLINED_FUNCTION_7_43();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_14_21(v6, v7, v8, *v0);
    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)(v13, v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_31_15();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  specialized __RawDictionaryStorage.find<A>(_:)(v3);
  OUTLINED_FUNCTION_0_72();
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_44_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit24PlatformAlertActionStyleOyycGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v4);
    OUTLINED_FUNCTION_9_32();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    v12 = (*(*v0 + 56) + 16 * v2);
    *v12 = v8;
    v12[1] = v6;
    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)(v14, v15, v16, v17, v18);
  }
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_4_46(v0, v1);
  specialized __RawDictionaryStorage.find<A>(_:)(v2);
  OUTLINED_FUNCTION_0_72();
  if (v4)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMd);
  v6 = OUTLINED_FUNCTION_5_43();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)(v8);
    OUTLINED_FUNCTION_9_32();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
    OUTLINED_FUNCTION_49();

    outlined assign with take of (AutoplayAction, AutoplayCandidate)(v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)();
  }
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_65();
  OUTLINED_FUNCTION_0_72();
  if (v2)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_29_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVSo21SCSensitivityAnalysisCGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_13_33();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_43_8();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_6_45();
    v7(v6);
    v8 = OUTLINED_FUNCTION_15_23();
    specialized _NativeDictionary._insert(at:key:value:)(v8);
    OUTLINED_FUNCTION_30_0();
  }
}

{
  OUTLINED_FUNCTION_29();
  v20 = v2;
  v4 = v3;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_0_72();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit26SensitiveContentControllerC18HistoryCheckStatus33_063DB4DC5BD342763B5D5395B1DD5E15LLOGMd);
  if (!OUTLINED_FUNCTION_16_30())
  {
    goto LABEL_5;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  v13 = *v0;
  if (v10)
  {
    v14 = *(v13 + 56) + 16 * v9;
    *v14 = v4;
    *(v14 + 8) = v20;
    OUTLINED_FUNCTION_30_0();

    outlined consume of SensitiveContentController.HistoryCheckStatus(v15, v16);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_39_5();
    v19(v18);
    specialized _NativeDictionary._insert(at:key:value:)(v9, v1, v4, v20, v13);
    OUTLINED_FUNCTION_30_0();
  }
}

{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_65();
  OUTLINED_FUNCTION_0_72();
  if (v7)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_29_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV15ConversationKit26SensitiveContentControllerC14StreamSettings33_063DB4DC5BD342763B5D5395B1DD5E15LLVGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_13_33();
    if (!v9)
    {
      goto LABEL_11;
    }

    v2 = v8;
  }

  v10 = *v0;
  if (v3)
  {
    v11 = (*(v10 + 56) + 3 * v2);
    *v11 = v5 & 1;
    v11[1] = BYTE1(v5) & 1;
    v11[2] = BYTE2(v5) & 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_6_45();
    v13(v12);
    specialized _NativeDictionary._insert(at:key:value:)(v2, v1, v5 & 0x10101, v10);
  }

  OUTLINED_FUNCTION_30_0();
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

{
  OUTLINED_FUNCTION_29();
  v18 = v3;
  v19 = v2;
  v5 = v4;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_0_72();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  if (!OUTLINED_FUNCTION_16_30())
  {
    goto LABEL_5;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v0;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = v19;
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_39_5();
    v17(v16);
    v18(v10, v1, v19, v14);
    OUTLINED_FUNCTION_30_0();
  }
}

{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_31_15();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_24_18(v7, v5, v3);
  OUTLINED_FUNCTION_0_72();
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_44_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo7UIImageCSgGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v6, v4);
    OUTLINED_FUNCTION_9_32();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v8;
    OUTLINED_FUNCTION_49();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_39_5();
    specialized _NativeDictionary._insert(at:key:value:)(v14, v15, v4, v8, v16);
    OUTLINED_FUNCTION_49();
  }
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_3_65();
  OUTLINED_FUNCTION_0_72();
  if (v2)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_29_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV8Dispatch0E8WorkItemCGMd);
  if (OUTLINED_FUNCTION_8_46())
  {
    OUTLINED_FUNCTION_26_16();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_13_33();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_43_8();
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_6_45();
    v6(v5);
    v7 = OUTLINED_FUNCTION_15_23();
    specialized _NativeDictionary._insert(at:key:value:)(v7);
    OUTLINED_FUNCTION_30_0();
  }
}

{
  OUTLINED_FUNCTION_50_2();
  v3 = OUTLINED_FUNCTION_4_46(v1, v2);
  specialized __RawDictionaryStorage.find<A>(_:)(v3);
  OUTLINED_FUNCTION_0_72();
  if (v5)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt64V15ConversationKit30ParticipantPresentationContextVGMd);
  v7 = OUTLINED_FUNCTION_5_43();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v7, v8))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v0);
    OUTLINED_FUNCTION_9_32();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v6)
  {
    OUTLINED_FUNCTION_49();

    memcpy(v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)(v14, v15, v16, v17);
  }
}

{
  OUTLINED_FUNCTION_50_2();
  v5 = OUTLINED_FUNCTION_4_46(v3, v4);
  specialized __RawDictionaryStorage.find<A>(_:)(v5);
  OUTLINED_FUNCTION_0_72();
  if (v6)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySiSDy15ConversationKit19InCallControlsStateOSo6CGRectVGGMd);
  v7 = OUTLINED_FUNCTION_5_43();
  v9 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v7, v8);
  if (v9)
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v1);
    OUTLINED_FUNCTION_7_43();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_14_21(v9, v10, v11, *v0);
    OUTLINED_FUNCTION_49();
  }

  else
  {
    OUTLINED_FUNCTION_49();

    specialized _NativeDictionary._insert(at:key:value:)(v14, v15, v16, v17);
  }
}

id TUCall.cnk_activeConversation.getter()
{
  v1 = [v0 callCenter];
  v2 = [v1 activeConversationForCall_];

  return v2;
}

id @nonobjc TUCall.provider.getter()
{
  v1 = [v0 provider];

  return v1;
}

uint64_t outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *static ParticipantContactDetailsCache.queue_cache(forBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v8 = static ParticipantContactDetailsCache.queue;
  *v7 = static ParticipantContactDetailsCache.queue;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = TUPreferredFaceTimeBundleIdentifier();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == a1 && v13 == a2)
  {

LABEL_14:
    if (one-time initialization token for faceTime == -1)
    {
LABEL_15:
      v17 = static ParticipantContactDetailsCache.faceTime;

      return v17;
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_14;
  }

  if (one-time initialization token for cachesByBundleIdentifiers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = specialized Dictionary.subscript.getter(a1, a2, static ParticipantContactDetailsCache.cachesByBundleIdentifiers);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    swift_endAccess();

    v17 = ParticipantContactDetailsCache.__allocating_init(bundleIdentifier:)();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v19 = static ParticipantContactDetailsCache.cachesByBundleIdentifiers;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    static ParticipantContactDetailsCache.cachesByBundleIdentifiers = v19;
  }

  swift_endAccess();
  return v17;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_146_2(v3);
}

{
  if (*(a3 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_145_4(v3);
  }

  else
  {
    OUTLINED_FUNCTION_199_1();
  }

  return OUTLINED_FUNCTION_46();
}

{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  OUTLINED_FUNCTION_277_0(v4);
  return v3;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_277_0(v4);
  return v3;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_146_2(v3);
}

uint64_t outlined init with take of Participant(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_1()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_3(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_4()
{
  v1 = OUTLINED_FUNCTION_16_23();
  v2(v1);
  OUTLINED_FUNCTION_20_3();
  v3 = OUTLINED_FUNCTION_46();
  v4(v3);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_5()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_6()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_7()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWObTm_8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

void *outlined consume of Participant.RemoteIdentifiers?(void *result)
{
  if (result)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_88_0()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_88_3()
{

  VideoMessageController.latestVideoMessageSandboxURL.setter(0);
}

uint64_t OUTLINED_FUNCTION_88_5()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_88_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_88_10(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return outlined init with copy of Notice?(v3 + 128, v3 + 80, a3);
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for Participant(0);
  v7 = OUTLINED_FUNCTION_9_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_58_1();
      return;
    }

    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v13 = v21;
    v18 = i;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFB22010](v12, a3);
      }

      else
      {
        if (v12 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      i = v15;
      v20 = v15;
      a1(&v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v21 = v13;
      v16 = *(v13 + 16);
      if (v16 >= *(v13 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v21;
      }

      *(v13 + 16) = v16 + 1;
      OUTLINED_FUNCTION_17_17();
      OUTLINED_FUNCTION_3_38();
      _s15ConversationKit11ParticipantVWObTm_0(v10, v17);
      ++v12;
      if (v14 == v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t closure #2 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int8x8_t a4@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v13 = OUTLINED_FUNCTION_4_24();
  v14 = type metadata accessor for Participant.CountdownInfo(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40();
  v74 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_363();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v71 = v20;
  v72 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v21 = OUTLINED_FUNCTION_101_4();
  type metadata accessor for Participant.State(v21);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_240_0();
  v23 = *a1;
  v24 = type metadata accessor for Date();
  OUTLINED_FUNCTION_7_0();
  (*(v25 + 16))(v5, a2, v24);
  swift_storeEnumTagMultiPayload();
  v70 = v4;
  UUID.init()();
  v26 = v23;
  v69 = static Colors.ParticipantGradients.gradient(for:)(v26);
  v75 = v6;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v14);
  v30 = OUTLINED_FUNCTION_334();
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v32 = OUTLINED_FUNCTION_308_1();
  v33(v32);
  v34 = v77;
  if (v77)
  {
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v68 = Conversation.containsAuthorizedToChangeGroupMembership(participantWithHandle:)(v26, v34);
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    outlined destroy of CallControlsService?(v76, &_s15ConversationKit0A0_pSgMd);
    v68 = 0;
  }

  type metadata accessor for ParticipantContactDetailsCache();
  swift_getObjectType();
  v35 = specialized static ParticipantContactDetailsCache.cache(for:)();
  v36 = type metadata accessor for Participant(0);
  v37 = a3 + v36[7];
  *(v37 + 32) = 0;
  *v37 = 0u;
  *(v37 + 16) = 0u;
  v38 = (a3 + v36[9]);
  *(a3 + v36[10]) = 0;
  *(a3 + v36[11]) = MEMORY[0x1E69E7CD0];
  *(a3 + v36[12]) = 0;
  OUTLINED_FUNCTION_89_9();
  v39 = OUTLINED_FUNCTION_20_36();
  _s15ConversationKit11ParticipantVWObTm_8(v39, v40);
  *&v41 = (*(v71 + 32))(a3 + v36[5], v70, v72);
  v42 = a3 + v36[6];
  *v42 = vuzp1_s8(a4, v41).u32[0];
  *(v42 + 4) = 0;
  outlined consume of Participant.RemoteIdentifiers?(*v37);
  *v37 = v26;
  *(v37 + 8) = xmmword_1BC4BB7D0;
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(a3 + v36[8]) = v69;
  *v38 = 0;
  v38[1] = 0;
  *(a3 + v36[15]) = v68 & 1;
  *(a3 + v36[13]) = 0;
  v43 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v43, v44, v14) == 1)
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v24);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v24);
    v51 = v74;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v24);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v24);
    OUTLINED_FUNCTION_205_0();
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v58, v59, v60);
    OUTLINED_FUNCTION_205_0();
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v61, v62, v63);
    *(v74 + *(v14 + 24)) = 0;
    v64 = OUTLINED_FUNCTION_18_12();
    if (__swift_getEnumTagSinglePayload(v64, v65, v14) != 1)
    {
      outlined destroy of CallControlsService?(v75, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    v51 = v74;
    _s15ConversationKit11ParticipantVWObTm_8(v75, v74);
  }

  OUTLINED_FUNCTION_24_57();
  result = _s15ConversationKit11ParticipantVWObTm_8(v51, a3 + v66);
  *(a3 + v36[16]) = v35;
  return result;
}

id OUTLINED_FUNCTION_257(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_285_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 7;

  return UUID.init()();
}

uint64_t static Colors.ParticipantGradients.gradient(for:)(void *a1)
{
  v1 = [a1 value];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  specialized Sequence.reduce<A>(_:_:)(0, v2, v4);

  if (one-time initialization token for gradients != -1)
  {
    result = swift_once();
  }

  if (*(static Colors.ParticipantGradients.gradients + 2))
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized Sequence.reduce<A>(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v15 = a3 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    if (4 * v6 == v9 >> 14)
    {
      return a1;
    }

    result = v9;
    if ((v9 & 0xC) == v8)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, a2, a3);
    }

    v11 = result >> 16;
    if (result >> 16 >= v6)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v12 = result;
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v14[0] = a2;
      v14[1] = v15;
      v12 = *(v14 + v11);
    }

    else
    {
      result = v13;
      if ((a2 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v12 = *(result + v11);
    }

    if ((v9 & 0xC) == v8)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, a2, a3);
      v9 = result;
      if ((a3 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_19;
    }

    if (v6 <= v9 >> 16)
    {
      goto LABEL_27;
    }

    v9 = String.UTF8View._foreignIndex(after:)();
LABEL_24:
    a1 = v12 ^ a1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_261()
{

  return type metadata accessor for UUID();
}

uint64_t specialized static ParticipantContactDetailsCache.cache(for:)()
{
  OUTLINED_FUNCTION_55();
  if (one-time initialization token for queue != -1)
  {
    v0 = OUTLINED_FUNCTION_1_71();
  }

  MEMORY[0x1EEE9AC00](v0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v2;
}

uint64_t closure #1 in static ParticipantContactDetailsCache.cache(for:)partial apply@<X0>(void *a1@<X8>)
{
  return partial apply for closure #1 in static ParticipantContactDetailsCache.cache(for:)(a1);
}

{
  return partial apply for closure #1 in static ParticipantContactDetailsCache.cache(for:)(a1);
}

uint64_t outlined assign with take of Participant?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 40))(v3, v4);
  return v3;
}

uint64_t outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return v3;
}

uint64_t outlined init with copy of Participant?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(v3, v4);
  return v3;
}

id OUTLINED_FUNCTION_176_0()
{

  return outlined copy of Participant.RemoteIdentifiers?(v0);
}

uint64_t closure #1 in static ParticipantContactDetailsCache.resetAll()()
{
  if (one-time initialization token for faceTime != -1)
  {
LABEL_16:
    swift_once();
  }

  [*(static ParticipantContactDetailsCache.faceTime + 3) removeAllObjects];
  if (one-time initialization token for cachesByBundleIdentifiers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static ParticipantContactDetailsCache.cachesByBundleIdentifiers;
  v1 = 1 << *(static ParticipantContactDetailsCache.cachesByBundleIdentifiers + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(static ParticipantContactDetailsCache.cachesByBundleIdentifiers + 8);
  v4 = (v1 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v5 = 0;
  if (v3)
  {
    while (1)
    {
      v6 = v5;
LABEL_12:
      v7 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      [*(*(v0[7] + ((v6 << 9) | (8 * v7))) + 24) removeAllObjects];
      if (!v3)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v0[v6 + 8];
    ++v5;
    if (v3)
    {
      v5 = v6;
      goto LABEL_12;
    }
  }
}

uint64_t outlined consume of Environment<UIInterfaceOrientation>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(unint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v14 = v4;
  v16 = type metadata accessor for Participant.State(0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_5();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v290 = v18;
  v291 = v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40();
  v289 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_28_6();
  type metadata accessor for Participant(v23);
  OUTLINED_FUNCTION_1();
  v288 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_79_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_103_4();
  v284 = a3;
  if ((a3 & 0x80) == 0)
  {
    v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v14 + v33, v8);
    ConversationController.conversationIsAVLess.getter();
    memset(v310, 0, 75);
    OUTLINED_FUNCTION_352();
    Participant.copresenceInfo.getter(&v298);
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of CallControlsService?(&v298, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
    outlined destroy of CallControlsService?(v293, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    OUTLINED_FUNCTION_0_222();
    _s15ConversationKit11ParticipantVWOhTm_18(v8, v34);
    v35 = 0;
    v36 = v9;
    v37 = v14;
    v38 = v291;
    goto LABEL_103;
  }

  v271 = v31;
  v272 = v32;
  v270 = v5;
  v277 = v30;
  v278 = v7;
  v286 = v9;
  v39 = v14 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v41 = *(v39 + 3);
  v40 = *(v39 + 4);
  v42 = OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_202_3(v42, v43);
  OUTLINED_FUNCTION_2_7();
  v287 = v14;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_58_9();
  v45 = OUTLINED_FUNCTION_153_4();
  v46(v45);
  OUTLINED_FUNCTION_403_0();
  v47(v295, v41, v40);
  v48 = OUTLINED_FUNCTION_139();
  v49(v48);
  v37 = v14;
  v50 = v14 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_1_186();
  v51 = OUTLINED_FUNCTION_11_36();
  _s15ConversationKit11ParticipantVWOcTm_17(v51, v52);
  Participant.videoInfo.getter();
  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v6, v53);
  v54 = a1 >> 8;
  v279 = v50;
  if (v298)
  {
    v55 = BYTE8(v298);
    v56 = v299;
    v57 = v301;
    v293[2] = v299;
    *v307 = v302;
    *&v307[16] = v303;
    *&v307[32] = v304;
    v293[0] = v298;
    LOBYTE(v293[1]) = BYTE8(v298);
    HIDWORD(v293[1]) = HIDWORD(v298);
    *(&v293[1] + 1) = *(&v298 + 9);
    v267 = BYTE1(v299);
    v293[3] = v300;
    LOBYTE(v293[4]) = v301;
    *(&v293[4] + 1) = v302;
    *(&v293[6] + 1) = v303;
    *(&v293[8] + 1) = v304;
    *(&v293[9] + 1) = v305;
    v273 = v305;
    v268 = v300;
    if (v301 == BYTE1(a1))
    {
      v58 = 0.0;
      v59 = 1;
      v60 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
      if (BYTE8(v298))
      {
        goto LABEL_27;
      }
    }

    else
    {
      v266 = v299;
      if (one-time initialization token for conversationController != -1)
      {
        OUTLINED_FUNCTION_8_106();
      }

      v89 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v89, static Logger.conversationController);
      v90 = v14;
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v54 = OUTLINED_FUNCTION_23();
        v310[0] = OUTLINED_FUNCTION_13_31();
        *v54 = 136315650;
        LOBYTE(v297[0]) = v90[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
        v93 = String.init<A>(reflecting:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v310);
        OUTLINED_FUNCTION_479();

        *(v54 + 4) = v90;
        *(v54 + 12) = 2080;
        LOBYTE(v297[0]) = BYTE1(a1);
        v95 = String.init<A>(reflecting:)();
        v97 = v96;
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v310);

        *(v54 + 14) = v98;
        *(v54 + 22) = 2080;
        v37 = v287;
        LOBYTE(v297[0]) = v57;
        v99 = String.init<A>(reflecting:)();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, v310);
        OUTLINED_FUNCTION_479();

        *(v54 + 24) = v97;
        OUTLINED_FUNCTION_11_44();
        _os_log_impl(v101, v102, v103, v104, v105, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4_4();
        LOBYTE(v54) = BYTE1(a1);
        OUTLINED_FUNCTION_27();
      }

      v60 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
      v59 = 1;
      OUTLINED_FUNCTION_3_5();
      LOBYTE(v293[4]) = v54;
      if (static Platform.current.getter() == 3 || (v59 = 1, (ConversationController.isOneToOneModeEnabled.getter() & 1) != 0))
      {
        v58 = 0.0;
      }

      else
      {
        HIBYTE(v293[1]) = 1;
        v58 = 1.0;
        v59 = 0;
      }

      v56 = v266;
      if (v55)
      {
LABEL_27:
        if (v56)
        {
          if (v59)
          {
            *&v115 = 0.25;
          }

          else
          {
            *&v115 = v58;
          }

          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          OUTLINED_FUNCTION_447();
          v116 = *(*&v58 + 232);
          swift_unknownObjectRetain();
          v117 = OUTLINED_FUNCTION_48_0();
          v58 = *&v115;
          v116(v117);
          v37 = v287;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v118, v119, v120, v290);
          v121 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDResolvingCroppedAspectRatio;
          OUTLINED_FUNCTION_30_2();
          v60 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
          outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v270, v287 + v121, &_s10Foundation4UUIDVSgMd);
          swift_endAccess();
          v59 = 0;
        }

        v122 = &unk_1BC4BB000;
        if (a4 == 2 || ((v267 ^ a4) & 1) == 0)
        {
          if (v59)
          {
LABEL_46:
            v139 = (v37 + v60[90]);
            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            v140 = *v139;
            v35 = *v139 != v268;
            if (*v139 != v268)
            {
              OUTLINED_FUNCTION_3_5();
              v293[3] = v140;
            }

            v106 = v273 & 1;
            v141 = ConversationController.isCameraMixedWithScreen.getter();
            if ((v141 & 1) != v106)
            {
              v142 = v141;
              if (one-time initialization token for conversationController != -1)
              {
                OUTLINED_FUNCTION_8_106();
              }

              v143 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v143, static Logger.conversationController);
              v106 = v37;
              v144 = Logger.logObject.getter();
              v145 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v144, v145))
              {
                v274 = v145;
                v146 = v122;
                v147 = OUTLINED_FUNCTION_30_1();
                v310[0] = OUTLINED_FUNCTION_29_7();
                *v147 = v146[308];
                LOBYTE(v297[0]) = *(v106 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode);
                v148 = String.init<A>(reflecting:)();
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, v310);
                OUTLINED_FUNCTION_439();
                *(v147 + 4) = v58;
                *(v147 + 12) = 2080;
                LOBYTE(v297[0]) = ConversationController.isCameraMixedWithScreen.getter() & 1;
                v150 = String.init<A>(reflecting:)();
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v151, v310);
                OUTLINED_FUNCTION_173();

                *(v147 + 14) = v106;
                _os_log_impl(&dword_1BBC58000, v144, v274, "[%s] Updating local participant videoInfo with isMixedWithScreen: %s", v147, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_3_83();
                OUTLINED_FUNCTION_2_2();
              }

              v35 = 1;
              OUTLINED_FUNCTION_3_5();
              BYTE1(v293[9]) = v142 & 1;
            }

            if (ConversationController.isOneToOneModeEnabled.getter())
            {
              v152 = OUTLINED_FUNCTION_473();
              __swift_project_boxed_opaque_existential_1(v152, v153);
              v154 = OUTLINED_FUNCTION_56_19();
              v156 = COERCE_DOUBLE(v155(v154));
              v158 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
              v282 = v35;
              if (v159)
              {
                v160 = 0;
                v161 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
              }

              else
              {
                v10 = v156;
                v11 = v157;
                v161 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
                if (v157 >= v156 && (v162 = v37 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), (v162[8] & 1) != 0) || (v163 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera, OUTLINED_FUNCTION_3_0(), swift_beginAccess(), (*(v37 + v163) & 1) != 0) || *(v37 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) != 1 || ![*(v37 + OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags) afbEnabled])
                {
                  v160 = 0;
                }

                else
                {
                  v164 = [objc_opt_self() currentDevice];
                  v165 = [v164 userInterfaceIdiom];

                  v270 = v139;
                  if (v165)
                  {
                    v166 = *v139;
                    if (v166 <= 3)
                    {
                      v166 = qword_1BC4E9B80[v166];
                    }
                  }

                  else
                  {
LABEL_122:
                    if (v10 < v11)
                    {
                      v166 = 1;
                    }

                    else
                    {
                      v166 = 2;
                    }
                  }

                  if (one-time initialization token for conversationController != -1)
                  {
                    OUTLINED_FUNCTION_8_106();
                  }

                  v243 = type metadata accessor for Logger();
                  OUTLINED_FUNCTION_52(v243, static Logger.conversationController);
                  outlined init with copy of RecentCallProviding & RecentsControllable(v295, v310);
                  v244 = v37;
                  v245 = Logger.logObject.getter();
                  v246 = static os_log_type_t.default.getter();

                  if (OUTLINED_FUNCTION_317())
                  {
                    v276 = v246;
                    v247 = OUTLINED_FUNCTION_14_20();
                    *&v292[0] = swift_slowAlloc();
                    *v247 = 136315906;
                    LOBYTE(v297[0]) = 1;
                    v248 = String.init<A>(reflecting:)();
                    OUTLINED_FUNCTION_522(v248, v249);
                    OUTLINED_FUNCTION_173();

                    *(v247 + 4) = v246;
                    *(v247 + 12) = 2080;
                    __swift_project_boxed_opaque_existential_1(v310, v310[3]);
                    v250 = OUTLINED_FUNCTION_56_19();
                    v252 = v251(v250);
                    if (v254)
                    {
                      v255 = 7104878;
                    }

                    else
                    {
                      v297[0] = v252;
                      v297[1] = v253;
                      type metadata accessor for CGSize(0);
                      v255 = String.init<A>(reflecting:)();
                    }

                    __swift_destroy_boxed_opaque_existential_1(v310);
                    v256 = OUTLINED_FUNCTION_4_31();
                    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v256, v257, v258);
                    OUTLINED_FUNCTION_173();

                    *(v247 + 14) = v255;
                    *(v247 + 22) = 2080;
                    v297[0] = *v270;
                    type metadata accessor for CNKDeviceOrientation(0);
                    v259 = String.init<A>(reflecting:)();
                    v261 = v260;
                    v262 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v259, v260, v292);

                    *(v247 + 24) = v262;
                    *(v247 + 32) = 2080;
                    v297[0] = v166;
                    v263 = String.init<A>(reflecting:)();
                    OUTLINED_FUNCTION_522(v263, v264);
                    OUTLINED_FUNCTION_173();

                    *(v247 + 34) = v261;
                    _os_log_impl(&dword_1BBC58000, v245, v276, "[%s] Updating AR based on localVideoAttribute videoAspectRatio: %s, deviceOrientation: %s, videoResolutionOrientation: %s", v247, 0x2Au);
                    swift_arrayDestroy();
                    OUTLINED_FUNCTION_26();
                    OUTLINED_FUNCTION_3_26();

                    v161 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
                  }

                  else
                  {

                    __swift_destroy_boxed_opaque_existential_1(v310);
                  }

                  v265 = &v244[v158[38]];
                  v160 = 1;
                  OUTLINED_FUNCTION_3_5();
                  *v265 = v166;
                  v265[8] = 0;
                  v282 = 1;
                  v139 = v270;
                }
              }

              ConversationController.videoProviderForResizingLocal.getter(v297);
              v167 = v161[59];
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              v168 = *(v37 + v167);
              v169 = (v37 + v158[38]);
              OUTLINED_FUNCTION_3_0();
              swift_beginAccess();
              if (*(v169 + 8))
              {
                v170 = v139;
              }

              else
              {
                v170 = v169;
              }

              v171 = *v170;
              OUTLINED_FUNCTION_1_186();
              _s15ConversationKit11ParticipantVWOcTm_17(v279, v271);
              Participant.aspectRatio.getter(v306);
              OUTLINED_FUNCTION_0_222();
              _s15ConversationKit11ParticipantVWOhTm_18(v271, v172);
              static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(v297, v171, v168, v306, v160, v310);
              OUTLINED_FUNCTION_397_0();
              v173 = LOBYTE(v310[5]);
              if (one-time initialization token for conversationKit != -1)
              {
                OUTLINED_FUNCTION_2_9();
              }

              v174 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v174, static Logger.conversationKit);
              v175 = Logger.logObject.getter();
              v176 = static os_log_type_t.default.getter();
              if (OUTLINED_FUNCTION_240(v176))
              {
                OUTLINED_FUNCTION_42();
                v177 = OUTLINED_FUNCTION_21_4();
                *&v292[0] = v177;
                *v160 = 136315138;
                v275 = v173;
                if (v139)
                {
                  v178 = OUTLINED_FUNCTION_12_96();
                  v179 = 0xE300000000000000;
                }

                else
                {
                  *v310 = v11;
                  *&v310[1] = v10;
                  type metadata accessor for CGSize(0);
                  v178 = String.init<A>(reflecting:)();
                  v179 = v180;
                }

                v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v179, v292);

                *(v160 + 4) = v181;
                OUTLINED_FUNCTION_25_53();
                _os_log_impl(v182, v183, v184, v185, v160, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v177);
                OUTLINED_FUNCTION_282_2();
                OUTLINED_FUNCTION_26();

                __swift_destroy_boxed_opaque_existential_1(v297);
                v173 = v275;
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1(v297);
              }

              v186 = 0.0;
              if ((v139 & 1) != 0 || v11 == v10)
              {
                v187 = 1;
                v10 = 0.0;
                v188 = 0.0;
                v189 = 0.0;
              }

              else
              {
                v187 = 0;
                if (v173)
                {
                  v188 = v10;
                }

                else
                {
                  v188 = v12;
                }

                if (v173)
                {
                  v189 = v11;
                }

                else
                {
                  v189 = v13;
                }

                v186 = v11;
              }

              v106 = v293;
              v35 = v282;
              *&v311 = v186;
              *(&v311 + 1) = v10;
              *&v312 = v188;
              *(&v312 + 1) = v189;
              v313 = v187;
              v308[0] = *&v307[7];
              v308[1] = *&v307[23];
              v309 = v307[39];
              if (!static AspectRatio.== infix(_:_:)(&v311, v308))
              {
                OUTLINED_FUNCTION_3_5();
                *&v293[5] = v311;
                *&v293[7] = v312;
                LOBYTE(v293[9]) = v313;
                v35 = 1;
              }
            }

            OUTLINED_FUNCTION_3_0();
            swift_beginAccess();
            memcpy(v292, v293, 0x4BuLL);
            memcpy(v310, v293, 0x4BuLL);
            outlined init with copy of Participant.VideoInfo(v292, v297);
            outlined destroy of Participant.VideoInfo(v310);
            memcpy(v297, v292, 0x4BuLL);
            goto LABEL_97;
          }

          v10 = v58;
        }

        else
        {
          if (one-time initialization token for conversationController != -1)
          {
            OUTLINED_FUNCTION_8_106();
          }

          v123 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v123, static Logger.conversationController);
          v124 = v37;
          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v125, v126))
          {
            swift_slowAlloc();
            LODWORD(v270) = v126;
            v127 = OUTLINED_FUNCTION_13_80();
            v310[0] = v127;
            **&v58 = 136315394;
            LOBYTE(v297[0]) = v124[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
            v128 = String.init<A>(reflecting:)();
            v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, v310);

            *(*&v58 + 4) = v130;
            *(*&v58 + 12) = 1024;
            v131 = a4 & 1;
            v60 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
            *(*&v58 + 14) = v131;
            OUTLINED_FUNCTION_11_44();
            _os_log_impl(v132, v133, v134, v135, v136, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v127);
            OUTLINED_FUNCTION_4_4();
            OUTLINED_FUNCTION_27();
          }

          else
          {

            LOBYTE(v131) = a4 & 1;
          }

          OUTLINED_FUNCTION_3_5();
          BYTE1(v293[2]) = v131;
          if (v59)
          {
            v10 = 1.0;
          }

          else
          {
            v10 = v58;
          }

          v122 = &unk_1BC4BB000;
        }

        v58 = v289;
        (*(v291 + 16))(COERCE_DOUBLE(*&v289), v279 + *(v288 + 20), v290);
        ConversationController.scheduleResetVideoInfo(for:after:)();
        v137 = OUTLINED_FUNCTION_1_5();
        v138(v137);
        goto LABEL_46;
      }
    }

    v108 = OUTLINED_FUNCTION_473();
    v110 = v109;
    __swift_project_boxed_opaque_existential_1(v108, v111);
    v112 = OUTLINED_FUNCTION_2_14();
    v114 = v113(v112);
    v56 = v110;
    if ((v59 & v114) != 0)
    {
      v58 = 0.25;
    }

    v59 &= v114 ^ 1;
    goto LABEL_27;
  }

  v61 = OUTLINED_FUNCTION_473();
  v63 = v62;
  __swift_project_boxed_opaque_existential_1(v61, v64);
  v65 = OUTLINED_FUNCTION_2_14();
  v67 = v66(v65);
  v68 = v296;
  OUTLINED_FUNCTION_529(v295);
  v69 = OUTLINED_FUNCTION_246();
  v281 = v67 & 1;
  v269 = v70(v69, v68) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantV17VideoProviderTypeO_AC0fgH0_ptGMd);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1BC4BA940;
  *(v71 + 32) = 2;
  v72 = v295[3];
  v73 = v296;
  v74 = OUTLINED_FUNCTION_473();
  __swift_project_boxed_opaque_existential_1(v74, v75);
  *(v71 + 64) = v72;
  *(v71 + 72) = v73;
  __swift_allocate_boxed_opaque_existential_1((v71 + 40));
  OUTLINED_FUNCTION_2_3();
  (*(v76 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pMd);
  lazy protocol witness table accessor for type Participant.VideoProviderType and conformance Participant.VideoProviderType();
  v271 = Dictionary.init(dictionaryLiteral:)();
  v77 = *(v63 + 720);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v270 = *(v37 + v77);
  ConversationController.videoProviderForResizingLocal.getter(v292);
  LOBYTE(v72) = ConversationController.isOneToOneModeEnabled.getter();
  v78 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v79 = *(v37 + v78);
  v80 = *(v37 + v77);
  OUTLINED_FUNCTION_1_186();
  _s15ConversationKit11ParticipantVWOcTm_17(v50, v272);
  Participant.aspectRatio.getter(v307);
  OUTLINED_FUNCTION_0_222();
  _s15ConversationKit11ParticipantVWOhTm_18(v272, v81);
  if (v72)
  {
    static AspectRatio.localAspectRatios(with:localOrientation:needsLandscapeCameraOrientation:cachedLocalAspectRatio:localOrientationMatchesReceiver:)(v292, v80, v79, v307, 0, v310);
    OUTLINED_FUNCTION_397_0();
    v82 = LOBYTE(v310[5]);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v83 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v83, static Logger.conversationKit);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      OUTLINED_FUNCTION_42();
      v86 = OUTLINED_FUNCTION_13_80();
      v297[0] = v86;
      *v82 = 136315138;
      if (v77)
      {
        v87 = OUTLINED_FUNCTION_12_96();
        v88 = 0xE300000000000000;
      }

      else
      {
        *v310 = v11;
        *&v310[1] = v10;
        type metadata accessor for CGSize(0);
        v87 = String.init<A>(reflecting:)();
        v88 = v190;
      }

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v297);
      OUTLINED_FUNCTION_479();

      *(v82 + 4) = v63;
      OUTLINED_FUNCTION_11_44();
      _os_log_impl(v191, v192, v193, v194, v195, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      OUTLINED_FUNCTION_282_2();
      OUTLINED_FUNCTION_18();

      __swift_destroy_boxed_opaque_existential_1(v292);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v292);
    }

    v107 = 0;
    if ((v77 & 1) == 0 && v11 != v10)
    {
      v106 = 0;
      if (v82)
      {
        v12 = v10;
        v13 = v11;
      }

      v107 = *&v11;
      goto LABEL_96;
    }

    v106 = 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v292);
    v106 = 1;
    v107 = 0;
  }

  v10 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
LABEL_96:
  v196 = ConversationController.isCameraMixedWithScreen.getter();
  LOBYTE(v310[0]) = v106;
  v297[0] = v271;
  LOBYTE(v297[1]) = v281;
  *(&v297[1] + 1) = 0;
  BYTE5(v297[1]) = v269;
  *(&v297[1] + 6) = 0;
  v297[3] = v270;
  LOBYTE(v297[4]) = BYTE1(a1);
  v297[5] = v107;
  *&v297[6] = v10;
  *&v297[7] = v12;
  *&v297[8] = v13;
  LOBYTE(v297[9]) = v106;
  *(&v297[9] + 1) = v196 & 1;
  v35 = 1;
LABEL_97:
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106();
  }

  v197 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v197, static Logger.conversationController);
  outlined init with copy of RecentCallProviding & RecentsControllable(v295, v294);
  v198 = v37;
  outlined init with copy of Participant.VideoInfo(v297, v293);
  v199 = Logger.logObject.getter();
  v200 = static os_log_type_t.default.getter();

  outlined destroy of Participant.VideoInfo(v297);
  if (os_log_type_enabled(v199, v200))
  {
    v201 = OUTLINED_FUNCTION_23();
    *&v292[0] = OUTLINED_FUNCTION_13_31();
    *v201 = 136315650;
    LOBYTE(v293[0]) = v198[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v202 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_522(v202, v203);
    OUTLINED_FUNCTION_173();

    *(v201 + 4) = v106;
    *(v201 + 12) = 2080;
    memcpy(v293, v297, 0x4BuLL);
    outlined init with copy of Participant.VideoInfo(v297, v310);
    v204 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_522(v204, v205);
    OUTLINED_FUNCTION_173();

    *(v201 + 14) = v106;
    *(v201 + 22) = 2080;
    v206 = v294[4];
    __swift_project_boxed_opaque_existential_1(v294, v294[3]);
    v207 = OUTLINED_FUNCTION_6_4();
    LOBYTE(v293[0]) = v208(v207, v206) & 1;
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_18_8();
    __swift_destroy_boxed_opaque_existential_1(v294);
    v209 = OUTLINED_FUNCTION_15_14();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v209, v210, v211);
    OUTLINED_FUNCTION_6_4();

    *(v201 + 24) = v200;
    v37 = v287;
    _os_log_impl(&dword_1BBC58000, v199, v200, "[%s] Updating local participant to use videoInfo: %s, isPreviewRunning: %s", v201, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_282_2();
    OUTLINED_FUNCTION_18();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v294);
  }

  OUTLINED_FUNCTION_265_3();
  _s15ConversationKit11ParticipantVWOcTm_17(v279, v8);
  ConversationController.conversationIsAVLess.getter();
  memcpy(v310, v297, 0x4BuLL);
  OUTLINED_FUNCTION_352();
  OUTLINED_FUNCTION_30_20();
  _s15ConversationKit11ParticipantVWOcTm_17(v212, v213);
  Participant.captionInfo.getter();
  OUTLINED_FUNCTION_254();
  _s15ConversationKit11ParticipantVWOhTm_18(v277, type metadata accessor for Participant);
  Participant.copresenceInfo.getter(v292);
  Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
  outlined destroy of CallControlsService?(v292, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
  outlined destroy of Participant.VideoInfo(v297);
  v214 = OUTLINED_FUNCTION_43_0();
  outlined consume of Participant.CaptionInfo?(v214);
  outlined destroy of CallControlsService?(v293, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  v215 = OUTLINED_FUNCTION_45_11();
  v36 = v286;
  _s15ConversationKit11ParticipantVWOhTm_18(v215, v216);
  __swift_destroy_boxed_opaque_existential_1(v295);
  v38 = v291;
  v7 = v278;
LABEL_103:
  v217 = v37 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_12_97();
  v291 = v217;
  v218 = OUTLINED_FUNCTION_139();
  _s15ConversationKit11ParticipantVWOcTm_17(v218, v219);
  OUTLINED_FUNCTION_211();
  static Participant.State.== infix(_:_:)();
  v221 = v220;
  OUTLINED_FUNCTION_86_7();
  _s15ConversationKit11ParticipantVWOhTm_18(v7, v222);
  if (v35 || (v221 & 1) == 0)
  {
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_42_31();
    v286 = v36;
    v225 = OUTLINED_FUNCTION_4_31();
    outlined assign with copy of Participant.State(v225, v226);
    swift_endAccess();
    v287 = v37;
    v161 = ConversationController.visibleParticipants.getter();
    v227 = 0;
    v158 = v161[2];
    v228 = (v38 + 16);
    v37 = (v38 + 8);
    while (1)
    {
      if (v158 == v227)
      {

        v232 = v287;
        goto LABEL_114;
      }

      if (v227 >= v161[2])
      {
        __break(1u);
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v229, v8);
      (*v228)(COERCE_DOUBLE(*&v289), v291 + *(v288 + 20), v290);
      v230 = static UUID.== infix(_:_:)();
      (*v37)(COERCE_DOUBLE(*&v289), v290);
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v8, v231);
      if (v230)
      {
        break;
      }

      v227 = (v227 + 1);
    }

    v232 = v287;
    v233 = v287 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v234 = *v233;
    if (*v233)
    {
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v291, v8);

      v234(v8, v227);
      v235 = OUTLINED_FUNCTION_40_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v235);
      OUTLINED_FUNCTION_0_222();
      _s15ConversationKit11ParticipantVWOhTm_18(v8, v236);
    }

LABEL_114:
    v237 = v232 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant;
    OUTLINED_FUNCTION_300_0();
    v238 = *v237;
    if (*v237)
    {
      v239 = *(v237 + 1);
      swift_endAccess();
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v291, v8);

      v238(v8, a1, a2, v284);
      v240 = OUTLINED_FUNCTION_91_2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v240);
      OUTLINED_FUNCTION_90_8();
      _s15ConversationKit11ParticipantVWOhTm_18(v8, v241);
      v224 = v36;
      v223 = v239;
      return _s15ConversationKit11ParticipantVWOhTm_18(v224, v223);
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v36, type metadata accessor for Participant);
    return swift_endAccess();
  }

  else
  {
    v223 = type metadata accessor for Participant;
    v224 = v36;
    return _s15ConversationKit11ParticipantVWOhTm_18(v224, v223);
  }
}

uint64_t outlined init with copy of Participant(uint64_t a1, uint64_t a2)
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
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_0()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_1(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_3(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_5(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_20_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_6(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_7()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_8()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_9(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_10(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_11()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_12(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_13(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_1();
  v5(v4);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_15(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_16()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantVWOcTm_17(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_228()
{
}

uint64_t getEnumTagSinglePayload for ScreenSharingSpectatorView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

void ConversationController.conversationIsAVLess.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_12();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v4);
  ConversationController.lookupActiveConversation()();
  if (v20)
  {
    v15 = v2;
    OUTLINED_FUNCTION_446();
    v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(v0 + v5, v18);
    v6 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v7 = *(v6 + 112);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_205_0();
    v7();
    swift_unknownObjectRelease();
    if (v17)
    {
      outlined init with take of TapInteractionHandler(&v16, v19);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_203_4(v21, v21[3]);
      v8 = OUTLINED_FUNCTION_84_9();
      v9(v8);
      OUTLINED_FUNCTION_203_4(v19, v20);
      v10 = OUTLINED_FUNCTION_84_9();
      v11(v10);
      OUTLINED_FUNCTION_1_5();
      static UUID.== infix(_:_:)();
      v12 = *(v15 + 8);
      v13 = OUTLINED_FUNCTION_45_1();
      v12(v13);
      v14 = OUTLINED_FUNCTION_309();
      v12(v14);
      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      outlined destroy of CallControlsService?(&v16, &_s15ConversationKit0A0_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    outlined destroy of CallControlsService?(v19, &_s15ConversationKit0A0_pSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.lookupActiveConversation()()
{
  OUTLINED_FUNCTION_29();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_6();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_2();
  ConversationController.updateConversationUUIDIfNeeded()();
  if (v28[3])
  {
    OUTLINED_FUNCTION_335();
    outlined init with take of TapInteractionHandler(&v29, v4);
  }

  else
  {
    outlined destroy of CallControlsService?(v28, &_s15ConversationKit0A0_pSgMd);
    v9 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v0 + v9, v1, &_s10Foundation4UUIDVSgMd);
    v10 = OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_115(v10, v11, v7);
    if (v12)
    {
      outlined destroy of CallControlsService?(v1, &_s10Foundation4UUIDVSgMd);
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_206();
      v14(v13);
      v15 = (v0 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_103_5(v15);
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_21();
      MEMORY[0x1EEE9AC00](v16);
      OUTLINED_FUNCTION_58_9();
      v17 = OUTLINED_FUNCTION_74_10();
      v18(v17);
      v19 = OUTLINED_FUNCTION_211();
      v21 = v20(v19);
      v22 = OUTLINED_FUNCTION_15_14();
      v24 = v23(v22);
      MEMORY[0x1EEE9AC00](v24);
      OUTLINED_FUNCTION_313();
      *(v25 - 16) = v2;
      specialized Sequence.first(where:)(partial apply for closure #1 in ConversationController.lookupActiveConversation(), v21, v4);

      v26 = OUTLINED_FUNCTION_33_0();
      v27(v26);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.updateConversationUUIDIfNeeded()()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_139();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_83_1();
  v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&v0[v10], v2, &_s10Foundation4UUIDVSgMd);
  v11 = type metadata accessor for UUID();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v11);
  outlined destroy of CallControlsService?(v2, &_s10Foundation4UUIDVSgMd);
  if (EnumTagSinglePayload == 1)
  {
    v100 = v11;
    v101 = v1;
    v13 = v5;
    v14 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v3[v14], &v105);
    v16 = v106;
    v15 = v107;
    OUTLINED_FUNCTION_179_2(&v105, v106);
    v17 = &v3[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v18 = *(v17 + 1);
    v19 = *(v15 + 104);
    v20 = swift_unknownObjectRetain();
    v19(&v103, v20, v18, v16, v15);
    swift_unknownObjectRelease();
    if (v104)
    {
      outlined init with take of TapInteractionHandler(&v103, v108);
      __swift_destroy_boxed_opaque_existential_1(&v105);
      v21 = *(v17 + 1);
      swift_getObjectType();
      v22 = *(v21 + 208);
      swift_unknownObjectRetain();
      v23 = OUTLINED_FUNCTION_2_125();
      LODWORD(v21) = v22(v23);
      swift_unknownObjectRelease();
      if (v21 != 6)
      {
        v5 = v13;
        if (one-time initialization token for conversationController != -1)
        {
          OUTLINED_FUNCTION_8_106();
        }

        v41 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v41, static Logger.conversationController);
        OUTLINED_FUNCTION_520();
        v42 = v3;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = OUTLINED_FUNCTION_23();
          v97 = OUTLINED_FUNCTION_13_31();
          OUTLINED_FUNCTION_49_0(v97);
          *v45 = 136315650;
          LOBYTE(v103) = v42[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
          v46 = String.init<A>(reflecting:)();
          v98 = v13;
          v47 = v44;
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v102);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          v50 = v101;
          v51 = OUTLINED_FUNCTION_183_4(&v105, v106);
          v52 = OUTLINED_FUNCTION_28_14();
          v53(v52);
          v54 = OUTLINED_FUNCTION_54_15();
          v57 = OUTLINED_FUNCTION_526(v54, v55, v56);
          specialized >> prefix<A>(_:)(v57, v58, v59, v60, v61, v62, v63, v64, v97, v98, v100, v101, v102[0], v102[1], v102[2], v102[3], v103, *(&v103 + 1));
          OUTLINED_FUNCTION_250();
          outlined destroy of CallControlsService?(v50, &_s10Foundation4UUIDVSgMd);
          __swift_destroy_boxed_opaque_existential_1(&v105);
          v65 = OUTLINED_FUNCTION_334();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v67);
          OUTLINED_FUNCTION_239_4();

          *(v45 + 14) = v51;
          *(v45 + 22) = 2080;
          v103 = *v17;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
          v68 = String.init<A>(reflecting:)();
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v102);

          *(v45 + 24) = v70;
          v71 = v47;
          v5 = v99;
          _os_log_impl(&dword_1BBC58000, v43, v71, "[%s] Update conversationUUID from nil to %s for call: %s", v45, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_83();
          OUTLINED_FUNCTION_104_2();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(&v105);
          OUTLINED_FUNCTION_500();
        }

        OUTLINED_FUNCTION_247_4(v108, v109);
        v72 = OUTLINED_FUNCTION_0_95();
        v73(v72);
        v74 = OUTLINED_FUNCTION_54_15();
        v77 = OUTLINED_FUNCTION_526(v74, v75, v76);
        ConversationController.conversationUUID.setter(v77);
        OUTLINED_FUNCTION_520();
        ConversationController.mostRecentActiveConversation.setter();
        v78 = *&v42[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController];
        v79 = v110;
        OUTLINED_FUNCTION_529(v108);
        v80 = OUTLINED_FUNCTION_246();
        v82 = v81(v80, v79);
        if (v82)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v24 = v108;
    }

    else
    {
      outlined destroy of CallControlsService?(&v103, &_s15ConversationKit0A0_pSgMd);
      v24 = &v105;
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
    v5 = v13;
    ConversationController.joinedOrPreparingConversation()(&v105);
    if (v106)
    {
      outlined init with take of TapInteractionHandler(&v105, v108);
      __swift_project_boxed_opaque_existential_1(v108, v109);
      v25 = OUTLINED_FUNCTION_0_95();
      v27 = v26(v25);
      if (v27)
      {

        if (one-time initialization token for conversationController != -1)
        {
          OUTLINED_FUNCTION_8_106();
        }

        v28 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v28, static Logger.conversationController);
        OUTLINED_FUNCTION_520();
        v29 = v3;
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = OUTLINED_FUNCTION_30_1();
          v33 = OUTLINED_FUNCTION_29_7();
          OUTLINED_FUNCTION_49_0(v33);
          *v32 = 136315394;
          LOBYTE(v103) = v29[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
          v34 = String.init<A>(reflecting:)();
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v102);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2080;
          outlined init with copy of CallCenterProvider(&v105, &v103);
          specialized >> prefix<A>(_:)(&v103);
          outlined destroy of CallControlsService?(&v103, &_s15ConversationKit0A0_pSgMd);
          __swift_destroy_boxed_opaque_existential_1(&v105);
          v37 = OUTLINED_FUNCTION_5_81();
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v39);

          *(v32 + 14) = v40;
          _os_log_impl(&dword_1BBC58000, v30, v31, "[%s] Update conversationUUID from nil to joinedOrPreparingConversation: %s", v32, 0x16u);
          OUTLINED_FUNCTION_399_0();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_104_2();
          OUTLINED_FUNCTION_2_2();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(&v105);
        }

        OUTLINED_FUNCTION_500();
        OUTLINED_FUNCTION_247_4(v108, v109);
        v83 = OUTLINED_FUNCTION_0_95();
        v84(v83);
        v85 = OUTLINED_FUNCTION_54_15();
        v88 = OUTLINED_FUNCTION_526(v85, v86, v87);
        ConversationController.conversationUUID.setter(v88);
        OUTLINED_FUNCTION_520();
        ConversationController.mostRecentActiveConversation.setter();
        v78 = *&v29[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController];
        v89 = v110;
        OUTLINED_FUNCTION_529(v108);
        v90 = OUTLINED_FUNCTION_246();
        v82 = v91(v90, v89);
        if (v82)
        {
LABEL_24:
          v92 = v82;
          v93 = [v82 handle];

LABEL_26:
          (*((*MEMORY[0x1E69E7D40] & *v78) + 0x140))(v93);
          OUTLINED_FUNCTION_82_0(v108);
          v94 = OUTLINED_FUNCTION_2_14();
          v96 = v95(v94);
          ConversationController.conversationState.setter(v96);
          outlined init with copy of CallCenterProvider(v108, v5);
          __swift_destroy_boxed_opaque_existential_1(v108);
          goto LABEL_27;
        }

LABEL_25:
        v93 = 0;
        goto LABEL_26;
      }

      __swift_destroy_boxed_opaque_existential_1(v108);
    }

    else
    {
      outlined destroy of CallControlsService?(&v105, &_s15ConversationKit0A0_pSgMd);
    }
  }

  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
LABEL_27:
  OUTLINED_FUNCTION_30_0();
}

uint64_t outlined init with copy of CallCenterProvider(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_2_3();
  (*v3)(a2);
  return a2;
}

double ConversationController.joinedOrPreparingConversation()@<D0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = (v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  swift_beginAccess();
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - v7;
  (*(v6 + 16))(&v54 - v7);
  v9 = (*(v4 + 16))(v3, v4);
  (*(v6 + 8))(v8, v3);
  v10 = 0;
  v11 = *(v9 + 16);
  v12 = v9 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v10)
    {

      v26 = v2[3];
      v25 = v2[4];
      v27 = __swift_project_boxed_opaque_existential_1(v2, v26);
      v54 = &v54;
      v28 = *(v26 - 8);
      MEMORY[0x1EEE9AC00](v27);
      v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v30);
      v31 = (*(v25 + 16))(v26, v25);
      (*(v28 + 8))(v30, v26);
      v32 = 0;
      v33 = *(v31 + 16);
      v34 = v31 + 32;
      v2 = MEMORY[0x1E69E7CC0];
      while (v33 != v32)
      {
        if (v32 >= *(v31 + 16))
        {
          goto LABEL_32;
        }

        outlined init with copy of CallCenterProvider(v34, &v58);
        v35 = v59;
        v36 = v60;
        __swift_project_boxed_opaque_existential_1(&v58, v59);
        if ((*(v36 + 56))(v35, v36) == 1)
        {
          outlined init with take of TapInteractionHandler(&v58, v56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1);
            v2 = v61;
          }

          v39 = v2[2];
          v38 = v2[3];
          if (v39 >= v38 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          }

          v40 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
          MEMORY[0x1EEE9AC00](v40);
          v42 = &v54 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v43 + 16))(v42);
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v39, v42, &v61);
          __swift_destroy_boxed_opaque_existential_1(v56);
          v2 = v61;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v58);
        }

        v34 += 40;
        ++v32;
      }

      if (*(v13 + 16) == 1)
      {

        specialized Collection.first.getter(v13);
      }

      else
      {
        if (v2[2] != 1)
        {
          if (one-time initialization token for conversationKit != -1)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }

        specialized Collection.first.getter(v2);
      }

      return result;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    outlined init with copy of CallCenterProvider(v12, &v58);
    v14 = v59;
    v15 = v60;
    __swift_project_boxed_opaque_existential_1(&v58, v59);
    if ((*(v15 + 56))(v14, v15) == 3 || (v16 = v59, v17 = v60, __swift_project_boxed_opaque_existential_1(&v58, v59), (*(v17 + 56))(v16, v17) == 2))
    {
      outlined init with take of TapInteractionHandler(&v58, v56);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v61 = v13;
      if ((v18 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
        v13 = v61;
      }

      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      }

      v21 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
      MEMORY[0x1EEE9AC00](v21);
      v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20, v23, &v61);
      __swift_destroy_boxed_opaque_existential_1(v56);
      v13 = v61;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v58);
    }

    v12 += 40;
    ++v10;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BC4BAA20;
  *&v58 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit0A0_pGMd);
  v46 = String.init<A>(reflecting:)();
  v48 = v47;
  v49 = MEMORY[0x1E69E6158];
  *(v45 + 56) = MEMORY[0x1E69E6158];
  v50 = lazy protocol witness table accessor for type String and conformance String();
  *(v45 + 64) = v50;
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  *&v58 = v2;
  v51 = String.init<A>(reflecting:)();
  *(v45 + 96) = v49;
  *(v45 + 104) = v50;
  *(v45 + 72) = v51;
  *(v45 + 80) = v52;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v53 = v55;
  *(v55 + 32) = 0;
  result = 0.0;
  *v53 = 0u;
  v53[1] = 0u;
  return result;
}

uint64_t CallCenter.activeConversations.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) conversationManager];
  v2 = [v1 activeConversations];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v3, &lazy cache variable for type metadata for TUConversation);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  specialized _arrayForceCast<A, B>(_:)();
  v6 = v5;

  return v6;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    outlined consume of Set<TUHandle>.Iterator._Variant();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void OUTLINED_FUNCTION_78_2()
{

  Participant.name(_:)();
}

uint64_t OUTLINED_FUNCTION_78_5(uint64_t a1)
{

  return MEMORY[0x1EEDC6410](v1, a1, 0);
}

uint64_t OUTLINED_FUNCTION_78_9(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_77_5@<X0>(uint64_t a1@<X8>)
{

  return outlined destroy of CallControlsService?(v1 + a1, v2);
}

uint64_t OUTLINED_FUNCTION_77_7()
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t OUTLINED_FUNCTION_77_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_77_9()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

id OUTLINED_FUNCTION_77_14(void *a1, double a2)
{
  LODWORD(a2) = 1148846080;

  return [a1 setContentCompressionResistancePriority:1 forAxis:a2];
}

uint64_t Participant.copresenceInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_7_94();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_189();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  OUTLINED_FUNCTION_208();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v5 = (v1 + *(v4 + 64));
    v14 = *v5;
    v15 = v5[1];
    v12 = v5[2];
    v13 = v5[3];
    outlined destroy of Participant.MediaInfo(v1 + *(v4 + 48));
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    result = (*(v6 + 8))(v1);
    v9 = v12;
    v8 = v13;
    v10 = v14;
    v11 = v15;
  }

  else
  {
    result = _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    v10 = 0uLL;
    v11 = 0uLL;
    v9 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = v9;
  a1[3] = v8;
  return result;
}

uint64_t outlined init with copy of Participant.State()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_20_3();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantV5StateOWOcTm_0()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined destroy of Participant.State()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantV5StateOWOhTm_0()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantV5StateOWOhTm_1()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _s15ConversationKit11ParticipantV5StateOWOhTm_2(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

void Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)()
{
  OUTLINED_FUNCTION_29();
  v183 = v0;
  v171 = v2;
  v168 = v3;
  v159 = v4;
  v160 = v5;
  v7 = v6;
  v9 = v8;
  LODWORD(v165) = v10;
  v164 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v155[3] = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v155[2] = v16;
  v17 = OUTLINED_FUNCTION_4_24();
  v166 = type metadata accessor for Participant.CountdownInfo(v17);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40();
  v162 = v19;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  v180 = v21;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v174 = v23;
  v175 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_40();
  v173 = v24;
  v25 = OUTLINED_FUNCTION_4_24();
  v184 = type metadata accessor for Participant(v25);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4();
  v179 = v27;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_32();
  v163 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4();
  v170 = v32;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_32();
  v182 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v36 = OUTLINED_FUNCTION_22(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4();
  v169 = v37;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_53_17();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  v167 = v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_32();
  v178 = v43;
  v44 = OUTLINED_FUNCTION_4_24();
  v45 = type metadata accessor for Participant.State(v44);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  v172 = v47;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v48);
  v50 = v155 - v49;
  v181 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v177 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40();
  v176 = v53;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v188 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 1;
  bzero(v192, 0xB1uLL);
  v185[0] = v165;
  v186 = v9;
  *&v54 = OUTLINED_FUNCTION_264_1();
  v193[2] = v54;
  v194[0] = v54;
  *(v194 + 11) = v54;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined destroy of CallControlsService?(v193, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
  memcpy(v187, v7, sizeof(v187));
  outlined assign with take of AttributedString?();
  v192[23] = v159;
  v192[24] = v160;
  v55 = v168;
  v192[25] = v168;
  OUTLINED_FUNCTION_0_189();
  v56 = v183;
  _s15ConversationKit11ParticipantV5StateOWOcTm_0();
  v158 = v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v165 = v1;
  if (EnumCaseMultiPayload == 4)
  {
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v59 = *(v58 + 48);
    v60 = &v50[*(v58 + 64)];
    v61 = *v60;
    v62 = v60[1];
    v156 = v60[3];
    v157 = v61;
    v63 = v60[4];
    v155[0] = v60[7];
    v155[1] = v63;
    OUTLINED_FUNCTION_171_1();
    outlined copy of Participant.CaptionInfo?(v64);
    v65 = v183;
    outlined consume of Participant.CopresenceInfo?(v157, v62);
    v67 = v176;
    v66 = v177;
    v68 = v181;
    (*(v177 + 32))(v176, v50, v181);
    outlined destroy of Participant.MediaInfo(&v50[v59]);
  }

  else
  {
    OUTLINED_FUNCTION_171_1();
    outlined copy of Participant.CaptionInfo?(v69);
    OUTLINED_FUNCTION_4_132();
    _s15ConversationKit11ParticipantV5StateOWOhTm_1();
    v67 = v176;
    Date.init()();
    v68 = v181;
    v66 = v177;
    v65 = v56;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
  OUTLINED_FUNCTION_192_1();
  v70 = v178;
  v72 = (v178 + v71);
  (*(v66 + 16))(v178, v67, v68);
  outlined init with copy of Participant.MediaInfo(v185, v70 + v55);
  v73 = v171;
  v74 = v171[1];
  *v72 = *v171;
  v72[1] = v74;
  v75 = v73[3];
  v72[2] = v73[2];
  v72[3] = v75;
  v76 = v158;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v76);
  v80 = OUTLINED_FUNCTION_36_31();
  v81 = v175;
  __swift_storeEnumTagSinglePayload(v80, v82, v83, v175);
  OUTLINED_FUNCTION_10_0();
  v84 = v161;
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v161);
  v88 = v167;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_22_5(v88);
  v89 = v184;
  if (v90)
  {
    OUTLINED_FUNCTION_0_189();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_22_5(v88);
    v91 = v88;
    v92 = v169;
    if (v90)
    {
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
    }

    else
    {
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      outlined destroy of CallControlsService?(v91, &_s15ConversationKit11ParticipantV5StateOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_148();
    _s15ConversationKit11ParticipantVWObTm_6();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    v92 = v169;
  }

  OUTLINED_FUNCTION_62_0();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v92, 1, v81);
  if (v90)
  {
    (*(v174 + 16))(v173, &v65[v89[5]], v81);
    OUTLINED_FUNCTION_115(v92, 1, v81);
    v93 = v170;
    v94 = v84;
    if (!v90)
    {
      outlined destroy of CallControlsService?(v92, &_s10Foundation4UUIDVSgMd);
    }
  }

  else
  {
    (*(v174 + 32))(v173, v92, v81);
    v93 = v170;
    v94 = v84;
  }

  v95 = v89[7];
  v96 = &v65[v89[6]];
  LODWORD(v159) = *v96;
  v97 = v96[1];
  v98 = v96[2];
  v99 = v96[3];
  LODWORD(v158) = v96[4];
  v100 = *&v65[v95];
  v101 = *&v65[v95 + 8];
  v102 = *&v65[v95 + 16];
  v170 = *&v65[v95 + 24];
  v171 = v102;
  v103 = *&v65[v95 + 32];
  v104 = v89[9];
  v168 = *&v65[v89[8]];
  v169 = v103;
  v105 = *&v65[v104 + 8];
  v160 = *&v65[v104];
  v167 = v105;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_3_62(v93);
  v156 = v100;
  v157 = v101;
  if (v90)
  {
    OUTLINED_FUNCTION_5_126();
    _s15ConversationKit11ParticipantV5StateOWOcTm_0();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v166);
    v109 = OUTLINED_FUNCTION_90_2();
    v65 = v183;
    v111 = v93;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v109, v110, v94);
    outlined copy of Participant.RemoteIdentifiers?(v100);

    if (EnumTagSinglePayload != 1)
    {
      outlined destroy of CallControlsService?(v111, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
    }
  }

  else
  {
    outlined init with take of Participant.CountdownInfo?(v93, v180);
    outlined copy of Participant.RemoteIdentifiers?(v100);
  }

  v113 = v89[16];
  LODWORD(v161) = v65[v89[15]];
  v114 = *&v65[v113];
  v115 = v179;
  OUTLINED_FUNCTION_86_6(v89[7]);
  v116 = v89[10];
  v117 = (v115 + v89[9]);
  *(v115 + v116) = 0;
  *(v115 + v184[11]) = MEMORY[0x1E69E7CD0];
  *(v115 + v184[12]) = 0;
  OUTLINED_FUNCTION_2_148();
  _s15ConversationKit11ParticipantVWObTm_6();
  (*(v174 + 32))(v115 + v184[5], v173, v175);
  v118 = (v115 + v184[6]);
  *v118 = v159;
  v118[1] = v97;
  v118[2] = v98;
  v118[3] = v99;
  v118[4] = v158;
  v175 = v114;

  OUTLINED_FUNCTION_258_0();
  OUTLINED_FUNCTION_123_2();
  outlined consume of Participant.RemoteIdentifiers?(v119);
  v120 = v157;
  *v65 = v156;
  *(v65 + 1) = v120;
  v121 = v170;
  *(v65 + 2) = v171;
  *(v65 + 3) = v121;
  v122 = v168;
  *(v65 + 4) = v169;
  *(v115 + v184[8]) = v122;
  v123 = v167;
  *v117 = v160;
  v117[1] = v123;
  v124 = v184;
  *(v115 + v184[15]) = v161;
  *(v115 + v124[13]) = 0;
  v125 = v180;
  v126 = OUTLINED_FUNCTION_71_12();
  v127 = v166;
  OUTLINED_FUNCTION_32_24(v126, v128);
  if (v90)
  {
    v129 = OUTLINED_FUNCTION_34_32();
    v130 = v181;
    __swift_storeEnumTagSinglePayload(v129, v131, v132, v181);
    v133 = OUTLINED_FUNCTION_33_35();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v130);
    v136 = v162;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v137, v138, v139, v130);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v140, v141, v142, v130);
    OUTLINED_FUNCTION_289();
    outlined assign with take of AttributedString?();
    OUTLINED_FUNCTION_289();
    outlined assign with take of AttributedString?();
    *(v136 + *(v127 + 24)) = 0;
    OUTLINED_FUNCTION_12_79();
    v143 = v163;
    v144 = v176;
    if (!v90)
    {
      outlined destroy of CallControlsService?(v125, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_153();
    _s15ConversationKit11ParticipantVWObTm_6();
    v143 = v163;
    v144 = v176;
  }

  OUTLINED_FUNCTION_1_153();
  v145 = v179;
  _s15ConversationKit11ParticipantVWObTm_6();
  *(v145 + v124[16]) = v175;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  v146 = v183;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v148 = (*(v147 + 608))();
  outlined destroy of CallControlsService?(v182, &_s15ConversationKit11ParticipantV13CountdownInfoVSgSgMd);
  outlined destroy of CallControlsService?(v165, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v178, &_s15ConversationKit11ParticipantV5StateOSgMd);
  (*(v177 + 8))(v144, v181);
  if (v148)
  {
    v149 = v124[11];
    v150 = *(v146 + v149);

    *(v143 + v149) = v150;
  }

  v151 = v124[12];
  v152 = *(v146 + v151);
  v153 = *(v143 + v151);
  v154 = v152;

  *(v143 + v151) = v152;
  OUTLINED_FUNCTION_3_138();
  _s15ConversationKit11ParticipantVWObTm_6();
  outlined destroy of Participant.MediaInfo(v185);
  OUTLINED_FUNCTION_30_0();
}

uint64_t getEnumTagSinglePayload for Participant.ScreenInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 209))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t getEnumTagSinglePayload for Participant.VideoInfo(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 75))
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

uint64_t outlined copy of Participant.CaptionInfo?(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit11ParticipantV10ScreenInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t get_enum_tag_for_layout_string_15ConversationKit11ParticipantV11CaptionInfoVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_61_2()
{
  *(v1 - 144) = v0;

  return swift_getKeyPath();
}

uint64_t OUTLINED_FUNCTION_61_3()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_61_4()
{

  return type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
}

uint64_t OUTLINED_FUNCTION_61_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);

  return __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
}

uint64_t getEnumTagSinglePayload for InCallViewModelHolder(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

void OUTLINED_FUNCTION_112_3()
{

  JUMPOUT(0x1BFB22010);
}

id OUTLINED_FUNCTION_112_5()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void *OUTLINED_FUNCTION_112_7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char __dst)
{

  return memcpy(&__dst, v12, 0xE8uLL);
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for IDSCapabilitiesChecker.Capabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v6 = *&v4[v5];
    if (*(v6 + 16) == 1)
    {
      specialized Collection.first.getter(v6, v0);
      type metadata accessor for Participant(0);
      v7 = OUTLINED_FUNCTION_173();
      OUTLINED_FUNCTION_115(v7, 1, v5);
      if (v8)
      {

        outlined destroy of CallControlsService?(v0, &_s15ConversationKit11ParticipantVSgMd);
      }

      else
      {
        v9 = *(v0 + *(v5 + 28));
        if (v9)
        {
          v10 = v9;
          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v0, v11);
          v12 = *(**&v4[OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker] + 224);

          v13 = v12(v10);

          if ((v13 & 0xFE) != 2)
          {
            return ((v13 & 0xFFFFFFFFFFFFuLL) >> 40) & 1;
          }
        }

        else
        {

          OUTLINED_FUNCTION_0_222();
          _s15ConversationKit11ParticipantVWOhTm_18(v0, v14);
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t VideoMessageController.viewStateReadyForVideoMessageRecording.setter(char a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_3_12();
  *(v2 + v4) = a1;
  return VideoMessageController.updateState()();
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)();
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void @nonobjc TUIDSLookupManager.beginQuery(withDestinations:)()
{
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v0 beginQueryWithDestinations_];
}

id OUTLINED_FUNCTION_111()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void *OUTLINED_FUNCTION_111_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = v1;
  *(v2 + 176) = 15;

  return static Layout.ConversationControls.values.getter((v2 + 240));
}

void OUTLINED_FUNCTION_111_3()
{
}

void OUTLINED_FUNCTION_111_4()
{

  JUMPOUT(0x1BFB20B10);
}

uint64_t OUTLINED_FUNCTION_111_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_111_6()
{
}

void OUTLINED_FUNCTION_111_7()
{
  v6 = (v4 + *(v0 + 24));
  *v6 = *(v5 - 284);
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = *(v5 - 288);
}

void *OUTLINED_FUNCTION_111_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t __dst, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0xE8uLL);
}

uint64_t OUTLINED_FUNCTION_111_10()
{

  return swift_getObjectType();
}

id OUTLINED_FUNCTION_85_2()
{

  return @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
}

uint64_t OUTLINED_FUNCTION_85_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_85_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 0;
  *v10 = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_9(float a1)
{
  *v1 = a1;

  return _typeName(_:qualified:)();
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidCreateNewSession.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_159_1()
{
  v2 = (*(v0 + 144) + 24);

  os_unfair_lock_lock(v2);
}

uint64_t OUTLINED_FUNCTION_159_2()
{
  *(v2 - 96) = v1;

  return specialized __RawDictionaryStorage.find<A>(_:)(v0);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_188_0()
{

  return UIButton.Configuration.contentInsets.setter();
}

uint64_t OUTLINED_FUNCTION_188_1()
{
  *v0 = 0x4089000000000000;

  return outlined init with copy of ConversationControlsType(v1 - 240, (v0 + 1));
}

uint64_t OUTLINED_FUNCTION_185_0()
{

  return String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
}

uint64_t OUTLINED_FUNCTION_185_1()
{
}

unint64_t OUTLINED_FUNCTION_185_4(uint64_t a1, unint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(v2 - 296);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 320));
}

id CallCenter.conversationManager.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit10CallCenter_tuCallCenter) conversationManager];

  return v1;
}

void CNKBannerPresentationManager.presentSystemHUD()(void (*a1)(void))
{
  v3 = OBJC_IVAR___CNKBannerPresentationManager_value;
  OUTLINED_FUNCTION_9_67();
  v4 = *(v1 + v3);
  a1();
}

Swift::Void __swiftcall BannerPresentationManager.preloadCallChanges()()
{
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.banners);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_166_3();
    *v1 = 138412290;
    *(v1 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  v14 = (*(v13 + 472))();
}

void *BannerPresentationManager.presentedBanner.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedBanner;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29();
  v436 = v25;
  v437 = v24;
  LOBYTE(v443) = v26;
  HIDWORD(v420) = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v441 = v34;
  v453 = a24;
  v451 = a23;
  ObjectType = swift_getObjectType();
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  v462 = v36;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_32();
  v457 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  v456 = v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v461 = v43;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_32();
  v423 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v47 = OUTLINED_FUNCTION_22(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  v418 = v48;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_32();
  v417 = v50;
  v51 = OUTLINED_FUNCTION_4_24();
  v454 = type metadata accessor for Participant.CountdownInfo(v51);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40();
  v442 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_1();
  v460 = v56;
  OUTLINED_FUNCTION_4_24();
  v459 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v434 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_4();
  v447 = v59;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5();
  v446 = v61;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_32();
  v448 = v63;
  v64 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant.State(v64);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_40();
  v445 = v66;
  v67 = OUTLINED_FUNCTION_4_24();
  v463 = type metadata accessor for Participant(v67);
  OUTLINED_FUNCTION_1();
  v422 = v68;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_4();
  v452 = v70;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_32();
  v435 = v72;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v438 = v74;
  v439 = v73;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_40();
  v440 = v75;
  OUTLINED_FUNCTION_4_24();
  v449 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v431 = v76;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_40();
  v429 = v78;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_40();
  v427 = v80;
  OUTLINED_FUNCTION_4_24();
  v81 = type metadata accessor for DispatchQoS();
  v82 = OUTLINED_FUNCTION_22(v81);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101_4();
  v483 = type metadata accessor for CallCenter();
  v484 = &protocol witness table for CallCenter;
  v482[0] = v33;
  v481[3] = &type metadata for DefaultParticipantMediaProviderCreator;
  v481[4] = &protocol witness table for DefaultParticipantMediaProviderCreator;
  OUTLINED_FUNCTION_20();
  v481[0] = swift_allocObject();
  outlined init with take of DefaultParticipantMediaProviderCreator(v31, v481[0] + 16);
  v480[3] = &type metadata for DefaultParticipantCaptionsProviderCreator;
  v480[4] = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
  OUTLINED_FUNCTION_24();
  v480[0] = swift_allocObject();
  outlined init with take of DefaultParticipantCaptionsProviderCreator(v29, v480[0] + 16);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController) = 0;
  v424 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  *&v476 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_261_2();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v83, v84);
  v85 = OUTLINED_FUNCTION_15_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v85);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v86, v87);
  v88 = v427;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v431 + 104))(v429, *MEMORY[0x1E69E8090], v449);
  *(a22 + v424) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes) = 0;
  OUTLINED_FUNCTION_336(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider) = 0;
  v89 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
  v90 = MEMORY[0x1E69E7CC0];
  *(a22 + v89) = Dictionary.init(dictionaryLiteral:)();
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
  OUTLINED_FUNCTION_466(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate);
  v95 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  OUTLINED_FUNCTION_13_83();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v96, v97);
  *(a22 + v95) = Dictionary.init(dictionaryLiteral:)();
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount) = 0;
  v428 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation) = v88;
  v98 = a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *v98 = 0;
  v98[8] = v88;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) = 0;
  v99 = OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags;
  *(a22 + v99) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff) = 0;
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_enableVideoOnJoin) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 0;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView) = 0;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v459);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v459);
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs) = v90;
  v106 = MEMORY[0x1E69E7CD0];
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsThatHaveReceivedFirstVideoFrame) = MEMORY[0x1E69E7CD0];
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame) = v106;
  v107 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  type metadata accessor for DispatchWorkItem();
  OUTLINED_FUNCTION_393();
  *(a22 + v107) = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v459);
  OUTLINED_FUNCTION_119_5(OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  v111 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + a22;
  *v111 = 0u;
  *(v111 + 1) = 0u;
  v419 = v111;
  *(v111 + 4) = 0;
  v112 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver;
  static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_24_1();
  v113 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  OUTLINED_FUNCTION_170();
  *(a22 + v112) = CPCarPlayObserver.init(queue:)();
  Date.init()();
  LOBYTE(v115) = a24 - 64;
  isUniquelyReferenced_nonNull_native = *(a24 + 192);
  v116 = (isUniquelyReferenced_nonNull_native)(a23, a24);
  specialized Set.count.getter(v116);
  OUTLINED_FUNCTION_173();

  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) = v112 == 1;
  v450 = a22;
  *(a22 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) = v443;
  v117 = OUTLINED_FUNCTION_208();
  v118(v117);
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_101;
  }

  while (1)
  {
    v432 = isUniquelyReferenced_nonNull_native;
    OUTLINED_FUNCTION_0_1();
    (*(v119 + 592))();
    OUTLINED_FUNCTION_0_1();
    (*(v120 + 168))();
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_289_0();
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v121 = static Colors.ParticipantGradients.default;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v454);
    v125 = v483;
    v126 = v484;
    OUTLINED_FUNCTION_113_5(v482);
    v127 = v126[13];

    v127(&v476, v441, v453, v125, v126);
    if (v478)
    {
      __swift_project_boxed_opaque_existential_1(&v476, v478);
      OUTLINED_FUNCTION_15_14();
      v128 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
      __swift_destroy_boxed_opaque_existential_1(&v476);
    }

    else
    {
      outlined destroy of CallControlsService?(&v476, &_s15ConversationKit0A0_pSgMd);
      v128 = 0;
    }

    v425 = type metadata accessor for ParticipantContactDetailsCache();
    v430 = specialized static ParticipantContactDetailsCache.cache(for:)();
    OUTLINED_FUNCTION_297_1();
    v129 = (v452 + v463[9]);
    *(v452 + v463[10]) = 0;
    *(v452 + v463[11]) = MEMORY[0x1E69E7CD0];
    *(v452 + v463[12]) = 0;
    OUTLINED_FUNCTION_89_9();
    _s15ConversationKit11ParticipantVWObTm_8(v445, v452);
    v444 = *(v434 + 32);
    v445 = v434 + 32;
    (v444)(v452 + v463[5], v448, v459);
    OUTLINED_FUNCTION_489(v452 + v463[6]);
    OUTLINED_FUNCTION_516(v130);
    OUTLINED_FUNCTION_297_1();
    *(v452 + v463[8]) = v121;
    *v129 = 0;
    v129[1] = 0;
    *(v452 + v463[15]) = v128;
    *(v452 + v463[13]) = 0;
    v131 = OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_115(v131, v132, v454);
    if (v133)
    {
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v134, v135, v136, v439);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
      v155 = v442;
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
      v145 = *(v454 + 20);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v146, v147, v148, v149);
      OUTLINED_FUNCTION_455();
      OUTLINED_FUNCTION_123_2();
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v150, v151, v152);
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v418, v442 + v145, &_s10Foundation4DateVSgMd);
      *(v442 + *(v454 + 24)) = 0;
      v153 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v153, v154, v454);
      isUniquelyReferenced_nonNull_native = v435;
      v156 = v432;
      if (!v133)
      {
        outlined destroy of CallControlsService?(v460, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_24_57();
      v155 = v442;
      _s15ConversationKit11ParticipantVWObTm_8(v460, v442);
      isUniquelyReferenced_nonNull_native = v435;
      v156 = v432;
    }

    v157 = v441;
    v158 = swift_getObjectType();
    v159 = v463;
    OUTLINED_FUNCTION_24_57();
    _s15ConversationKit11ParticipantVWObTm_8(v155, v452 + v160);
    *(v452 + v463[16]) = v430;
    OUTLINED_FUNCTION_43_30();
    _s15ConversationKit11ParticipantVWObTm_8(v452, isUniquelyReferenced_nonNull_native);
    _s15ConversationKit11ParticipantVWObTm_8(isUniquelyReferenced_nonNull_native, v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant);
    v161 = v156(v158, v453);
    v162 = specialized Set.count.getter(v161);
    if (v162)
    {
      break;
    }

    v187 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v435 = a21;
    MEMORY[0x1EEE9AC00](v186);
    OUTLINED_FUNCTION_182_5();
    *(v188 - 32) = v440;
    *(v188 - 24) = v482;
    *(v188 - 16) = v441;
    *(v188 - 8) = v453;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(closure #2 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply, v189, v187);
    OUTLINED_FUNCTION_439();
    *(v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants) = v157;
    OUTLINED_FUNCTION_179_2(v482, v483);
    OUTLINED_FUNCTION_97_0();
    v190();
    if (v478)
    {
      OUTLINED_FUNCTION_2_167(&v476);
      v191 = OUTLINED_FUNCTION_0_212();
      v193 = v192(v191);
      MEMORY[0x1EEE9AC00](v193);
      OUTLINED_FUNCTION_182_5();
      *(v194 - 32) = v440;
      *(v194 - 24) = v482;
      *(v194 - 16) = v441;
      *(v194 - 8) = v453;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(closure #3 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply, v195, v193);
      OUTLINED_FUNCTION_246();

      __swift_destroy_boxed_opaque_existential_1(&v476);
    }

    else
    {
      outlined destroy of CallControlsService?(&v476, &_s15ConversationKit0A0_pSgMd);
      v187 = MEMORY[0x1E69E7CC0];
    }

    *(v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants) = v187;
    outlined init with copy of CallCenterProvider(v482, v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    v196 = (v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    *v196 = v441;
    v196[1] = v453;
    outlined init with copy of CallCenterProvider(v481, v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator);
    outlined init with copy of CallCenterProvider(v480, v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator);
    *(v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_includeLocalParticipantInVisibleParticipants) = BYTE4(v420) & 1;
    outlined init with copy of CallCenterProvider(v482, &v476);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v197 = *(v450 + v428);
    v198 = swift_unknownObjectRetain_n();
    v199 = specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(v198, &v476, v197, 0, v451, v453);
    v200 = v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    *v200 = v199;
    *(v200 + 1) = v201;
    v200[16] = v202;
    *(v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker) = v436;
    v203 = (v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults);
    *v203 = a21;
    v203[1] = &protocol witness table for Defaults;
    outlined init with copy of CallCenterProvider(v482, &v476);
    v204 = objc_opt_self();

    v455 = v204;
    v205 = [v204 defaultCenter];
    OUTLINED_FUNCTION_24_1();
    v206 = objc_allocWithZone(type metadata accessor for VideoMessageController());
    VideoMessageController.init(callCenter:notificationCenter:)();
    *(v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController) = v207;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v437, &v472, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
    if (v474)
    {
      outlined init with take of TapInteractionHandler(&v472, &v476);
    }

    else
    {
      v478 = &type metadata for SingleDisplaySharingSession;
      v479 = &protocol witness table for SingleDisplaySharingSession;
      OUTLINED_FUNCTION_194();
      *&v476 = swift_allocObject();
      OUTLINED_FUNCTION_467(v476);
    }

    LOBYTE(v115) = v443;
    OUTLINED_FUNCTION_30_2();
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(&v476, v419, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
    swift_endAccess();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v208 = 0;
    if (v200[16] < 0 && v443 == 1)
    {
      OUTLINED_FUNCTION_423_0();
      v209 = OUTLINED_FUNCTION_56_19();
      v211 = v210(v209);
      v208 = [v211 isPreviewRunning];
    }

    *(v450 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) = v208;
    v471.receiver = v450;
    v471.super_class = ObjectType;
    v212 = objc_msgSendSuper2(&v471, sel_init);
    v213 = *&v212[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver];
    OUTLINED_FUNCTION_259_1();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v214, v215);
    v216 = v212;
    v217 = v213;
    OUTLINED_FUNCTION_170_0();
    v218 = v217;
    dispatch thunk of CPCarPlayObserver.delegate.setter();

    OUTLINED_FUNCTION_179_2(v482, v483);
    OUTLINED_FUNCTION_97_0();
    v219();
    if (v474)
    {
      outlined init with take of TapInteractionHandler(&v472, &v476);
      v218 = v216;
      ConversationController.updateIdentityClaimingAssociations(in:)();
      __swift_destroy_boxed_opaque_existential_1(&v476);
    }

    else
    {
      outlined destroy of CallControlsService?(&v472, &_s15ConversationKit0A0_pSgMd);
    }

    OUTLINED_FUNCTION_20();
    v220 = swift_allocObject();
    OUTLINED_FUNCTION_278(v220);
    swift_unknownObjectWeakInit();

    v221 = &v216[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock];
    OUTLINED_FUNCTION_3_5();
    *v221 = closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply;
    *(v221 + 1) = v218;

    v222 = OUTLINED_FUNCTION_258_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v222);

    if (v443 - 1 <= 1)
    {
      v223 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(&v216[v223], &v476);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit31ParticipantMediaProviderCreator_pMd);
      if (OUTLINED_FUNCTION_518())
      {
        v470 = 0;
        outlined init with take of DefaultParticipantMediaProviderCreator(&v469, &v468);
        swift_unknownObjectWeakAssign();
        v478 = &type metadata for DefaultParticipantMediaProviderCreator;
        v479 = &protocol witness table for DefaultParticipantMediaProviderCreator;
        OUTLINED_FUNCTION_20();
        *&v476 = swift_allocObject();
        outlined init with take of DefaultParticipantMediaProviderCreator(&v468, v476 + 16);
        OUTLINED_FUNCTION_30_2();
        __swift_destroy_boxed_opaque_existential_1(&v216[v223]);
        outlined init with take of TapInteractionHandler(&v476, &v216[v223]);
        swift_endAccess();
      }

      else
      {
        v469 = 0;
        v470 = 1;
        outlined destroy of CallControlsService?(&v469, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMd);
      }
    }

    v224 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v216[v224], &v476);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit34ParticipantCaptionsProviderCreator_pMd);
    if (OUTLINED_FUNCTION_518())
    {
      outlined init with take of DefaultParticipantCaptionsProviderCreator(&v468, v467);
      v467[1] = &protocol witness table for ConversationController;
      swift_unknownObjectWeakAssign();
      v478 = &type metadata for DefaultParticipantCaptionsProviderCreator;
      v479 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
      OUTLINED_FUNCTION_24();
      *&v476 = swift_allocObject();
      outlined init with take of DefaultParticipantCaptionsProviderCreator(v467, v476 + 16);
      OUTLINED_FUNCTION_30_2();
      __swift_destroy_boxed_opaque_existential_1(&v216[v224]);
      outlined init with take of TapInteractionHandler(&v476, &v216[v224]);
      swift_endAccess();
    }

    else
    {
      v468 = xmmword_1BC4BB7D0;
      outlined destroy of CallControlsService?(&v468, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMd);
    }

    static ParticipantContactDetailsCache.resetAll()();
    v225 = &v216[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v460 = v225;
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v225, *(v225 + 1), v225[16], 2);
    ConversationController.lookupActiveConversation()();
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(&v476, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    isUniquelyReferenced_nonNull_native = static Features.shared;
    if (Features.nudityDetectionEnabled.getter())
    {
      static SensitiveContentPolicy.prefetch()();
    }

    v226 = &v216[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    OUTLINED_FUNCTION_30_2();
    v227 = *(v226 + 4);
    v228 = OUTLINED_FUNCTION_208();
    __swift_mutable_project_boxed_opaque_existential_1(v228, v229);
    v230 = *(v227 + 56);
    v231 = v216;
    OUTLINED_FUNCTION_97_0();
    v230();
    swift_endAccess();
    OUTLINED_FUNCTION_0_1();
    v233 = *(v232 + 176);
    v234 = v231;
    OUTLINED_FUNCTION_173();

    v233(v212, &protocol witness table for ConversationController);

    ConversationController.updateIDSStatusForVideoMessaging()();
    ConversationController.setupScreenSharingSessionCallbacks()();
    (*(v453 + 200))(v451);
    OUTLINED_FUNCTION_413_0();
    ConversationController.updateScreenSharingSession(with:)(v235);

    LOBYTE(v226) = ConversationController.updateIsUsingIPadExternalCamera()();
    v236 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    OUTLINED_FUNCTION_3_5();
    v231[v236] = v226 & 1;
    v155 = [v455 defaultCenter];
    v159 = &off_1E7FE9000;
    OUTLINED_FUNCTION_374_0(v155, sel_addObserver_selector_name_object_, v237, sel_handleLocalVideoPreviewFirstFrameArrived_, *MEMORY[0x1E69D90D8]);

    v238 = OUTLINED_FUNCTION_88_9();
    [v238 v239];
    v240 = OUTLINED_FUNCTION_88_9();
    [v240 v241];
    v242 = OUTLINED_FUNCTION_88_9();
    [v242 v243];
    v244 = OUTLINED_FUNCTION_88_9();
    [v244 v245];
    v246 = OUTLINED_FUNCTION_147_2();
    v442 = v231;
    OUTLINED_FUNCTION_374_0(v246, v247, v248, v249, v250);
    if (v443 == 1)
    {
      v251 = OUTLINED_FUNCTION_147_2();
      OUTLINED_FUNCTION_330_0(v251, v252, v253, v254, v255);
      v256 = OUTLINED_FUNCTION_65_15();
      [v256 v257];
      v258 = OUTLINED_FUNCTION_65_15();
      [v258 v259];
      v260 = OUTLINED_FUNCTION_65_15();
      [v260 v261];
      v262 = OUTLINED_FUNCTION_65_15();
      [v262 v263];
      v264 = OUTLINED_FUNCTION_65_15();
      [v264 v265];
      v266 = OUTLINED_FUNCTION_65_15();
      [v266 v267];
      v268 = OUTLINED_FUNCTION_65_15();
      [v268 v269];
      v270 = OUTLINED_FUNCTION_65_15();
      [v270 v271];
      v272 = OUTLINED_FUNCTION_65_15();
      [v272 v273];
    }

    v274 = OUTLINED_FUNCTION_147_2();
    OUTLINED_FUNCTION_330_0(v274, v275, v276, v277, v278);
    v279 = OUTLINED_FUNCTION_65_15();
    [v279 v280];
    v281 = OUTLINED_FUNCTION_65_15();
    [v281 v282];
    v283 = OUTLINED_FUNCTION_65_15();
    [v283 v284];
    v285 = OUTLINED_FUNCTION_65_15();
    [v285 v286];
    if (!v443)
    {
      v287 = OUTLINED_FUNCTION_147_2();
      [v287 v288];
    }

    v289 = OUTLINED_FUNCTION_147_2();
    OUTLINED_FUNCTION_330_0(v289, v290, v291, v292, v293);
    v294 = OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_442(v294, v295, v296, v297, v298);
    v299 = OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_442(v299, v300, v301, v302, v303);
    v304 = OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_442(v304, v305, v306, v307, v308);
    if (Features.nudityDetectionEnabled.getter())
    {
      OUTLINED_FUNCTION_294_0();
      v311 = MEMORY[0x1BFB209B0](v309 + 48, v310 | 0x8000000000000000);
      v312 = OUTLINED_FUNCTION_147_2();
      [v312 v313];
    }

    v314 = OUTLINED_FUNCTION_147_2();
    OUTLINED_FUNCTION_330_0(v314, v315, v316, v317, v318);
    v319 = OUTLINED_FUNCTION_65_15();
    [v319 v320];
    if (static Platform.current.getter() != 3)
    {
      goto LABEL_74;
    }

    if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
    {
      goto LABEL_103;
    }

LABEL_73:
    v321 = OUTLINED_FUNCTION_147_2();
    OUTLINED_FUNCTION_163_3(v321, v322, v323, v324, v325);
    OUTLINED_FUNCTION_294_0();
    v328 = MEMORY[0x1BFB209B0](v326 + 8, v327 | 0x8000000000000000);
    v329 = OUTLINED_FUNCTION_73_10();
    [v329 v330];

LABEL_74:
    v331 = OUTLINED_FUNCTION_147_2();
    OUTLINED_FUNCTION_163_3(v331, v332, v333, v334, v335);
    v336 = OUTLINED_FUNCTION_73_10();
    [v336 v337];
    v338 = OUTLINED_FUNCTION_73_10();
    [v338 v339];
    v340 = OUTLINED_FUNCTION_73_10();
    [v340 v341];
    v342 = OUTLINED_FUNCTION_73_10();
    [v342 v343];
    v344 = OUTLINED_FUNCTION_73_10();
    [v344 v345];
    v346 = OUTLINED_FUNCTION_73_10();
    [v346 v347];
    v433 = v155;
    OUTLINED_FUNCTION_163_3(v155, v159[464], v348, v349, *MEMORY[0x1E69D8D68]);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v350 = swift_allocObject();
    *(v350 + 16) = xmmword_1BC4BB990;
    v351 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_452();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v352, v353, v354);
    specialized >> prefix<A>(_:)(v423, v355, v356, v357, v358, v359, v360, v361, v416, v417, v418, v419, v420, ObjectType, v422, v423, v425, v428);
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_172_1();
    outlined destroy of CallControlsService?(v362, v363);
    v364 = MEMORY[0x1E69E6158];
    *(v350 + 56) = MEMORY[0x1E69E6158];
    v365 = lazy protocol witness table accessor for type String and conformance String();
    *(v350 + 64) = v365;
    *(v350 + 32) = v351;
    *(v350 + 40) = isUniquelyReferenced_nonNull_native;
    v366 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *&v476 = *(v442 + v366);
    type metadata accessor for TUConversationState(0);
    v367 = String.init<A>(reflecting:)();
    *(v350 + 96) = v364;
    *(v350 + 104) = v365;
    *(v350 + 72) = v367;
    *(v350 + 80) = v368;
    v369 = *(v460 + 16);
    v476 = *v460;
    v477 = v369;
    v370 = String.init<A>(reflecting:)();
    *(v350 + 136) = v364;
    *(v350 + 144) = v365;
    *(v350 + 112) = v370;
    *(v350 + 120) = v371;
    LOBYTE(v476) = v115;
    v372 = String.init<A>(reflecting:)();
    *(v350 + 176) = v364;
    *(v350 + 184) = v365;
    v428 = v365;
    *(v350 + 152) = v372;
    *(v350 + 160) = v373;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    OUTLINED_FUNCTION_37_22();
    v374 = swift_allocObject();
    v460 = 1;
    *(v374 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    OUTLINED_FUNCTION_472();
    v454 = v375;
    v376 = swift_allocObject();
    *(v376 + 16) = xmmword_1BC4BA940;
    v377 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(v442 + v377, v376 + v366);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *&v476 = v376;

    specialized Array.append<A>(contentsOf:)(v378);
    v379 = v476;
    v380 = *(v476 + 16);
    if (!v380)
    {

      v381 = MEMORY[0x1E69E7CC0];
LABEL_91:
      *&v476 = v381;
      v409 = OUTLINED_FUNCTION_15_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(v409);
      OUTLINED_FUNCTION_100_6(&lazy protocol witness table cache variable for type [String] and conformance [A]);
      OUTLINED_FUNCTION_469();
      BidirectionalCollection<>.joined(separator:)();
      OUTLINED_FUNCTION_18_8();

      *&v476 = &v476;
      *(&v476 + 1) = &_sSaySSGMR;
      v410 = MEMORY[0x1E69E6158];
      v411 = String.init<A>(reflecting:)();
      *(v374 + 56) = v410;
      *(v374 + 64) = v428;
      *(v374 + 32) = v411;
      *(v374 + 40) = v412;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      ConversationController.fetchExistingScreenSharingAttributes()();
      OUTLINED_FUNCTION_287();
      if (v133)
      {
        OUTLINED_FUNCTION_423_0();
        v413 = OUTLINED_FUNCTION_56_19();
        v415 = v414(v413);
        [v415 startPreview];
        swift_unknownObjectRelease();

        outlined destroy of CallControlsService?(v437, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
      }

      else
      {
        outlined destroy of CallControlsService?(v437, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1(v480);
      __swift_destroy_boxed_opaque_existential_1(v481);
      (*(v438 + 8))(v440, v439);
      __swift_destroy_boxed_opaque_existential_1(v482);
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v426 = v374;
    v466 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v115 = 0;
    v452 = v379;
    v453 = *(v379 + 16);
    v381 = v466;
    v450 = (v434 + 16);
    v451 = v380;
    v443 = (v434 + 8);
    isUniquelyReferenced_nonNull_native = &_s10Foundation4UUIDVSgMR;
    while (v453 != v115)
    {
      if (v115 >= *(v379 + 16))
      {
        goto LABEL_97;
      }

      v382 = *(v458 + 48);
      OUTLINED_FUNCTION_1_186();
      v460 = v383;
      _s15ConversationKit11ParticipantVWOcTm_17(v383, v457 + v382);
      *v462 = v115;
      v384 = v462 + *(v458 + 48);
      OUTLINED_FUNCTION_4_150();
      _s15ConversationKit11ParticipantVWObTm_8(v457 + v382, v384);
      *&v476 = v115;
      v464 = dispatch thunk of CustomStringConvertible.description.getter();
      v465 = v385;
      MEMORY[0x1BFB20B10](979659048, 0xE400000000000000);
      v386 = *v450;
      (*v450)(v461, v384 + v463[5], v459);
      v387 = OUTLINED_FUNCTION_54_15();
      __swift_storeEnumTagSinglePayload(v387, v388, v389, v459);
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v461, v456, &_s10Foundation4UUIDVSgMd);
      v390 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v390, v391, v459);
      if (v133)
      {
        v392 = OUTLINED_FUNCTION_339();
        outlined destroy of CallControlsService?(v392, v393);
      }

      else
      {
        v448 = v466;
        OUTLINED_FUNCTION_172_1();
        v444();
        v386(v447, v446, v459);
        OUTLINED_FUNCTION_316();
        String.init<A>(reflecting:)();
        (*v443)(v446, v459);
      }

      outlined destroy of CallControlsService?(v461, &_s10Foundation4UUIDVSgMd);
      v394 = OUTLINED_FUNCTION_1_5();
      MEMORY[0x1BFB20B10](v394);

      v395 = OUTLINED_FUNCTION_469();
      MEMORY[0x1BFB20B10](v395);
      v396 = v384 + v463[7];
      v397 = *v396;
      if (*v396)
      {
        v399 = *(v396 + 24);
        v398 = *(v396 + 32);
        v400 = *(v396 + 16);
        v401 = *(v396 + 8);
        *&v476 = v397;
        *(&v476 + 1) = v401;
        v477 = v400 & 1;
        v478 = v399;
        v479 = v398;

        v402 = v397;
        v403 = String.init<A>(reflecting:)();
        v405 = v404;
      }

      else
      {
        v405 = 0xE300000000000000;
        v403 = OUTLINED_FUNCTION_12_96();
      }

      MEMORY[0x1BFB20B10](v403, v405);

      outlined destroy of CallControlsService?(v462, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
      v407 = *(v466 + 16);
      v406 = *(v466 + 24);
      if (v407 >= v406 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v406);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v466 + 16) = v407 + 1;
      v408 = v466 + 16 * v407;
      *(v408 + 32) = v464;
      *(v408 + 40) = v465;
      ++v115;
      v379 = v452;
      if (v451 == v115)
      {

        v374 = v426;
        goto LABEL_91;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    OUTLINED_FUNCTION_0_9();
  }

  v157 = v162;
  v475 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v472 = specialized Set.startIndex.getter(v161);
  *(&v472 + 1) = v163;
  v473 = v164 & 1;
  if (v157 < 0)
  {
    __break(1u);
LABEL_103:
    OUTLINED_FUNCTION_288_0();
    goto LABEL_73;
  }

  v165 = 0;
  v460 = v161 & 0xC000000000000001;
  v166 = v161 & 0xFFFFFFFFFFFFFF8;
  if (v161 < 0)
  {
    v166 = v161;
  }

  v454 = v166;
  v452 = v161 + 56;
  v448 = v161 + 64;
  while (1)
  {
    v167 = __OFADD__(v165++, 1);
    if (v167)
    {
      __break(1u);
      goto LABEL_96;
    }

    v115 = v472;
    v168 = DWORD2(v472);
    isUniquelyReferenced_nonNull_native = v473;
    v169 = OUTLINED_FUNCTION_5_81();
    specialized Set.subscript.getter(v169, v170, isUniquelyReferenced_nonNull_native, v161);
    v172 = v171;
    if (TUNormalizedHandleForTUHandle())
    {
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    OUTLINED_FUNCTION_299();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v173 = &v475;
    specialized ContiguousArray._endMutation()();
    if (v460)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_105;
    }

    if ((v115 & 0x8000000000000000) != 0)
    {
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_484();
    if (v174 == v167)
    {
      goto LABEL_98;
    }

    if (((*(v452 + 8 * (v115 >> 6)) >> v115) & 1) == 0)
    {
      goto LABEL_99;
    }

    if (*(v161 + 36) != v168)
    {
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_482();
    if (v133)
    {
      v177 = v175 << 6;
      v178 = v175 + 1;
      v179 = (v448 + 8 * v175);
      while (v178 < (&v478 + 7) >> 6)
      {
        v180 = *v179++;
        isUniquelyReferenced_nonNull_native = v180;
        v177 += 64;
        ++v178;
        if (v180)
        {
          v181 = OUTLINED_FUNCTION_5_81();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v181, v182, 0);
          v173 = (__clz(__rbit64(isUniquelyReferenced_nonNull_native)) + v177);
          goto LABEL_38;
        }
      }

      v183 = OUTLINED_FUNCTION_5_81();
      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v183, v184, 0);
    }

    else
    {
      OUTLINED_FUNCTION_481();
    }

LABEL_38:
    v185 = *(v161 + 36);
    *&v472 = v173;
    *(&v472 + 1) = v185;
    v473 = 0;
LABEL_39:
    if (v165 == v157)
    {

      v186 = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v472, *(&v472 + 1), v473);
      v187 = v475;
      goto LABEL_42;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    OUTLINED_FUNCTION_5_81();
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    }

    else
    {
      isUniquelyReferenced_nonNull_native = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd);
    v176 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v176(&v476, 0);
    goto LABEL_39;
  }

  __break(1u);
LABEL_105:
  __break(1u);
}

uint64_t sub_1BBCB08C8()
{
  if (v0[2])
  {
  }

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  if (v0[12])
  {
  }

  OUTLINED_FUNCTION_194();

  return swift_deallocObject();
}

uint64_t sub_1BBCB0954()
{
  MEMORY[0x1BFB23F10](v0 + 16);
  OUTLINED_FUNCTION_19_16();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return _s15ConversationKit11ParticipantV5StateOWOhTm_1();
}

uint64_t @nonobjc TUCall.remoteParticipantHandles.getter()
{
  v1 = [v0 remoteParticipantHandles];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v2, &lazy cache variable for type metadata for TUHandle);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t VideoMessageController.updateState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v35 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v35 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - v12;
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_ignoresStateUpdates) & 1) == 0)
  {
    v14 = MEMORY[0x1E69E7D40];
    v15 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))(result);
    if (v15)
    {
      v16 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL;
      if (*(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_latestVideoMessageSandboxURL) && (v17 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID, swift_beginAccess(), outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v17, v13, &_s10Foundation4UUIDVSgMd), v18 = type metadata accessor for UUID(), LODWORD(v17) = __swift_getEnumTagSinglePayload(v13, 1, v18), v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4UUIDVSgMd), v14 = MEMORY[0x1E69E7D40], v17 == 1))
      {
        v19 = 9;
      }

      else if (*(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_sendingInProgress))
      {
        v19 = 8;
      }

      else if (*(v0 + v16) && (v20 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID, swift_beginAccess(), outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v20, v10, &_s10Foundation4UUIDVSgMd), v21 = type metadata accessor for UUID(), LODWORD(v20) = __swift_getEnumTagSinglePayload(v10, 1, v21), v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation4UUIDVSgMd), v20 != 1))
      {
        v19 = 7;
      }

      else
      {
        v22 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_currentRecordingUUID;
        swift_beginAccess();
        outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v22, v7, &_s10Foundation4UUIDVSgMd);
        v23 = type metadata accessor for UUID();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v23);
        v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation4UUIDVSgMd);
        if (EnumTagSinglePayload == 1 || *(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession) == 1)
        {
          outlined init with copy of (CGFloat, AutoplayCandidate)(v0 + v22, v4, &_s10Foundation4UUIDVSgMd);
          v25 = __swift_getEnumTagSinglePayload(v4, 1, v23);
          v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s10Foundation4UUIDVSgMd);
          if (v25 == 1 && (*(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_hasActiveOrPendingRecordingSession) & 1) == 0)
          {
            if (*(v0 + OBJC_IVAR____TtC15ConversationKit22VideoMessageController_countdownSink))
            {
              v19 = 4;
            }

            else
            {
              v26 = *((*v14 & *v0) + 0x1A0);
              if ((v26)(v15) & 1) != 0 && (VideoMessageController.callStateReadyForVideoMessageRecording.getter(), (v27) && (v15 = (*((*v14 & *v0) + 0x2F0))(), (v15))
              {
                v19 = 3;
              }

              else
              {
                v15 = v26();
                if (v15 & 1) != 0 && (VideoMessageController.callStateReadyForVideoMessageRecording.getter(), (v15))
                {
                  v19 = 2;
                }

                else
                {
                  v19 = 1;
                }
              }
            }
          }

          else
          {
            v19 = 5;
          }
        }

        else
        {
          v19 = 6;
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v28 = (*((*v14 & *v0) + 0xF0))(v15);
    v29 = VideoMessageController.State.rawValue.getter(v28);
    v31 = v30;
    if (v29 == VideoMessageController.State.rawValue.getter(v19) && v31 == v32)
    {
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v34 & 1) == 0)
      {
        return VideoMessageController.state.setter();
      }
    }
  }

  return result;
}

uint64_t VideoMessageController.isVideoMessagingEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22VideoMessageController_isVideoMessagingEnabled;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidBegin.setter in conformance SingleDisplaySharingSession(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_142_3@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void BannerPresentationManager.conversationControlsManager.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_101();
  v10 = BannerPresentationManager.associatedCall.getter();
  v12 = MEMORY[0x1E69E7D40];
  if (v10)
  {
    v13 = v10;
    v14 = v11;
    v310 = v2;
    v312 = v1;
    v15 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager;
    v318 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager;
    v319 = v11;
    v315 = v6;
    if (!*&v0[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager])
    {
      OUTLINED_FUNCTION_129_3();
      if (!v163)
      {
        OUTLINED_FUNCTION_0_178();
      }

      v73 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v73, static Logger.banners);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_240(v75))
      {
        v76 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_182_0(v76);
        OUTLINED_FUNCTION_8_10();
        _os_log_impl(v77, v78, v79, v80, v81, 2u);
        OUTLINED_FUNCTION_27();
      }

      goto LABEL_31;
    }

    v308 = v0;
    OUTLINED_FUNCTION_1_57();
    v17 = *(v16 + 672);
    v306 = v18;
    v19 = v17();
    v21 = v20;
    OUTLINED_FUNCTION_129_3();
    if (!v163)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.banners);
    OUTLINED_FUNCTION_28_0();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v316 = v306;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v303 = v4;
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_30_1();
      v322[0] = OUTLINED_FUNCTION_29_7();
      *v25 = 136315394;
      ObjectType = swift_getObjectType();
      v301 = v21;
      v27 = *(v21 + 56);
      v28 = v27(ObjectType, v21);
      v30 = OUTLINED_FUNCTION_167_1(v28, v29);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = swift_getObjectType();
      v32 = (*(v319 + 56))(v31, v319);
      v34 = OUTLINED_FUNCTION_167_1(v32, v33);

      *(v25 + 14) = v34;
      v14 = v319;
      _os_log_impl(&dword_1BBC58000, v23, v24, "Found existing manager - current call: %s, new call: %s", v25, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();

      v35 = v21;
    }

    else
    {

      v35 = v21;
      v27 = *(v21 + 56);
    }

    v157 = swift_getObjectType();
    v317 = v19;
    v158 = v27(v157, v35);
    v160 = v159;
    v161 = swift_getObjectType();
    v163 = v158 == (*(v14 + 56))(v161, v14) && v160 == v162;
    if (v163)
    {
    }

    else
    {
      v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v164 & 1) == 0)
      {
        v165 = v317;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v166 = v13;
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v299 = v161;
        if (os_log_type_enabled(v167, v168))
        {
          v169 = OUTLINED_FUNCTION_30_1();
          v297 = OUTLINED_FUNCTION_29_7();
          v322[0] = v297;
          *v169 = 136315394;
          v170 = v310;
          HIDWORD(v294) = v168;
          (*(v35 + 64))(v157, v35);
          specialized >> prefix<A>(_:)(v310, v171, v172, v173, v174, v175, v176, v177, v292, v294, v297, v161, v301, v303, v306, v308, v310, v312);
          v179 = v178;
          v181 = v180;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v170, &_s10Foundation4UUIDVSgMd);
          v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v181, v322);

          *(v169 + 4) = v182;
          *(v169 + 12) = 2080;
          v183 = v35;
          v184 = v319;
          (*(v319 + 64))(v161, v319);
          specialized >> prefix<A>(_:)(v170, v185, v186, v187, v188, v189, v190, v191, v293, v295, v298, v300, v302, v304, v307, v309, v311, v314);
          v193 = v192;
          v195 = v194;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v170, &_s10Foundation4UUIDVSgMd);
          v196 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v193, v195, v322);

          *(v169 + 14) = v196;
          _os_log_impl(&dword_1BBC58000, v167, BYTE4(v294), "Different UUIDs - checking groupUUID. Current: %s, New: %s", v169, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_239();
          v165 = v317;
          OUTLINED_FUNCTION_27();

          v12 = MEMORY[0x1E69E7D40];
          v197 = v303;
        }

        else
        {

          v12 = MEMORY[0x1E69E7D40];
          v197 = v303;
          v183 = v35;
          v184 = v319;
        }

        v3 = v308;
        v13 = v166;
        v14 = v184;
        if (closure #1 in BannerPresentationManager.conversationControlsManager.getter(v165, v183, v166, v184))
        {
          swift_unknownObjectRetain();
          v215 = Logger.logObject.getter();
          v216 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v215, v216))
          {
            v217 = OUTLINED_FUNCTION_42();
            v218 = v166;
            v219 = OUTLINED_FUNCTION_23();
            v322[0] = v219;
            *v217 = 136315138;
            v220 = v310;
            v221 = OUTLINED_FUNCTION_140_5();
            v222(v221);
            specialized >> prefix<A>(_:)(v310, v223, v224, v225, v226, v227, v228, v229, v292, v294, v296, v299, v301, v303, v306, v308, v310, v312);
            v231 = v230;
            v233 = v232;
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v220, &_s10Foundation4UUIDVSgMd);
            v234 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v231, v233, v322);
            v14 = v319;

            *(v217 + 4) = v234;
            _os_log_impl(&dword_1BBC58000, v215, v216, "Same conversation group %s - updating existing manager instead of creating new one", v217, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v219);
            v13 = v218;
            OUTLINED_FUNCTION_27();
            v197 = v305;
            OUTLINED_FUNCTION_27();
          }

          OUTLINED_FUNCTION_33_6();
          v236 = (*(v235 + 392))();
          if (v236)
          {

            type metadata accessor for PlaceholderCall();
            v237 = swift_dynamicCastClass();
            if (v237)
            {
              if (*(v237 + 16) == 1)
              {
                *(v308 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_shouldRequestHUDPresentationOnAVUpgradeOrDowngrade) = 1;
                v238 = Logger.logObject.getter();
                v239 = static os_log_type_t.default.getter();
                if (OUTLINED_FUNCTION_240(v239))
                {
                  v240 = OUTLINED_FUNCTION_33();
                  OUTLINED_FUNCTION_182_0(v240);
                  OUTLINED_FUNCTION_8_10();
                  _os_log_impl(v241, v242, v243, v244, v245, 2u);
                  OUTLINED_FUNCTION_4_4();
                }

                v269 = 1;
              }

              else
              {
                v269 = 0;
              }
            }

            else
            {
              v269 = 0;
            }
          }

          else
          {
            v269 = 0;
          }

          OUTLINED_FUNCTION_1_57();
          (*(v270 + 2720))(v13, v14);
          OUTLINED_FUNCTION_11_23();
          v272 = *((*v12 & v271) + 0x110);
          v273 = v272();
          if (v273)
          {
            v274 = v273;
            v275 = OUTLINED_FUNCTION_140_5();
            v276(v275);
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v315 + 8))(v312, v197);
            [v274 bannerPresentationManagerUpdatedControlsManagerCallUUID_];

            swift_unknownObjectRelease();
          }

          if (v269)
          {
            v278 = Logger.logObject.getter();
            v279 = static os_log_type_t.default.getter();
            if (OUTLINED_FUNCTION_240(v279))
            {
              v280 = OUTLINED_FUNCTION_33();
              OUTLINED_FUNCTION_182_0(v280);
              OUTLINED_FUNCTION_8_10();
              _os_log_impl(v281, v282, v283, v284, v285, 2u);
              OUTLINED_FUNCTION_4_4();
            }

            v286 = v272();
            if (v286)
            {
              v287 = v286;
              v288 = OUTLINED_FUNCTION_140_5();
              v289(v288);
              UUID._bridgeToObjectiveC()();
              v290 = OUTLINED_FUNCTION_158_3();
              v291(v290);
              [v287 bannerPresentationManagerBannerPresentationManagerAVUpgradedCallUUID_];

              swift_unknownObjectRelease();
            }
          }

          BannerPresentationManager.setupMoreMenu(with:_:)(v13, v14, v306);
          swift_unknownObjectRelease();
          goto LABEL_107;
        }

        v246 = Logger.logObject.getter();
        v247 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_240(v247))
        {
          v248 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_182_0(v248);
          OUTLINED_FUNCTION_8_10();
          _os_log_impl(v249, v250, v251, v252, v253, 2u);
          OUTLINED_FUNCTION_4_4();
        }

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_91_0();

        v15 = v318;
LABEL_31:
        if (*&v3[v15])
        {
          OUTLINED_FUNCTION_89_7();
          v83 = *(v82 + 2112);
          v85 = v84;
          if (v83())
          {
            [v85 dismissConfirmLeavePTTChannelAlert];
          }
        }

        v86 = [*&v3[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter] pendingUpgradeCall];
        if (!v86)
        {
          OUTLINED_FUNCTION_129_3();
          if (!v163)
          {
            OUTLINED_FUNCTION_0_178();
          }

          v87 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v87, static Logger.banners);
          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.default.getter();
          if (OUTLINED_FUNCTION_240(v89))
          {
            v90 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_182_0(v90);
            OUTLINED_FUNCTION_8_10();
            _os_log_impl(v91, v92, v93, v94, v95, 2u);
            OUTLINED_FUNCTION_27();
          }

          OUTLINED_FUNCTION_11();
          v86 = MEMORY[0x1BFB209B0](0xD00000000000003ELL);
          [v3 dismissPresentedBannerForReason:v86 animated:1];
        }

        OUTLINED_FUNCTION_129_3();
        if (!v163)
        {
          OUTLINED_FUNCTION_0_178();
        }

        v96 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v96, static Logger.banners);
        swift_unknownObjectRetain();
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = OUTLINED_FUNCTION_42();
          v100 = OUTLINED_FUNCTION_23();
          v322[0] = v100;
          *v99 = 136315138;
          swift_getObjectType();
          v321[0] = v13;
          swift_unknownObjectRetain();
          v101 = String.init<A>(describing:)();
          v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v322);
          v14 = v319;

          *(v99 + 4) = v103;
          OUTLINED_FUNCTION_8_10();
          _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v100);
          OUTLINED_FUNCTION_2_2();
          v15 = v318;
          OUTLINED_FUNCTION_27();
        }

        v109 = *&v3[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_placeholderCallCenter];
        v110 = objc_opt_self();
        swift_unknownObjectRetain();
        v111 = v109;
        v112 = [v110 sharedInstance];
        OUTLINED_FUNCTION_24_1();
        v113 = objc_allocWithZone(type metadata accessor for CallCenter());
        v114 = CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v110, v111, 0, 1);
        v115 = _s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tt1g5(v13, v14, v114);
        OUTLINED_FUNCTION_4_120();
        v117 = *((*v12 & v116) + 0x4C0);
        v118 = swift_unknownObjectRetain();
        v117(v118, &protocol witness table for BannerPresentationManager);
        OUTLINED_FUNCTION_174_0();
        v120 = *((*v12 & v119) + 0x4A8);
        v121 = swift_unknownObjectRetain();
        v120(v121, &protocol witness table for BannerPresentationManager);
        OUTLINED_FUNCTION_11_23();
        (*((*v12 & v122) + 0x128))();
        OUTLINED_FUNCTION_174_0();
        (*((*v12 & v123) + 0x520))();
        OUTLINED_FUNCTION_11_23();
        (*((*v12 & v124) + 0x140))();
        OUTLINED_FUNCTION_174_0();
        (*((*v12 & v125) + 0x4F0))();
        OUTLINED_FUNCTION_174_0();
        v127 = *((*v12 & v126) + 0x550);
        v128 = swift_unknownObjectRetain();
        v127(v128, &protocol witness table for BannerPresentationManager);
        v129 = *&v3[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_gameControllerManager];
        v130 = *((*v12 & *v115) + 0x348);
        v131 = v129;
        v130(v129);
        if (*&v3[v15])
        {
          OUTLINED_FUNCTION_89_7();
          v133 = *(v132 + 1216);
          v135 = v134;
          v136 = OUTLINED_FUNCTION_24_1();
          v133(v136, 0);

          if (*&v3[v15])
          {
            OUTLINED_FUNCTION_89_7();
            v138 = *(v137 + 1192);
            v140 = v139;
            v141 = OUTLINED_FUNCTION_24_1();
            v138(v141, 0);
          }
        }

        v142 = v115;
        BannerPresentationManager._conversationControlsManager.setter(v115);
        OUTLINED_FUNCTION_11_23();
        if ((*((*v12 & v143) + 0x200))())
        {
          OUTLINED_FUNCTION_82_11();
          OUTLINED_FUNCTION_3_52();
          (*(v144 + 448))(v142);
        }

        OUTLINED_FUNCTION_1_57();
        v145 += 84;
        v146 = *v145;
        v147 = (*v145)();
        ConversationControlsManager.controlsHUDUpdate(for:)(v147, v148, v149, v150, v151, v152, v153, v154, v292, v294, v296, v299, v301, v303, v306, v308, v310, v312, v315, v316);
        swift_unknownObjectRelease();
        outlined init with copy of ConversationControlsType(v322, v321);
        OUTLINED_FUNCTION_11_23();
        v156 = (*((*v12 & v155) + 0x1E8))();
        if (v156)
        {
        }

        else if (ConversationControlsType.isFirstOrThirdPartyIncomingCall.getter())
        {
          v205 = swift_getObjectType();
          if (((*(v319 + 136))(v205) & 1) == 0 && !Features.shouldShowFullScreenCallWaiting.getter() && (Features.isIncomingCallBannerEnabled.getter() & 1) != 0 && (SBUIIsSystemApertureEnabled() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_0();
            BannerPresentationManager.presentBanner(as:type:reply:)();
            goto LABEL_71;
          }
        }

        BannerPresentationManager.updatePresentedHUD(type:replacingNotice:)();
LABEL_71:
        OUTLINED_FUNCTION_33_6();
        v207 = (*(v206 + 272))();
        if (v207)
        {
          v208 = v207;
          v146();
          v210 = v209;
          v211 = swift_getObjectType();
          (*(v210 + 232))(v211, v210);
          swift_unknownObjectRelease();
          UUID._bridgeToObjectiveC()();
          v212 = OUTLINED_FUNCTION_158_3();
          v213(v212);
          [v208 bannerPresentationManagerUpdatedControlsManagerCallUUID_];

          swift_unknownObjectRelease();
        }

        BannerPresentationManager.setupMoreMenu(with:_:)(v13, v319, v142);
        swift_unknownObjectRelease();

        outlined destroy of ConversationControlsType(v321);
        outlined destroy of ControlsHUDUpdate(v322);
        v214 = *&v3[v318];
        goto LABEL_108;
      }
    }

    v52 = Logger.logObject.getter();
    v198 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v198))
    {
      v199 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v199);
      OUTLINED_FUNCTION_145_5();
      _os_log_impl(v200, v201, v202, v203, v204, 2u);
      OUTLINED_FUNCTION_18();
    }

    swift_unknownObjectRelease();
LABEL_64:
    swift_unknownObjectRelease();

    goto LABEL_108;
  }

  if (SBUIIsSystemApertureEnabled() && *&v0[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager])
  {
    OUTLINED_FUNCTION_1_57();
    v37 = *(v36 + 672);
    v320 = v38;
    v37();
    v40 = v39;
    OUTLINED_FUNCTION_129_3();
    if (!v163)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.banners);
    swift_unknownObjectRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_42();
      v45 = OUTLINED_FUNCTION_23();
      v322[0] = v45;
      *v44 = 136315138;
      swift_getObjectType();
      OUTLINED_FUNCTION_91_10();
      v47 = v46();
      v49 = OUTLINED_FUNCTION_167_1(v47, v48);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1BBC58000, v42, v43, "Found existing manager with call: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (v50)
    {
      v51 = v50;
      swift_unknownObjectRetain();
      if ([v51 status] == 5 || objc_msgSend(v51, sel_status) == 6)
      {
        swift_unknownObjectRetain();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease_n();
        if (!os_log_type_enabled(v52, v53))
        {
          goto LABEL_64;
        }

        v54 = OUTLINED_FUNCTION_30_1();
        v322[0] = OUTLINED_FUNCTION_29_7();
        *v54 = 136315394;
        swift_getObjectType();
        OUTLINED_FUNCTION_91_10();
        v56 = v55();
        OUTLINED_FUNCTION_167_1(v56, v57);
        OUTLINED_FUNCTION_212();

        *(v54 + 4) = v40;
        *(v54 + 12) = 2080;
        LODWORD(v321[0]) = [v51 status];
        type metadata accessor for TUCallStatus(0);
        v58 = String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_167_1(v58, v59);
        OUTLINED_FUNCTION_212();

        *(v54 + 14) = v40;
        _os_log_impl(&dword_1BBC58000, v52, v53, "Preserving manager during call transition - existing call %s status: %s", v54, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
LABEL_92:
        OUTLINED_FUNCTION_27();

LABEL_107:
        swift_unknownObjectRelease();
        goto LABEL_108;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for PlaceholderCall();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      v52 = Logger.logObject.getter();
      v255 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v52, v255))
      {
        goto LABEL_64;
      }

      v256 = OUTLINED_FUNCTION_42();
      v257 = OUTLINED_FUNCTION_23();
      v322[0] = v257;
      *v256 = 136315138;
      swift_getObjectType();
      OUTLINED_FUNCTION_91_10();
      v259 = v258();
      OUTLINED_FUNCTION_167_1(v259, v260);
      OUTLINED_FUNCTION_212();

      *(v256 + 4) = v40;
      _os_log_impl(&dword_1BBC58000, v52, v255, "Preserving manager for existing PlaceholderCall %s", v256, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v257);
      OUTLINED_FUNCTION_27();
      goto LABEL_92;
    }

    v261 = Logger.logObject.getter();
    v262 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_240(v262))
    {
      v263 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v263);
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v264, v265, v266, v267, v268, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_129_3();
    if (!v163)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v60 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v60, static Logger.banners);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v62))
    {
      v63 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v63);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_18();
    }
  }

  v69 = OUTLINED_FUNCTION_115_5();
  BannerPresentationManager._conversationControlsManager.setter(v69);
  OUTLINED_FUNCTION_33_6();
  v71 = (*(v70 + 272))();
  if (v71)
  {
    [v71 bannerPresentationManagerUpdatedControlsManagerCallUUID_];
    swift_unknownObjectRelease();
  }

  v72 = MEMORY[0x1BFB209B0](0x7669746361206F4ELL, 0xEE006C6C61632065);
  [v3 dismissPresentedBannerForReason:v72 animated:1];

LABEL_108:
  OUTLINED_FUNCTION_30_0();
}

void *BannerPresentationManager.associatedCall.getter()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_1_57();
  v1 += 49;
  v2 = *v1;
  v3 = (*v1)();
  if (v3)
  {
    v4 = v3;
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.banners);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
LABEL_10:
      v14 = OUTLINED_FUNCTION_42();
      v37 = v2;
      v15 = OUTLINED_FUNCTION_23();
      v39 = v15;
      *v14 = 136315138;
      v16 = [v6 callUUID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v39);

      *(v14 + 4) = v19;
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v2 = v37;
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_4_4();

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_33_6();
  v10 = (*(v9 + 368))();
  if (v10)
  {
    v11 = v10;
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.banners);
    v6 = v11;
    v7 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v13))
    {
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (PlaceholderCallCenter.activeCall.getter())
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v29, static Logger.banners);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v38 = v2;
      v32 = OUTLINED_FUNCTION_42();
      v33 = OUTLINED_FUNCTION_23();
      v39 = v33;
      *v32 = 136315138;
      UUID.uuidString.getter();
      v34 = String.init<A>(reflecting:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v39);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1BBC58000, v30, v31, "Associated call is a placeholder call %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_27();
      v2 = v38;
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }
  }

LABEL_12:
  if ((Features.callManagerEnabled.getter() & 1) != 0 && (v25 = [*(v0 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter) resolvedIncomingCall]) != 0 || (v25 = v2()) != 0 || (OUTLINED_FUNCTION_33_6(), (v25 = (*(v26 + 368))()) != 0))
  {
    v27 = v25;
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  }

  else
  {
    v27 = PlaceholderCallCenter.activeCall.getter();
    if (v27)
    {
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type PlaceholderCall and conformance PlaceholderCall, type metadata accessor for PlaceholderCall);
    }
  }

  return v27;
}

BOOL OUTLINED_FUNCTION_158_2()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

Swift::Void __swiftcall BannerPresentationManager.dismissPresentedBanner(forReason:animated:)(Swift::String forReason, Swift::Bool animated)
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_55();
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_53_1();
  v7 = (*(v6 + 488))();
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_20();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = v4;
    v10[5] = v2;
    v11 = *((*v5 & *v8) + 0x498);

    v12 = v8;
    OUTLINED_FUNCTION_28_0();

    v13 = OUTLINED_FUNCTION_45_1();
    v11(v13);

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t sub_1BBCB2FA4()
{

  return swift_deallocObject();
}

char *_s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  swift_unknownObjectWeakInit();
  v36 = 0;
  swift_unknownObjectWeakInit();
  v6 = objc_opt_self();
  swift_unknownObjectRetain();
  v7 = [v6 sharedManager];
  type metadata accessor for IDSCapabilitiesChecker();
  v8 = swift_allocObject();
  v33 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
  v34 = &protocol witness table for TUIDSLookupManager;
  v32[0] = v7;
  type metadata accessor for UUID();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v9 = MEMORY[0x1E69E7CC0];
  v8[2] = Dictionary.init(dictionaryLiteral:)();
  v8[3] = Dictionary.init(dictionaryLiteral:)();
  v8[5] = 0;
  swift_unknownObjectWeakInit();
  v8[6] = v9;
  outlined init with copy of IDSLookupManager(v32, (v8 + 7));
  v10 = [objc_opt_self() defaultCenter];
  [v10 addObserver:v8 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v7];

  __swift_destroy_boxed_opaque_existential_1(v32);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v11 = static Defaults.shared;
  v12 = objc_allocWithZone(type metadata accessor for ConversationController(0));
  outlined init with copy of DefaultParticipantMediaProviderCreator(&v37, &v31);
  outlined init with copy of DefaultParticipantCaptionsProviderCreator(&v35, v32);
  ObjectType = swift_getObjectType();
  swift_retain_n();
  specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(a1, a3, &v31, v32, 0, v38, 0, v8, v11, v12, ObjectType, a2, v30, v31, v32[0], v32[1], v32[2], v33, v34, v35, v36, v37, *&v38[0], *(&v38[0] + 1));
  v15 = v14;
  outlined destroy of DefaultParticipantCaptionsProviderCreator(&v35);
  outlined destroy of DefaultParticipantMediaProviderCreator(&v37);
  type metadata accessor for EntitlementsChecker();
  v16 = swift_allocObject();
  v17 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  v18 = v15;
  *(v16 + 16) = [v17 init];
  v19 = objc_opt_self();

  v20 = [v19 sharedInstance];
  [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v21 = objc_allocWithZone(type metadata accessor for ConversationControlsManager(0));
  specialized ConversationControlsManager.init(conversationController:entitlementsChecker:defaults:callCenter:featureFlags:)();
  v23 = v22;

  v24 = objc_allocWithZone(MEMORY[0x1E697B6C8]);
  v25 = v23;
  v26 = [v24 init];
  swift_unknownObjectRelease();

  v27 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_contentExtractor;
  swift_beginAccess();
  v28 = *&v25[v27];
  *&v25[v27] = v26;

  return v25;
}