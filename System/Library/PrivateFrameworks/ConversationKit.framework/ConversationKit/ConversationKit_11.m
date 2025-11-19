Swift::Void __swiftcall SystemApertureInCallLeadingView.layoutSubviews()()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for SystemApertureInCallLeadingView();
  objc_msgSendSuper2(&v32, sel_layoutSubviews);
  v8 = [v0 effectiveUserInterfaceLayoutDirection];
  v9 = *&v0[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_iconView];
  OUTLINED_FUNCTION_3_25();
  [v9 sizeThatFits_];
  v13 = v12;
  v15 = v14;
  v16 = 0.0;
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_3_25();
    v16 = CGRectGetWidth(v33) - v13;
  }

  OUTLINED_FUNCTION_3_25();
  v17 = (CGRectGetHeight(v34) - v15) * 0.5;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E7048], v1);
  v18 = [v0 traitCollection];
  [v18 displayScale];
  v20 = v19;
  v21 = CGFloat.rounded(_:toScale:)(v7, v19, v16);
  v22 = CGFloat.rounded(_:toScale:)(v7, v20, v17);

  (*(v3 + 8))(v7, v1);
  [v9 setFrame_];
  OUTLINED_FUNCTION_3_25();
  Width = CGRectGetWidth(v35);
  v24 = *&v0[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_interItemSpacing];
  v25 = Width - v13 - v24;
  OUTLINED_FUNCTION_3_25();
  Height = CGRectGetHeight(v36);
  v27 = *&v0[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_durationView];
  [v27 sizeThatFits_];
  v29 = v28;
  if (v8 == 1)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v13 + v24;
  }

  OUTLINED_FUNCTION_3_25();
  v31 = (CGRectGetHeight(v37) - v29) * 0.5;
  OUTLINED_FUNCTION_3_25();
  [v27 setFrame_];
}

CGSize __swiftcall SystemApertureInCallLeadingView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_iconView) sizeThatFits_];
  v5 = v4;
  v7 = v6;
  v8 = width - v4;
  v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_interItemSpacing);
  [*(v1 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_durationView) sizeThatFits_];
  if (v7 > v11)
  {
    v11 = v7;
  }

  v12 = v5 + v9 + v10 + *(v1 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_extraDurationPadding);
  result.height = v11;
  result.width = v12;
  return result;
}

double SystemApertureInCallLeadingView.preferredLayoutMargins.getter@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_iconView)) + 0xA8))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

id SystemApertureInCallLeadingView.updateIconView()()
{
  v1 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_iconView);
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  (*((*v6 & *v5) + 0x70))(v4);
  return [v0 setNeedsLayout];
}

uint64_t outlined destroy of SystemApertureIcon(uint64_t a1)
{
  v2 = type metadata accessor for SystemApertureIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double protocol witness for SystemApertureAccessoryView.preferredLayoutMargins.getter in conformance SystemApertureInCallLeadingView@<D0>(uint64_t a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

char *specialized SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = objc_allocWithZone(type metadata accessor for SystemApertureInCallLeadingView());
  (*(v10 + 16))(v14, a2, a4);
  v16 = specialized SystemApertureInCallLeadingView.init(icon:callDurationProvider:)(a1, v14, v15, a4, a5);
  (*(v10 + 8))(a2, a4);
  return v16;
}

char *specialized SystemApertureInCallLeadingView.init(icon:callDurationProvider:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  v10 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - v19;
  (*(v13 + 32))(&v52 - v19, a2, a4, v18);
  *&a3[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_interItemSpacing] = 0x4010000000000000;
  *&a3[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_extraDurationPadding] = 0x4000000000000000;
  outlined init with copy of SystemApertureIcon(a1, &a3[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_icon]);
  outlined init with copy of SystemApertureIcon(a1, v12);
  v21 = objc_allocWithZone(type metadata accessor for SystemApertureIconView(0));
  SystemApertureIconView.init(icon:isDetached:)();
  *&a3[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_iconView] = v22;
  v23 = [objc_opt_self() monospacedDigitSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB980]];
  v24 = objc_allocWithZone(type metadata accessor for LiveCallDurationView());
  (*(v13 + 16))(v16, v20, a4);
  *&a3[OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_durationView] = specialized LiveCallDurationView.init(font:callDurationProvider:voiceOverUpdateHandler:)(v23, v16, 0, 0, v24, a4, a5);
  v25 = type metadata accessor for SystemApertureInCallLeadingView();
  v54.receiver = a3;
  v54.super_class = v25;
  v26 = objc_msgSendSuper2(&v54, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v27 = one-time initialization token for conversationControls;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, &static Logger.conversationControls);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v32 = 136446210;
    v33 = _typeName(_:qualified:)();
    v35 = v13;
    v36 = a4;
    v37 = v20;
    v38 = a1;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v53);

    *(v32 + 4) = v39;
    a1 = v38;
    v20 = v37;
    a4 = v36;
    v13 = v35;
    _os_log_impl(&dword_1BBC58000, v30, v31, "[SystemAperture] %{public}s created", v32, 0xCu);
    v40 = v52;
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1BFB23DF0](v40, -1, -1);
    MEMORY[0x1BFB23DF0](v32, -1, -1);
  }

  [v28 addSubview_];
  v41 = OBJC_IVAR____TtC15ConversationKit31SystemApertureInCallLeadingView_durationView;
  [v28 addSubview_];
  v42 = one-time initialization token for conversationKit;
  v43 = v28;
  if (v42 != -1)
  {
    swift_once();
  }

  v55._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0x494F474E4F5F5841;
  v44._object = 0xEF4C4C41435F474ELL;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v45, v55);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v46._countAndFlagsBits, v46._object, v43);

  SystemApertureInCallLeadingView.updateIconView()();
  v47 = *&v28[v41];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = *((*MEMORY[0x1E69E7D40] & *v47) + 0x60);
  v50 = v47;

  v49(partial apply for closure #1 in SystemApertureInCallLeadingView.init(icon:callDurationProvider:), v48);

  outlined destroy of SystemApertureIcon(a1);
  (*(v13 + 8))(v20, a4);

  return v43;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for SystemApertureInCallLeadingView()
{
  result = type metadata singleton initialization cache for SystemApertureInCallLeadingView;
  if (!type metadata singleton initialization cache for SystemApertureInCallLeadingView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SystemApertureInCallLeadingView()
{
  result = type metadata accessor for SystemApertureIcon(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v8 = type metadata accessor for Logger();
  v1[19] = v8;
  v1[20] = *(v8 - 8);
  v1[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static CallScreeningActor.shared;
  v1[22] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:), v9, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isScreeningLiveActivityEnabled.getter() & 1) != 0 || (Features.receptionistEnabled.getter())
  {
    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v3 = *(v0 + 144);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v18 = type metadata accessor for LockScreenActivityService();
    v6 = *(v2 + 16);
    v7 = OUTLINED_FUNCTION_2_32();
    v6(v7);
    outlined init with copy of IDSLookupManager(v5, v0 + 16);
    v8 = *(v3 + OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer_config + 16);

    v9 = LockScreenActivityService.__allocating_init(logger:activityController:callServices:updateActivityInterval:)(v1, v4, v0 + 16, v8);
    *(v0 + 184) = v9;
    v10 = OUTLINED_FUNCTION_2_32();
    v6(v10);
    outlined init with copy of IDSLookupManager(v5, v0 + 56);
    v11 = type metadata accessor for HUDActivityService(0);
    swift_allocObject();
    v12 = HUDActivityService.init(logger:callServices:)(v1, (v0 + 56));
    *(v0 + 192) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit18ActivityController_pGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BC4BAA20;
    *(v13 + 56) = v18;
    *(v13 + 64) = &protocol witness table for LockScreenActivityService<A>;
    *(v13 + 32) = v9;
    *(v13 + 96) = v11;
    *(v13 + 104) = &protocol witness table for HUDActivityService;
    *(v13 + 72) = v12;
    v14 = OUTLINED_FUNCTION_2_32();
    v6(v14);
    *(v0 + 200) = type metadata accessor for AnsweringMachineActivityService();
    swift_allocObject();

    *(v0 + 208) = AnsweringMachineActivityService.init(activityControllers:logger:)(v13, v1);

    return MEMORY[0x1EEE6DFA0](AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:), 0, 0);
  }

  else
  {
    v15 = *(v0 + 96);
    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MainActor();
  *(v0 + 216) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:), v2, v1);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[26];
  v2 = v0[13];

  closure #1 in AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:)(v2, v1);
  v3 = v0[22];

  return MEMORY[0x1EEE6DFA0](AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:), v3, 0);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[26];
  v2 = v0[12];
  v2[3] = v0[25];
  v2[4] = &protocol witness table for AnsweringMachineActivityService;

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in AnsweringMachineComposer.composeActivityController<A, B>(callStatusService:callServices:activityController:logger:)(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMd);
  lazy protocol witness table accessor for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>();
  v3 = Publisher<>.sink(receiveValue:)();

  v8 = type metadata accessor for AnyCancellable();
  *&v7 = v3;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v4 = *(*(a2 + 24) + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v4);
  v5 = *(a2 + 24);
  *(v5 + 16) = v4 + 1;
  outlined init with take of Any(&v7, (v5 + 32 * v4 + 32));
  *(a2 + 24) = v5;
  return swift_endAccess();
}

void *AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2, v9);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  outlined init with copy of IDSLookupManager(a1, v17);
  v14 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v17, v14 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23AnsweringConditionTimerCySSGMd);
  swift_allocObject();

  specialized AnsweringConditionTimer.init(logger:timeToWaitForCall:callIsScreenable:)(v11, partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Duration), v13, partial apply for closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:), v14);
  return &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);
}

uint64_t implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);

  return specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:)(a1, a2);
}

uint64_t implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)()
{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();
  v2 = *(v0 + 48);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();

  return v0(0);
}

uint64_t specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[3] = a2;
  v3[4] = a1;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:), v5, v4);
}

uint64_t specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:)()
{
  v26 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v25[0] = v0[4];
  v25[1] = v2;
  if ((*(v1 + 16))(v25))
  {
    (*(v0[6] + 32))(v0 + 2);
    v0[10] = direct field offset for AnsweringConditionTimer.logger;
    swift_bridgeObjectRetain_n();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[5];
    if (v5)
    {
      v24 = v0[4];
      v7 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v7 = 136446466;
      v8 = Duration.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v25);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v6, v25);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_1BBC58000, v3, v4, "Should Answer timer started with timeToWait %{public}s for: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    v21[1] = specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:);

    return AsyncCancellableTimer.wait(with:)();
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[5];
    if (v14)
    {
      v16 = v0[4];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136446210;

      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v25);
      OUTLINED_FUNCTION_5_12(&dword_1BBC58000, v19, v20, "Should Answer timer returning early as NO for: %{public}s because we can no longer screen the call.");
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x1BFB23DF0](v17, -1, -1);
    }

    else
    {
    }

    OUTLINED_FUNCTION_0_23();

    return v23(0);
  }
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:);
  }

  else
  {
    v5 = specialized AnsweringConditionTimer.shouldAnswer@Sendable (_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v17 = v0;

  if (static Task<>.isCancelled.getter())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = v0[5];
    if (v3)
    {
      v5 = v0[4];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16[0] = v7;
      *v6 = 136446210;

      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, v16);
      OUTLINED_FUNCTION_5_12(&dword_1BBC58000, v8, v9, "Should Answer timer canceled for: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v11 = v0[5];
    v10 = v0[6];
    v16[0] = v0[4];
    v16[1] = v11;
    (*(v10 + 16))(v16);
  }

  OUTLINED_FUNCTION_0_23();
  v14 = v13 & 1;

  return v12(v14);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_23();

  return v0(0);
}

uint64_t closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 72))(v2, v3, 0, v4, v5) & 1;
}

char *specialized AnsweringConditionTimer.init(logger:timeToWaitForCall:callIsScreenable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = direct field offset for AnsweringConditionTimer.timer;
  type metadata accessor for AsyncCancellableTimer();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  *&v5[v11] = v12;
  *(v5 + 4) = a2;
  *(v5 + 5) = a3;
  v13 = direct field offset for AnsweringConditionTimer.logger;
  v14 = type metadata accessor for Logger();
  (*(*(v14 - 8) + 32))(&v5[v13], a1, v14);
  *(v5 + 2) = a4;
  *(v5 + 3) = a5;
  return v5;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);

  return implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:)(v4, v2);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = v0;

  OUTLINED_FUNCTION_0_23();

  return v2(v1);
}

unint64_t lazy protocol witness table accessor for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>;
  if (!lazy protocol witness table cache variable for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughSubject<AnsweringMachineCallStatus, Never> and conformance PassthroughSubject<A, B>);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void ScreenSharingControlsRecipeGenerator.outgoingScreenSharingRequestHUDRecipe(controlsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v161 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v35);
  v36 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_17();
  v40 = (v38 - v39);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_10(&v161 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v43);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v44);
  v45 = OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v48 - v47);
  v49 = [*(v26 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) requestToScreenShareEnabled];
  v50 = MEMORY[0x1E69E7D40];
  if (!v49)
  {
    goto LABEL_10;
  }

  v51 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0x2C0))();
  if (!v51)
  {
    goto LABEL_10;
  }

  v172 = v24;
  v52 = v51;
  if ([v51 state] != 2 && objc_msgSend(v52, sel_state) != 3 || !objc_msgSend(v52, sel_avMode) || (v53 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0])) == 0)
  {

    goto LABEL_10;
  }

  v54 = v53;
  v171 = v52;
  v170 = v28;
  v55 = [v53 handle];
  ConversationController.participant(with:)();

  v56 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v56, v57, v45) == 1)
  {

    OUTLINED_FUNCTION_31_5();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd);
    OUTLINED_FUNCTION_47_2();
LABEL_10:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v58 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v58, &static Logger.conversationControls);
    v59 = v26;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_42();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      v64 = (*((*v50 & *v59) + 0x2C0))();
      *(v62 + 4) = v64;
      *v63 = v64;
      _os_log_impl(&dword_1BBC58000, v60, v61, "Cannot generate outgoing screen sharing request HUD, conversation: %@", v62, 0xCu);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, &_sSo8NSObjectCSgMd);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

LABEL_15:
    OUTLINED_FUNCTION_7_7();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    goto LABEL_16;
  }

  v69 = OUTLINED_FUNCTION_15_6();
  outlined init with take of Participant(v69, v174, v70);
  v167 = v54;
  v169 = ScreenSharingControlsRecipeGenerator.recipeViewFor(_:in:managedBy:)(v54, v171, v26);
  v168 = v71;
  v164 = v72;
  isa = objc_opt_self();
  v73 = [isa conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v74.super.isa = v73;
  v166 = OUTLINED_FUNCTION_17_0(0xD000000000000024, 0x80000001BC4F3EC0, v75, v76, v74);
  v165 = v77;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v78 = swift_allocObject();
  v163 = xmmword_1BC4BA940;
  *(v78 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v79 = v178[0];

  Participant.name(_:)();
  v81 = v80;
  v83 = v82;

  *(v78 + 56) = MEMORY[0x1E69E6158];
  *(v78 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v78 + 32) = v81;
  *(v78 + 40) = v83;
  OUTLINED_FUNCTION_26_3();
  v84 = String.init(format:_:)();
  v86 = v85;

  v178[0] = 25;
  memset(&v178[1], 0, 32);
  LOBYTE(v178[5]) = 7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v166 = v168;
  v165 = v169;
  v87 = [isa conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v88.super.isa = v87;
  v93 = OUTLINED_FUNCTION_17_0(v89, v90, v91, v92, v88);
  v95 = v94;

  v96._countAndFlagsBits = v93;
  v96._object = v95;
  isa = NSAttributedString.__allocating_init(string:)(v96).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v97 = OUTLINED_FUNCTION_3_2();
  *(v97 + 16) = xmmword_1BC4BAC30;
  v98._countAndFlagsBits = v84;
  v98._object = v86;
  *(v97 + 32) = NSAttributedString.__allocating_init(string:)(v98);
  v99 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_9_3();
  v103 = swift_allocObject();
  *(v103 + 16) = v163;
  swift_storeEnumTagMultiPayload();
  v104 = v36[9];
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v99);
  v108 = (v40 + v36[10]);
  v109 = v40 + v36[15];
  v110.n128_f64[0] = OUTLINED_FUNCTION_8_26();
  *(v40 + v111) = 0;
  v112 = v40 + v36[17];
  OUTLINED_FUNCTION_20_5(v40 + v36[18], v110);
  outlined init with copy of ConversationControlsType(v178, v40);
  v113 = v169;
  v40[6] = 0;
  v40[7] = v113;
  OUTLINED_FUNCTION_44_2();
  v40[8] = v115;
  v40[9] = v114;
  v40[10] = isa;
  v40[11] = v97;
  v108[1] = 0;
  v108[2] = 0;
  *v108 = 0;
  outlined assign with copy of AttributedString?(v32, v40 + v104);
  *(v40 + v36[11]) = 2;
  *(v40 + v36[12]) = 0;
  *(v40 + v36[13]) = 1;
  *(v40 + v36[14]) = 1;
  *v112 = 0;
  *(v112 + 1) = 0;
  v112[16] = -1;
  v116 = *(v103 + 16);
  if (v116 <= 2)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(v178);
    *v109 = v103;
    *(v109 + 8) = 0u;
    *(v109 + 24) = 0u;
    v109[40] = 0;
    OUTLINED_FUNCTION_26_3();
    outlined init with copy of ConversationControlsRecipe(v129, v130);
    OUTLINED_FUNCTION_16_5();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
    OUTLINED_FUNCTION_0_24();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v40, v135);
    OUTLINED_FUNCTION_47_2();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v117 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v117, &static Logger.conversationControls);

    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = OUTLINED_FUNCTION_42();
      v169 = OUTLINED_FUNCTION_23();
      v176 = v169;
      *v120 = 136315138;
      v175 = v116;
      v121 = String.init<A>(reflecting:)();
      v116 = v122;
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, &v176);

      *(v120 + 4) = v108;
      _os_log_impl(&dword_1BBC58000, v118, v119, "Too many trailing actions (%s)", v120, 0xCu);
      v123 = OUTLINED_FUNCTION_34_6(&a11);
      __swift_destroy_boxed_opaque_existential_1(v123);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(v178);
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_0_24();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v40, v124);
    OUTLINED_FUNCTION_34_6(&a16);
    OUTLINED_FUNCTION_7_7();
    __swift_storeEnumTagSinglePayload(v125, v126, v127, v128);
  }

  v136 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v136, v137, v36) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v138 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v138, &static Logger.conversationControls);
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();
    v141 = OUTLINED_FUNCTION_25(v140);
    v142 = v167;
    if (v141)
    {
      v143 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v143);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v144, v145, "Error creating ConversationControlsRecipe for outgoing screen sharing request");
      OUTLINED_FUNCTION_18();
      v146 = v166;
      v147 = &v178[9];
    }

    else
    {
      v146 = v139;
      v139 = v165;
      v147 = &v179;
    }

    v153 = *(v147 - 32);

    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_33();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v174, v154);
    goto LABEL_15;
  }

  v148 = OUTLINED_FUNCTION_3_27();
  v149 = v173;
  outlined init with take of Participant(v148, v173, v150);
  if (SBUIIsSystemApertureEnabled())
  {
    ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v26, 1, v172, v177);

    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_2_33();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v174, v151);
    v152 = v36[18];
    memcpy(v178, (v149 + v152), 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v178, &_s15ConversationKit21SystemApertureElementVSgMd);
    memcpy((v149 + v152), v177, 0x49uLL);
  }

  else
  {
    OUTLINED_FUNCTION_2_33();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v174, v155);

    OUTLINED_FUNCTION_31_5();
  }

  outlined init with copy of ConversationControlsRecipe(v149, v108);
  OUTLINED_FUNCTION_16_5();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v159);
  OUTLINED_FUNCTION_0_24();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v149, v160);
