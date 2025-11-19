ConversationKit::AnsweringMachineComposer::Config __swiftcall AnsweringMachineComposer.Config.init(defaultSecondsBeforeAnswerAsScreening:maxSecondsForScreening:activityUpdateThrottleSeconds:)(Swift::Int defaultSecondsBeforeAnswerAsScreening, Swift::Int maxSecondsForScreening, Swift::Double activityUpdateThrottleSeconds)
{
  *v3 = defaultSecondsBeforeAnswerAsScreening;
  *(v3 + 8) = maxSecondsForScreening;
  *(v3 + 16) = activityUpdateThrottleSeconds;
  result.activityUpdateThrottleSeconds = activityUpdateThrottleSeconds;
  result.maxSecondsForScreening = maxSecondsForScreening;
  result.defaultSecondsBeforeAnswerAsScreening = defaultSecondsBeforeAnswerAsScreening;
  return result;
}

uint64_t static AnsweringMachineComposer.shared.setter()
{
  OUTLINED_FUNCTION_6_7();
  swift_beginAccess();
  *&static AnsweringMachineComposer.shared = v1;
  *(&static AnsweringMachineComposer.shared + 1) = v0;
  return swift_unknownObjectRelease();
}

uint64_t (*static AnsweringMachineComposer.shared.modify())()
{
  OUTLINED_FUNCTION_38_2();
  swift_beginAccess();
  return CallRecordingPillViewController.cancellable.modify;
}

uint64_t key path getter for static AnsweringMachineComposer.shared : AnsweringMachineComposer.Type@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static AnsweringMachineComposer.shared;
  return swift_unknownObjectRetain();
}

uint64_t key path setter for static AnsweringMachineComposer.shared : AnsweringMachineComposer.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  *&static AnsweringMachineComposer.shared = v1;
  *(&static AnsweringMachineComposer.shared + 1) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t AnsweringMachineComposer.callServices.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26TelephonyUtilitiesServicesVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22[-v7];
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v9 = type metadata accessor for TelephonyUtilitiesServices();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    return outlined init with take of AnsweringMachineStatusService();
  }

  outlined destroy of CallControlsService?(v8, &_s15ConversationKit26TelephonyUtilitiesServicesVSgMd);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, logger);
  (*(*(v10 - 8) + 16))(&a1[v9[6]], v11, v10);
  v13 = v1[2];
  v12 = v1[3];
  v15 = v1[8];
  v14 = v1[9];
  v16 = objc_opt_self();

  v17 = [v16 sharedInstance];
  v18 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *a1 = v17;
  *(a1 + 1) = v18;
  v19 = &a1[v9[7]];
  *v19 = v13;
  *(v19 + 1) = v12;
  v20 = &a1[v9[8]];
  *v20 = v15;
  *(v20 + 1) = v14;
  outlined init with copy of AnsweringMachineStatusService();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  swift_beginAccess();
  outlined assign with take of AttributedString?();
  return swift_endAccess();
}

uint64_t one-time initialization function for callScreeningActivityController()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, logger);
  (*(v1 + 16))(v3, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore31CallScreeningActivityControllerCyAA0E7WrapperCGMd);
  swift_allocObject();
  result = CallScreeningActivityController.init(logger:)();
  static AnsweringMachineComposer.callScreeningActivityController = result;
  return result;
}

double AnsweringMachineComposer.config.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer_config + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer_config);
  *(a1 + 16) = result;
  return result;
}

id closure #1 in default argument 1 of AnsweringMachineComposer.init(config:isEnabled:isEnabledM3:isAnsweringMachineAvailable:timeToWaitForCall:)(SEL *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v3 = [v2 *a1];

  return v3;
}

void *AnsweringMachineComposer.init(config:isEnabled:isEnabledM3:isAnsweringMachineAvailable:timeToWaitForCall:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v9;
  v48 = a5;
  v49 = a6;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_47_16();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v20 = a1[1];
  v22 = a1[2];
  v23 = OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer____lazy_storage___callServices;
  v24 = type metadata accessor for TelephonyUtilitiesServices();
  __swift_storeEnumTagSinglePayload(v11 + v23, 1, 1, v24);
  v25 = (v11 + OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer_config);
  *v25 = v21;
  v25[1] = v20;
  v43 = v20;
  v25[2] = v22;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_194();
  }

  v44 = a9;
  v26 = __swift_project_value_buffer(v10, logger);
  (*(v16 + 16))(v19, v26, v10);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_42();
    v42 = a8;
    v30 = v29;
    v31 = OUTLINED_FUNCTION_23();
    v41 = a7;
    v32 = v31;
    v53 = v31;
    *v30 = 136446210;
    v50 = v21;
    v51 = v43;
    v52 = v22;
    v33 = AnsweringMachineComposer.Config.description.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v53);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_1BBC58000, v27, v28, "Creating answeringmachine with config %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    a7 = v41;
    OUTLINED_FUNCTION_27();
    a8 = v42;
    OUTLINED_FUNCTION_27();
  }

  (*(v16 + 8))(v19, v10);
  v36 = v46;
  v11[4] = v45;
  v11[5] = v36;
  v37 = v48;
  v11[6] = v47;
  v11[7] = v37;
  v11[2] = v49;
  v11[3] = a7;
  v38 = v44;
  v11[8] = a8;
  v11[9] = v38;
  return v11;
}

uint64_t AnsweringMachineComposer.composeStateMachine(activityController:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[25] = v2;
  v1[26] = v0;
  v3 = type metadata accessor for Logger();
  v1[27] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[28] = v4;
  v1[29] = OUTLINED_FUNCTION_74();
  v1[30] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  v1[31] = static CKStateMachineActor.shared;
  v5 = OUTLINED_FUNCTION_31_33();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_9();
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_194();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = __swift_project_value_buffer(v2, logger);
  *(v0 + 256) = v4;
  v5 = *(v3 + 16);
  *(v0 + 264) = v5;
  *(v0 + 272) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  OUTLINED_FUNCTION_29_36();
  Logger.traceFunctionStart(file:function:line:)(v6, v7, v8, v9, 40, 2, 175);
  *(v0 + 280) = *(v3 + 8);
  *(v0 + 288) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = OUTLINED_FUNCTION_15_14();
  v11(v10);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_45_26();
  v12 = swift_allocObject();
  *(v0 + 296) = v12;
  v13 = *(v0 + 176);
  *(v12 + 16) = *(v0 + 160);
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v0 + 192);
  v14 = swift_task_alloc();
  *(v0 + 304) = v14;
  *v14 = v0;
  v14[1] = AnsweringMachineComposer.composeStateMachine(activityController:);

  return AnsweringMachineComposer.composeStateTransitioner(activityController:)();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 248);
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](AnsweringMachineComposer.composeStateMachine(activityController:), v2, 0);
}

uint64_t AnsweringMachineComposer.composeStateMachine(activityController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_116_0();
  v15 = *(v14 + 296);
  v16 = *(v14 + 264);
  v37 = *(v14 + 272);
  v17 = *(v14 + 256);
  v18 = *(v14 + 232);
  v19 = *(v14 + 216);
  v20 = swift_allocObject();
  memcpy((v20 + 16), (v14 + 16), 0x58uLL);
  OUTLINED_FUNCTION_24();
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in AnsweringMachineComposer.composeStateMachine(activityController:);
  *(v21 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
  v22 = swift_allocObject();
  swift_weakInit();
  *(v14 + 104) = v22;
  *(v14 + 112) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CallScreeningState) -> ();
  *(v14 + 120) = v21;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  v16(v18, v17, v19);
  OUTLINED_FUNCTION_24();
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeStateMachine(activityController:);
  *(v23 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14CKStateMachineCyAA13CallScreeningO5StateOGMd);
  OUTLINED_FUNCTION_84();

  v24 = specialized CKStateMachine.init(initialState:logger:stateTransitioner:)(v14 + 104, v18, partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CallScreening.State, @guaranteed CallScreening.StateTransition) -> (@owned CallScreening.State, @error @owned Error), v23);
  v25 = *(v14 + 280);
  v26 = *(v14 + 240);
  v27 = *(v14 + 216);
  (*(v14 + 264))(v26, *(v14 + 256), v27);

  OUTLINED_FUNCTION_29_36();
  specialized Logger.traceFunction<A>(returning:file:function:line:)();

  v25(v26, v27);

  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_13_3();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, v24, v37, a11, a12, a13, a14);
}

uint64_t implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.compose()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_21_1();
  v3 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void closure #2 in AnsweringMachineComposer.compose()(uint64_t a1)
{
  if ((*(a1 + 48))())
  {
    v1 = objc_opt_self();
    v2 = [v1 sharedInstance];
    v3 = [v2 callServicesClientCapabilities];

    [v3 setWantsToScreenCalls_];
    v4 = [v1 sharedInstance];
    v5 = [v4 callServicesClientCapabilities];

    [v5 save];
  }
}

uint64_t implicit closure #3 in implicit closure #2 in AnsweringMachineComposer.composeAnsweringMachineService(callServices:timeToWaitForCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*a3)(&v9);
  if ((v10 & 1) == 0)
  {
    return v9;
  }

  specialized Collection.randomElement<A>(using:)(v4, *(a3 + 32), *(a3 + 40));
  if (v6)
  {
    v5 = 0;
  }

  _ss8DurationV7secondsyABxSzRzlFZSi_Tt0g5(v5);
  v7 = static Duration.+ infix(_:_:)();
  if (static Duration.< infix(_:_:)())
  {
    return 1000000000000000000;
  }

  else
  {
    return v7;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @async (@guaranteed String) -> (@unowned Bool, @error @owned Error)(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @async (@guaranteed String) -> (@unowned Bool, @error @owned Error);

  return v7(v3, v4);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@guaranteed String) -> (@unowned Bool, @error @owned Error)()
{
  OUTLINED_FUNCTION_24_0();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;

  OUTLINED_FUNCTION_0_23();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t implicit closure #5 in implicit closure #4 in AnsweringMachineComposer.composeAnsweringMachineService(callServices:timeToWaitForCall:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4[3];
  v8 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v7);
  return (*(v8 + 32))(a1, a2, a3, v7, v8);
}

uint64_t closure #1 in AnsweringMachineComposer.composeStateMachine(activityController:)()
{
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v0 = v4;
  if (!v4)
  {
    return outlined destroy of CallControlsService?(v3, &_s15ConversationKit18ActivityController_pSgMd);
  }

  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 16))("Cleaning up any old activities.", 31, 2, v0, v1);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

double implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeStateMachine(activityController:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  CallScreening.StateTransitioner.transition(state:transition:)(a1, a2, a3, a4, v9);
  if (!v5)
  {
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    result = *&v10;
    *(a5 + 32) = v10;
    *(a5 + 48) = v11;
  }

  return result;
}

uint64_t AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v4 = type metadata accessor for TelephonyUtilitiesServices();
  OUTLINED_FUNCTION_9_0(v4);
  v1[19] = v5;
  v1[20] = *(v6 + 64);
  v1[21] = OUTLINED_FUNCTION_74();
  v1[22] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[23] = v7;
  OUTLINED_FUNCTION_9_0(v7);
  v1[24] = v8;
  v1[25] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  v1[26] = static CKStateMachineActor.shared;
  v9 = OUTLINED_FUNCTION_31_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_9();
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_194();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[18];
  v5 = __swift_project_value_buffer(v3, logger);
  v0[27] = v5;
  v6 = *(v2 + 16);
  v0[28] = v6;
  v0[29] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  OUTLINED_FUNCTION_29_36();
  Logger.traceFunctionStart(file:function:line:)(v7, v8, v9, v10, 45, 2, 195);
  v0[30] = *(v2 + 8);
  v0[31] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11 = OUTLINED_FUNCTION_38_2();
  v12(v11);
  v13 = v4 + OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer_config;
  v0[32] = *(v4 + OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer_config);
  v0[33] = *(v13 + 8);
  v0[34] = *(v13 + 16);
  v0[35] = type metadata accessor for MainActor();
  v0[36] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v14 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_24_0();

  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_19_21();
  }

  *(v0 + 296) = static CallScreeningViewModelComposer.viewModel;

  v1 = OUTLINED_FUNCTION_46();

  return MEMORY[0x1EEE6DFA0](v1, v2, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 304) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 176);

  AnsweringMachineComposer.callServices.getter(v1);
  v2 = OUTLINED_FUNCTION_10_81();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 152);
  outlined init with copy of AnsweringMachineStatusService();
  *(v0 + 376) = *(v1 + 80);
  v2 = swift_allocObject();
  *(v0 + 312) = v2;
  outlined init with take of AnsweringMachineStatusService();
  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  *v3 = v0;
  v3[1] = AnsweringMachineComposer.composeStateTransitioner(activityController:);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);

  return specialized AnsweringMachineComposer.composeAnsweringMachineService(callServices:timeToWaitForCall:)(v4, partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:), v2, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  *(v6 + 328) = v5;

  v7 = OUTLINED_FUNCTION_10_81();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  v1 = *(v0 + 328);
  v2 = *(v0 + 272);
  v14 = *(v0 + 296);
  v15 = *(v0 + 264);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v12 = *(v0 + 136);
  v13 = *(v0 + 256);
  (*(v0 + 224))(v3, *(v0 + 216), *(v0 + 184));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit38AnsweringMachineTrackingServiceAdapterCyAA013CallScreeningE5StateVyAA07CKStateD0CyAA0hI0O0J0OGGGMd);
  OUTLINED_FUNCTION_84();
  v5 = specialized AnsweringMachineTrackingServiceAdapter.init(logger:answeringMachine:)(v3, v1);
  *(v0 + 336) = v5;
  v6 = (v5 + direct field offset for AnsweringMachineTrackingServiceAdapter.onResult);
  swift_beginAccess();
  v7 = *v6;
  *v6 = &async function pointer to specialized thunk for @escaping @callee_guaranteed @async (@guaranteed CallScreeningTrackingState<CKStateMachine<CallScreening.State>>, @unowned CallScreeningTrackingStateResult) -> ();
  v6[1] = 0;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  outlined init with copy of AnsweringMachineStatusService();
  *(v0 + 344) = swift_allocObject();
  outlined init with take of AnsweringMachineStatusService();
  v8 = swift_task_alloc();
  *(v0 + 352) = v8;
  v8[2] = v4;
  v8[3] = v14;
  v8[4] = v12;
  v8[5] = v13;
  v8[6] = v15;
  v8[7] = v2;
  OUTLINED_FUNCTION_13_9(&_sScM3run10resultType4bodyxxm_xyYbKScMYcXEtYaKs8SendableRzlFZ15ConversationKit16ScreeningServiceC_Tt0t2g5Tu);
  v16 = v9;
  v10 = swift_task_alloc();
  *(v0 + 360) = v10;
  *v10 = v0;
  v10[1] = AnsweringMachineComposer.composeStateTransitioner(activityController:);

  return v16(partial apply for closure #3 in AnsweringMachineComposer.composeStateTransitioner(activityController:), v8);
}

{
  v17 = v0[46];
  v14 = v0[43];
  v12 = v0[42];
  v13 = v0[37];
  v21 = v0[30];
  v19 = v0[28];
  v18 = v0[27];
  v15 = v0[25];
  v16 = v0[23];
  v1 = v0[16];
  v20 = v0[22];
  outlined init with copy of AnsweringMachineStatusService();
  v2 = swift_allocObject();
  *(v2 + 16) = v13;
  outlined init with take of AnsweringMachineStatusService();
  outlined init with copy of AnsweringMachineStatusService();
  v3 = swift_allocObject();
  outlined init with take of AnsweringMachineStatusService();
  OUTLINED_FUNCTION_24();
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for implicit closure #4 in implicit closure #3 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  *(v4 + 24) = v3;
  v0[2] = v12;
  v0[3] = &async function pointer to partial apply for closure #2 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  v0[4] = v14;
  v0[5] = partial apply for closure #6 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  v0[6] = v2;
  v0[7] = partial apply for closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  v0[8] = v17;
  v0[9] = partial apply for closure #5 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  v0[10] = v17;
  v0[11] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> () with global actor constraint MainActor;
  v0[12] = v4;
  v19(v15, v18, v16);

  swift_retain_n();

  OUTLINED_FUNCTION_29_36();
  specialized Logger.traceFunction<A>(returning:file:function:line:)(v5, v6, v7, v8, 45, 2, 273, v15, v0 + 2);

  v21(v15, v16);
  OUTLINED_FUNCTION_5_129();
  outlined destroy of AnsweringMachineStatusService(v20, v9);
  *v1 = v12;
  v1[1] = &async function pointer to partial apply for closure #2 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  v1[2] = v14;
  v1[3] = partial apply for closure #6 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  v1[4] = v2;
  v1[5] = partial apply for closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  v1[6] = v17;
  v1[7] = partial apply for closure #5 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  v1[8] = v17;
  v1[9] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> () with global actor constraint MainActor;
  v1[10] = v4;

  OUTLINED_FUNCTION_13();

  return v10();
}

void AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v5 + 208);
    *(v5 + 368) = v3;

    MEMORY[0x1EEE6DFA0](AnsweringMachineComposer.composeStateTransitioner(activityController:), v9, 0);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed CallScreeningState) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25CallScreeningInitialStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd);
  v9[0] = a1;
  v9[1] = a2;
  v9[4] = lazy protocol witness table accessor for type CallScreeningInitialState<CKStateMachine<CallScreening.State>> and conformance CallScreeningInitialState<A>();
  v9[2] = a3;

  a4(v9);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

double thunk for @escaping @callee_guaranteed (@guaranteed CallScreening.State, @guaranteed CallScreening.StateTransition) -> (@owned CallScreening.State, @error @owned Error)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, _OWORD *, void, void, void)@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  a3(v9, v12, *a2, *(a2 + 8), *(a2 + 16));
  if (!v4)
  {
    v8 = v9[1];
    *a4 = v9[0];
    *(a4 + 16) = v8;
    result = *&v10;
    *(a4 + 32) = v10;
    *(a4 + 48) = v11;
  }

  return result;
}

uint64_t closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(uint64_t a1, char a2)
{
  *(v2 + 209) = a2;
  *(v2 + 112) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static CKStateMachineActor.shared;
  *(v2 + 120) = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:), v3, 0);
}

uint64_t closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_44_18();
  v39 = v1;
  OUTLINED_FUNCTION_23_1();
  v2 = (*(**(*(v0 + 112) + 40) + 104))();
  *(v0 + 128) = v2;
  if (!v2)
  {
LABEL_11:
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_34_33();

    __asm { BRAA            X1, X16 }
  }

  v3 = v2 + *(*v2 + 104);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  *(v0 + 64) = *(v3 + 48);
  *(v0 + 32) = v5;
  *(v0 + 48) = v6;
  *(v0 + 16) = v4;
  v7 = CallScreening.State.stateTransition.getter();
  v9 = v7;
  v10 = v8;
  v12 = v11;
  *(v0 + 136) = v7;
  *(v0 + 144) = v8;
  *(v0 + 210) = v11;
  if (v11 > 0x1Fu)
  {
    v26 = OUTLINED_FUNCTION_4_31();
    outlined consume of CallScreening.StateTransition(v26, v27, v12);

    goto LABEL_11;
  }

  v13 = *(v0 + 112);
  if (v7 != *(v13 + 16) || v8 != *(v13 + 24))
  {
    OUTLINED_FUNCTION_4_31();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v36 = OUTLINED_FUNCTION_4_31();
      outlined consume of CallScreening.StateTransition(v36, v37, v12);
      goto LABEL_11;
    }
  }

  v15 = *(v0 + 209);
  OUTLINED_FUNCTION_24();
  v16 = swift_allocObject();
  *(v0 + 152) = v16;
  *(v16 + 16) = v9;
  *(v16 + 24) = v10;
  OUTLINED_FUNCTION_24();
  if (v15)
  {
    v17 = swift_allocObject();
    *(v0 + 160) = v17;
    OUTLINED_FUNCTION_21_55(v17);
    v38 = specialized CKStateMachine.transition(with:reason:validation:);

    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
    v19 = thunk for @escaping @callee_guaranteed (@guaranteed CallScreening.State) -> (@error @owned Error)partial apply;
    v20 = 0x80000001BC516A40;
    v21 = 1;
    v22 = 0;
    v23 = 128;
    v24 = 0xD000000000000027;
    v25 = v17;
  }

  else
  {
    v30 = swift_allocObject();
    *(v0 + 184) = v30;
    OUTLINED_FUNCTION_21_55(v30);

    v31 = OUTLINED_FUNCTION_4_31();
    outlined copy of CallScreening.StateTransition(v31, v32, v12);
    OUTLINED_FUNCTION_13_9(&async function pointer to specialized CKStateMachine.transition(with:reason:validation:));
    v38 = v33;
    v34 = swift_task_alloc();
    *(v0 + 192) = v34;
    *v34 = v0;
    v34[1] = closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
    v21 = OUTLINED_FUNCTION_4_31();
    v23 = 32;
    v25 = v30;
  }

  return (v38)(v21, v22, v23, v24, v20, v19, v25);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  }

  else
  {
    v6 = closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = v2[18];
  v6 = v2[17];
  v7 = *v1;
  v8 = *(v3 + 210);
  OUTLINED_FUNCTION_14_1();
  *v9 = v7;
  *(v10 + 200) = v0;

  outlined consume of CallScreening.StateTransition(v6, v5, v8);
  v11 = v2[15];
  if (v0)
  {
    v12 = closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  }

  else
  {
    v12 = closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

void closure #1 in closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[6] >> 61 == 2)
  {
    if (a1[2] == a2 && a1[3] == a3)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v4 = 0;
  }

  lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError();
  v5 = swift_allocError();
  if (v4)
  {
  }

  else
  {
    swift_willThrow();
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed @async (@guaranteed CallScreeningTrackingState<CKStateMachine<CallScreening.State>>, @unowned CallScreeningTrackingStateResult) -> ()(_OWORD *a1, char a2)
{
  v4 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = a1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningEndingState<A>;

  return closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(v2 + 16, a2 & 1);
}

uint64_t closure #3 in AnsweringMachineComposer.composeStateTransitioner(activityController:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v19 = a4;
  v20 = a3;
  v17[1] = a2;
  v18 = a1;
  v4 = type metadata accessor for TelephonyUtilitiesServices();
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, logger);
  (*(v6 + 16))(v8, v9, v5);
  outlined init with copy of AnsweringMachineStatusService();
  v10 = swift_allocObject();
  outlined init with take of AnsweringMachineStatusService();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  type metadata accessor for ScreeningService();
  v11 = swift_allocObject();
  v22 = v4;
  v23 = &protocol witness table for TelephonyUtilitiesServices;
  __swift_allocate_boxed_opaque_existential_1(&v21);
  outlined init with copy of AnsweringMachineStatusService();
  v12 = v11 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_activityController;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  v13 = (v11 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_provider);
  *v13 = 0;
  v13[1] = 0;
  *(v11 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_screeningCaptions) = 0;
  v14 = OBJC_IVAR____TtC15ConversationKit16ScreeningService_timerService;
  type metadata accessor for TimerService();
  swift_allocObject();
  *(v11 + v14) = TimerService.init()();
  (*(v6 + 32))(v11 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_logger, v8, v5);
  outlined init with take of TapInteractionHandler(&v21, v11 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_callServices);
  *(v11 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_viewModel) = v18;
  v15 = (v11 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_getStreamToken);
  *v15 = partial apply for implicit closure #2 in implicit closure #1 in closure #3 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  v15[1] = v10;
  swift_beginAccess();

  outlined assign with take of AttributedString?();
  result = swift_endAccess();
  *(v11 + OBJC_IVAR____TtC15ConversationKit16ScreeningService_maxSecondsForScreening) = v20;
  *v19 = v11;
  return result;
}

uint64_t closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17[-v9];
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v18 = *a1;
  type metadata accessor for MainActor();

  outlined init with copy of String(&v18, v17);

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v14 = a1[1];
  *(v13 + 56) = *a1;
  v15 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v15;
  *(v13 + 32) = a4;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  *(v13 + 72) = v14;
  *(v13 + 88) = a1[2];
  *(v13 + 104) = *(a1 + 6);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  type metadata accessor for MainActor();
  v7[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:), v9, v8);
}

uint64_t closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 72);

  *(v0 + 16) = *v1;
  v2 = swift_allocObject();
  v4 = v1[1];
  v3 = v1[2];
  v5 = *v1;
  *(v2 + 64) = *(v1 + 6);
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 16) = v5;
  outlined init with copy of String(v0 + 16, v0 + 32);

  v6 = OUTLINED_FUNCTION_44_0();
  ScreeningService.startScreening(callUUID:endCall:)(v6, v7, v8, v2);

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t closure #1 in closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static CKStateMachineActor.shared;
  v4[9] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:), v6, 0);
}

