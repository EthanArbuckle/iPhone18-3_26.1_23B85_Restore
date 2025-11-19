uint64_t outlined init with take of (offset: Int, element: CaptionSectioner.Caption)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t outlined consume of Participant.CopresenceInfo?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t MoreMenuButton.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit23MoreMenuButtonViewModelCGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for MoreMenuButton.viewModel : MoreMenuButton@<X0>(uint64_t *a1@<X8>)
{
  result = MoreMenuButton.viewModel.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for MoreMenuButton.viewModel : MoreMenuButton()
{

  return MoreMenuButton.viewModel.setter();
}

void (*MoreMenuButton.viewModel.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v6;
  v6[6] = a2;
  v6[7] = a3;
  *v6 = a2;
  v6[1] = a3;

  v6[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit23MoreMenuButtonViewModelCGMd);
  State.wrappedValue.getter();
  return FindoView.viewModel.modify;
}

uint64_t MoreMenuButton.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit23MoreMenuButtonViewModelCGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t MoreMenuButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v36 = type metadata accessor for PopoverAttachmentAnchor();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI10IconButtonVyytGMd);
  OUTLINED_FUNCTION_1();
  v33 = v11;
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - v12;
  v42 = a1;
  v43 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit23MoreMenuButtonViewModelCGMd);
  State.wrappedValue.getter();
  MoreMenuButtonViewModel.config()();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  IconButton.init(config:action:)();
  v37 = a1;
  v38 = a2;
  State.projectedValue.getter();
  v16 = v42;
  v15 = v43;
  v17 = v44;
  swift_getKeyPath();
  v42 = v16;
  v43 = v15;
  v44 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit23MoreMenuButtonViewModelCGMd);
  Binding.subscript.getter();

  v31 = v40;
  v32 = v39;
  v30[3] = v41;

  v18 = objc_opt_self();
  v19 = [v18 currentDevice];
  v20 = [v19 userInterfaceIdiom];

  if (v20 == 1)
  {
    goto LABEL_2;
  }

  v22 = [v18 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (v23)
  {
    goto LABEL_8;
  }

  swift_beginAccess();
  if (static AmbientState.isPresented != 1)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
LABEL_2:
    v21 = 2;
  }

  else
  {
LABEL_8:
    v21 = 3;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;

  *v9 = static Anchor.Source<A>.bounds.getter();
  v25 = v36;
  (*(v6 + 104))(v9, *MEMORY[0x1E697C8C0], v36);
  MEMORY[0x1BFB1F3C0](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOy014CommunicationsB006FTMenuE0V_AA8SolariumVAeAE0F10BackgroundyQrqd__AA10ShapeStyleRd__lFQOyAO_AA5ColorVQo_AVQo__Qo_AA26_PreferenceWritingModifierVyAA09PreferredV9SchemeKeyVGGSgMd);
  OUTLINED_FUNCTION_0_40();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v26, v27);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.presentationCompactAdaptation(_:)>>.0, _PreferenceWritingModifier<PreferredColorSchemeKey>>? and conformance <A> A?();
  v28 = v34;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v6 + 8))(v9, v25);
  return (*(v33 + 8))(v13, v28);
}

uint64_t closure #1 in MoreMenuButton.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit23MoreMenuButtonViewModelCGMd);
  State.wrappedValue.getter();
  MoreMenuButtonViewModel.didTapMoreMenuButton()();
}

uint64_t key path getter for MoreMenuButtonViewModel.isMoreMenuPresented : MoreMenuButtonViewModel@<X0>(_BYTE *a1@<X8>)
{
  result = MoreMenuButtonViewModel.isMoreMenuPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t closure #2 in MoreMenuButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = type metadata accessor for PresentationAdaptation();
  v6 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FTMenuView();
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOy014CommunicationsB006FTMenuC0V_AA8SolariumVAcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAJ_AA5ColorVQo_AQQo_Md);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationH0VFQOyAeAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOy014CommunicationsB006FTMenuE0V_AA8SolariumVAeAE0F10BackgroundyQrqd__AA10ShapeStyleRd__lFQOyAO_AA5ColorVQo_AVQo__Qo_AA26_PreferenceWritingModifierVyAA09PreferredV9SchemeKeyVGGMd);
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v33 - v16;
  v40 = a1;
  v41 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit23MoreMenuButtonViewModelCGMd);
  State.wrappedValue.getter();
  v17 = MoreMenuButtonViewModel.ftMenuViewModel.getter();

  if (v17)
  {

    FTMenuView.init(viewModel:dismissHandler:sheetPresentation:isUIKit:hideBackButton:customNavigation:)();
    Solarium.init()();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOy014CommunicationsB006FTMenuC0V_AA5ColorVQo_Md);
    v35 = a3;
    v19 = v18;
    v20 = lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView();
    v33 = v12;
    v21 = v20;
    v40 = v9;
    v41 = MEMORY[0x1E69815C0];
    v42 = v20;
    v43 = MEMORY[0x1E6981568];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = v15;
    v23 = v6;
    v24 = OpaqueTypeConformance2;
    View.staticIf<A, B, C>(_:then:else:)();
    (*(v36 + 8))(v11, v9);
    static PresentationAdaptation.popover.getter();
    v40 = v9;
    v41 = MEMORY[0x1E6981CD8];
    v42 = v19;
    v43 = v19;
    v44 = v21;
    v45 = MEMORY[0x1E6981CD0];
    v46 = v24;
    v47 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v37;
    v26 = v33;
    View.presentationCompactAdaptation(_:)();

    (*(v23 + 8))(v8, v39);
    v15 = v34;
    (*(v38 + 8))(v14, v26);
    v27 = *(v15 + 36);
    v28 = *MEMORY[0x1E697DBA8];
    v29 = type metadata accessor for ColorScheme();
    (*(*(v29 - 8) + 104))(v25 + v27, v28, v29);
    v30 = v25 + v27;
    a3 = v35;
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
    sub_1BBCDE20C(v25, a3);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v31, 1, v15);
}

uint64_t closure #1 in closure #2 in MoreMenuButton.body.getter()
{
  static Color.clear.getter();
  type metadata accessor for FTMenuView();
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView();
  View.presentationBackground<A>(_:)();
}

uint64_t closure #2 in closure #2 in MoreMenuButton.body.getter()
{
  static Color.black.getter();
  Color.opacity(_:)();

  type metadata accessor for FTMenuView();
  lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView();
  View.presentationBackground<A>(_:)();
}

uint64_t MoreMenuButton.init(viewModel:)()
{
  type metadata accessor for MoreMenuButtonViewModel();
  State.init(wrappedValue:)();
  return v1;
}

void PeoplePickerView.makeUIViewController(context:)()
{
  type metadata accessor for ConversationHUDDetailsViewController();
  swift_getObjectType();

  specialized static ConversationHUDDetailsViewController.generateFTPeoplePickerViewController(conversation:delegate:)();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PeoplePickerView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PeoplePickerView and conformance PeoplePickerView();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PeoplePickerView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PeoplePickerView and conformance PeoplePickerView();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance PeoplePickerView()
{
  lazy protocol witness table accessor for type PeoplePickerView and conformance PeoplePickerView();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type FTMenuView and conformance FTMenuView()
{
  result = lazy protocol witness table cache variable for type FTMenuView and conformance FTMenuView;
  if (!lazy protocol witness table cache variable for type FTMenuView and conformance FTMenuView)
  {
    type metadata accessor for FTMenuView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FTMenuView and conformance FTMenuView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PeoplePickerView and conformance PeoplePickerView()
{
  result = lazy protocol witness table cache variable for type PeoplePickerView and conformance PeoplePickerView;
  if (!lazy protocol witness table cache variable for type PeoplePickerView and conformance PeoplePickerView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PeoplePickerView and conformance PeoplePickerView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PeoplePickerView and conformance PeoplePickerView;
  if (!lazy protocol witness table cache variable for type PeoplePickerView and conformance PeoplePickerView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PeoplePickerView and conformance PeoplePickerView);
  }

  return result;
}

uint64_t CallScreening.CallStateObserver.logger.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t CallScreening.CallStateObserver.stateMachine.getter()
{
  type metadata accessor for CallScreening.CallStateObserver();
}

uint64_t type metadata accessor for CallScreening.CallStateObserver()
{
  result = type metadata singleton initialization cache for CallScreening.CallStateObserver;
  if (!type metadata singleton initialization cache for CallScreening.CallStateObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallScreening.CallStateObserver.statusService.getter()
{
  type metadata accessor for CallScreening.CallStateObserver();
}

uint64_t CallScreening.CallStateObserver.updateStateMachine()()
{
  OUTLINED_FUNCTION_24_0();
  v1[4] = v0;
  v2 = type metadata accessor for AnsweringMachineCallStatus();
  OUTLINED_FUNCTION_9_0(v2);
  v1[5] = v3;
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x1EEE6DFA0](CallScreening.CallStateObserver.updateStateMachine(), v5, v4);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 128) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = CallScreening.CallStateObserver.updateStateMachine();
  }

  else
  {
    v7 = CallScreening.CallStateObserver.updateStateMachine();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  v0 = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CallScreening.CallStateObserver.updateStateMachine(), v0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  v0[2] = specialized CKStateMachine.description.getter();
  v0[3] = v1;
  v0[17] = v1;
  v2 = v0[8];
  v3 = v0[9];

  return MEMORY[0x1EEE6DFA0](CallScreening.CallStateObserver.updateStateMachine(), v2, v3);
}

void CallScreening.CallStateObserver.updateStateMachine()()
{
  OUTLINED_FUNCTION_9();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18_5(&dword_1BBC58000, v3, v4, "Injecting all current calls to Answering Machine");
    OUTLINED_FUNCTION_27();
  }

  v0[10] = type metadata accessor for CallScreening.CallStateObserver();
  CallStatusService.currentStatusForAllCalls()();
  v6 = v5;
  v0[11] = v5;
  v7 = *(v5 + 16);
  v0[12] = v7;
  v0[13] = 0;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (!*(v5 + 16))
  {
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_4_26();
  outlined init with copy of AnsweringMachineCallStatus(v6 + v8, v9, v10);
  if (static Task<>.isCancelled.getter())
  {
    outlined destroy of AnsweringMachineCallStatus(v0[6]);
LABEL_7:

    OUTLINED_FUNCTION_13();

    v11();
    return;
  }

  OUTLINED_FUNCTION_11_20();
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_2_45(v12);

  CKStateMachine<>.update(with:)();
}

{
  OUTLINED_FUNCTION_24_0();
  outlined destroy of AnsweringMachineCallStatus(v0[6]);
  OUTLINED_FUNCTION_27_10();
  if (v2)
  {
LABEL_5:

    OUTLINED_FUNCTION_13();

    v6();
    return;
  }

  if (v1 >= *(v0[11] + 16))
  {
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_4_26();
  outlined init with copy of AnsweringMachineCallStatus(v3, v4, v5);
  if (static Task<>.isCancelled.getter())
  {
    outlined destroy of AnsweringMachineCallStatus(v0[6]);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_11_20();
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_2_45();

  CKStateMachine<>.update(with:)();
}

void CallScreening.CallStateObserver.updateStateMachine()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_23_1();
  a18 = v20;
  v23 = v20[16];

  v24 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v20[2];
    v28 = v20[16];
    v29 = v20[17];
    v30 = v20[6];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    a9 = v33;
    *v31 = 136446466;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &a9);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2112;
    v35 = v28;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v36;
    *v32 = v36;
    OUTLINED_FUNCTION_30_7(&dword_1BBC58000, v37, v38, "Failed to update %{public}s and recieved error: %@");
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

    v39 = v30;
  }

  else
  {
    v40 = v20[16];
    v41 = v20[6];

    v39 = v41;
  }

  outlined destroy of AnsweringMachineCallStatus(v39);
  OUTLINED_FUNCTION_27_10();
  if (v43)
  {
LABEL_8:

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_17_3();

    v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
    return;
  }

  if (v42 >= *(v20[11] + 16))
  {
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_4_26();
  outlined init with copy of AnsweringMachineCallStatus(v44, v45, v46);
  if (static Task<>.isCancelled.getter())
  {
    outlined destroy of AnsweringMachineCallStatus(v20[6]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_11_20();
  v55 = swift_task_alloc();
  v20[15] = v55;
  *v55 = v20;
  OUTLINED_FUNCTION_2_45();
  OUTLINED_FUNCTION_17_3();

  CKStateMachine<>.update(with:)();
}

void CallScreening.CallStateObserver.start(onCallStatusUpdate:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CallScreening.CallStateObserver();
  v6 = OUTLINED_FUNCTION_9_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  static TaskPriority.userInitiated.getter();
  v15 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  OUTLINED_FUNCTION_5_23();
  outlined init with copy of AnsweringMachineCallStatus(v2, v11, v16);
  type metadata accessor for MainActor();

  static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_3_39(v19, MEMORY[0x1E69E85E0]);
  outlined init with take of CallScreening.CallStateObserver(v11, v20 + v17, v21);
  v22 = (v19 + v18);
  *v22 = a1;
  v22[1] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v6[9] = type metadata accessor for AnsweringMachineCallStatus();
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26AnsweringMachineCallStatusVSgMd);
  v6[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOGGMd);
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOG_GMd);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = type metadata accessor for CallScreening.CallStateObserver();
  v6[18] = v9;
  v10 = *(v9 - 8);
  v6[19] = v10;
  v6[20] = *(v10 + 64);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MainActor();
  v6[24] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[25] = v12;
  v6[26] = v11;

  return MEMORY[0x1EEE6DFA0](closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v12, v11);
}

uint64_t closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_23_1();
  a18 = v20;
  v23 = v20[34];

  v24 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v20[36];
    v28 = v20[2];
    v29 = v20[34];
    v30 = v20[10];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    a9 = v33;
    *v31 = 136446466;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &a9);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2112;
    v35 = v29;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v36;
    *v32 = v36;
    OUTLINED_FUNCTION_30_7(&dword_1BBC58000, v37, v38, "Failed to update %{public}s and recieved error: %@");
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v32, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

    v39 = v30;
  }

  else
  {
    v40 = v20[34];
    v41 = v20[10];

    v39 = v41;
  }

  outlined destroy of AnsweringMachineCallStatus(v39);
  v20[29] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<PassthroughSubject<AnsweringMachineCallStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCy15ConversationKit26AnsweringMachineCallStatusVs5NeverOG_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v20[30] = v42;
  *v42 = v43;
  OUTLINED_FUNCTION_1_46();
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6D8C8](v44);
}

uint64_t closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v5 = type metadata accessor for CallScreening.CallStateObserver();
  v4[25] = v5;
  v6 = *(v5 - 8);
  v4[26] = v6;
  v4[27] = *(v6 + 64);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAF13CallScreeningO0K0O_Gs5NeverOGGMd);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd);
  v4[34] = v8;
  v4[35] = *(v8 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = type metadata accessor for MainActor();
  v4[38] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[39] = v10;
  v4[40] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v10, v9);
}

uint64_t closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0[24] + *(v0[25] + 20));
  v0[41] = v1;
  v0[42] = *(*v1 + 120);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  v2 = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v2, 0);
}

{
  OUTLINED_FUNCTION_9();
  v0[43] = *(v0[41] + v0[42]);
  v1 = v0[39];
  v2 = v0[40];

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v1, v2);
}

{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v0[22] = v0[43];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAD13CallScreeningO0I0O_Gs5NeverOGMd);
  v5 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAD13CallScreeningO0I0O_Gs5NeverOGMd);
  MEMORY[0x1BFB1DE80](v4, v5);

  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[44] = 0;
  v0[45] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[46] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_10_16(v6);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6D8C8](v8);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 376) = v0;

  v5 = *(v2 + 360);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      dispatch thunk of Actor.unownedExecutor.getter();
      OUTLINED_FUNCTION_28_5();
    }

    else
    {
      OUTLINED_FUNCTION_26_5();
    }

    v8 = closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:);
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      dispatch thunk of Actor.unownedExecutor.getter();
      OUTLINED_FUNCTION_28_5();
    }

    else
    {
      OUTLINED_FUNCTION_26_5();
    }

    v8 = closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 184) = *(v0 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = OUTLINED_FUNCTION_31_9();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  v13 = *(v12 + 352);
  if (*(v12 + 136) == 255)
  {
    v27 = *(v12 + 280);
    v26 = *(v12 + 288);
    v28 = *(v12 + 272);

    (*(v27 + 8))(v26, v28);

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_17_3();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12 + 80, &_s15ConversationKit14CKStateMachineC11StateUpdateOyAA13CallScreeningO0E0O_GSgMd);
    if (v13)
    {
      MEMORY[0x1BFB21000](*(v12 + 352), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    v14 = *(v12 + 232);
    v15 = *(v12 + 240);
    v16 = *(v12 + 224);
    v17 = *(v12 + 208);
    v18 = *(v12 + 192);
    v19 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v19);
    OUTLINED_FUNCTION_5_23();
    outlined init with copy of AnsweringMachineCallStatus(v18, v16, v20);
    static MainActor.shared.getter();
    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = swift_allocObject();
    v23 = OUTLINED_FUNCTION_3_39(v22, MEMORY[0x1E69E85E0]);
    outlined init with take of CallScreening.CallStateObserver(v16, v23 + v21, v24);
    outlined init with copy of TaskPriority?(v15, v14);
    LODWORD(v14) = __swift_getEnumTagSinglePayload(v14, 1, v19);

    v25 = *(v12 + 232);
    if (v14 == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(*(v12 + 232), &_sScPSgMd);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(*(v19 - 8) + 8))(v25, v19);
    }

    v38 = *(v22 + 16);
    swift_unknownObjectRetain();

    if (v38)
    {
      swift_getObjectType();
      v39 = dispatch thunk of Actor.unownedExecutor.getter();
      v41 = v40;
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(*(v12 + 240), &_sScPSgMd);
    v42 = swift_allocObject();
    *(v42 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:);
    *(v42 + 24) = v22;
    if (v41 | v39)
    {
      *(v12 + 144) = 0;
      *(v12 + 152) = 0;
      *(v12 + 160) = v39;
      *(v12 + 168) = v41;
    }

    v43 = swift_task_create();

    *(v12 + 352) = v43;
    *(v12 + 360) = static MainActor.shared.getter();
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<CKStateMachine<CallScreening.State>.StateUpdate, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15ConversationKit14CKStateMachineC11StateUpdateOyAH13CallScreeningO0L0O_Gs5NeverOG_GMd);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_4();
    *(v12 + 368) = v44;
    *v44 = v45;
    OUTLINED_FUNCTION_10_16();
    OUTLINED_FUNCTION_17_3();

    return MEMORY[0x1EEE6D8C8](v46);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:);

  return CallScreening.CallStateObserver.updateStateMachine()();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v4, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t CallScreening.CallStateObserver.init(logger:stateMachine:statusService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for CallScreening.CallStateObserver();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t outlined init with copy of AnsweringMachineCallStatus(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for CallScreening.CallStateObserver();
  OUTLINED_FUNCTION_9_0(v2);
  v5 = *(v0 + 24);
  v6 = (v0 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v11 = OUTLINED_FUNCTION_13_5();

  return closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)(v11, v12, v5, v13, v7, v8);
}

void type metadata completion function for CallScreening.CallStateObserver()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CKStateMachine<CallScreening.State>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CallStatusService();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CKStateMachine<CallScreening.State>()
{
  if (!lazy cache variable for type metadata for CKStateMachine<CallScreening.State>)
  {
    lazy protocol witness table accessor for type CallScreening.State and conformance CallScreening.State();
    v0 = type metadata accessor for CKStateMachine();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CKStateMachine<CallScreening.State>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for CallScreening.CallStateObserver();
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v5 = OUTLINED_FUNCTION_13_5();

  return closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)(v5, v6, v2, v7);
}

uint64_t objectdestroy_5Tm()
{
  type metadata accessor for CallScreening.CallStateObserver();
  OUTLINED_FUNCTION_25_2();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for CallScreening.CallStateObserver();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_13_5();

  return closure #1 in closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:)();
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1, void *a2)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v37 = type metadata accessor for Participant(0);
  v32 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v30 - v9;
  v35 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
    result = Set.Iterator.init(_cocoa:)();
    a1 = v41;
    v11 = v42;
    v12 = v43;
    v13 = v44;
    v14 = v45;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v13 = 0;
  }

  v38 = v6;
  v34 = v12;
  v36 = MEMORY[0x1E69E7CC0];
  while (a1 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v40 = v21, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember), swift_dynamicCast(), (v20 = v46) == 0))
    {
LABEL_24:
      outlined consume of Set<TUHandle>.Iterator._Variant();

      return v36;
    }

LABEL_17:
    v22 = [v20 handle];
    v23 = v38;
    ConversationController.participant(with:)();

    if (__swift_getEnumTagSinglePayload(v23, 1, v37) == 1)
    {
      result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit11ParticipantVSgMd);
    }

    else
    {
      v24 = v31;
      outlined init with take of Participant(v23, v31, type metadata accessor for Participant);
      outlined init with take of Participant(v24, v33, type metadata accessor for Participant);
      v25 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v25 = v28;
      }

      v26 = *(v25 + 16);
      if (v26 >= *(v25 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v25 = v29;
      }

      *(v25 + 16) = v26 + 1;
      v27 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v36 = v25;
      result = outlined init with take of Participant(v33, v25 + v27 + *(v32 + 72) * v26, type metadata accessor for Participant);
    }
  }

  v18 = v13;
  v19 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v13 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v19 = *(v11 + 8 * v13);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  return specialized Collection.first.getter(a1, specialized Set.startIndex.getter, specialized Set.endIndex.getter, specialized Set.subscript.getter);
}

{
  return specialized Collection.first.getter(a1, specialized Set.startIndex.getter, specialized Set.endIndex.getter, specialized Set.subscript.getter);
}

{
  return specialized Collection.first.getter(a1, specialized Set.startIndex.getter, specialized Set.endIndex.getter, specialized Set.subscript.getter);
}

{
  v2 = specialized Set.startIndex.getter();
  v4 = v3;
  v6 = v5;
  result = specialized Set.endIndex.getter(a1);
  if (v6 & 1) != 0 || (v9)
  {
    goto LABEL_8;
  }

  if (v4 != v8)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v2 == result)
  {
    return 0;
  }

  else
  {
    return specialized Set.subscript.getter(v2, v4, 0, a1);
  }
}

{
  result = specialized Dictionary.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_3_40();
  if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_24();
  return specialized Dictionary.subscript.getter(v6, v7, v8, v9, a1);
}