LABEL_16:
  OUTLINED_FUNCTION_30_0();
}

id ScreenSharingControlsRecipeGenerator.recipeViewFor(_:in:managedBy:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConversationControlsBadgingAvatarViewController();
  v9 = ConversationControlsBadgingAvatarViewController.__allocating_init(contactStore:handle:badgeImage:)([*(a3 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) contactStore], objc_msgSend(a1, sel_handle), 0);
  v10 = [v9 view];
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x2A8))();
  (*((*v11 & *v9) + 0x58))(v8);

  (*(v6 + 8))(v8, v5);
  return v10;
}

void ScreenSharingControlsRecipeGenerator.incomingScreenSharingRequestHUDRecipe(controlsManager:)()
{
  OUTLINED_FUNCTION_29();
  v163 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v11);
  v12 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10(&v151 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v24 - v23);
  v25 = *(v3 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags);
  if (([v25 requestToScreenShareEnabled] & 1) == 0 && !objc_msgSend(v25, sel_usesModernScreenSharingFromMessages))
  {
    goto LABEL_13;
  }

  v26 = MEMORY[0x1E69E7D40];
  v27 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2C0))();
  if (!v27)
  {
    goto LABEL_13;
  }

  v28 = v27;
  if ([v27 state] != 3)
  {
    if (![v25 sharePlayInCallsEnabled])
    {
      goto LABEL_12;
    }

    v161 = v5;
    v34 = (*v26 & *v3) + 672;
    v35 = *((*v26 & *v3) + 0x2A0);
    v5 = v34;
    v35();
    v37 = v36;
    ObjectType = swift_getObjectType();
    LOBYTE(v37) = (*(v37 + 152))(ObjectType, v37);
    v39 = swift_unknownObjectRelease();
    if ((v37 & 1) == 0)
    {

      OUTLINED_FUNCTION_48_4();
      goto LABEL_13;
    }

    (v35)(v39);
    v41 = v40;
    v42 = swift_getObjectType();
    v43 = (*(v41 + 184))(v42, v41);
    swift_unknownObjectRelease();
    v44 = [v43 isTelephonyProvider];

    OUTLINED_FUNCTION_48_4();
    if ((v44 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (![v28 avMode] || (v29 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0])) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v30 = v29;
  v31 = [v29 handle];
  ConversationController.participant(with:)();

  v32 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v32, v33, v21) == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit11ParticipantVSgMd);
LABEL_13:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v45 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v45, &static Logger.conversationControls);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v47))
    {
      v48 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v48);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v49, v50, "Cannot generate incoming screen sharing request HUD");
      OUTLINED_FUNCTION_18();
    }

LABEL_18:
    OUTLINED_FUNCTION_7_7();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    goto LABEL_19;
  }

  v161 = v5;
  v55 = OUTLINED_FUNCTION_15_6();
  outlined init with take of Participant(v55, v164, v56);
  v159 = v30;
  v57 = ScreenSharingControlsRecipeGenerator.recipeViewFor(_:in:managedBy:)(v30, v28, v3);
  OUTLINED_FUNCTION_41_5(v57);
  OUTLINED_FUNCTION_31_6(v58, v59, &v171 + 8);
  v60 = objc_opt_self();
  v61 = [v60 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v62.super.isa = v61;
  isa = OUTLINED_FUNCTION_17_0(0xD000000000000011, 0x80000001BC4F3EF0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v62);
  v155 = v63;

  v64 = [v60 conversationKit];
  OUTLINED_FUNCTION_40_0();
  v65.super.isa = v64;
  v66 = OUTLINED_FUNCTION_17_0(0xD000000000000017, 0x80000001BC4F3F10, 0x61737265766E6F43, 0xEF74694B6E6F6974, v65);
  OUTLINED_FUNCTION_37_9(v66);
  v158 = v67;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v69 = v169[0];

  Participant.name(_:)();
  v71 = v70;
  v73 = v72;

  *(v68 + 56) = MEMORY[0x1E69E6158];
  *(v68 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v68 + 32) = v71;
  *(v68 + 40) = v73;
  OUTLINED_FUNCTION_26_3();
  String.init(format:_:)();

  v169[0] = 26;
  memset(&v169[1], 0, 32);
  LOBYTE(v169[5]) = 7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_37_9(v74);
  OUTLINED_FUNCTION_42_7();
  v158 = v75;
  v76._countAndFlagsBits = isa;
  v76._object = v155;
  isa = NSAttributedString.__allocating_init(string:)(v76).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v77 = OUTLINED_FUNCTION_3_2();
  v155 = v77;
  *(v77 + 16) = xmmword_1BC4BAC30;
  v78._countAndFlagsBits = OUTLINED_FUNCTION_40_2();
  *(v77 + 32) = NSAttributedString.__allocating_init(string:)(v78);
  v79 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_29_9();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
  OUTLINED_FUNCTION_46_4();
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_9_3();
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1BC4BAA20;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(&v170);
  v153 = v171;
  v154 = v170;
  v152 = v172;
  v84 = v12[9];
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v79);
  v88 = (v16 + v12[10]);
  v89 = v16 + v12[15];
  v90.n128_f64[0] = OUTLINED_FUNCTION_8_26();
  *(v16 + v91) = 0;
  v92 = v16 + v12[17];
  OUTLINED_FUNCTION_20_5(v16 + v12[18], v90);
  outlined init with copy of ConversationControlsType(v169, v16);
  OUTLINED_FUNCTION_42_7();
  v16[6] = 0;
  v16[7] = v93;
  v94 = v157;
  v16[8] = v160;
  v16[9] = v94;
  v95 = v155;
  v16[10] = isa;
  v16[11] = v95;
  v96 = v165;
  v88[1] = 0;
  v88[2] = 0;
  *v88 = 0;
  v97 = v83;
  outlined assign with copy of AttributedString?(v96, v16 + v84);
  *(v16 + v12[11]) = 2;
  *(v16 + v12[12]) = 0;
  *(v16 + v12[13]) = 1;
  *(v16 + v12[14]) = 1;
  *v92 = 0;
  *(v92 + 1) = 0;
  v92[16] = -1;
  v98 = *(v83 + 16);
  if (v98 <= 5)
  {
    v98 = v152 | 0x80u;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v96, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(v169);
    *v89 = v83;
    *(v89 + 24) = v153;
    *(v89 + 8) = v154;
    v89[40] = v98;
    OUTLINED_FUNCTION_26_3();
    outlined init with copy of ConversationControlsRecipe(v111, v112);
    OUTLINED_FUNCTION_16_5();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
    OUTLINED_FUNCTION_0_24();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v16, v117);
    OUTLINED_FUNCTION_48_4();
    v118 = v162;
    v104 = v159;
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v99 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v99, &static Logger.conversationControls);

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.fault.getter();

    v102 = v100;
    v103 = os_log_type_enabled(v100, v101);
    v104 = v159;
    if (v103)
    {
      v105 = OUTLINED_FUNCTION_42();
      v167 = OUTLINED_FUNCTION_23();
      v160 = v97;
      v97 = v167;
      *v105 = 136315138;
      v166 = v98;
      v106 = String.init<A>(reflecting:)();
      v98 = v107;
      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v167);

      *(v105 + 4) = v108;
      _os_log_impl(&dword_1BBC58000, v102, v101, "Too many buttonShelf actions (%s)", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v97);
      OUTLINED_FUNCTION_27();
      v104 = v159;
      OUTLINED_FUNCTION_27();

      v109 = OUTLINED_FUNCTION_29_9();
    }

    else
    {

      v110 = &_s10Foundation16AttributedStringVSgMd;
      v109 = v96;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, v110);
    outlined destroy of ConversationControlsType(v169);
    v118 = v162;
    OUTLINED_FUNCTION_0_24();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v16, v119);
    OUTLINED_FUNCTION_34_6(&v173);
    OUTLINED_FUNCTION_7_7();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
    OUTLINED_FUNCTION_48_4();
  }

  v124 = OUTLINED_FUNCTION_18_12();
  if (__swift_getEnumTagSinglePayload(v124, v125, v12) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v98, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v126 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v126, &static Logger.conversationControls);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v128))
    {
      v129 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v129);
      OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v130, v131, "Error creating ConversationControlsRecipe for incoming screen sharing request");
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_30_5();
      v133 = &v169[9];
    }

    else
    {
      v132 = v127;
      v127 = v158;
      v133 = &v170;
    }

    v140 = *(v133 - 32);

    OUTLINED_FUNCTION_2_33();
    v141 = OUTLINED_FUNCTION_45_5();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v141, v142);
    goto LABEL_18;
  }

  v134 = OUTLINED_FUNCTION_3_27();
  outlined init with take of Participant(v134, v118, v135);
  if (SBUIIsSystemApertureEnabled())
  {
    ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v3, 65, v163, v168);
    OUTLINED_FUNCTION_30_5();

    OUTLINED_FUNCTION_2_33();
    v137 = OUTLINED_FUNCTION_45_5();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v137, v138);
    v139 = v12[18];
    memcpy(v169, (v118 + v139), 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v169, &_s15ConversationKit21SystemApertureElementVSgMd);
    memcpy((v118 + v139), v168, 0x49uLL);
  }

  else
  {
    OUTLINED_FUNCTION_2_33();
    v143 = OUTLINED_FUNCTION_45_5();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v143, v144);
    OUTLINED_FUNCTION_30_5();
  }

  outlined init with copy of ConversationControlsRecipe(v118, v97);
  OUTLINED_FUNCTION_16_5();
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v149);
  OUTLINED_FUNCTION_0_24();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v118, v150);
LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

void ScreenSharingControlsRecipeGenerator.incomingRemoteControlRequestHUDRecipe(controlsManager:requestingParticipantDisplayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v20;
  a20 = v21;
  v154 = v22;
  v157 = v23;
  v155 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v34);
  v35 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v39 = (v37 - v38);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v144 - v41;
  v43 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_8();
  v49 = v48 - v47;
  v50 = MEMORY[0x1E69E7D40];
  v51 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0x2C0))();
  if (v51)
  {
    v52 = v51;
    if ([v51 state] == 3 && objc_msgSend(v52, sel_avMode))
    {
      v152 = v42;
      v153 = v28;
      ConversationControlsHelper.assetsForDefaultHUD(controlsManager:conversation:)(v26, v52);
      OUTLINED_FUNCTION_31_6(v53, v54, &v161[9]);
      v56 = v55;
      v57 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
      OUTLINED_FUNCTION_41_5(v57);
      v148 = v56;
      OUTLINED_FUNCTION_43_4([v56 image]);
      v58 = [objc_opt_self() clearColor];
      v59 = v26;
      v60 = v35;
      v61 = OUTLINED_FUNCTION_29_9();

      v147 = v52;
      v62 = v61;
      v63 = v60;
      v64 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v147, v150, v155, v62, v58);
      v65 = OUTLINED_FUNCTION_43_4([v64 view]);
      v66 = *((*v50 & *v59) + 0x2A8);
      v145 = v59;
      v66(v65);
      v67 = *((*v50 & *v64) + 0x58);
      v146 = v64;
      v68 = v67(v49);
      OUTLINED_FUNCTION_41_5(v68);
      (*(v45 + 8))(v49, v43);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v69 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v70.super.isa = v69;
      OUTLINED_FUNCTION_17_0(0xD00000000000001CLL, 0x80000001BC4F3F30, v71, v72, v70);

      v73._countAndFlagsBits = OUTLINED_FUNCTION_40_2();
      v74.super.isa = NSAttributedString.__allocating_init(string:)(v73).super.isa;
      OUTLINED_FUNCTION_37_9(v74.super.isa);
      v75 = v155;
      OUTLINED_FUNCTION_26_3();
      isa = ConversationControlsStringProvider.incomingRemoteControlRequestSubtitle(requestingParticipantDisplayName:)(v76).super.isa;
      v161[0] = v75;
      v161[1] = v69;
      LOBYTE(v161[5]) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v78 = OUTLINED_FUNCTION_3_2();
      v155 = v78;
      *(v78 + 16) = xmmword_1BC4BAC30;
      *(v78 + 32) = isa;
      v79 = type metadata accessor for AttributedString();
      OUTLINED_FUNCTION_45_5();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
      OUTLINED_FUNCTION_46_4();
      type metadata accessor for ConversationControlsAction();
      OUTLINED_FUNCTION_9_3();
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1BC4BAA20;
      OUTLINED_FUNCTION_40_2();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_29_9();

      v84 = v150;
      v157 = v150;
      OUTLINED_FUNCTION_30_5();
      v86 = v85;
      OUTLINED_FUNCTION_37_9(isa);
      static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v87);
      OUTLINED_FUNCTION_33_9();
      v88 = v162;
      v89 = v63[9];
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v79);
      v93 = (v39 + v63[10]);
      v94 = v39 + v63[15];
      v95.n128_f64[0] = OUTLINED_FUNCTION_8_26();
      *(v39 + v96) = 0;
      v97 = v39 + v63[17];
      OUTLINED_FUNCTION_20_5(v39 + v63[18], v95);
      outlined init with copy of ConversationControlsType(v161, v39);
      v39[6] = 0;
      v39[7] = v84;
      OUTLINED_FUNCTION_42_7();
      v39[8] = 0;
      v39[9] = v98;
      v151 = v86;
      v39[10] = v86;
      v99 = v156;
      v39[11] = v155;
      v93[1] = 0;
      v93[2] = 0;
      *v93 = 0;
      outlined assign with copy of AttributedString?(v99, v39 + v89);
      *(v39 + v63[11]) = 2;
      *(v39 + v63[12]) = 0;
      *(v39 + v63[13]) = 1;
      *(v39 + v63[14]) = 1;
      *v97 = 0;
      *(v97 + 1) = 0;
      v97[16] = -1;
      v100 = *(v83 + 16);
      if (v100 <= 5)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s10Foundation16AttributedStringVSgMd);
        outlined destroy of ConversationControlsType(v161);
        *v94 = v83;
        *(v94 + 24) = v144[0];
        *(v94 + 8) = v144[1];
        *(v94 + 40) = v88 | 0x80;
        OUTLINED_FUNCTION_26_3();
        outlined init with copy of ConversationControlsRecipe(v119, v120);
        OUTLINED_FUNCTION_16_5();
        __swift_storeEnumTagSinglePayload(v121, v122, v123, v124);
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v39, v125);
        OUTLINED_FUNCTION_49_2();
        v126 = v152;
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v101 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v101, &static Logger.conversationControls);

        v102 = Logger.logObject.getter();
        v94 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v102, v94))
        {
          v103 = OUTLINED_FUNCTION_42();
          v104 = OUTLINED_FUNCTION_23();
          v159 = v104;
          *v103 = 136315138;
          v158 = v100;
          v105 = String.init<A>(reflecting:)();
          v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, &v159);

          *(v103 + 4) = v107;
          _os_log_impl(&dword_1BBC58000, v102, v94, "Too many buttonShelf actions (%s)", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v104);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_27();
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_s10Foundation16AttributedStringVSgMd);
        outlined destroy of ConversationControlsType(v161);
        OUTLINED_FUNCTION_49_2();
        v126 = v152;
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v39, v127);
        OUTLINED_FUNCTION_34_6(&a9);
        OUTLINED_FUNCTION_7_7();
        __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
      }

      v132 = OUTLINED_FUNCTION_18_12();
      if (__swift_getEnumTagSinglePayload(v132, v133, v63) == 1)
      {
        __break(1u);
      }

      else
      {
        v134 = OUTLINED_FUNCTION_3_27();
        outlined init with take of Participant(v134, v126, v135);
        ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v145, 1, v154, v160);
        OUTLINED_FUNCTION_30_5();

        OUTLINED_FUNCTION_42_7();

        v138 = v63[18];
        memcpy(v161, (v126 + v138), 0x49uLL);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v161, &_s15ConversationKit21SystemApertureElementVSgMd);
        memcpy((v126 + v138), v160, 0x49uLL);
        outlined init with copy of ConversationControlsRecipe(v126, v94);
        OUTLINED_FUNCTION_16_5();
        __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v126, v143);
        OUTLINED_FUNCTION_30_0();
      }

      return;
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v108 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v108, &static Logger.conversationControls);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_25(v110))
  {
    v111 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v111);
    OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v112, v113, "Cannot generate incoming remote control request HUD");
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
}

void ScreenSharingControlsRecipeGenerator.rejectedRemoteControlRequestHUDRecipe(controlsManager:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v20;
  a20 = v21;
  v143 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v32);
  v33 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_17();
  v37 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_16(&v129 - v39);
  v40 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_8();
  v46 = v45 - v44;
  v47 = MEMORY[0x1E69E7D40];
  v48 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x2C0))();
  if (v48)
  {
    v49 = v48;
    if ([v48 state] == 3 && objc_msgSend(v49, sel_avMode))
    {
      v141 = v26;
      ConversationControlsHelper.assetsForDefaultHUD(controlsManager:conversation:)(v24, v49);
      OUTLINED_FUNCTION_31_6(v50, v51, &v148[72]);
      v53 = v52;
      type metadata accessor for ConversationControlsBadgingAvatarViewController();
      v136 = v53;
      v54 = [v53 image];
      v55 = [objc_opt_self() clearColor];
      v142 = v33;
      v56 = v55;
      v135 = v49;
      v57 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v135, v54, 0x796C6C6942, 0xE500000000000000, v56);
      v58 = OUTLINED_FUNCTION_41_5([v57 view]);
      (*((*v47 & *v24) + 0x2A8))(v58);
      v59 = *((*v47 & *v57) + 0x58);
      v134 = v57;
      v140 = v59(v46);
      (*(v42 + 8))(v46, v40);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v60 = objc_opt_self();
      v61 = [v60 conversationKit];
      OUTLINED_FUNCTION_40_0();
      v62.super.isa = v61;
      v63 = OUTLINED_FUNCTION_17_0(0xD000000000000017, 0x80000001BC4F3F50, 0x61737265766E6F43, 0xEF74694B6E6F6974, v62);
      v65 = v64;

      v66._countAndFlagsBits = v63;
      v66._object = v65;
      v67.super.isa = NSAttributedString.__allocating_init(string:)(v66).super.isa;
      OUTLINED_FUNCTION_43_4(v67.super.isa);
      v68 = [v60 conversationKit];
      OUTLINED_FUNCTION_40_0();
      v69.super.isa = v68;
      OUTLINED_FUNCTION_17_0(0xD000000000000051, 0x80000001BC4F3F70, 0x61737265766E6F43, 0xEF74694B6E6F6974, v69);

      v70._countAndFlagsBits = OUTLINED_FUNCTION_40_2();
      isa = NSAttributedString.__allocating_init(string:)(v70).super.isa;
      v148[40] = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v72 = OUTLINED_FUNCTION_3_2();
      v73 = OUTLINED_FUNCTION_37_9(v72);
      *(v73 + 16) = v74;
      *(v73 + 32) = isa;
      v75 = type metadata accessor for AttributedString();
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
      OUTLINED_FUNCTION_46_4();
      type metadata accessor for ConversationControlsAction();
      OUTLINED_FUNCTION_9_3();
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1BC4BAA20;
      v80 = v142;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v81 = v139;
      v133 = v139;
      v82 = v138;
      OUTLINED_FUNCTION_43_4(isa);
      static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v149);
      OUTLINED_FUNCTION_33_9();
      v130 = v149[32];
      v83 = v80[9];
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v84, v85, v86, v75);
      v87 = (v37 + v80[10]);
      v88 = v37 + v80[15];
      *(v88 + 32) = 0;
      *v88 = 0u;
      *(v88 + 16) = 0u;
      *(v88 + 40) = -2;
      *(v37 + v80[16]) = 0;
      v89 = v37 + v80[17];
      OUTLINED_FUNCTION_20_5(v37 + v80[18], 0);
      outlined init with copy of ConversationControlsType(v148, v37);
      v37[6] = 0;
      v37[7] = v81;
      OUTLINED_FUNCTION_44_2();
      v37[8] = 0;
      v37[9] = v90;
      v140 = v82;
      OUTLINED_FUNCTION_30_5();
      v37[10] = v82;
      v37[11] = v91;
      v87[1] = 0;
      v87[2] = 0;
      *v87 = 0;
      OUTLINED_FUNCTION_47_2();
      outlined assign with copy of AttributedString?(v87, v37 + v83);
      *(v37 + v80[11]) = 2;
      *(v37 + v80[12]) = 0;
      *(v37 + v80[13]) = 1;
      *(v37 + v80[14]) = 3;
      *v89 = 0;
      *(v89 + 1) = 0;
      v89[16] = -1;
      v92 = *(v79 + 16);
      if (v92 <= 5)
      {
        v94 = v130 | 0x80u;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v87, &_s10Foundation16AttributedStringVSgMd);
        outlined destroy of ConversationControlsType(v148);
        *v88 = v79;
        *(v88 + 24) = v131;
        *(v88 + 8) = v132;
        *(v88 + 40) = v94;
        OUTLINED_FUNCTION_26_3();
        outlined init with copy of ConversationControlsRecipe(v114, v115);
        __swift_storeEnumTagSinglePayload(v88, 0, 1, v80);
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v37, v116);
        OUTLINED_FUNCTION_49_2();
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v93 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v93, &static Logger.conversationControls);

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = OUTLINED_FUNCTION_42();
          v97 = OUTLINED_FUNCTION_23();
          v146 = v97;
          *v96 = 136315138;
          v145 = v92;
          v98 = String.init<A>(reflecting:)();
          v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v146);

          *(v96 + 4) = v100;
          _os_log_impl(&dword_1BBC58000, v94, v95, "Too many buttonShelf actions (%s)", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v97);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_27();

          v101 = OUTLINED_FUNCTION_29_9();
        }

        else
        {

          v102 = &_s10Foundation16AttributedStringVSgMd;
          v101 = v87;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v101, v102);
        outlined destroy of ConversationControlsType(v148);
        OUTLINED_FUNCTION_49_2();
        v80 = v142;
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v37, v117);
        OUTLINED_FUNCTION_34_6(&a11);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v118, v119, v120, v80);
      }

      v121 = OUTLINED_FUNCTION_18_12();
      if (__swift_getEnumTagSinglePayload(v121, v122, v80) == 1)
      {
        __break(1u);
      }

      else
      {
        v123 = OUTLINED_FUNCTION_3_27();
        v124 = v144;
        outlined init with take of Participant(v123, v144, v125);
        ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(v24, 1, v143, v147);

        OUTLINED_FUNCTION_44_2();

        v127 = v80[18];
        memcpy(v148, (v124 + v127), 0x49uLL);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v148, &_s15ConversationKit21SystemApertureElementVSgMd);
        memcpy((v124 + v127), v147, 0x49uLL);
        outlined init with copy of ConversationControlsRecipe(v124, v94);
        __swift_storeEnumTagSinglePayload(v94, 0, 1, v80);
        OUTLINED_FUNCTION_0_24();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_0(v124, v128);
        OUTLINED_FUNCTION_30_0();
      }

      return;
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v103 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v103, &static Logger.conversationControls);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_25(v105))
  {
    v106 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v106);
    OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v107, v108, "Cannot generate incoming remote control request HUD");
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_30_0();

  __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
}