uint64_t closure #1 in closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_23_1();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_24();
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(**(v1 + 48) + 104);

  v7 = v5(v6);
  v0[11] = v7;
  if (v7)
  {
    v8 = v0[4];
    _StringGuts.grow(_:)(33);

    v9 = ScreeningService.EndCallReason.description.getter(v8);
    MEMORY[0x1BFB20B10](v9);

    v0[12] = 0x80000001BC516990;
    OUTLINED_FUNCTION_24();
    v10 = swift_allocObject();
    v0[13] = v10;
    *(v10 + 16) = partial apply for closure #1 in closure #1 in closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
    *(v10 + 24) = v4;

    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = closure #1 in closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:);

    return specialized CKStateMachine.transition(with:reason:validation:)();
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_44();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = closure #1 in closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:);
  }

  else
  {
    v6 = closure #1 in RecentsListViewController.tipKitStartObservation();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_194();
  }

  v1 = v0[15];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v4, logger);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  if (v9)
  {
    v11 = OUTLINED_FUNCTION_42();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1BBC58000, v7, v8, "onEnterScreeningState: tranisitoning to ending state failed with error: %@", v11, 0xCu);
    outlined destroy of CallControlsService?(v12, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

void closure #1 in closure #1 in closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[6] >> 61 == 4)
  {
    if (*a1 == a2 && a1[1] == a3)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v4 = 0;
  }

  lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError();
  v5 = swift_allocError();
  if (v4)
  {
  }

  else
  {
    swift_willThrow();
  }
}

uint64_t closure #5 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  static TaskPriority.userInitiated.getter();
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #5 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #5 in AnsweringMachineComposer.composeStateTransitioner(activityController:), v6, v5);
}

uint64_t closure #1 in closure #5 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_24_0();

  ScreeningService.stopScreening()();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t closure #6 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TelephonyUtilitiesServices();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  static TaskPriority.userInitiated.getter();
  v13 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  outlined init with copy of AnsweringMachineStatusService();
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (v9 + ((*(v8 + 80) + 40) & ~*(v8 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v14;
  v16[3] = v17;
  v16[4] = a4;
  outlined init with take of AnsweringMachineStatusService();
  v18 = (v16 + v15);
  *v18 = a2;
  v18[1] = a3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #6 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #6 in AnsweringMachineComposer.composeStateTransitioner(activityController:), v9, v8);
}

uint64_t closure #1 in closure #6 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[8];

  v0[6] = type metadata accessor for TelephonyUtilitiesServices();
  v0[7] = &protocol witness table for TelephonyUtilitiesServices;
  __swift_allocate_boxed_opaque_existential_1(v0 + 3);
  OUTLINED_FUNCTION_6_109();
  outlined init with copy of AnsweringMachineStatusService();
  v0[2] = v1;

  OUTLINED_FUNCTION_4_31();
  TranscriptionViewModel.callUUID.setter();
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v3 = TranscriptionViewModel.callUUID.getter();
  (*(v2 + 88))(v3);

  OUTLINED_FUNCTION_15_14();
  TranscriptionViewModel.callerDisplayName.setter();
  TranscriptionViewModel.state.setter();
  outlined destroy of CallScreening.EnteringAnsweringStateService((v0 + 2));
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String) -> () with global actor constraint MainActor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](thunk for @escaping @callee_guaranteed (@guaranteed String) -> () with global actor constraint MainActor, v6, v5);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String) -> () with global actor constraint MainActor()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_45_1();
  v1(v2);
  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t AnsweringMachineComposer.deinit()
{

  outlined destroy of CallControlsService?(v0 + OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer____lazy_storage___callServices, &_s15ConversationKit26TelephonyUtilitiesServicesVSgMd);
  return v0;
}

uint64_t AnsweringMachineComposer.__deallocating_deinit()
{
  AnsweringMachineComposer.deinit();

  return swift_deallocClassInstance();
}

char *specialized AnsweringMachineService.init(shouldAutoScreenCall:requestToScreen:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E69D8AA0]) init];
  type metadata accessor for DeviceRingerStateObserver();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 20) = 0;
  type metadata accessor for ScreeningSoundAndHapticsManager();
  v13 = swift_allocObject();
  *(v5 + 6) = specialized ScreeningSoundAndHapticsManager.init(with:ringerStateObserver:feedbackGenerator:)(v11, v12, &v18, v13);
  v14 = &v5[*(*v5 + 144)];
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *v14 = 0;
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v5 + 4) = a3;
  *(v5 + 5) = a4;
  v15 = direct field offset for AnsweringMachineService.logger;
  v16 = type metadata accessor for Logger();
  (*(*(v16 - 8) + 32))(&v5[v15], a5, v16);
  return v5;
}

unint64_t lazy protocol witness table accessor for type AnsweringMachineComposer.Error and conformance AnsweringMachineComposer.Error()
{
  result = lazy protocol witness table cache variable for type AnsweringMachineComposer.Error and conformance AnsweringMachineComposer.Error;
  if (!lazy protocol witness table cache variable for type AnsweringMachineComposer.Error and conformance AnsweringMachineComposer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnsweringMachineComposer.Error and conformance AnsweringMachineComposer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnsweringMachineComposer.Error and conformance AnsweringMachineComposer.Error;
  if (!lazy protocol witness table cache variable for type AnsweringMachineComposer.Error and conformance AnsweringMachineComposer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnsweringMachineComposer.Error and conformance AnsweringMachineComposer.Error);
  }

  return result;
}

uint64_t outlined init with copy of AnsweringMachineStatusService()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t specialized closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = specialized closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:);

  return specialized closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(a2, a3, a4);
}

uint64_t specialized AnsweringMachineComposer.composeAnsweringMachineService(callServices:timeToWaitForCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[17] = a2;
  v5 = type metadata accessor for Logger();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[5] = type metadata accessor for TelephonyUtilitiesServices();
  v4[6] = &protocol witness table for TelephonyUtilitiesServices;
  __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  outlined init with copy of AnsweringMachineStatusService();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static CallScreeningActor.shared;
  v4[25] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized AnsweringMachineComposer.composeAnsweringMachineService(callServices:timeToWaitForCall:), v6, 0);
}

uint64_t specialized AnsweringMachineComposer.composeAnsweringMachineService(callServices:timeToWaitForCall:)()
{
  v41 = v0;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_194();
  }

  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = __swift_project_value_buffer(v4, logger);
  v0[26] = v6;
  v7 = *(v3 + 16);
  v0[27] = v7;
  v0[28] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v4);
  OUTLINED_FUNCTION_29_36();
  Logger.traceFunctionStart(file:function:line:)(v8, v9, v10, v11, 63, 2, 156);
  v12 = *(v3 + 8);
  v0[29] = v12;
  v0[30] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38 = v12;
  v12(v1, v4);
  v13 = _ss8DurationV7secondsyABxSzRzlFZSi_Tt0g5(*(v5 + OBJC_IVAR____TtC15ConversationKit24AnsweringMachineComposer_config));
  v39 = v14;
  v7(v2, v6, v4);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = OUTLINED_FUNCTION_18_0(v16);
  v18 = v0[23];
  v19 = v0[20];
  if (v17)
  {
    v37 = v6;
    v20 = OUTLINED_FUNCTION_42();
    v36 = v7;
    v21 = OUTLINED_FUNCTION_23();
    v40 = v21;
    *v20 = 136446210;
    v22 = Duration.description.getter();
    v35 = v19;
    v24 = v13;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v40);

    *(v20 + 4) = v25;
    v13 = v24;
    _os_log_impl(&dword_1BBC58000, v15, v16, "Creating an Answering Machine with default seconds before answering %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v7 = v36;
    OUTLINED_FUNCTION_27();
    v6 = v37;
    OUTLINED_FUNCTION_27();

    v27 = v35;
    v26 = v18;
  }

  else
  {

    v26 = v18;
    v27 = v19;
  }

  v38(v26, v27);
  v29 = v0[17];
  v28 = v0[18];
  v7(v0[24], v6, v0[20]);
  v30 = swift_allocObject();
  v0[31] = v30;
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;
  *(v30 + 32) = v13;
  *(v30 + 40) = v39;
  *(v30 + 48) = xmmword_1BC4E2BF0;
  type metadata accessor for MainActor();

  v0[32] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_21_1();
  v31 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

{
  OUTLINED_FUNCTION_23_1();
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);

  v7 = OUTLINED_FUNCTION_15_14();
  v3(v7);
  OUTLINED_FUNCTION_24();
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for implicit closure #3 in implicit closure #2 in AnsweringMachineComposer.composeAnsweringMachineService(callServices:timeToWaitForCall:);
  *(v8 + 24) = v1;
  outlined init with copy of IDSLookupManager(v0 + 16, v0 + 56);
  OUTLINED_FUNCTION_45_26();
  v9 = swift_allocObject();
  outlined init with take of TapInteractionHandler((v0 + 56), v9 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23AnsweringConditionTimerCySSGMd);
  OUTLINED_FUNCTION_84();
  *(v0 + 264) = specialized AnsweringConditionTimer.init(logger:timeToWaitForCall:callIsScreenable:)(v5, _sSSs8DurationVIeggd_SSABIegnd_TRTA_0, v8, partial apply for closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:), v9);
  v2(v4, v6);
  v10 = OUTLINED_FUNCTION_10_81();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  v1 = *(v0 + 264);
  v13 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 160);
  OUTLINED_FUNCTION_24();
  v6 = swift_allocObject();
  *(v6 + 16) = &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeCondition(callServices:logger:timeToWaitForCall:);
  *(v6 + 24) = v1;
  outlined init with copy of IDSLookupManager(v0 + 16, v0 + 96);
  OUTLINED_FUNCTION_45_26();
  v7 = swift_allocObject();
  outlined init with take of TapInteractionHandler((v0 + 96), v7 + 16);
  OUTLINED_FUNCTION_24();
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for implicit closure #5 in implicit closure #4 in AnsweringMachineComposer.composeAnsweringMachineService(callServices:timeToWaitForCall:);
  *(v8 + 24) = v7;
  v2(v4, v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23AnsweringMachineServiceCySSGMd);
  OUTLINED_FUNCTION_84();
  v9 = specialized AnsweringMachineService.init(shouldAutoScreenCall:requestToScreen:logger:)(&async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@guaranteed String) -> (@unowned Bool, @error @owned Error), v6, partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Bool) -> (@error @owned Error), v8, v4);
  v2(v4, v3, v5);

  OUTLINED_FUNCTION_29_36();
  specialized Logger.traceFunction<A>(returning:file:function:line:)(v10);

  v13(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  OUTLINED_FUNCTION_0_23();

  return v11(v9);
}

void *specialized CallScreening.MainAnsweringMachine.init(logger:stateMachine:statusService:callServices:onCallStatusUpdate:isAnsweringMachineAvailable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v43 = a5;
  v44 = a7;
  v45 = a3;
  v46 = a6;
  v47 = a1;
  v39 = *a9;
  v40 = type metadata accessor for CallScreening.MachineStateObserver(0) - 8;
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CallScreening.CallStateObserver();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = type metadata accessor for TelephonyUtilitiesServices();
  v50[4] = &protocol witness table for TelephonyUtilitiesServices;
  __swift_allocate_boxed_opaque_existential_1(v50);
  outlined init with take of AnsweringMachineStatusService();
  v17 = OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_logger;
  v18 = type metadata accessor for Logger();
  v41 = *(v18 - 8);
  v19 = *(v41 + 16);
  v20 = a9 + v17;
  v21 = v47;
  v19(v20, v47, v18);
  *(a9 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_stateMachine) = a2;
  outlined init with copy of IDSLookupManager(v50, a9 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_callServices);
  v22 = (a9 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_isAnsweringMachineAvailable);
  *v22 = v44;
  v22[1] = a8;
  v19(v16, v21, v18);
  *&v16[*(v14 + 28)] = a2;
  v23 = *(v14 + 32);
  v24 = v45;
  *&v16[v23] = v45;
  swift_retain_n();
  v44 = a8;

  CallScreening.CallStateObserver.start(onCallStatusUpdate:)(v43, v46);
  v26 = v25;
  outlined destroy of AnsweringMachineStatusService(v16, type metadata accessor for CallScreening.CallStateObserver);
  v42 = v18;
  v19(v12, v47, v18);
  v27 = v40;
  *&v12[*(v40 + 28)] = a2;
  *&v12[*(v27 + 32)] = v24;
  v43 = a2;

  CallScreening.MachineStateObserver.start()();
  v29 = v28;
  outlined destroy of AnsweringMachineStatusService(v12, type metadata accessor for CallScreening.MachineStateObserver);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BC4BAA20;
  *(v30 + 32) = v26;
  *(v30 + 40) = v29;
  *(a9 + OBJC_IVAR____TtCO15ConversationKit13CallScreening20MainAnsweringMachine_observers) = v30;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48 = a9;
    v49 = v34;
    *v33 = 136446210;

    v35 = String.init<A>(reflecting:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v49);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1BBC58000, v31, v32, "Created MainAnsweringMachine %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1BFB23DF0](v34, -1, -1);
    MEMORY[0x1BFB23DF0](v33, -1, -1);
  }

  else
  {
  }

  (*(v41 + 8))(v47, v42);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return a9;
}

uint64_t specialized CallStatusService.init(logger:notificationCenter:callServices:callCenter:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49[3] = type metadata accessor for TelephonyUtilitiesServices();
  v49[4] = &protocol witness table for TelephonyUtilitiesServices;
  __swift_allocate_boxed_opaque_existential_1(v49);
  outlined init with take of AnsweringMachineStatusService();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGMd);
  swift_allocObject();
  *(a5 + 16) = PassthroughSubject.init()();
  *(a5 + OBJC_IVAR____TtC15ConversationKit17CallStatusService_observers) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtC15ConversationKit17CallStatusService_notificationQueue;
  type metadata accessor for TaskQueue();
  *(a5 + v9) = TaskQueue.__allocating_init()();
  v10 = OBJC_IVAR____TtC15ConversationKit17CallStatusService_features;
  *(a5 + v10) = [objc_allocWithZone(type metadata accessor for Features()) init];
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v48[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x80000001BC516AD0, v48);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x80000001BC516B00, v48);
    *(v13 + 22) = 2048;
    *(v13 + 24) = 34;
    _os_log_impl(&dword_1BBC58000, v11, v12, "%s%s:#%ld Called", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v14, -1, -1);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  v15 = OBJC_IVAR____TtC15ConversationKit17CallStatusService_logger;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v46 = v16;
  v47 = v17;
  (*(v17 + 16))(a5 + v15, a1, v16);
  outlined init with copy of IDSLookupManager(v49, a5 + OBJC_IVAR____TtC15ConversationKit17CallStatusService_callServices);
  *(a5 + OBJC_IVAR____TtC15ConversationKit17CallStatusService_callCenter) = a4;
  *(a5 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSNotificationNameaGMd);
  inited = swift_initStackObject();
  v45 = &v41;
  *(inited + 16) = xmmword_1BC4D4E70;
  v44 = a1;
  v19 = *MEMORY[0x1E69D8E08];
  v43 = a5;
  v20 = *MEMORY[0x1E69D8DD8];
  *(inited + 32) = v19;
  *(inited + 40) = v20;
  v21 = *MEMORY[0x1E69D8E38];
  v22 = *MEMORY[0x1E69D8EE0];
  *(inited + 48) = *MEMORY[0x1E69D8E38];
  *(inited + 56) = v22;
  v23 = *MEMORY[0x1E69D8E40];
  v24 = *MEMORY[0x1E69D8E50];
  *(inited + 64) = *MEMORY[0x1E69D8E40];
  *(inited + 72) = v24;
  v25 = *MEMORY[0x1E69D8E48];
  *(inited + 80) = *MEMORY[0x1E69D8E48];
  MEMORY[0x1EEE9AC00](inited);
  v40[2] = a2;
  v40[3] = v26;
  v40[4] = v27;
  v42 = v28;
  v29 = a2;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo18NSNotificationNameaG_So8NSObject_ps5NeverOTg5(partial apply for closure #1 in CallStatusService.init(logger:notificationCenter:callServices:callCenter:), v40, inited);

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  __swift_destroy_boxed_opaque_existential_1(v49);
  v38 = v43;
  *(v43 + OBJC_IVAR____TtC15ConversationKit17CallStatusService_observers) = v37;

  (*(v47 + 8))(v44, v46);
  return v38;
}

uint64_t type metadata accessor for AnsweringMachineComposer()
{
  result = type metadata singleton initialization cache for AnsweringMachineComposer;
  if (!type metadata singleton initialization cache for AnsweringMachineComposer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AnsweringMachineComposer()
{
  type metadata accessor for TelephonyUtilitiesServices?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for TelephonyUtilitiesServices?()
{
  if (!lazy cache variable for type metadata for TelephonyUtilitiesServices?)
  {
    type metadata accessor for TelephonyUtilitiesServices();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TelephonyUtilitiesServices?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AnsweringMachineComposer.Error(_BYTE *result, int a2, int a3)
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

uint64_t outlined init with take of AnsweringMachineStatusService()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined destroy of AnsweringMachineStatusService(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CallScreeningInitialState<CKStateMachine<CallScreening.State>> and conformance CallScreeningInitialState<A>()
{
  result = lazy protocol witness table cache variable for type CallScreeningInitialState<CKStateMachine<CallScreening.State>> and conformance CallScreeningInitialState<A>;
  if (!lazy protocol witness table cache variable for type CallScreeningInitialState<CKStateMachine<CallScreening.State>> and conformance CallScreeningInitialState<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit25CallScreeningInitialStateVyAA14CKStateMachineCyAA0cD0O0F0OGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreeningInitialState<CKStateMachine<CallScreening.State>> and conformance CallScreeningInitialState<A>);
  }

  return result;
}

void partial apply for implicit closure #2 in implicit closure #1 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_55();
  v0 = type metadata accessor for TelephonyUtilitiesServices();
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_26_46();
  OUTLINED_FUNCTION_45_1();
  TelephonyUtilitiesServices.timeToWaitForCall(callUUID:)();
}

uint64_t partial apply for closure #6 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TelephonyUtilitiesServices();
  OUTLINED_FUNCTION_22(v7);
  v8 = *(v3 + 16);

  return closure #6 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(a1, a2, a3, v8);
}

void partial apply for implicit closure #4 in implicit closure #3 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_55();
  v0 = type metadata accessor for TelephonyUtilitiesServices();
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_26_46();
  v1._countAndFlagsBits = OUTLINED_FUNCTION_45_1();
  TelephonyUtilitiesServices.disconnectScreeningCall(callUUID:)(v1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> () with global actor constraint MainActor()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_55();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_319();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in closure #6 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_48();
  v2 = type metadata accessor for TelephonyUtilitiesServices();
  OUTLINED_FUNCTION_9_0(v2);
  v5 = *(v0 + 32);
  v6 = (v0 + ((*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_22_46();

  return closure #1 in closure #6 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(v10, v11, v12, v5, v13, v7, v8);
}

uint64_t partial apply for closure #1 in closure #5 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_22_46();

  return closure #1 in closure #5 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(v5, v6, v7, v1);
}

uint64_t partial apply for closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_22_46();

  return closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(v7, v8, v9, v1, v2, v3, v10);
}

uint64_t partial apply for closure #1 in closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_92(v7);
  *v8 = v9;
  v8[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return closure #1 in closure #1 in closure #4 in AnsweringMachineComposer.composeStateTransitioner(activityController:)(v6, v4, v2, v0 + 16);
}

uint64_t objectdestroy_42Tm()
{
  type metadata accessor for TelephonyUtilitiesServices();
  OUTLINED_FUNCTION_25_2();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  v4 = *(v0 + 32);
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 8))(v3 + v4);
  OUTLINED_FUNCTION_51_20();
  OUTLINED_FUNCTION_51_20();
  OUTLINED_FUNCTION_43_24();

  return swift_deallocObject();
}

Swift::Int partial apply for implicit closure #2 in implicit closure #1 in closure #3 in AnsweringMachineComposer.composeStateTransitioner(activityController:)()
{
  OUTLINED_FUNCTION_55();
  v0 = type metadata accessor for TelephonyUtilitiesServices();
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_26_46();
  v1._countAndFlagsBits = OUTLINED_FUNCTION_45_1();
  return TelephonyUtilitiesServices.getStreamToken(callUUID:)(v1);
}

uint64_t _s15ConversationKit24AnsweringMachineComposerC16composeCondition12callServices6logger17timeToWaitForCallSbSSYaYbKScMYccAA0oI0_p_2os6LoggerVs8DurationVSSScMYcctFSbSSYaYbKScMYccAA0cG5TimerCySSGcfu_SbSSYaYbKScMYccfu0_TATQ0__0()
{
  OUTLINED_FUNCTION_24_0();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  OUTLINED_FUNCTION_0_23();

  return v5(v2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@guaranteed String) -> (@unowned Bool, @error @owned Error)()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for thunk for @escaping @callee_guaranteed @async (@guaranteed String) -> (@unowned Bool, @error @owned Error);
  v3 = OUTLINED_FUNCTION_44_0();

  return v4(v3);
}

uint64_t partial apply for specialized closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_22(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return specialized closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)(v0 + v3);
}

uint64_t objectdestroy_65Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  OUTLINED_FUNCTION_22_46();
  OUTLINED_FUNCTION_319();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t AnsweringMachineActivityService.__allocating_init(activityControllers:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AnsweringMachineActivityService.init(activityControllers:logger:)(a1, a2);
  return v4;
}

uint64_t AnsweringMachineActivityService.update(with:)(uint64_t a1)
{
  v3 = type metadata accessor for AnsweringMachineCallStatus();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  outlined init with copy of AnsweringMachineCallStatus(a1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  outlined init with take of AnsweringMachineCallStatus(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t AnsweringMachineActivityService.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t AnsweringMachineActivityService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit31AnsweringMachineActivityService_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AnsweringMachineActivityService.init(activityControllers:logger:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR____TtC15ConversationKit31AnsweringMachineActivityService_taskQueue;
  type metadata accessor for TaskQueue();
  *(v2 + v6) = TaskQueue.__allocating_init()();
  v7 = (v2 + OBJC_IVAR____TtC15ConversationKit31AnsweringMachineActivityService_currentUUID);
  *v7 = 0;
  v7[1] = 0;
  *(v2 + 16) = a1;
  v8 = OBJC_IVAR____TtC15ConversationKit31AnsweringMachineActivityService_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v9 + 32))(v3 + v8, a2);
  return v3;
}

uint64_t AnsweringMachineActivityService.startActivity(with:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in AnsweringMachineActivityService.startActivity(with:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in AnsweringMachineActivityService.startActivity(with:), v4, v3);
}

uint64_t closure #1 in AnsweringMachineActivityService.startActivity(with:)()
{
  v1 = v0[7];

  v2 = TranscriptionViewModel.callUUID.getter();
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit31AnsweringMachineActivityService_currentUUID);
  *v3 = v2;
  v3[1] = v4;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v7, v8, "Starting Activity for all Controllers");
    OUTLINED_FUNCTION_26();
  }

  v9 = v0[7];

  v10 = *(v9 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 32;
    do
    {
      v13 = v0[8];
      outlined init with copy of IDSLookupManager(v12, (v0 + 2));
      v14 = v0[5];
      v15 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
      (*(v15 + 8))(v13, v14, v15);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
      v12 += 40;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_13();

  return v16();
}

uint64_t AnsweringMachineActivityService.stopActivity(reason:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in AnsweringMachineActivityService.stopActivity(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 88) = a4;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a1;
  type metadata accessor for MainActor();
  *(v4 + 80) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in AnsweringMachineActivityService.stopActivity(reason:), v6, v5);
}

uint64_t closure #1 in AnsweringMachineActivityService.stopActivity(reason:)()
{
  v1 = *(v0 + 56);

  v2 = (v1 + OBJC_IVAR____TtC15ConversationKit31AnsweringMachineActivityService_currentUUID);
  *v2 = 0;
  v2[1] = 0;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v5, v6, "Stopping Activity for all Controllers");
    OUTLINED_FUNCTION_26();
  }

  v7 = *(v0 + 56);

  v8 = *(v7 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    do
    {
      v12 = *(v0 + 64);
      v11 = *(v0 + 72);
      v13 = *(v0 + 88);
      outlined init with copy of IDSLookupManager(v10, v0 + 16);
      v14 = *(v0 + 40);
      v15 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
      (*(v15 + 16))(v12, v11, v13, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      v10 += 40;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_13();

  return v16();
}

uint64_t closure #1 in AnsweringMachineActivityService.update(with:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in AnsweringMachineActivityService.update(with:), v4, v3);
}

uint64_t closure #1 in AnsweringMachineActivityService.update(with:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  v3 = *(v2 + OBJC_IVAR____TtC15ConversationKit31AnsweringMachineActivityService_currentUUID + 8);
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC15ConversationKit31AnsweringMachineActivityService_currentUUID) == *(v1 + 16) && v3 == *(v1 + 24);
    if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_22_0(v6))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v7, v8, "Updating Activity on all controllers");
        OUTLINED_FUNCTION_26();
      }

      v9 = *(v0 + 16);
      v10 = *(v0 + 24);

      v11 = *(v9 + 16);
      v12 = swift_task_alloc();
      *(v12 + 16) = v10;
      specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #1 in AnsweringMachineActivityService.update(with:), v12, v11);
    }
  }

  OUTLINED_FUNCTION_13();

  return v13();
}

uint64_t partial apply for closure #1 in AnsweringMachineActivityService.update(with:)()
{
  v2 = *(type metadata accessor for AnsweringMachineCallStatus() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);

  return closure #1 in AnsweringMachineActivityService.update(with:)(v4, v0 + v3);
}

uint64_t partial apply for closure #1 in AnsweringMachineActivityService.startActivity(with:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);

  return closure #1 in AnsweringMachineActivityService.startActivity(with:)(v2, v3);
}

uint64_t partial apply for closure #1 in AnsweringMachineActivityService.stopActivity(reason:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in HUDActivityService.stopActivity(reason:);

  return closure #1 in AnsweringMachineActivityService.stopActivity(reason:)(v2, v3, v4, v5);
}