{
  return specialized Collection.first.getter(a1, specialized Set.startIndex.getter, specialized Set.endIndex.getter, specialized Set.subscript.getter);
}

{
  return specialized Collection.first.getter(a1, specialized Set.startIndex.getter, specialized Set.endIndex.getter, specialized Set.subscript.getter);
}

{
  v2 = specialized Dictionary.Values.startIndex.getter(a1);
  v4 = v3;
  v6 = v5;
  v7 = specialized Dictionary.Values.endIndex.getter(a1);
  v9 = v8;
  v11 = v10;
  v12 = _sSh5IndexV2eeoiySbAByx_G_ADtFZSo22TUScreenSharingRequestC_Tt1g5Tm(v2, v4, v6 & 1, v7, v8, v10 & 1, MEMORY[0x1E69E6DD0]);
  outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v7, v9, v11 & 1);
  v13 = OUTLINED_FUNCTION_1_47();
  if (v12)
  {
    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v13, v14, v15);
    return 0;
  }

  else
  {
    specialized Dictionary.Values.subscript.getter(v13, v14, v15, a1);
    v16 = v17;
    v18 = OUTLINED_FUNCTION_1_47();
    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v18, v19, v20);
  }

  return v16;
}

{
  return specialized Collection.first.getter(a1, specialized Set.startIndex.getter, specialized Set.endIndex.getter, specialized Set.subscript.getter);
}

{
  return specialized Collection.first.getter(a1, specialized Set.startIndex.getter, specialized Set.endIndex.getter, specialized Set.subscript.getter);
}

{
  return specialized Collection.first.getter(a1, specialized Set.startIndex.getter, specialized Set.endIndex.getter, specialized Set.subscript.getter);
}

uint64_t specialized Collection.first.getter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v7 = a2();
  v9 = v8;
  v11 = v10;
  v12 = a3(a1);
  v14 = v13;
  v16 = v15;
  v17 = _sSh5IndexV2eeoiySbAByx_G_ADtFZSo22TUScreenSharingRequestC_Tt1g5Tm(v7, v9, v11 & 1, v12, v13, v15 & 1, MEMORY[0x1E69E69A0]);
  outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v12, v14, v16 & 1);
  v18 = OUTLINED_FUNCTION_1_47();
  if (v17)
  {
    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v18, v19, v20);
    return 0;
  }

  else
  {
    v21 = a4(v18);
    v22 = OUTLINED_FUNCTION_1_47();
    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v22, v23, v24);
  }

  return v21;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
  }

  v7 = OUTLINED_FUNCTION_4_27();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15ConversationKit14AutoplayActionO_AB0D9CandidateVt5valuetMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  result = specialized Dictionary.startIndex.getter(a1);
  if (v10)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_3_40();
  if (v11)
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 + 48);
    OUTLINED_FUNCTION_5_24();
    *a2 = specialized Dictionary.subscript.getter(v13, v14, v15, v16, a1);
    outlined init with take of (AutoplayAction, AutoplayCandidate)(&v7[v12], a2 + *(v4 + 48));
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LayoutSubviews();
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v12[4] == v12[0])
  {
    type metadata accessor for LayoutSubview();
    v2 = OUTLINED_FUNCTION_2_10();
  }

  else
  {
    v6 = dispatch thunk of Collection.subscript.read();
    v8 = v7;
    v9 = type metadata accessor for LayoutSubview();
    OUTLINED_FUNCTION_7_0();
    (*(v10 + 16))(a1, v8, v9);
    v6(v12, 0);
    v2 = a1;
    v3 = 0;
    v4 = 1;
    v5 = v9;
  }

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void *specialized Collection.first.getter(uint64_t a1)
{
  result = specialized Dictionary.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_3_40();
  if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_24();
  return specialized Dictionary.subscript.getter(v6, v7, v8, v9, a1);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t, void, uint64_t)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = a2();
  v13 = v12;
  v15 = v14;
  result = a3(a1);
  if (v15 & 1) != 0 || (v18)
  {
    goto LABEL_11;
  }

  if (v13 != v17)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (v11 == result)
  {
    v19 = 1;
  }

  else
  {
    a4(v11, v13, 0, a1);
    v19 = 0;
  }

  v20 = a5(0);

  return __swift_storeEnumTagSinglePayload(a6, v19, 1, v20);
}

id GondolaControlsRecipeGenerator.isPresentingFullScreenCallUI.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = (*((*MEMORY[0x1E69E7D40] & *static HUDActivityManager.shared) + 0xB0))();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 isPresentingFullScreenCallUI];

  return v2;
}

void GondolaControlsRecipeGenerator.pendingAuthorizationRequestRecipe(controlsManager:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v7 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0))(v9);
  if (v12)
  {
    v26[0] = v12;
    v13 = [v12 pendingMembers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
    v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = specialized Sequence.compactMap<A>(_:)(v14, a1);

    v16 = *(v15 + 16);
    if (v16 < 2)
    {
      specialized Collection.first.getter(v15, type metadata accessor for Participant, type metadata accessor for Participant, v6);

      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd);
        type metadata accessor for ConversationControlsRecipe();
        v22 = OUTLINED_FUNCTION_2_10();
        __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      }

      else
      {
        outlined init with take of Participant(v6, v11, type metadata accessor for Participant);
        GondolaControlsRecipeGenerator.singleAuthoriziationRequestRecipe(for:participant:)(v26[0], v11, a2);

        outlined destroy of Participant(v11, type metadata accessor for Participant);
      }
    }

    else
    {

      GondolaControlsRecipeGenerator.multipleAuthorizationRequestRecipe(withNumber:)(v16, a2);
      v17 = v26[0];
    }
  }

  else
  {
    type metadata accessor for ConversationControlsRecipe();
    v18 = OUTLINED_FUNCTION_2_10();

    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }
}

unint64_t lazy protocol witness table accessor for type TUConversationMember and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversationMember);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject);
  }

  return result;
}

uint64_t GondolaControlsRecipeGenerator.multipleAuthorizationRequestRecipe(withNumber:)@<X0>(objc_class *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v81 = &v76 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v76 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v76 - v8;
  v9 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v85._object = 0xE000000000000000;
  v15._object = 0x80000001BC4F5970;
  v15._countAndFlagsBits = 0xD00000000000002FLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v85._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v16, v85);
  v18.super.isa = NSAttributedString.__allocating_init(string:)(v17).super.isa;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (GondolaControlsRecipeGenerator.isPresentingFullScreenCallUI.getter())
  {
    v19 = [objc_opt_self() conversationKit];
    v86._object = 0xE000000000000000;
    v20.value._countAndFlagsBits = 0x61737265766E6F43;
    v20.value._object = 0xEF74694B6E6F6974;
    v21._countAndFlagsBits = 0xD000000000000031;
    v21._object = 0x80000001BC4F59A0;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v86._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v86);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BC4BA940;
    *(v23 + 56) = MEMORY[0x1E69E6530];
    *(v23 + 64) = MEMORY[0x1E69E65A8];
    *(v23 + 32) = v80;
    v24 = String.init(format:_:)();
    v26 = v25;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    isa = NSAttributedString.__allocating_init(string:)(v27).super.isa;

    v18.super.isa = isa;
  }

  v84[0] = 1;
  v84[40] = 0;
  v29 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v29);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v30.super.isa = static LocalizationSource.conversationControls;
  v31 = unk_1EBCDAF00;
  v32 = qword_1EBCDAF08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v33 = swift_allocObject();
  v76 = xmmword_1BC4BA940;
  *(v33 + 16) = xmmword_1BC4BA940;
  *(v33 + 56) = MEMORY[0x1E69E6530];
  *(v33 + 64) = MEMORY[0x1E69E65A8];
  *(v33 + 32) = v80;
  v87._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0x706F655020756C25;
  v34._object = 0xEA0000000000656CLL;
  v35.value._countAndFlagsBits = v31;
  v35.value._object = v32;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v30, v36, v87);
  countAndFlagsBits = v37._countAndFlagsBits;
  object = v37._object;
  v40 = *(v33 + 16);
  v78 = v14;
  if (v40)
  {
    countAndFlagsBits = String.init(format:locale:arguments:)();
    v42 = v41;

    object = v42;
  }

  else
  {
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s10Foundation6LocaleVSgMd);
  v43._countAndFlagsBits = countAndFlagsBits;
  v43._object = object;
  v80 = NSAttributedString.__allocating_init(string:)(v43).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1BC4BAC30;
  v45 = v18.super.isa;
  *(v44 + 32) = v18;
  v46 = type metadata accessor for AttributedString();
  v47 = v81;
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
  type metadata accessor for ConversationControlsAction();
  v48 = swift_allocObject();
  *(v48 + 16) = v76;
  swift_storeEnumTagMultiPayload();
  v49 = v9[9];
  __swift_storeEnumTagSinglePayload(&v11[v49], 1, 1, v46);
  v50 = &v11[v9[10]];
  v51 = &v11[v9[15]];
  *(v51 + 4) = 0;
  *v51 = 0u;
  *(v51 + 1) = 0u;
  v51[40] = -2;
  v11[v9[16]] = 0;
  v52 = &v11[v9[17]];
  v53 = &v11[v9[18]];
  *v53 = 1;
  *(v53 + 8) = 0u;
  *(v53 + 24) = 0u;
  *(v53 + 40) = 0u;
  *(v53 + 56) = 0u;
  v53[72] = 0;
  outlined init with copy of ConversationControlsType(v84, v11);
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 10) = v80;
  *(v11 + 11) = v44;
  *v50 = 0;
  *(v50 + 1) = 0;
  *(v50 + 2) = 0;
  v54 = v45;
  outlined assign with copy of AttributedString?(v47, &v11[v49]);
  v11[v9[11]] = 2;
  v11[v9[12]] = 0;
  *&v11[v9[13]] = 1;
  *&v11[v9[14]] = 1;
  *v52 = 0;
  *(v52 + 1) = 0;
  v52[16] = -1;
  v55 = *(v48 + 16);
  v56 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
  if (v55 <= 2)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(v84);
    *v51 = v48;
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    v51[40] = 0;
    v68 = v77;
    outlined init with copy of ConversationControlsAction(v11, v77, type metadata accessor for ConversationControlsRecipe);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v9);
    outlined destroy of Participant(v11, type metadata accessor for ConversationControlsRecipe);
    v57 = v78;
  }

  else
  {
    v57 = v78;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, &static Logger.conversationControls);

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v80 = v54;
      v62 = v61;
      v63 = swift_slowAlloc();
      v82 = v55;
      __dst[0] = v63;
      *v62 = 136315138;
      v64 = String.init<A>(reflecting:)();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, __dst);

      *(v62 + 4) = v66;
      v56 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
      _os_log_impl(&dword_1BBC58000, v59, v60, "Too many trailing actions (%s)", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1BFB23DF0](v63, -1, -1);
      v67 = v62;
      v54 = v80;
      MEMORY[0x1BFB23DF0](v67, -1, -1);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v81, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(v84);
    outlined destroy of Participant(v11, type metadata accessor for ConversationControlsRecipe);
    v68 = v77;
    __swift_storeEnumTagSinglePayload(v77, 1, 1, v9);
  }

  if (__swift_getEnumTagSinglePayload(v68, 1, v9) == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    return __swift_storeEnumTagSinglePayload(v79, 1, 1, v9);
  }

  else
  {
    outlined init with take of Participant(v68, v57, type metadata accessor for ConversationControlsRecipe);
    if (SBUIIsSystemApertureEnabled())
    {
      if (v56[25] != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, &static Logger.conversationControls);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_1BBC58000, v71, v72, "multipleAuthorizationRequestRecipe: [SystemAperture] showing content, but below system aperture", v73, 2u);
        MEMORY[0x1BFB23DF0](v73, -1, -1);
      }

      v74 = (v57 + v9[18]);
      memcpy(__dst, v74, 0x49uLL);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
      *v74 = 1;
      *(v74 + 1) = 0u;
      *(v74 + 3) = 0u;
      *(v74 + 5) = 0u;
      *(v74 + 7) = 0u;
      *(v74 + 72) = 0;
    }

    else
    {
    }

    v75 = v79;
    outlined init with copy of ConversationControlsAction(v57, v79, type metadata accessor for ConversationControlsRecipe);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v9);
    return outlined destroy of Participant(v57, type metadata accessor for ConversationControlsRecipe);
  }
}

uint64_t GondolaControlsRecipeGenerator.singleAuthoriziationRequestRecipe(for:participant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v92 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v92 - v9;
  v10 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v92 - v14;
  v15 = 0;
  if ((Participant.isDestinationTemporary.getter() & 1) == 0)
  {
    v16 = [objc_opt_self() tu:a1 contactStoreConfigurationForConversation:?];
    v17 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
    v18 = *(a2 + *(type metadata accessor for Participant(0) + 28));
    if (v18)
    {
      v19 = v18;
    }

    type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v15 = ConversationControlsBadgingAvatarViewController.__allocating_init(contactStore:handle:badgeImage:)(v17, v18, 0);

    v20 = v15;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v109._object = 0xE000000000000000;
  v21._object = 0x80000001BC4F5970;
  v21._countAndFlagsBits = 0xD00000000000002FLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v109._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v22, v109);
  v24.super.isa = NSAttributedString.__allocating_init(string:)(v23).super.isa;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v25 = Features.isICUIRedesignEnabled.getter();
  v103 = v10;
  v105 = v7;
  if (v25 & 1) != 0 && (GondolaControlsRecipeGenerator.isPresentingFullScreenCallUI.getter())
  {
    v26 = [objc_opt_self() conversationKit];
    v110._object = 0xE000000000000000;
    v27.value._countAndFlagsBits = 0x61737265766E6F43;
    v27.value._object = 0xEF74694B6E6F6974;
    v28._countAndFlagsBits = 0xD000000000000033;
    v28._object = 0x80000001BC4F59E0;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v110._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v27, v26, v29, v110)._countAndFlagsBits;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BC4BA940;
    Participant.contactDetails.getter();
    v31 = __dst[0];
    v32 = a2;
    isa = v24.super.isa;

    Participant.name(_:)();
    v34 = v33;
    v36 = v35;

    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v30 + 32) = v34;
    *(v30 + 40) = v36;
    a2 = v32;
    v37 = String.init(format:_:)();
    v39 = v38;

    v40._countAndFlagsBits = v37;
    v40._object = v39;
    v7 = v105;
    v24.super.isa = NSAttributedString.__allocating_init(string:)(v40).super.isa;
  }

  v108[0] = 0;
  v108[40] = 0;
  v99 = v15;
  if (v15)
  {
    countAndFlagsBits = [v15 view];
    v97 = [v15 hash];
  }

  else
  {
    countAndFlagsBits = 0;
    v97 = 0;
  }

  Participant.contactDetails.getter();
  v41 = __dst[0];
  v94 = a2;

  Participant.name(_:)();
  v43 = v42;
  v45 = v44;

  v46._countAndFlagsBits = v43;
  v46._object = v45;
  v96 = NSAttributedString.__allocating_init(string:)(v46).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v47 = swift_allocObject();
  v95 = v47;
  *(v47 + 16) = xmmword_1BC4BAC30;
  *(v47 + 32) = v24;
  v93 = type metadata accessor for AttributedString();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
  v48 = type metadata accessor for ConversationControlsAction();
  isa = v24.super.isa;
  v49 = *(*(v48 - 8) + 72);
  v50 = (*(*(v48 - 8) + 80) + 32) & ~*(*(v48 - 8) + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BC4BAA20;
  v52 = v51 + v50;
  v53 = *(type metadata accessor for Participant(0) + 20);
  v54 = type metadata accessor for UUID();
  v55 = *(*(v54 - 8) + 16);
  v56 = v94;
  v55(v52, v94 + v53, v54);
  swift_storeEnumTagMultiPayload();
  v55(v52 + v49, v56 + v53, v54);
  swift_storeEnumTagMultiPayload();
  v57 = v103;
  v58 = v103[9];
  __swift_storeEnumTagSinglePayload(v12 + v58, 1, 1, v93);
  v59 = (v12 + v57[10]);
  v60 = v12 + v57[15];
  *(v60 + 4) = 0;
  *v60 = 0u;
  *(v60 + 1) = 0u;
  v60[40] = -2;
  *(v12 + v57[16]) = 0;
  v61 = v12 + v57[17];
  v62 = v12 + v57[18];
  *v62 = 1;
  *(v62 + 8) = 0u;
  *(v62 + 24) = 0u;
  *(v62 + 40) = 0u;
  *(v62 + 56) = 0u;
  v62[72] = 0;
  outlined init with copy of ConversationControlsType(v108, v12);
  v63 = countAndFlagsBits;
  v12[6] = 0;
  v12[7] = v63;
  v64 = v97;
  v12[8] = 0;
  v12[9] = v64;
  v65 = v95;
  v12[10] = v96;
  v12[11] = v65;
  v59[1] = 0;
  v59[2] = 0;
  *v59 = 0;
  v66 = isa;
  v67 = v12 + v58;
  v68 = v105;
  outlined assign with copy of AttributedString?(v105, v67);
  *(v12 + v57[11]) = 2;
  v69 = v51;
  *(v12 + v57[12]) = 0;
  *(v12 + v57[13]) = 1;
  *(v12 + v57[14]) = 1;
  *v61 = 0;
  *(v61 + 1) = 0;
  v61[16] = -1;
  v70 = *(v51 + 16);
  v71 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
  if (v70 <= 2)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(v108);
    *v60 = v69;
    *(v60 + 8) = 0u;
    *(v60 + 24) = 0u;
    v60[40] = 0;
    v73 = v100;
    outlined init with copy of ConversationControlsAction(v12, v100, type metadata accessor for ConversationControlsRecipe);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v57);
    outlined destroy of Participant(v12, type metadata accessor for ConversationControlsRecipe);
    v72 = v101;
  }

  else
  {
    v72 = v101;
    v73 = v100;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, &static Logger.conversationControls);

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      isa = v69;
      v78 = v77;
      v79 = v66;
      v80 = swift_slowAlloc();
      v106 = v70;
      __dst[0] = v80;
      *v78 = 136315138;
      v81 = String.init<A>(reflecting:)();
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, __dst);

      *(v78 + 4) = v83;
      v57 = v103;
      _os_log_impl(&dword_1BBC58000, v75, v76, "Too many trailing actions (%s)", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v84 = v80;
      v66 = v79;
      v71 = &lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>;
      MEMORY[0x1BFB23DF0](v84, -1, -1);
      MEMORY[0x1BFB23DF0](v78, -1, -1);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(v108);
    outlined destroy of Participant(v12, type metadata accessor for ConversationControlsRecipe);
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v57);
  }

  if (__swift_getEnumTagSinglePayload(v73, 1, v57) == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    return __swift_storeEnumTagSinglePayload(v102, 1, 1, v57);
  }

  else
  {
    outlined init with take of Participant(v73, v72, type metadata accessor for ConversationControlsRecipe);
    if (SBUIIsSystemApertureEnabled())
    {
      if (v71[25] != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      __swift_project_value_buffer(v86, &static Logger.conversationControls);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_1BBC58000, v87, v88, "singleAuthoriziationRequest: [SystemAperture] showing content, but below system aperture", v89, 2u);
        MEMORY[0x1BFB23DF0](v89, -1, -1);
      }

      v90 = (v72 + v57[18]);
      memcpy(__dst, v90, 0x49uLL);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
      *v90 = 1;
      *(v90 + 1) = 0u;
      *(v90 + 3) = 0u;
      *(v90 + 5) = 0u;
      *(v90 + 7) = 0u;
      *(v90 + 72) = 0;
    }

    else
    {
    }

    v91 = v102;
    outlined init with copy of ConversationControlsAction(v72, v102, type metadata accessor for ConversationControlsRecipe);
    __swift_storeEnumTagSinglePayload(v91, 0, 1, v57);
    return outlined destroy of Participant(v72, type metadata accessor for ConversationControlsRecipe);
  }
}

uint64_t specialized Dictionary.Values.endIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaDictionary.endIndex.getter();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void specialized Dictionary.Values.subscript.getter(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaDictionary.value(at:)();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCSensitivityAnalysis);
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  __CocoaDictionary.Index.key.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCAParticipant);
  swift_dynamicCast();
  a2 = v11;
  a1 = specialized __RawDictionaryStorage.find<A>(_:)();
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v9 = *(*(a4 + 56) + 8 * a1);

  v10 = v9;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(a5 + 56) + 16 * a2;
    v7 = *v6;
    LOBYTE(v6) = *(v6 + 8);
    *result = v7;
    *(result + 8) = v6;

    v8 = v7;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 8 * a2);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
    outlined init with copy of (CGFloat, AutoplayCandidate)(v7 + *(*(v9 - 8) + 72) * a2, v6, &_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    *result = *(*(a5 + 56) + 8 * a2);
    v6 = v5;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews()
{
  result = lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews;
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }

  return result;
}