uint64_t ScreenSharingControlsRecipeGenerator.init()()
{
  v1 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  Defaults.init()();
  CallScreeningService.init(overrides:)();
  v8 = type metadata accessor for Features();
  [objc_allocWithZone(v8) init];
  v9 = OUTLINED_FUNCTION_46_4();
  type metadata accessor for SystemApertureIconFactory(v9);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E6995EE0];
  v12 = (v10 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
  v12[3] = v1;
  v12[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v3 + 16))(boxed_opaque_existential_1, v7, v1);
  v14 = (v10 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
  v14[3] = v8;
  v14[4] = &protocol witness table for Features;
  *v14 = v0;
  type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  (*(v3 + 8))(v7, v1);
  return v10;
}

uint64_t specialized Conversation.currentScreenSharingRequest(ignoring:)(uint64_t a1)
{
  if (!specialized Conversation.canDisplayScreenSharingRequest.getter())
  {
    return 0;
  }

  v3 = [v1 screenSharingRequests];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest);
  lazy protocol witness table accessor for type TUScreenSharingRequest and conformance NSObject();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Set._Variant.filter(_:)(v4, a1);
  v6 = specialized Collection.first.getter(v5);

  return v6;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScreenSharingControlsRecipeGenerator(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ScreenSharingControlsRecipeGenerator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TUScreenSharingRequest and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUScreenSharingRequest and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUScreenSharingRequest and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUScreenSharingRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUScreenSharingRequest and conformance NSObject);
  }

  return result;
}

uint64_t PushToTalkTalkButtonController.__allocating_init(button:viewModel:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PushToTalkTalkButtonController.init(button:viewModel:)(a1, a2);
  return v4;
}

uint64_t PushToTalkTalkButtonController.init(button:viewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd);
  OUTLINED_FUNCTION_2_7();
  v30 = v7;
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_2_7();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unknownObjectWeakInit();
  *(v3 + 40) = MEMORY[0x1E69E7CD0];
  *(v3 + 32) = 0;
  v32 = a1;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = a2;
  v16 = *(*a2 + 160);

  v18 = v16(v17);
  v19 = v18;
  if (v18)
  {
    v18 = type metadata accessor for ConversationControlsManager(0);
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v33 = v19;
  v36 = v18;
  *v15 = 300;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E7F38], v10);
  v20 = objc_allocWithZone(type metadata accessor for PushToTalkTalkButtonGestureRecognizer());
  v21 = PushToTalkTalkButtonGestureRecognizer.init(interval:maximumVerticalVelocity:target:action:)(v15, &v33, sel_pttTalkButtonGestureChangedWithRecognizer_, 100.0);
  [v21 setCancelsTouchesInView_];
  [v21 addTarget:v3 action:sel_pressGestureChangedWithGestureRecognizer_];
  v22 = v16([v32 addGestureRecognizer_]);
  v23 = v22;
  if (v22)
  {
    v22 = type metadata accessor for ConversationControlsManager(0);
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v33 = v23;
  v36 = v22;
  v24 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v25 = @nonobjc UITapGestureRecognizer.init(target:action:)(&v33, sel_pttDoneButtonTappedWithRecognizer_);
  [v25 shouldRequireFailureOfGestureRecognizer_];
  v26 = v32;
  (*(*a2 + 136))([v32 addGestureRecognizer_]);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher();
  v27 = v31;
  Publisher<>.sink(receiveValue:)();

  (*(v30 + 8))(v9, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v3;
}

void closure #1 in PushToTalkTalkButtonController.init(button:viewModel:)(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if (v1 == 2)
      {
        v3 = Strong;
        [v3 setHighlighted_];
        [v3 setEnabled_];
      }

      else
      {
        if (v1 == 3)
        {
          [Strong setEnabled_];
LABEL_10:
          [Strong setNeedsUpdateConfiguration];

          return;
        }

        v3 = Strong;
        [v3 setEnabled_];
        if ((v1 & 1) == 0)
        {
          [v3 setHighlighted_];
        }
      }

      goto LABEL_10;
    }
  }
}

uint64_t PushToTalkTalkButtonController.buttonComputedState.getter()
{
  v1 = v0;
  v2 = *(**(v0 + 16) + 112);

  v4 = v2(v3);

  if (v4 & 0xFE) != 2 && (v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0;
    }

    v6 = Strong;
    v7 = [Strong isHighlighted];

    return (v7 & 1) != 0;
  }

  if (*(v1 + 32))
  {
    return 1;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if ([v9 isHighlighted])
  {

    return 1;
  }

  v11 = [v9 isEnabled];

  if (v11)
  {
    return 0;
  }

  return 2;
}

void PushToTalkTalkButtonController.pressGestureChanged(gestureRecognizer:)(void *a1)
{
  v2 = [a1 state];
  if (v2 <= 5 && ((0x3Bu >> v2) & 1) != 0)
  {
    *(v1 + 32) = 0x10100uLL >> (8 * v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong setNeedsUpdateConfiguration];
  }
}

uint64_t PushToTalkTalkButtonController.deinit()
{

  MEMORY[0x1BFB23F10](v0 + 24);

  return v0;
}

uint64_t PushToTalkTalkButtonController.__deallocating_deinit()
{
  PushToTalkTalkButtonController.deinit();

  return swift_deallocClassInstance();
}

id @nonobjc UITapGestureRecognizer.init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_2_7();
    v7 = v6;
    MEMORY[0x1EEE9AC00](v8);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

unint64_t lazy protocol witness table accessor for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

id CallControlsFullScreenStatusView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id CallControlsFullScreenStatusView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___effectsView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer) = 0;
  v7 = ObjectType;
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  CallControlsFullScreenStatusView.build()();

  return v5;
}

void CallControlsFullScreenStatusView.build()()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA7F0;
  v2 = CallControlsFullScreenStatusView.textContainer.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___effectsView, closure #1 in CallControlsFullScreenStatusView.effectsView.getter);
  v3 = [v2 topAnchor];

  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___effectsView;
  v7 = [*&v0[OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___effectsView] bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA920;
  v17 = CallControlsFullScreenStatusView.textContainer.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer, closure #1 in CallControlsFullScreenStatusView.textContainer.getter);
  v18 = [v17 topAnchor];

  v19 = [v0 topAnchor];
  v20 = [v18 constraintGreaterThanOrEqualToAnchor_];

  *(inited + 32) = v20;
  v21 = OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer;
  v22 = [*&v0[OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer] bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor_];

  *(inited + 40) = v24;
  v25 = [*&v0[v21] centerYAnchor];
  v26 = [v0 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(inited + 48) = v27;
  *(inited + 56) = CallControlsFullScreenStatusView.textLeadingConstraint.getter();
  v28 = [*&v0[v21] trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(inited + 64) = v30;
  specialized Array.append<A>(contentsOf:)(inited);
  v31 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints_];
}

id CallControlsFullScreenStatusView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallControlsFullScreenStatusView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___effectsView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallControlsFullScreenStatusView.set(title:subtitle:)(Swift::String_optional title, Swift::String_optional subtitle)
{
  object = subtitle.value._object;
  countAndFlagsBits = subtitle.value._countAndFlagsBits;
  v5 = title.value._object;
  v6 = title.value._countAndFlagsBits;
  v7 = CallControlsFullScreenStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___titleLabel, MEMORY[0x1E69DDD08]);
  if (v5)
  {
    v8 = MEMORY[0x1BFB209B0](v6, v5);
  }

  else
  {
    v8 = 0;
  }

  [v7 setText_];

  [*(v2 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___titleLabel) setHidden_];
  v9 = CallControlsFullScreenStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___subtitleLabel, MEMORY[0x1E69DDD10]);
  if (object)
  {
    v10 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];

  v11 = *(v2 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___subtitleLabel);

  [v11 setHidden_];
}

id CallControlsFullScreenStatusView.titleLabel.getter(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = closure #1 in CallControlsFullScreenStatusView.titleLabel.getter(a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

Swift::Void __swiftcall CallControlsFullScreenStatusView.update(statusLayoutGuide:)(UILayoutGuide statusLayoutGuide)
{
  v2 = CallControlsFullScreenStatusView.textContainer.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer, closure #1 in CallControlsFullScreenStatusView.textContainer.getter);
  v3 = [v2 leadingAnchor];

  v4 = [(objc_class *)statusLayoutGuide.super.isa leadingAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  CallControlsFullScreenStatusView.textLeadingConstraint.setter(v5);
}

void CallControlsFullScreenStatusView.textLeadingConstraint.setter(void *a1)
{
  v5 = CallControlsFullScreenStatusView.textLeadingConstraint.getter();
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint);
  *(v1 + OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint) = a1;
  v4 = a1;

  CallControlsFullScreenStatusView.textLeadingConstraint.didset(v5);
}

id CallControlsFullScreenStatusView.textContainer.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id closure #1 in CallControlsFullScreenStatusView.effectsView.getter(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD370]) initWithPrivateStyle_];
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addSubview_];
  return v2;
}

void CallControlsFullScreenStatusView.textLeadingConstraint.didset(void *a1)
{
  [a1 setActive_];
  v1 = CallControlsFullScreenStatusView.textLeadingConstraint.getter();
  [v1 setActive_];
}

id CallControlsFullScreenStatusView.textLeadingConstraint.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textLeadingConstraint];
  }

  else
  {
    v4 = CallControlsFullScreenStatusView.textContainer.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___textContainer, closure #1 in CallControlsFullScreenStatusView.textContainer.getter);
    v5 = [v4 leadingAnchor];

    v6 = [v0 leadingAnchor];
    v7 = [v5 constraintEqualToAnchor_];

    v8 = *&v0[v1];
    *&v0[v1] = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id closure #1 in CallControlsFullScreenStatusView.titleLabel.getter(uint64_t *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  v3 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*a1, 0, 1);
  [v2 setFont_];

  return v2;
}

void *closure #1 in CallControlsFullScreenStatusView.textContainer.getter(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIStackView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA930;
  *(v2 + 32) = CallControlsFullScreenStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___titleLabel, MEMORY[0x1E69DDD08]);
  *(v2 + 40) = CallControlsFullScreenStatusView.titleLabel.getter(&OBJC_IVAR____TtC15ConversationKit32CallControlsFullScreenStatusView____lazy_storage___subtitleLabel, MEMORY[0x1E69DDD10]);
  UIStackView.__allocating_init(arrangedSubviews:)(v3, v2);
  v5 = v4;
  [v4 setAxis_];
  [v5 setSpacing_];
  [v5 setAlignment_];
  [v5 setDistribution_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addSubview_];
  return v5;
}

id CallControlsFullScreenStatusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*protocol witness for CallControlsFullScreenStatusViewing.isHidden.modify in conformance CallControlsFullScreenStatusView(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isHidden];
  return protocol witness for CallControlsFullScreenStatusViewing.isHidden.modify in conformance CallControlsFullScreenStatusView;
}

id InCallControlsPTTLeaveChannelFooterView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *InCallControlsPTTLeaveChannelFooterView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = OBJC_IVAR____TtC15ConversationKit39InCallControlsPTTLeaveChannelFooterView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  type metadata accessor for InCallControlsPTTLeaveChannelFooterView();
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  v6 = OBJC_IVAR____TtC15ConversationKit39InCallControlsPTTLeaveChannelFooterView_titleLabel;
  v7 = *&v5[OBJC_IVAR____TtC15ConversationKit39InCallControlsPTTLeaveChannelFooterView_titleLabel];
  v8 = objc_opt_self();
  v9 = v5;
  v10 = v7;
  v11 = [v8 conversationKit];
  v42._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._object = 0x80000001BC4F4160;
  v13._countAndFlagsBits = 0xD000000000000026;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v42);

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v15._countAndFlagsBits, v15._object, v10);
  v16 = *&v5[v6];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x1E69DDD28];
  v19 = v16;
  v20 = [v17 preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8000u).super.isa;

  [v19 setFont_];
  v22 = one-time initialization token for collectionViewSectionHeaderTitleLabel;
  v23 = *&v5[v6];
  if (v22 != -1)
  {
    swift_once();
  }

  [v23 setTextColor_];

  [*&v5[v6] setNumberOfLines_];
  [*&v5[v6] setLineBreakMode_];
  [*&v5[v6] setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = *&v5[v6];
  v25 = v9;
  [v25 addSubview_];
  v26 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC4BA7F0;
  v28 = [*&v5[v6] leadingAnchor];
  v29 = [v25 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:16.0];

  *(v27 + 32) = v30;
  v31 = [*&v5[v6] trailingAnchor];
  v32 = [v25 trailingAnchor];

  v33 = [v31 constraintEqualToAnchor:v32 constant:-16.0];
  *(v27 + 40) = v33;
  v34 = [*&v5[v6] topAnchor];
  v35 = [v25 topAnchor];

  v36 = [v34 constraintEqualToAnchor:v35 constant:-10.0];
  *(v27 + 48) = v36;
  v37 = [*&v5[v6] bottomAnchor];
  v38 = [v25 bottomAnchor];

  v39 = [v37 constraintEqualToAnchor:v38 constant:-30.0];
  *(v27 + 56) = v39;
  type metadata accessor for NSLayoutConstraint();
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints_];

  return v25;
}

id InCallControlsPTTLeaveChannelFooterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsPTTLeaveChannelFooterView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit39InCallControlsPTTLeaveChannelFooterView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id InCallControlsPTTLeaveChannelFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsPTTLeaveChannelFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path setter for SystemApertureConversationDetailsView.recipe : SystemApertureConversationDetailsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x70))(v6);
}

uint64_t SystemApertureConversationDetailsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t SystemApertureConversationDetailsView.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  SystemApertureConversationDetailsView.updateStatus()();
  return outlined destroy of ConversationControlsRecipe(a1);
}

id (*SystemApertureConversationDetailsView.recipe.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SystemApertureConversationDetailsView.recipe.modify;
}

id SystemApertureConversationDetailsView.recipe.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return SystemApertureConversationDetailsView.updateStatus()();
  }

  return result;
}

double SystemApertureConversationDetailsView.titleLabelGlyphInset.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel);
  [v1 _tightBoundingRectOfFirstLine];
  [v1 convertPoint:v0 toCoordinateSpace:?];
  return v2;
}

id SystemApertureConversationDetailsView.init(recipe:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel;
  type metadata accessor for UILabel();
  v4 = objc_opt_self();
  v5 = [v4 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v6 = objc_opt_self();
  v25.value.super.isa = [v6 whiteColor];
  UILabel.init(font:textColor:)(v7, v5, v25);
  *&v1[v3] = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_secondaryLabel;
  v10 = [v4 systemFontOfSize_];
  v26.value.super.isa = [v6 secondaryLabelColor];
  UILabel.init(font:textColor:)(v11, v10, v26);
  *&v1[v9] = v12;
  outlined init with copy of ConversationControlsRecipe(a1, &v1[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_recipe]);
  v24.receiver = v1;
  v24.super_class = type metadata accessor for SystemApertureConversationDetailsView();
  v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  SystemApertureConversationDetailsView.configureSubviews()();
  SystemApertureConversationDetailsView.updateStatus()();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, &static Logger.conversationControls);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136446210;
    v19 = _typeName(_:qualified:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1BBC58000, v15, v16, "[%{public}s] created", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  outlined destroy of ConversationControlsRecipe(a1);
  return v13;
}

id SystemApertureConversationDetailsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureConversationDetailsView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel;
  type metadata accessor for UILabel();
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v4 = objc_opt_self();
  v11.value.super.isa = [v4 whiteColor];
  UILabel.init(font:textColor:)(v5, v3, v11);
  *(v0 + v1) = v6;
  v7 = OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_secondaryLabel;
  v8 = [v2 systemFontOfSize_];
  v12.value.super.isa = [v4 secondaryLabelColor];
  UILabel.init(font:textColor:)(v9, v8, v12);
  *(v0 + v7) = v10;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SystemApertureConversationDetailsView.layoutSubviews()()
{
  swift_getObjectType();
  v39.receiver = v0;
  v39.super_class = type metadata accessor for SystemApertureConversationDetailsView();
  objc_msgSendSuper2(&v39, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v40);
  v2 = [*&v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel] font];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 lineHeight];
  v5 = v4;

  [v0 bounds];
  v6 = CGRectGetWidth(v41);
  [v0 bounds];
  v7 = CGRectGetHeight(v42) - v5;
  v8 = *&v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_secondaryLabel];
  [v8 sizeThatFits_];
  if (v6 >= v9)
  {
    v6 = v9;
  }

  if (v7 >= v10)
  {
    v7 = v10;
  }

  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *(v12 + 24) = Width;
  *(v12 + 32) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in SystemApertureConversationDetailsView.layoutSubviews();
  *(v13 + 24) = v12;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_4;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  [v11 performWithoutAnimation_];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x80))(v16);
  if (one-time initialization token for conversationControls != -1)
  {
LABEL_14:
    OUTLINED_FUNCTION_0_0();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, &static Logger.conversationControls);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v20 = 136446466;
    v21 = _typeName(_:qualified:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, aBlock);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    OUTLINED_FUNCTION_1_37();
    v24 = CGRect.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_1BBC58000, v18, v19, "[%{public}s][layout] primaryFrame: %s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_1_37();
  [v27 v28];
  OUTLINED_FUNCTION_1_37();
  [v8 setFrame_];
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v31 = 136446466;
    v32 = _typeName(_:qualified:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, aBlock);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    v35 = CGRect.description.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, aBlock);

    *(v31 + 14) = v37;
    _os_log_impl(&dword_1BBC58000, v29, v30, "[%{public}s][layout] secondaryFrame: %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }
}