uint64_t closure #1 in closure #1 in AnsweringMachineActivityService.update(with:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 24))(a2, v3, v4);
}

uint64_t AnsweringMachineActivityService.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit31AnsweringMachineActivityService_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t AnsweringMachineActivityService.__deallocating_deinit()
{
  AnsweringMachineActivityService.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AnsweringMachineActivityService()
{
  result = type metadata singleton initialization cache for AnsweringMachineActivityService;
  if (!type metadata singleton initialization cache for AnsweringMachineActivityService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AnsweringMachineActivityService()
{
  result = type metadata accessor for Logger();
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

void specialized FaceTimeControlsView.handleUpdateDuringEphemeralAlert()()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  if (v2)
  {
    outlined consume of ConversationControlsRecipe.View?(v2, v3);
    OUTLINED_FUNCTION_293();
    v5 = (*(v4 + 200))();
    if (v5)
    {
      v11 = v5;
      if ([v5 isValid])
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v6 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v6, &static Logger.conversationControls);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_18_0(v8))
        {
          *OUTLINED_FUNCTION_33() = 0;
          OUTLINED_FUNCTION_75(&dword_1BBC58000, v9, v10, "setupRootView: displaying ephemeral alert, hiding new status view");
          OUTLINED_FUNCTION_27();
        }

        [*(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView) setAlpha_];
      }
    }
  }
}

{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (v3)
  {
    outlined consume of ConversationControlsRecipe.View?(v3, v4);
    v5 = (*((*v2 & *v0) + 0x100))();
    if (v5)
    {
      v10 = v5;
      if ([v5 isValid])
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        __swift_project_value_buffer(v6, &static Logger.conversationControls);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_1BBC58000, v7, v8, "setupRootView: displaying ephemeral alert, hiding new status view", v9, 2u);
          MEMORY[0x1BFB23DF0](v9, -1, -1);
        }

        [*(v1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView) setAlpha_];
      }
    }
  }
}

void specialized FaceTimeControlsView.displayEphemeralAlert()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  if (v1)
  {
    outlined consume of ConversationControlsRecipe.View?(v1, v2);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
    v4 = v0;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      aBlock[0] = v8;
      *v7 = 136315138;
      OUTLINED_FUNCTION_33_36();
      (*(v9 + 176))();
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, aBlock);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1BBC58000, v5, v6, "⇢ [%s] 1. Starting display of ephemeral alert", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_33_36();
    v14 = (*(v13 + 200))();
    [v14 invalidate];

    objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    (*(*static Defaults.shared + 1056))();
    OUTLINED_FUNCTION_21_56();
    OUTLINED_FUNCTION_43_25();
    OUTLINED_FUNCTION_10_82();
    OUTLINED_FUNCTION_11_95();
    v22 = v15;
    v23 = &block_descriptor_91_1;
    v16 = _Block_copy(aBlock);

    v17 = OUTLINED_FUNCTION_21_56();
    OUTLINED_FUNCTION_43_25();
    v24 = partial apply for specialized closure #2 in FaceTimeControlsView.displayEphemeralAlert();
    v25 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_13_72();
    v22 = v18;
    v23 = &block_descriptor_95_0;
    v19 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_41_24(v20, sel_animateWithDuration_animations_completion_);
    _Block_release(v19);
    _Block_release(v16);
  }
}

{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (v2)
  {
    outlined consume of ConversationControlsRecipe.View?(v2, v3);
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, &static Logger.conversationControls);
    v5 = v0;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock = v9;
      *v8 = 136315138;
      (*((*v1 & *v5) + 0xD0))();
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &aBlock);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1BBC58000, v6, v7, "⇢ [%s] 1. Starting display of ephemeral alert", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    v13 = (*((*v1 & *v5) + 0x100))();
    [v13 invalidate];

    v14 = objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v15 = (*(*static Defaults.shared + 1056))();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = partial apply for specialized closure #1 in FaceTimeControlsView.displayEphemeralAlert();
    v25 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed () -> ();
    v23 = &block_descriptor_51_1;
    v17 = _Block_copy(&aBlock);

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = partial apply for specialized closure #2 in FaceTimeControlsView.displayEphemeralAlert();
    v25 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v23 = &block_descriptor_55;
    v19 = _Block_copy(&aBlock);

    [v14 animateWithDuration:v17 animations:v19 completion:v15];
    _Block_release(v19);
    _Block_release(v17);
  }
}

void specialized FaceTimeControlsView.cleanUpEphemeralAlert()()
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock[0] = v8;
    *v7 = 136315138;
    OUTLINED_FUNCTION_293();
    (*(v9 + 176))();
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, aBlock);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v3, v4, "⇢ [%s] 3. Removing ephemeral alert", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v13 = (*((*v6 & *v2) + 0xC8))();
  [v13 invalidate];

  objc_opt_self();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  (*(*static Defaults.shared + 1056))();
  OUTLINED_FUNCTION_21_56();
  OUTLINED_FUNCTION_43_25();
  OUTLINED_FUNCTION_10_82();
  OUTLINED_FUNCTION_11_95();
  v21 = v14;
  v22 = &block_descriptor_111;
  v15 = _Block_copy(aBlock);

  v16 = OUTLINED_FUNCTION_21_56();
  OUTLINED_FUNCTION_43_25();
  v23 = partial apply for specialized closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert();
  v24 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_13_72();
  v21 = v17;
  v22 = &block_descriptor_115_0;
  v18 = _Block_copy(aBlock);

  OUTLINED_FUNCTION_41_24(v19, sel_animateWithDuration_animations_completion_);
  _Block_release(v18);
  _Block_release(v15);
}

{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock = v8;
    *v7 = 136315138;
    (*((*v6 & *v2) + 0xD0))();
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &aBlock);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v3, v4, "⇢ [%s] 3. Removing ephemeral alert", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  else
  {
  }

  v12 = (*((*v6 & *v2) + 0x100))();
  [v12 invalidate];

  v13 = objc_opt_self();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = (*(*static Defaults.shared + 1056))();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = partial apply for specialized closure #1 in FaceTimeControlsView.cleanUpEphemeralAlert();
  v24 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed () -> ();
  v22 = &block_descriptor_71;
  v16 = _Block_copy(&aBlock);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = partial apply for specialized closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert();
  v24 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v22 = &block_descriptor_75;
  v18 = _Block_copy(&aBlock);

  [v13 animateWithDuration:v16 animations:v18 completion:v14];
  _Block_release(v18);
  _Block_release(v16);
}

id SystemApertureControlsView.cnkContentAlpha.didset()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_cnkContentAlpha;
    v6 = swift_beginAccess();
    (*((*v2 & *v4) + 0x68))(v6, *(v1 + v5));
  }

  v7 = (*((*v2 & *v1) + 0x158))();
  v8 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_cnkContentAlpha;
  swift_beginAccess();
  [v7 setAlpha_];

  v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_leadingAccessoryView);
  if (v9)
  {
    v9 = [v9 setAlpha_];
  }

  v10 = (*((*v2 & *v1) + 0x198))(v9);
  [v10 setAlpha_];

  return [*(v1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView) setAlpha_];
}

double SystemApertureControlsView.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_cnkContentAlpha;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

id SystemApertureControlsView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_cnkContentAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return SystemApertureControlsView.cnkContentAlpha.didset();
}

uint64_t SystemApertureControlsView.cnkContentAlpha.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for SystemApertureControlsView.context : SystemApertureControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t SystemApertureControlsView.context.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_context;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t SystemApertureControlsView.context.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_context;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for SystemApertureControlsView.ephemeralAlertTimer : SystemApertureControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SystemApertureControlsView.ephemeralAlertTimer : SystemApertureControlsView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x108);
  v4 = *a1;
  return v3(v2);
}

void *SystemApertureControlsView.ephemeralAlertTimer.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_ephemeralAlertTimer;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SystemApertureControlsView.ephemeralAlertTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_ephemeralAlertTimer;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for SystemApertureControlsView.ephemeralAlert : SystemApertureControlsView@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for SystemApertureControlsView.ephemeralAlert : SystemApertureControlsView(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x120);
  v5 = *(a1 + 16);
  outlined copy of ConversationControlsRecipe.View?(*a1, v3);
  return v4(v2, v3, v5);
}

void SystemApertureControlsView.ephemeralAlert.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_ephemeralAlert;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    specialized FaceTimeControlsView.displayEphemeralAlert()();
  }

  else
  {
    specialized FaceTimeControlsView.cleanUpEphemeralAlert()();
  }
}

void SystemApertureControlsView.ephemeralAlert.getter()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9_51();
  outlined copy of ConversationControlsRecipe.View?(v0, v1);
  OUTLINED_FUNCTION_9_51();
}

void SystemApertureControlsView.ephemeralAlert.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_ephemeralAlert;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  OUTLINED_FUNCTION_9_51();
  outlined copy of ConversationControlsRecipe.View?(v10, v11);
  outlined consume of ConversationControlsRecipe.View?(v8, v9);
  SystemApertureControlsView.ephemeralAlert.didset();
  OUTLINED_FUNCTION_9_51();
  outlined consume of ConversationControlsRecipe.View?(v12, v13);
}

uint64_t SystemApertureControlsView.ephemeralAlert.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t SystemApertureControlsView.cnkContentAlpha.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path setter for SystemApertureControlsView.recipe : SystemApertureControlsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit0A14ControlsRecipeVWOcTm_2(a1, v6, type metadata accessor for ConversationControlsRecipe);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x138))(v6);
}

void SystemApertureControlsView.recipe.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationKit);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v8, v9, "[SystemAperture] recipe.didSet", v10, 2u);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
  }

  v11 = *(v2 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView);
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v11))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    v15 = v2 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_recipe;
    swift_beginAccess();
    _s15ConversationKit0A14ControlsRecipeVWOcTm_2(v15, v6, type metadata accessor for ConversationControlsRecipe);
    v16 = a1;
    v17 = *(v13 + 16);
    v26 = v11;
    v18 = v17(v6, ObjectType, v13);
    v19 = *(v16 + 56);
    if (*(v15 + 56))
    {
      if (v19 && *(v16 + 72) == *(v15 + 72))
      {
        goto LABEL_19;
      }
    }

    else if (!v19)
    {
LABEL_19:
      v23 = MEMORY[0x1E69E7D40];
      v24 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x198))(v18);
      _s15ConversationKit0A14ControlsRecipeVWOcTm_2(v15, v6, type metadata accessor for ConversationControlsRecipe);
      (*((*v23 & *v24) + 0x90))(v6);

      specialized FaceTimeControlsView.handleUpdateDuringEphemeralAlert()();
      v25 = [v2 layer];
      [v25 setHitTestsAsOpaque_];

      return;
    }

    SystemApertureControlsView.updateLeadingAccessoryView()();
    goto LABEL_19;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v26 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1BBC58000, v26, v20, "[SystemAperture] statusView has unexpected type", v21, 2u);
    MEMORY[0x1BFB23DF0](v21, -1, -1);
  }

  v22 = v26;
}

uint64_t SystemApertureControlsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_recipe;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_152();
  return _s15ConversationKit0A14ControlsRecipeVWOcTm_2(v1 + v3, a1, v4);
}

uint64_t SystemApertureControlsView.recipe.setter(uint64_t a1)
{
  v3 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_recipe;
  OUTLINED_FUNCTION_4_0();
  _s15ConversationKit0A14ControlsRecipeVWOcTm_2(v1 + v7, v6, type metadata accessor for ConversationControlsRecipe);
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v7);
  swift_endAccess();
  SystemApertureControlsView.recipe.didset(v6);
  _s15ConversationKit0A14ControlsRecipeVWOhTm_4(a1, type metadata accessor for ConversationControlsRecipe);
  return _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v6, type metadata accessor for ConversationControlsRecipe);
}

void (*SystemApertureControlsView.recipe.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = *(*(type metadata accessor for ConversationControlsRecipe() - 8) + 64);
  v3[4] = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  v3[5] = v5;
  v6 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_recipe;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_152();
  _s15ConversationKit0A14ControlsRecipeVWOcTm_2(v1 + v6, v5, v7);
  return SystemApertureControlsView.recipe.modify;
}

void SystemApertureControlsView.recipe.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    _s15ConversationKit0A14ControlsRecipeVWOcTm_2(*(*a1 + 40), v3, type metadata accessor for ConversationControlsRecipe);
    SystemApertureControlsView.recipe.setter(v3);
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v4, type metadata accessor for ConversationControlsRecipe);
  }

  else
  {
    SystemApertureControlsView.recipe.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

double SystemApertureControlsView.calculateHeightForExpandedHUD()()
{
  v1 = 20.0;
  if (*&v0[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView])
  {
    SystemApertureControlsView.secondaryPillSize.getter();
    v1 = v2 + 20.0 + 20.0;
  }

  static Layout.ConversationControls.values.getter(v16);
  v3 = v1 + v16[27];
  static Layout.ConversationControls.values.getter(v17);
  v4 = [v0 SBUISA_systemApertureObstructedAreaLayoutGuide];
  [v4 layoutFrame];
  OUTLINED_FUNCTION_6_3();

  v18.origin.x = OUTLINED_FUNCTION_5_72();
  Height = CGRectGetHeight(v18);
  SystemApertureControlsView.statusViewHeight.getter(Height, v6, v7, v8);
  v9 = [v0 SBUISA_systemApertureObstructedAreaLayoutGuide];
  [v9 layoutFrame];
  OUTLINED_FUNCTION_23_53();

  OUTLINED_FUNCTION_24_48();
  CGRectGetHeight(v19);
  SystemApertureControlsView.ephemeralAlertNoticeLabelHeight.getter();
  v10 = OUTLINED_FUNCTION_3_90();
  specialized max<A>(_:_:_:_:)(v11, v10, v12, v13);
  return v3 + v14;
}

uint64_t SystemApertureControlsView.showCallDetailsButton.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x198))();
  v3 = (*((*v1 & *v2) + 0xD8))();

  return v3;
}

uint64_t key path getter for SystemApertureControlsView.ephemeralAlertNotice : SystemApertureControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

id SystemApertureControlsView.ephemeralAlertNotice.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___ephemeralAlertNotice;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___ephemeralAlertNotice);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___ephemeralAlertNotice);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_controlsManager);
    v6 = objc_allocWithZone(type metadata accessor for ConversationHUDEphemeralNotice());
    v7 = ConversationHUDEphemeralNotice.init(controlsManager:)(v5);
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

double SystemApertureControlsView.ephemeralAlertNoticeLabelHeight.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v2();
  OUTLINED_FUNCTION_116_1();
  v4 = (*(v3 + 136))();

  v5 = *((*v1 & *v0) + 0x238);
  v6 = v5(v4);

  v2();
  OUTLINED_FUNCTION_116_1();
  v8 = (*(v7 + 160))();

  v9 = v5(v8);
  if (v6 + v9 <= 0.0)
  {
    OUTLINED_FUNCTION_45_27();

    return SystemApertureControlsView.statusViewHeight.getter(v11, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_45_27();
  }

  return result;
}

uint64_t key path getter for SystemApertureControlsView.buttonShelfView : SystemApertureControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

void key path setter for SystemApertureControlsView.buttonShelfView : SystemApertureControlsView(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  SystemApertureControlsView.buttonShelfView.setter(v1);
}

void *SystemApertureControlsView.buttonShelfView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_buttonShelfView;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SystemApertureControlsView.buttonShelfView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_buttonShelfView;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for SystemApertureControlsView.trailingActionsView : SystemApertureControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  *a2 = result;
  return result;
}

void SystemApertureControlsView.trailingActionsView.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v6 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___trailingActionsView;
  v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___trailingActionsView);
  if (!v7)
  {
    OUTLINED_FUNCTION_293();
    (*(v8 + 304))();
    v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_controlsManager);
    v10 = v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_menuHostViewController;
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = *(v10 + 8);
    OUTLINED_FUNCTION_293();
    v14 = *(v13 + 208);
    v15 = v9;
    LOBYTE(v10) = v14();
    v16 = objc_allocWithZone(type metadata accessor for ConversationControlsTrailingActionsView());
    v17 = ConversationControlsTrailingActionsView.init(recipe:controlsManager:menuHostViewController:context:)(v5, v15, Strong, v12, v10);
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v18 = *(v1 + v6);
    *(v1 + v6) = v17;
    v19 = v17;

    v7 = 0;
  }

  v20 = v7;
  OUTLINED_FUNCTION_45_27();
}

void (*SystemApertureControlsView.trailingActionsView.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  SystemApertureControlsView.trailingActionsView.getter();
  *a1 = v3;
  return SystemApertureControlsView.trailingActionsView.modify;
}

void SystemApertureControlsView.trailingActionsView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___trailingActionsView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___trailingActionsView) = v2;
}

void SystemApertureControlsView.secondaryPillSize.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 superview];
    if (v3)
    {

      v4 = [v0 window];
      if (v4)
      {
        v5 = v4;
        [v4 frame];
        OUTLINED_FUNCTION_40_1();

        v17.origin.x = OUTLINED_FUNCTION_35();
        Width = CGRectGetWidth(v17);
      }

      else
      {
        Width = 1.79769313e308;
      }

      v7 = [v0 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
      [v7 layoutFrame];
      OUTLINED_FUNCTION_6_3();

      v18.origin.x = OUTLINED_FUNCTION_5_72();
      Height = CGRectGetHeight(v18);
      LODWORD(v9) = 1148846080;
      LODWORD(v10) = 1112014848;
      [v2 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:Height verticalFittingPriority:{v9, v10}];
      [v0 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;

      UIEdgeInsetsInsetRect_1(v12, v14, v16);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_3_90();
}

double SystemApertureControlsView.statusViewHeight.getter(double a1, double a2, double a3, double a4)
{
  LODWORD(a3) = 1132068864;
  LODWORD(a4) = 1112014848;
  [*(v4 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView) systemLayoutSizeFittingSize:*(MEMORY[0x1E69DE098] + 8) withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:{a3, a4}];
  return v5;
}

void SystemApertureControlsView.init(recipe:controlsManager:context:menuHostViewController:)(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for ConversationControlsRecipe();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  *&v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_cnkContentAlpha] = 0x3FF0000000000000;
  v17 = &v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_menuHostViewController];
  *&v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_menuHostViewController + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_ephemeralAlertTimer] = 0;
  v18 = &v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_ephemeralAlert];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___ephemeralAlertNotice] = 0;
  v19 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_buttonShelfView;
  *&v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_buttonShelfView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___trailingActionsView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_leadingAccessoryView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView] = 0;
  OUTLINED_FUNCTION_2_152();
  _s15ConversationKit0A14ControlsRecipeVWOcTm_2(a1, &v6[v20], v21);
  *&v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_controlsManager] = a2;
  v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_context] = a3;
  *(v17 + 1) = a5;
  swift_unknownObjectWeakAssign();
  v22 = (a1 + *(v13 + 68));
  if (v22[40] <= -3 && *(*v22 + 16))
  {
    OUTLINED_FUNCTION_2_152();
    v38 = v23;
    _s15ConversationKit0A14ControlsRecipeVWOcTm_2(a1, v16, v24);
    memset(v40, 0, sizeof(v40));
    v41 = 0;
    objc_allocWithZone(type metadata accessor for ConversationHUDControlsButtonShelfView());
    v25 = a2;
    v26 = a4;
    v27 = ConversationHUDControlsButtonShelfView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(v16, v25, a3, a4, a5, v40);
    swift_beginAccess();
    v28 = *&v6[v19];
    *&v6[v19] = v27;

    _s15ConversationKit0A14ControlsRecipeVWOcTm_2(a1, v16, v38);
    v39 = 0;
    v29 = objc_allocWithZone(type metadata accessor for ConversationDetailsView());
    v30 = ConversationDetailsView.init(recipe:presentationStyle:controlsManager:)(v16, &v39, v25);
  }

  else
  {
    OUTLINED_FUNCTION_2_152();
    _s15ConversationKit0A14ControlsRecipeVWOcTm_2(a1, v16, v31);
    v32 = objc_allocWithZone(type metadata accessor for SystemApertureConversationDetailsView());
    v33 = a2;
    v30 = SystemApertureConversationDetailsView.init(recipe:)(v16);
  }

  *&v6[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView] = v30;
  v34 = type metadata accessor for SystemApertureControlsView();
  v42.receiver = v6;
  v42.super_class = v34;
  v35 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v36 = [v35 layer];
  [v36 setHitTestsAsOpaque_];

  SystemApertureControlsView.configureSubviews()();
  OUTLINED_FUNCTION_0_195();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_4(a1, v37);
  OUTLINED_FUNCTION_45_27();
}

id SystemApertureControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_cnkContentAlpha) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_menuHostViewController + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_ephemeralAlertTimer) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_ephemeralAlert;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___ephemeralAlertNotice) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_buttonShelfView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView____lazy_storage___trailingActionsView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_leadingAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SystemApertureControlsView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView);
  swift_getObjectType();
  v8 = dynamic_cast_existential_1_conditional(v7);
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v160.receiver = v1;
    v160.super_class = type metadata accessor for SystemApertureControlsView();
    v12 = v7;
    v13 = objc_msgSendSuper2(&v160, sel_layoutSubviews);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x210))(v13);
    v155 = v11;
    v156 = v10;
    if (v15)
    {
      [v1 bounds];
      Height = CGRectGetHeight(v168);
    }

    else
    {
      Height = v14;
    }

    v22 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x178))();
    if (v22)
    {
      v23 = v22;
      v24 = *(v1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_leadingAccessoryView);
      if (!v24)
      {
        if (one-time initialization token for conversationControls == -1)
        {
LABEL_22:
          v84 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v84, &static Logger.conversationControls);
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.fault.getter();
          if (OUTLINED_FUNCTION_18_0(v86))
          {
            *OUTLINED_FUNCTION_33() = 0;
            OUTLINED_FUNCTION_75(&dword_1BBC58000, v87, v88, "[SystemAperture] Unexpectedly laying out a recipe with a button shelf but no leading accessory");
            OUTLINED_FUNCTION_27();
          }

LABEL_50:
          OUTLINED_FUNCTION_35_3();
          return;
        }

LABEL_57:
        OUTLINED_FUNCTION_0_0();
        goto LABEL_22;
      }

      v153 = v24;
      [v1 bounds];
      v28 = UIEdgeInsetsInsetRect_1(v25, v26, v27);
      static Layout.ConversationControls.values.getter(v161);
      v29 = v161[27];
      v30 = *(v1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView);
      v158 = v12;
      if (v30)
      {
        v31 = v30;
        SystemApertureControlsView.secondaryPillSize.getter();
        v33 = Height + -20.0 - v32;
        v34 = v31;
        SystemApertureControlsView.secondaryPillSize.getter();
        [v34 setFrame_];
        OUTLINED_FUNCTION_26_47();
        OUTLINED_FUNCTION_23_53();

        OUTLINED_FUNCTION_24_48();
        Height = CGRectGetMinY(v169);
      }

      v37 = v23;
      [v37 setFrame_];
      static Layout.ConversationControls.values.getter(v162);
      v38 = v163;
      static Layout.ConversationControls.values.getter(v164);
      [v153 setFrame_];
      v151 = v37;
      [v37 frame];
      CGRectGetMinY(v170);
      v39 = [v1 SBUISA_systemApertureObstructedAreaLayoutGuide];
      [v39 layoutFrame];
      OUTLINED_FUNCTION_23_53();

      OUTLINED_FUNCTION_24_48();
      v40.n128_f64[0] = CGRectGetMaxY(v171);
      v41 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
      v42 = v41(v40);
      v43 = (v41)();
      v44 = OUTLINED_FUNCTION_3_90();
      [v45 v46];

      OUTLINED_FUNCTION_26_47();
      [v42 &selRef_secondarySystemBackgroundColor];

      v47 = (v41)();
      (*((*MEMORY[0x1E69E7D40] & *v47) + 0x88))();

      LODWORD(v47) = *(v6 + v2[11]);
      OUTLINED_FUNCTION_0_195();
      v49 = _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v6, v48);
      if (v47 == 1)
      {
        (v41)(v49);
        OUTLINED_FUNCTION_27_46();
        v12 = v153;
        [v153 v50];
        [v1 frame];
        [v1 setFrame_];

        (v41)();
        OUTLINED_FUNCTION_40_22();
        OUTLINED_FUNCTION_40_1();

        v172.origin.x = OUTLINED_FUNCTION_35();
        MaxX = CGRectGetMaxX(v172);
        (v41)();
        OUTLINED_FUNCTION_27_46();
        [v52 v53];
        OUTLINED_FUNCTION_6_3();

        v173.origin.x = OUTLINED_FUNCTION_5_72();
        v54 = MaxX - CGRectGetWidth(v173);
        [v2 frame];
        [v2 setFrame_];
      }

      else
      {
        v89 = static Layout.ConversationControls.values.getter(v166);
        v90 = v167 * -0.5;
        v91 = (v41)(v89);
        v12 = v153;
        [v153 center];
        [v91 center];
        [v91 setCenter_];

        (v41)();
        OUTLINED_FUNCTION_40_22();
        OUTLINED_FUNCTION_40_1();

        v178.origin.x = OUTLINED_FUNCTION_35();
        v92 = CGRectGetMaxX(v178) + v90;
        [v2 center];
        [v2 setCenter_];
      }

      (v41)();
      OUTLINED_FUNCTION_27_46();
      [v93 v94];
      OUTLINED_FUNCTION_40_1();

      v179.origin.x = OUTLINED_FUNCTION_35();
      MinX = CGRectGetMinX(v179);
      [v12 frame];
      v96 = MinX - CGRectGetMaxX(v180);
      [v1 SBUISA_standardInteritemPadding];
      v98 = v97 + v97;
      v99 = v96 - v98;
      v103 = SystemApertureControlsView.statusViewHeight.getter(v98, v100, v101, v102);
      [v12 frame];
      v104 = CGRectGetMaxX(v181);
      [v1 SBUISA_standardInteritemPadding];
      v106 = v104 + v105;
      v107 = [v1 SBUISA_systemApertureObstructedAreaLayoutGuide];
      [v107 layoutFrame];
      OUTLINED_FUNCTION_6_3();

      v182.origin.x = OUTLINED_FUNCTION_5_72();
      MaxY = CGRectGetMaxY(v182);
      v109 = objc_opt_self();
      v110 = swift_allocObject();
      v23 = v10;
      *(v110 + 16) = v10;
      *(v110 + 24) = v155;
      *(v110 + 32) = v106;
      *(v110 + 40) = MaxY;
      *(v110 + 48) = v99;
      *(v110 + 56) = v103;
      v111 = swift_allocObject();
      *(v111 + 16) = partial apply for closure #1 in SystemApertureControlsView.layoutSubviews();
      *(v111 + 24) = v110;
      v159[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
      v159[5] = v111;
      v159[0] = MEMORY[0x1E69E9820];
      v159[1] = 1107296256;
      OUTLINED_FUNCTION_11_0();
      v159[2] = v112;
      v159[3] = &block_descriptor_13_2;
      v113 = _Block_copy(v159);
      v114 = v158;

      [v109 performWithoutAnimation_];
      _Block_release(v113);
      LOBYTE(v109) = swift_isEscapingClosureAtFileLocation();

      if ((v109 & 1) == 0)
      {
        v116 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v115);
        v117 = [v1 SBUISA_systemApertureObstructedAreaLayoutGuide];
        [v117 layoutFrame];
        OUTLINED_FUNCTION_40_1();

        v183.origin.x = OUTLINED_FUNCTION_35();
        v118 = CGRectGetMaxY(v183);
        [v1 bounds];
        v122 = UIEdgeInsetsInsetRect_1(v119, v120, v121);
        [v116 setFrame_];

        v123 = 0;
        v124 = partial apply for closure #1 in SystemApertureControlsView.layoutSubviews();
LABEL_31:
        if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
        {
          v152 = v124;
          v154 = v123;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
          v136 = swift_allocObject();
          v137 = *MEMORY[0x1E69E7D40] & *v1;
          v138 = *(v1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_leadingAccessoryView);
          *(v136 + 16) = xmmword_1BC4BB980;
          *(v136 + 32) = v138;
          *(v136 + 40) = (*(v137 + 408))(v138);
          *(v136 + 48) = v23;
          v139 = MEMORY[0x1E69E7CC0];
          v159[0] = MEMORY[0x1E69E7CC0];
          v140 = v158;
          for (i = 0; i != 3; ++i)
          {
            if (i > 2)
            {
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            v142 = *(v136 + 8 * i + 32);
            if (v142)
            {
              MEMORY[0x1BFB20CC0](v142);
              if (*((v159[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v139 = v159[0];
            }
          }

          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          v144 = specialized Array.count.getter(v139);
          for (j = 0; v144 != j; ++j)
          {
            if ((v139 & 0xC000000000000001) != 0)
            {
              v146 = MEMORY[0x1BFB22010](j, v139);
            }

            else
            {
              if (j >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_53;
              }

              v146 = *(v139 + 8 * j + 32);
            }

            v147 = v146;
            if (__OFADD__(j, 1))
            {
              goto LABEL_52;
            }

            [v1 bounds];
            CGRectGetWidth(v185);
            OUTLINED_FUNCTION_26_47();
            OUTLINED_FUNCTION_26_47();
            CGRectGetMinX(v186);
            OUTLINED_FUNCTION_26_47();
            CGRectGetMinY(v187);
            OUTLINED_FUNCTION_26_47();
            v148 = OUTLINED_FUNCTION_3_90();
            [v149 v150];
          }

          outlined consume of (@escaping @callee_guaranteed () -> ())?(v152);
          v143 = v154;
        }

        else
        {

          outlined consume of (@escaping @callee_guaranteed () -> ())?(v124);
          v143 = v123;
        }

        outlined consume of (@escaping @callee_guaranteed () -> ())?(v143);
        goto LABEL_50;
      }

      __break(1u);
    }

    else
    {
      v55 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_leadingAccessoryView;
      v56 = *(v1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_leadingAccessoryView);
      if (v56)
      {
        v57 = v56;
        static Layout.ConversationControls.values.getter(v162);
        v58 = (Height - v163) * 0.5;
        static Layout.ConversationControls.values.getter(v164);
        v59 = v165;
        static Layout.ConversationControls.values.getter(v166);
        [v57 setFrame_];
      }

      v60 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
      v61 = v60();
      [v1 bounds];
      v63 = v62;
      v65 = v64;
      LODWORD(v62) = 1132068864;
      LODWORD(v64) = 1132068864;
      [v61 systemLayoutSizeFittingSize:v63 withHorizontalFittingPriority:v65 verticalFittingPriority:{v62, v64}];
      v67 = v66;
      v69 = v68;

      [v1 bounds];
      v70 = CGRectGetWidth(v174) + -20.0 - v67;
      v71 = v60();
      [v71 &selRef_secondarySystemBackgroundColor];

      v72 = *(v1 + v55);
      v158 = v12;
      if (v72)
      {
        v73 = v72;
        v60();
        OUTLINED_FUNCTION_27_46();
        [v74 v75];
        OUTLINED_FUNCTION_6_3();

        v175.origin.x = OUTLINED_FUNCTION_5_72();
        v76 = CGRectGetMinX(v175);
        OUTLINED_FUNCTION_26_47();
        v77 = v76 - CGRectGetMaxX(v176);
        [v1 SBUISA_standardInteritemPadding];
        v79 = v77 - (v78 + v78);
        OUTLINED_FUNCTION_26_47();
        v80 = CGRectGetMaxX(v177);
        [v1 SBUISA_standardInteritemPadding];
        v82 = v81;

        v83 = v80 + v82;
      }

      else
      {
        v60();
        OUTLINED_FUNCTION_27_46();
        [v125 v126];
        OUTLINED_FUNCTION_6_3();

        v184.origin.x = OUTLINED_FUNCTION_5_72();
        v127 = CGRectGetMinX(v184) + -20.0;
        [v1 SBUISA_standardInteritemPadding];
        v79 = v127 - v128;
        v83 = 20.0;
      }

      [objc_msgSend(v1 SBUISA_systemApertureObstructedAreaLayoutGuide)];
      OUTLINED_FUNCTION_37_31();
      v129 = Height - OUTLINED_FUNCTION_38_31();
      v130 = objc_opt_self();
      v12 = swift_allocObject();
      *(v12 + 2) = v156;
      *(v12 + 3) = v11;
      *(v12 + 4) = v79;
      *(v12 + 5) = v129;
      v23 = swift_allocObject();
      v23[2] = partial apply for closure #2 in SystemApertureControlsView.layoutSubviews();
      v23[3] = v12;
      *&v161[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      *&v161[5] = v23;
      *&v161[0] = MEMORY[0x1E69E9820];
      *&v161[1] = 1107296256;
      OUTLINED_FUNCTION_11_0();
      v161[2] = v131;
      *&v161[3] = &block_descriptor_96;
      v132 = _Block_copy(v161);
      v133 = v158;

      [v130 performWithoutAnimation_];
      _Block_release(v132);
      LOBYTE(v130) = swift_isEscapingClosureAtFileLocation();

      if ((v130 & 1) == 0)
      {
        [objc_msgSend(v1 SBUISA_systemApertureObstructedAreaLayoutGuide)];
        OUTLINED_FUNCTION_37_31();
        v134 = OUTLINED_FUNCTION_38_31();
        ObjectType = swift_getObjectType();
        [v156 setFrame_];
        v124 = 0;
        v123 = partial apply for closure #2 in SystemApertureControlsView.layoutSubviews();
        v23 = v156;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  if (one-time initialization token for conversationControls != -1)
  {
LABEL_54:
    OUTLINED_FUNCTION_0_0();
  }

  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v17, &static Logger.conversationControls);
  v157 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v157, v18))
  {
    v19 = OUTLINED_FUNCTION_33();
    *v19 = 0;
    _os_log_impl(&dword_1BBC58000, v157, v18, "[SystemAperture] statusView has unexpected type", v19, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_35_3();
}

id closure #1 in SystemApertureControlsView.layoutSubviews()(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  [a1 setFrame_];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  (*(a2 + 32))(ObjectType, a2);
  [a1 frame];

  return [a1 setFrame_];
}

id closure #2 in SystemApertureControlsView.layoutSubviews()(void *a1, double a2, double a3)
{
  [a1 setFrame_];
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

void SystemApertureControlsView.updateAdditionalView(alpha:)(double a1)
{
  [*(v1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_leadingAccessoryView) setAlpha_];
  OUTLINED_FUNCTION_13_2();
  v4 = (*((*MEMORY[0x1E69E7D40] & v3) + 0x198))();
  [v4 setAlpha_];
}

void SystemApertureControlsView.showSecondaryPill(buttonType:menuHost:target:action:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  swift_storeEnumTagMultiPayload();
  v16 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v15, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  if (v16)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v17, &static Logger.conversationControls);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_33();
      *v20 = 0;
      _os_log_impl(&dword_1BBC58000, v18, v19, "[SystemAperture] Don't show app launch button since it's localScreenSharingInSession", v20, 2u);
      OUTLINED_FUNCTION_27();
    }

    goto LABEL_20;
  }

  v21 = *(v6 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView);
  if (v21)
  {
    v22 = v21;
    if (static ConversationControlsSecondaryPillButtonType.== infix(_:_:)())
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v23 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v23, &static Logger.conversationControls);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v25))
      {
        v26 = OUTLINED_FUNCTION_33();
        *v26 = 0;
        _os_log_impl(&dword_1BBC58000, v24, v25, "[SystemAperture] Updating SecondaryButton", v26, 2u);
        OUTLINED_FUNCTION_27();
      }

      updateSecondaryPillIfNeeded #1 () in SystemApertureControlsView.showSecondaryPill(buttonType:menuHost:target:action:)(v6, a4, a5);
      goto LABEL_20;
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v27 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v27, &static Logger.conversationControls);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v29))
  {
    v30 = OUTLINED_FUNCTION_33();
    *v30 = 0;
    _os_log_impl(&dword_1BBC58000, v28, v29, "[SystemAperture] Showing SecondaryButton", v30, 2u);
    OUTLINED_FUNCTION_27();
  }

  addSecondaryPill #1 (menuHost:target:action:) in SystemApertureControlsView.showSecondaryPill(buttonType:menuHost:target:action:)(a2, a3, a4, a5, v6, a1);
LABEL_20:
  OUTLINED_FUNCTION_45_27();
}

uint64_t updateSecondaryPillIfNeeded #1 () in SystemApertureControlsView.showSecondaryPill(buttonType:menuHost:target:action:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView);
  if (v3)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = *((*MEMORY[0x1E69E7D40] & **(result + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_controlsManager)) + 0x9D0);
    v8 = v3;
    v7(&v28);
    if (!v29)
    {

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v28, &_s15ConversationKit8Activity_pSgMd);
    }

    outlined init with take of TapInteractionHandler(&v28, v31);
    v9 = v32;
    v10 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    (*((*v6 & *v8) + 0xC8))(&v28);
    v14 = v29;
    if (v29)
    {
      v26 = a2;
      v27 = a3;
      v15 = v30;
      v16 = __swift_project_boxed_opaque_existential_1(&v28, v29);
      v17 = *(v14 - 8);
      v18 = MEMORY[0x1EEE9AC00](v16);
      v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v28, &_s15ConversationKit8Activity_pSgMd);
      v21 = (*(v15 + 8))(v14, v15);
      v23 = v22;
      (*(v17 + 8))(v20, v14);
      if (v11 == v21 && v13 == v23)
      {

        return __swift_destroy_boxed_opaque_existential_1(v31);
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v26;
      a3 = v27;
      v6 = MEMORY[0x1E69E7D40];
      if (v25)
      {
LABEL_13:

        return __swift_destroy_boxed_opaque_existential_1(v31);
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v28, &_s15ConversationKit8Activity_pSgMd);
    }

    outlined init with copy of IDSLookupManager(v31, &v28);
    (*((*v6 & *v8) + 0xD0))(&v28);
    (*((*v6 & *v8) + 0x1C8))(a2, a3);
    goto LABEL_13;
  }

  return result;
}

void addSecondaryPill #1 (menuHost:target:action:) in SystemApertureControlsView.showSecondaryPill(buttonType:menuHost:target:action:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v55 = a6;
  v56 = a1;
  v58 = a3;
  v59 = a4;
  v57 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConversationControlsRecipe();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x1E69E7D40] & *a5;
  v60 = *(v16 + 0x130);
  v61 = v16 + 304;
  v60(v13);
  v17 = &v15[*(v12 + 60)];
  v19 = *v17;
  v18 = *(v17 + 1);
  v21 = *(v17 + 2);
  v20 = *(v17 + 3);
  v22 = *(v17 + 4);
  v23 = v17[40];
  outlined copy of ConversationControlsRecipe.Actions?(*v17, v18, v21, v20, v22, v17[40]);
  _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v15, type metadata accessor for ConversationControlsRecipe);
  if (v23 > 0xFD)
  {
LABEL_4:
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, &static Logger.conversationControls);
    v25 = a5;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_9;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    (v60)();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
    specialized >> prefix<A>(_:)();
    v31 = v30;
    v33 = v32;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, aBlock);

    *(v28 + 4) = v34;
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1BFB23DF0](v29, -1, -1);
    v35 = v28;
LABEL_8:
    MEMORY[0x1BFB23DF0](v35, -1, -1);
LABEL_9:

    return;
  }

  if ((v23 & 0x80) == 0)
  {
    outlined consume of ConversationControlsRecipe.Actions?(v19, v18, v21, v20, v22, v23);
    goto LABEL_4;
  }

  v36 = *(v19 + 16);
  v37 = outlined consume of ConversationControlsRecipe.Actions?(v19, v18, v21, v20, v22, v23);
  if (!v36)
  {
    goto LABEL_4;
  }

  v38 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView;
  if (*(a5 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, &static Logger.conversationControls);
    v26 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v40))
    {
      goto LABEL_9;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1BBC58000, v26, v40, "Ignoring request to show app launch pill view because it was already shown", v41, 2u);
    v35 = v41;
    goto LABEL_8;
  }

  v42 = *(a5 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_controlsManager);
  v43 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v42) + 0x9D0))(v63, v37);
  v44 = *((*v43 & *a5) + 0xD0);
  v45 = v42;
  LOBYTE(v42) = v44();
  v46 = v54;
  _s15ConversationKit0A14ControlsRecipeVWOcTm_2(v55, v54, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  outlined init with copy of Activity?(v63, aBlock);
  objc_allocWithZone(type metadata accessor for ConversationHUDSecondaryPillView());
  v47 = v56;
  v48 = v56;
  v49 = ConversationHUDSecondaryPillView.init(controlsManager:controlsContext:buttonType:menuHostViewController:activity:)(v45, v42, v46, v47, v57, aBlock);
  (*((*v43 & *v49) + 0x1C8))(v58, v59);
  v50 = *(a5 + v38);
  *(a5 + v38) = v49;
  v51 = v49;

  [a5 addSubview_];
  v52 = [a5 systemApertureElementContext];
  aBlock[4] = TPNumberPadCharacter.rawValue.getter;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_45;
  v53 = _Block_copy(aBlock);
  [v52 setElementNeedsUpdateWithCoordinatedAnimations_];
  _Block_release(v53);

  swift_unknownObjectRelease();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, &_s15ConversationKit8Activity_pSgMd);
}

Swift::Void __swiftcall SystemApertureControlsView.removeSecondaryPill()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_secondaryPillView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v4 = [v0 systemApertureElementContext];
  v6[4] = TPNumberPadCharacter.rawValue.getter;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed () -> ();
  v6[3] = &block_descriptor_16;
  v5 = _Block_copy(v6);
  [v4 setElementNeedsUpdateWithCoordinatedAnimations_];
  _Block_release(v5);
  swift_unknownObjectRelease();
}

uint64_t SystemApertureControlsView.systemAperturePreferredContentSize.getter()
{
  v1 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v6 = [v0 window];
  if (v6)
  {
    v7 = v6;
    [v6 frame];
    OUTLINED_FUNCTION_40_1();

    v34.origin.x = OUTLINED_FUNCTION_35();
    Width = CGRectGetWidth(v34);
  }

  else
  {
    Width = 1.79769313e308;
  }

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();
  v9 = v5 + *(v1 + 60);
  v10 = *v9;
  v11 = *(v9 + 40);
  v12 = OUTLINED_FUNCTION_9_96();
  outlined copy of ConversationControlsRecipe.Actions?(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_0_195();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v5, v18);
  if (v11 <= 0xFD)
  {
    if ((v11 & 0x80) != 0)
    {
      v27 = *(v10 + 16);
      v28 = OUTLINED_FUNCTION_9_96();
      outlined consume of ConversationControlsRecipe.Actions?(v28, v29, v30, v31, v32, v33);
      if (v27)
      {
        SystemApertureControlsView.calculateHeightForExpandedHUD()();
        return *&Width;
      }
    }

    else
    {
      v19 = OUTLINED_FUNCTION_9_96();
      outlined consume of ConversationControlsRecipe.Actions?(v19, v20, v21, v22, v23, v24);
    }
  }

  v25 = [v0 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
  [v25 layoutFrame];

  return *&Width;
}

void SystemApertureControlsView.configureSubviews()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView);
  v2 = [v1 layer];
  [v2 setAllowsHitTesting_];

  [v1 setUserInteractionEnabled_];
  [v0 addSubview_];
  OUTLINED_FUNCTION_13_2();
  v3 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & v4) + 0x178))();
  if (v5)
  {
    OUTLINED_FUNCTION_36_32(v5);
  }

  v6 = *((*v3 & *v0) + 0x198);
  v7 = v6();
  OUTLINED_FUNCTION_36_32(v7);

  v8 = v6();
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v9];

  v10 = v6();
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];

  OUTLINED_FUNCTION_13_2();
  v13 = (*((*v3 & v12) + 0x158))();
  [v0 insertSubview:v13 belowSubview:v1];

  OUTLINED_FUNCTION_45_27();

  SystemApertureControlsView.updateLeadingAccessoryView()();
}

void *SystemApertureControlsView.createLeadingAccessoryView()()
{
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - v3;
  OUTLINED_FUNCTION_13_2();
  v6 = *((*MEMORY[0x1E69E7D40] & v5) + 0x130);
  v6();
  v7 = *(v4 + 7);
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_0_195();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v4, v9);
    static Layout.ConversationControls.values.getter(v30);
    v10 = *&v30[19];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA930;
    v13 = [v8 heightAnchor];
    v14 = [v13 constraintEqualToConstant_];

    *(v12 + 32) = v14;
    v15 = [v8 widthAnchor];
    v16 = [v15 constraintEqualToConstant_];

    *(v12 + 40) = v16;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 activateConstraints_];
  }

  else
  {
    OUTLINED_FUNCTION_0_195();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v4, v18);
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, &static Logger.conversationControls);
    v20 = v0;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v23 = 136315138;
      HIDWORD(v28) = v22;
      v6();
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v30);

      *(v23 + 4) = v26;
      _os_log_impl(&dword_1BBC58000, v21, BYTE4(v28), "Unable to obtain leadingAccessoryView for recipe: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }

  return v7;
}

void SystemApertureControlsView.updateLeadingAccessoryView()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_leadingAccessoryView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_leadingAccessoryView] removeFromSuperview];
  v2 = SystemApertureControlsView.createLeadingAccessoryView()();
  if (v2)
  {
    v3 = *&v0[v1];
    *&v0[v1] = v2;
    v5 = v2;

    v4 = [v5 layer];
    [v4 setAllowsHitTesting_];

    [v5 setUserInteractionEnabled_];
    [v0 addSubview_];
  }
}

uint64_t SystemApertureControlsView.allowUserInteractionWithSubview.getter()
{
  v0 = type metadata accessor for ConversationControlsRecipe();
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  OUTLINED_FUNCTION_13_2();
  v8 = *((*MEMORY[0x1E69E7D40] & v7) + 0x130);
  v8();
  LOBYTE(v1) = v6[*(v1 + 72)];
  OUTLINED_FUNCTION_0_195();
  v10 = _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v6, v9);
  if (v1)
  {
    v11 = 1;
  }

  else
  {
    (v8)(v10);
    v14 = 25;
    v15 = 0u;
    v16 = 0u;
    v17 = 7;
    v11 = static ConversationControlsType.== infix(_:_:)(v3, &v14);
    outlined destroy of ConversationControlsType(&v14);
    OUTLINED_FUNCTION_0_195();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v3, v12);
  }

  return v11 & 1;
}

double SystemApertureControlsView.calculateExpectedLabelTextHeight(labelWithText:)(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = a1;
  [v1 frame];
  [v1 sizeThatFits_];
  v3 = v2;

  return v3;
}

id SystemApertureControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SystemApertureControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for FaceTimeControlsView.ephemeralAlert.modify in conformance SystemApertureControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x128))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for FaceTimeControlsView.ephemeralAlertTimer.modify in conformance SystemApertureControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for ControlsView.recipe.modify in conformance SystemApertureControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void specialized closure #1 in FaceTimeControlsView.displayEphemeralAlert()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView) setAlpha_];
    v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(v2);
    [v3 setAlpha_];
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView) setAlpha_];
    v3 = MEMORY[0x1E69E7D40];
    v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v2);
    [v4 setAlpha_];

    (*((*v3 & *v1) + 0x1F8))(0.0);
  }
}

void specialized closure #2 in FaceTimeControlsView.displayEphemeralAlert()(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xE0))();
    if (v5)
    {
      v8 = v5;
      v9 = v6;
      v10 = v7;
      if ((a1 & 1) == 0)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, &static Logger.conversationControls);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_1BBC58000, v12, v13, "displayEphemeralAlert: statusView.alpha/ephemeralAlertStack.alpha -> 0 didn't finish", v14, 2u);
          MEMORY[0x1BFB23DF0](v14, -1, -1);
        }

        v15 = (*((*v4 & *v3) + 0x130))([*(v3 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView) setAlpha_]);
        [v15 setAlpha_];
      }

      v16 = *((*v4 & *v3) + 0x130);
      v17 = v16();
      [v17 setHidden_];

      v18 = v16();
      v19 = (*((*v4 & *v18) + 0x88))();

      [v19 setAttributedText_];
      v20 = v16();
      v21 = (*((*v4 & *v20) + 0xA0))();

      [v21 setAttributedText_];
      v22 = objc_opt_self();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v23 = (*(*static Defaults.shared + 1056))();
      v24 = swift_allocObject();
      *(v24 + 16) = v3;
      *(v24 + 24) = v8;
      *(v24 + 32) = v9;
      *(v24 + 40) = v10 & 1;
      aBlock[4] = partial apply for specialized closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert();
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_101;
      v25 = _Block_copy(aBlock);
      v26 = v3;
      v3 = v8;
      v27 = v9;

      [v22 animateWithDuration:v25 animations:v23];
      _Block_release(v25);
    }
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x118))();
    if (v5)
    {
      v8 = v5;
      v9 = v6;
      v10 = v7;
      if ((a1 & 1) == 0)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, &static Logger.conversationControls);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_1BBC58000, v12, v13, "displayEphemeralAlert: statusView.alpha/ephemeralAlertStack.alpha -> 0 didn't finish", v14, 2u);
          MEMORY[0x1BFB23DF0](v14, -1, -1);
        }

        v15 = (*((*v4 & *v3) + 0x158))([*(v3 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView) setAlpha_]);
        [v15 setAlpha_];

        (*((*v4 & *v3) + 0x1F8))(0.0);
      }

      v16 = *((*v4 & *v3) + 0x158);
      v17 = v16();
      [v17 setHidden_];

      v18 = v16();
      v19 = (*((*v4 & *v18) + 0x88))();

      [v19 setAttributedText_];
      v20 = v16();
      v21 = (*((*v4 & *v20) + 0xA0))();

      [v21 setAttributedText_];
      v22 = objc_opt_self();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v23 = (*(*static Defaults.shared + 1056))();
      v24 = swift_allocObject();
      *(v24 + 16) = v3;
      *(v24 + 24) = v8;
      *(v24 + 32) = v9;
      *(v24 + 40) = v10 & 1;
      aBlock[4] = partial apply for specialized closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert();
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_61_1;
      v25 = _Block_copy(aBlock);
      v26 = v3;
      v3 = v8;
      v27 = v9;

      [v22 animateWithDuration:v25 animations:v23];
      _Block_release(v25);
    }
  }
}