uint64_t _sSh5IndexV2eeoiySbAByx_G_ADtFZSo22TUScreenSharingRequestC_Tt1g5Tm(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    if (a6)
    {
      return a7(result, a2, a4, a5);
    }
  }

  else if ((a6 & 1) == 0)
  {
    if (a2 == a5)
    {
      return result == a4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with take of (AutoplayAction, AutoplayCandidate)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall MomentsBackedViewControllerProtocol.setupMomentsViewsIfNecessary()()
{
  v1 = (*(v0 + 24))();
  if (!v1)
  {
    return;
  }

  v7 = v1;
  v2 = [v1 superview];
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = OUTLINED_FUNCTION_45_1();
  if (v4(v3))
  {
    [v7 setUserInteractionEnabled_];
    [v7 setAutoresizingMask_];
    v5 = OUTLINED_FUNCTION_45_1();
    v2 = v6(v5);
    [v2 addSubview_];
LABEL_5:
  }
}

Swift::Void __swiftcall MomentsBackedViewControllerProtocol.setupFlashViewsIfNecessary()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2();
  v22 = [v3 superview];

  if (!v22)
  {
    v6 = OUTLINED_FUNCTION_45_1();
    if ((v7(v6) & 1) == 0)
    {
      goto LABEL_10;
    }

    v8 = OUTLINED_FUNCTION_45_1();
    v9 = (v2)(v8);
    [v9 setUserInteractionEnabled_];

    v10 = OUTLINED_FUNCTION_45_1();
    v11 = (v2)(v10);
    [v11 setAutoresizingMask_];

    v12 = *(v1 + 8);
    v13 = OUTLINED_FUNCTION_45_1();
    v14 = v12(v13);
    if (v14)
    {
      v15 = v14;
      v16 = OUTLINED_FUNCTION_45_1();
      v17 = (v2)(v16);
      [v15 addSubview_];
    }

    v18 = OUTLINED_FUNCTION_45_1();
    v19 = v12(v18);
    if (!v19)
    {
LABEL_10:
      OUTLINED_FUNCTION_1_3();
      return;
    }

    v20 = v19;
    v21 = OUTLINED_FUNCTION_45_1();
    [v20 bringSubviewToFront_];
  }

  OUTLINED_FUNCTION_1_3();
}

Swift::Void __swiftcall MomentsBackedViewControllerProtocol.bringMomentsAndFlashViewsToFrontIfNecessary()()
{
  v1 = v0;
  if (((*(v0 + 32))() & 1) != 0 && (v2 = OUTLINED_FUNCTION_45_1(), (v4 = v3(v2)) != 0))
  {
    v25 = v4;
    v5 = [v4 superview];
    if (v5)
    {

      v6 = *(v1 + 16);
      v7 = OUTLINED_FUNCTION_45_1();
      v8 = v6(v7);
      v9 = [v8 superview];

      if (v9)
      {

        v10 = OUTLINED_FUNCTION_45_1();
        v12 = v11(v10);
        if (v12)
        {
          v13 = v12;
          v14 = *(v1 + 8);
          v15 = OUTLINED_FUNCTION_45_1();
          v16 = v14(v15);
          [v16 insertSubview:v25 belowSubview:v13];
        }

        else
        {
          v14 = *(v1 + 8);
          v17 = OUTLINED_FUNCTION_45_1();
          v13 = v14(v17);
          [v13 bringSubviewToFront_];
        }

        v18 = OUTLINED_FUNCTION_45_1();
        v19 = v14(v18);
        if (v19)
        {
          v20 = v19;
          v21 = OUTLINED_FUNCTION_45_1();
          v22 = v6(v21);
          [v20 bringSubviewToFront_];
        }
      }
    }

    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
  }
}

Swift::Void __swiftcall MomentsBackedViewControllerProtocol.remoteDidTakePhoto()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 16))();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v5;
  v7 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);

  v7(partial apply for closure #1 in MomentsBackedViewControllerProtocol.remoteDidTakePhoto(), v6);
}

void closure #1 in MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = (*(a3 + 56))(a2, a3);
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = (*(a3 + 24))(a2, a3);
      if (v9)
      {
        v10 = v9;
        v11 = MEMORY[0x1E69E7D40];
        v12 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x68))();

        (*((*v11 & *v12) + 0x98))(2, v7, v8);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

Swift::Int RecentsHeaderButtonsView.Action.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RecentsHeaderButtonsView.Action()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RecentsHeaderButtonsView.Action.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t key path getter for RecentsHeaderButtonsView.delegate : RecentsHeaderButtonsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t key path setter for RecentsHeaderButtonsView.delegate : RecentsHeaderButtonsView(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v2, v3);
}

uint64_t RecentsHeaderButtonsView.delegate.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_delegate);
  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return swift_unknownObjectRelease();
}

uint64_t key path getter for RecentsHeaderButtonsView.createLinkButton : RecentsHeaderButtonsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

id RecentsHeaderButtonsView.createLinkButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_createLinkButton;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void RecentsHeaderButtonsView.createLinkButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_createLinkButton;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for RecentsHeaderButtonsView.bottomAnchorConstraint : RecentsHeaderButtonsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

void key path setter for RecentsHeaderButtonsView.bottomAnchorConstraint : RecentsHeaderButtonsView(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RecentsHeaderButtonsView.bottomAnchorConstraint.setter(v1);
}

void *RecentsHeaderButtonsView.bottomAnchorConstraint.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_bottomAnchorConstraint;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RecentsHeaderButtonsView.bottomAnchorConstraint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_bottomAnchorConstraint;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for RecentsHeaderButtonsView.buttonsView : RecentsHeaderButtonsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

id RecentsHeaderButtonsView.buttonsView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___buttonsView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___buttonsView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___buttonsView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setDistribution_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void RecentsHeaderButtonsView.buttonsView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___buttonsView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___buttonsView) = a1;
}

void (*RecentsHeaderButtonsView.buttonsView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = RecentsHeaderButtonsView.buttonsView.getter();
  return RecentsHeaderButtonsView.buttonsView.modify;
}

void RecentsHeaderButtonsView.buttonsView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___buttonsView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___buttonsView) = v2;
}

uint64_t closure #1 in RecentsHeaderButtonsView.newFaceTimeButtonConfiguration.getter(uint64_t a1)
{
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  static UIButton.Configuration.filled()();
  v10 = [objc_opt_self() conversationKit];
  v29._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x454341465F57454ELL;
  v11._object = 0xEC000000454D4954;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v29);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v14 = type metadata accessor for AttributedString();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  UIButton.Configuration.attributedTitle.setter();
  UIButton.Configuration.imagePlacement.setter();
  v15 = UIButton.Configuration.attributedTitle.modify();
  if (!__swift_getEnumTagSinglePayload(v16, 1, v14))
  {
    v27 = *(a1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_buttonTitleParagraphStyle);
    v17 = v27;
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute();
    v18 = v17;
    AttributedString.subscript.setter();
  }

  v15(v28, 0);
  v19 = UIButton.Configuration.attributedTitle.modify();
  if (!__swift_getEnumTagSinglePayload(v20, 1, v14))
  {
    v27 = [objc_opt_self() telephonyUISubheadlineShortSemiboldFont];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();
  }

  v19(v28, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  v21 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*MEMORY[0x1E69DDCF8], 0, 1);
  v22 = [objc_opt_self() configurationWithFont_];

  @nonobjc UIImage.__allocating_init(systemName:withConfiguration:)();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC4F0], v2);
  UIButton.Configuration.cornerStyle.setter();
  if (one-time initialization token for systemGreenWithUserInterfaceStyleLight != -1)
  {
    swift_once();
  }

  v23 = static UIColor.systemGreenWithUserInterfaceStyleLight;
  v24 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  return v24(v28, 0);
}

uint64_t RecentsHeaderButtonsView.newFaceTimeButtonConfiguration.getter@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_39_3();
  v12 = *a1;
  swift_beginAccess();
  outlined init with copy of UIButton.Configuration?(v3 + v12, v5);
  v13 = type metadata accessor for UIButton.Configuration();
  if (OUTLINED_FUNCTION_18_20(v13) != 1)
  {
    return (*(*(a1 - 1) + 32))(a3, v5, a1);
  }

  outlined destroy of UIButton.Configuration?(v5);
  a2(v3);
  (*(*(a1 - 1) + 16))(v4, a3, a1);
  OUTLINED_FUNCTION_7_34();
  swift_beginAccess();
  outlined assign with take of UIButton.Configuration?(v4, v3 + v12);
  return swift_endAccess();
}

uint64_t closure #1 in RecentsHeaderButtonsView.createLinkButtonConfiguration.getter(uint64_t a1)
{
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  static UIButton.Configuration.filled()();
  v10 = [objc_opt_self() conversationKit];
  v34._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x4C5F455441455243;
  v11._object = 0xEB000000004B4E49;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v34);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v14 = type metadata accessor for AttributedString();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  UIButton.Configuration.attributedTitle.setter();
  UIButton.Configuration.imagePlacement.setter();
  v15 = UIButton.Configuration.attributedTitle.modify();
  if (!__swift_getEnumTagSinglePayload(v16, 1, v14))
  {
    v32 = *(a1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_buttonTitleParagraphStyle);
    v17 = v32;
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute();
    v18 = v17;
    AttributedString.subscript.setter();
  }

  v15(v33, 0);
  v19 = UIButton.Configuration.attributedTitle.modify();
  if (!__swift_getEnumTagSinglePayload(v20, 1, v14))
  {
    v32 = [objc_opt_self() telephonyUISubheadlineShortSemiboldFont];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();
  }

  v19(v33, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
  v21 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*MEMORY[0x1E69DDCF8], 0, 1);
  v22 = [objc_opt_self() configurationWithFont_];

  @nonobjc UIImage.__allocating_init(systemName:withConfiguration:)();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC4F0], v2);
  UIButton.Configuration.cornerStyle.setter();
  v23 = objc_opt_self();
  v24 = [v23 whiteColor];
  v25 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v25(v33, 0);
  v26 = [objc_opt_self() effectWithStyle_];
  v27 = [objc_opt_self() effectForBlurEffect:v26 style:6];

  v28 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.visualEffect.setter();
  v28(v33, 0);
  v29 = [v23 whiteColor];
  return UIButton.Configuration.baseForegroundColor.setter();
}

id RecentsHeaderButtonsView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v2 = (v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_delegate);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_headerDelegate);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_featureFlags;
  *&v4[v0] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v5 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_newFaceTimeButton;
  v6 = objc_opt_self();
  *(v0 + v5) = OUTLINED_FUNCTION_17_18(v6);
  v7 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_createLinkButton;
  *(v0 + v7) = [v4 (v1 + 2250)];
  *(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_bottomAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___buttonsView) = 0;
  v8 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___newFaceTimeButtonConfiguration;
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_8_11(v0 + v8);
  OUTLINED_FUNCTION_8_11(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___createLinkButtonConfiguration);
  v9 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_buttonTitleParagraphStyle;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v10 setAlignment_];
  *(v0 + v9) = v10;
  v16 = type metadata accessor for RecentsHeaderButtonsView();
  v11 = OUTLINED_FUNCTION_18_1();
  v14 = objc_msgSendSuper2(v12, v13, v11, v0, v16);
  RecentsHeaderButtonsView.configure()();

  return v14;
}

id RecentsHeaderButtonsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RecentsHeaderButtonsView.init(coder:)()
{
  v2 = (v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_delegate);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_headerDelegate);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_featureFlags;
  *&v4[v0] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v5 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_newFaceTimeButton;
  v6 = objc_opt_self();
  *(v0 + v5) = OUTLINED_FUNCTION_17_18(v6);
  v7 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_createLinkButton;
  *(v0 + v7) = [v4 (v1 + 2250)];
  *(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_bottomAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___buttonsView) = 0;
  v8 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___newFaceTimeButtonConfiguration;
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_8_11(v0 + v8);
  OUTLINED_FUNCTION_8_11(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView____lazy_storage___createLinkButtonConfiguration);
  v9 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_buttonTitleParagraphStyle;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v10 setAlignment_];
  *(v0 + v9) = v10;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void RecentsHeaderButtonsView.configure()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v57 - v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = (v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_headerDelegate);
  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_headerDelegate);
  *v7 = partial apply for closure #1 in RecentsHeaderButtonsView.configure();
  v7[1] = v6;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);

  v9 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_newFaceTimeButton;
  v10 = *(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_newFaceTimeButton);
  RecentsHeaderButtonsView.newFaceTimeButtonConfiguration.getter(v5);
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_7_34();
  UIButton.configuration.setter();

  [*(v1 + v9) setPreferredBehavioralStyle_];
  v11 = [*(v1 + v9) layer];
  v12 = *MEMORY[0x1E69796E8];
  [v11 setCornerCurve_];

  v13 = [*(v1 + v9) setPointerInteractionEnabled_];
  v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE8);
  v15 = (v14)(v13);
  RecentsHeaderButtonsView.createLinkButtonConfiguration.getter(v5);
  OUTLINED_FUNCTION_7_34();
  UIButton.configuration.setter();

  v16 = v14();
  [v16 setPreferredBehavioralStyle_];

  v17 = v14();
  v18 = [v17 layer];

  [v18 setCornerCurve_];
  v19 = v14();
  [v19 setPointerInteractionEnabled_];

  v20 = [*(v1 + v9) layer];
  [v20 setMasksToBounds_];

  v21 = v14();
  v22 = [v21 layer];

  [v22 setMasksToBounds_];
  v23 = v14();
  v24 = &selRef_labelColor;
  if (([objc_opt_self() supportsConversations] & 1) == 0 && !objc_msgSend(*(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_featureFlags), sel_greenTeaLinksEnabled))
  {
    v24 = &selRef_secondaryLabelColor;
  }

  v25 = [objc_opt_self() *v24];
  [v23 setTintColor_];

  RecentsHeaderButtonsView.updateButtons()();
  v26 = (v14)([*(v1 + v9) addTarget:v1 action:sel_didTapNewCallButton forControlEvents:64]);
  [v26 addTarget:v1 action:sel_didTapNewLinkButton forControlEvents:64];

  v27 = MEMORY[0x1E69E7D40];
  v28 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  v29 = v28();
  v30 = v14();
  [v29 addArrangedSubview_];

  v31 = v28();
  [v31 addArrangedSubview_];

  v32 = v28();
  [v1 addSubview_];

  v33 = v28();
  v34 = [v33 bottomAnchor];

  v35 = [v1 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  v37 = OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_bottomAnchorConstraint;
  swift_beginAccess();
  v38 = *(v1 + v37);
  *(v1 + v37) = v36;

  v39 = (*((*v27 & *v1) + 0x100))();
  if (v39)
  {
    v40 = v39;
    v41 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BC4BA7F0;
    v43 = v28();
    v44 = [v43 topAnchor];

    v45 = [v1 topAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:0.0];

    *(v42 + 32) = v46;
    v47 = v28();
    v48 = [v47 leadingAnchor];

    v49 = [v1 leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:16.0];

    *(v42 + 40) = v50;
    v51 = v28();
    v52 = [v51 trailingAnchor];

    v53 = [v1 trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:-16.0];

    *(v42 + 48) = v54;
    *(v42 + 56) = v40;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v55 = v40;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v41 activateConstraints_];
  }
}

void closure #1 in RecentsHeaderButtonsView.configure()(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA0))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, a1 & 1, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id RecentsHeaderButtonsView.symbolConfiguration()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = RecentsHeaderButtonsView.symbolScale(for:)();
  v4 = [objc_opt_self() telephonyUISubheadlineShortFont];
  v5 = [objc_opt_self() configurationWithFont:v4 scale:v3];

  return v5;
}

uint64_t RecentsHeaderButtonsView.symbolScale(for:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  v3 = v3 && v0 == v2;
  if (v3)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v3 && v0 == v4)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v3 && v0 == v6)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v3 && v0 == v8)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v3 && v0 == v10)
  {
LABEL_63:

    return 3;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v3 && v0 == v12)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 2;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v3 && v0 == v14)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 2;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v3 && v0 == v16)
  {
LABEL_65:

    return 2;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 2;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v3 && v0 == v18)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 1;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v3 && v0 == v20)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 1;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_10();
  if (v3 && v0 == v22)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_9_1();

  if (v1)
  {
    return 1;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {
LABEL_67:

    return 1;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t RecentsHeaderButtonsView.symbolScaleValue.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = RecentsHeaderButtonsView.symbolScale(for:)();
  return v3;
}

void RecentsHeaderButtonsView.updateButtonsViewAxis()()
{
  v3 = [v0 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 == OUTLINED_FUNCTION_13_25() && v1 == v5)
  {
    goto LABEL_17;
  }

  v7 = OUTLINED_FUNCTION_3_13();

  if ((v7 & 1) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v7 != OUTLINED_FUNCTION_13_25() || v1 != v9)
    {
      v11 = OUTLINED_FUNCTION_3_13();

      if (v11)
      {
        goto LABEL_6;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v11 != OUTLINED_FUNCTION_13_25() || v1 != v12)
      {
        v14 = OUTLINED_FUNCTION_3_13();

        v15 = v14 & 1;
        goto LABEL_19;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_6:

LABEL_18:
  v15 = 1;
LABEL_19:
  v16 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))(v8);
  [v16 setAxis_];
}

uint64_t RecentsHeaderButtonsView.didTapNewCallButton()(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_headerDelegate);
  if (v2)
  {
    v3 = result;

    v2(v3);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }

  return result;
}

Swift::Void __swiftcall RecentsHeaderButtonsView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for RecentsHeaderButtonsView();
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    isa = [(objc_class *)isa preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!isa)
  {

    goto LABEL_11;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    RecentsHeaderButtonsView.updateButtons()();
  }
}

void RecentsHeaderButtonsView.updateButtons()()
{
  RecentsHeaderButtonsView.updateSymbolConfiguration()();
  RecentsHeaderButtonsView.updateFonts()();
  RecentsHeaderButtonsView.updateCornerRadius()();
  RecentsHeaderButtonsView.updateImageReservation()();
  RecentsHeaderButtonsView.updateButtonsViewAxis()();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  v2 = v1();
  if ([objc_opt_self() supportsConversations])
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_featureFlags) greenTeaLinksEnabled];
  }

  [v2 setUserInteractionEnabled_];

  v4 = (v1)([*(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_newFaceTimeButton) setNeedsUpdateConfiguration]);
  [v4 setNeedsUpdateConfiguration];
}

void RecentsHeaderButtonsView.updateSymbolConfiguration()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = RecentsHeaderButtonsView.symbolConfiguration()();
  v10 = *(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_newFaceTimeButton);
  UIButton.configuration.getter();
  v11 = type metadata accessor for UIButton.Configuration();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11))
  {
    outlined init with copy of UIButton.Configuration?(v8, v2);
    UIButton.configuration.setter();

    v12 = outlined destroy of UIButton.Configuration?(v8);
  }

  else
  {
    v13 = v9;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.configuration.setter();
  }

  v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))(v12);
  UIButton.configuration.getter();
  if (__swift_getEnumTagSinglePayload(v0, 1, v11))
  {
    outlined init with copy of UIButton.Configuration?(v0, v2);
    UIButton.configuration.setter();

    outlined destroy of UIButton.Configuration?(v0);
  }

  else
  {
    v15 = v9;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.configuration.setter();
  }
}

void RecentsHeaderButtonsView.updateFonts()()
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_39_3();
  v10 = [objc_opt_self() telephonyUISubheadlineShortEmphasizedFont];
  v11 = *(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_newFaceTimeButton);
  UIButton.configuration.getter();
  v12 = type metadata accessor for UIButton.Configuration();
  if (__swift_getEnumTagSinglePayload(v2, 1, v12))
  {
    goto LABEL_4;
  }

  v13 = UIButton.Configuration.attributedTitle.modify();
  v15 = v14;
  v16 = type metadata accessor for AttributedString();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    v17 = OUTLINED_FUNCTION_14_14();
    v13(v17);
LABEL_4:
    outlined init with copy of UIButton.Configuration?(v2, v8);
    UIButton.configuration.setter();

    v18 = outlined destroy of UIButton.Configuration?(v2);
    goto LABEL_5;
  }

  v30 = v10;
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  v25 = v10;
  AttributedString.subscript.setter();
  v26 = OUTLINED_FUNCTION_14_14();
  v13(v26);
  UIButton.configuration.setter();

LABEL_5:
  v19 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE8))(v18);
  UIButton.configuration.getter();
  if (!__swift_getEnumTagSinglePayload(v0, 1, v12))
  {
    v20 = UIButton.Configuration.attributedTitle.modify();
    v22 = v21;
    v23 = type metadata accessor for AttributedString();
    if (!__swift_getEnumTagSinglePayload(v22, 1, v23))
    {
      v30 = v10;
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
      v27 = v10;
      AttributedString.subscript.setter();
      v28 = OUTLINED_FUNCTION_14_14();
      v20(v28);
      UIButton.configuration.setter();

      return;
    }

    v24 = OUTLINED_FUNCTION_14_14();
    v20(v24);
  }

  outlined init with copy of UIButton.Configuration?(v0, v8);
  UIButton.configuration.setter();

  outlined destroy of UIButton.Configuration?(v0);
}

void RecentsHeaderButtonsView.updateCornerRadius()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_newFaceTimeButton) layer];
  [v1 setCornerRadius_];

  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))();
  v3 = [v2 layer];

  [v3 setCornerRadius_];
}

void RecentsHeaderButtonsView.updateImageReservation()()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_39_3();
  v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit24RecentsHeaderButtonsView_newFaceTimeButton);
  UIButton.configuration.getter();
  v10 = type metadata accessor for UIButton.Configuration();
  if (OUTLINED_FUNCTION_18_20(v10))
  {
    outlined init with copy of UIButton.Configuration?(v4, v2);
    UIButton.configuration.setter();

    v11 = outlined destroy of UIButton.Configuration?(v4);
  }

  else
  {
    UIButton.Configuration.imageReservation.setter();
    UIButton.configuration.setter();
  }

  v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))(v11);
  UIButton.configuration.getter();
  if (__swift_getEnumTagSinglePayload(v0, 1, v3))
  {
    outlined init with copy of UIButton.Configuration?(v0, v2);
    UIButton.configuration.setter();

    outlined destroy of UIButton.Configuration?(v0);
  }

  else
  {
    UIButton.Configuration.imageReservation.setter();
    UIButton.configuration.setter();
  }
}

Swift::Void __swiftcall RecentsNavigationBarTitleView.updateNavigationItemVisible(_:)(Swift::Bool a1)
{
  v2 = a1;
  [v1 trailingBarAlpha];
  if ((((v3 <= 0.0) ^ v2) & 1) == 0)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    v8[4] = partial apply for closure #1 in RecentsNavigationBarTitleView.updateNavigationItemVisible(_:);
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed () -> ();
    v8[3] = &block_descriptor_6;
    v6 = _Block_copy(v8);
    v7 = v1;

    [v4 animateWithDuration:4 delay:v6 options:0 animations:0.2 completion:0.0];
    _Block_release(v6);
  }
}

id RecentsHeaderButtonsView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id RecentsNavigationBarTitleView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RecentsNavigationBarTitleView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id RecentsHeaderButtonsView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id partial apply for closure #1 in RecentsNavigationBarTitleView.updateNavigationItemVisible(_:)()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setTrailingBarAlpha_];
}

unint64_t lazy protocol witness table accessor for type RecentsHeaderButtonsView.Action and conformance RecentsHeaderButtonsView.Action()
{
  result = lazy protocol witness table cache variable for type RecentsHeaderButtonsView.Action and conformance RecentsHeaderButtonsView.Action;
  if (!lazy protocol witness table cache variable for type RecentsHeaderButtonsView.Action and conformance RecentsHeaderButtonsView.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsHeaderButtonsView.Action and conformance RecentsHeaderButtonsView.Action);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecentsHeaderButtonsView.Action(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of UIButton.Configuration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UIButton.Configuration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute);
  }

  return result;
}

uint64_t outlined assign with take of UIButton.Configuration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.ParagraphStyleAttribute and conformance AttributeScopes.UIKitAttributes.ParagraphStyleAttribute);
  }

  return result;
}

void *ScreeningSoundAndHapticsManager.__allocating_init(with:ringerStateObserver:feedbackGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_allocObject();
  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v13 = OUTLINED_FUNCTION_4_28(v12);
  v14(v13);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v19 = OUTLINED_FUNCTION_3_41(v18);
  v20(v19);
  v21 = specialized ScreeningSoundAndHapticsManager.init(with:ringerStateObserver:feedbackGenerator:)(v3, v4, a3, v8, v10, v15, v9, v16);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v21;
}