id closure #1 in SystemApertureConversationDetailsView.layoutSubviews()(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel);
  [v3 setFrame_];
  [v3 setNeedsLayout];

  return [v3 layoutIfNeeded];
}

id SystemApertureConversationDetailsView.updateStatus()()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v21 - v7);
  v9 = *&v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_primaryLabel];
  v10 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v10(v6);
  v11 = v8[10];
  outlined destroy of ConversationControlsRecipe(v8);
  [v9 setAttributedText_];

  v12 = *&v1[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_secondaryLabel];
  (v10)();
  v13 = *(v4 + 11);

  outlined destroy of ConversationControlsRecipe(v4);
  if (specialized Array.count.getter(v13))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB22010](0, v13);
    }

    else
    {
      v14 = *(v13 + 32);
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [v12 setAttributedText_];

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationKit);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BBC58000, v17, v18, "[SystemApertureDetails] updateStatus", v19, 2u);
    OUTLINED_FUNCTION_27();
  }

  [v12 setMarqueeEnabled_];
  [v12 setMarqueeRunning_];
  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for SystemApertureConversationDetailsView()
{
  result = type metadata singleton initialization cache for SystemApertureConversationDetailsView;
  if (!type metadata singleton initialization cache for SystemApertureConversationDetailsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SystemApertureConversationDetailsView.configureSubviews()()
{
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit37SystemApertureConversationDetailsView_secondaryLabel];

  return [v0 addSubview_];
}

id SystemApertureConversationDetailsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SystemApertureConversationDetailsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureConversationDetailsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for SystemApertureControlsStatusView.recipe.modify in conformance SystemApertureConversationDetailsView(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

uint64_t type metadata completion function for SystemApertureConversationDetailsView()
{
  result = type metadata accessor for ConversationControlsRecipe();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t UIAction.init(title:subtitle:imageSymbolName:target:selector:discoverabilityTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for UIImage();
  @nonobjc UIImage.__allocating_init(systemName:)();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a8;

  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  swift_unknownObjectRelease();
  return v11;
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

void *closure #1 in UIAction.init(title:subtitle:imageSymbolName:target:selector:discoverabilityTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [swift_unknownObjectRetain() performSelector_];
      v6 = v5;
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *TextLayoutEngine.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }

  return &static TextLayoutEngine.shared;
}

uint64_t static TextLayoutEngine.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_25();
  }
}

uint64_t TextLayoutEngine.().init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB800]) init];
  *(v0 + 24) = v1;
  [v1 setLineFragmentPadding_];
  [*(v0 + 24) setMaximumNumberOfLines_];
  [*(v0 + 24) setLineBreakMode_];
  [*(v0 + 24) setWidthTracksTextView_];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DB7C0]) init];
  *(v0 + 32) = v2;
  [v2 addTextContainer_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB850]) init];
  *(v0 + 16) = v3;
  [v3 addLayoutManager_];
  return v0;
}

id TextLayoutEngine.draw(text:font:color:lowConfidenceRanges:viewSize:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  TextLayoutEngine.updateMembers(text:font:color:lowConfidenceRanges:viewSize:)(a1, a2, a3, a4, a5, a6, a7);
  v8 = String.count.getter();
  v9 = *(v7 + 32);

  return [v9 drawGlyphsForGlyphRange:0 atPoint:{v8, 0.0, 0.0}];
}

void TextLayoutEngine.updateMembers(text:font:color:lowConfidenceRanges:viewSize:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v11 = TextLayoutEngine.attributedTextWithUnderlines(text:font:color:lowConfidenceRanges:)(a1, a2, a3, a4, a5);
  [*(v7 + 16) setAttributedString_];
  v10 = *(v7 + 24);
  [v10 setSize_];
  [*(v7 + 32) ensureLayoutForTextContainer_];
}

__C::CGRect __swiftcall TextLayoutEngine.frame(for:text:font:lowConfidenceRanges:viewSize:)(__C::_NSRange a1, Swift::String text, UIFont font, Swift::OpaquePointer lowConfidenceRanges, CGSize viewSize)
{
  length = a1.length;
  location = a1.location;
  TextLayoutEngine.updateMembers(text:font:color:lowConfidenceRanges:viewSize:)(text._countAndFlagsBits, text._object, font.super.isa, 0, lowConfidenceRanges._rawValue, viewSize.width, viewSize.height);
  v9 = *(v5 + 24);
  v8 = *(v5 + 32);

  [v8 boundingRectForGlyphRange:location inTextContainer:{length, v9}];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

Class TextLayoutEngine.attributedTextWithUnderlines(text:font:color:lowConfidenceRanges:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString);

  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.super.isa = NSAttributedString.__allocating_init(string:)(v10).super.isa;
  v44 = String.count.getter();
  static Color.blue.getter();
  if (!a4)
  {
    static Color.primary.getter();
  }

  v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);

  v13 = UIColor.init(_:)();
  if (!a4)
  {
  }

  v41 = UIColor.init(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v15 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v16 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  v17 = MEMORY[0x1E69DB650];
  *(inited + 40) = a3;
  v18 = *v17;
  v39 = v16;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  *(inited + 104) = v12;
  *(inited + 80) = v13;
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v19 = v15;
  v38 = a3;
  v20 = v18;
  v40 = v13;
  v21 = Dictionary.init(dictionaryLiteral:)();
  outlined bridged method (mbnnn) of @objc NSMutableAttributedString.setAttributes(_:range:)(v21, 0, v44, v11.super.isa);
  v22 = *(a5 + 16);
  if (v22)
  {
    v35 = *MEMORY[0x1E69DB758];
    v34 = *MEMORY[0x1E69DB750];
    v23 = (a5 + 40);
    v36 = v12;
    isa = v11.super.isa;
    do
    {
      v43 = *(v23 - 1);
      v45 = v22;
      v42 = *v23;
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_1BC4BB990;
      *(v24 + 32) = v19;
      *(v24 + 40) = v38;
      *(v24 + 64) = v39;
      *(v24 + 72) = v20;
      *(v24 + 80) = v40;
      *(v24 + 104) = v12;
      *(v24 + 112) = v35;
      *(v24 + 120) = 33024;
      *(v24 + 144) = MEMORY[0x1E69E6530];
      *(v24 + 152) = v34;
      *(v24 + 184) = v12;
      *(v24 + 160) = v41;
      v25 = v19;
      v26 = v38;
      v27 = v20;
      v28 = v40;
      v29 = v35;
      v30 = v34;
      v31 = v41;
      v12 = v36;
      v32 = Dictionary.init(dictionaryLiteral:)();
      v11.super.isa = isa;
      outlined bridged method (mbnnn) of @objc NSMutableAttributedString.setAttributes(_:range:)(v32, v43, v42, isa);
      v23 += 2;
      v22 = v45 - 1;
    }

    while (v45 != 1);
  }

  return v11.super.isa;
}

uint64_t TextLayoutEngine.__deallocating_deinit()
{
  TextLayoutEngine.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

void outlined bridged method (mbnnn) of @objc NSMutableAttributedString.setAttributes(_:range:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 setAttributes:isa range:{a2, a3}];
}

BOOL static PushToTalkViewModel.TalkButtonState.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if ((a2 & 0xFE) == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

Swift::Int PushToTalkViewModel.TransmitSource.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PushToTalkViewModel.TransmitSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PushToTalkViewModel.TransmitSource.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t key path getter for PushToTalkViewModel.pttTalkButtonState : PushToTalkViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t PushToTalkViewModel.pttTalkButtonState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PushToTalkViewModel.pttTalkButtonState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for PushToTalkViewModel.$pttTalkButtonState : PushToTalkViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return PushToTalkViewModel.$pttTalkButtonState.setter(v5);
}

uint64_t PushToTalkViewModel.$pttTalkButtonState.getter()
{
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t PushToTalkViewModel.$pttTalkButtonState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t key path setter for PushToTalkViewModel.conversationControlsManager : PushToTalkViewModel(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);
  v4 = *a1;
  return v3(v2);
}

void PushToTalkViewModel.conversationControlsManager.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*PushToTalkViewModel.conversationControlsManager.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_conversationControlsManager;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_30_2();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return TapInteraction.view.modify;
}

uint64_t PushToTalkViewModel.__allocating_init(conversationControlsManager:)(void *a1)
{
  v2 = swift_allocObject();
  PushToTalkViewModel.init(conversationControlsManager:)(a1);
  return v2;
}

uint64_t PushToTalkViewModel.init(conversationControlsManager:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo22TUCallTransmissionModeV_GMd);
  OUTLINED_FUNCTION_1();
  v58 = v4;
  v59 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v52 = v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySo22TUCallTransmissionModeV_GGMd);
  OUTLINED_FUNCTION_1();
  v63 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  v53 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GMd);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGMd);
  OUTLINED_FUNCTION_1();
  v56 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAGy_AKySo22TUCallTransmissionModeV_GGGMd);
  OUTLINED_FUNCTION_1();
  v62 = v21;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_1();
  v51 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAIy_AMySo22TUCallTransmissionModeV_GGG15ConversationKit0lmN9ViewModelC0n6ButtonP0OGMd);
  OUTLINED_FUNCTION_1();
  v64 = v24;
  v65 = v25;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_1();
  v55 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMd);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v51 - v32;
  v34 = OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel__pttTalkButtonState;
  v66 = 2;
  Published.init(initialValue:)();
  (*(v30 + 32))(v2 + v34, v33, v28);
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_talkButtonIsBeingPressed) = 0;
  v57 = OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_cancellables;
  *(v2 + OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v35 = swift_unknownObjectWeakAssign();
  v36 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x780))(v35);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<PushToTalkChannelState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GMd);
  lazy protocol witness table accessor for type PushToTalkChannelState and conformance PushToTalkChannelState(&lazy protocol witness table cache variable for type PushToTalkChannelState and conformance PushToTalkChannelState, MEMORY[0x1E6995F48]);
  Publisher<>.removeDuplicates()();
  v37 = (*(v13 + 8))(v16, v11);
  v38 = v52;
  (*((*v36 & *a1) + 0x7B0))(v37);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<TUCallTransmissionMode>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo22TUCallTransmissionModeV_GMd);
  lazy protocol witness table accessor for type PushToTalkChannelState and conformance PushToTalkChannelState(&lazy protocol witness table cache variable for type TUCallTransmissionMode and conformance TUCallTransmissionMode, type metadata accessor for TUCallTransmissionMode);
  v39 = v53;
  v40 = v58;
  Publisher<>.removeDuplicates()();
  (*(v59 + 8))(v38, v40);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<PushToTalkChannelState>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<TUCallTransmissionMode>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySo22TUCallTransmissionModeV_GGMd);
  v41 = v51;
  v42 = v39;
  v43 = v54;
  v44 = v61;
  Publisher.combineLatest<A>(_:)();
  (*(v63 + 8))(v42, v44);
  (*(v56 + 8))(v20, v43);
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for closure #1 in PushToTalkViewModel.init(conversationControlsManager:);
  *(v46 + 24) = v45;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<PushToTalkChannelState>.Publisher>, Publishers.RemoveDuplicates<Published<TUCallTransmissionMode>.Publisher>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAGy_AKySo22TUCallTransmissionModeV_GGGMd);

  v47 = v55;
  v48 = v60;
  Publisher.compactMap<A>(_:)();

  (*(v62 + 8))(v41, v48);
  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<PushToTalkChannelState>.Publisher>, Publishers.RemoveDuplicates<Published<TUCallTransmissionMode>.Publisher>>, PushToTalkViewModel.TalkButtonState> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy20CommunicationsUICore22PushToTalkChannelStateO_GGAIy_AMySo22TUCallTransmissionModeV_GGG15ConversationKit0lmN9ViewModelC0n6ButtonP0OGMd);
  v49 = v64;
  Publisher<>.sink(receiveValue:)();

  (*(v65 + 8))(v47, v49);
  OUTLINED_FUNCTION_30_2();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

uint64_t lazy protocol witness table accessor for type PushToTalkChannelState and conformance PushToTalkChannelState(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in PushToTalkViewModel.init(conversationControlsManager:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 4;
  }

  v4 = PushToTalkViewModel.state(channelState:transmissionMode:)(a1, a2);

  return v4;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed PushToTalkChannelState, @unowned TUCallTransmissionMode) -> (@unowned PushToTalkViewModel.TalkButtonState?)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore22PushToTalkChannelStateO_So22TUCallTransmissionModeVtMd);
  result = a2(a1, *(a1 + *(v6 + 48)));
  *a3 = result;
  return result;
}

uint64_t closure #2 in PushToTalkViewModel.init(conversationControlsManager:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PushToTalkViewModel.pttTalkButtonState.setter();
  }

  return result;
}

uint64_t PushToTalkViewModel.state(channelState:transmissionMode:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PushToTalkChannelState();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 2)
  {
    return 3;
  }

  (*(v7 + 16))(v11, a1, v5, v9);
  v12 = (*(v7 + 88))(v11, v5);
  if (v12 == *MEMORY[0x1E6995F20])
  {
    return 3;
  }

  if (v12 == *MEMORY[0x1E6995F38])
  {
    return 2;
  }

  if (v12 == *MEMORY[0x1E6995F40])
  {
    if (a2)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (v12 == *MEMORY[0x1E6995F28] || v12 == *MEMORY[0x1E6995F30])
  {
    return (*(v2 + OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_talkButtonIsBeingPressed) & 1) == 0;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t PushToTalkViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel__pttTalkButtonState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit19PushToTalkViewModelC0G11ButtonStateOGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x1BFB23F10](v0 + OBJC_IVAR____TtC15ConversationKit19PushToTalkViewModel_conversationControlsManager);

  return v0;
}

uint64_t PushToTalkViewModel.__deallocating_deinit()
{
  PushToTalkViewModel.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type PushToTalkViewModel.TransmitSource and conformance PushToTalkViewModel.TransmitSource()
{
  result = lazy protocol witness table cache variable for type PushToTalkViewModel.TransmitSource and conformance PushToTalkViewModel.TransmitSource;
  if (!lazy protocol witness table cache variable for type PushToTalkViewModel.TransmitSource and conformance PushToTalkViewModel.TransmitSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PushToTalkViewModel.TransmitSource and conformance PushToTalkViewModel.TransmitSource);
  }

  return result;
}

uint64_t type metadata accessor for PushToTalkViewModel()
{
  result = type metadata singleton initialization cache for PushToTalkViewModel;
  if (!type metadata singleton initialization cache for PushToTalkViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PushToTalkViewModel()
{
  type metadata accessor for Published<PushToTalkViewModel.TalkButtonState>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<PushToTalkViewModel.TalkButtonState>()
{
  if (!lazy cache variable for type metadata for Published<PushToTalkViewModel.TalkButtonState>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<PushToTalkViewModel.TalkButtonState>);
    }
  }
}

unsigned __int8 *getEnumTagSinglePayload for PushToTalkViewModel.TalkButtonState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PushToTalkViewModel.TalkButtonState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for PushToTalkViewModel.TalkButtonState(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for PushToTalkViewModel.TalkButtonState(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushToTalkViewModel.TransmitSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PushToTalkViewModel.TransmitSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

id PushToTalkFullScreenViewController.backgroundMaterialView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id PushToTalkFullScreenViewController.init(conversationControlsManager:)(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_cancellables] = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_conversationControlsManager] = a1;
  objc_allocWithZone(type metadata accessor for PushToTalkView());
  v4 = a1;
  *&v2[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_pttView] = PushToTalkView.init(conversationControlsManager:)(v4);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PushToTalkFullScreenViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);

  return v5;
}

id PushToTalkFullScreenViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkFullScreenViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_cancellables) = MEMORY[0x1E69E7CD0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall PushToTalkFullScreenViewController.viewDidLoad()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_1();
  v110 = v2;
  type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v111 = v4;
  v112 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v109 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v88 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd);
  v115 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v23);
  v98 = v88 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo6TUCallCSgGMd);
  OUTLINED_FUNCTION_1();
  v103 = v25;
  v104 = v26;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_1();
  v99 = v28;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVySo6TUCallCSgGMd);
  OUTLINED_FUNCTION_1();
  v101 = v29;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  v94 = v88 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0C4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGAJGGMd);
  OUTLINED_FUNCTION_1();
  v105 = v32;
  v106 = v33;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_1();
  v97 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0D4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGALGGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v107 = v36;
  v108 = v37;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_1();
  v102 = v39;
  v40 = type metadata accessor for PushToTalkFullScreenViewController();
  v117.receiver = v0;
  v117.super_class = v40;
  objc_msgSendSuper2(&v117, sel_viewDidLoad);
  v41 = [objc_opt_self() sharedInstance];
  v42 = [v41 frontmostBargeCall];

  v116 = v42;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6TUCallCSgMd);
  Just.init(_:)();
  v43 = objc_opt_self();
  v44 = [v43 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v45 = [v43 &off_1E7FE9380 + 5];
  NSNotificationCenter.publisher(for:object:)();

  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.merge(with:)();
  v46 = *(v8 + 8);
  v47 = v11;
  v48 = v6;
  v46(v47, v6);
  v46(v14, v6);
  v89 = v46;
  v113 = v43;
  v49 = [v43 &off_1E7FE9380 + 5];
  NSNotificationCenter.publisher(for:object:)();

  v50 = v90;
  v51 = v17;
  Publishers.MergeMany.merge(with:)();
  v46(v14, v48);
  v52 = v115 + 8;
  v114 = *(v115 + 8);
  v114(v51, v15);
  v115 = v52;
  v53 = [v43 &off_1E7FE9380 + 5];
  NSNotificationCenter.publisher(for:object:)();

  v54 = v91;
  v55 = v15;
  Publishers.MergeMany.merge(with:)();
  v56 = v14;
  v88[0] = v48;
  v88[1] = v8 + 8;
  v57 = v89;
  v89(v14, v48);
  v58 = v50;
  v59 = v55;
  v60 = v55;
  v61 = v114;
  v114(v58, v59);
  v62 = v113;
  v63 = [v113 defaultCenter];
  OUTLINED_FUNCTION_8_27();

  v64 = v93;
  Publishers.MergeMany.merge(with:)();
  v57(v56, v48);
  v61(v54, v60);
  v65 = v62;
  v66 = [v62 defaultCenter];
  OUTLINED_FUNCTION_8_27();

  v67 = v95;
  v68 = v60;
  Publishers.MergeMany.merge(with:)();
  v69 = v88[0];
  v57(v56, v88[0]);
  v114(v64, v60);
  v70 = [v65 defaultCenter];
  OUTLINED_FUNCTION_8_27();

  v71 = v96;
  Publishers.MergeMany.merge(with:)();
  v57(v56, v69);
  v72 = v114;
  v114(v67, v68);
  v73 = [v113 defaultCenter];
  OUTLINED_FUNCTION_8_27();

  v74 = v98;
  Publishers.MergeMany.merge(with:)();
  v57(v56, v69);
  v72(v71, v68);
  v75 = v72;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<NSNotificationCenter.Publisher> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd);
  v76 = v99;
  Publisher.map<A>(_:)();
  v75(v74, v68);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Just<TUCall?> and conformance Just<A>, &_s7Combine4JustVySo6TUCallCSgGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.MergeMany<NSNotificationCenter.Publisher>, TUCall?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo6TUCallCSgGMd);
  v77 = v97;
  v78 = v100;
  v79 = v103;
  v80 = v94;
  Publisher.merge<A>(with:)();
  (*(v104 + 8))(v76, v79);
  (*(v101 + 8))(v80, v78);
  v81 = v109;
  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v82 = static OS_dispatch_queue.main.getter();
  v116 = v82;
  v83 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v84 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v83);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Merge<Just<TUCall?>, Publishers.Map<Publishers.MergeMany<NSNotificationCenter.Publisher>, TUCall?>> and conformance Publishers.Merge<A, B>, &_s7Combine10PublishersO5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0C4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGAJGGMd);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  v85 = v102;
  v86 = v105;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v84, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v111 + 8))(v81, v112);
  (*(v106 + 8))(v77, v86);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.Merge<Just<TUCall?>, Publishers.Map<Publishers.MergeMany<NSNotificationCenter.Publisher>, TUCall?>>, OS_dispatch_queue> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC5MergeVy_AA4JustVySo6TUCallCSgGAC3MapVy_AC0D4ManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGALGGSo17OS_dispatch_queueCGMd);
  v87 = v107;
  Publisher<>.sink(receiveValue:)();

  (*(v108 + 8))(v85, v87);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  PushToTalkFullScreenViewController.setupMaterialView()();
  PushToTalkFullScreenViewController.setupPTTView()();
}