void specialized closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert()(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = [*(a1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView) setAlpha_];
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x130);
  v9 = (v8)(v6);
  [v9 setHidden_];

  v10 = v8();
  (*((*v7 & *a1) + 0xF8))();
  [v10 setAlpha_];

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, &static Logger.conversationControls);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    (*((*v7 & *v12) + 0xB0))();
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1BBC58000, v13, v14, "⇢ [%s] 2. Displaying ephemeral alert", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
    MEMORY[0x1BFB23DF0](v15, -1, -1);
  }

  if (a4)
  {
    v20 = objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v21 = (*(*static Defaults.shared + 1048))();
    v22 = swift_allocObject();
    *(v22 + 16) = v12;
    aBlock[4] = partial apply for specialized closure #1 in closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert();
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_107;
    v23 = _Block_copy(aBlock);
    v24 = v12;

    v25 = [v20 scheduledTimerWithTimeInterval:0 repeats:v23 block:v21];
    _Block_release(v23);
    (*((*v7 & *v24) + 0xD0))(v25);
  }
}

{
  v6 = [*(a1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView) setAlpha_];
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1F8))(v6, 0.0);
  v9 = *((*v7 & *a1) + 0x158);
  v10 = (v9)(v8);
  [v10 setHidden_];

  v11 = v9();
  (*((*v7 & *a1) + 0xB8))();
  [v11 setAlpha_];

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, &static Logger.conversationControls);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    (*((*v7 & *v13) + 0xD0))();
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v14, v15, "⇢ [%s] 2. Displaying ephemeral alert", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFB23DF0](v17, -1, -1);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
  }

  if (a4)
  {
    v21 = objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v22 = (*(*static Defaults.shared + 1048))();
    v23 = swift_allocObject();
    *(v23 + 16) = v13;
    aBlock[4] = partial apply for specialized closure #1 in closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert();
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_67_1;
    v24 = _Block_copy(aBlock);
    v25 = v13;

    v26 = [v21 scheduledTimerWithTimeInterval:0 repeats:v24 block:v22];
    _Block_release(v24);
    (*((*v7 & *v25) + 0x108))(v26);
  }
}

void specialized closure #1 in FaceTimeControlsView.cleanUpEphemeralAlert()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x130))();
    [v2 setAlpha_];
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x158))();
    [v2 setAlpha_];
  }
}

void specialized closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xE0))();
    if (v5)
    {
      outlined consume of ConversationControlsRecipe.View?(v5, v6);
    }

    else
    {
      if ((a1 & 1) == 0)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, &static Logger.conversationControls);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_1BBC58000, v8, v9, "cleanUpEphemeralAlert: ephemeralAlertStack.alpha -> 0 didn't finish", v10, 2u);
          MEMORY[0x1BFB23DF0](v10, -1, -1);
        }

        v11 = (*((*v4 & *v3) + 0x130))();
        [v11 setAlpha_];
      }

      v12 = *((*v4 & *v3) + 0x130);
      v13 = v12();
      [v13 setHidden_];

      v14 = v12();
      v15 = (*((*v4 & *v14) + 0x88))();

      [v15 setAttributedText_];
      v16 = v12();
      v17 = (*((*v4 & *v16) + 0xA0))();

      [v17 setAttributedText_];
      v18 = objc_opt_self();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v19 = (*(*static Defaults.shared + 1056))();
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      v29 = partial apply for specialized closure #1 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert();
      v30 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed () -> ();
      v28 = &block_descriptor_121;
      v21 = _Block_copy(&aBlock);
      v22 = v3;

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = partial apply for specialized closure #2 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert();
      v30 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v28 = &block_descriptor_125;
      v24 = _Block_copy(&aBlock);

      [v18 animateWithDuration:v21 animations:v24 completion:v19];
      _Block_release(v24);
      _Block_release(v21);
    }
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x1E69E7D40];
    v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x118))();
    if (v5)
    {
      outlined consume of ConversationControlsRecipe.View?(v5, v6);
    }

    else
    {
      if ((a1 & 1) == 0)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, &static Logger.conversationControls);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_1BBC58000, v8, v9, "cleanUpEphemeralAlert: ephemeralAlertStack.alpha -> 0 didn't finish", v10, 2u);
          MEMORY[0x1BFB23DF0](v10, -1, -1);
        }

        v11 = (*((*v4 & *v3) + 0x158))();
        [v11 setAlpha_];
      }

      v12 = *((*v4 & *v3) + 0x158);
      v13 = v12();
      [v13 setHidden_];

      v14 = v12();
      v15 = (*((*v4 & *v14) + 0x88))();

      [v15 setAttributedText_];
      v16 = v12();
      v17 = (*((*v4 & *v16) + 0xA0))();

      [v17 setAttributedText_];
      v18 = objc_opt_self();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v19 = (*(*static Defaults.shared + 1056))();
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      v29 = partial apply for specialized closure #1 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert();
      v30 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed () -> ();
      v28 = &block_descriptor_81;
      v21 = _Block_copy(&aBlock);
      v22 = v3;

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = partial apply for specialized closure #2 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert();
      v30 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v28 = &block_descriptor_85_0;
      v24 = _Block_copy(&aBlock);

      [v18 animateWithDuration:v21 animations:v24 completion:v19];
      _Block_release(v24);
      _Block_release(v21);
    }
  }
}

uint64_t specialized closure #1 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(void *a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xF8);
  v2();
  return (v2)([v1 setAlpha_]);
}

{
  v2 = *(a1 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xB8);
  v4();
  v5 = (v4)([v2 setAlpha_]);
  return (*((*v3 & *a1) + 0x1F8))(v5);
}

void specialized closure #2 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
    v5 = MEMORY[0x1E69E7D40];
    v6 = &stru_1BC4BA000;
    if ((a1 & 1) == 0)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, &static Logger.conversationControls);
      v8 = v3;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v32 = v12;
        *v11 = 136315138;
        (*((*v5 & *v8) + 0xF8))();
        v13 = String.init<A>(reflecting:)();
        v15 = v5;
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v32);

        *(v11 + 4) = v16;
        v5 = v15;
        v6 = &stru_1BC4BA000;
        _os_log_impl(&dword_1BBC58000, v9, v10, "cleanUpEphemeralAlert: statusView.alpha -> %s didn't finish", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        v17 = v12;
        v4 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
        MEMORY[0x1BFB23DF0](v17, -1, -1);
        MEMORY[0x1BFB23DF0](v11, -1, -1);
      }

      else
      {
      }

      v18 = *((*v5 & *v8) + 0xF8);
      v19 = *(v8 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
      v18();
      [v19 setAlpha_];

      v18();
    }

    if (v4[25] != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, &static Logger.conversationControls);
    v21 = v3;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = *&v6[144]._predicateFlags;
      (*((*v5 & *v21) + 0xB0))();
      v26 = String.init<A>(reflecting:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v32);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1BBC58000, v22, v23, "⇢ [%s] 4. Removed ephemeral alert, displaying status view", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
      MEMORY[0x1BFB23DF0](v24, -1, -1);
    }

    v29 = *(v21 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_controlsManager);
    v30 = *((*v5 & *v29) + 0xAD0);
    v31 = v29;
    v30();
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
    v5 = MEMORY[0x1E69E7D40];
    v6 = &stru_1BC4BA000;
    if ((a1 & 1) == 0)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, &static Logger.conversationControls);
      v8 = v3;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v33 = v12;
        *v11 = 136315138;
        (*((*v5 & *v8) + 0xB8))();
        v13 = String.init<A>(reflecting:)();
        v15 = v5;
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v33);

        *(v11 + 4) = v16;
        v5 = v15;
        v6 = &stru_1BC4BA000;
        _os_log_impl(&dword_1BBC58000, v9, v10, "cleanUpEphemeralAlert: statusView.alpha -> %s didn't finish", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        v17 = v12;
        v4 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
        MEMORY[0x1BFB23DF0](v17, -1, -1);
        MEMORY[0x1BFB23DF0](v11, -1, -1);
      }

      else
      {
      }

      v18 = *((*v5 & *v8) + 0xB8);
      v19 = *(v8 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_statusView);
      v18();
      [v19 setAlpha_];

      v20 = (v18)();
      (*((*v5 & *v8) + 0x1F8))(v20);
    }

    if (v4[25] != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, &static Logger.conversationControls);
    v22 = v3;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = *&v6[144]._predicateFlags;
      (*((*v5 & *v22) + 0xD0))();
      v27 = String.init<A>(reflecting:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v33);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1BBC58000, v23, v24, "⇢ [%s] 4. Removed ephemeral alert, displaying status view", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFB23DF0](v26, -1, -1);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
    }

    v30 = *(v22 + OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_controlsManager);
    v31 = *((*v5 & *v30) + 0xAD0);
    v32 = v30;
    v31();
  }
}

uint64_t type metadata accessor for SystemApertureControlsView()
{
  result = type metadata singleton initialization cache for SystemApertureControlsView;
  if (!type metadata singleton initialization cache for SystemApertureControlsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOhTm_4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined copy of ConversationControlsRecipe.Actions?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xFDu)
  {
    return outlined copy of ConversationControlsRecipe.Actions(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t outlined consume of ConversationControlsRecipe.Actions?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xFDu)
  {
    return outlined consume of ConversationControlsRecipe.Actions();
  }

  return result;
}

uint64_t type metadata completion function for SystemApertureControlsView()
{
  result = type metadata accessor for ConversationControlsRecipe();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOcTm_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void partial apply for specialized closure #1 in FaceTimeControlsView.displayEphemeralAlert()()
{
  specialized closure #1 in FaceTimeControlsView.displayEphemeralAlert()();
}

{
  specialized closure #1 in FaceTimeControlsView.displayEphemeralAlert()();
}

void partial apply for specialized closure #2 in FaceTimeControlsView.displayEphemeralAlert()(char a1)
{
  specialized closure #2 in FaceTimeControlsView.displayEphemeralAlert()(a1);
}

{
  specialized closure #2 in FaceTimeControlsView.displayEphemeralAlert()(a1);
}

void partial apply for specialized closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert()()
{
  specialized closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert()(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

{
  specialized closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert()(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert()(uint64_t a1)
{
  return specialized closure #1 in closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert()(a1, *(v1 + 16), &OBJC_IVAR____TtC15ConversationKit26SystemApertureControlsView_controlsManager);
}

{
  return specialized closure #1 in closure #1 in closure #2 in FaceTimeControlsView.displayEphemeralAlert()(a1, *(v1 + 16), &OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_controlsManager);
}

void partial apply for specialized closure #1 in FaceTimeControlsView.cleanUpEphemeralAlert()()
{
  specialized closure #1 in FaceTimeControlsView.cleanUpEphemeralAlert()();
}

{
  specialized closure #1 in FaceTimeControlsView.cleanUpEphemeralAlert()();
}

void partial apply for specialized closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(char a1)
{
  specialized closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(a1);
}

{
  specialized closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(a1);
}

uint64_t partial apply for specialized closure #1 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()()
{
  return specialized closure #1 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(*(v0 + 16));
}

{
  return specialized closure #1 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(*(v0 + 16));
}

void partial apply for specialized closure #2 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(char a1)
{
  specialized closure #2 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(a1);
}

{
  specialized closure #2 in closure #2 in FaceTimeControlsView.cleanUpEphemeralAlert()(a1);
}

uint64_t objectdestroy_57Tm()
{

  return swift_deallocObject();
}

uint64_t LocalParticipantControlsViewConstraintManager.__allocating_init(containingView:localParticipantControlsView:localParticipantView:localParticipantButtonShelfView:layoutIdiom:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  LocalParticipantControlsViewConstraintManager.init(containingView:localParticipantControlsView:localParticipantView:localParticipantButtonShelfView:layoutIdiom:)(a1, a2, a3, a4);
  return v8;
}

__n128 LocalParticipantControlsViewConstraintManager.aspectRatio.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 LocalParticipantControlsViewConstraintManager.aspectRatio.setter(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

uint64_t LocalParticipantControlsViewConstraintManager.init(containingView:localParticipantControlsView:localParticipantView:localParticipantButtonShelfView:layoutIdiom:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 1;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [a3 addLayoutGuide_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BE4A0;
  v10 = [v8 topAnchor];
  v11 = [a3 safeAreaLayoutGuide];
  v12 = [v11 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];

  v13 = [v10 constraintEqualToAnchor:v12 constant:16.0];
  *(v9 + 32) = v13;
  v14 = [v8 leadingAnchor];
  v15 = [a3 leadingAnchor];
  v16 = OUTLINED_FUNCTION_1_159();
  v18 = [v16 v17];

  *(v9 + 40) = v18;
  v19 = [v8 trailingAnchor];
  v20 = [a3 trailingAnchor];
  v21 = OUTLINED_FUNCTION_1_159();
  v23 = [v21 v22];

  *(v9 + 48) = v23;
  v24 = [v8 bottomAnchor];
  v25 = [a4 topAnchor];
  v26 = OUTLINED_FUNCTION_1_159();
  v28 = [v26 v27];

  *(v9 + 56) = v28;
  v29 = [a2 centerYAnchor];
  v30 = [v8 centerYAnchor];
  v31 = OUTLINED_FUNCTION_1_159();
  v33 = [v31 v32];

  *(v9 + 64) = v33;
  v34 = [a2 centerXAnchor];
  v35 = [v8 centerXAnchor];
  v36 = OUTLINED_FUNCTION_1_159();
  v38 = [v36 v37];

  *(v9 + 72) = v38;
  *(v4 + 80) = v9;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BC4BA7F0;
  v40 = [a2 leadingAnchor];
  v41 = OUTLINED_FUNCTION_0_196([a3 leadingAnchor]);

  *(v39 + 32) = v41;
  v42 = [a2 trailingAnchor];
  v43 = OUTLINED_FUNCTION_0_196([a3 trailingAnchor]);

  *(v39 + 40) = v43;
  v44 = [a2 topAnchor];
  v45 = OUTLINED_FUNCTION_0_196([a3 topAnchor]);

  *(v39 + 48) = v45;
  v46 = [a2 bottomAnchor];
  v47 = OUTLINED_FUNCTION_0_196([a3 bottomAnchor]);

  *(v39 + 56) = v47;
  *(v4 + 88) = v39;
  *(v4 + 56) = a1;
  *(v4 + 64) = a3;
  *(v4 + 72) = a2;
  return v4;
}

uint64_t LocalParticipantControlsViewConstraintManager.constraintsForLayout(_:in:deviceOrientation:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17) != 128)
  {
  }

  v4 = *(v2 + 56);
  swift_beginAccess();
  v5 = *(v2 + 32);
  v19[0] = *(v2 + 16);
  v19[1] = v5;
  v20 = *(v2 + 48);
  v6 = static Layout.LocalParticipantView.participantViewFrame(in:aspectRatio:videoOrientation:)(v4, v19, a2);
  v8 = v7;
  v10 = v9;
  v11 = *(v2 + 72);
  v12 = [v11 widthAnchor];
  v13 = [v12 constraintEqualToConstant_];

  v14 = [v11 heightAnchor];
  v15 = [v14 constraintEqualToConstant_];

  v16 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  *(inited + 32) = v13;
  *(inited + 40) = v15;

  specialized Array.append<A>(contentsOf:)(inited);
  return v16;
}

id *LocalParticipantControlsViewConstraintManager.deinit()
{

  return v0;
}

uint64_t LocalParticipantControlsViewConstraintManager.__deallocating_deinit()
{
  LocalParticipantControlsViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t DockKitAccessoryManager.cameraControllerDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DockKitAccessoryManager.cameraControllerDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return ConversationLocalParticipantStateProvider.stateManager.modify;
}

uint64_t DockKitAccessoryManager.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23DockKitAccessoryManager_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DockKitAccessoryManager.lastTrackingSummary.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit23DockKitAccessoryManager_lastTrackingSummary;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t closure #1 in DockKitAccessoryManager.start()()
{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DeviceNotification();
  static DeviceNotification.connectedNotificationName.getter();
  v3 = objc_allocWithZone(v2);
  v4 = DeviceNotification.init(name:)();
  DeviceNotification.state.getter();

  v5 = UInt64.nsNumberValue.getter();
  v6 = [v5 BOOLValue];

  static DeviceNotification.trackingButtonNotificationName.getter();
  v8 = v7;
  v9 = objc_allocWithZone(v2);
  v10 = DeviceNotification.init(name:)();
  DeviceNotification.state.getter();

  v11 = UInt64.nsNumberValue.getter();
  LODWORD(v2) = [v11 BOOLValue];

  *(v1 + 32) = v6 ^ 1;
  *(v1 + 40) = v2;
  v12 = ConnectedState.rawValue.getter();
  if (v12 == ConnectedState.rawValue.getter())
  {
    v13 = swift_task_alloc();
    *(v0 + 24) = v13;
    *v13 = v0;
    v13[1] = closure #1 in DockKitAccessoryManager.start();

    return DockKitAccessoryManager.getConnectedAccessory()();
  }

  else
  {
    v15 = *(*(v0 + 16) + 16);
    OUTLINED_FUNCTION_0_197();
    lazy protocol witness table accessor for type Errors and conformance Errors(v16, v17);
    v18 = v15;
    OUTLINED_FUNCTION_1_160();
    DockCoreManager.getStateEvents(delegate:syncWithDaemon:)();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_22_0(v20))
    {
      v21 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v21);
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v22, v23, "registered for state events");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_13();

    return v24();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_48();
  v2 = v0[4];
  v3 = v0[2];
  if (v2)
  {
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
    v2;

    OUTLINED_FUNCTION_13_9(MEMORY[0x1E699A278]);
    v19 = v5;
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_34_34(v6);

    return v19(v7);
  }

  else
  {
    v9 = *(v3 + 16);
    OUTLINED_FUNCTION_0_197();
    lazy protocol witness table accessor for type Errors and conformance Errors(v10, v11);
    v12 = v9;
    OUTLINED_FUNCTION_1_160();
    DockCoreManager.getStateEvents(delegate:syncWithDaemon:)();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_22_0(v14))
    {
      v15 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v15);
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v16, v17, "registered for state events");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_13();

    return v18();
  }
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13_9(MEMORY[0x1E699A288]);
    v10 = swift_task_alloc();
    *(v3 + 56) = v10;
    *v10 = v5;
    v11 = OUTLINED_FUNCTION_28_47(v10);

    return v12(v11);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_44();

  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_0_197();
  lazy protocol witness table accessor for type Errors and conformance Errors(v4, v5);
  v6 = v3;
  OUTLINED_FUNCTION_1_160();
  DockCoreManager.getStateEvents(delegate:syncWithDaemon:)();

  if (!v1)
  {
    v8 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_22_0(v12))
    {
      v13 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v13);
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v14, v15, "registered for state events");
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_6;
  }

  v7 = v1;
  v8 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_32_26();
  if (OUTLINED_FUNCTION_112_2())
  {
    OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_268();
    OUTLINED_FUNCTION_30_33(5.7779e-34);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_13_73(v10);
    OUTLINED_FUNCTION_8_7(&dword_1BBC58000, v11, v2, "failed registering for state events, err %@");
    outlined destroy of NSObject?(v9);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();

LABEL_6:
    goto LABEL_8;
  }

LABEL_8:
  OUTLINED_FUNCTION_13();

  return v16();
}

{
  v2 = v0[6];
  OUTLINED_FUNCTION_36_33();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  v4 = OUTLINED_FUNCTION_317();
  v5 = v0[4];
  if (v4)
  {
    OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_268();
    OUTLINED_FUNCTION_26_48(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_13_73(v7);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    outlined destroy of NSObject?(v6);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  v13 = *(v0[2] + 16);
  OUTLINED_FUNCTION_0_197();
  lazy protocol witness table accessor for type Errors and conformance Errors(v14, v15);
  v16 = v13;
  OUTLINED_FUNCTION_1_160();
  DockCoreManager.getStateEvents(delegate:syncWithDaemon:)();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v18))
  {
    v19 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v19);
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v20, v21, "registered for state events");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_13();

  return v22();
}

{
  v2 = v0[8];
  OUTLINED_FUNCTION_36_33();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  v4 = OUTLINED_FUNCTION_317();
  v5 = v0[4];
  if (v4)
  {
    OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_268();
    OUTLINED_FUNCTION_26_48(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_13_73(v7);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    outlined destroy of NSObject?(v6);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  v13 = *(v0[2] + 16);
  OUTLINED_FUNCTION_0_197();
  lazy protocol witness table accessor for type Errors and conformance Errors(v14, v15);
  v16 = v13;
  OUTLINED_FUNCTION_1_160();
  DockCoreManager.getStateEvents(delegate:syncWithDaemon:)();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v18))
  {
    v19 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v19);
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v20, v21, "registered for state events");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_13();

  return v22();
}

uint64_t partial apply for closure #1 in DockKitAccessoryManager.start()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_33_37();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_0(v3);

  return closure #1 in DockKitAccessoryManager.start()(v5, v6, v7, v1);
}

uint64_t DockKitAccessoryManager.getConnectedAccessory()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](DockKitAccessoryManager.getConnectedAccessory(), 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0[2] + 16);
  v0[3] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = DockKitAccessoryManager.getConnectedAccessory();

  return MEMORY[0x1EEE02698]();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 40) = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 40);
  if (!v1)
  {
LABEL_7:
    v10 = type metadata accessor for Errors();
    lazy protocol witness table accessor for type Errors and conformance Errors(&lazy protocol witness table cache variable for type Errors and conformance Errors, MEMORY[0x1E699A300]);
    v11 = swift_allocError();
    *v12 = 0xD000000000000028;
    v12[1] = 0x80000001BC516DD0;
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E699A2F8], v10);
    swift_willThrow();
    v13 = v11;
    v14 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_104_3();
    if (OUTLINED_FUNCTION_317())
    {
      OUTLINED_FUNCTION_42();
      v15 = OUTLINED_FUNCTION_268();
      OUTLINED_FUNCTION_26_48(5.7779e-34);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_13_73(v16);
      OUTLINED_FUNCTION_140();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      outlined destroy of NSObject?(v15);
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
    }

    v3 = 0;
    goto LABEL_11;
  }

  type metadata accessor for TrackingStand();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {

    goto LABEL_7;
  }

  v3 = v2;
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_42();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v3;
    *v8 = v3;
    v9 = v4;
    _os_log_impl(&dword_1BBC58000, v5, v6, "daemon connected %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    OUTLINED_FUNCTION_2_2();
  }

LABEL_11:
  v22 = *(v0 + 8);

  return v22(v3);
}

{
  OUTLINED_FUNCTION_44();

  v1 = *(v0 + 48);
  v2 = v1;
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  if (OUTLINED_FUNCTION_317())
  {
    OUTLINED_FUNCTION_42();
    v4 = OUTLINED_FUNCTION_268();
    OUTLINED_FUNCTION_26_48(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_13_73(v5);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    outlined destroy of NSObject?(v4);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11(0);
}

Swift::Void __swiftcall DockKitAccessoryManager.stop()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  DockCoreManager.stopStateEvents()();

  v3 = *(v1 + 16);
  DockCoreManager.disconnect()();

  v4 = *(v1 + 24);
  if (v4)
  {
    v5 = v4;
    dispatch thunk of DockCoreAccessory.disconnect(allowReconnect:)();

    v6 = *(v1 + 24);
  }

  else
  {
    v6 = 0;
  }

  *(v1 + 24) = 0;
}

void DockKitAccessoryManager.stateEvent(info:connectedState:dockState:trackingButtonState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DockKitAccessoryManager.handleConnectionStateChanged(to:)(a2);

  DockKitAccessoryManager.handleTrackingStateChanged(to:)(a4);
}

void DockKitAccessoryManager.handleConnectionStateChanged(to:)(uint64_t a1)
{
  v3 = ConnectedState.rawValue.getter();
  if (v3 != ConnectedState.rawValue.getter())
  {
    *(v1 + 32) = a1;
    v4 = ConnectedState.rawValue.getter();
    if (v4 == ConnectedState.rawValue.getter())
    {
      DockKitAccessoryManager.start()();
    }

    else
    {
      v5 = ConnectedState.rawValue.getter();
      if (v5 == ConnectedState.rawValue.getter())
      {

        DockKitAccessoryManager.handleAccessoryDisconnected()();
      }
    }
  }
}

void DockKitAccessoryManager.handleTrackingStateChanged(to:)(uint64_t a1)
{
  v3 = type metadata accessor for CameraOrientationInternal();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v7 - 8);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v1 + 56);
    v9 = TrackingButtonState.rawValue.getter();
    if (v9 != TrackingButtonState.rawValue.getter())
    {
      *(v1 + 40) = a1;
      v10 = TrackingButtonState.rawValue.getter();
      if (v10 == TrackingButtonState.rawValue.getter())
      {
        swift_getObjectType();
        static Date.now.getter();
        (*(v4 + 104))(v6, *MEMORY[0x1E699A2D8], v3);
        type metadata accessor for TrackingSummaryInternal();
        swift_allocObject();
        TrackingSummaryInternal.init(time:subjects:orientation:referenceDimension:)();
        (*(v8 + 32))();
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Camera Controller delegate is nil", v13, 2u);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }
  }
}