void *ScreeningSoundAndHapticsManager.init(with:ringerStateObserver:feedbackGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v14 = OUTLINED_FUNCTION_4_28(v13);
  v15(v14);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v20 = OUTLINED_FUNCTION_3_41(v19);
  v21(v20);
  v22 = specialized ScreeningSoundAndHapticsManager.init(with:ringerStateObserver:feedbackGenerator:)(v4, v5, a3, v6, v11, v16, v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v22;
}

uint64_t ScreeningSoundAndHapticsManager.registerForUpdates()()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v1 selector:sel_announcementFinishedNotification_ name:*MEMORY[0x1E69D8EE0] object:0];

  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  v3 = OUTLINED_FUNCTION_2_14();
  v4(v3);
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  v5 = OUTLINED_FUNCTION_2_14();
  return v6(v5);
}

uint64_t ScreeningSoundAndHapticsManager.deinit()
{
  outlined init with copy of IDSLookupManager(v0 + 96, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v1 = OUTLINED_FUNCTION_2_14();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  outlined destroy of TapInteractionHandler?(v0 + 16, &_s15ConversationKit10ShakyMaker_pSgMd);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  return v0;
}

uint64_t ScreeningSoundAndHapticsManager.__deallocating_deinit()
{
  ScreeningSoundAndHapticsManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t ScreeningSoundAndHapticsManager.announcementFinishedNotification(_:)(void *a1)
{
  v2 = v1;
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v20 = v24;
  v21 = v25;
  if (*(&v25 + 1))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v4 = v23;
    v5 = v1[15];
    v6 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v5);
    v7 = (*(v6 + 8))(v5, v6);
    if ([v23 hasEverUnsuppressedRingtone] && (v7 & 1) != 0)
    {
      v8 = v2[10];
      v9 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v8);
      (*(v9 + 8))(8, v23, v8, v9);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.conversationKit);

      v12 = v23;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67240704;
        v16 = v2[15];
        v17 = v2[16];
        __swift_project_boxed_opaque_existential_1(v2 + 12, v16);
        *(v15 + 4) = (*(v17 + 8))(v16, v17) & 1;

        *(v15 + 8) = 1026;
        *(v15 + 10) = [v12 shouldSuppressRingtone];
        *(v15 + 14) = 1026;
        *(v15 + 16) = [v12 hasEverUnsuppressedRingtone];

        _os_log_impl(&dword_1BBC58000, v13, v14, "Not playing transcription started tone ringer switch: %{BOOL,public}d, suppress: %{BOOL,public}d hasEverUnsuppressed: %{BOOL,public}d", v15, 0x14u);
        MEMORY[0x1BFB23DF0](v15, -1, -1);
      }

      else
      {
      }
    }

    outlined init with copy of ShakyMaker?((v2 + 2), &v20);
    v18 = *(&v21 + 1);
    if (*(&v21 + 1))
    {
      v19 = v22;
      __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
      (*(v19 + 8))(v18, v19);

      return __swift_destroy_boxed_opaque_existential_1(&v20);
    }

    v10 = &_s15ConversationKit10ShakyMaker_pSgMd;
  }

  else
  {
    v10 = &_sypSgMd;
  }

  return outlined destroy of TapInteractionHandler?(&v20, v10);
}

void DeviceRingerStateObserver.ringerSwitchEnabled.didset()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationKit);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = String.init<A>(reflecting:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1BBC58000, oslog, v1, "Updated ringerSwitchEnabled to %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x1BFB23DF0](v3, -1, -1);
    MEMORY[0x1BFB23DF0](v2, -1, -1);
  }

  else
  {
  }
}

void DeviceRingerStateObserver.registerRingerSwitchStateNotifications()()
{
  v1 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v2 = static OS_dispatch_queue.main.getter();
  v3 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in DeviceRingerStateObserver.registerRingerSwitchStateNotifications();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  aBlock[3] = &block_descriptor_7;
  v4 = _Block_copy(aBlock);

  v5 = String.utf8CString.getter();
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v5 + 32), (v1 + 16), v2, v4);
  swift_endAccess();

  _Block_release(v4);

  if (v1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationKit);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136446210;
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, aBlock);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1BBC58000, v7, v8, "Failed to observe ringer switch state with status %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
    }
  }
}

uint64_t closure #1 in DeviceRingerStateObserver.registerRingerSwitchStateNotifications()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DeviceRingerStateObserver.updateRingerSwitchState()();
  }

  return result;
}

void DeviceRingerStateObserver.updateRingerSwitchState()()
{
  v1 = v0;
  v11[4] = *MEMORY[0x1E69E9840];
  state64 = 0;
  swift_beginAccess();
  if (notify_get_state(*(v0 + 16), &state64))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136446210;
      v7 = String.init<A>(reflecting:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1BBC58000, v3, v4, "Unable to get ringer switch state, result = %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    *(v1 + 20) = 0;
  }

  else
  {
    *(v0 + 20) = state64 != 0;
  }

  DeviceRingerStateObserver.ringerSwitchEnabled.didset();
}

void *specialized ScreeningSoundAndHapticsManager.init(with:ringerStateObserver:feedbackGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[3] = a5;
  v21[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v20[3] = a6;
  v20[4] = a8;
  v16 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a6 - 8) + 32))(v16, a2, a6);
  outlined init with copy of IDSLookupManager(v21, (a4 + 7));
  outlined init with copy of IDSLookupManager(v20, (a4 + 12));
  if (*(a3 + 24))
  {
    outlined init with copy of ShakyMaker?(a3, (a4 + 2));
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E69DCCF0]) init];
    v18 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UINotificationFeedbackGenerator);
    a4[2] = v17;
    a4[5] = v18;
    a4[6] = &protocol witness table for UINotificationFeedbackGenerator;
  }

  ScreeningSoundAndHapticsManager.registerForUpdates()();
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  outlined destroy of TapInteractionHandler?(a3, &_s15ConversationKit10ShakyMaker_pSgMd);
  return a4;
}

uint64_t outlined init with copy of ShakyMaker?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit10ShakyMaker_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall UILayoutGuide.addConstraintsToFill(_:insets:)(UIView *_, NSDirectionalEdgeInsets insets)
{
  v3 = v2;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  [(UIView *)_ addLayoutGuide:v2];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA7F0;
  v10 = [v3 leadingAnchor];
  v11 = [(UIView *)_ leadingAnchor];
  v12 = OUTLINED_FUNCTION_0_42();
  v14 = [v12 v13];

  *(v9 + 32) = v14;
  v15 = [v3 topAnchor];
  v16 = [(UIView *)_ topAnchor];
  v17 = OUTLINED_FUNCTION_0_42();
  v19 = [v17 v18];

  *(v9 + 40) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [(UIView *)_ trailingAnchor];
  v22 = OUTLINED_FUNCTION_0_42();
  v24 = [v22 v23];

  *(v9 + 48) = v24;
  v25 = [v3 bottomAnchor];
  v26 = [(UIView *)_ bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-bottom];

  *(v9 + 56) = v27;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints_];
}

uint64_t static ClarityUIMetrics.maximumButtonWidth.getter()
{
  if (one-time initialization token for isPad != -1)
  {
    swift_once();
  }

  if (static ClarityUIMetrics.isPad == 1)
  {
    static ClarityUIMetrics.stackWidthAsPercentageOfScreenPad.getter();
    v1 = v0;
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;

    *&result = v1 * v4;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t property wrapper backing initializer of ClarityUIButtonRowContainer.maximumButtonWidth()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd);
  State.init(wrappedValue:)();
  return v1;
}

uint64_t ClarityUIButtonRowContainer.maximumButtonWidth.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVSgGMd);
  State.wrappedValue.getter();
  return v1;
}

void one-time initialization function for isPad()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  static ClarityUIMetrics.isPad = v1 == 1;
}

uint64_t ClarityUIButtonRowContainer.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = property wrapper backing initializer of ClarityUIButtonRowContainer.maximumButtonWidth();
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = v5;
  type metadata accessor for ClarityUIButtonRowContainer();
  return a1();
}

uint64_t ClarityUIButtonRowContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  OUTLINED_FUNCTION_2_7();
  v5 = v4;
  v58 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_3_42();
  type metadata accessor for TupleView();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  v54 = type metadata accessor for HStack();
  OUTLINED_FUNCTION_2_7();
  v57 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v47 - v14;
  v56 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_7();
  v62 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v47 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGRectVAESQ12CoreGraphicsyHCg_GMd);
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_7();
  v60 = v18;
  v61 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v47 - v22;
  v23 = *(a1 + 24);
  v51 = v11;
  v65 = v11;
  v66 = v23;
  v50 = v23;
  v53 = v2;
  v67 = v2;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  v52 = *(v5 + 16);
  v24 = v9;
  v47 = a1;
  v52(v9, v2, a1);
  v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v11;
  *(v26 + 24) = v23;
  v49 = *(v5 + 32);
  v49(v26 + v25, v24, a1);
  OUTLINED_FUNCTION_1_13();
  v27 = v54;
  WitnessTable = swift_getWitnessTable();
  v29 = v48;
  View.onAppear(perform:)();

  (*(v57 + 8))(v29, v27);
  type metadata accessor for CGRect(0);
  v31 = v30;
  v32 = v47;
  v52(v24, v53, v47);
  v33 = swift_allocObject();
  v34 = v50;
  *(v33 + 16) = v51;
  *(v33 + 24) = v34;
  v49(v33 + v25, v24, v32);
  v70 = WitnessTable;
  v71 = MEMORY[0x1E69805D0];
  v35 = v56;
  v36 = swift_getWitnessTable();
  lazy protocol witness table accessor for type CGRect and conformance CGRect();
  v37 = v55;
  v38 = v31;
  v39 = v31;
  v40 = v64;
  View.onGeometryChange<A>(for:of:action:)(v38, closure #3 in ClarityUIButtonRowContainer.body.getter, 0, partial apply for closure #4 in ClarityUIButtonRowContainer.body.getter, v33, v35, v39, v36);

  (*(v62 + 8))(v40, v35);
  v41 = lazy protocol witness table accessor for type _GeometryActionModifier<CGRect> and conformance _GeometryActionModifier<A>();
  v68 = v36;
  v69 = v41;
  v42 = v60;
  v43 = swift_getWitnessTable();
  v44 = v59;
  static ViewBuilder.buildExpression<A>(_:)(v37, v42, v43);
  v45 = *(v61 + 8);
  v45(v37, v42);
  static ViewBuilder.buildExpression<A>(_:)(v44, v42, v43);
  return (v45)(v44, v42);
}

uint64_t closure #1 in ClarityUIButtonRowContainer.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15[0] = a3;
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  type metadata accessor for ClarityUIButtonRowContainer();
  ClarityUIButtonRowContainer.maximumButtonWidth.getter();
  default argument 6 of View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(a1, a2);
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v21[3] = a2;
  v21[4] = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  v19 = 0;
  v20 = 0;
  v21[0] = &v19;
  (*(v6 + 16))(v8, v11, v5);
  v17 = 0;
  v18 = 0;
  v21[1] = v8;
  v21[2] = &v17;
  v16[0] = MEMORY[0x1E6981840];
  v16[1] = v5;
  v16[2] = MEMORY[0x1E6981840];
  v15[1] = MEMORY[0x1E6981838];
  v15[2] = WitnessTable;
  v15[3] = MEMORY[0x1E6981838];
  static ViewBuilder.buildBlock<each A>(_:)(v21, 3, v16);
  v13(v11, v5);
  return (v13)(v8, v5);
}

uint64_t closure #2 in ClarityUIButtonRowContainer.body.getter()
{
  static ClarityUIMetrics.maximumButtonWidth.getter();
  type metadata accessor for ClarityUIButtonRowContainer();
  return ClarityUIButtonRowContainer.maximumButtonWidth.setter();
}

uint64_t partial apply for closure #2 in ClarityUIButtonRowContainer.body.getter()
{
  type metadata accessor for ClarityUIButtonRowContainer();

  return closure #2 in ClarityUIButtonRowContainer.body.getter();
}

uint64_t closure #3 in ClarityUIButtonRowContainer.body.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for GlobalCoordinateSpace();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t closure #4 in ClarityUIButtonRowContainer.body.getter()
{
  static ClarityUIMetrics.maximumButtonWidth.getter();
  type metadata accessor for ClarityUIButtonRowContainer();
  return ClarityUIButtonRowContainer.maximumButtonWidth.setter();
}

uint64_t partial apply for closure #4 in ClarityUIButtonRowContainer.body.getter()
{
  type metadata accessor for ClarityUIButtonRowContainer();

  return closure #4 in ClarityUIButtonRowContainer.body.getter();
}

uint64_t View.onGeometryChange<A>(for:of:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v15[0] = _GeometryActionModifier.init(value:action:)();
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13 = type metadata accessor for _GeometryActionModifier();
  MEMORY[0x1BFB1FAD0](v15, a6, v13, a8);
}

unint64_t lazy protocol witness table accessor for type CGRect and conformance CGRect()
{
  result = lazy protocol witness table cache variable for type CGRect and conformance CGRect;
  if (!lazy protocol witness table cache variable for type CGRect and conformance CGRect)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGRect and conformance CGRect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _GeometryActionModifier<CGRect> and conformance _GeometryActionModifier<A>()
{
  result = lazy protocol witness table cache variable for type _GeometryActionModifier<CGRect> and conformance _GeometryActionModifier<A>;
  if (!lazy protocol witness table cache variable for type _GeometryActionModifier<CGRect> and conformance _GeometryActionModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGRectVAESQ12CoreGraphicsyHCg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GeometryActionModifier<CGRect> and conformance _GeometryActionModifier<A>);
  }

  return result;
}

void type metadata completion function for ClarityUIButtonRowContainer()
{
  type metadata accessor for State<CGFloat?>();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ClarityUIButtonRowContainer(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 24) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_7;
  }

  v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
  if (HIWORD(v14))
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v14 <= 0xFF)
    {
      if (v14 < 2)
      {
        goto LABEL_23;
      }

LABEL_7:
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

LABEL_15:
      v15 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v15 = 0;
      }

      if (v10)
      {
        if (v10 > 3)
        {
          LODWORD(v10) = 4;
        }

        switch(v10)
        {
          case 2:
            LODWORD(v10) = *a1;
            break;
          case 3:
            LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v10) = *a1;
            break;
          default:
            LODWORD(v10) = *a1;
            break;
        }
      }

      v17 = v8 + (v10 | v15);
      return (v17 + 1);
    }

    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_15;
    }
  }

LABEL_23:
  if (v6 > 0x7FFFFFFE)
  {
    return __swift_getEnumTagSinglePayload((a1 + v7 + 24) & ~v7, v6, v4);
  }

  v16 = *(a1 + 2);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void storeEnumTagSinglePayload for ClarityUIButtonRowContainer(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 24) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0x7FFFFFFE)
          {
            v21 = &a1[v10 + 24] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            *a1 = (a2 - 0x7FFFFFFF);
          }

          else
          {
            *(a1 + 2) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void type metadata accessor for State<CGFloat?>()
{
  if (!lazy cache variable for type metadata for State<CGFloat?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12CoreGraphics7CGFloatVSgMd);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<CGFloat?>);
    }
  }
}

unint64_t CallControlsMenuViewModel.context.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_43();
  lazy protocol witness table accessor for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel(v1, v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 16) | (*(v0 + 20) << 32);
}

unint64_t key path getter for CallControlsMenuViewModel.context : CallControlsMenuViewModel@<X0>(uint64_t a1@<X8>)
{
  result = CallControlsMenuViewModel.context.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t type metadata accessor for CallControlsMenuViewModel()
{
  result = type metadata singleton initialization cache for CallControlsMenuViewModel;
  if (!type metadata singleton initialization cache for CallControlsMenuViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallControlsMenuViewModel.context.setter()
{
  return CallControlsMenuViewModel.context.setter();
}

{
  swift_getKeyPath();
  specialized CallControlsMenuViewModel.withMutation<A, B>(keyPath:_:)();
}

uint64_t CallControlsMenuViewModel.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_43();
  lazy protocol witness table accessor for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t closure #1 in CallControlsMenuViewModel.context.setter(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  result = swift_beginAccess();
  *(a1 + 16) = v6;
  *(a1 + 20) = v8;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  return result;
}

uint64_t specialized CallControlsMenuViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_43();
  lazy protocol witness table accessor for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CallControlsMenuViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_43();
  lazy protocol witness table accessor for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*CallControlsMenuViewModel.context.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_getKeyPath();
  v3[4] = OBJC_IVAR____TtC15ConversationKit25CallControlsMenuViewModel___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_43();
  v3[5] = lazy protocol witness table accessor for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel(v4, v5);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return CallControlsMenuViewModel.context.modify;
}

void CallControlsMenuViewModel.context.modify(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t CallControlsMenuViewModel.__allocating_init(service:isAppFrontMost:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CallControlsMenuViewModel.init(service:isAppFrontMost:)(a1, a2);
  return v4;
}

uint64_t CallControlsMenuViewModel.init(service:isAppFrontMost:)(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 88) = 0;
  ObservationRegistrar.init()();
  outlined init with copy of IDSLookupManager(a1, v2 + 40);
  *(v2 + 80) = a2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 16);

  LODWORD(v6) = v8(v6, v7);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  LOBYTE(v9) = (*(v10 + 32))(v9, v10);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 40))(v11, v12);

  *(v3 + 96) = v6;
  *(v3 + 100) = v9;
  *(v3 + 104) = v13;
  *(v3 + 112) = 1;
  *(v3 + 16) = v6;
  *(v3 + 20) = v9;
  *(v3 + 24) = v13;
  *(v3 + 32) = 1;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

Swift::Void __swiftcall CallControlsMenuViewModel.startContextObservation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v31 = v25 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A7Latest4Vy_AA12AnyPublisherVySo12TUCallStatusVs5NeverOGAGy15ConversationKit18InCallControlsModeOAKGAGySo019TUConversationLetMeK12RequestStateVAKGAGySbAKGGMd);
  OUTLINED_FUNCTION_1();
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v29 = v25 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC0A7Latest4Vy_AA12AnyPublisherVySo12TUCallStatusVs5NeverOGAIy15ConversationKit18InCallControlsModeOAMGAIySo019TUConversationLetMeM12RequestStateVAMGAIySbAMGGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  v34 = v6;
  v35 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v30 = v25 - v8;
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  v9 = OUTLINED_FUNCTION_2_14();
  v28 = v10(v9);
  v39 = v28;
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  v11 = OUTLINED_FUNCTION_2_14();
  v27 = v12(v11);
  v38 = v27;
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  v13 = OUTLINED_FUNCTION_2_14();
  v26 = v14(v13);
  v36 = v0[10];
  v37 = v26;
  v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo12TUCallStatusVs5NeverOGMd);
  v25[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit18InCallControlsModeOs5NeverOGMd);
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo33TUConversationLetMeInRequestStateVs5NeverOGMd);
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<TUCallStatus, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo12TUCallStatusVs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<InCallControlsMode, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit18InCallControlsModeOs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<TUConversationLetMeInRequestState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo33TUConversationLetMeInRequestStateVs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
  v15 = v29;
  Publisher.combineLatest<A, B, C>(_:_:_:)();

  v16 = [objc_opt_self() mainRunLoop];
  v39 = v16;
  v17 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v18 = v31;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v17);
  type metadata accessor for NSRunLoop();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest4<AnyPublisher<TUCallStatus, Never>, AnyPublisher<InCallControlsMode, Never>, AnyPublisher<TUConversationLetMeInRequestState, Never>, AnyPublisher<Bool, Never>> and conformance Publishers.CombineLatest4<A, B, C, D>, &_s7Combine10PublishersO0A7Latest4Vy_AA12AnyPublisherVySo12TUCallStatusVs5NeverOGAGy15ConversationKit18InCallControlsModeOAKGAGySo019TUConversationLetMeK12RequestStateVAKGAGySbAKGGMd);
  lazy protocol witness table accessor for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, type metadata accessor for NSRunLoop);
  v19 = v30;
  v20 = v32;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v18);

  (*(v33 + 8))(v15, v20);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #1 in CallControlsMenuViewModel.startContextObservation();
  *(v22 + 24) = v21;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.CombineLatest4<AnyPublisher<TUCallStatus, Never>, AnyPublisher<InCallControlsMode, Never>, AnyPublisher<TUConversationLetMeInRequestState, Never>, AnyPublisher<Bool, Never>>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC0A7Latest4Vy_AA12AnyPublisherVySo12TUCallStatusVs5NeverOGAIy15ConversationKit18InCallControlsModeOAMGAIySo019TUConversationLetMeM12RequestStateVAMGAIySbAMGGSo9NSRunLoopCGMd);
  v23 = v34;
  v24 = Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v19, v23);
  CallControlsMenuViewModel.contextCancellable.setter(v24);
}

unint64_t type metadata accessor for NSRunLoop()
{
  result = lazy cache variable for type metadata for NSRunLoop;
  if (!lazy cache variable for type metadata for NSRunLoop)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSRunLoop);
  }

  return result;
}

uint64_t outlined destroy of NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in CallControlsMenuViewModel.startContextObservation()(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, &static Logger.sidebar);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315906;
      type metadata accessor for TUCallStatus(0);
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v28);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = InCallControlsMode.debugDescription.getter(a2);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v28);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2080;
      type metadata accessor for TUConversationLetMeInRequestState(0);
      v19 = String.init<A>(reflecting:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v28);

      *(v11 + 24) = v21;
      *(v11 + 32) = 1024;
      *(v11 + 34) = a4 & 1;
      _os_log_impl(&dword_1BBC58000, v9, v10, "CallControlsMenuViewModel: callStatus: %s controlMode: %s letMeIn: %s isAppFrontMost: %{BOOL}d", v11, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v12, -1, -1);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }

    v22 = v7[8];
    v23 = v7[9];
    __swift_project_boxed_opaque_existential_1(v7 + 5, v22);
    (*(v23 + 16))(v22, v23);
    v24 = v7[8];
    v25 = v7[9];
    __swift_project_boxed_opaque_existential_1(v7 + 5, v24);
    (*(v25 + 32))(v24, v25);
    v26 = v7[8];
    v27 = v7[9];
    __swift_project_boxed_opaque_existential_1(v7 + 5, v26);
    (*(v27 + 40))(v26, v27);
    CallControlsMenuViewModel.context.setter();
    CallControlsMenuViewModel.inCallContext.getter();
    CallControlsMenuViewModel.context.setter();
  }

  return result;
}