uint64_t closure #1 in PushToTalkFullScreenViewController.viewDidLoad()@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v3[3])
  {
    result = outlined destroy of TapInteractionHandler?(v3, &_sypSgMd);
    goto LABEL_5;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a1 = 0;
  }

  return result;
}

void closure #2 in PushToTalkFullScreenViewController.viewDidLoad()(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = v1;
      if ([v4 isPTT] & 1) != 0 && (v5 = OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_conversationControlsManager, v6 = MEMORY[0x1E69E7D40], v7 = (*((*MEMORY[0x1E69E7D40] & **&v3[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_conversationControlsManager]) + 0x2A0))(), v9 = v8, v4 = v4, LOBYTE(v9) = specialized == infix(_:_:)(v7, v9, v4), swift_unknownObjectRelease(), v4, (v9))
      {
        v10 = *&v3[v5];
        v11 = *((*v6 & *v10) + 0x2A0);
        v12 = v10;
        v11();

        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v15 = *&v3[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_pttView];
          v16 = *((*v6 & *v15) + 0x128);
          v17 = v15;
          v16(v14);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void PushToTalkFullScreenViewController.setupMaterialView()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = PushToTalkFullScreenViewController.backgroundMaterialView.getter();
  [v2 addSubview_];

  v4 = OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView] setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA7F0;
  v6 = [*&v0[v4] topAnchor];
  v7 = OUTLINED_FUNCTION_2_34();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 topAnchor];

  v10 = OUTLINED_FUNCTION_3_28();
  v12 = [v10 v11];

  *(v5 + 32) = v12;
  v13 = [*&v0[v4] leadingAnchor];
  v14 = OUTLINED_FUNCTION_2_34();
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = OUTLINED_FUNCTION_3_28();
  v19 = [v17 v18];

  *(v5 + 40) = v19;
  v20 = [*&v0[v4] trailingAnchor];
  v21 = OUTLINED_FUNCTION_2_34();
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = OUTLINED_FUNCTION_3_28();
  v26 = [v24 v25];

  *(v5 + 48) = v26;
  v27 = [*&v0[v4] bottomAnchor];
  v28 = OUTLINED_FUNCTION_2_34();
  if (!v28)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = OUTLINED_FUNCTION_3_28();
  v33 = [v31 v32];

  *(v5 + 56) = v33;
  v34 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints_];
}

void PushToTalkFullScreenViewController.setupPTTView()()
{
  v1 = PushToTalkFullScreenViewController.backgroundMaterialView.getter();
  v2 = [v1 contentView];

  v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController_pttView);
  [v2 addSubview_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA7F0;
  v5 = [v3 topAnchor];
  v6 = OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView;
  v7 = [*(v0 + OBJC_IVAR____TtC15ConversationKit34PushToTalkFullScreenViewController____lazy_storage___backgroundMaterialView) topAnchor];
  v8 = OUTLINED_FUNCTION_6_21();

  *(v4 + 32) = v8;
  v9 = [v3 leadingAnchor];
  v10 = [*(v0 + v6) leadingAnchor];
  v11 = OUTLINED_FUNCTION_6_21();

  *(v4 + 40) = v11;
  v12 = [v3 trailingAnchor];
  v13 = [*(v0 + v6) trailingAnchor];
  v14 = OUTLINED_FUNCTION_6_21();

  *(v4 + 48) = v14;
  v15 = [v3 bottomAnchor];
  v16 = [*(v0 + v6) bottomAnchor];
  v17 = OUTLINED_FUNCTION_3_28();
  v19 = [v17 v18];

  *(v4 + 56) = v19;
  v20 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 activateConstraints_];
}

id PushToTalkFullScreenViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PushToTalkFullScreenViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkFullScreenViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher()
{
  result = lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher;
  if (!lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher);
  }

  return result;
}

uint64_t specialized == infix(_:_:)(void *a1, uint64_t a2, void *a3)
{
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  if (a1 == a3)
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    swift_unknownObjectRetain();
    v5 = a3;
    v6 = static NSObject.== infix(_:_:)();

    swift_unknownObjectRelease();
    return v6 & 1;
  }

  type metadata accessor for PlaceholderCall();
  if (!swift_dynamicCastClass())
  {
    _StringGuts.grow(_:)(40);

    swift_getObjectType();
    v9 = _typeName(_:qualified:)();
    MEMORY[0x1BFB20B10](v9);

    MEMORY[0x1BFB20B10](0x203A736872202CLL, 0xE700000000000000);
    swift_getObjectType();
    v10 = _typeName(_:qualified:)();
    MEMORY[0x1BFB20B10](v10);

    MEMORY[0x1BFB20B10](41, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    swift_unknownObjectRetain();
    v8 = a3;
    v6 = static PlaceholderCall.== infix(_:_:)();
    swift_unknownObjectRelease();

    return v6 & 1;
  }

  return result;
}

BOOL static CATransform3D.== infix(_:_:)(const void *a1, const void *a2)
{
  memcpy(&v4, a2, sizeof(v4));
  memcpy(&__dst, a1, sizeof(__dst));
  return CATransform3DEqualToTransform(&__dst, &v4);
}

void CATransform3D.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB22680](*&v1);
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_0_26();
}

Swift::Int CATransform3D.hashValue.getter()
{
  Hasher.init(_seed:)();
  CATransform3D.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CATransform3D()
{
  Hasher.init(_seed:)();
  CATransform3D.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CATransform3D and conformance CATransform3D()
{
  result = lazy protocol witness table cache variable for type CATransform3D and conformance CATransform3D;
  if (!lazy protocol witness table cache variable for type CATransform3D and conformance CATransform3D)
  {
    type metadata accessor for CATransform3D(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CATransform3D and conformance CATransform3D);
  }

  return result;
}

id NSValue.init(point:)(SEL *a1, double a2, double a3)
{
  v3 = [swift_getObjCClassFromMetadata() *a1];

  return v3;
}

uint64_t CaptionsViewController.captioningStateManager.setter(uint64_t a1)
{
  v3 = direct field offset for CaptionsViewController.captioningStateManager;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
}

uint64_t key path getter for CaptionsViewController.delegate : CaptionsViewController@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + direct field offset for CaptionsViewController.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CaptionsViewController.delegate : CaptionsViewController(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + direct field offset for CaptionsViewController.delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CaptionsViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_13();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CaptionsViewController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = direct field offset for CaptionsViewController.delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t key path getter for CaptionsViewController.captionVisibilityDuringCapture : CaptionsViewController@<X0>(void *a1@<X0>, uint64_t (**a2)(double *a1, unsigned __int8 *a2)@<X8>)
{
  v3 = (*a1 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned CGRect, @unowned Bool) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for CaptionsViewController.captionVisibilityDuringCapture : CaptionsViewController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGRect, @in_guaranteed Bool) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t CaptionsViewController.captionVisibilityDuringCapture.getter()
{
  OUTLINED_FUNCTION_6_11();
  v1 = *v0;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v0);
  return v1;
}

uint64_t CaptionsViewController.captionVisibilityDuringCapture.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_13();
  v5 = *v2;
  *v2 = a1;
  v2[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

uint64_t CaptionsViewController.speechModelDownloadPromptBlocked.getter()
{
  v1 = direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t CaptionsViewController.speechModelDownloadPromptBlocked.setter(char a1)
{
  v3 = direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CaptionsViewController.isBroadcastingScreenSharingActive.getter()
{
  v1 = direct field offset for CaptionsViewController.isBroadcastingScreenSharingActive;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t CaptionsViewController.isBroadcastingScreenSharingActive.setter(char a1)
{
  v3 = direct field offset for CaptionsViewController.isBroadcastingScreenSharingActive;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*CaptionsViewController.allowsMinimization.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = CaptionsViewController.allowsMinimization.getter() & 1;
  return CaptionsViewController.allowsMinimization.modify;
}

uint64_t CaptionsViewController.allowsMinimization.getter(uint64_t (*a1)(void))
{

  CaptionsViewModel.source.getter();
  LOBYTE(a1) = a1();

  return a1 & 1;
}

uint64_t CaptionsViewController.minimize(_:)(uint64_t a1, void (*a2)(uint64_t))
{

  CaptionsViewModel.source.getter();
  a2(a1);
}

uint64_t (*CaptionsViewController.isGroupCall.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = CaptionsViewController.isGroupCall.getter() & 1;
  return CaptionsViewController.isGroupCall.modify;
}

uint64_t CaptionsViewController.callName.getter()
{
  OUTLINED_FUNCTION_10_10();
  CaptionsViewModel.source.getter();
  v0 = CaptionsStateSource.callName.getter();

  return v0;
}

uint64_t key path setter for CaptionsViewController.callName : CaptionsViewController(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CaptionsViewController.callName.setter(v1, v2);
}

uint64_t CaptionsViewController.callName.setter(uint64_t a1, uint64_t a2)
{

  CaptionsViewModel.source.getter();
  CaptionsStateSource.callName.setter(a1, a2);
}

uint64_t (*CaptionsViewController.callName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CaptionsViewController.callName.getter();
  a1[1] = v3;
  return CaptionsViewController.callName.modify;
}

uint64_t CaptionsViewController.callName.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return CaptionsViewController.callName.setter(*a1, v2);
  }

  CaptionsViewController.callName.setter(v3, v2);
}

void *CaptionsViewController.groupImage.getter()
{
  OUTLINED_FUNCTION_10_10();
  CaptionsViewModel.source.getter();
  v0 = CaptionsStateSource.groupImage.getter();

  return v0;
}

uint64_t key path setter for CaptionsViewController.groupImage : CaptionsViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return CaptionsViewController.groupImage.setter(v1);
}

uint64_t CaptionsViewController.groupImage.setter(void *a1)
{

  CaptionsViewModel.source.getter();
  CaptionsStateSource.groupImage.setter(a1);
}

void (*CaptionsViewController.groupImage.modify(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = CaptionsViewController.groupImage.getter();
  return CaptionsViewController.groupImage.modify;
}

void CaptionsViewController.groupImage.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CaptionsViewController.groupImage.setter(v2);
  }

  else
  {
    CaptionsViewController.groupImage.setter(*a1);
  }
}

uint64_t CaptionsViewController.languageModelDownloadingProgress.getter()
{
  OUTLINED_FUNCTION_10_10();
  CaptionsViewModel.source.getter();
  v0 = CaptionsStateSource.languageModelDownloadingProgress.getter();

  return v0;
}

uint64_t CaptionsViewController.languageModelDownloadingProgress.setter()
{

  CaptionsViewModel.source.getter();
  CaptionsStateSource.languageModelDownloadingProgress.setter();
}

uint64_t (*CaptionsViewController.languageModelDownloadingProgress.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  *a1 = CaptionsViewController.languageModelDownloadingProgress.getter();
  *(a1 + 8) = v3 & 1;
  return CaptionsViewController.languageModelDownloadingProgress.modify;
}

uint64_t CaptionsViewController.updateCaptions(for:)(uint64_t a1)
{

  CaptionsViewModel.updateCaptions(for:)(a1);
}

id CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6, char *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = *a7;
  *(v10 + direct field offset for CaptionsViewController.screenSharingStateMonitor) = 0;
  *(v10 + direct field offset for CaptionsViewController.captioningStateManager) = 0;
  *(v10 + direct field offset for CaptionsViewController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = (v10 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture);
  *v18 = 0;
  v18[1] = 0;
  *(v10 + direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked) = 0;
  *(v10 + direct field offset for CaptionsViewController.isBroadcastingScreenSharingActive) = 0;
  v19 = direct field offset for CaptionsViewController.logger;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.conversationKit);
  (*(*(v20 - 8) + 16))(v10 + v19, v21, v20);
  ObjectType = swift_getObjectType();
  *(v10 + direct field offset for CaptionsViewController.allowsScreenshots) = (*(a9 + 512))(ObjectType, a9) & 1;
  LOBYTE(v36[0]) = v17;
  v35 = a4;
  swift_unknownObjectRetain();
  v23 = static Platform.current.getter() == 2;
  type metadata accessor for CaptionsViewModel(0);
  swift_allocObject();
  v24 = a6 & 1;
  v25 = CaptionsViewModel.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:allowsSuppression:)(a1, a2, a3, a4, a5 & 1, v24, v36, a8, a9, v23);
  *(v10 + direct field offset for CaptionsViewController.viewModel) = v25;
  v36[1] = 0;
  v36[2] = 0;
  v36[0] = v25;

  v26 = UIHostingController.init(rootView:)();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  *(v28 + 24) = v27;
  v29 = v26;

  CaptionsViewModel.onRequestMinimizeHandler.setter(partial apply for closure #1 in CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:), v28);

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  CaptionsViewModel.onRequestDismissControlsHandler.setter(partial apply for closure #2 in CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:), v30);

  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  swift_unknownObjectRelease();

  return v29;
}

void closure #1 in CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:)(char a1, char a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = Strong + direct field offset for CaptionsViewController.delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v4, a1 & 1, ObjectType, v6);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void closure #2 in CaptionsViewController.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + direct field offset for CaptionsViewController.delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id CaptionsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CaptionsViewController.init(coder:)()
{
  *(v0 + direct field offset for CaptionsViewController.screenSharingStateMonitor) = 0;
  *(v0 + direct field offset for CaptionsViewController.captioningStateManager) = 0;
  *(v0 + direct field offset for CaptionsViewController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + direct field offset for CaptionsViewController.speechModelDownloadPromptBlocked) = 0;
  *(v0 + direct field offset for CaptionsViewController.isBroadcastingScreenSharingActive) = 0;
  v2 = direct field offset for CaptionsViewController.logger;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_1_20();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, static Logger.conversationKit);
  (*(*(v3 - 8) + 16))(v0 + v2, v4, v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CaptionsViewController.viewDidLoad()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 layer];

  if (*(v0 + direct field offset for CaptionsViewController.allowsScreenshots))
  {
    v7 = 0;
  }

  else
  {
    v7 = 1042;
  }

  [v6 setDisableUpdateMask_];
}

void @objc CaptionsViewController.viewDidLoad()(void *a1)
{
  v1 = a1;
  CaptionsViewController.viewDidLoad()();
}

Swift::Void __swiftcall CaptionsViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_traitCollectionDidChange_, isa);
  if (!static Platform.current.getter() || static Platform.current.getter() == 1)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v3)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      OUTLINED_FUNCTION_10_10();
      CaptionsViewModel.source.getter();
      CaptionsStateSource.isMinimized.setter(0);
    }
  }
}

void @objc CaptionsViewController.traitCollectionDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  CaptionsViewController.traitCollectionDidChange(_:)(v9);
}

uint64_t CaptionsViewController.update(with:updateReason:)(Swift::OpaquePointer a1)
{

  CaptionsViewModel.update(with:)(a1);
}

uint64_t CaptionsViewController.__ivar_destroyer()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + direct field offset for CaptionsViewController.delegate);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture));
  v1 = direct field offset for CaptionsViewController.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id CaptionsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc CaptionsViewController.__ivar_destroyer(uint64_t a1)
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(a1 + direct field offset for CaptionsViewController.delegate);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(a1 + direct field offset for CaptionsViewController.captionVisibilityDuringCapture));
  v2 = direct field offset for CaptionsViewController.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  v4 = *(v3 + 8);

  return v4(a1 + v2);
}

uint64_t type metadata accessor for CaptionsViewController()
{
  result = type metadata singleton initialization cache for CaptionsViewController;
  if (!type metadata singleton initialization cache for CaptionsViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CaptionsViewController()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CGRect, @in_guaranteed Bool) -> (@out ())(char a1, double a2, double a3, double a4, double a5)
{
  v6 = *(v5 + 16);
  *v9 = a2;
  *&v9[1] = a3;
  *&v9[2] = a4;
  *&v9[3] = a5;
  v8 = a1;
  return v6(v9, &v8);
}

uint64_t key path getter for CancelConfirmationViewModel.delegate : CancelConfirmationViewModel@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CancelConfirmationViewModel.delegate : CancelConfirmationViewModel(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CancelConfirmationViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*CancelConfirmationViewModel.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return CancelConfirmationViewModel.delegate.modify;
}

uint64_t CancelConfirmationViewModel.config.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVyytGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  if (*(v0 + 32))
  {
    v5 = *(v0 + 32);
  }

  else
  {
    v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCyytGMd);
    CancelConfirmationViewModel.buttonStyle.getter(v4);
    v6 = objc_opt_self();
    v7 = [v6 conversationKit];
    v17._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0x6C65636E6143;
    v8._object = 0xE600000000000000;
    v9.value._countAndFlagsBits = 0x61737265766E6F43;
    v9.value._object = 0xEF74694B6E6F6974;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v17);

    v11 = [v6 conversationKit];
    v18._object = 0xE000000000000000;
    v12._object = 0x80000001BC4F46F0;
    v12._countAndFlagsBits = 0xD000000000000010;
    v13.value._countAndFlagsBits = 0x61737265766E6F43;
    v13.value._object = 0xEF74694B6E6F6974;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v18);

    swift_allocObject();
    swift_weakInit();
    v5 = IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)();
    *(v1 + 32) = v5;
  }

  return v5;
}

Swift::Void __swiftcall CancelConfirmationViewModel.didTap()()
{
  OUTLINED_FUNCTION_0_27();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }
}

uint64_t CancelConfirmationViewModel.symbolName.getter()
{
  v0 = *MEMORY[0x1E69DDDC8];
  v4[64] = 0;
  v5[0] = 0x6F642E656E6F6870;
  v5[1] = 0xEF6C6C69662E6E77;
  v5[2] = 2;
  v5[3] = v0;
  v6 = 0;
  v7 = 7;
  v8 = 0;
  v9 = 0;
  v10[0] = 0x6F642E656E6F6870;
  v10[1] = 0xEF6C6C69662E6E77;
  v10[2] = 2;
  v10[3] = v0;
  v11 = 0;
  v12 = 7;
  v13 = 0;
  v14 = 0;
  v1 = v0;
  outlined init with copy of SymbolImageDescription(v5, v4);
  outlined destroy of SymbolImageDescription(v10);
  v2 = v5[0];

  outlined destroy of SymbolImageDescription(v5);
  return v2;
}