Swift::Void __swiftcall DockKitAccessoryManager.tapToTrackTriggered(atPoint:cameraPosition:)(CGPoint atPoint, ConversationKit::CameraPosition cameraPosition)
{
  v3 = v2;
  y = atPoint.y;
  x = atPoint.x;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for CameraOrientationInternal();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = ConnectedState.rawValue.getter();
  if (v17 == ConnectedState.rawValue.getter() && (v18 = TrackingButtonState.rawValue.getter(), v18 == TrackingButtonState.rawValue.getter()))
  {
    v19 = OBJC_IVAR____TtC15ConversationKit23DockKitAccessoryManager_lastTrackingSummary;
    swift_beginAccess();
    if (*(v3 + v19))
    {

      dispatch thunk of TrackingSummaryInternal.orientation.getter();

      (*(v8 + 32))(v16, v13, v7);
      type metadata accessor for DockKitCoreUtils();
      (*(v8 + 104))(v10, *MEMORY[0x1E699A2E8], v7);
      v20 = MEMORY[0x1BFB1A720](v10, v16, x, y);
      v22 = v21;
      v23 = *(v8 + 8);
      v23(v10, v7);
      static TaskPriority.userInitiated.getter();
      v24 = type metadata accessor for TaskPriority();
      OUTLINED_FUNCTION_24_4(v24);
      v25 = swift_allocObject();
      v25[2] = 0.0;
      v25[3] = 0.0;
      *(v25 + 4) = v3;
      v25[5] = v20;
      *(v25 + 6) = v22;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      v23(v16, v7);
    }
  }

  else
  {
    v29 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v26))
    {
      v27 = OUTLINED_FUNCTION_33();
      *v27 = 0;
      _os_log_impl(&dword_1BBC58000, v29, v26, "No connected and tracking DockKit accessory", v27, 2u);
      MEMORY[0x1BFB23DF0](v27, -1, -1);
    }

    v28 = v29;
  }
}

uint64_t closure #1 in DockKitAccessoryManager.tapToTrackTriggered(atPoint:cameraPosition:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = a6;
  return MEMORY[0x1EEE6DFA0](closure #1 in DockKitAccessoryManager.tapToTrackTriggered(atPoint:cameraPosition:), 0, 0);
}

uint64_t closure #1 in DockKitAccessoryManager.tapToTrackTriggered(atPoint:cameraPosition:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0[2] + 16);
  v0[5] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in DockKitAccessoryManager.tapToTrackTriggered(atPoint:cameraPosition:);
  v3.n128_u64[0] = v0[3];
  v4.n128_u64[0] = v0[4];

  return MEMORY[0x1EEE026A8](v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_48();
  v2 = *(v0 + 56);

  v3 = v2;
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  v5 = OUTLINED_FUNCTION_317();
  v6 = *(v0 + 56);
  if (v5)
  {
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_268();
    *v1 = 134218498;
    *(v1 + 4) = v8;
    *(v1 + 12) = 2048;
    *(v1 + 14) = v7;
    *(v1 + 22) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 24) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v12, v13, v14, v15, v16, 0x20u);
    outlined destroy of NSObject?(v9);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v17();
}

uint64_t DockKitAccessoryManager.start()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  static TaskPriority.userInitiated.getter();
  v2 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_24_4(v2);
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

void DockKitAccessoryManager.handleAccessoryDisconnected()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for CameraOrientationInternal();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v9 - 8);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v1 + 56);
    swift_getObjectType();
    static Date.now.getter();
    (*(v6 + 104))(v8, *MEMORY[0x1E699A2D8], v5);
    type metadata accessor for TrackingSummaryInternal();
    swift_allocObject();
    TrackingSummaryInternal.init(time:subjects:orientation:referenceDimension:)();
    (*(v10 + 32))();

    v11 = *(v1 + 24);
    if (v11)
    {
      v12 = v11;
      static TaskPriority.userInitiated.getter();
      v13 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v12;
      v14[5] = v1;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
      swift_unknownObjectRelease();

      return;
    }

    v15 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BBC58000, v15, v18, "No connected DockKit accessory", v19, 2u);
      MEMORY[0x1BFB23DF0](v19, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BBC58000, v15, v16, "Camera Controller delegate is nil", v17, 2u);
      MEMORY[0x1BFB23DF0](v17, -1, -1);
    }
  }
}

uint64_t closure #1 in DockKitAccessoryManager.handleAccessoryConnected()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = closure #1 in DockKitAccessoryManager.handleAccessoryConnected();

  return DockKitAccessoryManager.getConnectedAccessory()();
}

uint64_t closure #1 in DockKitAccessoryManager.handleAccessoryConnected()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[4];
  v2 = v0[2];
  if (v1)
  {
    v3 = *(v2 + 24);
    *(v2 + 24) = v1;
    v1;

    OUTLINED_FUNCTION_13_9(MEMORY[0x1E699A278]);
    v14 = v4;
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_34_34(v5);

    return v14(v6);
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_22_0(v9))
    {
      v10 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v10);
      OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v11, v12, "No connected DockKit accessory");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_13();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13_9(MEMORY[0x1E699A288]);
    v10 = swift_task_alloc();
    *(v3 + 56) = v10;
    *v10 = v5;
    v11 = OUTLINED_FUNCTION_28_47(v10);

    return v12(v11);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 48);
  v2 = v1;
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  v4 = OUTLINED_FUNCTION_317();
  v5 = *(v0 + 32);
  if (v4)
  {
    OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_268();
    OUTLINED_FUNCTION_26_48(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_13_73(v7);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    outlined destroy of NSObject?(v6);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v13();
}

{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 64);
  v2 = v1;
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  v4 = OUTLINED_FUNCTION_317();
  v5 = *(v0 + 32);
  if (v4)
  {
    OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_268();
    OUTLINED_FUNCTION_26_48(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_13_73(v7);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    outlined destroy of NSObject?(v6);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v13();
}

uint64_t closure #1 in DockKitAccessoryManager.handleAccessoryDisconnected()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v8 = (*MEMORY[0x1E699A270] + MEMORY[0x1E699A270]);
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = closure #1 in DockKitAccessoryManager.handleAccessoryDisconnected();

  return v8();
}

uint64_t closure #1 in DockKitAccessoryManager.handleAccessoryDisconnected()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13_9(MEMORY[0x1E699A280]);
    v13 = v10;
    v11 = swift_task_alloc();
    *(v3 + 48) = v11;
    *v11 = v5;
    v11[1] = closure #1 in DockKitAccessoryManager.handleAccessoryDisconnected();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 24);
  dispatch thunk of DockCoreAccessory.disconnect(allowReconnect:)();
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;

  OUTLINED_FUNCTION_13();

  return v3();
}

{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 40);
  v2 = v1;
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  if (OUTLINED_FUNCTION_317())
  {
    OUTLINED_FUNCTION_42();
    v4 = OUTLINED_FUNCTION_268();
    OUTLINED_FUNCTION_26_48(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_13_73(v5);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    outlined destroy of NSObject?(v4);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  v11 = *(v0 + 24);
  dispatch thunk of DockCoreAccessory.disconnect(allowReconnect:)();
  v12 = *(v11 + 24);
  *(v11 + 24) = 0;

  OUTLINED_FUNCTION_13();

  return v13();
}

{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 56);
  v2 = v1;
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_104_3();
  if (OUTLINED_FUNCTION_317())
  {
    OUTLINED_FUNCTION_42();
    v4 = OUTLINED_FUNCTION_268();
    OUTLINED_FUNCTION_26_48(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_13_73(v5);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    outlined destroy of NSObject?(v4);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  v11 = *(v0 + 24);
  dispatch thunk of DockCoreAccessory.disconnect(allowReconnect:)();
  v12 = *(v11 + 24);
  *(v11 + 24) = 0;

  OUTLINED_FUNCTION_13();

  return v13();
}

uint64_t DockKitAccessoryManager.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 48);
  v1 = OBJC_IVAR____TtC15ConversationKit23DockKitAccessoryManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DockKitAccessoryManager.__deallocating_deinit()
{
  DockKitAccessoryManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t DockKitAccessoryManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DockKitAccessoryManager.init()();
  return v0;
}

uint64_t DockKitAccessoryManager.init()()
{
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for DockCoreManager()) init];
  *(v0 + 24) = xmmword_1BC4D2F50;
  *(v0 + 40) = 2;
  *(v0 + 56) = 0;
  swift_unknownObjectWeakInit();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC15ConversationKit23DockKitAccessoryManager_lastTrackingSummary) = 0;
  return v0;
}

uint64_t partial apply for closure #1 in DockKitAccessoryManager.tapToTrackTriggered(atPoint:cameraPosition:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_33_37();
  v1 = *(v0 + 4);
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_0(v5);

  return closure #1 in DockKitAccessoryManager.tapToTrackTriggered(atPoint:cameraPosition:)(v2, v3, v7, v8, v9, v1);
}

uint64_t type metadata accessor for DockKitAccessoryManager()
{
  result = type metadata singleton initialization cache for DockKitAccessoryManager;
  if (!type metadata singleton initialization cache for DockKitAccessoryManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DockKitAccessoryManager()
{
  result = type metadata accessor for Logger();
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

uint64_t partial apply for closure #1 in DockKitAccessoryManager.handleAccessoryConnected()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_33_37();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_0(v3);

  return closure #1 in DockKitAccessoryManager.handleAccessoryConnected()(v5, v6, v7, v1);
}

uint64_t partial apply for closure #1 in DockKitAccessoryManager.handleAccessoryDisconnected()()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33_37();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_5_0(v4);

  return closure #1 in DockKitAccessoryManager.handleAccessoryDisconnected()(v6, v7, v8, v2, v1);
}

uint64_t lazy protocol witness table accessor for type Errors and conformance Errors(unint64_t *a1, void (*a2)(uint64_t))
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

void BannerPresentationManager.presentNewBanner(as:type:activityUUID:fromActivityManager:completion:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v144 = v6;
  v149 = v7;
  v145 = v8;
  v159 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v142 = v14 - v13;
  OUTLINED_FUNCTION_4_24();
  v15 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v141 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v140 = v19 - v18;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_13_2();
  v25 = (*((*MEMORY[0x1E69E7D40] & v24) + 0x1D8))();
  if (!v25)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v44 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v44, static Logger.banners);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v46))
    {
      v47 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v47);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_18();
    }

    if (!v5)
    {
      goto LABEL_58;
    }

    lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
    OUTLINED_FUNCTION_19_6();
    *v53 = 2;
    v5();
    goto LABEL_20;
  }

  v147 = v25;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BNBannerSource);
  v26 = BannerPresentationManager.requesterIdentifier.getter();
  v28 = @nonobjc BNBannerSource.__allocating_init(for:forRequesterIdentifier:)(0, v26, v27);
  if (!v28)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v54 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v54, static Logger.banners);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v56))
    {
      v57 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v57);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v58, v59, v60, v61, v62, 2u);
      OUTLINED_FUNCTION_18();
    }

    if (!v5)
    {
      OUTLINED_FUNCTION_30_0();

      goto LABEL_22;
    }

    lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
    OUTLINED_FUNCTION_19_6();
    *v63 = 3;
    v5();

LABEL_20:
    OUTLINED_FUNCTION_30_0();

LABEL_22:

    return;
  }

  v152 = 0;
  v138 = v28;
  v139 = [v28 layoutDescriptionWithError_];
  if (v139)
  {
    v132 = v15;
    v133 = v11;
    v134 = v9;
    v136 = v3;
    v137 = v5;
    v29 = *&v0[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedBannerDismissalTimer];
    v30 = v152;
    [v29 invalidate];
    [*&v0[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_systemApertureElementDismissalTimer] invalidate];
    v31 = v149;
    v135 = BannerPresentationManager.shouldPresentSystemApertureElementFromBanner(type:)(v149);
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v32, static Logger.banners);
    outlined init with copy of ConversationControlsType(v149, &v152);
    outlined init with copy of ConversationControlsType(v149, &v157);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_30_1();
      v151 = OUTLINED_FUNCTION_29_7();
      *v35 = 136315394;
      v36 = ConversationControlsType.debugDescription.getter();
      v38 = v37;
      outlined destroy of ConversationControlsType(&v152);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v151);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      ConversationControlsType.associatedNotice.getter(v156);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pSgMd);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      outlined destroy of ConversationControlsType(&v157);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v151);
      v31 = v149;

      *(v35 + 14) = v43;
      _os_log_impl(&dword_1BBC58000, v33, v34, "presentNewBanner type:%s, notice:%s", v35, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      outlined destroy of ConversationControlsType(&v157);
      outlined destroy of ConversationControlsType(&v152);
    }

    outlined init with copy of ConversationControlsType(v31, &v152);
    v148 = v147;
    v80 = BannerPresentationManager.requesterIdentifier.getter();
    v82 = v81;
    v83 = OUTLINED_FUNCTION_154_3();
    v84(v83);
    v85 = one-time initialization token for shared;
    v143 = v139;
    if (v85 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v86 = static Defaults.shared;
    v87 = one-time initialization token for shared;

    if (v87 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v88 = static Features.shared;
    v89 = objc_opt_self();
    v90 = v88;
    v91 = [v89 defaultCenter];
    v92 = objc_allocWithZone(type metadata accessor for SystemBannerHostViewController());
    v93 = v1;
    v94 = specialized SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)(v148, v145, &v152, v1, v135 & 1, v80, v82, 0, 0, v139, v86, v90, v91, v23, v144 & 1, v92);
    OUTLINED_FUNCTION_4_120();
    v95 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & v96) + 0x2E8))())
    {
      v97 = v94;
      BannerPresentationManager.presentedBanner.setter(v94);
      outlined init with copy of ConversationControlsType(v149, &v152);
      if (v155 == 4)
      {
        outlined destroy of ConversationControlsType(&v152);
      }

      else if (v155 != 7 || v152 != 26 || (v98 = vorrq_s8(v153, v154), *&vorr_s8(*v98.i8, *&vextq_s8(v98, v98, 8uLL))))
      {
        outlined destroy of ConversationControlsType(&v152);
        goto LABEL_52;
      }

      SBSUndimScreen();
LABEL_52:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14NSSecureCoding_ptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BB990;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v111;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(1);
      *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 64) = v112;
      *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(1);
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v113;
      *(inited + 96) = NSNumber.init(BOOLeanLiteral:)(1);
      *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 112) = v114;
      *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd);
      v115 = Dictionary.init(dictionaryLiteral:)();
      outlined init with copy of ConversationControlsType(v149, &v157);
      outlined init with copy of ConversationControlsType(&v157, v156);
      v116 = swift_allocObject();
      v117 = v158[0];
      *(v116 + 40) = v157;
      *(v116 + 16) = v138;
      *(v116 + 24) = v97;
      *(v116 + 32) = v115;
      *(v116 + 56) = v117;
      *(v116 + 65) = *(v158 + 9);
      *(v116 + 88) = v137;
      *(v116 + 96) = v136;
      v118 = v97;
      v119 = *((*v95 & *v93) + 0x110);
      v120 = v118;

      v121 = v138;
      v122 = OUTLINED_FUNCTION_212();
      v123 = outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v122);
      v124 = v119(v123);
      if (v124)
      {
        v125 = v124;
        if ([v124 respondsToSelector_])
        {
          v126 = [v125 bannerPresentationManagerDismissSBBannerIfNeeded];
          swift_unknownObjectRelease();
          if (v126)
          {
            outlined destroy of ConversationControlsType(v156);

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
            v150 = static OS_dispatch_queue.main.getter();
            v154.i64[1] = partial apply for closure #1 in BannerPresentationManager.presentNewBanner(as:type:activityUUID:fromActivityManager:completion:);
            v155 = v116;
            v152 = MEMORY[0x1E69E9820];
            v153.i64[0] = 1107296256;
            OUTLINED_FUNCTION_6_5();
            v153.i64[1] = v127;
            v154.i64[0] = &block_descriptor_97;
            v146 = _Block_copy(&v152);

            static DispatchQoS.unspecified.getter();
            v152 = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_12_85();
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(v128, v129);
            v130 = OUTLINED_FUNCTION_334();
            __swift_instantiateConcreteTypeFromMangledNameV2(v130);
            OUTLINED_FUNCTION_3_8();
            lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v131, &_sSay8Dispatch0A13WorkItemFlagsVGMd);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            MEMORY[0x1BFB215C0](0, v140, v142, v146);
            _Block_release(v146);

            (*(v133 + 8))(v142, v134);
            (*(v141 + 8))(v140, v132);
            goto LABEL_58;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      closure #1 in BannerPresentationManager.presentNewBanner(as:type:activityUUID:fromActivityManager:completion:)(v138, v120, v115, v156, v137);

      outlined destroy of ConversationControlsType(v156);
      goto LABEL_58;
    }

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_240(v100))
    {
      v101 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v101);
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v102, v103, v104, v105, v106, 2u);
      OUTLINED_FUNCTION_4_4();
    }

    BannerPresentationManager.presentedBanner.setter(0);
    if (!v137)
    {

      goto LABEL_58;
    }

    lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
    v107 = OUTLINED_FUNCTION_19_6();
    *v108 = 6;
    v137();

    v79 = v107;
  }

  else
  {
    v66 = v152;
    v67 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v68 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v68, &static Logger.conversationControls);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_163(v70))
    {
      v71 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v71);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v72, v73, v74, v75, v76, 2u);
      OUTLINED_FUNCTION_18();
    }

    if (!v5)
    {

      goto LABEL_58;
    }

    lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
    v77 = OUTLINED_FUNCTION_19_6();
    *v78 = 5;
    v5();

    v79 = v77;
  }

LABEL_58:
  OUTLINED_FUNCTION_30_0();
}

void BannerPresentationManager.presentBanner(as:type:activityTypeForNewBanner:activityUUID:fromActivityManager:reply:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v163 = v6;
  v159 = v7;
  v158 = v8;
  v10 = v9;
  v169 = v11;
  v162 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v161 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v157 = v14;
  OUTLINED_FUNCTION_16(v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16(v20 - v19);
  v168 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v167 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10(v24 - v23);
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_178();
  }

  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v25, static Logger.banners);
  v26 = OUTLINED_FUNCTION_148_1();
  outlined init with copy of ConversationControlsType(v26, v27);
  v171 = v0;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v170 = v0;
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_30_1();
    *&v176 = OUTLINED_FUNCTION_29_7();
    *v31 = 136315394;
    outlined init with copy of ConversationControlsType(&v172, &v178);
    v32 = v17;
    v33 = v15;
    v34 = v10;
    v35 = specialized >> prefix<A>(_:)(&v178);
    v164 = v3;
    v36 = v5;
    v38 = v37;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v178, &_s15ConversationKit0A12ControlsTypeOSgMd);
    outlined destroy of ConversationControlsType(&v172);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v38, &v176);

    *(v31 + 4) = v39;
    *(v31 + 12) = 2080;
    *&v178 = v169;
    v40 = String.init<A>(reflecting:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v176);
    v10 = v34;
    v15 = v33;
    v17 = v32;

    *(v31 + 14) = v42;
    v5 = v36;
    v3 = v164;
    _os_log_impl(&dword_1BBC58000, v28, v29, "Requesting banner presentation for %s as %s", v31, 0x16u);
    swift_arrayDestroy();
    v1 = v170;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_83();
  }

  else
  {

    outlined destroy of ConversationControlsType(&v172);
  }

  v43 = BannerPresentationManager.callForRequestedControlsType(_:)(v10);
  if (v43)
  {
    v45 = v43;
    v46 = v44;
    v47 = *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_features];
    v48 = Features.receptionistEnabled.getter();
    v156[1] = v47;
    if (v48 & 1) != 0 || (Features.waitOnHoldEnabled.getter())
    {
      v174.i64[0] = &type metadata for ScreeningStatusOverride;
      v174.i64[1] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
      type metadata accessor for Defaults();
      OUTLINED_FUNCTION_24();
      swift_allocObject();
      v172 = Defaults.init()();
      v49 = v166;
      CallScreeningService.init(overrides:)();
      ObjectType = swift_getObjectType();
      (*(v46 + 48))(&v172, ObjectType, v46);
      v51 = v5;
      v52 = v3;
      v53 = v165;
      CallScreeningService.screeningStatusForCall(_:)();
      __swift_destroy_boxed_opaque_existential_1(&v172);
      (*(v17 + 8))(v49, v15);
      v54 = v167;
      v55 = v168;
      v56 = (*(v167 + 88))(v53, v168);
      v57 = v10;
      v58 = *MEMORY[0x1E6995EA0];
      v59 = v53;
      v3 = v52;
      v5 = v51;
      (*(v54 + 8))(v59, v55);
      v60 = v56 == v58;
      v10 = v57;
      if (v60)
      {
        v172 = 28;
        v173 = 0u;
        v174 = 0u;
        LOBYTE(v175) = 7;
        v61 = OUTLINED_FUNCTION_148_1();
        v63 = static ConversationControlsType.== infix(_:_:)(v61, v62);
        outlined destroy of ConversationControlsType(&v172);
        if ((v63 & 1) == 0)
        {
          v172 = 29;
          v173 = 0u;
          v174 = 0u;
          LOBYTE(v175) = 7;
          v64 = OUTLINED_FUNCTION_148_1();
          v66 = static ConversationControlsType.== infix(_:_:)(v64, v65);
          outlined destroy of ConversationControlsType(&v172);
          if ((v66 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
      v80 = swift_getObjectType();
      if ((*(v46 + 144))(v80, v46))
      {
LABEL_13:
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (!OUTLINED_FUNCTION_25(v68))
        {
          goto LABEL_24;
        }

        v69 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v69);
        v72 = "Call is screening, aborting banner presentation";
        goto LABEL_23;
      }
    }

    v81 = swift_getObjectType();
    if ((*(v46 + 240))(v81, v46))
    {
      v67 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_25(v82))
      {
        goto LABEL_24;
      }

      v83 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v83);
      v72 = "Call wants hold music, aborting banner presentation";
LABEL_23:
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v70, v71, v72);
      OUTLINED_FUNCTION_26();
LABEL_24:

      if (v5)
      {
        goto LABEL_40;
      }

      goto LABEL_47;
    }

    v84 = v10;
    v164 = v3;
    v85 = v170;
    v86 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_5_18();
    v87 += 34;
    v88 = *v87;
    v89 = (*v87)();
    v156[0] = v45;
    if (v89)
    {
      v168 = v89;
      OUTLINED_FUNCTION_100_5();
      v92 = (*(v90 + 472))(v91);
      if (v92)
      {
        v167 = v92;
        v93 = Features.isIncomingCallBannerEnabled.getter();
        v94 = v5;
        v95 = v164;
        v96 = v84;
        if ((v93 & 1) == 0)
        {
          OUTLINED_FUNCTION_100_5();
          v99 = (*(v97 + 704))(v98);
          if (v99)
          {
            v100 = v99;
            v101 = [v99 state];

            if (!v101)
            {
              if ((Features.sharePlayInCallsEnabled.getter() & 1) == 0 || (OUTLINED_FUNCTION_100_5(), (*(v144 + 672))(), v146 = v145, v147 = swift_getObjectType(), LOBYTE(v146) = (*(v146 + 152))(v147, v146), swift_unknownObjectRelease(), (v146 & 1) == 0))
              {
                v148 = OUTLINED_FUNCTION_148_1();
                outlined init with copy of ConversationControlsType(v148, v149);
                if (v175 == 2)
                {
                  outlined destroy of ConversationControlsType(&v172);
                }

                else if (v175 != 7 || ((v150 = vorrq_s8(v173, v174), v151 = vorr_s8(*v150.i8, *&vextq_s8(v150, v150, 8uLL)), v172 != 3) || *&v151) && (v172 != 31 || *&v151))
                {
                  outlined destroy of ConversationControlsType(&v172);
                  v152 = OUTLINED_FUNCTION_309();
                  if ((v153(v152) & 1) == 0)
                  {
                    v67 = Logger.logObject.getter();
                    v154 = static os_log_type_t.error.getter();
                    if (!OUTLINED_FUNCTION_25(v154))
                    {
                      goto LABEL_52;
                    }

                    v155 = OUTLINED_FUNCTION_33();
                    OUTLINED_FUNCTION_50_0(v155);
                    goto LABEL_51;
                  }
                }
              }
            }
          }
        }

        v102 = OUTLINED_FUNCTION_148_1();
        outlined init with copy of ConversationControlsType(v102, v103);
        v104 = v175;
        outlined destroy of ConversationControlsType(&v172);
        if (v104 != 1 || (ConversationControlsType.associatedNotice.getter(&v172), v105 = v174.i64[0], outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v172, &_s15ConversationKit6Notice_pSgMd), v105))
        {
          OUTLINED_FUNCTION_20();
          v106 = swift_allocObject();
          swift_unknownObjectWeakInit();
          outlined init with copy of ConversationControlsType(v96, &v178);
          outlined init with copy of Notice?(v158, &v176, &_s15ConversationKit0A12ControlsTypeOSgMd);
          v107 = v161;
          v108 = v160;
          v109 = v162;
          (*(v161 + 16))(v160, v159, v162);
          v110 = (*(v107 + 80) + 137) & ~*(v107 + 80);
          v111 = v110 + v157;
          v112 = swift_allocObject();
          *(v112 + 16) = v106;
          *(v112 + 24) = v94;
          v113 = v169;
          *(v112 + 32) = v95;
          *(v112 + 40) = v113;
          v114 = *v179;
          *(v112 + 48) = v178;
          *(v112 + 64) = v114;
          *(v112 + 73) = *&v179[9];
          v115 = *v177;
          *(v112 + 96) = v176;
          *(v112 + 112) = v115;
          *(v112 + 121) = *&v177[9];
          (*(v107 + 32))(v112 + v110, v108, v109);
          *(v112 + v111) = v163 & 1;
          v174.i64[1] = partial apply for closure #1 in BannerPresentationManager.presentBanner(as:type:activityTypeForNewBanner:activityUUID:fromActivityManager:reply:);
          v175 = v112;
          v172 = MEMORY[0x1E69E9820];
          v173.i64[0] = 1107296256;
          v173.i64[1] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
          v174.i64[0] = &block_descriptor_9_1;
          v116 = _Block_copy(&v172);
          outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v94);

          [v168 bannerPresentationManagerRequestToPresentBanner_];
          _Block_release(v116);
          swift_unknownObjectRelease();
LABEL_34:
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_91_0();

          goto LABEL_48;
        }

        v67 = Logger.logObject.getter();
        v135 = static os_log_type_t.error.getter();
        if (!OUTLINED_FUNCTION_25(v135))
        {
LABEL_52:

          if (v5)
          {
            lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
            v140 = OUTLINED_FUNCTION_19_6();
            v142 = OUTLINED_FUNCTION_46_24(v140, v141);
            v5(v142);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_91_0();

            goto LABEL_41;
          }

          swift_unknownObjectRelease();
          goto LABEL_34;
        }

        v136 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v136);
        v139 = "Attempted to present a notice without necessary metadata";