unint64_t CallControlsMenuViewModel.inCallContext.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel(&lazy protocol witness table cache variable for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel, type metadata accessor for CallControlsMenuViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 96) | (*(v0 + 100) << 32);
}

uint64_t CallControlsMenuViewModel.contextCancellable.setter(uint64_t a1)
{

  v4 = specialized CallControlsMenuViewModel.shouldNotifyObservers<A>(_:_:)(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized CallControlsMenuViewModel.withMutation<A, B>(keyPath:_:)();
  }

  else
  {
    *(v1 + 88) = a1;
  }
}

uint64_t CallControlsMenuViewModel.contextCancellable.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel(&lazy protocol witness table cache variable for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel, type metadata accessor for CallControlsMenuViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

BOOL specialized CallControlsMenuViewModel.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);

      v2 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = a2 == 0;
  }

  return (v2 & 1) == 0;
}

uint64_t closure #1 in CallControlsMenuViewModel.contextCancellable.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = a2;
}

unint64_t key path getter for CallControlsMenuViewModel.inCallContext : CallControlsMenuViewModel@<X0>(uint64_t a1@<X8>)
{
  result = CallControlsMenuViewModel.inCallContext.getter();
  *a1 = result;
  *(a1 + 4) = BYTE4(result);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t CallControlsMenuViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  v1 = OBJC_IVAR____TtC15ConversationKit25CallControlsMenuViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CallControlsMenuViewModel.__deallocating_deinit()
{
  CallControlsMenuViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for CallControlsMenuViewModel()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t lazy protocol witness table accessor for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

void partial apply for closure #1 in CallControlsMenuViewModel.inCallContext.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 28);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v1 + 96) = *(v0 + 24);
  *(v1 + 100) = v2;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
}

uint64_t CaptionsViewModel.minimize(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  CaptionsViewModel.source.getter();
  a2(a1);
}

uint64_t CaptionsViewModel.callName.getter()
{
  CaptionsViewModel.source.getter();
  v0 = CaptionsStateSource.callName.getter();

  return v0;
}

uint64_t CaptionsViewModel.callName.setter()
{
  CaptionsViewModel.source.getter();
  v0 = OUTLINED_FUNCTION_45_1();
  CaptionsStateSource.callName.setter(v0, v1);
}

void *CaptionsViewModel.groupImage.getter()
{
  CaptionsViewModel.source.getter();
  v0 = CaptionsStateSource.groupImage.getter();

  return v0;
}

uint64_t CaptionsViewModel.groupImage.setter()
{
  CaptionsViewModel.source.getter();
  v0 = OUTLINED_FUNCTION_28_0();
  CaptionsStateSource.groupImage.setter(v0);
}

uint64_t CaptionsViewModel.languageModelDownloadingProgress.getter()
{
  CaptionsViewModel.source.getter();
  v0 = CaptionsStateSource.languageModelDownloadingProgress.getter();

  return v0;
}

uint64_t CaptionsViewModel.languageModelDownloadingProgress.setter()
{
  OUTLINED_FUNCTION_55();
  CaptionsViewModel.source.getter();
  CaptionsStateSource.languageModelDownloadingProgress.setter();
}

uint64_t CaptionsViewModel.updateCaptions(for:)(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_49();
  lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v3, v4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  CaptionSectioner.update(for:)(a1);
  swift_endAccess();
  v7[0] = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  CaptionsViewModel.source.getter();
  CaptionsViewModel.sectioner.getter(v7);
  v5._rawValue = v7[0];
  v8 = v7[3];
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v8, &_sSay15ConversationKit11ParticipantVGMd);

  CaptionsStateSource.updateSections(_:)(v5);

  CaptionsViewModel.updateExpirationTimer()();
  return CaptionsViewModel.updateSuppressionTimer()();
}

uint64_t CaptionsViewModel.__allocating_init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:allowsSuppression:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v17 = swift_allocObject();
  CaptionsViewModel.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:allowsSuppression:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t CaptionsViewModel.onRequestMinimizeHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v13 = v5;
  v14 = a1;
  v15 = a2;
  specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(KeyPath, a4, &v12, &OBJC_IVAR____TtC15ConversationKit17CaptionsViewModel___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  a5(a1, a2);
}

Swift::Void __swiftcall CaptionsViewModel.update(with:)(Swift::OpaquePointer with)
{
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_17();
  v22 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v23 = CaptionsViewModel.source.getter();
  v11 = 0;
  v12 = *(with._rawValue + 2);
  v13 = MEMORY[0x1E69E7CC0];
  while (v12 != v11)
  {
    _s15ConversationKit11ParticipantVWOcTm_0();
    _s15ConversationKit11ParticipantVWOcTm_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 4u:
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v21 = *(v15 + 48);
        outlined consume of Participant.CopresenceInfo?(*&v4[*(v15 + 64)], *&v4[*(v15 + 64) + 8]);
        outlined destroy of Participant.MediaInfo(&v4[v21]);
        type metadata accessor for Date();
        OUTLINED_FUNCTION_7_0();
        (*(v16 + 8))(v4);
        OUTLINED_FUNCTION_24_13();
        _s15ConversationKit11ParticipantVWObTm_1();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v13 = v24;
        }

        v18 = *(v13 + 16);
        v19 = v18 + 1;
        if (v18 >= *(v13 + 24) >> 1)
        {
          v20[1] = *(v13 + 16);
          v21 = v18 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v21;
          v13 = v24;
        }

        ++v11;
        *(v13 + 16) = v19;
        OUTLINED_FUNCTION_24_13();
        _s15ConversationKit11ParticipantVWObTm_1();
        break;
      case 6u:
        goto LABEL_5;
      default:
        type metadata accessor for Date();
        OUTLINED_FUNCTION_7_0();
        (*(v14 + 8))(v4);
LABEL_5:
        _s15ConversationKit11ParticipantVWOhTm_0(v10, type metadata accessor for Participant);
        ++v11;
        break;
    }
  }

  CaptionsStateSource.participants.setter(v13);
}

uint64_t CaptionsViewModel.source.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_49();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
}

uint64_t key path getter for CaptionsViewModel.source : CaptionsViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = CaptionsViewModel.source.getter();
  *a1 = result;
  return result;
}

uint64_t CaptionsViewModel.source.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_31();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_0_5();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v5, partial apply for closure #1 in CaptionsViewModel.source.setter, v6, &OBJC_IVAR____TtC15ConversationKit17CaptionsViewModel___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  }
}

uint64_t closure #1 in CaptionsViewModel.source.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void CaptionsViewModel.source.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_1_49();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

void CaptionsViewModel.source.modify(void **a1)
{
  CaptionsViewModel.source.modify(a1);
}

{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  OUTLINED_FUNCTION_45_1();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t CaptionsViewModel.sectioner.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_49();
  v6 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v4, v5);
  OUTLINED_FUNCTION_5_25(v6, v7, v8, v9, v10, v11, v12, v13, v19, v1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
  v15 = *(v1 + 48);
  v14 = *(v2 + 56);
  v16 = *(v2 + 64);
  v17 = *(v2 + 72);
  *a1 = *(v2 + 24);
  *(a1 + 8) = *(v2 + 32);
  *(a1 + 24) = v15;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
}

double key path getter for CaptionsViewModel.sectioner : CaptionsViewModel@<D0>(uint64_t a1@<X8>)
{
  CaptionsViewModel.sectioner.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t key path setter for CaptionsViewModel.sectioner : CaptionsViewModel(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v5 = *&v3[0];
  v6 = *(&v1 + 1);
  v3[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();

  return CaptionsViewModel.sectioner.setter(v3);
}

uint64_t CaptionsViewModel.sectioner.setter(void *a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(KeyPath, partial apply for closure #1 in CaptionsViewModel.sectioner.setter, &v5, &OBJC_IVAR____TtC15ConversationKit17CaptionsViewModel___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  v9 = *a1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v9, &_sSay15ConversationKit16CaptionSectionerV14SpeakerSectionVGMd);
  v8 = a1[3];
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v8, &_sSay15ConversationKit11ParticipantVGMd);
}

__n128 CaptionsViewModel.sectioner.init@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t closure #1 in CaptionsViewModel.sectioner.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a1 + 24) = *a2;
  *(a1 + 40) = v4;
  *(a1 + 56) = *(a2 + 32);
  *(a1 + 72) = *(a2 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

void CaptionsViewModel.sectioner.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_1_49();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

void *CaptionsViewModel.expirationTimer.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(&lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void key path setter for CaptionsViewModel.expirationTimer : CaptionsViewModel(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CaptionsViewModel.expirationTimer.setter(v1);
}

void CaptionsViewModel.expirationTimer.setter(void *a1)
{
  v3 = *(v1 + 80);
  v4 = v3;
  LOBYTE(v3) = specialized CaptionsViewModel.shouldNotifyObservers<A>(_:_:)(v3, a1, &lazy cache variable for type metadata for NSTimer);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in CaptionsViewModel.expirationTimer.setter, v8, &OBJC_IVAR____TtC15ConversationKit17CaptionsViewModel___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  }

  else
  {
    v7 = *(v1 + 80);
    *(v1 + 80) = a1;
  }
}

void closure #1 in CaptionsViewModel.expirationTimer.setter(uint64_t a1, void *a2)
{
  v2 = *(a1 + 80);
  *(a1 + 80) = a2;
  v3 = a2;
}

void *CaptionsViewModel.suppressionTimer.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(&lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void key path setter for CaptionsViewModel.suppressionTimer : CaptionsViewModel(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CaptionsViewModel.suppressionTimer.setter(v1);
}

void CaptionsViewModel.suppressionTimer.setter(void *a1)
{
  v3 = *(v1 + 88);
  v4 = v3;
  LOBYTE(v3) = specialized CaptionsViewModel.shouldNotifyObservers<A>(_:_:)(v3, a1, &lazy cache variable for type metadata for NSTimer);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in CaptionsViewModel.suppressionTimer.setter, v8, &OBJC_IVAR____TtC15ConversationKit17CaptionsViewModel___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  }

  else
  {
    v7 = *(v1 + 88);
    *(v1 + 88) = a1;
  }
}

void closure #1 in CaptionsViewModel.suppressionTimer.setter(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = a2;
  v3 = a2;
}

uint64_t CaptionsViewModel.onRequestMinimizeHandler.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_49();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
  v11 = OUTLINED_FUNCTION_38_2();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v11);
  return OUTLINED_FUNCTION_38_2();
}

uint64_t key path getter for CaptionsViewModel.onRequestMinimizeHandler : CaptionsViewModel@<X0>(uint64_t (**a1)()@<X8>)
{
  result = CaptionsViewModel.onRequestMinimizeHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t key path setter for CaptionsViewModel.onRequestMinimizeHandler : CaptionsViewModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return CaptionsViewModel.onRequestMinimizeHandler.setter(v4, v3);
}

uint64_t CaptionsViewModel.onRequestMinimizeHandler.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t closure #1 in CaptionsViewModel.onRequestMinimizeHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 96);
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

void CaptionsViewModel.onRequestMinimizeHandler.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_1_49();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t CaptionsViewModel.onRequestDismissControlsHandler.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_49();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
  v11 = OUTLINED_FUNCTION_38_2();
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v11);
  return OUTLINED_FUNCTION_38_2();
}

uint64_t key path getter for CaptionsViewModel.onRequestDismissControlsHandler : CaptionsViewModel@<X0>(uint64_t (**a1)()@<X8>)
{
  result = CaptionsViewModel.onRequestDismissControlsHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t key path setter for CaptionsViewModel.onRequestDismissControlsHandler : CaptionsViewModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return CaptionsViewModel.onRequestDismissControlsHandler.setter(v4, v3);
}

uint64_t closure #1 in CaptionsViewModel.onRequestDismissControlsHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 112);
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

void CaptionsViewModel.onRequestDismissControlsHandler.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_1_49();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t CaptionsStateSource.allowsMinimization.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
  return *(v0 + 97);
}

uint64_t CaptionsStateSource.allowsMinimization.setter(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_13_21();
  result = swift_beginAccess();
  if (*(v1 + 97) == v2)
  {
    *(v1 + 97) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_53_5(v5);
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in CaptionsStateSource.allowsMinimization.setter, v7, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
  }

  return result;
}

uint64_t (*CaptionsViewModel.allowsMinimization.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  CaptionsViewModel.source.getter();
  v3 = CaptionsStateSource.allowsMinimization.getter();

  *(a1 + 8) = v3 & 1;
  return CaptionsViewModel.allowsMinimization.modify;
}

uint64_t CaptionsViewModel.allowsMinimization.getter(uint64_t (*a1)(void))
{
  CaptionsViewModel.source.getter();
  LOBYTE(a1) = a1();

  return a1 & 1;
}

uint64_t CaptionsStateSource.isMinimized.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
  return *(v0 + 81);
}

uint64_t CaptionsStateSource.isGroupCall.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
  return *(v0 + 82);
}

uint64_t CaptionsStateSource.isGroupCall.setter(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_13_21();
  result = swift_beginAccess();
  if (*(v1 + 82) == v2)
  {
    *(v1 + 82) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_53_5(v5);
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in CaptionsStateSource.isGroupCall.setter, v7, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
  }

  return result;
}

uint64_t (*CaptionsViewModel.isGroupCall.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  CaptionsViewModel.source.getter();
  v3 = CaptionsStateSource.isGroupCall.getter();

  *(a1 + 8) = v3 & 1;
  return CaptionsViewModel.isGroupCall.modify;
}

uint64_t CaptionsViewModel.allowsMinimization.modify(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 8);
  CaptionsViewModel.source.getter();
  a3(v4);
}

uint64_t CaptionsStateSource.callName.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();

  return OUTLINED_FUNCTION_38_2();
}

uint64_t CaptionsStateSource.callName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  if (specialized CaptionsStateSource.shouldNotifyObservers<A>(_:_:)(*(v2 + 16), *(v2 + 24), a1, a2))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_36_9();
    v6 = MEMORY[0x1EEE9AC00](v5);
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in CaptionsStateSource.callName.setter, v8, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }
}

uint64_t CaptionsViewModel.callName.modify(uint64_t *a1)
{
  a1[2] = v1;
  CaptionsViewModel.source.getter();
  v3 = CaptionsStateSource.callName.getter();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return OUTLINED_FUNCTION_8_1();
}

uint64_t CaptionsViewModel.callName.modify(uint64_t a1, char a2)
{
  if (a2)
  {

    CaptionsViewModel.source.getter();
    v2 = OUTLINED_FUNCTION_45_1();
    CaptionsStateSource.callName.setter(v2, v3);
  }

  else
  {
    CaptionsViewModel.source.getter();
    v4 = OUTLINED_FUNCTION_45_1();
    CaptionsStateSource.callName.setter(v4, v5);
  }
}

void *CaptionsStateSource.groupImage.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v14, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
  v11 = *(v0 + 32);
  v12 = v11;
  return v11;
}

void CaptionsStateSource.groupImage.setter(void *a1)
{
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = OUTLINED_FUNCTION_45_1();
  v7 = specialized CaptionsViewModel.shouldNotifyObservers<A>(_:_:)(v4, v5, v6);

  if (v7)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_31();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_0_5();
    *(v9 - 16) = v1;
    *(v9 - 8) = a1;
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v10, partial apply for closure #1 in CaptionsStateSource.groupImage.setter, v11, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
  }

  else
  {
    v12 = *(v1 + 32);
    *(v1 + 32) = a1;
  }
}

uint64_t CaptionsViewModel.groupImage.modify(void *a1)
{
  a1[1] = v1;
  CaptionsViewModel.source.getter();
  v3 = CaptionsStateSource.groupImage.getter();

  *a1 = v3;
  return OUTLINED_FUNCTION_8_1();
}

uint64_t CaptionsViewModel.groupImage.modify(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    CaptionsViewModel.source.getter();
    v3 = OUTLINED_FUNCTION_28_0();
    CaptionsStateSource.groupImage.setter(v3);
  }

  else
  {
    CaptionsViewModel.source.getter();
    v4 = OUTLINED_FUNCTION_28_0();
    CaptionsStateSource.groupImage.setter(v4);
  }
}

uint64_t CaptionsStateSource.languageModelDownloadingProgress.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
  return *(v0 + 88);
}

uint64_t CaptionsStateSource.languageModelDownloadingProgress.setter()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_13_21();
  result = swift_beginAccess();
  v4 = *(v1 + 96);
  if (v4 & 1) != 0 || (v0)
  {
    if (v4 & v0)
    {
      goto LABEL_4;
    }
  }

  else if (*(v1 + 88) == v2)
  {
LABEL_4:
    *(v1 + 88) = v2;
    *(v1 + 96) = v0 & 1;
    return result;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_36_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_26();
  specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in CaptionsStateSource.languageModelDownloadingProgress.setter, v7, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
}

uint64_t CaptionsViewModel.languageModelDownloadingProgress.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  CaptionsViewModel.source.getter();
  v3 = CaptionsStateSource.languageModelDownloadingProgress.getter();
  v5 = v4;

  *a1 = v3;
  *(a1 + 8) = v5 & 1;
  return OUTLINED_FUNCTION_8_1();
}

uint64_t CaptionsViewModel.languageModelDownloadingProgress.modify()
{
  CaptionsViewModel.source.getter();
  OUTLINED_FUNCTION_28_0();
  CaptionsStateSource.languageModelDownloadingProgress.setter();
}

uint64_t CaptionsViewModel.layoutIdiom.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_49();
  v5 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v3, v4);
  OUTLINED_FUNCTION_5_25(v5, v6, v7, v8, v9, v10, v11, v12, v14, v1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = OUTLINED_FUNCTION_4_5();
  *a1 = *(v1 + 128);
  return result;
}

uint64_t key path getter for CaptionsViewModel.layoutIdiom : CaptionsViewModel@<X0>(_BYTE *a1@<X8>)
{
  result = CaptionsViewModel.layoutIdiom.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t CaptionsViewModel.layoutIdiom.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_13_21();
  result = swift_beginAccess();
  if (v2 == *(v1 + 128))
  {
    *(v1 + 128) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_53_5(v5);
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in CaptionsViewModel.layoutIdiom.setter, v7, &OBJC_IVAR____TtC15ConversationKit17CaptionsViewModel___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  }

  return result;
}

uint64_t closure #1 in CaptionsViewModel.layoutIdiom.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 128) = a2 & 1;
  return result;
}

void CaptionsViewModel.layoutIdiom.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_1_49();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t CaptionsViewModel.cancellables.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(&lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t CaptionsViewModel.cancellables.setter(unint64_t a1)
{
  swift_beginAccess();

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v8, partial apply for closure #1 in CaptionsViewModel.cancellables.setter, v9, &OBJC_IVAR____TtC15ConversationKit17CaptionsViewModel___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  }
}

uint64_t CaptionsViewModel.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:allowsSuppression:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v47 = a6;
  v48 = a5;
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v55 = a1;
  v49 = a10;
  v15 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  v50 = *a7;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 136) = MEMORY[0x1E69E7CC0];
  ObservationRegistrar.init()();
  v54 = a8;
  ObjectType = swift_getObjectType();
  v29 = (*(a9 + 520))(ObjectType, a9);
  v46 = v29;
  v30 = (*(a9 + 528))(ObjectType, a9);
  v31 = (*(a9 + 536))(ObjectType, a9);
  v59 = MEMORY[0x1E69E7CC0];
  v60 = v30;
  v61 = v31;
  v62 = v55;
  v63 = v29;
  v45 = closure #1 in default argument 4 of CaptionSectioner.init(participants:badCaptionCountThreshold:suppressionAge:maximumAge:currentDate:);
  v64 = closure #1 in default argument 4 of CaptionSectioner.init(participants:badCaptionCountThreshold:suppressionAge:maximumAge:currentDate:);
  v65 = 0;
  CaptionSectioner.gatherAndSortCaptions()();
  v33 = v32;
  Date.init()();
  Date.addingTimeInterval(_:)();
  v34 = *(v17 + 8);
  v34(v24, v15);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v34(v21, v15);
  v57 = v24;
  v58 = v27;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15ConversationKit16CaptionSectionerV0F0VG_AJs5NeverOTg5(partial apply for closure #1 in CaptionSectioner.updateCaptions(), v56, v33);

  CaptionSectioner.chunkSections(sortedCaptions:)();
  v36._rawValue = v35;

  v34(v24, v15);
  v34(v27, v15);
  type metadata accessor for CaptionsStateSource(0);
  v37 = swift_allocObject();
  CaptionsStateSource.init()();
  LOBYTE(v17) = v47;
  CaptionsStateSource.isMinimized.setter(v47);
  CaptionsStateSource.isGroupCall.setter(v48);
  CaptionsStateSource.allowsMinimization.setter(v17);
  CaptionsStateSource.updateSections(_:)(v36);
  CaptionsStateSource.suppressionAge.setter();
  CaptionsStateSource.maximumAge.setter();
  CaptionsStateSource.callName.setter(v51, v52);
  v38 = v53;
  v39 = v53;
  CaptionsStateSource.groupImage.setter(v38);
  *(v11 + 16) = v37;
  *(v11 + 24) = v36;
  *(v11 + 32) = v30;
  *(v11 + 40) = v31;
  v40 = v46;
  *(v11 + 48) = v55;
  *(v11 + 56) = v40;
  *(v11 + 64) = v45;
  *(v11 + 72) = 0;
  *(v11 + 128) = v50;
  OUTLINED_FUNCTION_20();
  v41 = swift_allocObject();
  swift_weakInit();

  CaptionsStateSource.onRequestMinimize.setter(partial apply for closure #1 in CaptionsViewModel.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:allowsSuppression:), v41);

  OUTLINED_FUNCTION_20();
  v42 = swift_allocObject();
  swift_weakInit();

  CaptionsStateSource.onRequestDismissControls.setter(partial apply for closure #2 in CaptionsViewModel.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:allowsSuppression:), v42);

  swift_unknownObjectRelease();

  return v11;
}

uint64_t CaptionsStateSource.__allocating_init()()
{
  v0 = swift_allocObject();
  CaptionsStateSource.init()();
  return v0;
}

uint64_t CaptionsStateSource.isMinimized.setter(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_13_21();
  result = swift_beginAccess();
  if (*(v1 + 81) == v2)
  {
    *(v1 + 81) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_53_5(v5);
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in CaptionsStateSource.isMinimized.setter, v7, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
  }

  return result;
}

uint64_t CaptionsStateSource.suppressionAge.setter()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_13_21();
  result = swift_beginAccess();
  v4 = *(v1 + 64);
  if (v4 & 1) != 0 || (v0)
  {
    if (v4 & v0)
    {
      goto LABEL_4;
    }
  }

  else if (*(v1 + 56) == v2)
  {
LABEL_4:
    *(v1 + 56) = v2;
    *(v1 + 64) = v0 & 1;
    return result;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_36_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_26();
  specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in CaptionsStateSource.suppressionAge.setter, v7, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
}

uint64_t CaptionsStateSource.maximumAge.setter()
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_13_21();
  result = swift_beginAccess();
  v4 = *(v1 + 80);
  if (v4 & 1) != 0 || (v0)
  {
    if (v4 & v0)
    {
      goto LABEL_4;
    }
  }

  else if (*(v1 + 72) == v2)
  {
LABEL_4:
    *(v1 + 72) = v2;
    *(v1 + 80) = v0 & 1;
    return result;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_36_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_26();
  specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v6, partial apply for closure #1 in CaptionsStateSource.maximumAge.setter, v7, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
}

uint64_t closure #1 in CaptionsViewModel.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:allowsSuppression:)(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptionsViewModel.source.getter();
    v3 = CaptionsStateSource.allowsMinimization.getter();

    if (v3)
    {
      v4 = CaptionsViewModel.onRequestMinimizeHandler.getter();
      if (v4)
      {
        v5 = v4;
        v4(a1 & 1);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
      }
    }
  }

  return result;
}