uint64_t CancelConfirmationViewModel.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for IconButtonWidthRestriction();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v30 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Font.Leading();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Image.Scale();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMd);
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v24 = v23 - v13;
  v23[1] = CancelConfirmationViewModel.symbolName.getter();
  static Color.white.getter();
  *(&v35 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVAASbRszlE23iOSControlBackgroundOffQrvpZQOySb__Qo_Md);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v34);
  static IconButtonStyle.SystemSymbol<A>.iOSControlBackgroundOff.getter();
  static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
  v14 = type metadata accessor for _Glass();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  (*(v6 + 104))(v8, *MEMORY[0x1E69816E0], v5);
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  static Font.Weight.regular.getter();
  static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:scale:font:weight:)();

  (*(v6 + 8))(v8, v5);
  outlined destroy of TapInteractionHandler?(v11, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of TapInteractionHandler?(&v34, &_s7SwiftUI10ShapeStyle_pSgMd);
  OpaqueTypeConformance2 = 0;
  v34 = 0u;
  v35 = 0u;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v14);
  static Color.white.getter();
  static Font.subheadline.getter();
  v15 = v25;
  v16 = v26;
  v17 = v27;
  (*(v26 + 104))(v25, *MEMORY[0x1E6980EA8], v27);
  Font.leading(_:)();

  (*(v16 + 8))(v15, v17);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v19 = v30;
  v18 = v31;
  v20 = v32;
  (*(v31 + 104))(v30, *MEMORY[0x1E6995BD0], v32);
  v21 = v24;
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v18 + 8))(v19, v20);
  outlined destroy of TapInteractionHandler?(v11, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of TapInteractionHandler?(&v34, &_s7SwiftUI10ShapeStyle_pSgMd);
  return (*(v28 + 8))(v21, v29);
}

uint64_t closure #1 in CancelConfirmationViewModel.config.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CancelConfirmationViewModel.didTap()();
  }

  return result;
}

uint64_t CancelConfirmationViewModel.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  return v0;
}

uint64_t CancelConfirmationViewModel.__deallocating_deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CancelConfirmationViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  CancelConfirmationViewModel.init()();
  return v0;
}

uint64_t CancelConfirmationViewModel.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  return v0;
}

uint64_t protocol witness for CallControlsPreCallButtonViewModel.delegate.setter in conformance CancelConfirmationViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for CallControlsPreCallButtonViewModel.delegate.modify in conformance CancelConfirmationViewModel(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = *v1;
  v3[5] = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 24);
  v3[3] = Strong;
  v3[4] = v6;
  return protocol witness for CallControlsPreCallButtonViewModel.delegate.modify in conformance CancelConfirmationViewModel;
}

void CancelConfirmationViewModel.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ConversationNoticeButtonProvider.init(controlsManager:context:)(void *a1, char a2)
{
  *(v2 + 160) = a1;
  v4 = ControlsButtonProvider.init(context:shape:)(a2, 2);
  v5 = a1;

  v6 = ConversationNoticeButtonProvider.noticeButtonTitleFont.getter();
  ControlsButtonProvider.titleFont.setter(v6);

  return v4;
}

id ConversationNoticeButtonProvider.noticeButtonTitleFont.getter()
{
  if (*(v0 + 40))
  {
    type metadata accessor for UIFont();
    return static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*MEMORY[0x1E69DDD80], 0, 1);
  }

  else
  {
    result = [objc_opt_self() _preferredFontForTextStyle_variant_];
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall ConversationNoticeButtonProvider.buttonChanged()()
{
  ControlsButtonProvider.buttonChanged()();
  if (!*(v0 + 40))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong titleLabel];

      if (v3)
      {
        [v3 setAdjustsFontSizeToFitWidth_];
        [v3 setMinimumScaleFactor_];
      }
    }
  }
}

uint64_t ConversationNoticeButtonProvider.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = type metadata accessor for UIButton.Configuration.Size();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIBackgroundConfiguration();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  ControlsButtonProvider.defaultButtonConfiguration.getter(v12);
  v16 = objc_opt_self();
  v17 = [v16 whiteColor];
  (*(v9 + 16))(v15, v12, v7);
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  UIButton.Configuration.baseBackgroundColor.setter();
  (*(v9 + 8))(v12, v7);
  v18 = [v16 blackColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v2 + 104))(v5, *MEMORY[0x1E69DC568], v22);
  UIButton.Configuration.buttonSize.setter();
  if (!*(v21[1] + 40))
  {
    v19 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    v19(v24, 0);
    UIButton.Configuration.contentInsets.setter();
    UIButton.Configuration.titleLineBreakMode.setter();
  }

  return (*(v9 + 32))(v23, v15, v7);
}

uint64_t ConversationNoticeButtonProvider.deinit()
{
  v0 = ControlsButtonProvider.deinit();

  return v0;
}

uint64_t ConversationNoticeButtonProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for UIFont()
{
  result = lazy cache variable for type metadata for UIFont;
  if (!lazy cache variable for type metadata for UIFont)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFont);
  }

  return result;
}

ConversationKit::ServiceAvailability __swiftcall ServiceAvailability.init(telephony:faceTimeAudio:faceTimeVideo:faceTimeMultiway:avLessSharePlay:videoMessaging:)(Swift::Bool telephony, Swift::Bool faceTimeAudio, Swift::Bool faceTimeVideo, Swift::Bool faceTimeMultiway, Swift::Bool avLessSharePlay, Swift::Bool videoMessaging)
{
  v6 = 0x10000000000;
  if (!videoMessaging)
  {
    v6 = 0;
  }

  v7 = 0x100000000;
  if (!avLessSharePlay)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!faceTimeMultiway)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if (!faceTimeVideo)
  {
    v9 = 0;
  }

  v10 = 256;
  if (!faceTimeAudio)
  {
    v10 = 0;
  }

  return (v10 & 0xFFFFFFFFFFFFFFFELL | telephony | v9 | v8 | v7 | v6);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ServiceAvailability(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = v7 == 0;
  v15 = 0x10000000000;
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0x10000000000;
  }

  v14 = v6 == 0;
  v17 = 0x100000000;
  if (v14)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x100000000;
  }

  v14 = v5 == 0;
  v19 = 0x1000000;
  if (v14)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x1000000;
  }

  v14 = v4 == 0;
  v21 = 0x10000;
  if (v14)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x10000;
  }

  v14 = v3 == 0;
  v23 = 256;
  if (v14)
  {
    v24 = 0;
  }

  else
  {
    v24 = 256;
  }

  v25 = v24 | v2 | v22 | v20;
  v26 = v18 | v16;
  if (!v13)
  {
    v15 = 0;
  }

  if (!v12)
  {
    v17 = 0;
  }

  if (!v11)
  {
    v19 = 0;
  }

  if (!v10)
  {
    v21 = 0;
  }

  if (!v9)
  {
    v23 = 0;
  }

  return static ServiceAvailability.== infix(_:_:)(v25 | v26, v23 | v8 | v21 | v19 | v17 | v15);
}

uint64_t getEnumTagSinglePayload for ServiceAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[6])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for ServiceAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id UIView.windowRect.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 superview];
  if (result)
  {
    v4 = result;
    [v1 frame];
    [v4 convertPoint:0 toView:?];
    v12 = v5;
    v13 = v6;

    [v1 frame];
    v11 = v7;
    result = [v1 frame];
    *&v10 = v11;
    *&v8 = v12;
    *(&v8 + 1) = v13;
    *(&v10 + 1) = v9;
  }

  else
  {
    v8 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v10;
  *(a1 + 32) = 0;
  return result;
}

void *iOSPeoplePickerAddButtonHandler.presenterViewController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_presenterViewController;
  OUTLINED_FUNCTION_4_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void iOSPeoplePickerAddButtonHandler.presenterViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_presenterViewController;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *iOSPeoplePickerAddButtonHandler.contactsSearchViewController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_contactsSearchViewController;
  OUTLINED_FUNCTION_4_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void iOSPeoplePickerAddButtonHandler.contactsSearchViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_contactsSearchViewController;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for iOSPeoplePickerAddButtonHandler.addToken : iOSPeoplePickerAddButtonHandler@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNComposeRecipient) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for iOSPeoplePickerAddButtonHandler.addToken : iOSPeoplePickerAddButtonHandler(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNComposeRecipient) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t iOSPeoplePickerAddButtonHandler.addToken.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v1);
  return v2;
}

uint64_t iOSPeoplePickerAddButtonHandler.addToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

Swift::Void __swiftcall iOSPeoplePickerAddButtonHandler.handleAddButtonPressed(sourceView:)(UIView *sourceView)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  [v3 setAllowsCancel_];
  [v3 setAllowsEditing_];
  [v3 setDelegate_];
  [v3 setMode_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSPredicate);
  v4 = NSPredicate.init(format:_:)();
  [v3 setPredicateForEnablingContact_];

  v5 = v3;
  [v5 setModalPresentationStyle_];
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 systemGreenColor];
  [v7 setTintColor_];

  v10 = [v5 view];
  if (!v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = [v8 systemBackgroundColor];
  [v10 setBackgroundColor_];

  v12 = OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_presenterViewController;
  OUTLINED_FUNCTION_4_5();
  v13 = *(v2 + v12);
  if (v13)
  {
    v14 = v13;
    [v14 presentViewController:v5 animated:1 completion:0];
  }
}

id iOSPeoplePickerAddButtonHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iOSPeoplePickerAddButtonHandler.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_presenterViewController] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_contactsSearchViewController] = 0;
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id iOSPeoplePickerAddButtonHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall iOSPeoplePickerAddButtonHandler.contactPicker(_:didSelect:)(CNContactPickerViewController *_, CNContactProperty didSelect)
{
  [(CNContactPickerViewController *)_ dismissViewControllerAnimated:1 completion:0];
  v4 = (v2 + OBJC_IVAR____TtC15ConversationKit31iOSPeoplePickerAddButtonHandler_addToken);
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = didSelect.super.isa;
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v5);
    v7 = specialized CNKContactProperty.asRecipient()();
    if (v7)
    {
      v8 = v7;
      v5();
    }

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
  }
}

id specialized CNKContactProperty.asRecipient()()
{
  v1 = [v0 contact];
  @nonobjc CNContactProperty.value.getter(&v11);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      v2 = 0;
      v3 = v9;
      v4 = v10;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of Any?(&v11);
  }

  @nonobjc CNContactProperty.value.getter(&v11);
  if (v12)
  {
    type metadata accessor for NSObject(0, lazy cache variable for type metadata for CNPhoneNumber);
    if (swift_dynamicCast())
    {
      v5 = [v9 stringValue];
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v6;

      v2 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of Any?(&v11);
  }

  v3 = 0;
  v4 = 0xE000000000000000;
  v2 = 5;
LABEL_10:
  if (String.count.getter() < 1)
  {
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x1E6996408]);
    result = @nonobjc CNComposeRecipient.init(contact:address:kind:)(v1, v3, v4, v2);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNComposeRecipient) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AudioSampleNormalizer.description.getter()
{
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  DynamicType = swift_getDynamicType();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v1 = >> prefix<A>(_:)(&DynamicType, MetatypeMetadata);
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](0x52656C706D617328, 0xED0000203A657461);
  v2 = OUTLINED_FUNCTION_14_9();
  LODWORD(DynamicType) = v3(v2);
  v4 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v4);

  MEMORY[0x1BFB20B10](0xD000000000000014, 0x80000001BC4F48F0);
  v5 = OUTLINED_FUNCTION_14_9();
  LODWORD(DynamicType) = v6(v5);
  v7 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v7);

  v8 = OUTLINED_FUNCTION_11_15();
  MEMORY[0x1BFB20B10](v8);
  v9 = OUTLINED_FUNCTION_14_9();
  LOBYTE(DynamicType) = v10(v9) & 1;
  v11 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v11);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return v14;
}

Swift::Int AudioPowerTap.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioPowerTap.Errors()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AudioPowerTap.Errors.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t AudioPowerTap.TapType.description.getter(char a1)
{
  if (a1)
  {
    return 0x6E696C6E776F642ELL;
  }

  else
  {
    return 0x6B6E696C70752ELL;
  }
}

ConversationKit::AudioPowerTap::TapType_optional __swiftcall AudioPowerTap.TapType.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue == -2)
  {
    v1.value = ConversationKit_AudioPowerTap_TapType_downlink;
  }

  else
  {
    v1.value = ConversationKit_AudioPowerTap_TapType_unknownDefault;
  }

  if (rawValue == -3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

ConversationKit::AudioPowerTap::TapType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AudioPowerTap.TapType@<W0>(Swift::Int32 *a1@<X0>, ConversationKit::AudioPowerTap::TapType_optional *a2@<X8>)
{
  result.value = AudioPowerTap.TapType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AudioPowerTap.TapType@<X0>(_DWORD *a1@<X8>)
{
  result = AudioPowerTap.TapType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

id AudioPowerTap.tapDescription.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 4294967294;
  }

  else
  {
    v2 = 4294967293;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E695A888]);

  return [v3 initProcessTapWithFormat:v1 PID:v2];
}

uint64_t key path setter for AudioPowerTap.waveform : AudioPowerTap(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t AudioPowerTap.waveform.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t AudioPowerTap.__allocating_init(type:normalizer:numBands:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a3 + 48);
  v12[3] = a2;
  v12[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v12);
  v10(a1 & 1, a4, a2, a3);
  return (*(v5 + 280))(a1 & 1, v12);
}

uint64_t AudioPowerTap.init(type:normalizer:)(char a1, void *a2)
{
  v3 = v2;
  type metadata accessor for Lock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(v3 + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySaySfGSgs5NeverOGMd);
  swift_allocObject();
  *(v3 + 80) = CurrentValueSubject.init(_:)();
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithCommonFormat:1 sampleRate:1 channels:1 interleaved:(*(v9 + 16))(v8, v9)];
  if (v10)
  {
    *(v3 + 16) = v10;
    *(v3 + 24) = a1 & 1;
    outlined init with copy of IDSLookupManager(a2, v3 + 40);
  }

  else
  {
    if (one-time initialization token for audioTap != -1)
    {
      OUTLINED_FUNCTION_0_28();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.audioTap);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      v19 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v19);
    }

    type metadata accessor for AudioPowerTap();
    swift_deallocPartialClassInstance();
    v3 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v3;
}

id *AudioPowerTap.deinit()
{
  v1 = v0;
  if (one-time initialization token for audioTap != -1)
  {
    OUTLINED_FUNCTION_0_28();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audioTap);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_13_10();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    type metadata accessor for AudioPowerTap();

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v26);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0](v15, v16);
    v17 = OUTLINED_FUNCTION_2_35();
    MEMORY[0x1BFB23DF0](v17);
  }

  if ((*(*v1 + 37))(v18, v19))
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BBC58000, v20, v21, "AudioPowerTap is being stopped on deinit which is errorprone, leading to hangs in main", v22, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0](v23, v24);
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v1 + 5));

  return v1;
}

uint64_t AudioPowerTap.__deallocating_deinit()
{
  AudioPowerTap.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioPowerTap.start()()
{
  v1 = v0;
  if (one-time initialization token for audioTap != -1)
  {
    OUTLINED_FUNCTION_0_28();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audioTap);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_13_10();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v6 = swift_slowAlloc();
    v76[0] = v6;
    *v5 = 136315138;
    v75[0] = v1;
    type metadata accessor for AudioPowerTap();

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v76);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Starting %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  v10 = v1[4];
  os_unfair_lock_lock(*(v10 + 16));
  v11 = swift_beginAccess();
  if (v1[12])
  {
    lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors();
    OUTLINED_FUNCTION_19_6();
    *v12 = 0;
LABEL_12:
    swift_willThrow();
LABEL_13:
    os_unfair_lock_unlock(*(v10 + 16));
    return;
  }

  v13 = *(*v1 + 152);
  v14 = v13(v11);
  v15 = [v14 format];

  v16 = [v15 streamDescription];
  swift_beginAccess();
  v17 = AudioQueueNewInput(v16, @objc closure #1 in AudioPowerTap.start(), v1, 0, 0, 0x800u, v1 + 12);
  v18 = swift_endAccess();
  v19 = v1[12];
  if (!v19 || v17)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v21))
    {
      v22 = OUTLINED_FUNCTION_18_18();
      *v22 = 67109120;
      v22[1] = v17;
      OUTLINED_FUNCTION_5_14(&dword_1BBC58000, v23, v24, "Failed to create processingQueue, OSStatus: %d");
      v25 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v25);
    }

    lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors();
    OUTLINED_FUNCTION_19_6();
    *v26 = 1;
    goto LABEL_12;
  }

  v27 = v13(v18);
  v28 = [objc_allocWithZone(MEMORY[0x1E695A880]) initWithTapDescription_];

  v29 = AudioQueueSetProperty(v19, 0x71746F62u, v28, 8u);
  if (v29)
  {
    v30 = v29;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v32))
    {
      v33 = OUTLINED_FUNCTION_18_18();
      *v33 = 67109120;
      v33[1] = v30;
      OUTLINED_FUNCTION_5_14(&dword_1BBC58000, v34, v35, "Failed to configure AudioQueue, status: %d");
      v36 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v36);
    }

    lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors();
    OUTLINED_FUNCTION_19_6();
    v38 = 2;
    goto LABEL_30;
  }

  [v1[2] sampleRate];
  v40 = v39;
  v41 = v1[8];
  v42 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v41);
  v43 = (*(v42 + 24))(v41, v42);
  v44 = log2f(v40 / v43);
  v45 = exp2f(ceilf(v44));
  if ((LODWORD(v45) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v45 <= -1.0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v45 >= 4295000000.0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v46 = v45;
  swift_beginAccess();
  Buffer = AudioQueueAllocateBuffer(v19, v46, v1 + 11);
  swift_endAccess();
  if (Buffer)
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_25(v49))
    {
LABEL_29:

      lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors();
      OUTLINED_FUNCTION_19_6();
      v38 = 4;
LABEL_30:
      *v37 = v38;
      swift_willThrow();

      goto LABEL_13;
    }

    v50 = OUTLINED_FUNCTION_18_18();
    *v50 = 67109120;
    v50[1] = Buffer;
    v53 = "Failed to allocate buffer, status: %d";
LABEL_28:
    OUTLINED_FUNCTION_5_14(&dword_1BBC58000, v51, v52, v53);
    v59 = OUTLINED_FUNCTION_2_35();
    MEMORY[0x1BFB23DF0](v59);
    goto LABEL_29;
  }

  v54 = v1[11];
  if (v54)
  {
    v55 = AudioQueueEnqueueBuffer(v19, v54, 0, 0);
    if (!v55)
    {
      v60 = AudioQueueStart(v19, 0);
      if (!v60)
      {

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v68, v69))
        {
          OUTLINED_FUNCTION_13_10();
          v70 = swift_slowAlloc();
          OUTLINED_FUNCTION_12_0();
          v71 = swift_slowAlloc();
          v75[0] = v71;
          *v70 = 136315138;
          type metadata accessor for AudioPowerTap();

          v72 = String.init<A>(reflecting:)();
          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v75);

          *(v70 + 4) = v74;
          _os_log_impl(&dword_1BBC58000, v68, v69, "Started %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v71);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        goto LABEL_13;
      }

      v61 = v60;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_25(v63))
      {
        v64 = OUTLINED_FUNCTION_18_18();
        *v64 = 67109120;
        v64[1] = v61;
        OUTLINED_FUNCTION_5_14(&dword_1BBC58000, v65, v66, "Failed to start AudioQueue, status: %d");
        v67 = OUTLINED_FUNCTION_2_35();
        MEMORY[0x1BFB23DF0](v67);
      }

      lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors();
      OUTLINED_FUNCTION_19_6();
      v38 = 3;
      goto LABEL_30;
    }

    v56 = v55;
    v48 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_25(v57))
    {
      goto LABEL_29;
    }

    v58 = OUTLINED_FUNCTION_18_18();
    *v58 = 67109120;
    v58[1] = v56;
    v53 = "Failed to enqueue buffer, status: %d";
    goto LABEL_28;
  }

LABEL_41:
  __break(1u);
}