LABEL_51:
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v137, v138, v139);
        OUTLINED_FUNCTION_26();
        goto LABEL_52;
      }

      swift_unknownObjectRelease();
    }

    v118 = v85;
    v67 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v119))
    {
      OUTLINED_FUNCTION_30_1();
      v120 = OUTLINED_FUNCTION_10_40();
      v172 = v120;
      *v81 = 136315394;
      v121 = (v88)(v120);
      if (v121)
      {
        *&v178 = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CNKBannerPresentationDelegate_pMd);
        v122 = String.init<A>(reflecting:)();
        v124 = v123;
      }

      else
      {
        v124 = 0xE300000000000000;
        v122 = 7104878;
      }

      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &v172);

      *(v81 + 4) = v128;
      *(v81 + 12) = 2080;
      v130 = (*((*v86 & *v118) + 0x1D8))(v129);
      if (v130)
      {
        *&v178 = v130;
        type metadata accessor for ConversationControlsManager(0);
        String.init<A>(reflecting:)();
        v132 = v131;
        OUTLINED_FUNCTION_189_1();
      }

      else
      {
        v132 = 0xE300000000000000;
        OUTLINED_FUNCTION_189_1();
        v133 = 7104878;
      }

      v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v132, &v172);

      *(v81 + 14) = v134;
      _os_log_impl(&dword_1BBC58000, v67, v119, "Attempted to present a banner without a presentationDelegate %s and/or a controlsManager %s", v81, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_18();

      if (v5)
      {
        goto LABEL_40;
      }
    }

    else
    {

      OUTLINED_FUNCTION_189_1();
      if (v5)
      {
LABEL_40:
        lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
        v125 = OUTLINED_FUNCTION_19_6();
        v127 = OUTLINED_FUNCTION_46_24(v125, v126);
        v5(v127);
        swift_unknownObjectRelease();
        goto LABEL_41;
      }
    }

LABEL_47:
    swift_unknownObjectRelease();
    goto LABEL_48;
  }

  v67 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_25(v73))
  {
    v74 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v74);
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v75, v76, "No valid call found for requested type, aborting banner presentation");
    OUTLINED_FUNCTION_26();
  }

  if (v5)
  {
    lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
    v77 = OUTLINED_FUNCTION_19_6();
    v79 = OUTLINED_FUNCTION_46_24(v77, v78);
    v5(v79);
LABEL_41:
  }

LABEL_48:
  OUTLINED_FUNCTION_30_0();
}

Swift::Int BannerPresentationError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BannerPresentationError()
{
  Hasher.init(_seed:)();
  BannerPresentationError.hash(into:)();
  return Hasher._finalize()();
}

uint64_t key path getter for BannerPresentationManager.presentationDelegate : BannerPresentationManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t key path setter for BannerPresentationManager.presentationDelegate : BannerPresentationManager(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x118);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t BannerPresentationManager.presentationDelegate.setter()
{
  OUTLINED_FUNCTION_3_12();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BannerPresentationManager.presentationDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentationDelegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_30_2();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return BannerPresentationManager.presentationDelegate.modify;
}

void BannerPresentationManager.presentationDelegate.modify()
{
  OUTLINED_FUNCTION_235_0();
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t key path getter for BannerPresentationManager.audioRoutingDelegate : BannerPresentationManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t key path setter for BannerPresentationManager.audioRoutingDelegate : BannerPresentationManager(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void BannerPresentationManager.audioRoutingDelegate.didset()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D8))();
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    (*((*v1 & *v3) + 0x520))(Strong);
  }
}

uint64_t BannerPresentationManager.audioRoutingDelegate.setter()
{
  OUTLINED_FUNCTION_3_12();
  swift_unknownObjectWeakAssign();
  BannerPresentationManager.audioRoutingDelegate.didset();
  return swift_unknownObjectRelease();
}

void (*BannerPresentationManager.audioRoutingDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_audioRoutingDelegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_30_2();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return BannerPresentationManager.audioRoutingDelegate.modify;
}

void BannerPresentationManager.audioRoutingDelegate.modify()
{
  OUTLINED_FUNCTION_235_0();
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    BannerPresentationManager.audioRoutingDelegate.didset();
  }

  free(v0);
}

uint64_t key path getter for BannerPresentationManager.inCallConversationControlsDelegate : BannerPresentationManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for BannerPresentationManager.inCallConversationControlsDelegate : BannerPresentationManager(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x148);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void BannerPresentationManager.inCallConversationControlsDelegate.didset()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D8))();
  if (v2)
  {
    v3 = v2;
    v4 = v0 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_inCallConversationControlsDelegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    (*((*v1 & *v3) + 0x4F0))(Strong, *(v4 + 1));
  }
}

uint64_t BannerPresentationManager.inCallConversationControlsDelegate.setter()
{
  OUTLINED_FUNCTION_55();
  v2 = v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_inCallConversationControlsDelegate;
  OUTLINED_FUNCTION_3_5();
  *(v2 + 8) = v0;
  swift_unknownObjectWeakAssign();
  BannerPresentationManager.inCallConversationControlsDelegate.didset();
  return swift_unknownObjectRelease();
}

void (*BannerPresentationManager.inCallConversationControlsDelegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_inCallConversationControlsDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return BannerPresentationManager.inCallConversationControlsDelegate.modify;
}

void BannerPresentationManager.inCallConversationControlsDelegate.modify()
{
  OUTLINED_FUNCTION_235_0();
  *(v0[5] + v0[6] + 8) = v0[4];
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    BannerPresentationManager.inCallConversationControlsDelegate.didset();
  }

  free(v0);
}

uint64_t key path getter for BannerPresentationManager.handedOffCall : BannerPresentationManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t key path setter for BannerPresentationManager.handedOffCall : BannerPresentationManager(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x178);
  v4 = *a1;
  return v3(v2);
}

void BannerPresentationManager.handedOffCall.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_handedOffCall;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void BannerPresentationManager.waitOnHoldHUDActivity.didset()
{
  v1 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity);
  if (v8)
  {
    v9 = one-time initialization token for banners;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.banners);

    v27 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315394;
      (*(v5 + 16))(v7, v8 + OBJC_IVAR____TtC15ConversationKit11HUDActivity_activityId, v4);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v5 + 8))(v7, v4);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v29);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      (*(*v8 + 232))(v18);
      outlined init with copy of ConversationControlsType((v3 + 8), v28);
      outlined destroy of HUDActivityManager.BannerUpdate();
      v19 = specialized >> prefix<A>(_:)(v28);
      v21 = v20;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s15ConversationKit0A12ControlsTypeOSgMd);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v29);

      *(v12 + 14) = v22;
      _os_log_impl(&dword_1BBC58000, v27, v11, "WaitOnHold: new activity %s %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v13, -1, -1);
      MEMORY[0x1BFB23DF0](v12, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.banners);
    v27 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BBC58000, v27, v24, "WaitOnHold activity is set to nil", v25, 2u);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
    }
  }

  v26 = v27;
}

uint64_t BannerPresentationManager.waitOnHoldHUDActivity.setter(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity) = a1;

  BannerPresentationManager.waitOnHoldHUDActivity.didset();
}

uint64_t closure #1 in BannerPresentationManager.conversationControlsManager.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v87 = &v85 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v92 = &v85 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v90 = &v85 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v85 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v85 - v20;
  v22 = type metadata accessor for UUID();
  v98 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v86 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v88 = &v85 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v91 = &v85 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v85 - v32;
  ObjectType = swift_getObjectType();
  v35 = *(a2 + 64);
  v96 = a2 + 64;
  v97 = ObjectType;
  v94 = a2;
  v95 = v35;
  v35(ObjectType, a2);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    v36 = v93;
    v19 = v21;
LABEL_5:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
    v38 = v94;
    goto LABEL_6;
  }

  v85 = *(v98 + 32);
  v85(v33, v21, v22);
  v37 = swift_getObjectType();
  v36 = v93;
  (*(v93 + 64))(v37);
  if (__swift_getEnumTagSinglePayload(v19, 1, v22) == 1)
  {
    (*(v98 + 8))(v33, v22);
    goto LABEL_5;
  }

  v85(v31, v19, v22);
  v49 = static UUID.== infix(_:_:)();
  v50 = *(v98 + 8);
  v50(v31, v22);
  v50(v33, v22);
  v38 = v94;
  if (v49)
  {
    return 1;
  }

LABEL_6:
  v95(v97, v38);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v22);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s10Foundation4UUIDVSgMd);
  if (EnumTagSinglePayload != 1)
  {
    v41 = *(v36 + 64);
    goto LABEL_10;
  }

  v40 = swift_getObjectType();
  v41 = *(v36 + 64);
  v42 = v90;
  v41(v40, v36);
  if (__swift_getEnumTagSinglePayload(v42, 1, v22) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s10Foundation4UUIDVSgMd);
    goto LABEL_10;
  }

  v51 = v22;
  (*(v98 + 32))(v91, v42, v22);
  v52 = UUID.uuidString.getter();
  v54 = v53;
  if (v52 == (*(v38 + 56))(v97, v38) && v54 == v55)
  {

    goto LABEL_38;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v57)
  {
LABEL_38:
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.banners);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1BBC58000, v74, v75, "Fallback match: nil groupUUID but new groupUUID matches current call UUID", v76, 2u);
      MEMORY[0x1BFB23DF0](v76, -1, -1);
    }

    (*(v98 + 8))(v91, v51);
    return 1;
  }

  v22 = v51;
  (*(v98 + 8))(v91, v51);
LABEL_10:
  v43 = swift_getObjectType();
  v44 = v92;
  v41(v43, v36);
  v45 = __swift_getEnumTagSinglePayload(v44, 1, v22);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s10Foundation4UUIDVSgMd);
  if (v45 == 1)
  {
    v46 = v87;
    v95(v97, v38);
    if (__swift_getEnumTagSinglePayload(v46, 1, v22) != 1)
    {
      v66 = v22;
      (*(v98 + 32))(v88, v46, v22);
      v67 = UUID.uuidString.getter();
      v69 = v68;
      if (v67 == (*(v36 + 56))(v43, v36) && v69 == v70)
      {
      }

      else
      {
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v72 & 1) == 0)
        {
          v22 = v66;
          (*(v98 + 8))(v88, v66);
          goto LABEL_13;
        }
      }

      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      __swift_project_value_buffer(v81, static Logger.banners);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_1BBC58000, v82, v83, "Fallback match: nil groupUUID but current groupUUID matches new call UUID", v84, 2u);
        MEMORY[0x1BFB23DF0](v84, -1, -1);
      }

      (*(v98 + 8))(v88, v66);
      return 1;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s10Foundation4UUIDVSgMd);
  }

LABEL_13:
  type metadata accessor for PlaceholderCall();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  swift_unknownObjectRetain();
  v48 = v89;
  PlaceholderCall.callGroupUUID.getter(v89);
  if (__swift_getEnumTagSinglePayload(v48, 1, v22) == 1)
  {
    swift_unknownObjectRelease();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s10Foundation4UUIDVSgMd);
    return 0;
  }

  v58 = v86;
  v59 = v22;
  (*(v98 + 32))(v86, v48, v22);
  v60 = UUID.uuidString.getter();
  v62 = v61;
  if (v60 == (*(v38 + 56))(v97, v38) && v62 == v63)
  {
  }

  else
  {
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v65 & 1) == 0)
    {
      (*(v98 + 8))(v58, v59);
      swift_unknownObjectRelease();
      return 0;
    }
  }

  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  __swift_project_value_buffer(v77, static Logger.banners);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_1BBC58000, v78, v79, "PlaceholderCall groupUUID matches current call UUID - same conversation", v80, 2u);
    MEMORY[0x1BFB23DF0](v80, -1, -1);
  }

  swift_unknownObjectRelease();
  (*(v98 + 8))(v58, v59);
  return 1;
}

uint64_t BannerPresentationManager.presentBanner(as:type:reply:)()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v6 = -1;
  UUID.init()();
  BannerPresentationManager.presentBanner(as:type:activityTypeForNewBanner:activityUUID:fromActivityManager:reply:)();
  v1 = OUTLINED_FUNCTION_157();
  v2(v1);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit0A12ControlsTypeOSgMd);
}

uint64_t key path getter for BannerPresentationManager.presentedBanner : BannerPresentationManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E8))();
  *a2 = result;
  return result;
}

void key path setter for BannerPresentationManager.presentedBanner : BannerPresentationManager(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  BannerPresentationManager.presentedBanner.setter(v1);
}

uint64_t BannerPresentationManager.presentedBanner.didset()
{
  BannerPresentationManager.invalidateAndReschedulePresentedBannerTimer(reschedule:)(1);
  BannerPresentationManager.invalidateAndRescheduleSystemApertureTimer(reschedule:)(1);
  v1 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedBanner;
  result = swift_beginAccess();
  if (!*(v0 + v1))
  {
    return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))(0);
  }

  return result;
}

Swift::Void __swiftcall BannerPresentationManager.invalidateAndRescheduleTimer(reschedule:)(Swift::Bool reschedule)
{
  BannerPresentationManager.invalidateAndReschedulePresentedBannerTimer(reschedule:)(reschedule);

  BannerPresentationManager.invalidateAndRescheduleSystemApertureTimer(reschedule:)(reschedule);
}

uint64_t key path getter for BannerPresentationManager.presentedSystemApertureElement : BannerPresentationManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x200))();
  *a2 = result;
  return result;
}

uint64_t key path setter for BannerPresentationManager.presentedSystemApertureElement : BannerPresentationManager(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x208);
  v4 = *a1;
  return v3(v2);
}

uint64_t BannerPresentationManager.presentedSystemApertureElement.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedSystemApertureElement;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x220);
  v4 = v2;
  return v3(v2);
}

void BannerPresentationManager.presentedBanner.setter(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  OUTLINED_FUNCTION_3_5();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  a3();
}

uint64_t (*BannerPresentationManager.presentedSystemApertureElement.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return BannerPresentationManager.presentedSystemApertureElement.modify;
}

uint64_t BannerPresentationManager.presentedSystemApertureElement.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return BannerPresentationManager.presentedSystemApertureElement.didset();
  }

  return result;
}

uint64_t key path getter for BannerPresentationManager.modernSystemApertureElement : BannerPresentationManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x218))();
  *a2 = result;
  return result;
}

uint64_t key path setter for BannerPresentationManager.modernSystemApertureElement : BannerPresentationManager(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x220);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t BannerPresentationManager.modernSystemApertureElement.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t BannerPresentationManager.modernSystemApertureElement.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_modernSystemApertureElement;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t BannerPresentationManager.makeSystemApertureElementProvider()()
{
  if (!SBUIIsSystemApertureEnabled())
  {
    return 0;
  }

  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_67_12();
  if ((*(v1 + 600))())
  {
    OUTLINED_FUNCTION_17_1();
    type metadata accessor for SystemBannerHostViewController();
    if (!swift_dynamicCastClass())
    {
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_67_12();
  (*(v2 + 520))();
  OUTLINED_FUNCTION_13_2();
  v4 = *((*v0 & v3) + 0x200);

  return v4();
}

char *BannerPresentationManager.makeOrphanSystemApertureElementProvider()()
{
  v2 = v0;
  v3 = type metadata accessor for UUID();
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_13_2();
  v6 = (*((*MEMORY[0x1E69E7D40] & v5) + 0x1D8))();
  if (!v6)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v10, static Logger.banners);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v12))
    {
      v13 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v13);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v14, v15, "Unable to obtain ConversationControlsManager");
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  v7 = v6;
  if (!SBUIIsSystemApertureEnabled())
  {

    return 0;
  }

  if ((Features.isModernBannerSystemEnabled.getter() & 1) != 0 && ApertureController.elementProvider.getter())
  {
    v35 = &unk_1F3B57F40;
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      v9 = v8;

      return v9;
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_108_4();
  v17 = (*(v16 + 672))();
  ConversationControlsManager.controlsHUDUpdate(for:)(v17, v18, v19, v20, v21, v22, v23, v24, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v37[0], v37[1], v37[2], v37[3], v37[4]);
  swift_unknownObjectRelease();
  v25 = v37[6];
  outlined init with copy of ConversationControlsType(v37, v36);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v26 = static Defaults.shared;
  v27 = one-time initialization token for shared;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v28 = static Features.shared;
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 defaultCenter];
  UUID.init()();
  v32 = objc_allocWithZone(type metadata accessor for SystemBannerHostViewController());
  v33 = v2;
  v9 = specialized SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)(v7, v25, v36, v2, 1, 0, 0, 0, 1u, 0, v26, v30, v31, v1, 0, v32);
  outlined destroy of ControlsHUDUpdate(v37);
  return v9;
}

uint64_t BannerPresentationManager.inCallControlsVisible.getter()
{
  OUTLINED_FUNCTION_283_0();
  v1 = (*(v0 + 472))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  OUTLINED_FUNCTION_27_47();
  v4 = (*(v3 + 1256))();
  v6 = v5;

  if (!v4)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 16))(ObjectType, v6);
  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t BannerPresentationManager.requesterIdentifier.getter()
{
  type metadata accessor for BannerPresentationManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  result = outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v1);
  if (!v3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *BannerPresentationManager.__allocating_init(delegate:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_247());
  OUTLINED_FUNCTION_28_0();
  return BannerPresentationManager.init(delegate:)();
}

char *BannerPresentationManager.init(delegate:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_activityManager;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_20_57();
  }

  v3 = static HUDActivityManager.shared;
  *&v1[v2] = static HUDActivityManager.shared;
  v4 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_bannerActivityManager;
  v5 = one-time initialization token for shared;
  v6 = v3;
  if (v5 != -1)
  {
    OUTLINED_FUNCTION_32_27();
  }

  v7 = static BannerActivityManager.shared;
  *&v1[v4] = static BannerActivityManager.shared;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_inCallConversationControlsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager__conversationControlsManager] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_handedOffCall] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_incomingCallActivity] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_videoUpgradeRequestActivity] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_waitOnHoldHUDActivity] = 0;
  v8 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter;
  v9 = objc_opt_self();
  v10 = v7;
  *&v1[v8] = [v9 sharedInstance];
  v11 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_gameControllerManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static GameControllerManager.shared;
  *&v1[v11] = static GameControllerManager.shared;
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedBanner] = 0;
  v13 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_apertureController;
  type metadata accessor for ApertureController();
  v14 = v12;
  *&v1[v13] = static ApertureController.shared.getter();
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedSystemApertureElement] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_modernSystemApertureElement] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_updateWorkItem] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_presentedBannerDismissalTimer] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_systemApertureElementDismissalTimer] = 0;
  v15 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_placeholderCallCenter;
  type metadata accessor for PlaceholderCallCenter();
  *&v1[v15] = PlaceholderCallCenter.__allocating_init(callCenter:)([v9 sharedInstance]);
  v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_shouldRequestHUDPresentationOnAVUpgradeOrDowngrade] = 0;
  v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_previouslyHadMultipleCalls] = 2;
  v16 = &v1[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_defaults];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  *v16 = static Defaults.shared;
  v16[1] = &protocol witness table for Defaults;
  v17 = OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_features;
  v18 = one-time initialization token for shared;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = static Features.shared;
  *&v1[v17] = static Features.shared;
  OUTLINED_FUNCTION_3_5();
  swift_unknownObjectWeakAssign();
  v62.receiver = v1;
  v62.super_class = type metadata accessor for BannerPresentationManager();
  v20 = v19;
  v21 = objc_msgSendSuper2(&v62, sel_init);
  v22 = *&v21[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter];
  v23 = v21;
  v24 = [v22 conversationManager];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v25 = v23;
  v26 = static OS_dispatch_queue.main.getter();
  [v24 addDelegate:v25 queue:v26];

  v27 = [objc_opt_self() defaultCenter];
  OUTLINED_FUNCTION_120_5(v27, v28, v29, v30, *MEMORY[0x1E69D8E08]);

  v31 = OUTLINED_FUNCTION_198_3();
  OUTLINED_FUNCTION_120_5(v31, v32, v33, v34, *MEMORY[0x1E69D8E58]);

  v35 = OUTLINED_FUNCTION_198_3();
  v36 = one-time initialization token for secondaryPillTriggeredPreferringHUDDismissal;
  v37 = v25;
  if (v36 != -1)
  {
    swift_once();
  }

  [v35 addObserver:v37 selector:sel_handleSecondaryPillWantsHUDDismissal_ name:static Strings.Notifications.secondaryPillTriggeredPreferringHUDDismissal object:0];

  v38 = OUTLINED_FUNCTION_198_3();
  OUTLINED_FUNCTION_120_5(v38, v39, v40, v41, *MEMORY[0x1E69D8D78]);

  v42 = OUTLINED_FUNCTION_198_3();
  [v42 addObserver:v37 selector:sel_handleCallSmartHoldingSessionChanged_ name:*MEMORY[0x1E69D8EF0] object:0];

  if (_TUIsInternalInstall())
  {
    OUTLINED_FUNCTION_20();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v44 = static OS_dispatch_queue.main.getter();
    notifyRegisterDispatch(name:queue:handler:)(0xD000000000000027, 0x80000001BC4F7900, v44, partial apply for closure #1 in BannerPresentationManager.init(delegate:), v43);
  }

  v45 = *&v37[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_features];
  v46 = Features.hudActivityManagerEnabled.getter();

  if (v46)
  {
    v47 = *&v37[OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_activityManager];
    OUTLINED_FUNCTION_64_16();
    v49 = *(v48 + 184);
    v50 = v37;
    v51 = v47;
    v52 = OUTLINED_FUNCTION_6_4();
    v49(v52);

    OUTLINED_FUNCTION_149_3();
    v54 = *(v53 + 152);
    v56 = v55;
    v54(v37, &protocol witness table for BannerPresentationManager);

    OUTLINED_FUNCTION_149_3();
    v58 = *(v57 + 200);
    v60 = v59;
    v58(v37, &protocol witness table for BannerPresentationManager);
  }

  swift_unknownObjectRelease();
  return v37;
}

void closure #1 in BannerPresentationManager.init(delegate:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    BannerPresentationManager.presentSystemHUD()();
  }
}

Swift::Void __swiftcall BannerPresentationManager.presentSystemHUD()()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (static SensitiveContentController.shieldState)
  {
    OUTLINED_FUNCTION_293();
    if ((*(v2 + 472))())
    {
      OUTLINED_FUNCTION_82_11();
      OUTLINED_FUNCTION_3_52();
      v4 = (*(v3 + 704))();

      if (v4)
      {
        if ([v4 isContinuitySession])
        {
          if (one-time initialization token for banners != -1)
          {
            OUTLINED_FUNCTION_0_178();
          }

          v5 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v5, static Logger.banners);
          v6 = Logger.logObject.getter();
          v7 = static os_log_type_t.default.getter();
          if (OUTLINED_FUNCTION_25(v7))
          {
            v8 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_39_2(v8);
            OUTLINED_FUNCTION_145_5();
            _os_log_impl(v9, v10, v11, v12, v13, 2u);
            OUTLINED_FUNCTION_18();
          }

          return;
        }
      }
    }

    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v23, static Logger.banners);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v25))
    {
      v26 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v26);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      OUTLINED_FUNCTION_18();
    }

    if ((Features.hudActivityManagerEnabled.getter() & 1) == 0 || (OUTLINED_FUNCTION_64_16(), ((*(v32 + 328))() & 1) == 0))
    {
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      v37 = 7;
      v33 = OUTLINED_FUNCTION_31_34();
      BannerPresentationManager.presentBanner(as:type:reply:)(v33);
      outlined destroy of ConversationControlsType(v35);
    }

    OUTLINED_FUNCTION_11();
    v34._countAndFlagsBits = 0xD000000000000010;
    BannerPresentationManager.requestEphemeralSystemApertureAlert(reason:shouldOverridePersistentAssertion:)(v34, 0);
  }

  else
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_178();
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v14, static Logger.banners);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v16))
    {
      v17 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v17);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_18();
    }

    [v1 deepLinkToFullScreenCallUI];
  }
}

id BannerPresentationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BannerPresentationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerPresentationManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *BannerPresentationManager.callForRequestedControlsType(_:)(uint64_t a1)
{
  outlined init with copy of ConversationControlsType(a1, v52);
  v3 = v52[40];
  v4 = outlined destroy of ConversationControlsType(v52);
  v5 = MEMORY[0x1E69E7D40];
  if (v3 == 2)
  {
    v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v4);
    if (v6)
    {
      v7 = v6;
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.banners);
      outlined init with copy of ConversationControlsType(a1, v52);
      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v51 = v13;
        *v12 = 136315394;
        outlined init with copy of ConversationControlsType(v52, v50);
        v14 = specialized >> prefix<A>(_:)(v50);
        v16 = v15;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s15ConversationKit0A12ControlsTypeOSgMd);
        outlined destroy of ConversationControlsType(v52);
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v51);

        *(v12 + 4) = v17;
        *(v12 + 12) = 2080;
        v18 = [v9 callUUID];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v51);

        *(v12 + 14) = v22;
        _os_log_impl(&dword_1BBC58000, v10, v11, "Requested to present %s, using handed-off call %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v13, -1, -1);
        MEMORY[0x1BFB23DF0](v12, -1, -1);
      }

      else
      {

        outlined destroy of ConversationControlsType(v52);
      }

      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
      return v7;
    }
  }

  v23 = (*((*v5 & *v1) + 0x188))();
  if (v23)
  {
    v7 = v23;
    v24 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  }

  else
  {
    v25 = PlaceholderCallCenter.activeCall.getter();
    if (!v25)
    {
LABEL_13:
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.banners);
      outlined init with copy of ConversationControlsType(a1, v52);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v51 = v32;
        *v31 = 136315138;
        outlined init with copy of ConversationControlsType(v52, v50);
        v33 = specialized >> prefix<A>(_:)(v50);
        v35 = v34;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s15ConversationKit0A12ControlsTypeOSgMd);
        outlined destroy of ConversationControlsType(v52);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v51);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_1BBC58000, v29, v30, "Requested to present %s, but there's no matching call", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x1BFB23DF0](v32, -1, -1);
        MEMORY[0x1BFB23DF0](v31, -1, -1);
      }

      else
      {

        outlined destroy of ConversationControlsType(v52);
      }

      return 0;
    }

    v7 = v25;
    v24 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type PlaceholderCall and conformance PlaceholderCall, type metadata accessor for PlaceholderCall);
  }

  v26 = v24;
  ObjectType = swift_getObjectType();
  if ((*(v26 + 208))(ObjectType, v26) == 6)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.banners);
  outlined init with copy of ConversationControlsType(a1, v52);
  swift_unknownObjectRetain();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51 = v41;
    *v40 = 136315394;
    outlined init with copy of ConversationControlsType(v52, v50);
    v42 = specialized >> prefix<A>(_:)(v50);
    v44 = v43;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s15ConversationKit0A12ControlsTypeOSgMd);
    outlined destroy of ConversationControlsType(v52);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v51);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v46 = (*(v26 + 56))(ObjectType, v26);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v51);

    *(v40 + 14) = v48;
    _os_log_impl(&dword_1BBC58000, v38, v39, "Requested to present %s, using active or placeholder call %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v41, -1, -1);
    MEMORY[0x1BFB23DF0](v40, -1, -1);
  }

  else
  {

    outlined destroy of ConversationControlsType(v52);
  }

  return v7;
}

void closure #1 in BannerPresentationManager.presentBanner(as:type:activityTypeForNewBanner:activityUUID:fromActivityManager:reply:)(char a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v220 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16PushToTalkNoticeVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v208 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.banners);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1BBC58000, v21, v22, "BannerPresentationManager deallocated before banner presentation performed.", v23, 2u);
      MEMORY[0x1BFB23DF0](v23, -1, -1);
    }

    if (a3)
    {
      lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
      v24 = swift_allocError();
      *v25 = 4;
      a3(0, v24);
LABEL_100:
      v125 = v24;
LABEL_101:

      return;
    }

    return;
  }

  v18 = Strong;
  LODWORD(v216) = a5 == 0;
  v217 = a5;
  if (a5)
  {
    v19 = 0;
    goto LABEL_28;
  }

  if ((a1 & 1) == 0)
  {
    outlined init with copy of ConversationControlsType(a6, v224);
    if (v224[40] == 7 && ((*v224 & 0xFFFFFFFFFFFFFFFELL) == 0xC || *v224 == 19))
    {
      v27 = vorrq_s8(*&v224[8], *&v224[24]);
      if (!*&vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)))
      {
        if (one-time initialization token for banners != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.banners);
        outlined init with copy of ConversationControlsType(a6, v224);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v221 = v32;
          *v31 = 136315138;
          outlined init with copy of ConversationControlsType(v224, &v222);
          v33 = specialized >> prefix<A>(_:)(&v222);
          v34 = a3;
          v36 = v35;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v222, &_s15ConversationKit0A12ControlsTypeOSgMd);
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v36, &v221);
          a3 = v34;

          *(v31 + 4) = v37;
          outlined destroy of ConversationControlsType(v224);
          _os_log_impl(&dword_1BBC58000, v29, v30, "InCallService is not visible, system controls shouldn't be presented for type %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          MEMORY[0x1BFB23DF0](v32, -1, -1);
          MEMORY[0x1BFB23DF0](v31, -1, -1);
        }

        else
        {

          outlined destroy of ConversationControlsType(v224);
        }

        lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
        v24 = swift_allocError();
        v110 = 1;
        goto LABEL_91;
      }
    }

    outlined destroy of ConversationControlsType(v224);
  }

  v38 = [*(v18 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter) gameOverlayController];
  v39 = [v38 overlayOpen];

  v19 = a1;
  if (v39)
  {
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.banners);
    outlined init with copy of ConversationControlsType(a6, v224);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v221 = v44;
      *v43 = 136315138;
      outlined init with copy of ConversationControlsType(v224, &v222);
      v45 = specialized >> prefix<A>(_:)(&v222);
      v46 = a3;
      v48 = v47;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v222, &_s15ConversationKit0A12ControlsTypeOSgMd);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v48, &v221);
      a3 = v46;

      *(v43 + 4) = v49;
      outlined destroy of ConversationControlsType(v224);
      _os_log_impl(&dword_1BBC58000, v41, v42, "Game Overlay is visible and system controls shouldn't be presented for type %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1BFB23DF0](v44, -1, -1);
      MEMORY[0x1BFB23DF0](v43, -1, -1);
    }

    else
    {

      outlined destroy of ConversationControlsType(v224);
    }

    lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
    v24 = swift_allocError();
    v110 = 11;
LABEL_91:
    *v109 = v110;
    if (a3)
    {
      v75 = 1;
      goto LABEL_93;
    }

    goto LABEL_99;
  }

LABEL_28:
  v214 = a8;
  ConversationControlsType.canShowOverICS.getter();
  v51 = v50;
  v219 = a4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_35;
  }

  if ((v50 & 1) == 0)
  {
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.banners);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.fault.getter();
    v65 = os_log_type_enabled(v63, v64);
    v66 = MEMORY[0x1E69E7D40];
    if (v65)
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1BBC58000, v63, v64, "InCallService is visible, system controls shouldn't be presented", v67, 2u);
      MEMORY[0x1BFB23DF0](v67, -1, -1);
    }

    v68 = (*((*v66 & *v18) + 0x1E8))();
    if (v68)
    {
      v69 = v68;
      (*((*v66 & *v68) + 0x1F0))(v224);
      ConversationControlsType.canShowOverICS.getter();
      v71 = v70;

      outlined destroy of ConversationControlsType(v224);
      if (v71)
      {
        lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
        v24 = swift_allocError();
        *v72 = 1;
        if (!a3)
        {
          goto LABEL_99;
        }

        goto LABEL_49;
      }
    }

    v73 = MEMORY[0x1BFB209B0](0xD000000000000040, 0x80000001BC5172D0);
    [v18 dismissPresentedBannerForReason:v73 animated:1];

    lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
    v24 = swift_allocError();
    *v74 = 1;
    if (a3)
    {
LABEL_49:
      v75 = v24 != 0;
LABEL_93:
      a3(v75, v24);
    }

LABEL_99:

    goto LABEL_100;
  }

  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.banners);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = a3;
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1BBC58000, v53, v54, "InCallService is visible, but system controls want to be presented anyways", v56, 2u);
    v57 = v56;
    a3 = v55;
    MEMORY[0x1BFB23DF0](v57, -1, -1);
  }

LABEL_35:
  *v224 = 2;
  memset(&v224[8], 0, 32);
  v224[40] = 7;
  v58 = static ConversationControlsType.== infix(_:_:)(a6, v224);
  outlined destroy of ConversationControlsType(v224);
  v215 = a3;
  if ((v58 & 1) == 0)
  {
    ConversationControlsType.associatedNotice.getter(v224);
    if (*&v224[24])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
      v59 = type metadata accessor for PushToTalkNotice(0);
      v60 = swift_dynamicCast() ^ 1;
      v61 = v16;
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v224, &_s15ConversationKit6Notice_pSgMd);
      v59 = type metadata accessor for PushToTalkNotice(0);
      v61 = v16;
      v60 = 1;
    }

    __swift_storeEnumTagSinglePayload(v61, v60, 1, v59);
    type metadata accessor for PushToTalkNotice(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v59);
    v77 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit16PushToTalkNoticeVSgMd);
    if (a1)
    {
      if (EnumTagSinglePayload)
      {
        v78 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0x290))(v77);
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_54:
    v78 = 0;
    goto LABEL_56;
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_55:
  v78 = 1;
LABEL_56:
  ConversationControlsType.associatedNotice.getter(v224);
  v79 = *&v224[24];
  if (*&v224[24])
  {
    v80 = *&v224[32];
    __swift_project_boxed_opaque_existential_1(v224, *&v224[24]);
    (*(v80 + 64))(&v222, v79, v80);
    v81 = v222;
    __swift_destroy_boxed_opaque_existential_1(v224);
    LODWORD(v79) = specialized == infix<A>(_:_:)(v81, 1);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v224, &_s15ConversationKit6Notice_pSgMd);
  }

  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  v218 = __swift_project_value_buffer(v82, static Logger.banners);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  v85 = os_log_type_enabled(v83, v84);
  v86 = MEMORY[0x1E69E7D40];
  if (v85)
  {
    v87 = swift_slowAlloc();
    *v87 = 67109632;
    *(v87 + 4) = v78 & 1;
    *(v87 + 8) = 1024;
    *(v87 + 10) = v79 & 1;
    *(v87 + 14) = 1024;
    *(v87 + 16) = v51 & 1;
    _os_log_impl(&dword_1BBC58000, v83, v84, "icsControlsVisible?:%{BOOL}d, dontIntegrateNotice?:%{BOOL}d, typeCanShowOverICS?:%{BOOL}d", v87, 0x14u);
    MEMORY[0x1BFB23DF0](v87, -1, -1);
  }

  v88 = v219;
  if (v78)
  {
    if (v51)
    {
      if (((ConversationControlsType.canShowOverICSAndInCallControls.getter() | v79) & 1) == 0)
      {
LABEL_66:
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          *v224 = v92;
          *v91 = 136315138;
          v93 = v92;
          v94 = 4478280;
          v95 = 0xE300000000000000;
          switch(v217)
          {
            case 0:
              break;
            case 1:
              v95 = 0xE700000000000000;
              v94 = 0x6E6F6973736573;
              break;
            case 2:
              v95 = 0xE600000000000000;
              v94 = 0x656369746F6ELL;
              break;
            case 3:
              v95 = 0xE600000000000000;
              v94 = 0x676F6C616964;
              break;
            default:
              *&v222 = v217;
              goto LABEL_180;
          }

          v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v224);

          *(v91 + 4) = v122;
          _os_log_impl(&dword_1BBC58000, v89, v90, "InCall controls are visible, %s shouldn't be presented", v91, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          MEMORY[0x1BFB23DF0](v93, -1, -1);
          MEMORY[0x1BFB23DF0](v91, -1, -1);
        }

        v123 = v215;
        lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
        v24 = swift_allocError();
        *v124 = 1;
        if (v123)
        {
          v123(0, v24);
        }

        goto LABEL_99;
      }
    }

    else if ((v79 & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  v96 = (*((*v86 & *v18) + 0x1D8))();
  if (!v96)
  {

    return;
  }

  v97 = v96;
  v213 = (*((*v86 & *v96) + 0x2B0))();
  v98 = [*(v18 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_callCenter) cnk_hasTooManyCallsForCallWaitingBanner];
  v99 = BannerPresentationManager.shouldPresentSystemApertureElementFromBanner(type:)(a6);
  if (SBUIIsSystemApertureEnabled())
  {
    if ((v99 & 1) == 0)
    {
      if ((a1 & 1) == 0 || (v100 = *(v18 + OBJC_IVAR____TtC15ConversationKit25BannerPresentationManager_features), v101 = Features.shouldShowFullScreenCallWaiting.getter(), v100, !((v101 || (v213 & 1) == 0) | v98 & 1)))
      {
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.default.getter();
        v104 = os_log_type_enabled(v102, v103);
        v105 = v215;
        if (v104)
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_1BBC58000, v102, v103, "[SystemAperture] System HUD presentation is managed by SpringBoard, updating system aperture element instead of presenting a new banner", v106, 2u);
          MEMORY[0x1BFB23DF0](v106, -1, -1);
        }

        BannerPresentationManager.updatePresentedSystemApertureElement(type:sizeClass:dismissPresentedBannerReason:)(a6, v217, 0, 0xD000000000000022, 0x80000001BC5172A0, v224);
        v107 = v224[0];
        if (v224[0] == 12)
        {
          v108 = 0;
LABEL_86:
          if (v105)
          {
            v105(v108 == 0, v108);
          }

LABEL_177:
          v125 = v108;
          goto LABEL_101;
        }

        lazy protocol witness table accessor for type BannerPresentationError and conformance BannerPresentationError();
        v108 = swift_allocError();
        *v111 = v107;
        *v224 = v108;
        v112 = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        if ((swift_dynamicCast() & 1) == 0 || v222 - 9 > 1)
        {
          goto LABEL_86;
        }

        outlined init with copy of ConversationControlsType(a6, v224);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v221 = v116;
          *v115 = 136315138;
          outlined init with copy of ConversationControlsType(v224, &v222);
          v117 = specialized >> prefix<A>(_:)(&v222);
          v118 = v97;
          v120 = v119;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v222, &_s15ConversationKit0A12ControlsTypeOSgMd);
          v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v120, &v221);
          v97 = v118;

          *(v115 + 4) = v121;
          v88 = v219;
          outlined destroy of ConversationControlsType(v224);
          _os_log_impl(&dword_1BBC58000, v113, v114, "Presenting %s in system aperture is unsupported, falling back to regular banner presentation.", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v116);
          MEMORY[0x1BFB23DF0](v116, -1, -1);
          MEMORY[0x1BFB23DF0](v115, -1, -1);
        }

        else
        {

          outlined destroy of ConversationControlsType(v224);
        }

        v86 = MEMORY[0x1E69E7D40];
      }
    }
  }

  v126 = (*v86 & *v18) + 488;
  v211 = *((*v86 & *v18) + 0x1E8);
  v210 = v126;
  v127 = v211();
  if (v127)
  {
    v128 = v127;
    v130 = *(v127 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier);
    v129 = *(v127 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier + 8);
    v131 = HIBYTE(v129) & 0xF;
    if ((v129 & 0x2000000000000000) == 0)
    {
      v131 = v130 & 0xFFFFFFFFFFFFLL;
    }

    if (v131)
    {
      v132 = *((*v86 & *v97) + 0x2B8);

      if (v130 == v132(v133) && v129 == v134)
      {
        v136 = 1;
      }

      else
      {
        v136 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v86 = MEMORY[0x1E69E7D40];
    }

    else
    {
      v136 = 1;
    }

    v137 = *((*v86 & *v128) + 0x1D8);
    if (v137() == 2 || (ConversationControlsType.associatedNotice.getter(v224), v138 = *&v224[24], outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v224, &_s15ConversationKit6Notice_pSgMd), !v138))
    {
      v145 = 1;
    }

    else
    {
      ConversationControlsType.associatedNotice.getter(v224);
      v139 = *&v224[24];
      if (*&v224[24])
      {
        v140 = v136;
        v141 = *&v224[32];
        __swift_project_boxed_opaque_existential_1(v224, *&v224[24]);
        v142 = *(v141 + 64);
        v143 = v141;
        v136 = v140;
        v142(&v222, v139, v143);
        v144 = v222;
        __swift_destroy_boxed_opaque_existential_1(v224);
        v145 = specialized == infix<A>(_:_:)(v144, 0);
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v224, &_s15ConversationKit6Notice_pSgMd);
        v145 = 0;
      }
    }

    v146 = v137();
    v209 = v136;
    if (v146 == 2 || v137() == 3)
    {
      if (v136 & v145)
      {
        v86 = MEMORY[0x1E69E7D40];
        v147 = v216;
LABEL_129:
        v212 = v147 ^ 1;
        goto LABEL_130;
      }

      v212 = 0;
      v86 = MEMORY[0x1E69E7D40];
      v147 = v216;
    }

    else
    {
      v147 = 0;
      v212 = 0;
      v86 = MEMORY[0x1E69E7D40];
      if (v136 & v145)
      {
        goto LABEL_129;
      }
    }

LABEL_130:
    outlined init with copy of ConversationControlsType(a6, v224);
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v221 = v216;
      *v150 = 67110146;
      *(v150 + 4) = v212;
      *(v150 + 8) = 1024;
      *(v150 + 10) = v209 & 1;
      *(v150 + 14) = 1024;
      *(v150 + 16) = v145 & 1;
      *(v150 + 20) = 1024;
      *(v150 + 22) = v147;
      *(v150 + 26) = 2080;
      outlined init with copy of ConversationControlsType(v224, &v222);
      v151 = specialized >> prefix<A>(_:)(&v222);
      v152 = v97;
      v154 = v153;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v222, &_s15ConversationKit0A12ControlsTypeOSgMd);
      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v154, &v221);
      v97 = v152;

      *(v150 + 28) = v155;
      outlined destroy of ConversationControlsType(v224);
      _os_log_impl(&dword_1BBC58000, v148, v149, "shouldUpdatePresentedBanner: %{BOOL}d, presentedBannerUsesActiveCall: %{BOOL}d, noticeShouldIntegrate: %{BOOL}d, presentedBannerWantsTransitionToHUD: %{BOOL}d, type: %s", v150, 0x24u);
      v156 = v216;
      __swift_destroy_boxed_opaque_existential_1(v216);
      MEMORY[0x1BFB23DF0](v156, -1, -1);
      MEMORY[0x1BFB23DF0](v150, -1, -1);
    }

    else
    {

      outlined destroy of ConversationControlsType(v224);
    }

    v88 = v219;
    goto LABEL_134;
  }

  v212 = 0;
LABEL_134:
  type metadata accessor for SpringBoardUtilities();
  v157 = static SpringBoardUtilities.checkSpringBoardState(for:)();
  LODWORD(v216) = static SpringBoardUtilities.checkSpringBoardState(for:)();
  v158 = Features.isIncomingCallBannerEnabled.getter();
  v208 = v157;
  if (v158)
  {
    v209 = SBUIIsSystemApertureEnabled();
  }

  else
  {
    v209 = 1;
  }

  *v224 = 24;
  memset(&v224[8], 0, 32);
  v224[40] = 7;
  v159 = static ConversationControlsType.== infix(_:_:)(a6, v224);
  outlined destroy of ConversationControlsType(v224);
  if (v159 & 1) != 0 || (*v224 = 23, memset(&v224[8], 0, 32), v224[40] = 7, v160 = static ConversationControlsType.== infix(_:_:)(a6, v224), outlined destroy of ConversationControlsType(v224), (v160))
  {
    HasGreenTea3 = BannerPresentationManager.onlyHasGreenTea3PCall.getter();
  }

  else
  {
    HasGreenTea3 = 0;
  }

  v162 = v18;
  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    *v165 = 67110144;
    v166 = v211();

    if (v166)
    {

      v167 = 1;
    }

    else
    {
      v167 = 0;
    }

    *(v165 + 4) = v167;

    *(v165 + 8) = 1024;
    *(v165 + 10) = v212;
    *(v165 + 14) = 1024;
    *(v165 + 16) = v208;
    *(v165 + 20) = 1024;
    *(v165 + 22) = v216 & 1;
    *(v165 + 26) = 1024;
    *(v165 + 28) = v213 & 1;
    v169 = v164;
    v168 = v162;
    _os_log_impl(&dword_1BBC58000, v163, v169, "bannerPresented?:%{BOOL}d, shouldUpdatePresentedBanner?:%{BOOL}d, isLocked: %{BOOL}d, isCoversheet: %{BOOL}d, hasMultipleCalls: %{BOOL}d", v165, 0x20u);
    MEMORY[0x1BFB23DF0](v165, -1, -1);
    v88 = v219;
  }

  else
  {

    v163 = v162;
    v168 = v162;
  }

  v170 = v211();
  if (v170)
  {

    if (v212)
    {
      v108 = BannerPresentationManager.updatePresentedBanner(type:)(a6);
      outlined init with copy of ConversationControlsType(a6, v224);
      v171 = v108;
      v172 = v108;
      v173 = v108;
      v174 = Logger.logObject.getter();
      v175 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = v168;
        v177 = v97;
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        *&v222 = v179;
        *v178 = 136315650;
        v180 = v217;
        v181 = v179;
        v182 = 4478280;
        v183 = 0xE300000000000000;
        switch(v217)
        {
          case 0:
            goto LABEL_167;
          case 1:
            v183 = 0xE700000000000000;
            v182 = 0x6E6F6973736573;
            goto LABEL_167;
          case 2:
            v183 = 0xE600000000000000;
            v182 = 0x656369746F6ELL;
            goto LABEL_167;
          case 3:
            v183 = 0xE600000000000000;
            v182 = 0x676F6C616964;
LABEL_167:
            v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v183, &v222);

            *(v178 + 4) = v192;
            *(v178 + 12) = 2080;
            v193 = ConversationControlsType.debugDescription.getter();
            v195 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v193, v194, &v222);

            *(v178 + 14) = v195;
            outlined destroy of ConversationControlsType(v224);
            *(v178 + 22) = 2080;
            v221 = v108;
            v196 = v108;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
            v197 = String.init<A>(describing:)();
            v199 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v197, v198, &v222);

            *(v178 + 24) = v199;

            _os_log_impl(&dword_1BBC58000, v174, v175, "updatePresentedBanner sizeClass: %s, type: %s, error: %s", v178, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1BFB23DF0](v181, -1, -1);
            MEMORY[0x1BFB23DF0](v178, -1, -1);

            v86 = MEMORY[0x1E69E7D40];
            v97 = v177;
            v168 = v176;
            goto LABEL_168;
          default:

            v221 = v180;
LABEL_180:
            _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
            __break(1u);
            return;
        }
      }

      outlined destroy of ConversationControlsType(v224);
LABEL_168:
      if (!v108)
      {
        goto LABEL_174;
      }

      (*((*v86 & *v97) + 0x2A0))();
      v201 = v200;
      ObjectType = swift_getObjectType();
      LOBYTE(v201) = (*(v201 + 96))(ObjectType, v201);
      v203 = swift_unknownObjectRelease();
      if (v201)
      {
        v204 = (*((*v86 & *v97) + 0x2C0))(v203);
        if (!v204)
        {
LABEL_174:
          if (v215)
          {
            v215(v108 == 0, v108);
          }

          goto LABEL_177;
        }
      }

      *v224 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *&v224[8] = v205;
      MEMORY[0x1BFB20B10](0xD000000000000019, 0x80000001BC517280);
      *&v222 = v108;
      v206 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v207 = String.init<A>(describing:)();
      MEMORY[0x1BFB20B10](v207);

      v185 = MEMORY[0x1BFB209B0](*v224, *&v224[8]);

      [v168 dismissPresentedBannerForReason:v185 animated:1];
LABEL_173:

      goto LABEL_174;
    }
  }

  v184 = v209 | ~v216 | HasGreenTea3 | v213;
  v185 = Logger.logObject.getter();
  v186 = static os_log_type_t.default.getter();
  v187 = os_log_type_enabled(v185, v186);
  if ((v184 & 1) == 0)
  {
    if (v187)
    {
      v189 = swift_slowAlloc();
      *v189 = 0;
      _os_log_impl(&dword_1BBC58000, v185, v186, "Skipping banner presentation because we are on coversheet and don't have multiple calls", v189, 2u);
      MEMORY[0x1BFB23DF0](v189, -1, -1);
    }

    v108 = 0;
    goto LABEL_173;
  }

  if (v187)
  {
    v188 = swift_slowAlloc();
    *v188 = 0;
    _os_log_impl(&dword_1BBC58000, v185, v186, "Presenting new banner", v188, 2u);
    MEMORY[0x1BFB23DF0](v188, -1, -1);
  }

  outlined init with copy of Notice?(v220, &v222, &_s15ConversationKit0A12ControlsTypeOSgMd);
  if (v223[24] == 255)
  {
    outlined init with copy of ConversationControlsType(a6, v224);
    if (v223[24] != 255)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v222, &_s15ConversationKit0A12ControlsTypeOSgMd);
    }
  }

  else
  {
    *v224 = v222;
    *&v224[16] = *v223;
    *&v224[25] = *&v223[9];
  }

  v190 = swift_allocObject();
  v191 = v215;
  *(v190 + 16) = v215;
  *(v190 + 24) = v88;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v191);
  BannerPresentationManager.presentNewBanner(as:type:activityUUID:fromActivityManager:completion:)();

  outlined destroy of ConversationControlsType(v224);
}