uint64_t closure #2 in CaptionsViewModel.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:allowsSuppression:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = CaptionsViewModel.onRequestDismissControlsHandler.getter();
    if (v1)
    {
      v2 = v1;
      v1();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
    }
  }

  return result;
}

uint64_t CaptionsStateSource.onRequestMinimize.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v11 = v4;
  v12 = a1;
  v13 = a2;
  specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(KeyPath, a4, &v10, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
}

uint64_t CaptionsViewModel.__allocating_init(presentationStateProvider:remoteParticipantsStateProvider:allowsMinimization:layoutIdiom:defaults:)(void *a1, void *a2, int a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit11ParticipantVs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v80 = v9;
  v81 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay15ConversationKit11ParticipantVGs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v16);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo7UIImageCSgs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v78 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  v84 = v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit15CallDisplayInfoOs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v90 = v22;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_1();
  v83 = v24;
  v25 = *a4;
  v85 = a2;
  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  v28 = (*(v27 + 16))(v26, v27);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  (*(v30 + 88))(&v91, v29, v30);
  v32 = v91;
  v31 = v92;
  LOBYTE(a2) = v93;
  v95 = v91;
  v96 = v92;
  v97 = v93;
  CallDisplayInfo.displayName.getter();
  v34 = v33;
  v36 = v35;
  outlined consume of CallDisplayInfo(v32, v31, a2);
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = OUTLINED_FUNCTION_28_0();
  v40 = v39(v38, v37);
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  LOBYTE(a4) = (*(v42 + 120))(v41, v42);
  v94 = v25;
  swift_unknownObjectRetain();
  LOBYTE(v41) = static Platform.current.getter() == 2;
  v43 = swift_allocObject();
  CaptionsViewModel.init(participants:callName:groupImage:isGroupCall:allowsMinimization:layoutIdiom:defaults:allowsSuppression:)(v28, v34, v36, v40, (a4 & 1) == 0, a3, &v94, a5, a6, v41);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v46 = v45[12];
  swift_retain_n();
  v91 = v46(v44, v45);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v47 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_42_9(v47);
  v87 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v84, 1, 1, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit15CallDisplayInfoOs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CallDisplayInfo, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit15CallDisplayInfoOs5NeverOGMd);
  OUTLINED_FUNCTION_23_2();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v48, &lazy cache variable for type metadata for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_37_11();
  OUTLINED_FUNCTION_22_4();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v49, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit15CallDisplayInfoOs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_8_1();
  Publisher<>.sink(receiveValue:)();

  (*(v90 + 8))(v83, v88);
  swift_getKeyPath();
  v91 = v43;
  OUTLINED_FUNCTION_1_49();
  lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v50, v51);
  OUTLINED_FUNCTION_9_22();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v91 = v43;
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_22();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_19_8();
  v52 = OUTLINED_FUNCTION_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(v52);
  OUTLINED_FUNCTION_21_13();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v53, &_sSay7Combine14AnyCancellableCGMd);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v91 = v43;
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_22();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v55 = OUTLINED_FUNCTION_28_0();
  v57 = v56(v55, v54);
  OUTLINED_FUNCTION_58_2(v57);
  v58 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_42_9(v58);
  OUTLINED_FUNCTION_26_12();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_40_10(&lazy protocol witness table cache variable for type AnyPublisher<UIImage?, Never> and conformance AnyPublisher<A, B>);
  OUTLINED_FUNCTION_32_5();
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_37_11();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UIImage?, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo7UIImageCSgs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_8_1();
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_64();
  (*(v78 + 8))(v76, v77);
  swift_getKeyPath();
  v91 = v43;
  OUTLINED_FUNCTION_9_22();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_61_2();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_25_14();
  swift_endAccess();

  OUTLINED_FUNCTION_61_2();
  OUTLINED_FUNCTION_9_22();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_63_1(a1);
  v59 = OUTLINED_FUNCTION_28_0();
  v61 = v60(v59, v54);
  OUTLINED_FUNCTION_58_2(v61);
  v62 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_42_9(v62);
  OUTLINED_FUNCTION_26_12();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_40_10(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>);
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_16_24();
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_37_11();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_8_1();
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_64();
  v63 = OUTLINED_FUNCTION_54_2();
  v64(v63);
  swift_getKeyPath();
  OUTLINED_FUNCTION_34_8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_12_19();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_25_14();
  swift_endAccess();

  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_12_19();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_63_1(v85);
  v65 = OUTLINED_FUNCTION_28_0();
  v67 = v66(v65, v54);
  OUTLINED_FUNCTION_58_2(v67);
  v68 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_42_9(v68);
  OUTLINED_FUNCTION_26_12();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_40_10(&lazy protocol witness table cache variable for type AnyPublisher<[Participant], Never> and conformance AnyPublisher<A, B>);
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_16_24();
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_37_11();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<[Participant], Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay15ConversationKit11ParticipantVGs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_8_1();
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_64();
  v69 = OUTLINED_FUNCTION_54_2();
  v70(v69);
  swift_getKeyPath();
  OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_59_4();

  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_11_21();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_25_14();
  swift_endAccess();

  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_11_21();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_63_1(v85);
  v71 = OUTLINED_FUNCTION_28_0();
  v73 = v72(v71, v54);
  OUTLINED_FUNCTION_58_2(v73);
  v74 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_42_9(v74);
  OUTLINED_FUNCTION_26_12();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_40_10(&lazy protocol witness table cache variable for type AnyPublisher<Participant, Never> and conformance AnyPublisher<A, B>);
  OUTLINED_FUNCTION_32_5();
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_37_11();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Participant, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit11ParticipantVs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_8_1();
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_64();
  (*(v81 + 8))(v79, v80);
  swift_getKeyPath();
  OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_59_4();

  OUTLINED_FUNCTION_61_2();
  OUTLINED_FUNCTION_11_21();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_25_14();
  swift_endAccess();

  OUTLINED_FUNCTION_61_2();
  OUTLINED_FUNCTION_11_21();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v43;
}

uint64_t closure #1 in CaptionsViewModel.init(presentationStateProvider:remoteParticipantsStateProvider:allowsMinimization:layoutIdiom:defaults:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CallDisplayInfo.displayName.getter();
    v2 = v1;
    v4 = v3;
    CaptionsViewModel.source.getter();
    CaptionsStateSource.callName.setter(v2, v4);
  }

  return result;
}

uint64_t closure #2 in CaptionsViewModel.init(presentationStateProvider:remoteParticipantsStateProvider:allowsMinimization:layoutIdiom:defaults:)(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = v1;
    CaptionsViewModel.source.getter();
    CaptionsStateSource.groupImage.setter(v1);
  }

  return result;
}

uint64_t closure #3 in CaptionsViewModel.init(presentationStateProvider:remoteParticipantsStateProvider:allowsMinimization:layoutIdiom:defaults:)(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptionsViewModel.source.getter();
    CaptionsStateSource.isGroupCall.setter(v1 ^ 1);
  }

  return result;
}

uint64_t closure #4 in CaptionsViewModel.init(presentationStateProvider:remoteParticipantsStateProvider:allowsMinimization:layoutIdiom:defaults:)(void **a1)
{
  v1._rawValue = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptionsViewModel.update(with:)(v1);
  }

  return result;
}

uint64_t closure #5 in CaptionsViewModel.init(presentationStateProvider:remoteParticipantsStateProvider:allowsMinimization:layoutIdiom:defaults:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptionsViewModel.updateCaptions(for:)(a1);
  }

  return result;
}

uint64_t CaptionsStateSource.participants.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit11ParticipantV_Tt1g5();
  v4 = v3;

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_31();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_0_5();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v8, partial apply for closure #1 in CaptionsStateSource.participants.setter, v9, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
  }
}

uint64_t CaptionsViewModel.updateExpirationTimer()()
{
  v1 = type metadata accessor for Date();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for CaptionSectioner.Caption(0);
  MEMORY[0x1EEE9AC00](v57);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV0C0VSgMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - v5;
  v7 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV14SpeakerSectionVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV0C0VSgSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v47 - v21;
  v22 = CaptionsViewModel.expirationTimer.getter();
  [v22 invalidate];

  v50 = v0;
  CaptionsViewModel.source.getter();
  v23 = CaptionsStateSource.sections.getter();

  v24 = 0;
  v25 = *(v23 + 16);
  for (i = v23; ; v23 = i)
  {
    if (v24 == v25)
    {
      v26 = 1;
      v24 = v25;
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v24 >= *(v23 + 16))
      {
        goto LABEL_30;
      }

      _s15ConversationKit11ParticipantVWOcTm_0();
      v26 = 0;
      ++v24;
    }

    v27 = 1;
    __swift_storeEnumTagSinglePayload(v14, v26, 1, v7);
    outlined init with take of CaptionSectioner.SpeakerSection?();
    if (__swift_getEnumTagSinglePayload(v11, 1, v7) != 1)
    {
      v28 = v55;
      _s15ConversationKit11ParticipantVWObTm_1();
      closure #1 in CaptionsViewModel.updateExpirationTimer()(v28, v19);
      _s15ConversationKit11ParticipantVWOhTm_0(v28, type metadata accessor for CaptionSectioner.SpeakerSection);
      v27 = 0;
    }

    v29 = 1;
    __swift_storeEnumTagSinglePayload(v19, v27, 1, v4);
    if (__swift_getEnumTagSinglePayload(v19, 1, v4) == 1)
    {
      v19 = v53;
      goto LABEL_14;
    }

    outlined init with take of CaptionSectioner.SpeakerSection?();
    if (__swift_getEnumTagSinglePayload(v6, 1, v57) != 1)
    {
      break;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit16CaptionSectionerV0C0VSgMd);
  }

  v19 = v53;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v29 = 0;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v19, v29, 1, v4);

  v30 = v52;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v30, 1, v4) == 1)
  {
    v31 = &_s15ConversationKit16CaptionSectionerV0C0VSgSgMd;
    goto LABEL_18;
  }

  if (__swift_getEnumTagSinglePayload(v30, 1, v57) == 1)
  {
    v31 = &_s15ConversationKit16CaptionSectionerV0C0VSgMd;
LABEL_18:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, v31);
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_19:
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit16CaptionSectionerV0C0VSgSgMd);
    }

LABEL_31:
    swift_once();
    goto LABEL_19;
  }

  v32 = v51;
  _s15ConversationKit11ParticipantVWObTm_1();
  CaptionsViewModel.source.getter();
  CaptionsStateSource.maximumAge.getter();
  v34 = v33;

  if (v34)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v35 = v47;
    Date.addingTimeInterval(_:)();
    Date.timeIntervalSinceNow.getter();
    v37 = v36;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1BC4BA940;
    *aBlock = v37;
    v39 = String.init<A>(reflecting:)();
    v41 = v40;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    *(v38 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v42 = objc_opt_self();
    v43 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #3 in CaptionsViewModel.updateExpirationTimer();
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_140;
    v44 = _Block_copy(aBlock);

    v45 = [v42 scheduledTimerWithTimeInterval:0 repeats:v44 block:v37];
    _Block_release(v44);
    CaptionsViewModel.expirationTimer.setter(v45);
    (*(v48 + 8))(v35, v49);
  }

  _s15ConversationKit11ParticipantVWOhTm_0(v32, type metadata accessor for CaptionSectioner.Caption);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit16CaptionSectionerV0C0VSgSgMd);
}

uint64_t CaptionsViewModel.updateSuppressionTimer()()
{
  v0 = type metadata accessor for Date();
  v30 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV14SpeakerSectionVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV0C0VSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for CaptionSectioner.Caption(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = CaptionsViewModel.suppressionTimer.getter();
  [v12 invalidate];

  CaptionsViewModel.source.getter();
  CaptionsStateSource.suppressionAge.getter();
  v14 = v13;

  if (v14)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();

    return os_log(_:dso:log:type:_:)();
  }

  CaptionsViewModel.source.getter();
  v16 = CaptionsStateSource.sections.getter();

  specialized BidirectionalCollection.last.getter(v16);

  v17 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v17) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit16CaptionSectionerV14SpeakerSectionVSgMd);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
LABEL_10:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit16CaptionSectionerV0C0VSgMd);
LABEL_11:
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    return os_log(_:dso:log:type:_:)();
  }

  v18 = *&v5[*(v17 + 24)];

  _s15ConversationKit11ParticipantVWOhTm_0(v5, type metadata accessor for CaptionSectioner.SpeakerSection);
  specialized BidirectionalCollection.last.getter(v18);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    goto LABEL_10;
  }

  _s15ConversationKit11ParticipantVWObTm_1();
  if (v11[*(v9 + 48)])
  {
    _s15ConversationKit11ParticipantVWOhTm_0(v11, type metadata accessor for CaptionSectioner.Caption);
    goto LABEL_11;
  }

  Date.addingTimeInterval(_:)();
  Date.timeIntervalSinceNow.getter();
  v20 = v19;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BC4BA940;
  *aBlock = v20;
  v22 = String.init<A>(reflecting:)();
  v24 = v23;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v25 = objc_opt_self();
  v26 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in CaptionsViewModel.updateSuppressionTimer();
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_8;
  v27 = _Block_copy(aBlock);

  v28 = [v25 scheduledTimerWithTimeInterval:0 repeats:v27 block:v20];
  _Block_release(v27);
  CaptionsViewModel.suppressionTimer.setter(v28);
  (*(v30 + 8))(v2, v0);
  return _s15ConversationKit11ParticipantVWOhTm_0(v11, type metadata accessor for CaptionSectioner.Caption);
}

uint64_t CaptionsViewModel.updateCaptionsVisibility(animated:)(char a1)
{
  if (a1)
  {
    static Animation.default.getter();
  }

  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in CaptionsViewModel.updateCaptionsVisibility(animated:)(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(&lazy protocol witness table cache variable for type CaptionsViewModel and conformance CaptionsViewModel, type metadata accessor for CaptionsViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  CaptionSectioner.updateCaptions()();
  swift_endAccess();
  v5[0] = a1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  CaptionsViewModel.source.getter();
  CaptionsViewModel.sectioner.getter(v5);
  v2._rawValue = v5[0];
  v6 = v5[3];
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v6, &_sSay15ConversationKit11ParticipantVGMd);

  CaptionsStateSource.updateSections(_:)(v2);

  CaptionsViewModel.updateExpirationTimer()(v3);
  return CaptionsViewModel.updateSuppressionTimer()();
}

uint64_t CaptionsStateSource.sections.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t closure #1 in CaptionsViewModel.updateExpirationTimer()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CaptionSectioner.Caption(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  v8 = 0;
  v9 = *(a1 + *(result + 24));
  v10 = *(v9 + 16);
  while (1)
  {
    if (v10 == v8)
    {
      v11 = 1;
      return __swift_storeEnumTagSinglePayload(a2, v11, 1, v4);
    }

    if (v8 >= *(v9 + 16))
    {
      break;
    }

    _s15ConversationKit11ParticipantVWOcTm_0();
    if (v6[*(v4 + 48)] != 2)
    {
      _s15ConversationKit11ParticipantVWObTm_1();
      v11 = 0;
      return __swift_storeEnumTagSinglePayload(a2, v11, 1, v4);
    }

    ++v8;
    result = _s15ConversationKit11ParticipantVWOhTm_0(v6, type metadata accessor for CaptionSectioner.Caption);
  }

  __break(1u);
  return result;
}

uint64_t CaptionsStateSource.maximumAge.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
  return *(v0 + 72);
}

uint64_t CaptionsStateSource.suppressionAge.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
  return *(v0 + 56);
}

uint64_t closure #3 in CaptionsViewModel.updateExpirationTimer()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  OUTLINED_FUNCTION_4_5();
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptionsViewModel.updateCaptionsVisibility(animated:)(1);
  }

  return result;
}

uint64_t CaptionsViewModel.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 96));
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 112));

  v1 = OBJC_IVAR____TtC15ConversationKit17CaptionsViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t key path getter for CaptionsStateSource.callName : CaptionsStateSource@<X0>(uint64_t *a1@<X8>)
{
  result = CaptionsStateSource.callName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CaptionsViewModel.callName : CaptionsViewModel(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

BOOL specialized CaptionsStateSource.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v5 & 1) == 0;
}

BOOL specialized CaptionsViewModel.shouldNotifyObservers<A>(_:_:)(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for NSObject(0, a3);
    v6 = a1;
    v7 = a2;
    OUTLINED_FUNCTION_45_1();
    v3 = static NSObject.== infix(_:_:)();
  }

  return (v3 & 1) == 0;
}

uint64_t closure #1 in CaptionsStateSource.callName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

void CaptionsStateSource.callName.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

void *key path getter for CaptionsStateSource.groupImage : CaptionsStateSource@<X0>(void *a1@<X8>)
{
  result = CaptionsStateSource.groupImage.getter();
  *a1 = result;
  return result;
}

void key path setter for CaptionsStateSource.groupImage : CaptionsStateSource(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CaptionsStateSource.groupImage.setter(v1);
}

void closure #1 in CaptionsStateSource.groupImage.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
  v5 = a2;
}

void CaptionsStateSource.groupImage.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t CaptionsStateSource.participants.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();
}

uint64_t key path getter for CaptionsStateSource.participants : CaptionsStateSource@<X0>(uint64_t *a1@<X8>)
{
  result = CaptionsStateSource.participants.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in CaptionsStateSource.participants.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

void CaptionsStateSource.participants.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t key path getter for CaptionsStateSource.sections : CaptionsStateSource@<X0>(uint64_t *a1@<X8>)
{
  result = CaptionsStateSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t CaptionsStateSource.sections.setter(uint64_t a1)
{

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit16CaptionSectionerV14SpeakerSectionV_Tt1g5();
  v4 = v3;

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_31();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_0_5();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v8, partial apply for closure #1 in CaptionsStateSource.sections.setter, v9, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
  }
}

uint64_t closure #1 in CaptionsStateSource.sections.setter(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2;
}

uint64_t key path getter for CaptionsStateSource.suppressionAge : CaptionsStateSource@<X0>(uint64_t a1@<X8>)
{
  result = CaptionsStateSource.suppressionAge.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t closure #1 in CaptionsStateSource.suppressionAge.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 56) = a2;
  *(a1 + 64) = a3 & 1;
  return result;
}

void CaptionsStateSource.suppressionAge.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t key path getter for CaptionsStateSource.maximumAge : CaptionsStateSource@<X0>(uint64_t a1@<X8>)
{
  result = CaptionsStateSource.maximumAge.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t CaptionsStateSource.maximumAge.init@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t closure #1 in CaptionsStateSource.maximumAge.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3 & 1;
  return result;
}

void CaptionsStateSource.maximumAge.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t key path getter for CaptionsStateSource.isMinimized : CaptionsStateSource@<X0>(_BYTE *a1@<X8>)
{
  result = CaptionsStateSource.isMinimized.getter();
  *a1 = result & 1;
  return result;
}

uint64_t closure #1 in CaptionsStateSource.isMinimized.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 81) = a2;
  return result;
}

void CaptionsStateSource.isMinimized.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t key path getter for CaptionsStateSource.isGroupCall : CaptionsStateSource@<X0>(_BYTE *a1@<X8>)
{
  result = CaptionsStateSource.isGroupCall.getter();
  *a1 = result & 1;
  return result;
}

uint64_t closure #1 in CaptionsStateSource.isGroupCall.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 82) = a2;
  return result;
}

void CaptionsStateSource.isGroupCall.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t key path getter for CaptionsStateSource.languageModelDownloadingProgress : CaptionsStateSource@<X0>(uint64_t a1@<X8>)
{
  result = CaptionsStateSource.languageModelDownloadingProgress.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t closure #1 in CaptionsStateSource.languageModelDownloadingProgress.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 88) = a2;
  *(a1 + 96) = a3 & 1;
  return result;
}

void CaptionsStateSource.languageModelDownloadingProgress.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t key path getter for CaptionsStateSource.allowsMinimization : CaptionsStateSource@<X0>(_BYTE *a1@<X8>)
{
  result = CaptionsStateSource.allowsMinimization.getter();
  *a1 = result & 1;
  return result;
}

uint64_t closure #1 in CaptionsStateSource.allowsMinimization.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 97) = a2;
  return result;
}

void CaptionsStateSource.allowsMinimization.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t CaptionsStateSource.onRequestMinimize.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();

  return OUTLINED_FUNCTION_38_2();
}

uint64_t CaptionsStateSource.onRequestMinimize.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t closure #1 in CaptionsStateSource.onRequestMinimize.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 104) = a2;
  *(a1 + 112) = a3;
}

void CaptionsStateSource.onRequestMinimize.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t CaptionsStateSource.onRequestDismissControls.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_44();
  v3 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v1, v2);
  OUTLINED_FUNCTION_5_25(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  OUTLINED_FUNCTION_4_5();

  return OUTLINED_FUNCTION_38_2();
}

uint64_t key path getter for CaptionsStateSource.onRequestMinimize : CaptionsStateSource@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v5 = a1();
  v7 = v6;
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v7;
  *a3 = a2;
  a3[1] = result;
  return result;
}

uint64_t key path setter for CaptionsStateSource.onRequestMinimize : CaptionsStateSource(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;

  return a7(a6, v11);
}

uint64_t closure #1 in CaptionsStateSource.onRequestDismissControls.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 120) = a2;
  *(a1 + 128) = a3;
}