uint64_t closure #1 in AudioPowerTap.start()(uint64_t result, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v8 = result;
    if (one-time initialization token for audioTap != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.audioTap);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v12 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSpySo16AudioQueueBufferVGMd);
      v13 = String.init<A>(reflecting:)();
      v15 = a2;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);
      a2 = v15;

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1BBC58000, v10, v11, "queueBufferRef %s ptr %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v24, -1, -1);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    mAudioDataByteSize = a3->mAudioDataByteSize;

    if (mAudioDataByteSize >> 2 == a5)
    {
      (*(*v8 + 304))(a3->mAudioData, a5);
      AudioQueueEnqueueBuffer(a2, a3, 0, 0);
    }

    else
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109632;
        *(v23 + 4) = a5;
        *(v23 + 8) = 1024;
        *(v23 + 10) = mAudioDataByteSize >> 2;
        *(v23 + 14) = 1024;
        *(v23 + 16) = mAudioDataByteSize;
        _os_log_impl(&dword_1BBC58000, v21, v22, "Invalid buffer passed. sampleCount %u is not expected value (%u) for buffer: %u", v23, 0x14u);
        MEMORY[0x1BFB23DF0](v23, -1, -1);
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall AudioPowerTap.stop()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock(*(v2 + 16));
  swift_beginAccess();
  v3 = *(v0 + 96);
  if (v3)
  {
    if ([objc_opt_self() isMainThread])
    {
      if (one-time initialization token for audioTap != -1)
      {
        OUTLINED_FUNCTION_0_28();
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.audioTap);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v5, v6))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_8_10();
        _os_log_impl(v7, v8, v9, v10, v11, 2u);
        v12 = OUTLINED_FUNCTION_2_35();
        MEMORY[0x1BFB23DF0](v12);
      }
    }

    if (one-time initialization token for audioTap != -1)
    {
      OUTLINED_FUNCTION_0_28();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.audioTap);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_13_10();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136315138;
      type metadata accessor for AudioPowerTap();

      v18 = String.init<A>(reflecting:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v35);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1BBC58000, v14, v15, "Stopping %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    AudioQueuePause(v3);
    AudioQueueStop(v3, 1u);
    AudioQueueDispose(v3, 1u);
    *(v1 + 96) = 0;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_13_10();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315138;
      type metadata accessor for AudioPowerTap();

      v25 = String.init<A>(reflecting:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v35);

      *(v23 + 4) = v27;
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      v33 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v33);
    }
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return v3 != 0;
}

uint64_t AudioPowerTap.process(_:count:)(const void *a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for audioTap != -1)
  {
    OUTLINED_FUNCTION_0_28();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.audioTap);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v24);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSf_SRySfGTt0g5(a1, a2);
    v13 = MEMORY[0x1BFB20D10]();
    v14 = a1;
    v15 = a2;
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v17, v24);
    a2 = v15;
    a1 = v14;

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1BBC58000, v7, v8, "[%s] Buffer: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  (*(*v3 + 160))();
  v19 = v3[8];
  v20 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v19);
  v21 = (*(v20 + 40))(a1, a2, v19, v20);
  v22 = AudioPowerTap.validatedSamples(_:)(v21);

  v24[0] = v22;
  CurrentValueSubject.send(_:)();
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSf_SRySfGTt0g5(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 4 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd);
    v4 = 4 * a2;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5()
{
  OUTLINED_FUNCTION_21_10();
  if (!v1)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_10_11();
  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5();
  OUTLINED_FUNCTION_6_22();
  specialized Sequence._copySequenceContents(initializing:)(v3, v4, v5, v2);
  OUTLINED_FUNCTION_1_38();
  if (!v6)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15ConversationKit11ParticipantV7CaptionV_SD6ValuesVySiAH_GTt0g5()
{
  OUTLINED_FUNCTION_21_10();
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = OUTLINED_FUNCTION_10_11();
  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ParticipantV7CaptionV_Tt1g5(v3, v4);
  v5 = OUTLINED_FUNCTION_17_1();
  v6 = type metadata accessor for Participant.Caption(v5) - 8;
  v14 = OUTLINED_FUNCTION_15_7(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20);
  specialized Sequence._copySequenceContents(initializing:)(v14, v15, v16, v2);
  OUTLINED_FUNCTION_1_38();
  if (!v17)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15ConversationKit15RecentsCallItemV_ShyAFGTt0g5()
{
  OUTLINED_FUNCTION_21_10();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = OUTLINED_FUNCTION_10_11();
  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit15RecentsCallItemV_Tt1g5(v2, v3);
  v4 = OUTLINED_FUNCTION_17_1();
  v5 = type metadata accessor for RecentsCallItem(v4) - 8;
  OUTLINED_FUNCTION_15_7(v5, v6, v7, v8, type metadata accessor for RecentsCallItem, type metadata accessor for RecentsCallItem, v9, v10, v13, v14);
  specialized Sequence._copySequenceContents(initializing:)();
  OUTLINED_FUNCTION_1_38();
  if (!v11)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo32UICollectionViewLayoutAttributesC_SD6ValuesVy10Foundation9IndexPathVAE_GTt0g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_10_11();
  v6(v5);
  OUTLINED_FUNCTION_6_22();
  a3();
  OUTLINED_FUNCTION_1_38();
  if (!v7)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC15ConversationKit11ApplicationV_SD6ValuesVySSAF_GTt0g5()
{
  OUTLINED_FUNCTION_21_10();
  if (!v1)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_10_11();
  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ApplicationV_Tt1g5();
  OUTLINED_FUNCTION_6_22();
  specialized Sequence._copySequenceContents(initializing:)(v3, v4, v5, v2);
  OUTLINED_FUNCTION_1_38();
  if (!v6)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_ShyAFGTt0g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_10_11();
  v6(v5);
  v7 = OUTLINED_FUNCTION_17_1();
  v8 = a3(v7) - 8;
  OUTLINED_FUNCTION_15_7(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
  specialized Sequence._copySequenceContents(initializing:)();
  OUTLINED_FUNCTION_1_38();
  if (!v16)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SNySiGTt0g5(void *result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      if (v2 != -1)
      {
        v5 = result;
        OUTLINED_FUNCTION_10_11();
        v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5();
        if (specialized Sequence._copySequenceContents(initializing:)(&v7, (v6 + 4), v3, v5, a2) == v3)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t AudioPowerTap.validatedSamples(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v1;
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v6 = 0;
    v3 = v23;
    v21 = v2;
    do
    {
      v7 = *(a1 + 4 * v6 + 32);
      if ((~v7 & 0x7F800000) == 0 && (v7 & 0x7FFFFF) != 0)
      {
        if (*(v4 + 112))
        {
          v7 = 0;
        }

        else
        {
          *(v4 + 112) = 1;
          if (one-time initialization token for audioTap != -1)
          {
            OUTLINED_FUNCTION_0_28();
            swift_once();
          }

          v8 = type metadata accessor for Logger();
          __swift_project_value_buffer(v8, static Logger.audioTap);

          v9 = Logger.logObject.getter();
          v10 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            *v11 = 136315394;
            v12 = String.init<A>(reflecting:)();
            v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

            *(v11 + 4) = v14;
            *(v11 + 12) = 2080;
            type metadata accessor for AudioPowerTap();

            v15 = String.init<A>(reflecting:)();
            v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

            *(v11 + 14) = v17;
            v2 = v21;
            _os_log_impl(&dword_1BBC58000, v9, v10, "Found NaN when processing %s samples in %s", v11, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_3_4();
            MEMORY[0x1BFB23DF0]();
            OUTLINED_FUNCTION_3_4();
            MEMORY[0x1BFB23DF0]();
          }

          v7 = 0;
        }
      }

      v23 = v3;
      v19 = *(v3 + 16);
      v18 = *(v3 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
        v3 = v23;
      }

      ++v6;
      *(v3 + 16) = v19 + 1;
      *(v3 + 4 * v19 + 32) = v7;
    }

    while (v2 != v6);
  }

  return v3;
}

uint64_t AudioPowerTap.description.getter()
{
  v10[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x1BFB20B10](0xD000000000000014, 0x80000001BC4F4910);
  v10[0] = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1BFB20B10](0xD000000000000013, 0x80000001BC4F4930);
  swift_beginAccess();
  if (*(v0 + 96))
  {
    v10[0] = *(v0 + 96);
    v1 = String.init<A>(reflecting:)();
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x1BFB20B10](v1, v3);

  v4 = OUTLINED_FUNCTION_11_15();
  MEMORY[0x1BFB20B10](v4);
  LOBYTE(v10[0]) = *(v0 + 24);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v5);

  MEMORY[0x1BFB20B10](0x6C616D726F6E202CLL, 0xEE00203A72657A69);
  outlined init with copy of IDSLookupManager(v0 + 40, v10);
  v6 = specialized >> prefix<A>(_:)(v10);
  v8 = v7;
  outlined destroy of AudioSampleNormalizer?(v10);
  MEMORY[0x1BFB20B10](v6, v8);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return v11;
}

unint64_t lazy protocol witness table accessor for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors()
{
  result = lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors;
  if (!lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors;
  if (!lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerTap.Errors and conformance AudioPowerTap.Errors);
  }

  return result;
}

uint64_t outlined destroy of AudioSampleNormalizer?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21AudioSampleNormalizer_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AudioPowerTap.TapType and conformance AudioPowerTap.TapType()
{
  result = lazy protocol witness table cache variable for type AudioPowerTap.TapType and conformance AudioPowerTap.TapType;
  if (!lazy protocol witness table cache variable for type AudioPowerTap.TapType and conformance AudioPowerTap.TapType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioPowerTap.TapType and conformance AudioPowerTap.TapType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioPowerTap.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioPowerTap.TapType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20, &lazy protocol witness table cache variable for type TUConversation and conformance NSObject);
}

{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58, &lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject);
}

{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &lazy cache variable for type metadata for SGURL, 0x1E69992A8, &lazy protocol witness table cache variable for type SGURL and conformance NSObject);
}

{
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3, a4, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00, &lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_12:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_11:
    v6 = a3;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a3 - 1;
    v11 = (a4 + 8 * v6 + 24);
    while (v6 != v9)
    {
      *(a2 + 8 * v9) = *v11;
      if (v10 == v9)
      {

        v12 = ~v9 + v6;
        goto LABEL_11;
      }

      --v11;
      ++v9;
    }

    v12 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Participant.Caption(0);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v28 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
    v17 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v17;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = -1 << *(a4 + 32);
    v29 = a1;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v13) >> 6;
    v30 = a3;
    while (v16 < a3)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (!v15)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v15 = 0;
            v13 = v28;
            a1 = v29;
            goto LABEL_20;
          }

          v15 = *(v12 + 8 * v20);
          ++v17;
          if (v15)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v20 = v17;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v32;
      v25 = *(v33 + 72);
      outlined init with copy of RecentsCallItem(v23 + v25 * (v21 | (v20 << 6)), v32, type metadata accessor for Participant.Caption);
      v26 = v24;
      v27 = v31;
      outlined init with take of RecentsCallItem(v26, v31, type metadata accessor for Participant.Caption);
      outlined init with take of RecentsCallItem(v27, a2, type metadata accessor for Participant.Caption);
      a3 = v30;
      if (v19 == v30)
      {
        v17 = v20;
        v13 = v28;
        a1 = v29;
        a4 = v22;
        goto LABEL_20;
      }

      a2 += v25;
      v16 = v19;
      v17 = v20;
      a4 = v22;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, a5);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(a7, a5);
    result = Set.Iterator.init(_cocoa:)();
    v8 = v29;
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(a4 + 32);
    v12 = a4 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a4 + 56);
  }

  v19 = a3;
  if (!a2)
  {
    v20 = 0;
LABEL_28:
    *v10 = v8;
    v10[1] = v12;
    v10[2] = v13;
    v10[3] = v14;
    v10[4] = v15;
    return v20;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v26 = a5;
    v20 = 0;
    v25 = v13;
    v21 = (v13 + 64) >> 6;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v8 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_26;
        }

        type metadata accessor for NSObject(0, v26);
        swift_dynamicCast();
        result = v28;
        v19 = a3;
        if (!v28)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v15)
        {
          while (1)
          {
            v23 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v23 >= v21)
            {
              v15 = 0;
              goto LABEL_26;
            }

            v15 = *(v12 + 8 * v23);
            ++v14;
            if (v15)
            {
              v14 = v23;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }

LABEL_18:
        v24 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        result = *(*(v8 + 48) + ((v14 << 9) | (8 * v24)));
        if (!result)
        {
          goto LABEL_26;
        }
      }

      *a2++ = result;
      ++v20;
      if (v22 == v19)
      {
        v20 = v19;
LABEL_26:
        v13 = v25;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = a4;
      v17 = (*(a4 + 56) + 40 * (v15 | (v14 << 6)));
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      v21 = v17[4];
      *v9 = *v17;
      v9[1] = v18;
      v9[2] = v19;
      v9[3] = v20;
      v9[4] = v21;
      if (v13 == v8)
      {
        break;
      }

      v9 += 5;

      result = v21;
      v10 = v13;
      v11 = v14;
      a4 = v16;
    }

    v22 = v21;
    v11 = v14;
    a4 = v16;