void CaptionsStateSource.onRequestDismissControls.modify()
{
  OUTLINED_FUNCTION_50_2();
  v0 = OUTLINED_FUNCTION_7_9();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_6_12(v1);
  swift_getKeyPath();
  OUTLINED_FUNCTION_18_11();
  OUTLINED_FUNCTION_0_44();
  v4 = lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v2, v3);
  OUTLINED_FUNCTION_2_18(v4);

  OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_49();
}

uint64_t CaptionsStateSource.cancellables.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(&lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t CaptionsStateSource.cancellables.setter(unint64_t a1)
{
  swift_beginAccess();

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 136) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    specialized CaptionsViewModel.withMutation<A, B>(keyPath:_:)(v8, partial apply for closure #1 in CaptionsStateSource.cancellables.setter, v9, &OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar, &lazy protocol witness table cache variable for type CaptionsStateSource and conformance CaptionsStateSource, type metadata accessor for CaptionsStateSource);
  }
}

uint64_t closure #1 in CaptionsViewModel.cancellables.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *(a1 + 136) = a2;
}

uint64_t CaptionsStateSource.init()()
{
  type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v50 = v2;
  v51 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA19CurrentValueSubjectCySay15ConversationKit16CaptionSectionerV14SpeakerSectionVGs5NeverOGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v40 = v7;
  v41 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  v38 = v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC9ReceiveOnVy_AA19CurrentValueSubjectCySay15ConversationKit16CaptionSectionerV14SpeakerSectionVGs5NeverOGSo17OS_dispatch_queueCGGMd);
  OUTLINED_FUNCTION_1();
  v46 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  v39 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8ThrottleVy_AC16RemoveDuplicatesVy_AC9ReceiveOnVy_AA19CurrentValueSubjectCySay15ConversationKit16CaptionSectionerV14SpeakerSectionVGs5NeverOGSo17OS_dispatch_queueCGGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  v47 = v14;
  v48 = v15;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_1();
  v42 = v17;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  *(v0 + 40) = v18;
  *(v0 + 48) = v18;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 81) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 257;
  *(v0 + 104) = TPNumberPadCharacter.rawValue.getter;
  *(v0 + 112) = 0;
  *(v0 + 120) = TPNumberPadCharacter.rawValue.getter;
  *(v0 + 128) = 0;
  *(v0 + 136) = v18;
  v49 = v0 + 136;
  v52 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay15ConversationKit16CaptionSectionerV14SpeakerSectionVGs5NeverOGMd);
  swift_allocObject();
  *(v0 + 144) = CurrentValueSubject.init(_:)();
  v45 = OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar;
  ObservationRegistrar.init()();
  v52 = *(v0 + 144);
  OUTLINED_FUNCTION_16_24();
  type metadata accessor for NSObject(v19, v20);

  v21 = static OS_dispatch_queue.main.getter();
  v53 = v21;
  v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v22);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<[CaptionSectioner.SpeakerSection], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay15ConversationKit16CaptionSectionerV14SpeakerSectionVGs5NeverOGMd);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_16_24();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v23, v24);
  v25 = v38;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  OUTLINED_FUNCTION_22_4();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v26, &_s7Combine10PublishersO9ReceiveOnVy_AA19CurrentValueSubjectCySay15ConversationKit16CaptionSectionerV14SpeakerSectionVGs5NeverOGSo17OS_dispatch_queueCGMd);
  v28 = v39;
  v27 = v40;
  Publisher.removeDuplicates(by:)();
  (*(v41 + 8))(v25, v27);
  v29 = v43;
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v30 = [objc_opt_self() mainRunLoop];
  OUTLINED_FUNCTION_42_9(v30);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.ReceiveOn<CurrentValueSubject<[CaptionSectioner.SpeakerSection], Never>, OS_dispatch_queue>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC9ReceiveOnVy_AA19CurrentValueSubjectCySay15ConversationKit16CaptionSectionerV14SpeakerSectionVGs5NeverOGSo17OS_dispatch_queueCGGMd);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  v31 = v42;
  v32 = v44;
  Publisher.throttle<A>(for:scheduler:latest:)();

  (*(v50 + 8))(v29, v51);
  (*(v46 + 8))(v28, v32);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Throttle<Publishers.RemoveDuplicates<Publishers.ReceiveOn<CurrentValueSubject<[CaptionSectioner.SpeakerSection], Never>, OS_dispatch_queue>>, NSRunLoop> and conformance Publishers.Throttle<A, B>, &_s7Combine10PublishersO8ThrottleVy_AC16RemoveDuplicatesVy_AC9ReceiveOnVy_AA19CurrentValueSubjectCySay15ConversationKit16CaptionSectionerV14SpeakerSectionVGs5NeverOGSo17OS_dispatch_queueCGGSo9NSRunLoopCGMd);
  v33 = v47;
  Publisher<>.sink(receiveValue:)();

  (*(v48 + 8))(v31, v33);
  swift_getKeyPath();
  v52 = v0;
  OUTLINED_FUNCTION_0_44();
  lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(v34, v35);
  OUTLINED_FUNCTION_43_5();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_43_5();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  OUTLINED_FUNCTION_21_13();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v36, &_sSay7Combine14AnyCancellableCGMd);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v52 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_43_5();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return v0;
}

void Array<A>.duplicateComparator(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CaptionSectioner.Caption(0);
  v95 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v80 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV0C0VSg_AFtMd);
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV0C0VSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v98 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v80 - v12;
  v93 = type metadata accessor for CaptionSectioner.SpeakerSection(0);
  v13 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v80 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV14SpeakerSectionVSg_AFtMd);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CaptionSectionerV14SpeakerSectionVSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v90 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  v26 = *(a2 + 16);
  if (v26 != *(a1 + 16))
  {
    return;
  }

  v85 = a1;
  v86 = a2;
  v27 = 0;
  v28 = 0;
  v87 = v13;
  v88 = v18;
  v89 = v15;
  v81 = &v80 - v24;
  v82 = v19;
  v80 = v26;
LABEL_3:
  v29 = v93;
  if (v28 == v26)
  {
    v30 = 1;
    v84 = v26;
  }

  else
  {
    if (v28 >= v26)
    {
      goto LABEL_61;
    }

    _s15ConversationKit11ParticipantVWOcTm_0();
    v31 = __OFADD__(v28, 1);
    v32 = v28 + 1;
    if (v31)
    {
      goto LABEL_63;
    }

    v84 = v32;
    v30 = 0;
    v29 = v93;
  }

  v33 = 1;
  v34 = v29;
  __swift_storeEnumTagSinglePayload(v25, v30, 1, v29);
  v35 = v26;
  if (v27 != v26)
  {
    if (v27 >= v26)
    {
      goto LABEL_62;
    }

    _s15ConversationKit11ParticipantVWOcTm_0();
    v35 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_64;
    }

    v33 = 0;
    v34 = v93;
  }

  v83 = v35;
  __swift_storeEnumTagSinglePayload(v90, v33, 1, v34);
  v36 = *(v19 + 48);
  v37 = v92;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  outlined init with take of CaptionSectioner.SpeakerSection?();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v34);
  v39 = __swift_getEnumTagSinglePayload(v37 + v36, 1, v34);
  if (EnumTagSinglePayload == 1)
  {
    if (v39 != 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v92[v36], &_s15ConversationKit16CaptionSectionerV14SpeakerSectionVSgMd);
    }

    return;
  }

  if (v39 == 1)
  {
    v79 = v92;
LABEL_49:
    _s15ConversationKit11ParticipantVWOhTm_0(v79, type metadata accessor for CaptionSectioner.SpeakerSection);
    return;
  }

  _s15ConversationKit11ParticipantVWObTm_1();
  _s15ConversationKit11ParticipantVWObTm_1();
  v40 = *(v93 + 24);
  v41 = v18;
  v42 = *&v18[v40];
  v43 = *&v15[v40];
  v44 = *(v42 + 16);
  if (v44 != *(v43 + 16))
  {
    _s15ConversationKit11ParticipantVWOhTm_0(v89, type metadata accessor for CaptionSectioner.SpeakerSection);
    v79 = v41;
    goto LABEL_49;
  }

  v45 = 0;
  v46 = 0;
  v91 = *(v42 + 16);
  while (1)
  {
    if (v46 == v44)
    {
      v47 = 1;
      v46 = v44;
      v48 = v97;
      goto LABEL_21;
    }

    v48 = v97;
    if ((v46 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v46 >= *(v42 + 16))
    {
      goto LABEL_58;
    }

    _s15ConversationKit11ParticipantVWOcTm_0();
    v47 = 0;
    ++v46;
LABEL_21:
    v49 = 1;
    __swift_storeEnumTagSinglePayload(v48, v47, 1, v4);
    v50 = v44;
    if (v45 != v44)
    {
      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      if (v45 >= *(v43 + 16))
      {
        goto LABEL_60;
      }

      _s15ConversationKit11ParticipantVWOcTm_0();
      v49 = 0;
      v50 = v45 + 1;
    }

    v45 = v50;
    __swift_storeEnumTagSinglePayload(v98, v49, 1, v4);
    v51 = *(v96 + 48);
    v52 = v4;
    v53 = v99;
    outlined init with take of CaptionSectioner.SpeakerSection?();
    outlined init with take of CaptionSectioner.SpeakerSection?();
    v54 = __swift_getEnumTagSinglePayload(v53, 1, v52);
    v55 = v53 + v51;
    v4 = v52;
    v56 = __swift_getEnumTagSinglePayload(v55, 1, v52);
    if (v54 == 1)
    {
      v19 = v82;
      if (v56 == 1)
      {
        v15 = v89;
        _s15ConversationKit11ParticipantVWOhTm_0(v89, type metadata accessor for CaptionSectioner.SpeakerSection);
        v18 = v88;
        _s15ConversationKit11ParticipantVWOhTm_0(v88, type metadata accessor for CaptionSectioner.SpeakerSection);
        v27 = v83;
        v28 = v84;
        v26 = v80;
        v25 = v81;
        goto LABEL_3;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v99[v51], &_s15ConversationKit16CaptionSectionerV0C0VSgMd);
      goto LABEL_48;
    }

    v57 = v94;
    if (v56 == 1)
    {
      v78 = v99;
      goto LABEL_47;
    }

    v58 = v100;
    _s15ConversationKit11ParticipantVWObTm_1();
    v4 = v52;
    _s15ConversationKit11ParticipantVWObTm_1();
    if (*v58 != *v57 || (v59 = v52[5], v60 = &v100[v59], v61 = v57 + v59, static Participant.State.== infix(_:_:)(), (v62 & 1) == 0) || (v63 = type metadata accessor for Participant(0), (static UUID.== infix(_:_:)() & 1) == 0) || (*&v61[*(v63 + 28)] == 0) != (*&v60[*(v63 + 28)] == 0) || (v64 = *(v63 + 24), v65 = &v60[v64], v66 = v60[v64], v67 = &v61[v64], v66 != *v67) || ((v65[1] ^ v67[1]) & 1) != 0 || ((v65[2] ^ v67[2]) & 1) != 0 || ((v65[3] ^ v67[3]) & 1) != 0 || ((v65[4] ^ v67[4]) & 1) != 0 || ((v68 = v52[9], v69 = &v100[v68], v70 = *&v100[v68 + 8], v71 = (v57 + v68), *v69 == *v71) ? (v72 = v70 == v71[1]) : (v72 = 0), !v72 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v100[v52[12]] == 2) == (*(v57 + v52[12]) != 2)))
    {
      _s15ConversationKit11ParticipantVWOhTm_0(v57, type metadata accessor for CaptionSectioner.Caption);
      v78 = v100;
LABEL_47:
      _s15ConversationKit11ParticipantVWOhTm_0(v78, type metadata accessor for CaptionSectioner.Caption);
LABEL_48:
      _s15ConversationKit11ParticipantVWOhTm_0(v89, type metadata accessor for CaptionSectioner.SpeakerSection);
      v79 = v88;
      goto LABEL_49;
    }

    v73 = v52[10];
    v74 = v100;
    v75 = v100[v73];
    v76 = v57;
    v77 = *(v57 + v73);
    _s15ConversationKit11ParticipantVWOhTm_0(v76, type metadata accessor for CaptionSectioner.Caption);
    _s15ConversationKit11ParticipantVWOhTm_0(v74, type metadata accessor for CaptionSectioner.Caption);
    v72 = v75 == v77;
    v44 = v91;
    if (!v72)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t closure #2 in CaptionsStateSource.init()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    CaptionsStateSource.sections.setter(v1);
  }

  return result;
}

uint64_t CaptionsStateSource.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit19CaptionsStateSource___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t CaptionsViewModel.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type CaptionsViewModel and conformance CaptionsViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

void outlined consume of CallDisplayInfo(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 3:

      break;
    case 1:
    case 2:

      break;
    default:
      return;
  }
}

uint64_t keypath_get_35Tm()
{
  OUTLINED_FUNCTION_2_5();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t type metadata completion function for CaptionsViewModel()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t type metadata completion function for CaptionsStateSource()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t outlined init with take of CaptionSectioner.SpeakerSection?()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined init with copy of [CaptionSectioner.SpeakerSection]()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t PipZoomControl.isZoomControlVisible.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl;
  v2 = [*(v0 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl) superview];
  if (v2)
  {

    if (![*(v0 + v1) isHidden])
    {
      return 1;
    }
  }

  v3 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton;
  result = [*(v0 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton) superview];
  if (result)
  {

    return [*(v0 + v3) isHidden] ^ 1;
  }

  return result;
}

id PipZoomControl.userDeviceType.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1;
}

id PipZoomControl.angle.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton);
  v2 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_angle;
  swift_beginAccess();
  CGAffineTransformMakeRotation(&v4, *(v0 + v2));
  return [v1 setTransform_];
}

double PipZoomControl.angle.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_angle;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t (*PipZoomControl.angle.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return PipZoomControl.angle.modify;
}

id PipZoomControl.buttonAlpha.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton);
  v2 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_buttonAlpha;
  swift_beginAccess();
  return [v1 setAlpha_];
}

double PipZoomControl.buttonAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_buttonAlpha;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t PipZoomControl.angle.setter(uint64_t *a1, uint64_t (*a2)(uint64_t), double a3)
{
  v6 = *a1;
  v7 = swift_beginAccess();
  *(v3 + v6) = a3;
  return a2(v7);
}

uint64_t (*PipZoomControl.buttonAlpha.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return PipZoomControl.buttonAlpha.modify;
}

uint64_t PipZoomControl.angle.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id PipZoomControl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *PipZoomControl.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomFactors] = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_pinchGestureRecognizer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCD80]) init];
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_minimumZoomFactor] = 1065353216;
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomCameraSwitchFactorDefault] = 0x40000000;
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControlOffset] = 0x4044000000000000;
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor] = 1090519040;
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactorScaler] = 1077936128;
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor] = 0;
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentCameraUID];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_pinchStartZoomFactor] = 1065353216;
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomFactorScale] = 1065353216;
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_angle] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_buttonAlpha] = 0x3FF0000000000000;
  v3 = [objc_allocWithZone(MEMORY[0x1E6993928]) initWithLayoutStyle_];
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E6993920]) initWithFrame_];
  *&v0[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton] = v4;
  v5 = type metadata accessor for PipZoomControl();
  v17.receiver = v0;
  v17.super_class = v5;
  v6 = objc_msgSendSuper2(&v17, sel_init);
  v7 = *&v6[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl];
  v8 = v6;
  [v7 setDelegate_];
  v16[3] = v5;
  v16[0] = v8;
  objc_allocWithZone(MEMORY[0x1E69DCD80]);
  v9 = v8;
  v10 = @nonobjc UIPinchGestureRecognizer.init(target:action:)(v16, sel_handlePinchWithSender_);
  v11 = *&v9[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_pinchGestureRecognizer];
  *&v9[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_pinchGestureRecognizer] = v10;

  v12 = *&v9[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton];
  OUTLINED_FUNCTION_20();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v12;

  UIControl.addAction(for:handler:)(64, partial apply for closure #1 in PipZoomControl.init(), v13);

  return v9;
}

void closure #1 in PipZoomControl.init()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x208))();
  }
}

Swift::Void __swiftcall PipZoomControl.handlePinch(sender:)(UIPinchGestureRecognizer *sender)
{
  v3 = [(UIPinchGestureRecognizer *)sender state];
  [(UIPinchGestureRecognizer *)sender scale];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x200);

  v4(v3);
}

uint64_t PipZoomControl.handlePinch(state:scale:)(uint64_t result, double a2)
{
  if (result == 2)
  {
    v3 = a2;
    return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x210))(*(v2 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_pinchStartZoomFactor) * v3);
  }

  else if (result == 1)
  {
    *(v2 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_pinchStartZoomFactor) = *(v2 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor);
  }

  return result;
}

Swift::Void __swiftcall PipZoomControl.handleZoomButtonTap()()
{
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_38:
    OUTLINED_FUNCTION_2_9();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationKit);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v5 = 136315394;
    v33 = *(v2 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomFactors);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
    v6 = String.init<A>(reflecting:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v34);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    LODWORD(v33) = *(v2 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v34);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_1BBC58000, v3, v4, "PIPZoomControl: handleZoomButtonTap zoomFactors: %s current: %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_27();
  }

  v12 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomFactors;
  v0 = *(v2 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomFactors);
  v13 = specialized Array.count.getter(v0);
  v14 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor;

  v15 = 0;
  while (1)
  {
    if (v13 == v15)
    {

      v0 = *(v2 + v12);
      v21 = specialized Array.count.getter(v0);

      for (i = 0; ; ++i)
      {
        if (v21 == i)
        {

          return;
        }

        if ((v0 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1BFB22010](i, v0);
        }

        else
        {
          if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v23 = *(v0 + 8 * i + 32);
        }

        v24 = v23;
        if (__OFADD__(i, 1))
        {
          goto LABEL_36;
        }

        [v23 floatValue];
        if (*(v2 + v14) < v25)
        {
          break;
        }
      }

      v32 = [v24 floatValue];
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x210))(v32);

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1BFB22010](v15, v0);
    }

    else
    {
      if (v15 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v16 = *(v0 + 8 * v15 + 32);
    }

    v17 = v16;
    [v16 floatValue];
    v19 = v18;

    if (v19 == *(v2 + v14))
    {
      break;
    }

    if (__OFADD__(v15++, 1))
    {
      goto LABEL_35;
    }
  }

  v26 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  v27 = specialized Array.count.getter(*(v2 + v12));
  if (!v27)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v15 != 0x7FFFFFFFFFFFFFFFLL || v27 != -1)
  {
    v13 = v26 % v27;
    v26 = *(v2 + v12);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v13, (v26 & 0xC000000000000001) == 0, v26);
    if ((v26 & 0xC000000000000001) == 0)
    {
      v29 = *(v26 + 8 * v13 + 32);
LABEL_31:
      [v29 floatValue];
      v31 = v30;

      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x210))(v31);
      return;
    }

LABEL_41:

    v29 = MEMORY[0x1BFB22010](v13, v26);

    goto LABEL_31;
  }

  __break(1u);
}

Swift::Void __swiftcall PipZoomControl.zoomToFactor(zoomFactor:)(Swift::Float zoomFactor)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor) < zoomFactor)
  {
    zoomFactor = *(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor);
  }

  if (*(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_minimumZoomFactor) > zoomFactor)
  {
    zoomFactor = *(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_minimumZoomFactor);
  }

  v2 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor;
  *(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor) = zoomFactor;
  v3 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl) setZoomFactor_];
  [*(v1 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton) setZoomFactor_];
  v4 = [*(v1 + v3) delegate];
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      v6 = *(v1 + v2);
      v7 = *(v1 + v3);
      [v5 zoomControl:v7 didChangeZoomFactor:1 interactionType:v6];
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall PipZoomControl.zoomToFactor(zoomFactor:minFactor:maxFactor:)(Swift::Float zoomFactor, Swift::Float minFactor, Swift::Float maxFactor)
{
  if (maxFactor < zoomFactor)
  {
    zoomFactor = maxFactor;
  }

  if (zoomFactor < minFactor)
  {
    zoomFactor = minFactor;
  }

  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x210))(*(v3 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_minimumZoomFactor) + (((zoomFactor - minFactor) / (maxFactor - minFactor)) * (*(v3 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor) - *(v3 + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_minimumZoomFactor))));
}

Swift::Bool __swiftcall PipZoomControl.updateLocalCamera(localCameraUID:)(Swift::String localCameraUID)
{
  v2 = v1;
  object = localCameraUID._object;
  countAndFlagsBits = localCameraUID._countAndFlagsBits;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v153 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v152 = v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCaptureDevice);

  OUTLINED_FUNCTION_28_14();
  v151 = v15;
  v16 = @nonobjc AVCaptureDevice.__allocating_init(uniqueID:)();
  if (!v16)
  {
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, &static Log.default);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = OUTLINED_FUNCTION_23();
      aBlock = v31;
      *v30 = 136315138;
      v32 = OUTLINED_FUNCTION_28_14();
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v34);
      _os_log_impl(&dword_1BBC58000, v28, v29, "PipZoomControl: No camera device found for localCameraUID=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_27();
    }

    goto LABEL_20;
  }

  v17 = v16;
  if ([v16 position] != 1)
  {
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, &static Log.default);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = OUTLINED_FUNCTION_23();
      aBlock = v39;
      *v38 = 136315138;
      v40 = OUTLINED_FUNCTION_28_14();
      *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v42);
      _os_log_impl(&dword_1BBC58000, v36, v37, "PipZoomControl: Skip none back camera device with localCameraUID=%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_4_4();
    }

LABEL_20:
    OUTLINED_FUNCTION_12_20();
    *v43 = 0;
    v43[1] = 0;

    return 0;
  }

  OUTLINED_FUNCTION_12_20();
  *v18 = countAndFlagsBits;
  v18[1] = object;

  v149 = v5;
  v150 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor;
  v19 = *&v2[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor];
  v147 = v11;
  v148 = v7;
  v146[1] = v10;
  if (v19 != 0.0)
  {
    v45 = one-time initialization token for default;

    if (v45 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, &static Log.default);
    v47 = v17;
    v48 = v2;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_43;
    }

    v51 = OUTLINED_FUNCTION_23();
    v52 = OUTLINED_FUNCTION_23();
    v154 = v47;
    aBlock = v52;
    *v51 = 136315650;
    v53 = v47;
    v54 = String.init<A>(reflecting:)();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &aBlock);

    *(v51 + 4) = v56;
    *(v51 + 12) = 2048;
    *(v51 + 14) = *&v2[v150];
    *(v51 + 22) = 2048;
    *(v51 + 24) = *&v48[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor];
    _os_log_impl(&dword_1BBC58000, v49, v50, "PipZoomControl: Zoom control update camera to %s, currentZoomFactor=%f maximumZoomFactor=%f", v51, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_27();
    goto LABEL_42;
  }

  v20 = [v17 deviceType];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

    goto LABEL_26;
  }

  v26 = OUTLINED_FUNCTION_21_14();

  if (v26)
  {

LABEL_26:
    v57 = OUTLINED_FUNCTION_11_22();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
    v58 = OUTLINED_FUNCTION_10_18();

    v59 = (v58 & 0xC000000000000001);
    v60 = OUTLINED_FUNCTION_3_43();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v60, v61, v58);
    if ((v58 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_13_27();
    }

    else
    {
      v62 = *(v58 + 32);
    }

    OUTLINED_FUNCTION_17_19();
    v63 = &selRef_isRecordingAllowed;
    OUTLINED_FUNCTION_16_25();
    v65 = v64;

    *&v2[v150] = v65;
    v66 = OUTLINED_FUNCTION_11_22();
    v67 = OUTLINED_FUNCTION_15_13();

    v68 = (v67 & 0xC000000000000001);
    v69 = OUTLINED_FUNCTION_25_15();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v69, v70, v67);
    if ((v67 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB22010](1, v67);
    }

    else
    {
      v71 = *(v67 + 40);
    }

    OUTLINED_FUNCTION_17_19();
    OUTLINED_FUNCTION_16_25();
    v73 = v72;

    v74 = v73 * *&v2[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactorScaler];
    v75 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor;
    *&v2[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor] = v74;
    v76 = OUTLINED_FUNCTION_11_22();
    v77 = OUTLINED_FUNCTION_15_13();

    v78 = (v77 & 0xC000000000000001);
    v79 = OUTLINED_FUNCTION_3_43();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v79, v80, v77);
    if ((v77 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_13_27();
    }

    else
    {
      v81 = *(v77 + 32);
    }

    OUTLINED_FUNCTION_17_19();
    OUTLINED_FUNCTION_16_25();
    v83 = v82;

    v84 = floorf(v74 / v83);
    v85 = OUTLINED_FUNCTION_11_22();
    v86 = OUTLINED_FUNCTION_15_13();

    v87 = OUTLINED_FUNCTION_3_43();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v87, v88, v86);
    if ((v86 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_13_27();
    }

    else
    {
      v89 = *(v86 + 32);
    }

    OUTLINED_FUNCTION_17_19();
    OUTLINED_FUNCTION_16_25();
    v91 = v90;

    *&v2[v75] = v84 * v91;
    v92 = OUTLINED_FUNCTION_11_22();
LABEL_35:
    v93 = v92;
    v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v95 = OUTLINED_FUNCTION_3_43();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v95, v96, v94);
    if ((v94 & 0xC000000000000001) != 0)
    {
      v97 = MEMORY[0x1BFB22010](0, v94);
    }

    else
    {
      v97 = *(v94 + 32);
    }

    v98 = v97;

    [v98 v63[346]];
    v100 = v99;

    *&v2[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomFactorScale] = v100;
    goto LABEL_38;
  }

  v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v127 = v126;
  if (v125 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v127 == v128)
  {

    goto LABEL_51;
  }

  v130 = OUTLINED_FUNCTION_21_14();

  if (v130)
  {
LABEL_51:
    v131 = OUTLINED_FUNCTION_11_22();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
    v132 = OUTLINED_FUNCTION_10_18();

    v133 = (v132 & 0xC000000000000001);
    v134 = OUTLINED_FUNCTION_3_43();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v134, v135, v132);
    if ((v132 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_13_27();
    }

    else
    {
      v136 = *(v132 + 32);
    }

    OUTLINED_FUNCTION_17_19();
    v63 = &selRef_isRecordingAllowed;
    OUTLINED_FUNCTION_16_25();
    v138 = v137;

    *&v2[v150] = v138;
    v139 = OUTLINED_FUNCTION_11_22();
    v140 = OUTLINED_FUNCTION_15_13();

    v141 = OUTLINED_FUNCTION_3_43();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v141, v142, v140);
    if ((v140 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_13_27();
    }

    else
    {
      v143 = *(v140 + 32);
    }

    OUTLINED_FUNCTION_17_19();
    OUTLINED_FUNCTION_16_25();
    v145 = v144;

    *&v2[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor] = v145 * *&v2[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactorScaler];
    v92 = OUTLINED_FUNCTION_11_22();
    goto LABEL_35;
  }

  *&v2[v150] = 1065353216;
LABEL_38:
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v101 = type metadata accessor for Logger();
  __swift_project_value_buffer(v101, &static Log.default);
  v102 = v17;
  v103 = v2;
  v49 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v49, v104))
  {
    goto LABEL_43;
  }

  v105 = swift_slowAlloc();
  v106 = swift_slowAlloc();
  v154 = v102;
  aBlock = v106;
  *v105 = 136315906;
  v107 = v102;
  v108 = String.init<A>(reflecting:)();
  v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, &aBlock);

  *(v105 + 4) = v110;
  *(v105 + 12) = 2048;
  *(v105 + 14) = *&v2[v150];
  *(v105 + 22) = 2048;
  *(v105 + 24) = *&v103[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor];
  *(v105 + 32) = 2080;
  v154 = [v107 deviceType];
  type metadata accessor for AVCaptureDeviceType(0);
  v111 = String.init<A>(reflecting:)();
  v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, &aBlock);

  *(v105 + 34) = v113;
  _os_log_impl(&dword_1BBC58000, v49, v104, "PipZoomControl: Zoom control first time set to camera to %s. Initialize currentZoomFactor=%f, maximumZoomFactor=%f for camera: %s", v105, 0x2Au);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_4_4();
LABEL_42:
  OUTLINED_FUNCTION_27();
LABEL_43:

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v114 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v115 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v159 = partial apply for closure #1 in PipZoomControl.updateLocalCamera(localCameraUID:);
  v160 = v115;
  aBlock = MEMORY[0x1E69E9820];
  v156 = 1107296256;
  v157 = thunk for @escaping @callee_guaranteed () -> ();
  v158 = &block_descriptor_9;
  v116 = _Block_copy(&aBlock);

  v117 = v152;
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v118 = OUTLINED_FUNCTION_14_15();
  MEMORY[0x1BFB215C0](v118);
  _Block_release(v116);

  v119 = OUTLINED_FUNCTION_28_14();
  v120(v119);
  (*(v153 + 8))(v117, v147);
  v121 = [objc_opt_self() sharedInstance];
  v122 = [v121 videoDeviceController];

  OUTLINED_FUNCTION_20();
  v123 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v159 = partial apply for closure #2 in PipZoomControl.updateLocalCamera(localCameraUID:);
  v160 = v123;
  aBlock = MEMORY[0x1E69E9820];
  v156 = 1107296256;
  v157 = thunk for @escaping @callee_guaranteed (@guaranteed AVCaptureDevice?) -> ();
  v158 = &block_descriptor_6;
  v124 = _Block_copy(&aBlock);

  [v122 setReapplyCameraZoom_];

  _Block_release(v124);
  return 1;
}

id @nonobjc AVCaptureDevice.__allocating_init(uniqueID:)()
{
  v0 = MEMORY[0x1BFB209B0]();

  v1 = [swift_getObjCClassFromMetadata() deviceWithUniqueID_];

  return v1;
}

void closure #1 in PipZoomControl.updateLocalCamera(localCameraUID:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x210))(*(Strong + OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor));
  }
}

void closure #2 in PipZoomControl.updateLocalCamera(localCameraUID:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    PipZoomControl.reapplyCameraZoom(currentInputDevice:)(a1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed AVCaptureDevice?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

Swift::Void __swiftcall PipZoomControl.addControl(to:above:zoomButtonlayoutGuide:)(UIView *to, UIView *above, UILayoutGuide_optional zoomButtonlayoutGuide)
{
  v4 = v3;
  isa = zoomButtonlayoutGuide.value.super.isa;
  v8 = 0xEF64657A696C6169;
  v9 = 0x74696E4920746F4ELL;
  ObjectType = swift_getObjectType();
  v10 = [(UIView *)above frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1C0);
  v20 = (v19)(v10);
  v21 = -48.0;
  if (v20 != 1)
  {
    v21 = 0.0;
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = -36.0;
  }

  v218.origin.x = OUTLINED_FUNCTION_1_50();
  MinX = CGRectGetMinX(v218);
  v219.origin.x = OUTLINED_FUNCTION_1_50();
  MaxY = CGRectGetMaxY(v219);
  v220.origin.x = OUTLINED_FUNCTION_1_50();
  Width = CGRectGetWidth(v220);
  v221.origin.x = OUTLINED_FUNCTION_1_50();
  MidX = CGRectGetMidX(v221);
  v222.origin.x = OUTLINED_FUNCTION_1_50();
  v211 = CGRectGetMaxY(v222);
  v25 = &v3[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentCameraUID];
  if (*&v3[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentCameraUID + 8])
  {
    v202 = v22;
    v201 = v19;
    v26 = *&v3[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControlOffset];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCaptureDevice);

    v27 = @nonobjc AVCaptureDevice.__allocating_init(uniqueID:)();
    if (v27)
    {
      v28 = v27;
      v209 = above;
      v210 = isa;
      v199 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomFactorScale;
      *&v4[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomFactorScale] = 1065353216;
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.conversationKit);
      v30 = v28;
      v31 = v4;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      v34 = 0x1FB036000;
      v208 = to;
      if (os_log_type_enabled(v32, v33))
      {
        v35 = swift_slowAlloc();
        v217[0] = swift_slowAlloc();
        *v35 = 136316162;
        v36 = [v30 deviceType];
        type metadata accessor for AVCaptureDeviceType(0);
        v37 = String.init<A>(reflecting:)();
        v39 = OUTLINED_FUNCTION_34_9(v37, v38);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        v40 = OUTLINED_FUNCTION_11_22();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
        v41 = String.init<A>(reflecting:)();
        v43 = OUTLINED_FUNCTION_34_9(v41, v42);

        *(v35 + 14) = v43;
        *(v35 + 22) = 2080;
        v44 = [v30 activeFormat];
        AVCaptureDeviceFormat.secondaryNativeResolutionZoomFactors.getter();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd);
        v45 = String.init<A>(reflecting:)();
        v47 = OUTLINED_FUNCTION_34_9(v45, v46);

        *(v35 + 24) = v47;
        v34 = 2080;
        *(v35 + 32) = 2080;
        v48 = String.init<A>(reflecting:)();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v217);

        *(v35 + 34) = v50;
        *(v35 + 42) = 2080;
        v51 = String.init<A>(reflecting:)();
        v53 = OUTLINED_FUNCTION_34_9(v51, v52);

        *(v35 + 44) = v53;
        _os_log_impl(&dword_1BBC58000, v32, v33, "PipZoomControl: Customize zoom control UI for %s virtualDeviceSwitchOverVideoZoomFactors: %s secondaryNativeResolutionZoomFactors: %s min: %s maximum: %s", v35, 0x34u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_27();
      }

      v215 = v30;
      v54 = [v30 deviceType];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v32 == OUTLINED_FUNCTION_18_21() && v34 == v55;
      v57 = v210;
      v206 = v18;
      v207 = v16;
      v204 = MaxY;
      v205 = MidX;
      v203 = v26;
      if (v56)
      {

        goto LABEL_29;
      }

      v58 = OUTLINED_FUNCTION_5_26();

      if (v58)
      {

LABEL_29:
        v67 = [v30 virtualDeviceSwitchOverVideoZoomFactors];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
        v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = OUTLINED_FUNCTION_3_43();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v69, v70, v68);
        if ((v68 & 0xC000000000000001) != 0)
        {
          v191 = OUTLINED_FUNCTION_14_15();
          v71 = MEMORY[0x1BFB22010](v191);
        }

        else
        {
          v71 = *(v68 + 32);
        }

        v72 = v71;

        [v72 floatValue];
        v74 = v73;

        v75 = v74;
        *&v4[v199] = v74;
        v76 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor];
        v77 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_minimumZoomFactor];
        v78 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor];
        v79 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl];
        v80 = v30;
        v81 = [v30 virtualDeviceSwitchOverVideoZoomFactors];
        v82 = OUTLINED_FUNCTION_31_10();

        v83 = OUTLINED_FUNCTION_3_43();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v83, v84, v82);
        if ((v82 & 0xC000000000000001) != 0)
        {
          v192 = OUTLINED_FUNCTION_14_15();
          v85 = MEMORY[0x1BFB22010](v192);
        }

        else
        {
          v85 = *(v82 + 32);
        }

        v86 = v85;

        OUTLINED_FUNCTION_32_6();
        v200 = v87;

        v88 = [v30 virtualDeviceSwitchOverVideoZoomFactors];
        v89 = OUTLINED_FUNCTION_31_10();

        v90 = OUTLINED_FUNCTION_3_43();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v90, v91, v89);
        if ((v89 & 0xC000000000000001) != 0)
        {
          v193 = OUTLINED_FUNCTION_14_15();
          v92 = MEMORY[0x1BFB22010](v193);
        }

        else
        {
          v92 = *(v89 + 32);
        }

        v93 = v92;

        OUTLINED_FUNCTION_32_6();
        v195 = v94;

        v95 = [v30 virtualDeviceSwitchOverVideoZoomFactors];
        v96 = OUTLINED_FUNCTION_31_10();

        v97 = OUTLINED_FUNCTION_25_15();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v97, v98, v96);
        if ((v96 & 0xC000000000000001) != 0)
        {
          v99 = MEMORY[0x1BFB22010](1, v96);
        }

        else
        {
          v99 = *(v96 + 40);
        }

        v100 = v99;

        OUTLINED_FUNCTION_32_6();
        v102 = v101;

        v103 = [v30 virtualDeviceSwitchOverVideoZoomFactors];
        v104 = OUTLINED_FUNCTION_31_10();

        v105 = OUTLINED_FUNCTION_25_15();
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v105, v106, v104);
        v196 = v14;
        if ((v104 & 0xC000000000000001) != 0)
        {
          v107 = MEMORY[0x1BFB22010](1, v104);
        }

        else
        {
          v107 = *(v104 + 40);
        }

        v108 = v107;
        v109 = v209;

        v110 = v78;
        v111 = (v78 / v75);
        OUTLINED_FUNCTION_32_6();
        v113 = v112;

        [v79 configureForTripleDeviceWithZoomFactor:v76 minimumZoomFactor:v77 displayMinimumZoomFactor:(v77 / v75) maximumZoomFactor:v110 displayMaximumZoomFactor:v111 switchOverZoomFactor1:v200 displaySwitchOverZoomFactor1:(v195 / v75) switchOverZoomFactor2:v102 displaySwitchOverZoomFactor2:(v113 / v75)];
        v14 = v196;
        v18 = v206;
        v16 = v207;
        v57 = v210;
        goto LABEL_53;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v32 == OUTLINED_FUNCTION_18_21() && v34 == v114)
      {
      }

      else
      {
        v116 = OUTLINED_FUNCTION_5_26();

        if ((v116 & 1) == 0)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (v32 == OUTLINED_FUNCTION_18_21() && v34 == v161)
          {
          }

          else
          {
            v163 = OUTLINED_FUNCTION_5_26();

            v109 = v209;
            if ((v163 & 1) == 0)
            {
              v77 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_minimumZoomFactor];
              [*&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl] configureForDualDeviceWithZoomFactor:*&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor] minimumZoomFactor:v77 displayMinimumZoomFactor:v77 maximumZoomFactor:*&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor] displayMaximumZoomFactor:*&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor] dualCameraSwitchOverZoomFactor:*&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomCameraSwitchFactorDefault] displayDualCameraSwitchOverZoomFactor:*&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomCameraSwitchFactorDefault]];
              v80 = v30;
              goto LABEL_54;
            }
          }

          v164 = [v30 virtualDeviceSwitchOverVideoZoomFactors];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
          v165 = OUTLINED_FUNCTION_10_18();

          v166 = OUTLINED_FUNCTION_3_43();
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v166, v167, v165);
          v197 = v14;
          v198 = v12;
          if ((v165 & 0xC000000000000001) != 0)
          {
            v194 = OUTLINED_FUNCTION_14_15();
            v168 = MEMORY[0x1BFB22010](v194);
          }

          else
          {
            v168 = *(v165 + 32);
          }

          v169 = v168;

          [v169 floatValue];
          v171 = v170;

          *&v4[v199] = v171;
          v172 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor];
          v77 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_minimumZoomFactor];
          v173 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor];
          v174 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl];
          v175 = [v30 virtualDeviceSwitchOverVideoZoomFactors];
          v176 = OUTLINED_FUNCTION_15_13();

          v177 = OUTLINED_FUNCTION_3_43();
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v177, v178, v176);
          if ((v176 & 0xC000000000000001) != 0)
          {
            v179 = MEMORY[0x1BFB22010](0, v176);
          }

          else
          {
            v179 = *(v176 + 32);
          }

          v180 = v179;

          [v180 floatValue];
          v182 = v181;

          v80 = v30;
          v183 = [v30 virtualDeviceSwitchOverVideoZoomFactors];
          v184 = OUTLINED_FUNCTION_15_13();

          v185 = OUTLINED_FUNCTION_3_43();
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v185, v186, v184);
          if ((v184 & 0xC000000000000001) != 0)
          {
            v187 = MEMORY[0x1BFB22010](0, v184);
          }

          else
          {
            v187 = *(v184 + 32);
          }

          v188 = v187;

          [v188 floatValue];
          v190 = v189;

          [v174 configureForDualDeviceWithZoomFactor:v172 minimumZoomFactor:v77 displayMinimumZoomFactor:(v77 / v171) maximumZoomFactor:v173 displayMaximumZoomFactor:(v173 / v171) dualCameraSwitchOverZoomFactor:v182 displayDualCameraSwitchOverZoomFactor:(v190 / v171)];
          v14 = v197;
          v12 = v198;
          v109 = v209;
          goto LABEL_52;
        }
      }

      v117 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_currentZoomFactor];
      v118 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_minimumZoomFactor];
      v119 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor];
      v120 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl];
      v121 = [v30 virtualDeviceSwitchOverVideoZoomFactors];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      v122 = OUTLINED_FUNCTION_10_18();

      v123 = OUTLINED_FUNCTION_3_43();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v123, v124, v122);
      v109 = v209;
      if ((v122 & 0xC000000000000001) != 0)
      {
        v125 = MEMORY[0x1BFB22010](0, v122);
      }

      else
      {
        v125 = *(v122 + 32);
      }

      v126 = v125;

      [v126 floatValue];
      v128 = v127;

      v80 = v30;
      v129 = [v30 virtualDeviceSwitchOverVideoZoomFactors];
      v130 = OUTLINED_FUNCTION_15_13();

      v131 = OUTLINED_FUNCTION_3_43();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v131, v132, v130);
      if ((v130 & 0xC000000000000001) != 0)
      {
        v133 = MEMORY[0x1BFB22010](0, v130);
      }

      else
      {
        v133 = *(v130 + 32);
      }

      v134 = v133;

      v135 = v118;
      v136 = v118;
      [v134 floatValue];
      v138 = v137;

      v139 = v138;
      v77 = v135;
      [v120 configureForDualDeviceWithZoomFactor:v117 minimumZoomFactor:v136 displayMinimumZoomFactor:v136 maximumZoomFactor:v119 displayMaximumZoomFactor:v119 dualCameraSwitchOverZoomFactor:v128 displayDualCameraSwitchOverZoomFactor:v139];

LABEL_52:
      v18 = v206;
      v16 = v207;
LABEL_53:
      MaxY = v204;
      MidX = v205;
      v26 = v203;
LABEL_54:
      v140 = [v80 deviceType];
      v141 = [v80 virtualDeviceSwitchOverVideoZoomFactors];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
      v142 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v143 = [v80 activeFormat];
      v144 = AVCaptureDeviceFormat.secondaryNativeResolutionZoomFactors.getter();

      v145 = (*(ObjectType + 576))(v140, v142, v144, v77, *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_maximumZoomFactor]);

      *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomFactors] = v145;

      if (v57)
      {
        v146 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton;
        v147 = *&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomButton];
        v148 = v57;
        [(UIView *)v208 insertSubview:v147 aboveSubview:v109];
        [*&v31[v146] setTranslatesAutoresizingMaskIntoConstraints_];
        [*&v31[v146] setAlpha_];
        v149 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v150 = swift_allocObject();
        *(v150 + 16) = xmmword_1BC4BA930;
        v151 = [*&v31[v146] centerXAnchor];
        v152 = [(objc_class *)v148 centerXAnchor];
        v153 = [v151 constraintEqualToAnchor_];

        *(v150 + 32) = v153;
        v154 = [*&v31[v146] centerYAnchor];
        v155 = [(objc_class *)v148 centerYAnchor];
        v156 = [v154 constraintEqualToAnchor_];

        v157 = v208;
        v80 = v215;
        *(v150 + 40) = v156;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        v158.super.isa = Array._bridgeToObjectiveC()().super.isa;

        [v149 activateConstraints_];
      }

      else
      {
        v159 = OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl;
        v157 = v208;
        [(UIView *)v208 insertSubview:*&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_zoomControl] aboveSubview:v109];
        v160 = objc_opt_self();
        v158.super.isa = *&v31[v159];
        [v160 layoutZoomControl:v158.super.isa forLayoutStyle:3 bottomBarAlignmentRect:v201() == 0 bottomBarTransparent:MinX shutterButtonAlignmentRect:MaxY + v202 previewViewAlignmentRect:{Width, 0.0, MidX, v202 + v211 + v26, 0.0, v202, v12, v14, v16, v18}];
      }

      [(UIView *)v157 addGestureRecognizer:*&v31[OBJC_IVAR____TtC15ConversationKit14PipZoomControl_pinchGestureRecognizer]];
      goto LABEL_58;
    }

    if (v25[1])
    {
      v9 = *v25;
      v8 = v25[1];
    }
  }

  v59 = one-time initialization token for default;

  if (v59 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, &static Log.default);

  v216 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v216, v61))
  {
    v62 = swift_slowAlloc();
    v63 = OUTLINED_FUNCTION_23();
    v217[0] = v63;
    *v62 = 136315138;
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v217);

    *(v62 + 4) = v64;
    _os_log_impl(&dword_1BBC58000, v216, v61, "PipZoomControl: No camera device found for localCameraUID=%s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_27();

LABEL_58:
    OUTLINED_FUNCTION_22_13();
    return;
  }

  OUTLINED_FUNCTION_22_13();
}