LABEL_19:
    v5 = v23;
    result = v24;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static CNContact.contactsByHandle(handles:knownContacts:)(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v32 = a1 & 0xC000000000000001;
  v33 = specialized Array.count.getter(a1);
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v33 == v4)
    {
      return v5;
    }

    if (v32)
    {
      v6 = MEMORY[0x1BFB22010](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v8 = [v6 value];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (*(a2 + 16))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(a2 + 56) + 8 * v12);
        v16 = v15;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v15 = 0;
LABEL_12:
    v17 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_7_30();
    if (v21)
    {
      goto LABEL_25;
    }

    v22 = v19;
    v23 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo8TUHandleCSo9CNContactCSgGMd);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v5))
    {
      v24 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_27;
      }

      v22 = v24;
    }

    if (v23)
    {
      v26 = *(v5 + 56);
      v27 = *(v26 + 8 * v22);
      *(v26 + 8 * v22) = v15;
    }

    else
    {
      OUTLINED_FUNCTION_6_23(v5 + 8 * (v22 >> 6));
      *(v28 + 8 * v22) = v17;
      *(*(v5 + 56) + 8 * v22) = v15;

      v29 = *(v5 + 16);
      v21 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v21)
      {
        goto LABEL_26;
      }

      *(v5 + 16) = v30;
    }

    ++v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static CNContact.contactsByHandle(handles:knownContacts:)(uint64_t a1, unint64_t a2)
{
  v43 = a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a2 + 32);
    v3 = ~v6;
    v2 = a2 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a2 + 64);
    v5 = a2;
  }

  v9 = 0;
  v42 = v3;
  v10 = (v3 + 64) >> 6;
  v11 = MEMORY[0x1E69E7CC8];
  v45 = v10;
  v46 = v5;
  v44 = v2;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v9;
  v13 = v4;
  v14 = v9;
  if (v4)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v5 + 56) + v16);
    v18 = *(*(v5 + 48) + v16);
    v19 = v17;
    if (!v18)
    {
LABEL_26:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      v40 = static CNContact.contactsByHandle(handles:knownContacts:)(v43, v11);

      return v40;
    }

    while (1)
    {
      v47 = v15;
      v20 = v18;
      v21 = [v18 value];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v11;
      specialized __RawDictionaryStorage.find<A>(_:)(v22, v24);
      OUTLINED_FUNCTION_7_30();
      if (v29)
      {
        break;
      }

      v30 = v27;
      v31 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo9CNContactCGMd);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11))
      {
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v24);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_30;
        }

        v30 = v32;
      }

      if (v31)
      {

        v34 = *(v11 + 56);
        v35 = *(v34 + 8 * v30);
        *(v34 + 8 * v30) = v25;
      }

      else
      {
        OUTLINED_FUNCTION_6_23(v11 + 8 * (v30 >> 6));
        v37 = (v36 + 16 * v30);
        *v37 = v22;
        v37[1] = v24;
        *(*(v11 + 56) + 8 * v30) = v25;

        v38 = *(v11 + 16);
        v29 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v29)
        {
          goto LABEL_29;
        }

        *(v11 + 16) = v39;
      }

      v9 = v14;
      v5 = v46;
      v4 = v47;
      v2 = v44;
      v10 = v45;
      if ((v46 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaDictionary.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
        swift_dynamicCast();
        v18 = v48;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
        swift_dynamicCast();
        v19 = v48;
        v14 = v9;
        v15 = v4;
        if (v48)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        goto LABEL_26;
      }

      v13 = *(v2 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = a3 >> 16;
  v8 = HIDWORD(a3);
  v9 = a3 >> 40;
  v10 = HIWORD(a3);
  Hasher.init(_seed:)();
  MultiwayViewConstraintsController.OverallLayoutState.hash(into:)();
  MEMORY[0x1BFB22640](a4);
  v11 = Hasher._finalize()();
  v12 = 0x10000;
  if ((v7 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = v12 | v4 & 0xFF00FFFF;
  v14 = 0x100000000;
  if ((v8 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = 0x10000000000;
  if ((v9 & 1) == 0)
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  v17 = 0x1000000000000;
  if ((v10 & 1) == 0)
  {
    v17 = 0;
  }

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, a2, v16 | v17, a4, v11);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1, uint64_t a2, uint64_t a3)
{
  v11 = a3;
  v13 = BYTE6(a3);
  v12 = WORD2(a3);
  Hasher.init(_seed:)();
  MultiwayViewConstraintsController.OverallLayoutState.hash(into:)();
  v3 = Hasher._finalize()();
  v4 = 0x10000;
  if ((v11 & 0x10000) == 0)
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if ((v12 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if ((v12 & 0x100) == 0)
  {
    v6 = 0;
  }

  v7 = 0x1000000000000;
  if ((v13 & 1) == 0)
  {
    v7 = 0;
  }

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, a2, v11 | (HIBYTE(v11) << 24) | v4 | v5 | v6 | v7, v3);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_5_15();
  String.hash(into:)();
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

{
  OUTLINED_FUNCTION_5_15();
  String.hash(into:)();
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  OUTLINED_FUNCTION_5_15();
  MEMORY[0x1BFB22640](a1 & 1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, Swift::Int))
{
  OUTLINED_FUNCTION_5_15();
  MEMORY[0x1BFB22640](a1);
  v3 = Hasher._finalize()();

  return a2(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5 + 64;
  v8 = -1 << *(v5 + 32);
  result = a5 & ~v8;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v10 = ~v8;
    v11 = BYTE1(a3);
    v12 = a3;
    v13 = *(v5 + 48);
    v14 = BYTE3(a3);
    v15 = (a3 >> 8) & 0xC0;
    v16 = (a3 >> 8) & 0x3F;
    v17 = a1 & 1;
    v18 = HIDWORD(a3) & 1;
    v19 = (a3 >> 16) & 1;
    v20 = HIWORD(a3) & 1;
    v21 = (a3 >> 40) & 1;
    while (1)
    {
      v22 = (v13 + 32 * result);
      if (*v22 != v17 || *(v22 + 1) != a2)
      {
        goto LABEL_7;
      }

      v24 = v22[17];
      v25 = v22[18];
      v26 = v22[19];
      v27 = v22[20];
      v28 = v22[21];
      v29 = v22[22];
      v30 = *(v22 + 3);
      v31 = v22[16];
      if (v31)
      {
        if (v31 == 1)
        {
          if (v12 != 1)
          {
            goto LABEL_7;
          }
        }

        else if (v12 != 2)
        {
          goto LABEL_7;
        }
      }

      else if (v12)
      {
        goto LABEL_7;
      }

      if (!(v24 >> 6))
      {
        break;
      }

      if (v24 >> 6 == 1)
      {
        if (v15 != 64)
        {
          goto LABEL_7;
        }

        v24 &= 0x3Fu;
        goto LABEL_21;
      }

      v32 = v19 ^ v25;
      v33 = v18 ^ v27;
      v34 = v26 != v14;
      if (v24 == 128)
      {
        v35 = v11 == 128;
      }

      else
      {
        v35 = v11 == 129;
      }

      v36 = !v35;
      if ((v36 | v32 | v34 | v33))
      {
        goto LABEL_7;
      }

LABEL_33:
      if (v21 == v28 && ((v20 ^ v29) & 1) == 0 && v30 == a4)
      {
        return result;
      }

LABEL_7:
      result = (result + 1) & v10;
      if (((*(v7 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v11 >= 0x40)
    {
      goto LABEL_7;
    }

LABEL_21:
    if (v16 != v24 || ((v19 ^ v25) & 1) != 0 || v26 != v14 || ((v18 ^ v27) & 1) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4 + 64;
  v7 = -1 << *(v4 + 32);
  result = a4 & ~v7;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    v10 = BYTE1(a3);
    v11 = a3;
    v12 = *(v4 + 48);
    v13 = BYTE3(a3);
    v14 = (a3 >> 8) & 0xC0;
    v15 = (a3 >> 8) & 0x3F;
    v16 = a1 & 1;
    v17 = HIDWORD(a3) & 1;
    v18 = (a3 >> 16) & 1;
    v19 = HIWORD(a3) & 1;
    v20 = (a3 >> 40) & 1;
    while (1)
    {
      v21 = (v12 + 24 * result);
      if (*v21 != v16 || *(v21 + 1) != a2)
      {
        goto LABEL_7;
      }

      v23 = v21[17];
      v24 = v21[18];
      v25 = v21[19];
      v26 = v21[20];
      v27 = v21[21];
      v28 = v21[22];
      v29 = v21[16];
      if (v29)
      {
        if (v29 == 1)
        {
          if (v11 != 1)
          {
            goto LABEL_7;
          }
        }

        else if (v11 != 2)
        {
          goto LABEL_7;
        }
      }

      else if (v11)
      {
        goto LABEL_7;
      }

      if (!(v23 >> 6))
      {
        break;
      }

      if (v23 >> 6 == 1)
      {
        if (v14 != 64)
        {
          goto LABEL_7;
        }

        v23 &= 0x3Fu;
        goto LABEL_21;
      }

      v30 = v18 ^ v24;
      v31 = v17 ^ v26;
      v32 = v25 != v13;
      if (v23 == 128)
      {
        v33 = v10 == 128;
      }

      else
      {
        v33 = v10 == 129;
      }

      v34 = !v33;
      if ((v34 | v30 | v32 | v31))
      {
        goto LABEL_7;
      }

LABEL_33:
      if (v20 == v27 && ((v19 ^ v28) & 1) == 0)
      {
        return result;
      }

LABEL_7:
      result = (result + 1) & v9;
      if (((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v10 >= 0x40)
    {
      goto LABEL_7;
    }

LABEL_21:
    if (v15 != v23 || ((v18 ^ v24) & 1) != 0 || v25 != v13 || ((v17 ^ v26) & 1) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      return i;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    outlined init with copy of AnyHashable(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1BFB21F20](v8, a1);
    outlined destroy of AnyHashable(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = MessageType.rawValue.getter();
    if (v5 == MessageType.rawValue.getter())
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    do
    {
      if (*(v7 + result))
      {
        if (*(v7 + result) == 1)
        {
          if (a1 == 1)
          {
            return result;
          }
        }

        else if (a1 == 2)
        {
          return result;
        }
      }

      else if (!a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = v3;
  v6 = v3 + 64;
  v7 = ~(-1 << *(v3 + 32));
  for (i = a2 & v7; ((1 << i) & *(v6 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    type metadata accessor for NSObject(0, a3);
    v9 = *(*(v5 + 48) + 8 * i);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, a3, a4, a5, &unk_1F3ACE1A8, partial apply for closure #1 in InCallControlsCollectionViewController.inCallControlsBaseCellDidTapButton(_:), &block_descriptor_26_0);
}

{
  specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, a3, a4, a5, &unk_1F3ACE158, partial apply for closure #1 in InCallControlsCollectionViewController.openMessages(cell:tappedOpenMessagesButton:), &block_descriptor_20_0);
}

{
  specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, a3, a4, a5, &unk_1F3ACE248, partial apply for closure #1 in InCallControlsCollectionViewController.inCallControlsBaseCellDidTapButton(_:), &block_descriptor_38);
}

{
  specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, a3, a4, a5, &unk_1F3ACE1F8, partial apply for closure #1 in InCallControlsCollectionViewController.shareLinkCell(cell:tappedCopyLinkButton:), &block_descriptor_32_0);
}

void specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)()
{
  OUTLINED_FUNCTION_6_7();

  if (OUTLINED_FUNCTION_7_31())
  {
    v5[4] = partial apply for closure #1 in MultiwayViewController.localParticipantViewDidTap(_:localParticipantView:);
    v5[5] = v0;
    OUTLINED_FUNCTION_1_25();
    v5[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    v5[2] = v2;
    v5[3] = &block_descriptor_14;
    _Block_copy(v5);
    OUTLINED_FUNCTION_4_20();

    SBSRequestPasscodeUnlockUI();
    _Block_release(v1);
  }

  else
  {
    OUTLINED_FUNCTION_8_28();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      MultiwayViewController.toggleLocalParticipantEffectsButton()();
      OUTLINED_FUNCTION_5_16();

      return;
    }
  }

  OUTLINED_FUNCTION_5_16();
}

{
  OUTLINED_FUNCTION_6_7();

  if (OUTLINED_FUNCTION_7_31())
  {
    aBlock[4] = partial apply for closure #1 in InCallBannerHostViewController.callDetailsGestureRecognizerTapped();
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    aBlock[2] = v1;
    aBlock[3] = &block_descriptor_11;
    v2 = _Block_copy(aBlock);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v2);
LABEL_6:
    OUTLINED_FUNCTION_5_16();
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = Strong + OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_inCallBannerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);

    ObjectType = swift_getObjectType();
    (*(v6 + 32))(ObjectType, v6);
    OUTLINED_FUNCTION_5_16();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
  }
}

uint64_t specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  if (OUTLINED_FUNCTION_7_31())
  {
    v9[4] = partial apply for closure #1 in closure #2 in ConversationControlsManager.startScreenShareWithCountdown(completion:);
    v9[5] = v5;
    OUTLINED_FUNCTION_1_25();
    v9[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    v9[2] = v6;
    v9[3] = &block_descriptor_44;
    v7 = _Block_copy(v9);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v7);
  }

  else
  {
    a2();
  }
}

void specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  OUTLINED_FUNCTION_6_7();
  v13 = type metadata accessor for InCallControlsCollectionViewController.Action(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  swift_unknownObjectRetain();
  v17 = a4;
  v18 = a5;
  if (OUTLINED_FUNCTION_7_31())
  {
    aBlock[4] = a7;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    aBlock[2] = v19;
    aBlock[3] = v23;
    v20 = _Block_copy(aBlock);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v20);
  }

  else
  {
    ObjectType = swift_getObjectType();
    swift_storeEnumTagMultiPayload();
    (*(a3 + 8))(v17, v15, v18, ObjectType, a3);
    outlined destroy of InCallControlsCollectionViewController.Action(v15);
  }

  swift_unknownObjectRelease();
}

uint64_t specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)()
{
  OUTLINED_FUNCTION_6_7();

  if (OUTLINED_FUNCTION_7_31())
  {
    v10[4] = partial apply for closure #1 in LocalParticipantControlsView.handleEffectsTapped();
    v10[5] = v0;
    OUTLINED_FUNCTION_1_25();
    v10[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    v10[2] = v2;
    v10[3] = &block_descriptor_17;
    _Block_copy(v10);
    OUTLINED_FUNCTION_4_20();

    SBSRequestPasscodeUnlockUI();
    _Block_release(v1);
  }

  else
  {
    OUTLINED_FUNCTION_8_28();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x220))();
      v7 = v6;

      if (v5)
      {
        ObjectType = swift_getObjectType();
        (*(v7 + 8))(7, ObjectType, v7);
        OUTLINED_FUNCTION_5_16();
        return swift_unknownObjectRelease();
      }
    }
  }

  return OUTLINED_FUNCTION_5_16();
}

uint64_t specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(uint64_t a1, uint64_t a2)
{
  return specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, partial apply for closure #1 in MultiwayViewController.presentAddParticipantSheet(), &block_descriptor_8, closure #1 in MultiwayViewController.presentAddParticipantSheet());
}

{
  return specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(a1, a2, partial apply for closure #1 in MultiwayViewController.presentContactCard(), &block_descriptor_5, closure #1 in MultiwayViewController.presentContactCard());
}

uint64_t specialized static SpringBoardUtilities.requestPasscodeUnlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_6_7();

  if (OUTLINED_FUNCTION_7_31())
  {
    v12[4] = a3;
    v12[5] = v5;
    OUTLINED_FUNCTION_1_25();
    v12[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    v12[2] = v10;
    v12[3] = a4;
    _Block_copy(v12);
    OUTLINED_FUNCTION_4_20();

    SBSRequestPasscodeUnlockUI();
    _Block_release(v6);
  }

  else
  {
    a5(1, v5);
  }

  return OUTLINED_FUNCTION_5_16();
}

void static SpringBoardUtilities.requestPasscodeUnlock(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  if (OUTLINED_FUNCTION_7_31())
  {
    v6[4] = a1;
    v6[5] = a2;
    OUTLINED_FUNCTION_1_25();
    v6[1] = 1107296256;
    OUTLINED_FUNCTION_0_30();
    v6[2] = v5;
    v6[3] = &block_descriptor_5;
    _Block_copy(v6);
    OUTLINED_FUNCTION_4_20();

    SBSRequestPasscodeUnlockUI();
    _Block_release(v2);
  }

  else
  {
    a1(1);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t outlined destroy of InCallControlsCollectionViewController.Action(uint64_t a1)
{
  v2 = type metadata accessor for InCallControlsCollectionViewController.Action(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static SyncedScreeningAlphaGradientView.AnimatedState.== infix(_:_:)()
{
  v0 = SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.getter();
  if (v0 != SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.getter())
  {
    return 0;
  }

  v1 = SyncedScreeningAlphaGradientView.AnimatedState.maxOpacity.getter();
  if (v1 != SyncedScreeningAlphaGradientView.AnimatedState.maxOpacity.getter())
  {
    return 0;
  }

  v2 = SyncedScreeningAlphaGradientView.AnimatedState.unitStart.getter();
  return v2 == SyncedScreeningAlphaGradientView.AnimatedState.unitStart.getter();
}

double SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.getter()
{
  return SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.getter();
}

{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_12();
  static Published.subscript.getter();

  return v1;
}

uint64_t SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.setter()
{
  return SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.setter();
}

{
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_12();

  return static Published.subscript.setter();
}

uint64_t SyncedScreeningAlphaGradientView.AnimatedState.deinit()
{
  v1 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._minOpacity;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._maxOpacity, v2);
  v3(v0 + direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._unitStart, v2);
  return v0;
}

uint64_t SyncedScreeningAlphaGradientView.AnimatedState.__deallocating_deinit()
{
  SyncedScreeningAlphaGradientView.AnimatedState.deinit();

  return swift_deallocClassInstance();
}

uint64_t SyncedScreeningAlphaGradientView.AnimatedState.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._minOpacity;
  sub_1BBCDCDF8();
  v6 = *(v2 + 32);
  v6(v0 + v5, v4, v1);
  v7 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._maxOpacity;
  sub_1BBCDCDF8();
  v6(v0 + v7, v4, v1);
  v8 = direct field offset for SyncedScreeningAlphaGradientView.AnimatedState._unitStart;
  sub_1BBCDCDF8();
  v6(v0 + v8, v4, v1);
  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SyncedScreeningAlphaGradientView<A>.AnimatedState@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double SyncedScreeningAlphaGradientView.GradientTracking.init()@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1BC4BD470;
  a1[1] = xmmword_1BC4BD480;
  result = 0.0;
  a1[2] = xmmword_1BC4BD490;
  return result;
}

void SyncedScreeningAlphaGradientView.GradientTracking.init(defaultUnitPointStart:unitOffset:gradientTransitionUnitLength:unitTransitionPoint:endOpacity:startOpacity:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

uint64_t property wrapper backing initializer of SyncedScreeningAlphaGradientView.positionalData()
{
  lazy protocol witness table accessor for type PositionalData and conformance PositionalData();
  OUTLINED_FUNCTION_46();

  return ObservedObject.init(wrappedValue:)();
}

uint64_t key path getter for SyncedScreeningAlphaGradientView.positionalData : <A>SyncedScreeningAlphaGradientView<A>@<X0>(uint64_t *a1@<X8>)
{
  result = SyncedScreeningAlphaGradientView.positionalData.getter();
  *a1 = result;
  return result;
}

uint64_t SyncedScreeningAlphaGradientView.positionalData.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

void SyncedScreeningAlphaGradientView.$positionalData.getter()
{
  type metadata accessor for PositionalData();
  lazy protocol witness table accessor for type PositionalData and conformance PositionalData();
  OUTLINED_FUNCTION_46();

  JUMPOUT(0x1BFB1E3A0);
}

unint64_t lazy protocol witness table accessor for type PositionalData and conformance PositionalData()
{
  result = lazy protocol witness table cache variable for type PositionalData and conformance PositionalData;
  if (!lazy protocol witness table cache variable for type PositionalData and conformance PositionalData)
  {
    type metadata accessor for PositionalData();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PositionalData and conformance PositionalData);
  }

  return result;
}

uint64_t property wrapper backing initializer of SyncedScreeningAlphaGradientView.viewState()
{
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState();
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();
  return StateObject.init(wrappedValue:)();
}

double SyncedScreeningAlphaGradientView.init(uiView:positionalData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(swift_allocObject() + 16) = a2;
  v5 = property wrapper backing initializer of SyncedScreeningAlphaGradientView.viewState();
  v7 = v6;
  v12 = v8 & 1;
  v9 = property wrapper backing initializer of SyncedScreeningAlphaGradientView.positionalData();
  *a3 = a1;
  *(a3 + 8) = xmmword_1BC4BD470;
  *(a3 + 24) = xmmword_1BC4BD480;
  result = 0.0;
  *(a3 + 40) = xmmword_1BC4BD490;
  *(a3 + 56) = v9;
  *(a3 + 64) = v11;
  *(a3 + 72) = v5;
  *(a3 + 80) = v7;
  *(a3 + 88) = v12;
  return result;
}

uint64_t SyncedScreeningAlphaGradientView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_11_16(v4);
  v16 = *(*(a1 - 8) + 16);
  v16(&v37, v2, a1);
  type metadata accessor for BackgroundView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMd);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState();
  OUTLINED_FUNCTION_6_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for _AnimationModifier();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_5_17();
  WitnessTable = swift_getWitnessTable();
  v36 = lazy protocol witness table accessor for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>();
  OUTLINED_FUNCTION_4_21();
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x1E697E5C0];
  v5 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_31();
  v31 = v5;
  v32 = swift_getWitnessTable();
  swift_getWitnessTable();
  v37 = GeometryReader.init(content:)();
  v38 = v6;
  type metadata accessor for GeometryReader();
  OUTLINED_FUNCTION_2_37();
  v7 = swift_getWitnessTable();
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  View.ignoresSafeArea(_:edges:)();

  v27 = v18;
  v28 = v19;
  v29 = v20;
  v30 = BYTE8(v20);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_11_16(v8);
  v16(&v37, v2, a1);
  type metadata accessor for ModifiedContent();
  v25 = v7;
  v26 = MEMORY[0x1E6980A30];
  swift_getWitnessTable();
  View.onAppear(perform:)();

  v20 = v46;
  v9 = v47;
  v10 = v49;
  v18 = v44;
  v19 = v45;
  v21 = v47;
  v22 = v48;
  v23 = v49;
  v24 = v50;
  v11 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_46();
  swift_getWitnessTable();
  v12 = *(*(v11 - 8) + 16);
  v12(&v37, &v18, v11);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
  v46 = v39;
  v13 = v40;
  v14 = v42;
  v44 = v37;
  v45 = v38;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v12(a2, &v44, v11);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v13);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v14);
}

uint64_t closure #1 in SyncedScreeningAlphaGradientView.body.getter@<X0>(uint64_t a1@<X0>, id *a2@<X1>, _OWORD *a3@<X8>)
{
  v20 = *a2;
  *&v17[0] = v20;
  v4 = type metadata accessor for SyncedScreeningAlphaGradientView();
  v5 = v20;
  SyncedScreeningAlphaGradientView.gradient(for:)(a1, v4, v18);
  *v21 = v18[0];
  *&v21[16] = v18[1];
  *&v21[32] = v19;
  v6 = type metadata accessor for BackgroundView();
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient();
  View.mask<A>(_:)();
  outlined destroy of LinearGradient(v18);
  (*(*(v6 - 8) + 8))(&v20, v6);
  v8 = *&__src[0];
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState();
  swift_getWitnessTable();
  StateObject.wrappedValue.getter();
  SyncedScreeningAlphaGradientView.AnimatedState.maxOpacity.getter();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_MaskEffectVyAA14LinearGradientVGMd);
  type metadata accessor for ModifiedContent();
  __dst[11] = WitnessTable;
  __dst[12] = lazy protocol witness table accessor for type _MaskEffect<LinearGradient> and conformance _MaskEffect<A>();
  v9 = swift_getWitnessTable();
  View.opacity(_:)();

  v17[0] = *v21;
  v17[1] = *&v21[16];
  v17[2] = *&v21[32];
  *&v17[3] = *&v21[48];
  static Animation.default.getter();
  StateObject.wrappedValue.getter();
  type metadata accessor for ModifiedContent();
  __dst[9] = v9;
  __dst[10] = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  View.animation<A>(_:value:)();

  memcpy(__dst, __src, 0x48uLL);
  type metadata accessor for _AnimationModifier();
  v10 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(v17, __dst, v10);
  memcpy(v21, __dst, sizeof(v21));
  v13 = *(v11 + 8);
  v13(v21, v10);
  memcpy(__dst, v17, 0x48uLL);
  v12(a3, __dst, v10);
  memcpy(__src, __dst, 0x48uLL);
  return (v13)(__src, v10);
}

double SyncedScreeningAlphaGradientView.gradient(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v29 = a1;
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v25 - v7;
  static Color.black.getter();
  v27 = a2;
  v26 = *(a2 + 16);
  type metadata accessor for SyncedScreeningAlphaGradientView.AnimatedState();
  OUTLINED_FUNCTION_0_31();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_29();
  SyncedScreeningAlphaGradientView.AnimatedState.maxOpacity.getter();

  Color.opacity(_:)();

  static Color.black.getter();
  OUTLINED_FUNCTION_8_29();
  SyncedScreeningAlphaGradientView.AnimatedState.minOpacity.getter();

  Color.opacity(_:)();

  PositionalData.listBounds.getter(v33);
  v8 = v34;

  if (v8)
  {
    type metadata accessor for CGRect(0);

    GeometryProxy.subscript.getter();
    outlined destroy of ListAnchor?(v33);
    v9 = *(v31 + 1);
    GeometryProxy.size.getter();
    v11 = v10;
    outlined destroy of ListAnchor?(v33);
    v12 = 1.0 - v9 / v11 + v4[2];
  }

  else
  {
    v12 = v4[1];
  }

  if (v4[4] <= v12)
  {
    v13 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v13);
    type metadata accessor for MainActor();
    (*(*(v27 - 8) + 16))(v31, v4);
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v26;
    memcpy(v15 + 5, v4, 0x59uLL);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BB990;

  *(v17 + 32) = Gradient.Stop.init(color:location:)();
  *(v17 + 40) = v18;

  *(v17 + 48) = Gradient.Stop.init(color:location:)();
  *(v17 + 56) = v19;

  *(v17 + 64) = Gradient.Stop.init(color:location:)();
  *(v17 + 72) = v20;

  *(v17 + 80) = Gradient.Stop.init(color:location:)();
  *(v17 + 88) = v21;
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();

  result = *v31;
  v23 = v31[1];
  v24 = v30;
  *v30 = v31[0];
  v24[1] = v23;
  *(v24 + 4) = v32;
  return result;
}