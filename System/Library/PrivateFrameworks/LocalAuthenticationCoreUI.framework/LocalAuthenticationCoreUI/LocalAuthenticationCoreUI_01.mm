uint64_t sub_25608C6B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return closure #1 in LACUIRatchetViewModel.ratchetStateDidChange(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in LACUIRatchetViewModel.set(state:)(uint64_t a1)
{
  v4 = *(type metadata accessor for LACUIRatchetViewModel.State(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return closure #1 in LACUIRatchetViewModel.set(state:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25608C958@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25608CA24@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  *a2 = result & 1;
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_25608CAE8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

void type metadata completion function for LACUIRatchetViewModel()
{
  v0 = type metadata accessor for LACUIRatchetViewModel.State(319);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for CheckedContinuation<[AnyHashable : Any]?, Error>?();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for Date?();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of LACUIRatchetViewModel.stop(withReason:invalidate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x260);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return v12(a1, a2, a3);
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

void type metadata completion function for LACUIRatchetViewModel.State()
{
  type metadata accessor for (configuration: LACUIAuthCountdownConfiguration)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (result: [AnyHashable : Any]?, error: Error?)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (configuration: LACUIAuthCountdownConfiguration)()
{
  if (!lazy cache variable for type metadata for (configuration: LACUIAuthCountdownConfiguration))
  {
    v0 = type metadata accessor for LACUIAuthCountdownConfiguration();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (configuration: LACUIAuthCountdownConfiguration));
    }
  }
}

uint64_t outlined assign with copy of LACUIRatchetViewModel.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIRatchetViewModel.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined consume of LACUIAuthImageConfiguration?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of LACUIAuthImageConfiguration();
  }

  return result;
}

uint64_t sub_25608D500()
{
  MEMORY[0x259C59B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_3Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();

  a1(*(v2 + 48));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t partial apply for closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:);

  return closure #1 in LACUIRatchetViewModel.confirmBiometry(completion:)(a1, v4, v5, v6, v7, v8);
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of LACUIRatchetViewModel.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(type metadata accessor for LACUIRatchetViewModel.State(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v8 = *v6;
    }

    goto LABEL_15;
  }

  v9 = *v6;
  v10 = v6[1];
  v11 = *(v6 + 16);
  outlined consume of LACUIAuthImageConfiguration();
  v12 = v6[4];

  v13 = v6[6];

  v14 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v15 = v6 + v14[7];
  v16 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = *(v15 + 8);

    v18 = *(v16 + 20);
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
    v20 = *(v15 + *(v16 + 24) + 8);
  }

  v21 = *(v6 + v14[8]);

  v22 = *(v6 + v14[9]);

  v23 = v6 + v14[10];
  if (*(v23 + 8))
  {

    v24 = *(v23 + 24);

    v25 = *(v23 + 40);

    if (*(v23 + 64) != 255)
    {
      v26 = *(v23 + 48);
      v27 = *(v23 + 56);
      outlined consume of LACUIAuthImageConfiguration();
    }
  }

  v28 = v6 + v14[11];
  if (*(v28 + 8))
  {

    v29 = *(v28 + 24);

    v30 = *(v28 + 40);

    if (*(v28 + 64) != 255)
    {
      v31 = *(v28 + 48);
      v32 = *(v28 + 56);
      outlined consume of LACUIAuthImageConfiguration();
    }
  }

LABEL_15:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError()
{
  result = lazy protocol witness table cache variable for type CancellationError and conformance CancellationError;
  if (!lazy protocol witness table cache variable for type CancellationError and conformance CancellationError)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancellationError and conformance CancellationError);
  }

  return result;
}

uint64_t outlined assign with take of LACUIAuthCountdownDelayConfiguration?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for LACDTORatchetStateComposite(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with take of LACUIRatchetViewModel.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t key path getter for LACUIFaceIDSpinnerViewModel.state : LACUIFaceIDSpinnerViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t LACUIFaceIDSpinnerViewModel.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_25608DCF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t LACUIFaceIDSpinnerViewModel.state.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*LACUIFaceIDSpinnerViewModel.state.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return LACUILockViewModel.state.modify;
}

uint64_t key path setter for LACUIFaceIDSpinnerViewModel.$state : LACUIFaceIDSpinnerViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23LACUIFaceIDSpinnerStateV_GMd, &_s7Combine9PublishedV9PublisherVySo23LACUIFaceIDSpinnerStateV_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 120))(v7);
}

uint64_t LACUIFaceIDSpinnerViewModel.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMd, &_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t LACUIFaceIDSpinnerViewModel.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23LACUIFaceIDSpinnerStateV_GMd, &_s7Combine9PublishedV9PublisherVySo23LACUIFaceIDSpinnerStateV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMd, &_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LACUIFaceIDSpinnerViewModel.$state.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23LACUIFaceIDSpinnerStateV_GMd, &_s7Combine9PublishedV9PublisherVySo23LACUIFaceIDSpinnerStateV_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIFaceIDSpinnerViewModel__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMd, &_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LACUILockViewModel.$state.modify;
}

uint64_t LACUIFaceIDSpinnerViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  type metadata accessor for LACUIFaceIDSpinnerState(0);
  Published.init(initialValue:)();
  return v3;
}

uint64_t LACUIFaceIDSpinnerViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMd, &_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIFaceIDSpinnerViewModel__state;
  v8[1] = 0;
  type metadata accessor for LACUIFaceIDSpinnerState(0);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t LACUIFaceIDSpinnerViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIFaceIDSpinnerViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMd, &_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LACUIFaceIDSpinnerViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIFaceIDSpinnerViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMd, &_s7Combine9PublishedVySo23LACUIFaceIDSpinnerStateVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LACUIFaceIDSpinnerViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LACUIFaceIDSpinnerViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LACUIFaceIDSpinnerViewModel()
{
  result = type metadata singleton initialization cache for LACUIFaceIDSpinnerViewModel;
  if (!type metadata singleton initialization cache for LACUIFaceIDSpinnerViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LACUIFaceIDSpinnerViewModel()
{
  type metadata accessor for Published<LACUIFaceIDSpinnerState>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<LACUIFaceIDSpinnerState>()
{
  if (!lazy cache variable for type metadata for Published<LACUIFaceIDSpinnerState>)
  {
    type metadata accessor for LACUIFaceIDSpinnerState(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<LACUIFaceIDSpinnerState>);
    }
  }
}

id LACUIOnenessUnsatisfiablePresentationHandler.__allocating_init(request:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized LACUIOnenessUnsatisfiablePresentationHandler.init(request:)(a1);

  return v4;
}

id LACUIOnenessUnsatisfiablePresentationHandler.init(request:)(void *a1)
{
  v2 = specialized LACUIOnenessUnsatisfiablePresentationHandler.init(request:)(a1);

  return v2;
}

id LACUIOnenessUnsatisfiablePresentationHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIOnenessUnsatisfiablePresentationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized LACUIOnenessUnsatisfiablePresentationHandler.init(request:)(void *a1)
{
  v3 = [objc_opt_self() deviceHasFaceID];
  v4 = [a1 userInterfaceRequest];
  v5 = [v4 clientInfo];

  v6 = [v5 displayName];
  if (!v3)
  {
    if (v6)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v10 = "AUTHENTICATION_REQUIRED";
      v32 = MEMORY[0x277D837D0];
      v33 = lazy protocol witness table accessor for type String and conformance String();
      v30 = v12;
      v31 = v14;

      v11 = 0xD000000000000027;
      goto LABEL_6;
    }

    v19 = "atisfiablePresentationHandler";
    v20 = 0xD000000000000031;
LABEL_9:
    v16 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(v20, (v19 | 0x8000000000000000), 0x75676F6C61746143, 0xE900000000000065);
    v18 = v21;
    goto LABEL_10;
  }

  if (!v6)
  {
    v19 = "ORTED_COMPANION_TOUCHID";
    v20 = 0xD000000000000030;
    goto LABEL_9;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = "FACEID_ANONYMOUS";
  v32 = MEMORY[0x277D837D0];
  v33 = lazy protocol witness table accessor for type String and conformance String();
  v30 = v7;
  v31 = v9;

  v11 = 0xD000000000000026;
LABEL_6:
  specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(v11, (v10 | 0x8000000000000000), 0x75676F6C61746143, 0xE900000000000065);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2560BACC0;
  outlined init with copy of CVarArg(&v30, v15 + 32);
  v16 = String.init(format:_:)();
  v18 = v17;

  __swift_destroy_boxed_opaque_existential_0(&v30);

LABEL_10:
  v22 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000017, 0x80000002560BEAD0, 0x75676F6C61746143, 0xE900000000000065);
  v24 = v23;
  v25 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x435F4E4F54545542, 0xED00004C45434E41, 0x75676F6C61746143, 0xE900000000000065);
  v26 = &v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration];
  *v26 = 3;
  *(v26 + 1) = v22;
  *(v26 + 2) = v24;
  *(v26 + 3) = v16;
  *(v26 + 4) = v18;
  *(v26 + 5) = v25;
  *(v26 + 6) = v27;
  v28 = type metadata accessor for LACUIAlertScenePresentationHandler();
  v34.receiver = v1;
  v34.super_class = v28;
  return objc_msgSendSuper2(&v34, sel_init);
}

uint64_t outlined init with copy of CVarArg(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t default argument 1 of LACUIAuthCountdownView.init(viewModel:colorScheme:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);

  return swift_storeEnumTagMultiPayload();
}

uint64_t LACUIAuthCountdownView.init(viewModel:colorScheme:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for LACUIAuthCountdownViewModel();
  lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel, type metadata accessor for LACUIAuthCountdownViewModel);
  *a2 = ObservedObject.init(wrappedValue:)();
  a2[1] = v4;
  v5 = type metadata accessor for LACUIAuthCountdownView();
  return outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(a1, a2 + *(v5 + 20), &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
}

uint64_t LACUIAuthCountdownView.viewModel.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void LACUIAuthCountdownView.$viewModel.getter()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for LACUIAuthCountdownViewModel();
  lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel, type metadata accessor for LACUIAuthCountdownViewModel);

  JUMPOUT(0x259C58460);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - v11);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v2, &v20 - v11, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x686353726F6C6F43, 0xEB00000000656D65, &v21);
      _os_log_impl(&dword_256063000, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x259C59AD0](v19, -1, -1);
      MEMORY[0x259C59AD0](v18, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - v11);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v2, &v20 - v11, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DynamicTypeSize();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x5463696D616E7944, 0xEF657A6953657079, &v21);
      _os_log_impl(&dword_256063000, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x259C59AD0](v19, -1, -1);
      MEMORY[0x259C59AD0](v18, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t LACUIAuthCountdownView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v67 = type metadata accessor for ColorScheme();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v67);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAA012_ConditionalG0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAGyAqA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleW0VyAA5ColorVGG_AA8SolariumVA9_AGyA9_AYyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentW0VG_AGyAGyAGyAGyACyAEyAGyAGyAA6SpacerVAVGAA05_FlexsR0VG_AGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAA4TextV_A11_AGyA28_AYyAA13TextAlignmentOGGAGyA32_AA08_PaddingR0VGQo_A19_GAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA28__A11_A32_A32_Qo_tGGA34_GA34_GAA06_TraitvW0VyAA0r13PriorityTraitU0VGGAA010_FixedSizeR0VGAGyAGyAGyAGyACyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgAGyAGyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_AGyAGyAiAEAJ_AKQrqd___qd_0_xXEtAaMRd__AaHRd_0_r0_lFQOyACyAEyAGyAA5GroupVyAOyAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAiAE06buttonZ0yQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAGyAA6ButtonVyAGyA28_A25_GGA1_G_AA023BorderedProminentButtonZ0VQo_AYyAA11ControlSizeOGG_A11_AGyA87_AA11_ClipEffectVyAA7CapsuleVGGAGyA87_A89_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA79__A11_AGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyAGyA80_A8_G_AA014BorderedButtonZ0VQo_A86_GA92_GAGyAiAE10fontWeightyQrA_6WeightVSgFQOyA79__Qo_A34_GQo_GAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyA77_yA28_GA34_G_A11_A114_AGyA114_AA011_BackgroundW0VyAA06_ShapeE0VyA91_A7_GGGQo_AGyAGyAGyAGyAGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyAEyA54_12DynamicStackVyAEyAGyAGyAGyAGyATA15_GA8_GA1_GA25_GSg_ACyAEyA35__A35_SgtGGtGG_A22_AQtGGG_AA011PlainButtonZ0VQo_A8_GAYyA7_SgGGA1_GA34_GAA011_BackgroundzW0VyA7_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A11_AGyA164_A34_GQo_A34_GA50_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAA012_ConditionalG0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAGyAqA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleW0VyAA5ColorVGG_AA8SolariumVA9_AGyA9_AYyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentW0VG_AGyAGyAGyAGyACyAEyAGyAGyAA6SpacerVAVGAA05_FlexsR0VG_AGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAA4TextV_A11_AGyA28_AYyAA13TextAlignmentOGGAGyA32_AA08_PaddingR0VGQo_A19_GAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA28__A11_A32_A32_Qo_tGGA34_GA34_GAA06_TraitvW0VyAA0r13PriorityTraitU0VGGAA010_FixedSizeR0VGAGyAGyAGyAGyACyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgAGyAGyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_AGyAGyAiAEAJ_AKQrqd___qd_0_xXEtAaMRd__AaHRd_0_r0_lFQOyACyAEyAGyAA5GroupVyAOyAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAiAE06buttonZ0yQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAGyAA6ButtonVyAGyA28_A25_GGA1_G_AA023BorderedProminentButtonZ0VQo_AYyAA11ControlSizeOGG_A11_AGyA87_AA11_ClipEffectVyAA7CapsuleVGGAGyA87_A89_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA79__A11_AGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyAGyA80_A8_G_AA014BorderedButtonZ0VQo_A86_GA92_GAGyAiAE10fontWeightyQrA_6WeightVSgFQOyA79__Qo_A34_GQo_GAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyA77_yA28_GA34_G_A11_A114_AGyA114_AA011_BackgroundW0VyAA06_ShapeE0VyA91_A7_GGGQo_AGyAGyAGyAGyAGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyAEyA54_12DynamicStackVyAEyAGyAGyAGyAGyATA15_GA8_GA1_GA25_GSg_ACyAEyA35__A35_SgtGGtGG_A22_AQtGGG_AA011PlainButtonZ0VQo_A8_GAYyA7_SgGGA1_GA34_GAA011_BackgroundzW0VyA7_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A11_AGyA164_A34_GQo_A34_GA50_GtGGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE7toolbar_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAA15ModifiedContentVyAKy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAKyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAKyAzA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA18_AKyA18_A6_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AKyAKyAKyAKyAPyARyAKyAKyAA6SpacerVA3_GAA16_FlexFrameLayoutVG_AKyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A20_AKyA37_A6_yAA13TextAlignmentOGGAKyA41_AA14_PaddingLayoutVGQo_A28_GAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA37__A20_A41_A41_Qo_tGGA43_GA43_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAKyAKyAKyAKyAPyAA7ForEachVySayAL35LACUIAuthCountdownItemConfigurationVGSSAL022LACUIAuthCountdownItemC0VGGA43_GA43_GA56_GA59_GSgAKyAKyAL023LACUIAuthCountdownDelayC0VA43_GA59_GSgA31_AKyAKyAcAEAS_ATQrqd___qd_0_xXEtAaVRd__AaBRd_0_r0_lFQOyAPyARyAKyAA0O0VyAXyAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA37_A34_GGA10_G_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGG_A20_AKyA95_AA11_ClipEffectVyAA7CapsuleVGGAKyA95_A97_yAA16RoundedRectangleVGGQo_AcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA87__A20_AKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyAKyA88_A17_G_AA19BorderedButtonStyleVQo_A94_GA100_GAKyAcAE10fontWeightyQrA8_6WeightVSgFQOyA87__Qo_A43_GQo_GAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyA85_yA37_GA43_G_A20_A122_AKyA122_AA19_BackgroundModifierVyAA06_ShapeC0VyA99_A16_GGGQo_AKyAKyAKyAKyAKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyA85_yAA6HStackVyARyAL12DynamicStackVyARyAKyAKyAKyAKyA1_A24_GA17_GA10_GA34_GSg_APyARyA44__A44_SgtGGtGG_A31_AZtGGG_AA16PlainButtonStyleVQo_A17_GA6_yA16_SgGGA10_GA43_GAA24_BackgroundStyleModifierVyA16_GGA104_GGGGA43_GSg_A62_ySayAL28LACUIAuthButtonConfigurationVGSSA164_GtGG_A20_AKyA172_A43_GQo_A43_GA59_GtGGGAL013EmbedInScrollcS14NeededModifierVGA159_G_Qo_Md,  &_s7SwiftUI4ViewPAAE7toolbar_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAA15ModifiedContentVyAKy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAKyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAKyAzA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA18_AKyA18_A6_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AKyAKyAKyAKyAPyARyAKyAKyAA6SpacerVA3_GAA16_FlexFrameLayoutVG_AKyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A20_AKyA37_A6_yAA13TextAlignmentOGGAKyA41_AA14_PaddingLayoutVGQo_A28_GAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA37__A20_A41_A41_Qo_tGGA43_GA43_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAKyAKyAKyAKyAPyAA7ForEachVySayAL35LACUIAuthCountdownItemConfigurationVGSSAL022LACUIAuthCountdownItemC0VGGA43_GA43_GA56_GA59_GSgAKyAKyAL023LACUIAuthCountdownDelayC0VA43_GA59_GSgA31_AKyAKyAcAEAS_ATQrqd___qd_0_xXEtAaVRd__AaBRd_0_r0_lFQOyAPyARyAKyAA0O0VyAXyAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA37_A34_GGA10_G_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGG_A20_AKyA95_AA11_ClipEffectVyAA7CapsuleVGGAKyA95_A97_yAA16RoundedRectangleVGGQo_AcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA87__A20_AKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyAKyA88_A17_G_AA19BorderedButtonStyleVQo_A94_GA100_GAKyAcAE10fontWeightyQrA8_6WeightVSgFQOyA87__Qo_A43_GQo_GAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyA85_yA37_GA43_G_A20_A122_AKyA122_AA19_BackgroundModifierVyAA06_ShapeC0VyA99_A16_GGGQo_AKyAKyAKyAKyAKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyA85_yAA6HStackVyARyAL12DynamicStackVyARyAKyAKyAKyAKyA1_A24_GA17_GA10_GA34_GSg_APyARyA44__A44_SgtGGtGG_A31_AZtGGG_AA16PlainButtonStyleVQo_A17_GA6_yA16_SgGGA10_GA43_GAA24_BackgroundStyleModifierVyA16_GGA104_GGGGA43_GSg_A62_ySayAL28LACUIAuthButtonConfigurationVGSSA164_GtGG_A20_AKyA172_A43_GQo_A43_GA59_GtGGGAL013EmbedInScrollcS14NeededModifierVGA159_G_Qo_MR);
  v69 = *(v74 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x28223BE20](v74);
  v68 = &v66 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE27toolbarBackgroundVisibility_3forQrAA0F0O_AA16ToolbarPlacementVdtFQOyAcAE0D0_AEQrAG_AIdtFQOyAA15ModifiedContentVyALy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyALyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAA012_ConditionalK0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGALyA_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA19_ALyA19_A7_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ALyALyALyALyAQyASyALyALyAA6SpacerVA4_GAA16_FlexFrameLayoutVG_ALyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A21_ALyA38_A7_yAA13TextAlignmentOGGALyA42_AA14_PaddingLayoutVGQo_A29_GAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA38__A21_A42_A42_Qo_tGGA44_GA44_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGALyALyALyALyAQyAA7ForEachVySayAM35LACUIAuthCountdownItemConfigurationVGSSAM022LACUIAuthCountdownItemC0VGGA44_GA44_GA57_GA60_GSgALyALyAM023LACUIAuthCountdownDelayC0VA44_GA60_GSgA32_ALyALyAcAEAT_AUQrqd___qd_0_xXEtAaWRd__AaBRd_0_r0_lFQOyAQyASyALyAA0P0VyAYyAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyALyA38_A35_GGA11_G_AA28BorderedProminentButtonStyleVQo_A7_yAA11ControlSizeOGG_A21_ALyA96_AA11_ClipEffectVyAA7CapsuleVGGALyA96_A98_yAA16RoundedRectangleVGGQo_AcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA88__A21_ALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyALyA89_A18_G_AA19BorderedButtonStyleVQo_A95_GA101_GALyAcAE10fontWeightyQrA9_6WeightVSgFQOyA88__Qo_A44_GQo_GAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyA86_yA38_GA44_G_A21_A123_ALyA123_AA01_E8ModifierVyAA06_ShapeC0VyA100_A17_GGGQo_ALyALyALyALyALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyA86_yAA6HStackVyASyAM12DynamicStackVyASyALyALyALyALyA2_A25_GA18_GA11_GA35_GSg_AQyASyA45__A45_SgtGGtGG_A32_A_tGGG_AA16PlainButtonStyleVQo_A18_GA7_yA17_SgGGA11_GA44_GAA01_E13StyleModifierVyA17_GGA105_GGGGA44_GSg_A63_ySayAM28LACUIAuthButtonConfigurationVGSSA165_GtGG_A21_ALyA173_A44_GQo_A44_GA60_GtGGGAM013EmbedInScrollcT14NeededModifierVGA160_G_Qo__Qo_Md,  &_s7SwiftUI4ViewPAAE27toolbarBackgroundVisibility_3forQrAA0F0O_AA16ToolbarPlacementVdtFQOyAcAE0D0_AEQrAG_AIdtFQOyAA15ModifiedContentVyALy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyALyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAA012_ConditionalK0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGALyA_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA19_ALyA19_A7_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ALyALyALyALyAQyASyALyALyAA6SpacerVA4_GAA16_FlexFrameLayoutVG_ALyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A21_ALyA38_A7_yAA13TextAlignmentOGGALyA42_AA14_PaddingLayoutVGQo_A29_GAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA38__A21_A42_A42_Qo_tGGA44_GA44_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGALyALyALyALyAQyAA7ForEachVySayAM35LACUIAuthCountdownItemConfigurationVGSSAM022LACUIAuthCountdownItemC0VGGA44_GA44_GA57_GA60_GSgALyALyAM023LACUIAuthCountdownDelayC0VA44_GA60_GSgA32_ALyALyAcAEAT_AUQrqd___qd_0_xXEtAaWRd__AaBRd_0_r0_lFQOyAQyASyALyAA0P0VyAYyAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyALyA38_A35_GGA11_G_AA28BorderedProminentButtonStyleVQo_A7_yAA11ControlSizeOGG_A21_ALyA96_AA11_ClipEffectVyAA7CapsuleVGGALyA96_A98_yAA16RoundedRectangleVGGQo_AcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA88__A21_ALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyALyA89_A18_G_AA19BorderedButtonStyleVQo_A95_GA101_GALyAcAE10fontWeightyQrA9_6WeightVSgFQOyA88__Qo_A44_GQo_GAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyA86_yA38_GA44_G_A21_A123_ALyA123_AA01_E8ModifierVyAA06_ShapeC0VyA100_A17_GGGQo_ALyALyALyALyALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyA86_yAA6HStackVyASyAM12DynamicStackVyASyALyALyALyALyA2_A25_GA18_GA11_GA35_GSg_AQyASyA45__A45_SgtGGtGG_A32_A_tGGG_AA16PlainButtonStyleVQo_A18_GA7_yA17_SgGGA11_GA44_GAA01_E13StyleModifierVyA17_GGA105_GGGGA44_GSg_A63_ySayAM28LACUIAuthButtonConfigurationVGSSA165_GtGG_A21_ALyA173_A44_GQo_A44_GA60_GtGGGAM013EmbedInScrollcT14NeededModifierVGA160_G_Qo__Qo_MR);
  v75 = *(v79 - 8);
  v19 = *(v75 + 64);
  MEMORY[0x28223BE20](v79);
  v71 = &v66 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0D20BackgroundVisibility_3forQrAA0G0O_AA16ToolbarPlacementVdtFQOyAcAEAD_AGQrAI_AKdtFQOyAA15ModifiedContentVyAMy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAMyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAA012_ConditionalL0VyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAMyA0_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA20_AMyA20_A8_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AMyAMyAMyAMyARyATyAMyAMyAA6SpacerVA5_GAA16_FlexFrameLayoutVG_AMyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A22_AMyA39_A8_yAA13TextAlignmentOGGAMyA43_AA14_PaddingLayoutVGQo_A30_GAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA39__A22_A43_A43_Qo_tGGA45_GA45_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAMyAMyAMyAMyARyAA7ForEachVySayAN35LACUIAuthCountdownItemConfigurationVGSSAN022LACUIAuthCountdownItemC0VGGA45_GA45_GA58_GA61_GSgAMyAMyAN023LACUIAuthCountdownDelayC0VA45_GA61_GSgA33_AMyAMyAcAEAU_AVQrqd___qd_0_xXEtAaXRd__AaBRd_0_r0_lFQOyARyATyAMyAA0Q0VyAZyAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAMyAA6ButtonVyAMyA39_A36_GGA12_G_AA28BorderedProminentButtonStyleVQo_A8_yAA11ControlSizeOGG_A22_AMyA97_AA11_ClipEffectVyAA7CapsuleVGGAMyA97_A99_yAA16RoundedRectangleVGGQo_AcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA89__A22_AMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyAMyA90_A19_G_AA19BorderedButtonStyleVQo_A96_GA102_GAMyAcAE10fontWeightyQrA10_6WeightVSgFQOyA89__Qo_A45_GQo_GAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyA87_yA39_GA45_G_A22_A124_AMyA124_AA01_F8ModifierVyAA06_ShapeC0VyA101_A18_GGGQo_AMyAMyAMyAMyAMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyA87_yAA6HStackVyATyAN12DynamicStackVyATyAMyAMyAMyAMyA3_A26_GA19_GA12_GA36_GSg_ARyATyA46__A46_SgtGGtGG_A33_A0_tGGG_AA16PlainButtonStyleVQo_A19_GA8_yA18_SgGGA12_GA45_GAA01_F13StyleModifierVyA18_GGA106_GGGGA45_GSg_A64_ySayAN28LACUIAuthButtonConfigurationVGSSA166_GtGG_A22_AMyA174_A45_GQo_A45_GA61_GtGGGAN013EmbedInScrollcU14NeededModifierVGA161_G_Qo__Qo__AMyA134_yATyA33_Sg_A172_tGGA61_GSgQo_Md,  &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0D20BackgroundVisibility_3forQrAA0G0O_AA16ToolbarPlacementVdtFQOyAcAEAD_AGQrAI_AKdtFQOyAA15ModifiedContentVyAMy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAMyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAA012_ConditionalL0VyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAMyA0_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA20_AMyA20_A8_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AMyAMyAMyAMyARyATyAMyAMyAA6SpacerVA5_GAA16_FlexFrameLayoutVG_AMyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A22_AMyA39_A8_yAA13TextAlignmentOGGAMyA43_AA14_PaddingLayoutVGQo_A30_GAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA39__A22_A43_A43_Qo_tGGA45_GA45_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAMyAMyAMyAMyARyAA7ForEachVySayAN35LACUIAuthCountdownItemConfigurationVGSSAN022LACUIAuthCountdownItemC0VGGA45_GA45_GA58_GA61_GSgAMyAMyAN023LACUIAuthCountdownDelayC0VA45_GA61_GSgA33_AMyAMyAcAEAU_AVQrqd___qd_0_xXEtAaXRd__AaBRd_0_r0_lFQOyARyATyAMyAA0Q0VyAZyAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAMyAA6ButtonVyAMyA39_A36_GGA12_G_AA28BorderedProminentButtonStyleVQo_A8_yAA11ControlSizeOGG_A22_AMyA97_AA11_ClipEffectVyAA7CapsuleVGGAMyA97_A99_yAA16RoundedRectangleVGGQo_AcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA89__A22_AMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyAMyA90_A19_G_AA19BorderedButtonStyleVQo_A96_GA102_GAMyAcAE10fontWeightyQrA10_6WeightVSgFQOyA89__Qo_A45_GQo_GAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyA87_yA39_GA45_G_A22_A124_AMyA124_AA01_F8ModifierVyAA06_ShapeC0VyA101_A18_GGGQo_AMyAMyAMyAMyAMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyA87_yAA6HStackVyATyAN12DynamicStackVyATyAMyAMyAMyAMyA3_A26_GA19_GA12_GA36_GSg_ARyATyA46__A46_SgtGGtGG_A33_A0_tGGG_AA16PlainButtonStyleVQo_A19_GA8_yA18_SgGGA12_GA45_GAA01_F13StyleModifierVyA18_GGA106_GGGGA45_GSg_A64_ySayAN28LACUIAuthButtonConfigurationVGSSA166_GtGG_A22_AMyA174_A45_GQo_A45_GA61_GtGGGAN013EmbedInScrollcU14NeededModifierVGA161_G_Qo__Qo__AMyA134_yATyA33_Sg_A172_tGGA61_GSgQo_MR);
  v76 = *(v78 - 8);
  v21 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v72 = &v66 - v22;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAcAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0I20BackgroundVisibility_3forQrAA0L0O_AA16ToolbarPlacementVdtFQOyAcAEAE_AHQrAJ_ALdtFQOyAA15ModifiedContentVyANy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyANyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAA012_ConditionalQ0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGANyA1_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA21_ANyA21_A9_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ANyANyANyANyASyAUyANyANyAA6SpacerVA6_GAA16_FlexFrameLayoutVG_ANyAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A23_ANyA40_A9_yAA13TextAlignmentOGGANyA44_AA14_PaddingLayoutVGQo_A31_GAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA40__A23_A44_A44_Qo_tGGA46_GA46_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGANyANyANyANyASyAA7ForEachVySayAO35LACUIAuthCountdownItemConfigurationVGSSAO022LACUIAuthCountdownItemC0VGGA46_GA46_GA59_GA62_GSgANyANyAO023LACUIAuthCountdownDelayC0VA46_GA62_GSgA34_ANyANyAcAEAV_AWQrqd___qd_0_xXEtAaYRd__AaBRd_0_r0_lFQOyASyAUyANyAA0V0VyA_yA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAcAE11buttonStyleyQrqd__AA09PrimitiveG5StyleRd__lFQOyANyAA0G0VyANyA40_A37_GGA13_G_AA017BorderedProminentG5StyleVQo_A9_yAA11ControlSizeOGG_A23_ANyA98_AA11_ClipEffectVyAA7CapsuleVGGANyA98_A100_yAA16RoundedRectangleVGGQo_AcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA90__A23_ANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyANyA91_A20_G_AA08BorderedG5StyleVQo_A97_GA103_GANyAcAE10fontWeightyQrA11_6WeightVSgFQOyA90__Qo_A46_GQo_GA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyA88_yA40_GA46_G_A23_A125_ANyA125_AA01_K8ModifierVyAA06_ShapeC0VyA102_A19_GGGQo_ANyANyANyANyANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyA88_yAA6HStackVyAUyAO12DynamicStackVyAUyANyANyANyANyA4_A27_GA20_GA13_GA37_GSg_ASyAUyA47__A47_SgtGGtGG_A34_A1_tGGG_AA05PlainG5StyleVQo_A20_GA9_yA19_SgGGA13_GA46_GAA01_K13StyleModifierVyA19_GGA107_GGGGA46_GSg_A65_ySayAO09LACUIAuthG13ConfigurationVGSSA167_GtGG_A23_ANyA175_A46_GQo_A46_GA62_GtGGGAO013EmbedInScrollcZ14NeededModifierVGA162_G_Qo__Qo__ANyA135_yAUyA34_Sg_A173_tGGA62_GSgQo__Qo_Md,  &_s7SwiftUI4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAcAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0I20BackgroundVisibility_3forQrAA0L0O_AA16ToolbarPlacementVdtFQOyAcAEAE_AHQrAJ_ALdtFQOyAA15ModifiedContentVyANy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyANyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAA012_ConditionalQ0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGANyA1_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA21_ANyA21_A9_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ANyANyANyANyASyAUyANyANyAA6SpacerVA6_GAA16_FlexFrameLayoutVG_ANyAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A23_ANyA40_A9_yAA13TextAlignmentOGGANyA44_AA14_PaddingLayoutVGQo_A31_GAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA40__A23_A44_A44_Qo_tGGA46_GA46_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGANyANyANyANyASyAA7ForEachVySayAO35LACUIAuthCountdownItemConfigurationVGSSAO022LACUIAuthCountdownItemC0VGGA46_GA46_GA59_GA62_GSgANyANyAO023LACUIAuthCountdownDelayC0VA46_GA62_GSgA34_ANyANyAcAEAV_AWQrqd___qd_0_xXEtAaYRd__AaBRd_0_r0_lFQOyASyAUyANyAA0V0VyA_yA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAcAE11buttonStyleyQrqd__AA09PrimitiveG5StyleRd__lFQOyANyAA0G0VyANyA40_A37_GGA13_G_AA017BorderedProminentG5StyleVQo_A9_yAA11ControlSizeOGG_A23_ANyA98_AA11_ClipEffectVyAA7CapsuleVGGANyA98_A100_yAA16RoundedRectangleVGGQo_AcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA90__A23_ANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyANyA91_A20_G_AA08BorderedG5StyleVQo_A97_GA103_GANyAcAE10fontWeightyQrA11_6WeightVSgFQOyA90__Qo_A46_GQo_GA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyA88_yA40_GA46_G_A23_A125_ANyA125_AA01_K8ModifierVyAA06_ShapeC0VyA102_A19_GGGQo_ANyANyANyANyANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyA88_yAA6HStackVyAUyAO12DynamicStackVyAUyANyANyANyANyA4_A27_GA20_GA13_GA37_GSg_ASyAUyA47__A47_SgtGGtGG_A34_A1_tGGG_AA05PlainG5StyleVQo_A20_GA9_yA19_SgGGA13_GA46_GAA01_K13StyleModifierVyA19_GGA107_GGGGA46_GSg_A65_ySayAO09LACUIAuthG13ConfigurationVGSSA167_GtGG_A23_ANyA175_A46_GQo_A46_GA62_GtGGGAO013EmbedInScrollcZ14NeededModifierVGA162_G_Qo__Qo__ANyA135_yAUyA34_Sg_A173_tGGA62_GSgQo__Qo_MR);
  v73 = *(v77 - 8);
  v23 = *(v73 + 64);
  MEMORY[0x28223BE20](v77);
  v70 = &v66 - v24;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0x4034000000000000;
  v16[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAKyAuA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleY0VyAA5ColorVGG_AA8SolariumVA13_AKyA13_A1_yAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentY0VG_AKyAKyAKyAKyAA0F0VyAIyAKyAKyAA6SpacerVAZGAA05_FlexuG0VG_AKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAA4TextV_A15_AKyA34_A1_yAA13TextAlignmentOGGAKyA38_AA08_PaddingG0VGQo_A23_GAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA34__A15_A38_A38_Qo_tGGA40_GA40_GAA06_TraitxY0VyAA0g13PriorityTraitW0VGGAA010_FixedSizeG0VGAKyAKyAKyAKyA26_yAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA60_022LACUIAuthCountdownItemD0VGGA40_GA40_GA53_GA56_GSgAKyAKyA60_023LACUIAuthCountdownDelayD0VA40_GA56_GSgA28_AKyAKyAmAEAN_AOQrqd___qd_0_xXEtAaQRd__AaLRd_0_r0_lFQOyA26_yAIyAKyAA5GroupVyASyASyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyAmAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA34_A31_GGA5_G_AA28BorderedProminentButtonStyleVQo_A1_yAA11ControlSizeOGG_A15_AKyA93_AA11_ClipEffectVyAA7CapsuleVGGAKyA93_A95_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA85__A15_AKyAKyAmAEA80_yQrqd__AAA81_Rd__lFQOyAKyA86_A12_G_AA19BorderedButtonStyleVQo_A92_GA98_GAKyAmAE10fontWeightyQrA3_6WeightVSgFQOyA85__Qo_A40_GQo_GASyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyA83_yA34_GA40_G_A15_A120_AKyA120_AA011_BackgroundY0VyAA06_ShapeD0VyA97_A11_GGGQo_AKyAKyAKyAKyAKyAKyAmAEA80_yQrqd__AAA81_Rd__lFQOyA83_yAA6HStackVyAIyA60_12DynamicStackVyAIyAKyAKyAKyAKyAXA19_GA12_GA5_GA31_GSg_A26_yAIyA41__A41_SgtGGtGG_A28_AUtGGG_AA16PlainButtonStyleVQo_A12_GA1_yA11_SgGGA5_GA40_GAA016_BackgroundStyleY0VyA11_GGA102_GGGGA40_GSg_A59_ySayA60_28LACUIAuthButtonConfigurationVGSSA162_GtGG_A15_AKyA170_A40_GQo_A40_GA56_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAKyAuA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleY0VyAA5ColorVGG_AA8SolariumVA13_AKyA13_A1_yAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentY0VG_AKyAKyAKyAKyAA0F0VyAIyAKyAKyAA6SpacerVAZGAA05_FlexuG0VG_AKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAA4TextV_A15_AKyA34_A1_yAA13TextAlignmentOGGAKyA38_AA08_PaddingG0VGQo_A23_GAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA34__A15_A38_A38_Qo_tGGA40_GA40_GAA06_TraitxY0VyAA0g13PriorityTraitW0VGGAA010_FixedSizeG0VGAKyAKyAKyAKyA26_yAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA60_022LACUIAuthCountdownItemD0VGGA40_GA40_GA53_GA56_GSgAKyAKyA60_023LACUIAuthCountdownDelayD0VA40_GA56_GSgA28_AKyAKyAmAEAN_AOQrqd___qd_0_xXEtAaQRd__AaLRd_0_r0_lFQOyA26_yAIyAKyAA5GroupVyASyASyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyAmAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA34_A31_GGA5_G_AA28BorderedProminentButtonStyleVQo_A1_yAA11ControlSizeOGG_A15_AKyA93_AA11_ClipEffectVyAA7CapsuleVGGAKyA93_A95_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA85__A15_AKyAKyAmAEA80_yQrqd__AAA81_Rd__lFQOyAKyA86_A12_G_AA19BorderedButtonStyleVQo_A92_GA98_GAKyAmAE10fontWeightyQrA3_6WeightVSgFQOyA85__Qo_A40_GQo_GASyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyA83_yA34_GA40_G_A15_A120_AKyA120_AA011_BackgroundY0VyAA06_ShapeD0VyA97_A11_GGGQo_AKyAKyAKyAKyAKyAKyAmAEA80_yQrqd__AAA81_Rd__lFQOyA83_yAA6HStackVyAIyA60_12DynamicStackVyAIyAKyAKyAKyAKyAXA19_GA12_GA5_GA31_GSg_A26_yAIyA41__A41_SgtGGtGG_A28_AUtGGG_AA16PlainButtonStyleVQo_A12_GA1_yA11_SgGGA5_GA40_GAA016_BackgroundStyleY0VyA11_GGA102_GGGGA40_GSg_A59_ySayA60_28LACUIAuthButtonConfigurationVGSSA162_GtGG_A15_AKyA170_A40_GQo_A40_GA56_GtGGMR);
  closure #1 in LACUIAuthCountdownView.body.getter(v2, &v16[*(v25 + 44)]);
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>( v16,  v14,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAA012_ConditionalG0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAGyAqA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleW0VyAA5ColorVGG_AA8SolariumVA9_AGyA9_AYyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentW0VG_AGyAGyAGyAGyACyAEyAGyAGyAA6SpacerVAVGAA05_FlexsR0VG_AGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAA4TextV_A11_AGyA28_AYyAA13TextAlignmentOGGAGyA32_AA08_PaddingR0VGQo_A19_GAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA28__A11_A32_A32_Qo_tGGA34_GA34_GAA06_TraitvW0VyAA0r13PriorityTraitU0VGGAA010_FixedSizeR0VGAGyAGyAGyAGyACyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgAGyAGyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_AGyAGyAiAEAJ_AKQrqd___qd_0_xXEtAaMRd__AaHRd_0_r0_lFQOyACyAEyAGyAA5GroupVyAOyAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAiAE06buttonZ0yQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAGyAA6ButtonVyAGyA28_A25_GGA1_G_AA023BorderedProminentButtonZ0VQo_AYyAA11ControlSizeOGG_A11_AGyA87_AA11_ClipEffectVyAA7CapsuleVGGAGyA87_A89_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA79__A11_AGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyAGyA80_A8_G_AA014BorderedButtonZ0VQo_A86_GA92_GAGyAiAE10fontWeightyQrA_6WeightVSgFQOyA79__Qo_A34_GQo_GAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyA77_yA28_GA34_G_A11_A114_AGyA114_AA011_BackgroundW0VyAA06_ShapeE0VyA91_A7_GGGQo_AGyAGyAGyAGyAGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyAEyA54_12DynamicStackVyAEyAGyAGyAGyAGyATA15_GA8_GA1_GA25_GSg_ACyAEyA35__A35_SgtGGtGG_A22_AQtGGG_AA011PlainButtonZ0VQo_A8_GAYyA7_SgGGA1_GA34_GAA011_BackgroundzW0VyA7_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A11_AGyA164_A34_GQo_A34_GA50_GtGGMd,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAA012_ConditionalG0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAGyAqA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleW0VyAA5ColorVGG_AA8SolariumVA9_AGyA9_AYyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentW0VG_AGyAGyAGyAGyACyAEyAGyAGyAA6SpacerVAVGAA05_FlexsR0VG_AGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAA4TextV_A11_AGyA28_AYyAA13TextAlignmentOGGAGyA32_AA08_PaddingR0VGQo_A19_GAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA28__A11_A32_A32_Qo_tGGA34_GA34_GAA06_TraitvW0VyAA0r13PriorityTraitU0VGGAA010_FixedSizeR0VGAGyAGyAGyAGyACyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgAGyAGyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_AGyAGyAiAEAJ_AKQrqd___qd_0_xXEtAaMRd__AaHRd_0_r0_lFQOyACyAEyAGyAA5GroupVyAOyAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAiAE06buttonZ0yQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAGyAA6ButtonVyAGyA28_A25_GGA1_G_AA023BorderedProminentButtonZ0VQo_AYyAA11ControlSizeOGG_A11_AGyA87_AA11_ClipEffectVyAA7CapsuleVGGAGyA87_A89_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA79__A11_AGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyAGyA80_A8_G_AA014BorderedButtonZ0VQo_A86_GA92_GAGyAiAE10fontWeightyQrA_6WeightVSgFQOyA79__Qo_A34_GQo_GAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyA77_yA28_GA34_G_A11_A114_AGyA114_AA011_BackgroundW0VyAA06_ShapeE0VyA91_A7_GGGQo_AGyAGyAGyAGyAGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyAEyA54_12DynamicStackVyAEyAGyAGyAGyAGyATA15_GA8_GA1_GA25_GSg_ACyAEyA35__A35_SgtGGtGG_A22_AQtGGG_AA011PlainButtonZ0VQo_A8_GAYyA7_SgGGA1_GA34_GAA011_BackgroundzW0VyA7_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A11_AGyA164_A34_GQo_A34_GA50_GtGGMR);
  v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v27 = v67;
  v28 = swift_allocObject();
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>( v14,  v28 + v26,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAA012_ConditionalG0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAGyAqA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleW0VyAA5ColorVGG_AA8SolariumVA9_AGyA9_AYyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentW0VG_AGyAGyAGyAGyACyAEyAGyAGyAA6SpacerVAVGAA05_FlexsR0VG_AGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAA4TextV_A11_AGyA28_AYyAA13TextAlignmentOGGAGyA32_AA08_PaddingR0VGQo_A19_GAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA28__A11_A32_A32_Qo_tGGA34_GA34_GAA06_TraitvW0VyAA0r13PriorityTraitU0VGGAA010_FixedSizeR0VGAGyAGyAGyAGyACyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgAGyAGyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_AGyAGyAiAEAJ_AKQrqd___qd_0_xXEtAaMRd__AaHRd_0_r0_lFQOyACyAEyAGyAA5GroupVyAOyAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAiAE06buttonZ0yQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAGyAA6ButtonVyAGyA28_A25_GGA1_G_AA023BorderedProminentButtonZ0VQo_AYyAA11ControlSizeOGG_A11_AGyA87_AA11_ClipEffectVyAA7CapsuleVGGAGyA87_A89_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA79__A11_AGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyAGyA80_A8_G_AA014BorderedButtonZ0VQo_A86_GA92_GAGyAiAE10fontWeightyQrA_6WeightVSgFQOyA79__Qo_A34_GQo_GAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyA77_yA28_GA34_G_A11_A114_AGyA114_AA011_BackgroundW0VyAA06_ShapeE0VyA91_A7_GGGQo_AGyAGyAGyAGyAGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyAEyA54_12DynamicStackVyAEyAGyAGyAGyAGyATA15_GA8_GA1_GA25_GSg_ACyAEyA35__A35_SgtGGtGG_A22_AQtGGG_AA011PlainButtonZ0VQo_A8_GAYyA7_SgGGA1_GA34_GAA011_BackgroundzW0VyA7_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A11_AGyA164_A34_GQo_A34_GA50_GtGGMd,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAA012_ConditionalG0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAGyAqA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleW0VyAA5ColorVGG_AA8SolariumVA9_AGyA9_AYyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentW0VG_AGyAGyAGyAGyACyAEyAGyAGyAA6SpacerVAVGAA05_FlexsR0VG_AGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAA4TextV_A11_AGyA28_AYyAA13TextAlignmentOGGAGyA32_AA08_PaddingR0VGQo_A19_GAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA28__A11_A32_A32_Qo_tGGA34_GA34_GAA06_TraitvW0VyAA0r13PriorityTraitU0VGGAA010_FixedSizeR0VGAGyAGyAGyAGyACyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgAGyAGyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_AGyAGyAiAEAJ_AKQrqd___qd_0_xXEtAaMRd__AaHRd_0_r0_lFQOyACyAEyAGyAA5GroupVyAOyAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAiAE06buttonZ0yQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAGyAA6ButtonVyAGyA28_A25_GGA1_G_AA023BorderedProminentButtonZ0VQo_AYyAA11ControlSizeOGG_A11_AGyA87_AA11_ClipEffectVyAA7CapsuleVGGAGyA87_A89_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA79__A11_AGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyAGyA80_A8_G_AA014BorderedButtonZ0VQo_A86_GA92_GAGyAiAE10fontWeightyQrA_6WeightVSgFQOyA79__Qo_A34_GQo_GAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyA77_yA28_GA34_G_A11_A114_AGyA114_AA011_BackgroundW0VyAA06_ShapeE0VyA91_A7_GGGQo_AGyAGyAGyAGyAGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyAEyA54_12DynamicStackVyAEyAGyAGyAGyAGyATA15_GA8_GA1_GA25_GSg_ACyAEyA35__A35_SgtGGtGG_A22_AQtGGG_AA011PlainButtonZ0VQo_A8_GAYyA7_SgGGA1_GA34_GAA011_BackgroundzW0VyA7_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A11_AGyA164_A34_GQo_A34_GA50_GtGGMR);
  v29 = *(type metadata accessor for LACUIAuthCountdownView() + 20);
  v80 = v2;
  specialized Environment.wrappedValue.getter(v9);
  (*(v3 + 16))(v7, v9, v27);
  v30 = (*(v3 + 88))(v7, v27);
  if (v30 == *MEMORY[0x277CDF3D0])
  {
    v31 = [objc_opt_self() systemBackgroundColor];
    v32 = Color.init(uiColor:)();
    (*(v3 + 8))(v9, v27);
  }

  else
  {
    v33 = v30;
    v34 = *MEMORY[0x277CDF3C0];
    v35 = objc_opt_self();
    v36 = (v3 + 8);
    if (v33 == v34)
    {
      v37 = [v35 secondarySystemBackgroundColor];
      v32 = Color.init(uiColor:)();
      (*v36)(v9, v27);
    }

    else
    {
      v38 = [v35 systemBackgroundColor];
      v32 = Color.init(uiColor:)();
      v39 = *v36;
      (*v36)(v9, v27);
      v39(v7, v27);
    }
  }

  v40 = static Edge.Set.all.getter();
  v82 = partial apply for specialized closure #1 in View.embedInGlassGroup();
  v83 = v28;
  LOBYTE(v84) = 1;
  v85 = v32;
  v86 = v40;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMR);
  v41 = *(type metadata accessor for ToolbarPlacement() - 8);
  v42 = *(v41 + 72);
  v43 = *(v41 + 80);
  v44 = swift_allocObject();
  v66 = xmmword_2560BACC0;
  *(v44 + 16) = xmmword_2560BACC0;
  static ToolbarPlacement.navigationBar.getter();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA9TupleViewVyACyAA0L0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0L14InputPredicateRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGACyAtA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA12_ACyA12_A0_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ACyACyACyACyAHyAJyACyACyAA6SpacerVAYGAA05_FlexxW0VG_ACyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyAA4TextV_A14_ACyA31_A0_yAA13TextAlignmentOGGACyA35_AA08_PaddingW0VGQo_A22_GAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA31__A14_A35_A35_Qo_tGGA37_GA37_GAA21_TraitWritingModifierVyAA0w13PriorityTraitZ0VGGAA010_FixedSizeW0VGACyACyACyACyAHyAA7ForEachVySayAD35LACUIAuthCountdownItemConfigurationVGSSAD022LACUIAuthCountdownItemL0VGGA37_GA37_GA50_GA53_GSgACyACyAD023LACUIAuthCountdownDelayL0VA37_GA53_GSgA25_ACyACyAlAEAM_ANQrqd___qd_0_xXEtAaPRd__AaKRd_0_r0_lFQOyAHyAJyACyAA0I0VyARyARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAlAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyACyA31_A28_GGA4_G_AA28BorderedProminentButtonStyleVQo_A0_yAA11ControlSizeOGG_A14_ACyA89_AA11_ClipEffectVyAA7CapsuleVGGACyA89_A91_yAA16RoundedRectangleVGGQo_AlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA81__A14_ACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyACyA82_A11_G_AA19BorderedButtonStyleVQo_A88_GA94_GACyAlAE10fontWeightyQrA2_6WeightVSgFQOyA81__Qo_A37_GQo_GARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyA79_yA31_GA37_G_A14_A116_ACyA116_AA19_BackgroundModifierVyAA06_ShapeL0VyA93_A10_GGGQo_ACyACyACyACyACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyA79_yAA6HStackVyAJyAD12DynamicStackVyAJyACyACyACyACyAWA18_GA11_GA4_GA28_GSg_AHyAJyA38__A38_SgtGGtGG_A25_ATtGGG_AA16PlainButtonStyleVQo_A11_GA0_yA10_SgGGA4_GA37_GAA24_BackgroundStyleModifierVyA10_GGA98_GGGGA37_GSg_A56_ySayAD28LACUIAuthButtonConfigurationVGSSA158_GtGG_A14_ACyA166_A37_GQo_A37_GA53_GtGGGAD013EmbedInScrolllN14NeededModifierVGA153_GMd,  &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA9TupleViewVyACyAA0L0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0L14InputPredicateRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGACyAtA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA12_ACyA12_A0_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ACyACyACyACyAHyAJyACyACyAA6SpacerVAYGAA05_FlexxW0VG_ACyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyAA4TextV_A14_ACyA31_A0_yAA13TextAlignmentOGGACyA35_AA08_PaddingW0VGQo_A22_GAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA31__A14_A35_A35_Qo_tGGA37_GA37_GAA21_TraitWritingModifierVyAA0w13PriorityTraitZ0VGGAA010_FixedSizeW0VGACyACyACyACyAHyAA7ForEachVySayAD35LACUIAuthCountdownItemConfigurationVGSSAD022LACUIAuthCountdownItemL0VGGA37_GA37_GA50_GA53_GSgACyACyAD023LACUIAuthCountdownDelayL0VA37_GA53_GSgA25_ACyACyAlAEAM_ANQrqd___qd_0_xXEtAaPRd__AaKRd_0_r0_lFQOyAHyAJyACyAA0I0VyARyARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAlAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyACyA31_A28_GGA4_G_AA28BorderedProminentButtonStyleVQo_A0_yAA11ControlSizeOGG_A14_ACyA89_AA11_ClipEffectVyAA7CapsuleVGGACyA89_A91_yAA16RoundedRectangleVGGQo_AlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA81__A14_ACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyACyA82_A11_G_AA19BorderedButtonStyleVQo_A88_GA94_GACyAlAE10fontWeightyQrA2_6WeightVSgFQOyA81__Qo_A37_GQo_GARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyA79_yA31_GA37_G_A14_A116_ACyA116_AA19_BackgroundModifierVyAA06_ShapeL0VyA93_A10_GGGQo_ACyACyACyACyACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyA79_yAA6HStackVyAJyAD12DynamicStackVyAJyACyACyACyACyAWA18_GA11_GA4_GA28_GSg_AHyAJyA38__A38_SgtGGtGG_A25_ATtGGG_AA16PlainButtonStyleVQo_A11_GA0_yA10_SgGGA4_GA37_GAA24_BackgroundStyleModifierVyA10_GGA98_GGGGA37_GSg_A56_ySayAD28LACUIAuthButtonConfigurationVGSSA158_GtGG_A14_ACyA166_A37_GQo_A37_GA53_GtGGGAD013EmbedInScrolllN14NeededModifierVGA153_GMR);
  v46 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GlassGroup<VStack<TupleView<(ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>?, ModifiedContent<ModifiedContent<LACUIAuthCountdownDelayView, _PaddingLayout>, _FixedSizeLayout>?, Sp();
  v47 = v68;
  MEMORY[0x259C58AD0](1, v44, v45, v46);

  v48 = static Solarium.isEnabled.getter();
  v49 = swift_allocObject();
  *(v49 + 16) = v66;
  static ToolbarPlacement.navigationBar.getter();
  v82 = v45;
  v83 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  if (v48)
  {
    v51 = 1;
  }

  else
  {
    v51 = 2;
  }

  v52 = v71;
  v53 = v74;
  MEMORY[0x259C58AA0](v51, v49, v74, OpaqueTypeConformance2);

  v54 = (*(v69 + 8))(v47, v53);
  MEMORY[0x28223BE20](v54);
  v55 = v80;
  *(&v66 - 2) = v80;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGSgMR);
  v82 = v53;
  v83 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout>? and conformance <A> A?();
  v59 = v72;
  v60 = v79;
  View.toolbar<A>(content:)();
  (*(v75 + 8))(v52, v60);
  v82 = v60;
  v83 = v56;
  v84 = v57;
  v85 = v58;
  swift_getOpaqueTypeConformance2();
  v61 = v70;
  v62 = v78;
  View.navigationBarBackButtonHidden(_:)();
  (*(v76 + 8))(v59, v62);
  v63 = *(v55 + 8) + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration;
  v64 = type metadata accessor for LACUIAuthCountdownConfiguration();
  specialized View.embedInNavigationStack(if:)(*(v63 + *(v64 + 52)), v81);
  return (*(v73 + 8))(v61, v77);
}

uint64_t closure #1 in LACUIAuthCountdownView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMR);
  v3 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v146 = (&v122 - v4);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0C14InputPredicateRd__AaBRd_0_r0_lFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalL0VyAPyAcAEAD_AE4elseQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyALyAA0S0VyALyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVALyA13_AA11_ClipEffectVyAA7CapsuleVGGALyA13_A17_yAA16RoundedRectangleVGGQo_AcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyA__A15_ALyALyAcAEARyQrqd__AaSRd__lFQOyALyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GALyAcAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAUyAWGA44_G_A15_A49_ALyA49_AA19_BackgroundModifierVyAA06_ShapeC0VyA19_A30_GGGQo_ALyALyALyALyALyALyAcAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAJy023LocalAuthenticationCoreB012DynamicStackVyAJyALyALyALyALyALyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AHyAJyALyALyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ALyA118_A44_GQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0C14InputPredicateRd__AaBRd_0_r0_lFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalL0VyAPyAcAEAD_AE4elseQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyALyAA0S0VyALyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVALyA13_AA11_ClipEffectVyAA7CapsuleVGGALyA13_A17_yAA16RoundedRectangleVGGQo_AcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyA__A15_ALyALyAcAEARyQrqd__AaSRd__lFQOyALyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GALyAcAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAUyAWGA44_G_A15_A49_ALyA49_AA19_BackgroundModifierVyAA06_ShapeC0VyA19_A30_GGGQo_ALyALyALyALyALyALyAcAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAJy023LocalAuthenticationCoreB012DynamicStackVyAJyALyALyALyALyALyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AHyAJyALyALyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ALyA118_A44_GQo_MR);
  v145 = *(v148 - 8);
  v5 = *(v145 + 64);
  MEMORY[0x28223BE20](v148);
  v144 = &v122 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GMR);
  v7 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v122 - v8;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMR);
  v9 = *(*(v141 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v141);
  v151 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v139 = &v122 - v13;
  MEMORY[0x28223BE20](v12);
  v150 = &v122 - v14;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGMR);
  v136 = *(v137 - 8);
  v15 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v123 = &v122 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v135 = &v122 - v19;
  v134 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v133 = *(v134 - 8);
  v20 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v122 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v149 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v157 = &v122 - v26;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGMR);
  v131 = *(v132 - 8);
  v27 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v124 = (&v122 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v138 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v156 = &v122 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_AGyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVAGyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAGyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_AGyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVAGyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAGyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v122 - v36;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GMR);
  v38 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v130 = &v122 - v39;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GMR);
  v40 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v127 = &v122 - v41;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGMR);
  v42 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v44 = &v122 - v43;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMR);
  v45 = *(*(v125 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v125);
  v155 = &v122 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v122 - v49;
  MEMORY[0x28223BE20](v48);
  v158 = &v122 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAA012_ConditionalK0VyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGAIyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_AIyA5_AUyAA19SymbolRenderingModeVSgGGQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAA012_ConditionalK0VyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGAIyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_AIyA5_AUyAA19SymbolRenderingModeVSgGGQo_MR);
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v122 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMR);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v154 = &v122 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v62 = &v122 - v61;
  v140 = a1;
  LACUIAuthCountdownView.lockIcon.getter();
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMR);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA19SymbolRenderingModeVSgGGMR);
  v65 = lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  v66 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
  v159 = v63;
  v160 = MEMORY[0x277CE1350];
  v161 = v63;
  v162 = v64;
  v163 = v65;
  v164 = MEMORY[0x277CE1340];
  v165 = v65;
  v166 = v66;
  swift_getOpaqueTypeConformance2();
  v153 = v62;
  View.accessibilityHidden(_:)();
  (*(v53 + 8))(v56, v52);
  if (static Solarium.isEnabled.getter())
  {
    v67 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v67 = static HorizontalAlignment.center.getter();
  }

  *v37 = v67;
  *(v37 + 1) = 0;
  v68 = 1;
  v37[16] = 1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6SpacerVAA06_FrameG0VGAA05_FlexlG0VG_AKyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaTRd_0_AaTRd_1_r1_lFQOyAA4TextV_AA8SolariumVAKyA_AA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAKyA7_AA08_PaddingG0VGQo_AA023AccessibilityAttachmentY0VGAuAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaTRd_0_AaTRd_1_r1_lFQOyA__A1_A7_A7_Qo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6SpacerVAA06_FrameG0VGAA05_FlexlG0VG_AKyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaTRd_0_AaTRd_1_r1_lFQOyAA4TextV_AA8SolariumVAKyA_AA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAKyA7_AA08_PaddingG0VGQo_AA023AccessibilityAttachmentY0VGAuAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaTRd_0_AaTRd_1_r1_lFQOyA__A1_A7_A7_Qo_tGGMR);
  v70 = v140;
  closure #1 in LACUIAuthCountdownView.informativeText.getter(v140, &v37[*(v69 + 44)]);
  v71 = static Edge.Set.horizontal.getter();
  v72 = v130;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v37, v130, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_AGyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVAGyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAGyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_AGyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVAGyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAGyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGMR);
  v73 = v72 + *(v129 + 36);
  *v73 = v71;
  *(v73 + 8) = 0u;
  *(v73 + 24) = 0u;
  *(v73 + 40) = 1;
  v74 = static Edge.Set.horizontal.getter();
  v75 = v72;
  v76 = v127;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v75, v127, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GMR);
  v77 = v76 + *(v128 + 36);
  *v77 = v74;
  *(v77 + 8) = 0u;
  *(v77 + 24) = 0u;
  *(v77 + 40) = 1;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v76, v44, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GMR);
  *&v44[*(v126 + 36)] = 0x3FF0000000000000;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v44, v50, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGMR);
  *&v50[*(v125 + 36)] = 256;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v50, v158, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMR);
  v78 = *(v70 + 8) + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration;
  v79 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v80 = *(v79 + 32);
  v81 = *(v78 + v80);
  if (v81)
  {
    v82 = *(v78 + v80);

    v83 = static HorizontalAlignment.leading.getter();
    v84 = v124;
    *v124 = v83;
    v84[1] = 0x4038000000000000;
    *(v84 + 16) = 0;
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAJ0mnoD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAJ0mnoD0VGGMR) + 44);
    v159 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMd, &_sSay25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [LACUIAuthCountdownItemConfiguration] and conformance [A], &_sSay25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMd, &_sSay25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMR);
    lazy protocol witness table accessor for type LACUIAuthCountdownItemView and conformance LACUIAuthCountdownItemView();
    lazy protocol witness table accessor for type LACUIAuthCountdownItemConfiguration and conformance LACUIAuthCountdownItemConfiguration();
    ForEach<>.init(_:content:)();
    v86 = static Edge.Set.horizontal.getter();
    v87 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGMR) + 36);
    *v87 = v86;
    *(v87 + 8) = 0u;
    *(v87 + 24) = 0u;
    v87[40] = 1;
    v88 = static Edge.Set.all.getter();
    v89 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGMR) + 36);
    *v89 = v88;
    *(v89 + 8) = 0u;
    *(v89 + 24) = 0u;
    v89[40] = 1;
    *(v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGMR) + 36)) = 0x3FF0000000000000;
    v90 = v132;
    *(v84 + *(v132 + 36)) = 256;
    v91 = v84;
    v92 = v156;
    outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v91, v156, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGMR);
    v68 = 0;
  }

  else
  {
    v92 = v156;
    v90 = v132;
  }

  (*(v131 + 56))(v92, v68, 1, v90);
  v93 = v78 + *(v79 + 28);
  v94 = v135;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v93, v135, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  if ((*(v133 + 48))(v94, 1, v134) == 1)
  {
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v94, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
    v95 = 1;
    v96 = v157;
    v97 = v137;
  }

  else
  {
    v98 = v122;
    outlined init with take of RoundedRectangle(v94, v122, type metadata accessor for LACUIAuthCountdownDelayConfiguration);
    v99 = v123;
    outlined init with copy of LACUIAuthCountdownView(v98, v123, type metadata accessor for LACUIAuthCountdownDelayConfiguration);
    v100 = static Edge.Set.vertical.getter();
    outlined destroy of LACUIAuthCountdownDelayConfiguration(v98);
    v101 = v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGMR) + 36);
    *v101 = v100;
    *(v101 + 8) = 0u;
    *(v101 + 24) = 0u;
    *(v101 + 40) = 1;
    v97 = v137;
    *(v99 + *(v137 + 36)) = 256;
    v96 = v157;
    outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v99, v157, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGMR);
    v95 = 0;
  }

  (*(v136 + 56))(v96, v95, 1, v97);
  if (static Solarium.isEnabled.getter())
  {
    v102 = 0x4028000000000000;
  }

  else
  {
    v102 = 0;
  }

  v103 = static HorizontalAlignment.center.getter();
  v104 = v146;
  *v146 = v103;
  *(v104 + 8) = v102;
  *(v104 + 16) = 0;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalJ0VyAOyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAKyAqAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAKyAA0V0VyAKyAA4TextVAA010_FlexFrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentvT0VQo_A5_yAA11ControlSizeOGG_AA8SolariumVAKyA17_AA11_ClipEffectVyAA7CapsuleVGGAKyA17_A21_yAA16RoundedRectangleVGGQo_AqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyA3__A19_AKyAKyAqAEAVyQrqd__AaWRd__lFQOyAKyA10_AA011_ForegroundT8ModifierVyAA5ColorVGG_AA08BorderedvT0VQo_A16_GA24_GAKyAqAE10fontWeightyQrA7_6WeightVSgFQOyA3__Qo_AA08_PaddingG0VGQo_GAOyAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAKyAYyA_GA48_G_A19_A53_AKyA53_AA19_BackgroundModifierVyAA06_ShapeD0VyA23_A34_GGGQo_AKyAKyAKyAKyAKyAKyAqAEAVyQrqd__AaWRd__lFQOyAYyAA6HStackVyAIy023LocalAuthenticationCoreB012DynamicStackVyAIyAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGA5_yAA19SymbolRenderingModeVSgGGA35_GA9_GA1_GSg_AA0F0VyAIyAKyAKyA_A5_yAA0W9AlignmentOGGA48_G_A87_SgtGGtGG_AA6SpacerVA68_tGGG_AA05PlainvT0VQo_A35_GA5_yA34_SgGGA9_GA48_GAA011_BackgroundT8ModifierVyA34_GGA28_GGGGA48_GSg_AA7ForEachVySayA64_09LACUIAuthV13ConfigurationVGSSA114_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalJ0VyAOyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAKyAqAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAKyAA0V0VyAKyAA4TextVAA010_FlexFrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentvT0VQo_A5_yAA11ControlSizeOGG_AA8SolariumVAKyA17_AA11_ClipEffectVyAA7CapsuleVGGAKyA17_A21_yAA16RoundedRectangleVGGQo_AqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyA3__A19_AKyAKyAqAEAVyQrqd__AaWRd__lFQOyAKyA10_AA011_ForegroundT8ModifierVyAA5ColorVGG_AA08BorderedvT0VQo_A16_GA24_GAKyAqAE10fontWeightyQrA7_6WeightVSgFQOyA3__Qo_AA08_PaddingG0VGQo_GAOyAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAKyAYyA_GA48_G_A19_A53_AKyA53_AA19_BackgroundModifierVyAA06_ShapeD0VyA23_A34_GGGQo_AKyAKyAKyAKyAKyAKyAqAEAVyQrqd__AaWRd__lFQOyAYyAA6HStackVyAIy023LocalAuthenticationCoreB012DynamicStackVyAIyAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGA5_yAA19SymbolRenderingModeVSgGGA35_GA9_GA1_GSg_AA0F0VyAIyAKyAKyA_A5_yAA0W9AlignmentOGGA48_G_A87_SgtGGtGG_AA6SpacerVA68_tGGG_AA05PlainvT0VQo_A35_GA5_yA34_SgGGA9_GA48_GAA011_BackgroundT8ModifierVyA34_GGA28_GGGGA48_GSg_AA7ForEachVySayA64_09LACUIAuthV13ConfigurationVGSSA114_GtGGMR);
  closure #1 in LACUIAuthCountdownView.buttons.getter(v70, v104 + *(v105 + 44));
  Solarium.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyAKyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_ACyACyAmAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeG0VyA19_A30_GGGQo_ACyACyACyACyACyACyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAGy023LocalAuthenticationCoreB012DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AEyAGyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGA44_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyAKyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_ACyACyAmAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeG0VyA19_A30_GGGQo_ACyACyACyACyACyACyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAGy023LocalAuthenticationCoreB012DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AEyAGyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGA44_GMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>, _PaddingLayout>?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:els, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMR);
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>, _PaddingLayout>?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(();
  v106 = v144;
  View.staticIf<A, B>(_:then:)();
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v104, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMR);
  v107 = static Edge.Set.horizontal.getter();
  v108 = v142;
  (*(v145 + 32))(v142, v106, v148);
  v109 = v108 + *(v143 + 36);
  *v109 = v107;
  *(v109 + 8) = 0u;
  *(v109 + 24) = 0u;
  *(v109 + 40) = 1;
  v110 = v139;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v108, v139, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GMR);
  *(v110 + *(v141 + 36)) = 256;
  v111 = v150;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v110, v150, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMR);
  v112 = v154;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v153, v154, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMR);
  v113 = v155;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v158, v155, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMR);
  v114 = v138;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v92, v138, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGSgMR);
  v115 = v157;
  v116 = v149;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v157, v149, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGSgMR);
  v117 = v151;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v111, v151, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMR);
  v118 = v152;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v112, v152, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMR);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VG_ACyACyACyACyAA6VStackVyAA05TupleE0VyACyACyAA6SpacerVARGAA05_FlexqP0VG_ACyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_A7_ACyA28_AUyAA13TextAlignmentOGGACyA32_AA08_PaddingP0VGQo_A15_GAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyA28__A7_A32_A32_Qo_tGGA34_GA34_GAA06_TraittU0VyAA0p13PriorityTraitS0VGGAA010_FixedSizeP0VGACyACyACyACyA18_yAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgACyACyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_ACyACyAeAEAF_AGQrqd___qd_0_xXEtAaIRd__AaDRd_0_r0_lFQOyA18_yA20_yACyAA5GroupVyAKyAKyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyACyAA6ButtonVyACyA28_A25_GGAYG_AA023BorderedProminentButtonX0VQo_AUyAA11ControlSizeOGG_A7_ACyA87_AA11_ClipEffectVyAA7CapsuleVGGACyA87_A89_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyA79__A7_ACyACyAeAEA74_yQrqd__AAA75_Rd__lFQOyACyA80_A4_G_AA014BorderedButtonX0VQo_A86_GA92_GACyAeAE10fontWeightyQrAW6WeightVSgFQOyA79__Qo_A34_GQo_GAKyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyACyA77_yA28_GA34_G_A7_A114_ACyA114_AA011_BackgroundU0VyAA06_ShapeE0VyA91_A3_GGGQo_ACyACyACyACyACyACyAeAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyA20_yA54_12DynamicStackVyA20_yACyACyACyACyAPA11_GA4_GAYGA25_GSg_A18_yA20_yA35__A35_SgtGGtGG_A22_AMtGGG_AA011PlainButtonX0VQo_A4_GAUyA3_SgGGAYGA34_GAA011_BackgroundxU0VyA3_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A7_ACyA164_A34_GQo_A34_GA50_GtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VG_ACyACyACyACyAA6VStackVyAA05TupleE0VyACyACyAA6SpacerVARGAA05_FlexqP0VG_ACyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_A7_ACyA28_AUyAA13TextAlignmentOGGACyA32_AA08_PaddingP0VGQo_A15_GAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyA28__A7_A32_A32_Qo_tGGA34_GA34_GAA06_TraittU0VyAA0p13PriorityTraitS0VGGAA010_FixedSizeP0VGACyACyACyACyA18_yAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgACyACyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_ACyACyAeAEAF_AGQrqd___qd_0_xXEtAaIRd__AaDRd_0_r0_lFQOyA18_yA20_yACyAA5GroupVyAKyAKyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyACyAA6ButtonVyACyA28_A25_GGAYG_AA023BorderedProminentButtonX0VQo_AUyAA11ControlSizeOGG_A7_ACyA87_AA11_ClipEffectVyAA7CapsuleVGGACyA87_A89_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyA79__A7_ACyACyAeAEA74_yQrqd__AAA75_Rd__lFQOyACyA80_A4_G_AA014BorderedButtonX0VQo_A86_GA92_GACyAeAE10fontWeightyQrAW6WeightVSgFQOyA79__Qo_A34_GQo_GAKyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyACyA77_yA28_GA34_G_A7_A114_ACyA114_AA011_BackgroundU0VyAA06_ShapeE0VyA91_A3_GGGQo_ACyACyACyACyACyACyAeAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyA20_yA54_12DynamicStackVyA20_yACyACyACyACyAPA11_GA4_GAYGA25_GSg_A18_yA20_yA35__A35_SgtGGtGG_A22_AMtGGG_AA011PlainButtonX0VQo_A4_GAUyA3_SgGGAYGA34_GAA011_BackgroundxU0VyA3_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A7_ACyA164_A34_GQo_A34_GA50_GtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v113, v118 + v119[12], &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v114, v118 + v119[16], &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGSgMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v116, v118 + v119[20], &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGSgMR);
  v120 = v118 + v119[24];
  *v120 = 0;
  *(v120 + 8) = 1;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v117, v118 + v119[28], &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v111, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v115, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGSgMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v156, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGSgMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v158, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v153, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v117, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GAA010_FixedSizeW0VGMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v116, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGSgMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v114, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGSgMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v155, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGAA010_FixedSizeJ0VGMR);
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v154, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMR);
}

uint64_t LACUIAuthCountdownView.lockIcon.getter()
{
  v1 = *(v0 + 8) + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16))
  {
    v4 = *(v1 + 8);

    v5 = Image.init(_internalSystemName:)();
  }

  else
  {
    v6 = *v1;
    v7 = *(v1 + 8);
    outlined copy of LACUIAuthImageConfiguration();
    v8 = one-time initialization token for current;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = static NSBundle.current;
    v5 = Image.init(_:bundle:)();
    outlined consume of LACUIAuthImageConfiguration();
  }

  static Solarium.isEnabled.getter();
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  *&v18 = *v1;
  *(&v18 + 1) = v10;
  LOBYTE(v19) = v11;
  outlined copy of LACUIAuthImageConfiguration();
  Image.scaleWhilePreservingRatio(toHeight:for:)(&v18, v5, v24);

  outlined consume of LACUIAuthImageConfiguration();
  v16 = v24[2];
  *v17 = v25[0];
  *&v17[9] = *(v25 + 9);
  v14 = v24[0];
  v15 = v24[1];
  v13 = static Color.accentColor.getter();
  Solarium.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA19SymbolRenderingModeVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B, C>(_:then:else:)();
  v20 = v16;
  v21 = *v17;
  v22 = *&v17[16];
  v23 = v13;
  v18 = v14;
  v19 = v15;
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v18, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMR);
}

uint64_t LACUIAuthCountdownView.informativeText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_AGyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVAGyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAGyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_AGyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVAGyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAGyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  if (static Solarium.isEnabled.getter())
  {
    v15 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v15 = static HorizontalAlignment.center.getter();
  }

  *v6 = v15;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6SpacerVAA06_FrameG0VGAA05_FlexlG0VG_AKyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaTRd_0_AaTRd_1_r1_lFQOyAA4TextV_AA8SolariumVAKyA_AA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAKyA7_AA08_PaddingG0VGQo_AA023AccessibilityAttachmentY0VGAuAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaTRd_0_AaTRd_1_r1_lFQOyA__A1_A7_A7_Qo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6SpacerVAA06_FrameG0VGAA05_FlexlG0VG_AKyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaTRd_0_AaTRd_1_r1_lFQOyAA4TextV_AA8SolariumVAKyA_AA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAKyA7_AA08_PaddingG0VGQo_AA023AccessibilityAttachmentY0VGAuAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaTRd_0_AaTRd_1_r1_lFQOyA__A1_A7_A7_Qo_tGGMR);
  closure #1 in LACUIAuthCountdownView.informativeText.getter(v1, &v6[*(v16 + 44)]);
  v17 = static Edge.Set.horizontal.getter();
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v6, v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_AGyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVAGyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAGyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_AGyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVAGyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAGyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGMR);
  v18 = &v10[*(v7 + 36)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = static Edge.Set.horizontal.getter();
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v10, v14, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GMR);
  v20 = &v14[*(v11 + 36)];
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  v20[40] = 1;
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v14, a1, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGMR);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t LACUIAuthCountdownView.actionItems(with:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = 0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAJ0mnoD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAJ0mnoD0VGGMR) + 44);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMd, &_sSay25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [LACUIAuthCountdownItemConfiguration] and conformance [A], &_sSay25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMd, &_sSay25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMR);
  lazy protocol witness table accessor for type LACUIAuthCountdownItemView and conformance LACUIAuthCountdownItemView();
  lazy protocol witness table accessor for type LACUIAuthCountdownItemConfiguration and conformance LACUIAuthCountdownItemConfiguration();
  ForEach<>.init(_:content:)();
  v3 = static Edge.Set.horizontal.getter();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGMR) + 36);
  *v4 = v3;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  v5 = static Edge.Set.all.getter();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGMR) + 36);
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGMR);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

double LACUIAuthCountdownView.buttons.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0C14InputPredicateRd__AaBRd_0_r0_lFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalL0VyAPyAcAEAD_AE4elseQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyALyAA0S0VyALyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVALyA13_AA11_ClipEffectVyAA7CapsuleVGGALyA13_A17_yAA16RoundedRectangleVGGQo_AcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyA__A15_ALyALyAcAEARyQrqd__AaSRd__lFQOyALyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GALyAcAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAUyAWGA44_G_A15_A49_ALyA49_AA19_BackgroundModifierVyAA06_ShapeC0VyA19_A30_GGGQo_ALyALyALyALyALyALyAcAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAJy023LocalAuthenticationCoreB012DynamicStackVyAJyALyALyALyALyALyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AHyAJyALyALyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ALyA118_A44_GQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0C14InputPredicateRd__AaBRd_0_r0_lFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalL0VyAPyAcAEAD_AE4elseQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyALyAA0S0VyALyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVALyA13_AA11_ClipEffectVyAA7CapsuleVGGALyA13_A17_yAA16RoundedRectangleVGGQo_AcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyA__A15_ALyALyAcAEARyQrqd__AaSRd__lFQOyALyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GALyAcAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAUyAWGA44_G_A15_A49_ALyA49_AA19_BackgroundModifierVyAA06_ShapeC0VyA19_A30_GGGQo_ALyALyALyALyALyALyAcAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAJy023LocalAuthenticationCoreB012DynamicStackVyAJyALyALyALyALyALyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AHyAJyALyALyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ALyA118_A44_GQo_MR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  if (static Solarium.isEnabled.getter())
  {
    v12 = 0x4028000000000000;
  }

  else
  {
    v12 = 0;
  }

  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = v12;
  v6[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalJ0VyAOyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAKyAqAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAKyAA0V0VyAKyAA4TextVAA010_FlexFrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentvT0VQo_A5_yAA11ControlSizeOGG_AA8SolariumVAKyA17_AA11_ClipEffectVyAA7CapsuleVGGAKyA17_A21_yAA16RoundedRectangleVGGQo_AqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyA3__A19_AKyAKyAqAEAVyQrqd__AaWRd__lFQOyAKyA10_AA011_ForegroundT8ModifierVyAA5ColorVGG_AA08BorderedvT0VQo_A16_GA24_GAKyAqAE10fontWeightyQrA7_6WeightVSgFQOyA3__Qo_AA08_PaddingG0VGQo_GAOyAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAKyAYyA_GA48_G_A19_A53_AKyA53_AA19_BackgroundModifierVyAA06_ShapeD0VyA23_A34_GGGQo_AKyAKyAKyAKyAKyAKyAqAEAVyQrqd__AaWRd__lFQOyAYyAA6HStackVyAIy023LocalAuthenticationCoreB012DynamicStackVyAIyAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGA5_yAA19SymbolRenderingModeVSgGGA35_GA9_GA1_GSg_AA0F0VyAIyAKyAKyA_A5_yAA0W9AlignmentOGGA48_G_A87_SgtGGtGG_AA6SpacerVA68_tGGG_AA05PlainvT0VQo_A35_GA5_yA34_SgGGA9_GA48_GAA011_BackgroundT8ModifierVyA34_GGA28_GGGGA48_GSg_AA7ForEachVySayA64_09LACUIAuthV13ConfigurationVGSSA114_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalJ0VyAOyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAKyAqAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAKyAA0V0VyAKyAA4TextVAA010_FlexFrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentvT0VQo_A5_yAA11ControlSizeOGG_AA8SolariumVAKyA17_AA11_ClipEffectVyAA7CapsuleVGGAKyA17_A21_yAA16RoundedRectangleVGGQo_AqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyA3__A19_AKyAKyAqAEAVyQrqd__AaWRd__lFQOyAKyA10_AA011_ForegroundT8ModifierVyAA5ColorVGG_AA08BorderedvT0VQo_A16_GA24_GAKyAqAE10fontWeightyQrA7_6WeightVSgFQOyA3__Qo_AA08_PaddingG0VGQo_GAOyAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAKyAYyA_GA48_G_A19_A53_AKyA53_AA19_BackgroundModifierVyAA06_ShapeD0VyA23_A34_GGGQo_AKyAKyAKyAKyAKyAKyAqAEAVyQrqd__AaWRd__lFQOyAYyAA6HStackVyAIy023LocalAuthenticationCoreB012DynamicStackVyAIyAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioG0VGA5_yAA19SymbolRenderingModeVSgGGA35_GA9_GA1_GSg_AA0F0VyAIyAKyAKyA_A5_yAA0W9AlignmentOGGA48_G_A87_SgtGGtGG_AA6SpacerVA68_tGGG_AA05PlainvT0VQo_A35_GA5_yA34_SgGGA9_GA48_GAA011_BackgroundT8ModifierVyA34_GGA28_GGGGA48_GSg_AA7ForEachVySayA64_09LACUIAuthV13ConfigurationVGSSA114_GtGGMR);
  closure #1 in LACUIAuthCountdownView.buttons.getter(v1, &v6[*(v13 + 44)]);
  Solarium.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyAKyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_ACyACyAmAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeG0VyA19_A30_GGGQo_ACyACyACyACyACyACyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAGy023LocalAuthenticationCoreB012DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AEyAGyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGA44_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyAKyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_ACyACyAmAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeG0VyA19_A30_GGGQo_ACyACyACyACyACyACyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAGy023LocalAuthenticationCoreB012DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AEyAGyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGA44_GMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>, _PaddingLayout>?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:els, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMR);
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>, _PaddingLayout>?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(();
  View.staticIf<A, B>(_:then:)();
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMR);
  v14 = static Edge.Set.horizontal.getter();
  (*(v8 + 32))(a1, v11, v7);
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GMR) + 36);
  *v15 = v14;
  result = 0.0;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 1;
  return result;
}

uint64_t closure #2 in LACUIAuthCountdownView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGMR);
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = *(a1 + 8) + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration;
  v9 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v10 = v21;
  if (*(v8 + *(v9 + 48)) == 1)
  {
    v11 = v8 + *(v9 + 40);
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 32);
    v28 = *(v11 + 16);
    v29 = v14;
    v30 = *(v11 + 48);
    v31 = *(v11 + 64);
    v32 = v28;
    v33 = v14;
    v34 = v30;
    v35 = v31;
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_2560BACC0;
      *(v15 + 32) = v12;
      *(v15 + 40) = v13;
      v16 = v33;
      *(v15 + 48) = v32;
      *(v15 + 64) = v16;
      *(v15 + 80) = v34;
      *(v15 + 96) = v35;
      v23[0] = v12;
      v23[1] = v13;
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      outlined init with copy of LACUIAuthButtonConfiguration(v23, &v22);
      *v7 = static VerticalAlignment.center.getter();
      *(v7 + 1) = 0;
      v7[16] = 1;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyAVyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaWRd_0_AaWRd_1_r1_lFQOyAA08ModifiedT0VyAxAE11buttonStyleyQrqd__AA09PrimitiveP5StyleRd__lFQOyA2_yAA0P0VyA2_yAA4TextVAA010_FlexFrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentP5StyleVQo_A14_yAA11ControlSizeOGG_AA8SolariumVA2_yA26_AA11_ClipEffectVyAA7CapsuleVGGA2_yA26_A30_yAA16RoundedRectangleVGGQo_AxAEAY_AZA_Qrqd___qd_0_xXEqd_1_xXEtAAA0_Rd__AaWRd_0_AaWRd_1_r1_lFQOyA12__A28_A2_yA2_yAxAEA3_yQrqd__AAA4_Rd__lFQOyA2_yA19_AA24_ForegroundStyleModifierVyAA5ColorVGG_AA08BorderedP5StyleVQo_A25_GA33_GA2_yAxAE10fontWeightyQrA16_6WeightVSgFQOyA12__Qo_AA08_PaddingG0VGQo_GAVyAxAEAY_AZA_Qrqd___qd_0_xXEqd_1_xXEtAAA0_Rd__AaWRd_0_AaWRd_1_r1_lFQOyA2_yA6_yA8_GA57_G_A28_A62_A2_yA62_AA19_BackgroundModifierVyAA06_ShapeD0VyA32_A43_GGGQo_A2_yA2_yA2_yA2_yA2_yA2_yAxAEA3_yQrqd__AAA4_Rd__lFQOyA6_yAA0F0VyAIyAO12DynamicStackVyAIyA2_yA2_yA2_yA2_yA2_yAA5ImageVAA012_AspectRatioG0VGA14_yAA19SymbolRenderingModeVSgGGA44_GA18_GA10_GSg_AA6VStackVyAIyA2_yA2_yA8_A14_yAA13TextAlignmentOGGA57_G_A95_SgtGGtGG_AKA76_tGGG_AA05PlainP5StyleVQo_A44_GA14_yA43_SgGGA18_GA57_GAA24_BackgroundStyleModifierVyA43_GGA37_GGGGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyAVyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaWRd_0_AaWRd_1_r1_lFQOyAA08ModifiedT0VyAxAE11buttonStyleyQrqd__AA09PrimitiveP5StyleRd__lFQOyA2_yAA0P0VyA2_yAA4TextVAA010_FlexFrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentP5StyleVQo_A14_yAA11ControlSizeOGG_AA8SolariumVA2_yA26_AA11_ClipEffectVyAA7CapsuleVGGA2_yA26_A30_yAA16RoundedRectangleVGGQo_AxAEAY_AZA_Qrqd___qd_0_xXEqd_1_xXEtAAA0_Rd__AaWRd_0_AaWRd_1_r1_lFQOyA12__A28_A2_yA2_yAxAEA3_yQrqd__AAA4_Rd__lFQOyA2_yA19_AA24_ForegroundStyleModifierVyAA5ColorVGG_AA08BorderedP5StyleVQo_A25_GA33_GA2_yAxAE10fontWeightyQrA16_6WeightVSgFQOyA12__Qo_AA08_PaddingG0VGQo_GAVyAxAEAY_AZA_Qrqd___qd_0_xXEqd_1_xXEtAAA0_Rd__AaWRd_0_AaWRd_1_r1_lFQOyA2_yA6_yA8_GA57_G_A28_A62_A2_yA62_AA19_BackgroundModifierVyAA06_ShapeD0VyA32_A43_GGGQo_A2_yA2_yA2_yA2_yA2_yA2_yAxAEA3_yQrqd__AAA4_Rd__lFQOyA6_yAA0F0VyAIyAO12DynamicStackVyAIyA2_yA2_yA2_yA2_yA2_yAA5ImageVAA012_AspectRatioG0VGA14_yAA19SymbolRenderingModeVSgGGA44_GA18_GA10_GSg_AA6VStackVyAIyA2_yA2_yA8_A14_yAA13TextAlignmentOGGA57_G_A95_SgtGGtGG_AKA76_tGGG_AA05PlainP5StyleVQo_A44_GA14_yA43_SgGGA18_GA57_GAA24_BackgroundStyleModifierVyA43_GGA37_GGGGGtGGMR);
      closure #1 in LACUIAuthCountdownView.barButtons(with:)(a1, v15, &v7[*(v17 + 44)]);

      *&v7[*(v4 + 36)] = 256;
      outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v7, a2, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGMR);
      return (*(v21 + 56))(a2, 0, 1, v4);
    }

    v10 = v21;
  }

  v19 = *(v10 + 56);

  return v19(a2, 1, 1, v4);
}

uint64_t LACUIAuthCountdownView.barButtons(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyAVyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaWRd_0_AaWRd_1_r1_lFQOyAA08ModifiedT0VyAxAE11buttonStyleyQrqd__AA09PrimitiveP5StyleRd__lFQOyA2_yAA0P0VyA2_yAA4TextVAA010_FlexFrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentP5StyleVQo_A14_yAA11ControlSizeOGG_AA8SolariumVA2_yA26_AA11_ClipEffectVyAA7CapsuleVGGA2_yA26_A30_yAA16RoundedRectangleVGGQo_AxAEAY_AZA_Qrqd___qd_0_xXEqd_1_xXEtAAA0_Rd__AaWRd_0_AaWRd_1_r1_lFQOyA12__A28_A2_yA2_yAxAEA3_yQrqd__AAA4_Rd__lFQOyA2_yA19_AA24_ForegroundStyleModifierVyAA5ColorVGG_AA08BorderedP5StyleVQo_A25_GA33_GA2_yAxAE10fontWeightyQrA16_6WeightVSgFQOyA12__Qo_AA08_PaddingG0VGQo_GAVyAxAEAY_AZA_Qrqd___qd_0_xXEqd_1_xXEtAAA0_Rd__AaWRd_0_AaWRd_1_r1_lFQOyA2_yA6_yA8_GA57_G_A28_A62_A2_yA62_AA19_BackgroundModifierVyAA06_ShapeD0VyA32_A43_GGGQo_A2_yA2_yA2_yA2_yA2_yA2_yAxAEA3_yQrqd__AAA4_Rd__lFQOyA6_yAA0F0VyAIyAO12DynamicStackVyAIyA2_yA2_yA2_yA2_yA2_yAA5ImageVAA012_AspectRatioG0VGA14_yAA19SymbolRenderingModeVSgGGA44_GA18_GA10_GSg_AA6VStackVyAIyA2_yA2_yA8_A14_yAA13TextAlignmentOGGA57_G_A95_SgtGGtGG_AKA76_tGGG_AA05PlainP5StyleVQo_A44_GA14_yA43_SgGGA18_GA57_GAA24_BackgroundStyleModifierVyA43_GGA37_GGGGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyAVyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaWRd_0_AaWRd_1_r1_lFQOyAA08ModifiedT0VyAxAE11buttonStyleyQrqd__AA09PrimitiveP5StyleRd__lFQOyA2_yAA0P0VyA2_yAA4TextVAA010_FlexFrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentP5StyleVQo_A14_yAA11ControlSizeOGG_AA8SolariumVA2_yA26_AA11_ClipEffectVyAA7CapsuleVGGA2_yA26_A30_yAA16RoundedRectangleVGGQo_AxAEAY_AZA_Qrqd___qd_0_xXEqd_1_xXEtAAA0_Rd__AaWRd_0_AaWRd_1_r1_lFQOyA12__A28_A2_yA2_yAxAEA3_yQrqd__AAA4_Rd__lFQOyA2_yA19_AA24_ForegroundStyleModifierVyAA5ColorVGG_AA08BorderedP5StyleVQo_A25_GA33_GA2_yAxAE10fontWeightyQrA16_6WeightVSgFQOyA12__Qo_AA08_PaddingG0VGQo_GAVyAxAEAY_AZA_Qrqd___qd_0_xXEqd_1_xXEtAAA0_Rd__AaWRd_0_AaWRd_1_r1_lFQOyA2_yA6_yA8_GA57_G_A28_A62_A2_yA62_AA19_BackgroundModifierVyAA06_ShapeD0VyA32_A43_GGGQo_A2_yA2_yA2_yA2_yA2_yA2_yAxAEA3_yQrqd__AAA4_Rd__lFQOyA6_yAA0F0VyAIyAO12DynamicStackVyAIyA2_yA2_yA2_yA2_yA2_yAA5ImageVAA012_AspectRatioG0VGA14_yAA19SymbolRenderingModeVSgGGA44_GA18_GA10_GSg_AA6VStackVyAIyA2_yA2_yA8_A14_yAA13TextAlignmentOGGA57_G_A95_SgtGGtGG_AKA76_tGGG_AA05PlainP5StyleVQo_A44_GA14_yA43_SgGGA18_GA57_GAA24_BackgroundStyleModifierVyA43_GGA37_GGGGGtGGMR);
  return closure #1 in LACUIAuthCountdownView.barButtons(with:)(v2, a1, a2 + *(v5 + 44));
}

uint64_t specialized View.embedInNavigationStack(if:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI19_ConditionalContentV7StorageOyAA15NavigationStackVyAA0F4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAkAE7toolbar7contentQrqd__yXE_tAaJRd__lFQOyAkAE0O20BackgroundVisibility_3forQrAA0R0O_AA16ToolbarPlacementVdtFQOyAkAEAM_APQrAR_ATdtFQOyAA08ModifiedD0VyAVy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleI0VyAVyAkAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0I14InputPredicateRd__AaJRd_0_AaJRd_1_r1_lFQOyAVyACyAVyAVyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAVyA7_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA27_AVyA27_A15_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AVyAVyAVyAVyA_yA1_yAVyAVyAA6SpacerVA12_GAA16_FlexFrameLayoutVG_AVyAkAEA2__A3_A4_Qrqd___qd_0_xXEqd_1_xXEtAAA5_Rd__AaJRd_0_AaJRd_1_r1_lFQOyAA4TextV_A29_AVyA46_A15_yAA13TextAlignmentOGGAVyA50_AA14_PaddingLayoutVGQo_A37_GAkAEA2__A3_A4_Qrqd___qd_0_xXEqd_1_xXEtAAA5_Rd__AaJRd_0_AaJRd_1_r1_lFQOyA46__A29_A50_A50_Qo_tGGA52_GA52_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAVyAVyAVyAVyA_yAA7ForEachVySayAW35LACUIAuthCountdownItemConfigurationVGSSAW022LACUIAuthCountdownItemI0VGGA52_GA52_GA65_GA68_GSgAVyAVyAW023LACUIAuthCountdownDelayI0VA52_GA68_GSgA40_AVyAVyAkAEA2__A3_Qrqd___qd_0_xXEtAAA5_Rd__AaJRd_0_r0_lFQOyA_yA1_yAVyAA5GroupVyACyACyAkAEA2__A3_A4_Qrqd___qd_0_xXEqd_1_xXEtAAA5_Rd__AaJRd_0_AaJRd_1_r1_lFQOyAVyAkAE11buttonStyleyQrqd__AA09PrimitiveM5StyleRd__lFQOyAVyAA0M0VyAVyA46_A43_GGA19_G_AA017BorderedProminentM5StyleVQo_A15_yAA11ControlSizeOGG_A29_AVyA104_AA11_ClipEffectVyAA7CapsuleVGGAVyA104_A106_yAA16RoundedRectangleVGGQo_AkAEA2__A3_A4_Qrqd___qd_0_xXEqd_1_xXEtAAA5_Rd__AaJRd_0_AaJRd_1_r1_lFQOyA96__A29_AVyAVyAkAEA91_yQrqd__AAA92_Rd__lFQOyAVyA97_A26_G_AA08BorderedM5StyleVQo_A103_GA109_GAVyAkAE10fontWeightyQrA17_6WeightVSgFQOyA96__Qo_A52_GQo_GACyAkAEA2__A3_A4_Qrqd___qd_0_xXEqd_1_xXEtAAA5_Rd__AaJRd_0_AaJRd_1_r1_lFQOyAVyA94_yA46_GA52_G_A29_A131_AVyA131_AA01_Q8ModifierVyAA06_ShapeI0VyA108_A25_GGGQo_AVyAVyAVyAVyAVyAVyAkAEA91_yQrqd__AAA92_Rd__lFQOyA94_yAA6HStackVyA1_yAW07DynamicG0VyA1_yAVyAVyAVyAVyA10_A33_GA26_GA19_GA43_GSg_A_yA1_yA53__A53_SgtGGtGG_A40_A7_tGGG_AA05PlainM5StyleVQo_A26_GA15_yA25_SgGGA19_GA52_GAA01_Q13StyleModifierVyA25_GGA113_GGGGA52_GSg_A71_ySayAW09LACUIAuthM13ConfigurationVGSSA173_GtGG_A29_AVyA181_A52_GQo_A52_GA68_GtGGGAW013EmbedInScrollI16IfNeededModifierVGA168_G_Qo__Qo__AVyA141_yA1_yA40_Sg_A179_tGGA68_GSgQo__Qo_GA201__GMd,  &_s7SwiftUI19_ConditionalContentV7StorageOyAA15NavigationStackVyAA0F4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAkAE7toolbar7contentQrqd__yXE_tAaJRd__lFQOyAkAE0O20BackgroundVisibility_3forQrAA0R0O_AA16ToolbarPlacementVdtFQOyAkAEAM_APQrAR_ATdtFQOyAA08ModifiedD0VyAVy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleI0VyAVyAkAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0I14InputPredicateRd__AaJRd_0_AaJRd_1_r1_lFQOyAVyACyAVyAVyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAVyA7_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA27_AVyA27_A15_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AVyAVyAVyAVyA_yA1_yAVyAVyAA6SpacerVA12_GAA16_FlexFrameLayoutVG_AVyAkAEA2__A3_A4_Qrqd___qd_0_xXEqd_1_xXEtAAA5_Rd__AaJRd_0_AaJRd_1_r1_lFQOyAA4TextV_A29_AVyA46_A15_yAA13TextAlignmentOGGAVyA50_AA14_PaddingLayoutVGQo_A37_GAkAEA2__A3_A4_Qrqd___qd_0_xXEqd_1_xXEtAAA5_Rd__AaJRd_0_AaJRd_1_r1_lFQOyA46__A29_A50_A50_Qo_tGGA52_GA52_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAVyAVyAVyAVyA_yAA7ForEachVySayAW35LACUIAuthCountdownItemConfigurationVGSSAW022LACUIAuthCountdownItemI0VGGA52_GA52_GA65_GA68_GSgAVyAVyAW023LACUIAuthCountdownDelayI0VA52_GA68_GSgA40_AVyAVyAkAEA2__A3_Qrqd___qd_0_xXEtAAA5_Rd__AaJRd_0_r0_lFQOyA_yA1_yAVyAA5GroupVyACyACyAkAEA2__A3_A4_Qrqd___qd_0_xXEqd_1_xXEtAAA5_Rd__AaJRd_0_AaJRd_1_r1_lFQOyAVyAkAE11buttonStyleyQrqd__AA09PrimitiveM5StyleRd__lFQOyAVyAA0M0VyAVyA46_A43_GGA19_G_AA017BorderedProminentM5StyleVQo_A15_yAA11ControlSizeOGG_A29_AVyA104_AA11_ClipEffectVyAA7CapsuleVGGAVyA104_A106_yAA16RoundedRectangleVGGQo_AkAEA2__A3_A4_Qrqd___qd_0_xXEqd_1_xXEtAAA5_Rd__AaJRd_0_AaJRd_1_r1_lFQOyA96__A29_AVyAVyAkAEA91_yQrqd__AAA92_Rd__lFQOyAVyA97_A26_G_AA08BorderedM5StyleVQo_A103_GA109_GAVyAkAE10fontWeightyQrA17_6WeightVSgFQOyA96__Qo_A52_GQo_GACyAkAEA2__A3_A4_Qrqd___qd_0_xXEqd_1_xXEtAAA5_Rd__AaJRd_0_AaJRd_1_r1_lFQOyAVyA94_yA46_GA52_G_A29_A131_AVyA131_AA01_Q8ModifierVyAA06_ShapeI0VyA108_A25_GGGQo_AVyAVyAVyAVyAVyAVyAkAEA91_yQrqd__AAA92_Rd__lFQOyA94_yAA6HStackVyA1_yAW07DynamicG0VyA1_yAVyAVyAVyAVyA10_A33_GA26_GA19_GA43_GSg_A_yA1_yA53__A53_SgtGGtGG_A40_A7_tGGG_AA05PlainM5StyleVQo_A26_GA15_yA25_SgGGA19_GA52_GAA01_Q13StyleModifierVyA25_GGA113_GGGGA52_GSg_A71_ySayAW09LACUIAuthM13ConfigurationVGSSA173_GtGG_A29_AVyA181_A52_GQo_A52_GA68_GtGGGAW013EmbedInScrollI16IfNeededModifierVGA168_G_Qo__Qo__AVyA141_yA1_yA40_Sg_A179_tGGA68_GSgQo__Qo_GA201__GMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAgAE7toolbar7contentQrqd__yXE_tAaFRd__lFQOyAgAE0L20BackgroundVisibility_3forQrAA0O0O_AA16ToolbarPlacementVdtFQOyAgAEAI_ALQrAN_APdtFQOyAA15ModifiedContentVyARy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleF0VyARyAgAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyARyAA012_ConditionalT0VyARyARyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGARyA5_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA25_ARyA25_A13_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ARyARyARyARyAWyAYyARyARyAA6SpacerVA10_GAA16_FlexFrameLayoutVG_ARyAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyAA4TextV_A27_ARyA44_A13_yAA13TextAlignmentOGGARyA48_AA14_PaddingLayoutVGQo_A35_GAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA44__A27_A48_A48_Qo_tGGA50_GA50_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGARyARyARyARyAWyAA7ForEachVySayAS35LACUIAuthCountdownItemConfigurationVGSSAS022LACUIAuthCountdownItemF0VGGA50_GA50_GA63_GA66_GSgARyARyAS023LACUIAuthCountdownDelayF0VA50_GA66_GSgA38_ARyARyAgAEAZ_A_Qrqd___qd_0_xXEtAAA1_Rd__AaFRd_0_r0_lFQOyAWyAYyARyAA0Y0VyA3_yA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyAgAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyARyAA0J0VyARyA44_A41_GGA17_G_AA017BorderedProminentJ5StyleVQo_A13_yAA11ControlSizeOGG_A27_ARyA102_AA11_ClipEffectVyAA7CapsuleVGGARyA102_A104_yAA16RoundedRectangleVGGQo_AgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA94__A27_ARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyARyA95_A24_G_AA08BorderedJ5StyleVQo_A101_GA107_GARyAgAE10fontWeightyQrA15_6WeightVSgFQOyA94__Qo_A50_GQo_GA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyA92_yA44_GA50_G_A27_A129_ARyA129_AA01_N8ModifierVyAA06_ShapeF0VyA106_A23_GGGQo_ARyARyARyARyARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyA92_yAA6HStackVyAYyAS07DynamicD0VyAYyARyARyARyARyA8_A31_GA24_GA17_GA41_GSg_AWyAYyA51__A51_SgtGGtGG_A38_A5_tGGG_AA05PlainJ5StyleVQo_A24_GA13_yA23_SgGGA17_GA50_GAA01_N13StyleModifierVyA23_GGA111_GGGGA50_GSg_A69_ySayAS09LACUIAuthJ13ConfigurationVGSSA171_GtGG_A27_ARyA179_A50_GQo_A50_GA66_GtGGGAS013EmbedInScrollF16IfNeededModifierVGA166_G_Qo__Qo__ARyA139_yAYyA38_Sg_A177_tGGA66_GSgQo__Qo_GMd,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAgAE7toolbar7contentQrqd__yXE_tAaFRd__lFQOyAgAE0L20BackgroundVisibility_3forQrAA0O0O_AA16ToolbarPlacementVdtFQOyAgAEAI_ALQrAN_APdtFQOyAA15ModifiedContentVyARy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleF0VyARyAgAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyARyAA012_ConditionalT0VyARyARyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGARyA5_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA25_ARyA25_A13_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ARyARyARyARyAWyAYyARyARyAA6SpacerVA10_GAA16_FlexFrameLayoutVG_ARyAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyAA4TextV_A27_ARyA44_A13_yAA13TextAlignmentOGGARyA48_AA14_PaddingLayoutVGQo_A35_GAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA44__A27_A48_A48_Qo_tGGA50_GA50_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGARyARyARyARyAWyAA7ForEachVySayAS35LACUIAuthCountdownItemConfigurationVGSSAS022LACUIAuthCountdownItemF0VGGA50_GA50_GA63_GA66_GSgARyARyAS023LACUIAuthCountdownDelayF0VA50_GA66_GSgA38_ARyARyAgAEAZ_A_Qrqd___qd_0_xXEtAAA1_Rd__AaFRd_0_r0_lFQOyAWyAYyARyAA0Y0VyA3_yA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyAgAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyARyAA0J0VyARyA44_A41_GGA17_G_AA017BorderedProminentJ5StyleVQo_A13_yAA11ControlSizeOGG_A27_ARyA102_AA11_ClipEffectVyAA7CapsuleVGGARyA102_A104_yAA16RoundedRectangleVGGQo_AgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA94__A27_ARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyARyA95_A24_G_AA08BorderedJ5StyleVQo_A101_GA107_GARyAgAE10fontWeightyQrA15_6WeightVSgFQOyA94__Qo_A50_GQo_GA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyA92_yA44_GA50_G_A27_A129_ARyA129_AA01_N8ModifierVyAA06_ShapeF0VyA106_A23_GGGQo_ARyARyARyARyARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyA92_yAA6HStackVyAYyAS07DynamicD0VyAYyARyARyARyARyA8_A31_GA24_GA17_GA41_GSg_AWyAYyA51__A51_SgtGGtGG_A38_A5_tGGG_AA05PlainJ5StyleVQo_A24_GA13_yA23_SgGGA17_GA50_GAA01_N13StyleModifierVyA23_GGA111_GGGGA50_GSg_A69_ySayAS09LACUIAuthJ13ConfigurationVGSSA171_GtGG_A27_ARyA179_A50_GQo_A50_GA66_GtGGGAS013EmbedInScrollF16IfNeededModifierVGA166_G_Qo__Qo__ARyA139_yAYyA38_Sg_A177_tGGA66_GSgQo__Qo_GMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v37 - v13;
  if (a1)
  {
    v37[3] = v37;
    MEMORY[0x28223BE20](v12);
    v37[-2] = v2;
    v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAcAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0I20BackgroundVisibility_3forQrAA0L0O_AA16ToolbarPlacementVdtFQOyAcAEAE_AHQrAJ_ALdtFQOyAA15ModifiedContentVyANy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyANyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAA012_ConditionalQ0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGANyA1_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA21_ANyA21_A9_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ANyANyANyANyASyAUyANyANyAA6SpacerVA6_GAA16_FlexFrameLayoutVG_ANyAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A23_ANyA40_A9_yAA13TextAlignmentOGGANyA44_AA14_PaddingLayoutVGQo_A31_GAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA40__A23_A44_A44_Qo_tGGA46_GA46_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGANyANyANyANyASyAA7ForEachVySayAO35LACUIAuthCountdownItemConfigurationVGSSAO022LACUIAuthCountdownItemC0VGGA46_GA46_GA59_GA62_GSgANyANyAO023LACUIAuthCountdownDelayC0VA46_GA62_GSgA34_ANyANyAcAEAV_AWQrqd___qd_0_xXEtAaYRd__AaBRd_0_r0_lFQOyASyAUyANyAA0V0VyA_yA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAcAE11buttonStyleyQrqd__AA09PrimitiveG5StyleRd__lFQOyANyAA0G0VyANyA40_A37_GGA13_G_AA017BorderedProminentG5StyleVQo_A9_yAA11ControlSizeOGG_A23_ANyA98_AA11_ClipEffectVyAA7CapsuleVGGANyA98_A100_yAA16RoundedRectangleVGGQo_AcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA90__A23_ANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyANyA91_A20_G_AA08BorderedG5StyleVQo_A97_GA103_GANyAcAE10fontWeightyQrA11_6WeightVSgFQOyA90__Qo_A46_GQo_GA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyA88_yA40_GA46_G_A23_A125_ANyA125_AA01_K8ModifierVyAA06_ShapeC0VyA102_A19_GGGQo_ANyANyANyANyANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyA88_yAA6HStackVyAUyAO12DynamicStackVyAUyANyANyANyANyA4_A27_GA20_GA13_GA37_GSg_ASyAUyA47__A47_SgtGGtGG_A34_A1_tGGG_AA05PlainG5StyleVQo_A20_GA9_yA19_SgGGA13_GA46_GAA01_K13StyleModifierVyA19_GGA107_GGGGA46_GSg_A65_ySayAO09LACUIAuthG13ConfigurationVGSSA167_GtGG_A23_ANyA175_A46_GQo_A46_GA62_GtGGGAO013EmbedInScrollcZ14NeededModifierVGA162_G_Qo__Qo__ANyA135_yAUyA34_Sg_A173_tGGA62_GSgQo__Qo_Md,  &_s7SwiftUI4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAcAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0I20BackgroundVisibility_3forQrAA0L0O_AA16ToolbarPlacementVdtFQOyAcAEAE_AHQrAJ_ALdtFQOyAA15ModifiedContentVyANy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyANyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAA012_ConditionalQ0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGANyA1_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA21_ANyA21_A9_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ANyANyANyANyASyAUyANyANyAA6SpacerVA6_GAA16_FlexFrameLayoutVG_ANyAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A23_ANyA40_A9_yAA13TextAlignmentOGGANyA44_AA14_PaddingLayoutVGQo_A31_GAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA40__A23_A44_A44_Qo_tGGA46_GA46_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGANyANyANyANyASyAA7ForEachVySayAO35LACUIAuthCountdownItemConfigurationVGSSAO022LACUIAuthCountdownItemC0VGGA46_GA46_GA59_GA62_GSgANyANyAO023LACUIAuthCountdownDelayC0VA46_GA62_GSgA34_ANyANyAcAEAV_AWQrqd___qd_0_xXEtAaYRd__AaBRd_0_r0_lFQOyASyAUyANyAA0V0VyA_yA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAcAE11buttonStyleyQrqd__AA09PrimitiveG5StyleRd__lFQOyANyAA0G0VyANyA40_A37_GGA13_G_AA017BorderedProminentG5StyleVQo_A9_yAA11ControlSizeOGG_A23_ANyA98_AA11_ClipEffectVyAA7CapsuleVGGANyA98_A100_yAA16RoundedRectangleVGGQo_AcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA90__A23_ANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyANyA91_A20_G_AA08BorderedG5StyleVQo_A97_GA103_GANyAcAE10fontWeightyQrA11_6WeightVSgFQOyA90__Qo_A46_GQo_GA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyA88_yA40_GA46_G_A23_A125_ANyA125_AA01_K8ModifierVyAA06_ShapeC0VyA102_A19_GGGQo_ANyANyANyANyANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyA88_yAA6HStackVyAUyAO12DynamicStackVyAUyANyANyANyANyA4_A27_GA20_GA13_GA37_GSg_ASyAUyA47__A47_SgtGGtGG_A34_A1_tGGG_AA05PlainG5StyleVQo_A20_GA9_yA19_SgGGA13_GA46_GAA01_K13StyleModifierVyA19_GGA107_GGGGA46_GSg_A65_ySayAO09LACUIAuthG13ConfigurationVGSSA167_GtGG_A23_ANyA175_A46_GQo_A46_GA62_GtGGGAO013EmbedInScrollcZ14NeededModifierVGA162_G_Qo__Qo__ANyA135_yAUyA34_Sg_A173_tGGA62_GSgQo__Qo_MR);
    v37[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0D20BackgroundVisibility_3forQrAA0G0O_AA16ToolbarPlacementVdtFQOyAcAEAD_AGQrAI_AKdtFQOyAA15ModifiedContentVyAMy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAMyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAA012_ConditionalL0VyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAMyA0_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA20_AMyA20_A8_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AMyAMyAMyAMyARyATyAMyAMyAA6SpacerVA5_GAA16_FlexFrameLayoutVG_AMyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A22_AMyA39_A8_yAA13TextAlignmentOGGAMyA43_AA14_PaddingLayoutVGQo_A30_GAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA39__A22_A43_A43_Qo_tGGA45_GA45_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAMyAMyAMyAMyARyAA7ForEachVySayAN35LACUIAuthCountdownItemConfigurationVGSSAN022LACUIAuthCountdownItemC0VGGA45_GA45_GA58_GA61_GSgAMyAMyAN023LACUIAuthCountdownDelayC0VA45_GA61_GSgA33_AMyAMyAcAEAU_AVQrqd___qd_0_xXEtAaXRd__AaBRd_0_r0_lFQOyARyATyAMyAA0Q0VyAZyAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAMyAA6ButtonVyAMyA39_A36_GGA12_G_AA28BorderedProminentButtonStyleVQo_A8_yAA11ControlSizeOGG_A22_AMyA97_AA11_ClipEffectVyAA7CapsuleVGGAMyA97_A99_yAA16RoundedRectangleVGGQo_AcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA89__A22_AMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyAMyA90_A19_G_AA19BorderedButtonStyleVQo_A96_GA102_GAMyAcAE10fontWeightyQrA10_6WeightVSgFQOyA89__Qo_A45_GQo_GAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyA87_yA39_GA45_G_A22_A124_AMyA124_AA01_F8ModifierVyAA06_ShapeC0VyA101_A18_GGGQo_AMyAMyAMyAMyAMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyA87_yAA6HStackVyATyAN12DynamicStackVyATyAMyAMyAMyAMyA3_A26_GA19_GA12_GA36_GSg_ARyATyA46__A46_SgtGGtGG_A33_A0_tGGG_AA16PlainButtonStyleVQo_A19_GA8_yA18_SgGGA12_GA45_GAA01_F13StyleModifierVyA18_GGA106_GGGGA45_GSg_A64_ySayAN28LACUIAuthButtonConfigurationVGSSA166_GtGG_A22_AMyA174_A45_GQo_A45_GA61_GtGGGAN013EmbedInScrollcU14NeededModifierVGA161_G_Qo__Qo__AMyA134_yATyA33_Sg_A172_tGGA61_GSgQo_Md,  &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0D20BackgroundVisibility_3forQrAA0G0O_AA16ToolbarPlacementVdtFQOyAcAEAD_AGQrAI_AKdtFQOyAA15ModifiedContentVyAMy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAMyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAA012_ConditionalL0VyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAMyA0_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA20_AMyA20_A8_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AMyAMyAMyAMyARyATyAMyAMyAA6SpacerVA5_GAA16_FlexFrameLayoutVG_AMyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A22_AMyA39_A8_yAA13TextAlignmentOGGAMyA43_AA14_PaddingLayoutVGQo_A30_GAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA39__A22_A43_A43_Qo_tGGA45_GA45_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAMyAMyAMyAMyARyAA7ForEachVySayAN35LACUIAuthCountdownItemConfigurationVGSSAN022LACUIAuthCountdownItemC0VGGA45_GA45_GA58_GA61_GSgAMyAMyAN023LACUIAuthCountdownDelayC0VA45_GA61_GSgA33_AMyAMyAcAEAU_AVQrqd___qd_0_xXEtAaXRd__AaBRd_0_r0_lFQOyARyATyAMyAA0Q0VyAZyAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAMyAA6ButtonVyAMyA39_A36_GGA12_G_AA28BorderedProminentButtonStyleVQo_A8_yAA11ControlSizeOGG_A22_AMyA97_AA11_ClipEffectVyAA7CapsuleVGGAMyA97_A99_yAA16RoundedRectangleVGGQo_AcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA89__A22_AMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyAMyA90_A19_G_AA19BorderedButtonStyleVQo_A96_GA102_GAMyAcAE10fontWeightyQrA10_6WeightVSgFQOyA89__Qo_A45_GQo_GAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyA87_yA39_GA45_G_A22_A124_AMyA124_AA01_F8ModifierVyAA06_ShapeC0VyA101_A18_GGGQo_AMyAMyAMyAMyAMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyA87_yAA6HStackVyATyAN12DynamicStackVyATyAMyAMyAMyAMyA3_A26_GA19_GA12_GA36_GSg_ARyATyA46__A46_SgtGGtGG_A33_A0_tGGG_AA16PlainButtonStyleVQo_A19_GA8_yA18_SgGGA12_GA45_GAA01_F13StyleModifierVyA18_GGA106_GGGGA45_GSg_A64_ySayAN28LACUIAuthButtonConfigurationVGSSA166_GtGG_A22_AMyA174_A45_GQo_A45_GA61_GtGGGAN013EmbedInScrollcU14NeededModifierVGA161_G_Qo__Qo__AMyA134_yATyA33_Sg_A172_tGGA61_GSgQo_MR);
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE27toolbarBackgroundVisibility_3forQrAA0F0O_AA16ToolbarPlacementVdtFQOyAcAE0D0_AEQrAG_AIdtFQOyAA15ModifiedContentVyALy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyALyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAA012_ConditionalK0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGALyA_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA19_ALyA19_A7_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ALyALyALyALyAQyASyALyALyAA6SpacerVA4_GAA16_FlexFrameLayoutVG_ALyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A21_ALyA38_A7_yAA13TextAlignmentOGGALyA42_AA14_PaddingLayoutVGQo_A29_GAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA38__A21_A42_A42_Qo_tGGA44_GA44_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGALyALyALyALyAQyAA7ForEachVySayAM35LACUIAuthCountdownItemConfigurationVGSSAM022LACUIAuthCountdownItemC0VGGA44_GA44_GA57_GA60_GSgALyALyAM023LACUIAuthCountdownDelayC0VA44_GA60_GSgA32_ALyALyAcAEAT_AUQrqd___qd_0_xXEtAaWRd__AaBRd_0_r0_lFQOyAQyASyALyAA0P0VyAYyAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyALyA38_A35_GGA11_G_AA28BorderedProminentButtonStyleVQo_A7_yAA11ControlSizeOGG_A21_ALyA96_AA11_ClipEffectVyAA7CapsuleVGGALyA96_A98_yAA16RoundedRectangleVGGQo_AcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA88__A21_ALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyALyA89_A18_G_AA19BorderedButtonStyleVQo_A95_GA101_GALyAcAE10fontWeightyQrA9_6WeightVSgFQOyA88__Qo_A44_GQo_GAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyA86_yA38_GA44_G_A21_A123_ALyA123_AA01_E8ModifierVyAA06_ShapeC0VyA100_A17_GGGQo_ALyALyALyALyALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyA86_yAA6HStackVyASyAM12DynamicStackVyASyALyALyALyALyA2_A25_GA18_GA11_GA35_GSg_AQyASyA45__A45_SgtGGtGG_A32_A_tGGG_AA16PlainButtonStyleVQo_A18_GA7_yA17_SgGGA11_GA44_GAA01_E13StyleModifierVyA17_GGA105_GGGGA44_GSg_A63_ySayAM28LACUIAuthButtonConfigurationVGSSA165_GtGG_A21_ALyA173_A44_GQo_A44_GA60_GtGGGAM013EmbedInScrollcT14NeededModifierVGA160_G_Qo__Qo_Md,  &_s7SwiftUI4ViewPAAE27toolbarBackgroundVisibility_3forQrAA0F0O_AA16ToolbarPlacementVdtFQOyAcAE0D0_AEQrAG_AIdtFQOyAA15ModifiedContentVyALy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyALyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAA012_ConditionalK0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGALyA_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA19_ALyA19_A7_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ALyALyALyALyAQyASyALyALyAA6SpacerVA4_GAA16_FlexFrameLayoutVG_ALyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A21_ALyA38_A7_yAA13TextAlignmentOGGALyA42_AA14_PaddingLayoutVGQo_A29_GAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA38__A21_A42_A42_Qo_tGGA44_GA44_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGALyALyALyALyAQyAA7ForEachVySayAM35LACUIAuthCountdownItemConfigurationVGSSAM022LACUIAuthCountdownItemC0VGGA44_GA44_GA57_GA60_GSgALyALyAM023LACUIAuthCountdownDelayC0VA44_GA60_GSgA32_ALyALyAcAEAT_AUQrqd___qd_0_xXEtAaWRd__AaBRd_0_r0_lFQOyAQyASyALyAA0P0VyAYyAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyALyA38_A35_GGA11_G_AA28BorderedProminentButtonStyleVQo_A7_yAA11ControlSizeOGG_A21_ALyA96_AA11_ClipEffectVyAA7CapsuleVGGALyA96_A98_yAA16RoundedRectangleVGGQo_AcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA88__A21_ALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyALyA89_A18_G_AA19BorderedButtonStyleVQo_A95_GA101_GALyAcAE10fontWeightyQrA9_6WeightVSgFQOyA88__Qo_A44_GQo_GAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyA86_yA38_GA44_G_A21_A123_ALyA123_AA01_E8ModifierVyAA06_ShapeC0VyA100_A17_GGGQo_ALyALyALyALyALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyA86_yAA6HStackVyASyAM12DynamicStackVyASyALyALyALyALyA2_A25_GA18_GA11_GA35_GSg_AQyASyA45__A45_SgtGGtGG_A32_A_tGGG_AA16PlainButtonStyleVQo_A18_GA7_yA17_SgGGA11_GA44_GAA01_E13StyleModifierVyA17_GGA105_GGGGA44_GSg_A63_ySayAM28LACUIAuthButtonConfigurationVGSSA165_GtGG_A21_ALyA173_A44_GQo_A44_GA60_GtGGGAM013EmbedInScrollcT14NeededModifierVGA160_G_Qo__Qo_MR);
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGSgMR);
    v37[2] = a2;
    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE7toolbar_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAA15ModifiedContentVyAKy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAKyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAKyAzA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA18_AKyA18_A6_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AKyAKyAKyAKyAPyARyAKyAKyAA6SpacerVA3_GAA16_FlexFrameLayoutVG_AKyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A20_AKyA37_A6_yAA13TextAlignmentOGGAKyA41_AA14_PaddingLayoutVGQo_A28_GAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA37__A20_A41_A41_Qo_tGGA43_GA43_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAKyAKyAKyAKyAPyAA7ForEachVySayAL35LACUIAuthCountdownItemConfigurationVGSSAL022LACUIAuthCountdownItemC0VGGA43_GA43_GA56_GA59_GSgAKyAKyAL023LACUIAuthCountdownDelayC0VA43_GA59_GSgA31_AKyAKyAcAEAS_ATQrqd___qd_0_xXEtAaVRd__AaBRd_0_r0_lFQOyAPyARyAKyAA0O0VyAXyAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA37_A34_GGA10_G_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGG_A20_AKyA95_AA11_ClipEffectVyAA7CapsuleVGGAKyA95_A97_yAA16RoundedRectangleVGGQo_AcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA87__A20_AKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyAKyA88_A17_G_AA19BorderedButtonStyleVQo_A94_GA100_GAKyAcAE10fontWeightyQrA8_6WeightVSgFQOyA87__Qo_A43_GQo_GAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyA85_yA37_GA43_G_A20_A122_AKyA122_AA19_BackgroundModifierVyAA06_ShapeC0VyA99_A16_GGGQo_AKyAKyAKyAKyAKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyA85_yAA6HStackVyARyAL12DynamicStackVyARyAKyAKyAKyAKyA1_A24_GA17_GA10_GA34_GSg_APyARyA44__A44_SgtGGtGG_A31_AZtGGG_AA16PlainButtonStyleVQo_A17_GA6_yA16_SgGGA10_GA43_GAA24_BackgroundStyleModifierVyA16_GGA104_GGGGA43_GSg_A62_ySayAL28LACUIAuthButtonConfigurationVGSSA164_GtGG_A20_AKyA172_A43_GQo_A43_GA59_GtGGGAL013EmbedInScrollcS14NeededModifierVGA159_G_Qo_Md,  &_s7SwiftUI4ViewPAAE7toolbar_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAA15ModifiedContentVyAKy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAKyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAKyAzA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA18_AKyA18_A6_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AKyAKyAKyAKyAPyARyAKyAKyAA6SpacerVA3_GAA16_FlexFrameLayoutVG_AKyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A20_AKyA37_A6_yAA13TextAlignmentOGGAKyA41_AA14_PaddingLayoutVGQo_A28_GAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA37__A20_A41_A41_Qo_tGGA43_GA43_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAKyAKyAKyAKyAPyAA7ForEachVySayAL35LACUIAuthCountdownItemConfigurationVGSSAL022LACUIAuthCountdownItemC0VGGA43_GA43_GA56_GA59_GSgAKyAKyAL023LACUIAuthCountdownDelayC0VA43_GA59_GSgA31_AKyAKyAcAEAS_ATQrqd___qd_0_xXEtAaVRd__AaBRd_0_r0_lFQOyAPyARyAKyAA0O0VyAXyAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA37_A34_GGA10_G_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGG_A20_AKyA95_AA11_ClipEffectVyAA7CapsuleVGGAKyA95_A97_yAA16RoundedRectangleVGGQo_AcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA87__A20_AKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyAKyA88_A17_G_AA19BorderedButtonStyleVQo_A94_GA100_GAKyAcAE10fontWeightyQrA8_6WeightVSgFQOyA87__Qo_A43_GQo_GAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyA85_yA37_GA43_G_A20_A122_AKyA122_AA19_BackgroundModifierVyAA06_ShapeC0VyA99_A16_GGGQo_AKyAKyAKyAKyAKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyA85_yAA6HStackVyARyAL12DynamicStackVyARyAKyAKyAKyAKyA1_A24_GA17_GA10_GA34_GSg_APyARyA44__A44_SgtGGtGG_A31_AZtGGG_AA16PlainButtonStyleVQo_A17_GA6_yA16_SgGGA10_GA43_GAA24_BackgroundStyleModifierVyA16_GGA104_GGGGA43_GSg_A62_ySayAL28LACUIAuthButtonConfigurationVGSSA164_GtGG_A20_AKyA172_A43_GQo_A43_GA59_GtGGGAL013EmbedInScrollcS14NeededModifierVGA159_G_Qo_MR);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA9TupleViewVyACyAA0L0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0L14InputPredicateRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGACyAtA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA12_ACyA12_A0_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ACyACyACyACyAHyAJyACyACyAA6SpacerVAYGAA05_FlexxW0VG_ACyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyAA4TextV_A14_ACyA31_A0_yAA13TextAlignmentOGGACyA35_AA08_PaddingW0VGQo_A22_GAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA31__A14_A35_A35_Qo_tGGA37_GA37_GAA21_TraitWritingModifierVyAA0w13PriorityTraitZ0VGGAA010_FixedSizeW0VGACyACyACyACyAHyAA7ForEachVySayAD35LACUIAuthCountdownItemConfigurationVGSSAD022LACUIAuthCountdownItemL0VGGA37_GA37_GA50_GA53_GSgACyACyAD023LACUIAuthCountdownDelayL0VA37_GA53_GSgA25_ACyACyAlAEAM_ANQrqd___qd_0_xXEtAaPRd__AaKRd_0_r0_lFQOyAHyAJyACyAA0I0VyARyARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAlAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyACyA31_A28_GGA4_G_AA28BorderedProminentButtonStyleVQo_A0_yAA11ControlSizeOGG_A14_ACyA89_AA11_ClipEffectVyAA7CapsuleVGGACyA89_A91_yAA16RoundedRectangleVGGQo_AlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA81__A14_ACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyACyA82_A11_G_AA19BorderedButtonStyleVQo_A88_GA94_GACyAlAE10fontWeightyQrA2_6WeightVSgFQOyA81__Qo_A37_GQo_GARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyA79_yA31_GA37_G_A14_A116_ACyA116_AA19_BackgroundModifierVyAA06_ShapeL0VyA93_A10_GGGQo_ACyACyACyACyACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyA79_yAA6HStackVyAJyAD12DynamicStackVyAJyACyACyACyACyAWA18_GA11_GA4_GA28_GSg_AHyAJyA38__A38_SgtGGtGG_A25_ATtGGG_AA16PlainButtonStyleVQo_A11_GA0_yA10_SgGGA4_GA37_GAA24_BackgroundStyleModifierVyA10_GGA98_GGGGA37_GSg_A56_ySayAD28LACUIAuthButtonConfigurationVGSSA158_GtGG_A14_ACyA166_A37_GQo_A37_GA53_GtGGGAD013EmbedInScrolllN14NeededModifierVGA153_GMd,  &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA9TupleViewVyACyAA0L0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0L14InputPredicateRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGACyAtA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA12_ACyA12_A0_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ACyACyACyACyAHyAJyACyACyAA6SpacerVAYGAA05_FlexxW0VG_ACyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyAA4TextV_A14_ACyA31_A0_yAA13TextAlignmentOGGACyA35_AA08_PaddingW0VGQo_A22_GAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA31__A14_A35_A35_Qo_tGGA37_GA37_GAA21_TraitWritingModifierVyAA0w13PriorityTraitZ0VGGAA010_FixedSizeW0VGACyACyACyACyAHyAA7ForEachVySayAD35LACUIAuthCountdownItemConfigurationVGSSAD022LACUIAuthCountdownItemL0VGGA37_GA37_GA50_GA53_GSgACyACyAD023LACUIAuthCountdownDelayL0VA37_GA53_GSgA25_ACyACyAlAEAM_ANQrqd___qd_0_xXEtAaPRd__AaKRd_0_r0_lFQOyAHyAJyACyAA0I0VyARyARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAlAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyACyA31_A28_GGA4_G_AA28BorderedProminentButtonStyleVQo_A0_yAA11ControlSizeOGG_A14_ACyA89_AA11_ClipEffectVyAA7CapsuleVGGACyA89_A91_yAA16RoundedRectangleVGGQo_AlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA81__A14_ACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyACyA82_A11_G_AA19BorderedButtonStyleVQo_A88_GA94_GACyAlAE10fontWeightyQrA2_6WeightVSgFQOyA81__Qo_A37_GQo_GARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyA79_yA31_GA37_G_A14_A116_ACyA116_AA19_BackgroundModifierVyAA06_ShapeL0VyA93_A10_GGGQo_ACyACyACyACyACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyA79_yAA6HStackVyAJyAD12DynamicStackVyAJyACyACyACyACyAWA18_GA11_GA4_GA28_GSg_AHyAJyA38__A38_SgtGGtGG_A25_ATtGGG_AA16PlainButtonStyleVQo_A11_GA0_yA10_SgGGA4_GA37_GAA24_BackgroundStyleModifierVyA10_GGA98_GGGGA37_GSg_A56_ySayAD28LACUIAuthButtonConfigurationVGSSA158_GtGG_A14_ACyA166_A37_GQo_A37_GA53_GtGGGAD013EmbedInScrolllN14NeededModifierVGA153_GMR);
    v20 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GlassGroup<VStack<TupleView<(ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>?, ModifiedContent<ModifiedContent<LACUIAuthCountdownDelayView, _PaddingLayout>, _FixedSizeLayout>?, Sp();
    v38 = v19;
    v39 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v18;
    v39 = OpaqueTypeConformance2;
    v22 = swift_getOpaqueTypeConformance2();
    v23 = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout>? and conformance <A> A?();
    v38 = v15;
    v39 = v17;
    v40 = v22;
    v41 = v23;
    v24 = swift_getOpaqueTypeConformance2();
    v38 = v37[0];
    v39 = v24;
    swift_getOpaqueTypeConformance2();
    NavigationStack.init<>(root:)();
    (*(v10 + 16))(v8, v14, v9);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>( &lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0> and conformance NavigationStack<A, B>,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAgAE7toolbar7contentQrqd__yXE_tAaFRd__lFQOyAgAE0L20BackgroundVisibility_3forQrAA0O0O_AA16ToolbarPlacementVdtFQOyAgAEAI_ALQrAN_APdtFQOyAA15ModifiedContentVyARy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleF0VyARyAgAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyARyAA012_ConditionalT0VyARyARyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGARyA5_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA25_ARyA25_A13_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ARyARyARyARyAWyAYyARyARyAA6SpacerVA10_GAA16_FlexFrameLayoutVG_ARyAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyAA4TextV_A27_ARyA44_A13_yAA13TextAlignmentOGGARyA48_AA14_PaddingLayoutVGQo_A35_GAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA44__A27_A48_A48_Qo_tGGA50_GA50_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGARyARyARyARyAWyAA7ForEachVySayAS35LACUIAuthCountdownItemConfigurationVGSSAS022LACUIAuthCountdownItemF0VGGA50_GA50_GA63_GA66_GSgARyARyAS023LACUIAuthCountdownDelayF0VA50_GA66_GSgA38_ARyARyAgAEAZ_A_Qrqd___qd_0_xXEtAAA1_Rd__AaFRd_0_r0_lFQOyAWyAYyARyAA0Y0VyA3_yA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyAgAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyARyAA0J0VyARyA44_A41_GGA17_G_AA017BorderedProminentJ5StyleVQo_A13_yAA11ControlSizeOGG_A27_ARyA102_AA11_ClipEffectVyAA7CapsuleVGGARyA102_A104_yAA16RoundedRectangleVGGQo_AgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA94__A27_ARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyARyA95_A24_G_AA08BorderedJ5StyleVQo_A101_GA107_GARyAgAE10fontWeightyQrA15_6WeightVSgFQOyA94__Qo_A50_GQo_GA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyA92_yA44_GA50_G_A27_A129_ARyA129_AA01_N8ModifierVyAA06_ShapeF0VyA106_A23_GGGQo_ARyARyARyARyARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyA92_yAA6HStackVyAYyAS07DynamicD0VyAYyARyARyARyARyA8_A31_GA24_GA17_GA41_GSg_AWyAYyA51__A51_SgtGGtGG_A38_A5_tGGG_AA05PlainJ5StyleVQo_A24_GA13_yA23_SgGGA17_GA50_GAA01_N13StyleModifierVyA23_GGA111_GGGGA50_GSg_A69_ySayAS09LACUIAuthJ13ConfigurationVGSSA171_GtGG_A27_ARyA179_A50_GQo_A50_GA66_GtGGGAS013EmbedInScrollF16IfNeededModifierVGA166_G_Qo__Qo__ARyA139_yAYyA38_Sg_A177_tGGA66_GSgQo__Qo_GMd,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAgAE7toolbar7contentQrqd__yXE_tAaFRd__lFQOyAgAE0L20BackgroundVisibility_3forQrAA0O0O_AA16ToolbarPlacementVdtFQOyAgAEAI_ALQrAN_APdtFQOyAA15ModifiedContentVyARy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleF0VyARyAgAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyARyAA012_ConditionalT0VyARyARyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGARyA5_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA25_ARyA25_A13_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ARyARyARyARyAWyAYyARyARyAA6SpacerVA10_GAA16_FlexFrameLayoutVG_ARyAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyAA4TextV_A27_ARyA44_A13_yAA13TextAlignmentOGGARyA48_AA14_PaddingLayoutVGQo_A35_GAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA44__A27_A48_A48_Qo_tGGA50_GA50_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGARyARyARyARyAWyAA7ForEachVySayAS35LACUIAuthCountdownItemConfigurationVGSSAS022LACUIAuthCountdownItemF0VGGA50_GA50_GA63_GA66_GSgARyARyAS023LACUIAuthCountdownDelayF0VA50_GA66_GSgA38_ARyARyAgAEAZ_A_Qrqd___qd_0_xXEtAAA1_Rd__AaFRd_0_r0_lFQOyAWyAYyARyAA0Y0VyA3_yA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyAgAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyARyAA0J0VyARyA44_A41_GGA17_G_AA017BorderedProminentJ5StyleVQo_A13_yAA11ControlSizeOGG_A27_ARyA102_AA11_ClipEffectVyAA7CapsuleVGGARyA102_A104_yAA16RoundedRectangleVGGQo_AgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA94__A27_ARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyARyA95_A24_G_AA08BorderedJ5StyleVQo_A101_GA107_GARyAgAE10fontWeightyQrA15_6WeightVSgFQOyA94__Qo_A50_GQo_GA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyA92_yA44_GA50_G_A27_A129_ARyA129_AA01_N8ModifierVyAA06_ShapeF0VyA106_A23_GGGQo_ARyARyARyARyARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyA92_yAA6HStackVyAYyAS07DynamicD0VyAYyARyARyARyARyA8_A31_GA24_GA17_GA41_GSg_AWyAYyA51__A51_SgtGGtGG_A38_A5_tGGG_AA05PlainJ5StyleVQo_A24_GA13_yA23_SgGGA17_GA50_GAA01_N13StyleModifierVyA23_GGA111_GGGGA50_GSg_A69_ySayAS09LACUIAuthJ13ConfigurationVGSSA171_GtGG_A27_ARyA179_A50_GQo_A50_GA66_GtGGGAS013EmbedInScrollF16IfNeededModifierVGA166_G_Qo__Qo__ARyA139_yAYyA38_Sg_A177_tGGA66_GSgQo__Qo_GMR);
    _ConditionalContent<>.init(storage:)();
    return (*(v10 + 8))(v14, v9);
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAcAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0I20BackgroundVisibility_3forQrAA0L0O_AA16ToolbarPlacementVdtFQOyAcAEAE_AHQrAJ_ALdtFQOyAA15ModifiedContentVyANy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyANyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAA012_ConditionalQ0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGANyA1_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA21_ANyA21_A9_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ANyANyANyANyASyAUyANyANyAA6SpacerVA6_GAA16_FlexFrameLayoutVG_ANyAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A23_ANyA40_A9_yAA13TextAlignmentOGGANyA44_AA14_PaddingLayoutVGQo_A31_GAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA40__A23_A44_A44_Qo_tGGA46_GA46_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGANyANyANyANyASyAA7ForEachVySayAO35LACUIAuthCountdownItemConfigurationVGSSAO022LACUIAuthCountdownItemC0VGGA46_GA46_GA59_GA62_GSgANyANyAO023LACUIAuthCountdownDelayC0VA46_GA62_GSgA34_ANyANyAcAEAV_AWQrqd___qd_0_xXEtAaYRd__AaBRd_0_r0_lFQOyASyAUyANyAA0V0VyA_yA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAcAE11buttonStyleyQrqd__AA09PrimitiveG5StyleRd__lFQOyANyAA0G0VyANyA40_A37_GGA13_G_AA017BorderedProminentG5StyleVQo_A9_yAA11ControlSizeOGG_A23_ANyA98_AA11_ClipEffectVyAA7CapsuleVGGANyA98_A100_yAA16RoundedRectangleVGGQo_AcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA90__A23_ANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyANyA91_A20_G_AA08BorderedG5StyleVQo_A97_GA103_GANyAcAE10fontWeightyQrA11_6WeightVSgFQOyA90__Qo_A46_GQo_GA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyA88_yA40_GA46_G_A23_A125_ANyA125_AA01_K8ModifierVyAA06_ShapeC0VyA102_A19_GGGQo_ANyANyANyANyANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyA88_yAA6HStackVyAUyAO12DynamicStackVyAUyANyANyANyANyA4_A27_GA20_GA13_GA37_GSg_ASyAUyA47__A47_SgtGGtGG_A34_A1_tGGG_AA05PlainG5StyleVQo_A20_GA9_yA19_SgGGA13_GA46_GAA01_K13StyleModifierVyA19_GGA107_GGGGA46_GSg_A65_ySayAO09LACUIAuthG13ConfigurationVGSSA167_GtGG_A23_ANyA175_A46_GQo_A46_GA62_GtGGGAO013EmbedInScrollcZ14NeededModifierVGA162_G_Qo__Qo__ANyA135_yAUyA34_Sg_A173_tGGA62_GSgQo__Qo_Md,  &_s7SwiftUI4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAcAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0I20BackgroundVisibility_3forQrAA0L0O_AA16ToolbarPlacementVdtFQOyAcAEAE_AHQrAJ_ALdtFQOyAA15ModifiedContentVyANy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyANyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAA012_ConditionalQ0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGANyA1_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA21_ANyA21_A9_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ANyANyANyANyASyAUyANyANyAA6SpacerVA6_GAA16_FlexFrameLayoutVG_ANyAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A23_ANyA40_A9_yAA13TextAlignmentOGGANyA44_AA14_PaddingLayoutVGQo_A31_GAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA40__A23_A44_A44_Qo_tGGA46_GA46_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGANyANyANyANyASyAA7ForEachVySayAO35LACUIAuthCountdownItemConfigurationVGSSAO022LACUIAuthCountdownItemC0VGGA46_GA46_GA59_GA62_GSgANyANyAO023LACUIAuthCountdownDelayC0VA46_GA62_GSgA34_ANyANyAcAEAV_AWQrqd___qd_0_xXEtAaYRd__AaBRd_0_r0_lFQOyASyAUyANyAA0V0VyA_yA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAcAE11buttonStyleyQrqd__AA09PrimitiveG5StyleRd__lFQOyANyAA0G0VyANyA40_A37_GGA13_G_AA017BorderedProminentG5StyleVQo_A9_yAA11ControlSizeOGG_A23_ANyA98_AA11_ClipEffectVyAA7CapsuleVGGANyA98_A100_yAA16RoundedRectangleVGGQo_AcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA90__A23_ANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyANyA91_A20_G_AA08BorderedG5StyleVQo_A97_GA103_GANyAcAE10fontWeightyQrA11_6WeightVSgFQOyA90__Qo_A46_GQo_GA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyA88_yA40_GA46_G_A23_A125_ANyA125_AA01_K8ModifierVyAA06_ShapeC0VyA102_A19_GGGQo_ANyANyANyANyANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyA88_yAA6HStackVyAUyAO12DynamicStackVyAUyANyANyANyANyA4_A27_GA20_GA13_GA37_GSg_ASyAUyA47__A47_SgtGGtGG_A34_A1_tGGG_AA05PlainG5StyleVQo_A20_GA9_yA19_SgGGA13_GA46_GAA01_K13StyleModifierVyA19_GGA107_GGGGA46_GSg_A65_ySayAO09LACUIAuthG13ConfigurationVGSSA167_GtGG_A23_ANyA175_A46_GQo_A46_GA62_GtGGGAO013EmbedInScrollcZ14NeededModifierVGA162_G_Qo__Qo__ANyA135_yAUyA34_Sg_A173_tGGA62_GSgQo__Qo_MR);
    (*(*(v26 - 8) + 16))(v8, v2, v26);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>( &lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0> and conformance NavigationStack<A, B>,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAgAE7toolbar7contentQrqd__yXE_tAaFRd__lFQOyAgAE0L20BackgroundVisibility_3forQrAA0O0O_AA16ToolbarPlacementVdtFQOyAgAEAI_ALQrAN_APdtFQOyAA15ModifiedContentVyARy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleF0VyARyAgAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyARyAA012_ConditionalT0VyARyARyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGARyA5_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA25_ARyA25_A13_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ARyARyARyARyAWyAYyARyARyAA6SpacerVA10_GAA16_FlexFrameLayoutVG_ARyAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyAA4TextV_A27_ARyA44_A13_yAA13TextAlignmentOGGARyA48_AA14_PaddingLayoutVGQo_A35_GAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA44__A27_A48_A48_Qo_tGGA50_GA50_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGARyARyARyARyAWyAA7ForEachVySayAS35LACUIAuthCountdownItemConfigurationVGSSAS022LACUIAuthCountdownItemF0VGGA50_GA50_GA63_GA66_GSgARyARyAS023LACUIAuthCountdownDelayF0VA50_GA66_GSgA38_ARyARyAgAEAZ_A_Qrqd___qd_0_xXEtAAA1_Rd__AaFRd_0_r0_lFQOyAWyAYyARyAA0Y0VyA3_yA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyAgAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyARyAA0J0VyARyA44_A41_GGA17_G_AA017BorderedProminentJ5StyleVQo_A13_yAA11ControlSizeOGG_A27_ARyA102_AA11_ClipEffectVyAA7CapsuleVGGARyA102_A104_yAA16RoundedRectangleVGGQo_AgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA94__A27_ARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyARyA95_A24_G_AA08BorderedJ5StyleVQo_A101_GA107_GARyAgAE10fontWeightyQrA15_6WeightVSgFQOyA94__Qo_A50_GQo_GA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyA92_yA44_GA50_G_A27_A129_ARyA129_AA01_N8ModifierVyAA06_ShapeF0VyA106_A23_GGGQo_ARyARyARyARyARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyA92_yAA6HStackVyAYyAS07DynamicD0VyAYyARyARyARyARyA8_A31_GA24_GA17_GA41_GSg_AWyAYyA51__A51_SgtGGtGG_A38_A5_tGGG_AA05PlainJ5StyleVQo_A24_GA13_yA23_SgGGA17_GA50_GAA01_N13StyleModifierVyA23_GGA111_GGGGA50_GSg_A69_ySayAS09LACUIAuthJ13ConfigurationVGSSA171_GtGG_A27_ARyA179_A50_GQo_A50_GA66_GtGGGAS013EmbedInScrollF16IfNeededModifierVGA166_G_Qo__Qo__ARyA139_yAYyA38_Sg_A177_tGGA66_GSgQo__Qo_GMd,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAgAE7toolbar7contentQrqd__yXE_tAaFRd__lFQOyAgAE0L20BackgroundVisibility_3forQrAA0O0O_AA16ToolbarPlacementVdtFQOyAgAEAI_ALQrAN_APdtFQOyAA15ModifiedContentVyARy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleF0VyARyAgAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyARyAA012_ConditionalT0VyARyARyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGARyA5_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA25_ARyA25_A13_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ARyARyARyARyAWyAYyARyARyAA6SpacerVA10_GAA16_FlexFrameLayoutVG_ARyAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyAA4TextV_A27_ARyA44_A13_yAA13TextAlignmentOGGARyA48_AA14_PaddingLayoutVGQo_A35_GAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA44__A27_A48_A48_Qo_tGGA50_GA50_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGARyARyARyARyAWyAA7ForEachVySayAS35LACUIAuthCountdownItemConfigurationVGSSAS022LACUIAuthCountdownItemF0VGGA50_GA50_GA63_GA66_GSgARyARyAS023LACUIAuthCountdownDelayF0VA50_GA66_GSgA38_ARyARyAgAEAZ_A_Qrqd___qd_0_xXEtAAA1_Rd__AaFRd_0_r0_lFQOyAWyAYyARyAA0Y0VyA3_yA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyAgAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyARyAA0J0VyARyA44_A41_GGA17_G_AA017BorderedProminentJ5StyleVQo_A13_yAA11ControlSizeOGG_A27_ARyA102_AA11_ClipEffectVyAA7CapsuleVGGARyA102_A104_yAA16RoundedRectangleVGGQo_AgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA94__A27_ARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyARyA95_A24_G_AA08BorderedJ5StyleVQo_A101_GA107_GARyAgAE10fontWeightyQrA15_6WeightVSgFQOyA94__Qo_A50_GQo_GA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyA92_yA44_GA50_G_A27_A129_ARyA129_AA01_N8ModifierVyAA06_ShapeF0VyA106_A23_GGGQo_ARyARyARyARyARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyA92_yAA6HStackVyAYyAS07DynamicD0VyAYyARyARyARyARyA8_A31_GA24_GA17_GA41_GSg_AWyAYyA51__A51_SgtGGtGG_A38_A5_tGGG_AA05PlainJ5StyleVQo_A24_GA13_yA23_SgGGA17_GA50_GAA01_N13StyleModifierVyA23_GGA111_GGGGA50_GSg_A69_ySayAS09LACUIAuthJ13ConfigurationVGSSA171_GtGG_A27_ARyA179_A50_GQo_A50_GA66_GtGGGAS013EmbedInScrollF16IfNeededModifierVGA166_G_Qo__Qo__ARyA139_yAYyA38_Sg_A177_tGGA66_GSgQo__Qo_GMR);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0D20BackgroundVisibility_3forQrAA0G0O_AA16ToolbarPlacementVdtFQOyAcAEAD_AGQrAI_AKdtFQOyAA15ModifiedContentVyAMy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAMyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAA012_ConditionalL0VyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAMyA0_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA20_AMyA20_A8_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AMyAMyAMyAMyARyATyAMyAMyAA6SpacerVA5_GAA16_FlexFrameLayoutVG_AMyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A22_AMyA39_A8_yAA13TextAlignmentOGGAMyA43_AA14_PaddingLayoutVGQo_A30_GAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA39__A22_A43_A43_Qo_tGGA45_GA45_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAMyAMyAMyAMyARyAA7ForEachVySayAN35LACUIAuthCountdownItemConfigurationVGSSAN022LACUIAuthCountdownItemC0VGGA45_GA45_GA58_GA61_GSgAMyAMyAN023LACUIAuthCountdownDelayC0VA45_GA61_GSgA33_AMyAMyAcAEAU_AVQrqd___qd_0_xXEtAaXRd__AaBRd_0_r0_lFQOyARyATyAMyAA0Q0VyAZyAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAMyAA6ButtonVyAMyA39_A36_GGA12_G_AA28BorderedProminentButtonStyleVQo_A8_yAA11ControlSizeOGG_A22_AMyA97_AA11_ClipEffectVyAA7CapsuleVGGAMyA97_A99_yAA16RoundedRectangleVGGQo_AcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA89__A22_AMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyAMyA90_A19_G_AA19BorderedButtonStyleVQo_A96_GA102_GAMyAcAE10fontWeightyQrA10_6WeightVSgFQOyA89__Qo_A45_GQo_GAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyA87_yA39_GA45_G_A22_A124_AMyA124_AA01_F8ModifierVyAA06_ShapeC0VyA101_A18_GGGQo_AMyAMyAMyAMyAMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyA87_yAA6HStackVyATyAN12DynamicStackVyATyAMyAMyAMyAMyA3_A26_GA19_GA12_GA36_GSg_ARyATyA46__A46_SgtGGtGG_A33_A0_tGGG_AA16PlainButtonStyleVQo_A19_GA8_yA18_SgGGA12_GA45_GAA01_F13StyleModifierVyA18_GGA106_GGGGA45_GSg_A64_ySayAN28LACUIAuthButtonConfigurationVGSSA166_GtGG_A22_AMyA174_A45_GQo_A45_GA61_GtGGGAN013EmbedInScrollcU14NeededModifierVGA161_G_Qo__Qo__AMyA134_yATyA33_Sg_A172_tGGA61_GSgQo_Md,  &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0D20BackgroundVisibility_3forQrAA0G0O_AA16ToolbarPlacementVdtFQOyAcAEAD_AGQrAI_AKdtFQOyAA15ModifiedContentVyAMy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAMyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAA012_ConditionalL0VyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAMyA0_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA20_AMyA20_A8_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AMyAMyAMyAMyARyATyAMyAMyAA6SpacerVA5_GAA16_FlexFrameLayoutVG_AMyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A22_AMyA39_A8_yAA13TextAlignmentOGGAMyA43_AA14_PaddingLayoutVGQo_A30_GAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA39__A22_A43_A43_Qo_tGGA45_GA45_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAMyAMyAMyAMyARyAA7ForEachVySayAN35LACUIAuthCountdownItemConfigurationVGSSAN022LACUIAuthCountdownItemC0VGGA45_GA45_GA58_GA61_GSgAMyAMyAN023LACUIAuthCountdownDelayC0VA45_GA61_GSgA33_AMyAMyAcAEAU_AVQrqd___qd_0_xXEtAaXRd__AaBRd_0_r0_lFQOyARyATyAMyAA0Q0VyAZyAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAMyAA6ButtonVyAMyA39_A36_GGA12_G_AA28BorderedProminentButtonStyleVQo_A8_yAA11ControlSizeOGG_A22_AMyA97_AA11_ClipEffectVyAA7CapsuleVGGAMyA97_A99_yAA16RoundedRectangleVGGQo_AcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA89__A22_AMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyAMyA90_A19_G_AA19BorderedButtonStyleVQo_A96_GA102_GAMyAcAE10fontWeightyQrA10_6WeightVSgFQOyA89__Qo_A45_GQo_GAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyA87_yA39_GA45_G_A22_A124_AMyA124_AA01_F8ModifierVyAA06_ShapeC0VyA101_A18_GGGQo_AMyAMyAMyAMyAMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyA87_yAA6HStackVyATyAN12DynamicStackVyATyAMyAMyAMyAMyA3_A26_GA19_GA12_GA36_GSg_ARyATyA46__A46_SgtGGtGG_A33_A0_tGGG_AA16PlainButtonStyleVQo_A19_GA8_yA18_SgGGA12_GA45_GAA01_F13StyleModifierVyA18_GGA106_GGGGA45_GSg_A64_ySayAN28LACUIAuthButtonConfigurationVGSSA166_GtGG_A22_AMyA174_A45_GQo_A45_GA61_GtGGGAN013EmbedInScrollcU14NeededModifierVGA161_G_Qo__Qo__AMyA134_yATyA33_Sg_A172_tGGA61_GSgQo_MR);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE27toolbarBackgroundVisibility_3forQrAA0F0O_AA16ToolbarPlacementVdtFQOyAcAE0D0_AEQrAG_AIdtFQOyAA15ModifiedContentVyALy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyALyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAA012_ConditionalK0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGALyA_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA19_ALyA19_A7_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ALyALyALyALyAQyASyALyALyAA6SpacerVA4_GAA16_FlexFrameLayoutVG_ALyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A21_ALyA38_A7_yAA13TextAlignmentOGGALyA42_AA14_PaddingLayoutVGQo_A29_GAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA38__A21_A42_A42_Qo_tGGA44_GA44_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGALyALyALyALyAQyAA7ForEachVySayAM35LACUIAuthCountdownItemConfigurationVGSSAM022LACUIAuthCountdownItemC0VGGA44_GA44_GA57_GA60_GSgALyALyAM023LACUIAuthCountdownDelayC0VA44_GA60_GSgA32_ALyALyAcAEAT_AUQrqd___qd_0_xXEtAaWRd__AaBRd_0_r0_lFQOyAQyASyALyAA0P0VyAYyAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyALyA38_A35_GGA11_G_AA28BorderedProminentButtonStyleVQo_A7_yAA11ControlSizeOGG_A21_ALyA96_AA11_ClipEffectVyAA7CapsuleVGGALyA96_A98_yAA16RoundedRectangleVGGQo_AcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA88__A21_ALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyALyA89_A18_G_AA19BorderedButtonStyleVQo_A95_GA101_GALyAcAE10fontWeightyQrA9_6WeightVSgFQOyA88__Qo_A44_GQo_GAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyA86_yA38_GA44_G_A21_A123_ALyA123_AA01_E8ModifierVyAA06_ShapeC0VyA100_A17_GGGQo_ALyALyALyALyALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyA86_yAA6HStackVyASyAM12DynamicStackVyASyALyALyALyALyA2_A25_GA18_GA11_GA35_GSg_AQyASyA45__A45_SgtGGtGG_A32_A_tGGG_AA16PlainButtonStyleVQo_A18_GA7_yA17_SgGGA11_GA44_GAA01_E13StyleModifierVyA17_GGA105_GGGGA44_GSg_A63_ySayAM28LACUIAuthButtonConfigurationVGSSA165_GtGG_A21_ALyA173_A44_GQo_A44_GA60_GtGGGAM013EmbedInScrollcT14NeededModifierVGA160_G_Qo__Qo_Md,  &_s7SwiftUI4ViewPAAE27toolbarBackgroundVisibility_3forQrAA0F0O_AA16ToolbarPlacementVdtFQOyAcAE0D0_AEQrAG_AIdtFQOyAA15ModifiedContentVyALy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyALyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAA012_ConditionalK0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGALyA_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA19_ALyA19_A7_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ALyALyALyALyAQyASyALyALyAA6SpacerVA4_GAA16_FlexFrameLayoutVG_ALyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A21_ALyA38_A7_yAA13TextAlignmentOGGALyA42_AA14_PaddingLayoutVGQo_A29_GAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA38__A21_A42_A42_Qo_tGGA44_GA44_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGALyALyALyALyAQyAA7ForEachVySayAM35LACUIAuthCountdownItemConfigurationVGSSAM022LACUIAuthCountdownItemC0VGGA44_GA44_GA57_GA60_GSgALyALyAM023LACUIAuthCountdownDelayC0VA44_GA60_GSgA32_ALyALyAcAEAT_AUQrqd___qd_0_xXEtAaWRd__AaBRd_0_r0_lFQOyAQyASyALyAA0P0VyAYyAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyALyA38_A35_GGA11_G_AA28BorderedProminentButtonStyleVQo_A7_yAA11ControlSizeOGG_A21_ALyA96_AA11_ClipEffectVyAA7CapsuleVGGALyA96_A98_yAA16RoundedRectangleVGGQo_AcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA88__A21_ALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyALyA89_A18_G_AA19BorderedButtonStyleVQo_A95_GA101_GALyAcAE10fontWeightyQrA9_6WeightVSgFQOyA88__Qo_A44_GQo_GAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyA86_yA38_GA44_G_A21_A123_ALyA123_AA01_E8ModifierVyAA06_ShapeC0VyA100_A17_GGGQo_ALyALyALyALyALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyA86_yAA6HStackVyASyAM12DynamicStackVyASyALyALyALyALyA2_A25_GA18_GA11_GA35_GSg_AQyASyA45__A45_SgtGGtGG_A32_A_tGGG_AA16PlainButtonStyleVQo_A18_GA7_yA17_SgGGA11_GA44_GAA01_E13StyleModifierVyA17_GGA105_GGGGA44_GSg_A63_ySayAM28LACUIAuthButtonConfigurationVGSSA165_GtGG_A21_ALyA173_A44_GQo_A44_GA60_GtGGGAM013EmbedInScrollcT14NeededModifierVGA160_G_Qo__Qo_MR);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGSgMR);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE7toolbar_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAA15ModifiedContentVyAKy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAKyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAKyAzA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA18_AKyA18_A6_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AKyAKyAKyAKyAPyARyAKyAKyAA6SpacerVA3_GAA16_FlexFrameLayoutVG_AKyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A20_AKyA37_A6_yAA13TextAlignmentOGGAKyA41_AA14_PaddingLayoutVGQo_A28_GAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA37__A20_A41_A41_Qo_tGGA43_GA43_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAKyAKyAKyAKyAPyAA7ForEachVySayAL35LACUIAuthCountdownItemConfigurationVGSSAL022LACUIAuthCountdownItemC0VGGA43_GA43_GA56_GA59_GSgAKyAKyAL023LACUIAuthCountdownDelayC0VA43_GA59_GSgA31_AKyAKyAcAEAS_ATQrqd___qd_0_xXEtAaVRd__AaBRd_0_r0_lFQOyAPyARyAKyAA0O0VyAXyAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA37_A34_GGA10_G_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGG_A20_AKyA95_AA11_ClipEffectVyAA7CapsuleVGGAKyA95_A97_yAA16RoundedRectangleVGGQo_AcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA87__A20_AKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyAKyA88_A17_G_AA19BorderedButtonStyleVQo_A94_GA100_GAKyAcAE10fontWeightyQrA8_6WeightVSgFQOyA87__Qo_A43_GQo_GAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyA85_yA37_GA43_G_A20_A122_AKyA122_AA19_BackgroundModifierVyAA06_ShapeC0VyA99_A16_GGGQo_AKyAKyAKyAKyAKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyA85_yAA6HStackVyARyAL12DynamicStackVyARyAKyAKyAKyAKyA1_A24_GA17_GA10_GA34_GSg_APyARyA44__A44_SgtGGtGG_A31_AZtGGG_AA16PlainButtonStyleVQo_A17_GA6_yA16_SgGGA10_GA43_GAA24_BackgroundStyleModifierVyA16_GGA104_GGGGA43_GSg_A62_ySayAL28LACUIAuthButtonConfigurationVGSSA164_GtGG_A20_AKyA172_A43_GQo_A43_GA59_GtGGGAL013EmbedInScrollcS14NeededModifierVGA159_G_Qo_Md,  &_s7SwiftUI4ViewPAAE7toolbar_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAA15ModifiedContentVyAKy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAKyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAKyAzA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA18_AKyA18_A6_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AKyAKyAKyAKyAPyARyAKyAKyAA6SpacerVA3_GAA16_FlexFrameLayoutVG_AKyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A20_AKyA37_A6_yAA13TextAlignmentOGGAKyA41_AA14_PaddingLayoutVGQo_A28_GAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA37__A20_A41_A41_Qo_tGGA43_GA43_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAKyAKyAKyAKyAPyAA7ForEachVySayAL35LACUIAuthCountdownItemConfigurationVGSSAL022LACUIAuthCountdownItemC0VGGA43_GA43_GA56_GA59_GSgAKyAKyAL023LACUIAuthCountdownDelayC0VA43_GA59_GSgA31_AKyAKyAcAEAS_ATQrqd___qd_0_xXEtAaVRd__AaBRd_0_r0_lFQOyAPyARyAKyAA0O0VyAXyAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA37_A34_GGA10_G_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGG_A20_AKyA95_AA11_ClipEffectVyAA7CapsuleVGGAKyA95_A97_yAA16RoundedRectangleVGGQo_AcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA87__A20_AKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyAKyA88_A17_G_AA19BorderedButtonStyleVQo_A94_GA100_GAKyAcAE10fontWeightyQrA8_6WeightVSgFQOyA87__Qo_A43_GQo_GAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyA85_yA37_GA43_G_A20_A122_AKyA122_AA19_BackgroundModifierVyAA06_ShapeC0VyA99_A16_GGGQo_AKyAKyAKyAKyAKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyA85_yAA6HStackVyARyAL12DynamicStackVyARyAKyAKyAKyAKyA1_A24_GA17_GA10_GA34_GSg_APyARyA44__A44_SgtGGtGG_A31_AZtGGG_AA16PlainButtonStyleVQo_A17_GA6_yA16_SgGGA10_GA43_GAA24_BackgroundStyleModifierVyA16_GGA104_GGGGA43_GSg_A62_ySayAL28LACUIAuthButtonConfigurationVGSSA164_GtGG_A20_AKyA172_A43_GQo_A43_GA59_GtGGGAL013EmbedInScrollcS14NeededModifierVGA159_G_Qo_MR);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA9TupleViewVyACyAA0L0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0L14InputPredicateRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGACyAtA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA12_ACyA12_A0_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ACyACyACyACyAHyAJyACyACyAA6SpacerVAYGAA05_FlexxW0VG_ACyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyAA4TextV_A14_ACyA31_A0_yAA13TextAlignmentOGGACyA35_AA08_PaddingW0VGQo_A22_GAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA31__A14_A35_A35_Qo_tGGA37_GA37_GAA21_TraitWritingModifierVyAA0w13PriorityTraitZ0VGGAA010_FixedSizeW0VGACyACyACyACyAHyAA7ForEachVySayAD35LACUIAuthCountdownItemConfigurationVGSSAD022LACUIAuthCountdownItemL0VGGA37_GA37_GA50_GA53_GSgACyACyAD023LACUIAuthCountdownDelayL0VA37_GA53_GSgA25_ACyACyAlAEAM_ANQrqd___qd_0_xXEtAaPRd__AaKRd_0_r0_lFQOyAHyAJyACyAA0I0VyARyARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAlAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyACyA31_A28_GGA4_G_AA28BorderedProminentButtonStyleVQo_A0_yAA11ControlSizeOGG_A14_ACyA89_AA11_ClipEffectVyAA7CapsuleVGGACyA89_A91_yAA16RoundedRectangleVGGQo_AlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA81__A14_ACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyACyA82_A11_G_AA19BorderedButtonStyleVQo_A88_GA94_GACyAlAE10fontWeightyQrA2_6WeightVSgFQOyA81__Qo_A37_GQo_GARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyA79_yA31_GA37_G_A14_A116_ACyA116_AA19_BackgroundModifierVyAA06_ShapeL0VyA93_A10_GGGQo_ACyACyACyACyACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyA79_yAA6HStackVyAJyAD12DynamicStackVyAJyACyACyACyACyAWA18_GA11_GA4_GA28_GSg_AHyAJyA38__A38_SgtGGtGG_A25_ATtGGG_AA16PlainButtonStyleVQo_A11_GA0_yA10_SgGGA4_GA37_GAA24_BackgroundStyleModifierVyA10_GGA98_GGGGA37_GSg_A56_ySayAD28LACUIAuthButtonConfigurationVGSSA158_GtGG_A14_ACyA166_A37_GQo_A37_GA53_GtGGGAD013EmbedInScrolllN14NeededModifierVGA153_GMd,  &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA9TupleViewVyACyAA0L0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0L14InputPredicateRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGACyAtA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA12_ACyA12_A0_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ACyACyACyACyAHyAJyACyACyAA6SpacerVAYGAA05_FlexxW0VG_ACyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyAA4TextV_A14_ACyA31_A0_yAA13TextAlignmentOGGACyA35_AA08_PaddingW0VGQo_A22_GAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA31__A14_A35_A35_Qo_tGGA37_GA37_GAA21_TraitWritingModifierVyAA0w13PriorityTraitZ0VGGAA010_FixedSizeW0VGACyACyACyACyAHyAA7ForEachVySayAD35LACUIAuthCountdownItemConfigurationVGSSAD022LACUIAuthCountdownItemL0VGGA37_GA37_GA50_GA53_GSgACyACyAD023LACUIAuthCountdownDelayL0VA37_GA53_GSgA25_ACyACyAlAEAM_ANQrqd___qd_0_xXEtAaPRd__AaKRd_0_r0_lFQOyAHyAJyACyAA0I0VyARyARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAlAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyACyA31_A28_GGA4_G_AA28BorderedProminentButtonStyleVQo_A0_yAA11ControlSizeOGG_A14_ACyA89_AA11_ClipEffectVyAA7CapsuleVGGACyA89_A91_yAA16RoundedRectangleVGGQo_AlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA81__A14_ACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyACyA82_A11_G_AA19BorderedButtonStyleVQo_A88_GA94_GACyAlAE10fontWeightyQrA2_6WeightVSgFQOyA81__Qo_A37_GQo_GARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyA79_yA31_GA37_G_A14_A116_ACyA116_AA19_BackgroundModifierVyAA06_ShapeL0VyA93_A10_GGGQo_ACyACyACyACyACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyA79_yAA6HStackVyAJyAD12DynamicStackVyAJyACyACyACyACyAWA18_GA11_GA4_GA28_GSg_AHyAJyA38__A38_SgtGGtGG_A25_ATtGGG_AA16PlainButtonStyleVQo_A11_GA0_yA10_SgGGA4_GA37_GAA24_BackgroundStyleModifierVyA10_GGA98_GGGGA37_GSg_A56_ySayAD28LACUIAuthButtonConfigurationVGSSA158_GtGG_A14_ACyA166_A37_GQo_A37_GA53_GtGGGAD013EmbedInScrolllN14NeededModifierVGA153_GMR);
    v32 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GlassGroup<VStack<TupleView<(ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>?, ModifiedContent<ModifiedContent<LACUIAuthCountdownDelayView, _PaddingLayout>, _FixedSizeLayout>?, Sp();
    v38 = v31;
    v39 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v38 = v30;
    v39 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    v35 = lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout>? and conformance <A> A?();
    v38 = v28;
    v39 = v29;
    v40 = v34;
    v41 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v38 = v27;
    v39 = v36;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t closure #1 in LACUIAuthCountdownView.barButtons(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LACUIAuthCountdownView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyAKyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0N14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAA08ModifiedM0VyAmAE11buttonStyleyQrqd__AA09PrimitiveiW0Rd__lFQOyASyAA0I0VyASyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiW0VQo_A3_yAA11ControlSizeOGG_AA8SolariumVASyA15_AA11_ClipEffectVyAA7CapsuleVGGASyA15_A19_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA1__A17_ASyASyAmAEATyQrqd__AaURd__lFQOyASyA8_AA011_ForegroundW8ModifierVyAA5ColorVGG_AA08BorderediW0VQo_A14_GA22_GASyAmAE10fontWeightyQrA5_6WeightVSgFQOyA1__Qo_AA14_PaddingLayoutVGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyASyAWyAYGA46_G_A17_A51_ASyA51_AA19_BackgroundModifierVyAA06_ShapeN0VyA21_A32_GGGQo_ASyASyASyASyASyASyAmAEATyQrqd__AaURd__lFQOyAWyAA6HStackVyAA05TupleN0VyAD12DynamicStackVyA63_yASyASyASyASyASyAA5ImageVAA18_AspectRatioLayoutVGA3_yAA19SymbolRenderingModeVSgGGA33_GA7_GA_GSg_AA6VStackVyA63_yASyASyAYA3_yAA0Y9AlignmentOGGA46_G_A86_SgtGGtGG_AA6SpacerVA67_tGGG_AA05PlainiW0VQo_A33_GA3_yA32_SgGGA7_GA46_GAA011_BackgroundW8ModifierVyA32_GGA26_GGGGGMd, &_s7SwiftUI7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyAKyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0N14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAA08ModifiedM0VyAmAE11buttonStyleyQrqd__AA09PrimitiveiW0Rd__lFQOyASyAA0I0VyASyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiW0VQo_A3_yAA11ControlSizeOGG_AA8SolariumVASyA15_AA11_ClipEffectVyAA7CapsuleVGGASyA15_A19_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA1__A17_ASyASyAmAEATyQrqd__AaURd__lFQOyASyA8_AA011_ForegroundW8ModifierVyAA5ColorVGG_AA08BorderediW0VQo_A14_GA22_GASyAmAE10fontWeightyQrA5_6WeightVSgFQOyA1__Qo_AA14_PaddingLayoutVGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyASyAWyAYGA46_G_A17_A51_ASyA51_AA19_BackgroundModifierVyAA06_ShapeN0VyA21_A32_GGGQo_ASyASyASyASyASyASyAmAEATyQrqd__AaURd__lFQOyAWyAA6HStackVyAA05TupleN0VyAD12DynamicStackVyA63_yASyASyASyASyASyAA5ImageVAA18_AspectRatioLayoutVGA3_yAA19SymbolRenderingModeVSgGGA33_GA7_GA_GSg_AA6VStackVyA63_yASyASyAYA3_yAA0Y9AlignmentOGGA46_G_A86_SgtGGtGG_AA6SpacerVA67_tGGG_AA05PlainiW0VQo_A33_GA3_yA32_SgGGA7_GA46_GAA011_BackgroundW8ModifierVyA32_GGA26_GGGGGMR);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = static Solarium.isEnabled.getter();
  v25 = (v17 & 1) == 0;
  v26 = v17;
  v27 = a2;
  outlined init with copy of LACUIAuthCountdownView(a1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LACUIAuthCountdownView);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  outlined init with take of RoundedRectangle(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for LACUIAuthCountdownView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_sSay25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedE0VyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAMyAA0Q0VyAMyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVAMyA9_AA11_ClipEffectVyAA7CapsuleVGGAMyA9_A13_yAA16RoundedRectangleVGGQo_AgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAW_A11_AMyAMyAgAEANyQrqd__AaORd__lFQOyAMyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GAMyAgAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAEyAgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAMyAQyASGA40_G_A11_A45_AMyA45_AA011_BackgroundY0VyAA06_ShapeF0VyA15_A26_GGGQo_AMyAMyAMyAMyAMyAMyAgAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleF0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yAMyAMyAMyAMyAMyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yAMyAMyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedE0VyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAMyAA0Q0VyAMyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVAMyA9_AA11_ClipEffectVyAA7CapsuleVGGAMyA9_A13_yAA16RoundedRectangleVGGQo_AgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAW_A11_AMyAMyAgAEANyQrqd__AaORd__lFQOyAMyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GAMyAgAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAEyAgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAMyAQyASGA40_G_A11_A45_AMyA45_AA011_BackgroundY0VyAA06_ShapeF0VyA15_A26_GGGQo_AMyAMyAMyAMyAMyAMyAgAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleF0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yAMyAMyAMyAMyAMyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yAMyAMyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [LACUIAuthButtonConfiguration] and conformance [A], &_sSay25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_sSay25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type LACUIAuthButtonConfiguration and conformance LACUIAuthButtonConfiguration();
  ForEach<>.init(_:content:)();
  v20 = v10[2];
  v20(v14, v16, v9);
  *a3 = 0;
  v21 = v26;
  *(a3 + 8) = v25;
  *(a3 + 9) = v21 & 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyANyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0O14InputPredicateRd__AaORd_0_AaORd_1_r1_lFQOyAA08ModifiedN0VyApAE11buttonStyleyQrqd__AA09PrimitivejX0Rd__lFQOyAVyAA0J0VyAVyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentjX0VQo_A6_yAA11ControlSizeOGG_AA8SolariumVAVyA18_AA11_ClipEffectVyAA7CapsuleVGGAVyA18_A22_yAA16RoundedRectangleVGGQo_ApAEAQ_ArSQrqd___qd_0_xXEqd_1_xXEtAaTRd__AaORd_0_AaORd_1_r1_lFQOyA4__A20_AVyAVyApAEAWyQrqd__AaXRd__lFQOyAVyA11_AA011_ForegroundX8ModifierVyAA5ColorVGG_AA08BorderedjX0VQo_A17_GA25_GAVyApAE10fontWeightyQrA8_6WeightVSgFQOyA4__Qo_AA14_PaddingLayoutVGQo_GANyApAEAQ_ArSQrqd___qd_0_xXEqd_1_xXEtAaTRd__AaORd_0_AaORd_1_r1_lFQOyAVyAZyA0_GA49_G_A20_A54_AVyA54_AA19_BackgroundModifierVyAA06_ShapeO0VyA24_A35_GGGQo_AVyAVyAVyAVyAVyAVyApAEAWyQrqd__AaXRd__lFQOyAZyAA6HStackVyAA05TupleO0VyAG12DynamicStackVyA66_yAVyAVyAVyAVyAVyAA5ImageVAA18_AspectRatioLayoutVGA6_yAA19SymbolRenderingModeVSgGGA36_GA10_GA2_GSg_AA6VStackVyA66_yAVyAVyA0_A6_yAA0Z9AlignmentOGGA49_G_A89_SgtGGtGG_ACA70_tGGG_AA05PlainjX0VQo_A36_GA6_yA35_SgGGA10_GA49_GAA011_BackgroundX8ModifierVyA35_GGA29_GGGGGtMd, &_s7SwiftUI6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyANyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0O14InputPredicateRd__AaORd_0_AaORd_1_r1_lFQOyAA08ModifiedN0VyApAE11buttonStyleyQrqd__AA09PrimitivejX0Rd__lFQOyAVyAA0J0VyAVyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentjX0VQo_A6_yAA11ControlSizeOGG_AA8SolariumVAVyA18_AA11_ClipEffectVyAA7CapsuleVGGAVyA18_A22_yAA16RoundedRectangleVGGQo_ApAEAQ_ArSQrqd___qd_0_xXEqd_1_xXEtAaTRd__AaORd_0_AaORd_1_r1_lFQOyA4__A20_AVyAVyApAEAWyQrqd__AaXRd__lFQOyAVyA11_AA011_ForegroundX8ModifierVyAA5ColorVGG_AA08BorderedjX0VQo_A17_GA25_GAVyApAE10fontWeightyQrA8_6WeightVSgFQOyA4__Qo_AA14_PaddingLayoutVGQo_GANyApAEAQ_ArSQrqd___qd_0_xXEqd_1_xXEtAaTRd__AaORd_0_AaORd_1_r1_lFQOyAVyAZyA0_GA49_G_A20_A54_AVyA54_AA19_BackgroundModifierVyAA06_ShapeO0VyA24_A35_GGGQo_AVyAVyAVyAVyAVyAVyApAEAWyQrqd__AaXRd__lFQOyAZyAA6HStackVyAA05TupleO0VyAG12DynamicStackVyA66_yAVyAVyAVyAVyAVyAA5ImageVAA18_AspectRatioLayoutVGA6_yAA19SymbolRenderingModeVSgGGA36_GA10_GA2_GSg_AA6VStackVyA66_yAVyAVyA0_A6_yAA0Z9AlignmentOGGA49_G_A89_SgtGGtGG_ACA70_tGGG_AA05PlainjX0VQo_A36_GA6_yA35_SgGGA10_GA49_GAA011_BackgroundX8ModifierVyA35_GGA29_GGGGGtMR);
  v20((a3 + *(v22 + 48)), v14, v9);
  v23 = v10[1];
  v23(v16, v9);
  return (v23)(v14, v9);
}

uint64_t LACUIAuthCountdownView.button(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v7 = *(a1 + 64);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return closure #1 in LACUIAuthCountdownView.button(with:)(v6, v2, a2);
}

uint64_t closure #1 in LACUIAuthCountdownView.lockIcon.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 64);
  v10 = *(a1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(a1 + 80);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a2 + 80) = v12;
  *(a2 + 32) = v2;
  *(a2 + 48) = v3;
  *(a2 + 64) = v4;
  *a2 = v5;
  *(a2 + 16) = v6;
  return outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v9, v8, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMR);
}

uint64_t closure #2 in LACUIAuthCountdownView.lockIcon.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[4];
  v16 = a1[3];
  v17 = v4;
  v18 = *(a1 + 10);
  v5 = a1[1];
  v13 = *a1;
  v14 = v5;
  v15 = v3;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA19SymbolRenderingModeVSgGGMR) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v8 = type metadata accessor for SymbolRenderingMode();
  (*(*(v8 - 8) + 56))(v6 + v7, 0, 1, v8);
  *v6 = swift_getKeyPath();
  v9 = v14;
  *a2 = v13;
  *(a2 + 16) = v9;
  *(a2 + 80) = v18;
  v10 = v17;
  *(a2 + 48) = v16;
  *(a2 + 64) = v10;
  *(a2 + 32) = v15;
  return outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v13, v12, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMR);
}

uint64_t closure #1 in LACUIAuthCountdownView.informativeText.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_AA8SolariumVAA15ModifiedContentVyAiA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGASQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_AA8SolariumVAA15ModifiedContentVyAiA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGASQo_MR);
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v75 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v79 = &v56[-v8];
  v74 = type metadata accessor for AccessibilityTraits();
  v72 = *(v74 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v62 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_AA8SolariumVAA15ModifiedContentVyAiA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAMyAsA14_PaddingLayoutVGQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_AA8SolariumVAA15ModifiedContentVyAiA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAMyAsA14_PaddingLayoutVGQo_MR);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v56[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v73 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v78 = &v56[-v20];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = v99;
  v70 = v100;
  v71 = v98;
  v22 = v101;
  v68 = v103;
  v69 = v102;
  static Alignment.center.getter();
  v90 = 1;
  v89 = v21;
  v88 = v22;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v63 = v90;
  v64 = v89;
  v65 = v88;
  v61 = (*(a1 + 8) + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration);
  v23 = v61[3];
  v24 = v61[4];

  static Font.Weight.bold.getter();
  v25 = Text.fontWeight(_:)();
  v58 = v26;
  v59 = v25;
  v27 = v26;
  LOBYTE(v23) = v28;
  v30 = v29;
  v60 = v29;

  v80 = v25;
  v81 = v27;
  v57 = v23 & 1;
  LOBYTE(v82) = v23 & 1;
  v83 = v30;
  Solarium.init()();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMR);
  v33 = lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
  v34 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v35 = MEMORY[0x277CE0BD8];
  v36 = MEMORY[0x277CE1350];
  View.staticIf<A, B, C>(_:then:else:)();
  outlined consume of Text.Storage(v59, v58, v57);

  v37 = v62;
  static AccessibilityTraits.isHeader.getter();
  v80 = v35;
  v81 = v36;
  v82 = v31;
  v83 = v32;
  v84 = MEMORY[0x277CE0BC8];
  v85 = MEMORY[0x277CE1340];
  v86 = v33;
  v87 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v78;
  v40 = v66;
  MEMORY[0x259C58A90](v37, v66, OpaqueTypeConformance2);
  (*(v72 + 8))(v37, v74);
  (*(v67 + 8))(v15, v40);
  v41 = v61[6];
  v80 = v61[5];
  v81 = v41;
  LOBYTE(v82) = 0;
  v83 = MEMORY[0x277D84F90];

  Solarium.init()();
  v42 = v79;
  View.staticIf<A, B, C>(_:then:else:)();

  v43 = v73;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v39, v73, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMR);
  v44 = v75;
  v45 = v76;
  v46 = *(v76 + 16);
  v47 = v42;
  v48 = v77;
  v46(v75, v47, v77);
  *a2 = 0;
  *(a2 + 8) = v63;
  *(a2 + 16) = v71;
  *(a2 + 24) = v64;
  *(a2 + 32) = v70;
  *(a2 + 40) = v65;
  v49 = v68;
  *(a2 + 48) = v69;
  *(a2 + 56) = v49;
  v50 = v96;
  *(a2 + 128) = v95;
  *(a2 + 144) = v50;
  *(a2 + 160) = v97;
  v51 = v92;
  *(a2 + 64) = v91;
  *(a2 + 80) = v51;
  v52 = v94;
  *(a2 + 96) = v93;
  *(a2 + 112) = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexfG0VG_ACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0I14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAsA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGACyA_AA08_PaddingG0VGQo_AA023AccessibilityAttachmentU0VGAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAS_AUA_A_Qo_tMd, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexfG0VG_ACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0I14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAsA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGACyA_AA08_PaddingG0VGQo_AA023AccessibilityAttachmentU0VGAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAS_AUA_A_Qo_tMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v43, a2 + *(v53 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMR);
  v46((a2 + *(v53 + 64)), v44, v48);
  v54 = *(v45 + 8);
  v54(v79, v48);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v78, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMR);
  v54(v44, v48);
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v43, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMR);
}

uint64_t closure #1 in closure #1 in LACUIAuthCountdownView.informativeText.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  LOBYTE(v5) = v10;
  v12 = v11;

  result = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t closure #2 in closure #1 in LACUIAuthCountdownView.informativeText.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  static Font.largeTitle.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  LOBYTE(v5) = v10;
  v12 = v11;

  KeyPath = swift_getKeyPath();
  v14 = static Edge.Set.vertical.getter();
  result = EdgeInsets.init(_all:)();
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  *(a2 + 80) = v19;
  *(a2 + 88) = 0;
  return result;
}

uint64_t closure #3 in closure #1 in LACUIAuthCountdownView.informativeText.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  static Font.title2.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  LOBYTE(v5) = v10;

  static HierarchicalShapeStyle.secondary.getter();
  v11 = Text.foregroundStyle<A>(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  outlined consume of Text.Storage(v7, v9, v5 & 1);

  result = swift_getKeyPath();
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  return result;
}

uint64_t closure #4 in closure #1 in LACUIAuthCountdownView.informativeText.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  outlined copy of Text.Storage(v3, v4, v5);
}

uint64_t closure #1 in closure #1 in LACUIAuthCountdownView.actionItems(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;

  outlined copy of LACUIAuthImageConfiguration();
}

uint64_t closure #1 in LACUIAuthCountdownView.buttons.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for LACUIAuthCountdownView();
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = v5;
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyAKyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0N14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAA08ModifiedM0VyAmAE11buttonStyleyQrqd__AA09PrimitiveiW0Rd__lFQOyASyAA0I0VyASyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiW0VQo_A3_yAA11ControlSizeOGG_AA8SolariumVASyA15_AA11_ClipEffectVyAA7CapsuleVGGASyA15_A19_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA1__A17_ASyASyAmAEATyQrqd__AaURd__lFQOyASyA8_AA011_ForegroundW8ModifierVyAA5ColorVGG_AA08BorderediW0VQo_A14_GA22_GASyAmAE10fontWeightyQrA5_6WeightVSgFQOyA1__Qo_AA14_PaddingLayoutVGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyASyAWyAYGA46_G_A17_A51_ASyA51_AA19_BackgroundModifierVyAA06_ShapeN0VyA21_A32_GGGQo_ASyASyASyASyASyASyAmAEATyQrqd__AaURd__lFQOyAWyAA6HStackVyAA05TupleN0VyAD12DynamicStackVyA63_yASyASyASyASyASyAA5ImageVAA18_AspectRatioLayoutVGA3_yAA19SymbolRenderingModeVSgGGA33_GA7_GA_GSg_AA6VStackVyA63_yASyASyAYA3_yAA0Y9AlignmentOGGA46_G_A86_SgtGGtGG_AA6SpacerVA67_tGGG_AA05PlainiW0VQo_A33_GA3_yA32_SgGGA7_GA46_GAA011_BackgroundW8ModifierVyA32_GGA26_GGGGGMd, &_s7SwiftUI7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyAKyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0N14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAA08ModifiedM0VyAmAE11buttonStyleyQrqd__AA09PrimitiveiW0Rd__lFQOyASyAA0I0VyASyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiW0VQo_A3_yAA11ControlSizeOGG_AA8SolariumVASyA15_AA11_ClipEffectVyAA7CapsuleVGGASyA15_A19_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA1__A17_ASyASyAmAEATyQrqd__AaURd__lFQOyASyA8_AA011_ForegroundW8ModifierVyAA5ColorVGG_AA08BorderediW0VQo_A14_GA22_GASyAmAE10fontWeightyQrA5_6WeightVSgFQOyA1__Qo_AA14_PaddingLayoutVGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyASyAWyAYGA46_G_A17_A51_ASyA51_AA19_BackgroundModifierVyAA06_ShapeN0VyA21_A32_GGGQo_ASyASyASyASyASyASyAmAEATyQrqd__AaURd__lFQOyAWyAA6HStackVyAA05TupleN0VyAD12DynamicStackVyA63_yASyASyASyASyASyAA5ImageVAA18_AspectRatioLayoutVGA3_yAA19SymbolRenderingModeVSgGGA33_GA7_GA_GSg_AA6VStackVyA63_yASyASyAYA3_yAA0Y9AlignmentOGGA46_G_A86_SgtGGtGG_AA6SpacerVA67_tGGG_AA05PlainiW0VQo_A33_GA3_yA32_SgGGA7_GA46_GAA011_BackgroundW8ModifierVyA32_GGA26_GGGGGMR);
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  v8 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSgMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v53 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  v22 = *(a1 + 8) + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthCountdownViewModel_configuration;
  v23 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v24 = v22 + *(v23 + 44);
  v64 = *v24;
  v25 = *(v24 + 16);
  v26 = *(v24 + 32);
  v27 = *(v24 + 48);
  v68 = *(v24 + 64);
  v66 = v26;
  v67 = v27;
  v65 = v25;
  v28 = *(v24 + 16);
  v29 = *(v24 + 32);
  v30 = *(v24 + 48);
  v72 = *(v24 + 64);
  v70 = v29;
  v71 = v30;
  v69 = v28;
  if (*(&v64 + 1))
  {
    v62[0] = v64;
    v62[1] = v69;
    v62[2] = v70;
    v62[3] = v71;
    v63 = v72;
    v60[2] = v66;
    v60[3] = v67;
    v61 = v68;
    v60[0] = v64;
    v60[1] = v65;
    outlined init with copy of LACUIAuthButtonConfiguration(v60, &v59);
    closure #1 in LACUIAuthCountdownView.button(with:)(v62, a1, v15);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v64, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
    v31 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v32 = &v15[*(v11 + 36)];
    *v32 = v31;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v15, v21, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GMR);
    (*(v12 + 56))(v21, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v21, 1, 1, v11);
  }

  *&v60[0] = *(v22 + *(v23 + 36));
  outlined init with copy of LACUIAuthCountdownView(a1, v6, type metadata accessor for LACUIAuthCountdownView);
  v37 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v38 = swift_allocObject();
  outlined init with take of RoundedRectangle(v6, v38 + v37, type metadata accessor for LACUIAuthCountdownView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_sSay25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedE0VyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAMyAA0Q0VyAMyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVAMyA9_AA11_ClipEffectVyAA7CapsuleVGGAMyA9_A13_yAA16RoundedRectangleVGGQo_AgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAW_A11_AMyAMyAgAEANyQrqd__AaORd__lFQOyAMyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GAMyAgAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAEyAgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAMyAQyASGA40_G_A11_A45_AMyA45_AA011_BackgroundY0VyAA06_ShapeF0VyA15_A26_GGGQo_AMyAMyAMyAMyAMyAMyAgAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleF0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yAMyAMyAMyAMyAMyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yAMyAMyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedE0VyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAMyAA0Q0VyAMyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVAMyA9_AA11_ClipEffectVyAA7CapsuleVGGAMyA9_A13_yAA16RoundedRectangleVGGQo_AgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAW_A11_AMyAMyAgAEANyQrqd__AaORd__lFQOyAMyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GAMyAgAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAEyAgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAMyAQyASGA40_G_A11_A45_AMyA45_AA011_BackgroundY0VyAA06_ShapeF0VyA15_A26_GGGQo_AMyAMyAMyAMyAMyAMyAgAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleF0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yAMyAMyAMyAMyAMyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yAMyAMyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [LACUIAuthButtonConfiguration] and conformance [A], &_sSay25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_sSay25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type LACUIAuthButtonConfiguration and conformance LACUIAuthButtonConfiguration();
  v39 = v54;
  ForEach<>.init(_:content:)();
  v40 = v21;
  v41 = v53;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v21, v53, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSgMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSgMR);
  v43 = v55;
  v42 = v56;
  v44 = *(v55 + 16);
  v45 = v57;
  v44(v56, v39, v57);
  v46 = v58;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v41, v58, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSgMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSgMR);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSg_AA7ForEachVySayA58_09LACUIAuthQ13ConfigurationVGSSA108_GtMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSg_AA7ForEachVySayA58_09LACUIAuthQ13ConfigurationVGSSA108_GtMR);
  v44((v46 + *(v47 + 48)), v42, v45);
  v48 = *(v43 + 8);
  v48(v39, v45);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v40, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSgMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSgMR);
  v48(v42, v45);
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v41, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSgMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAiAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyACyAA0Q0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVACyA9_AA11_ClipEffectVyAA7CapsuleVGGACyA9_A13_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAW_A11_ACyACyAiAEANyQrqd__AaORd__lFQOyACyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GACyAiAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyACyAQyASGA40_G_A11_A45_ACyA45_AA011_BackgroundY0VyAA06_ShapeG0VyA15_A26_GGGQo_ACyACyACyACyACyACyAiAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleG0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yACyACyACyACyACyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yACyACyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGA40_GSgMR);
}

double closure #2 in LACUIAuthCountdownView.buttons.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.horizontal.getter();
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(a1, a2, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMR);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyAKyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_ACyACyAmAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeG0VyA19_A30_GGGQo_ACyACyACyACyACyACyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAGy023LocalAuthenticationCoreB012DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AEyAGyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGA44_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyAKyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_ACyACyAmAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeG0VyA19_A30_GGGQo_ACyACyACyACyACyACyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAGy023LocalAuthenticationCoreB012DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AEyAGyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGA44_GMR) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t closure #1 in LACUIAuthCountdownView.button(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v193 = a2;
  v198 = a3;
  v180 = type metadata accessor for RoundedRectangle();
  v4 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v181 = (&v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v176 = type metadata accessor for PlainButtonStyle();
  v175 = *(v176 - 8);
  v6 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v174 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMR);
  v172 = *(v173 - 8);
  v8 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v171 = &v166 - v9;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGMR);
  v10 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v179 = &v166 - v11;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v12 = *(*(v191 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v191);
  v178 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v182 = &v166 - v15;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAuMyAuA19_BackgroundModifierVyAA06_ShapeF0VyAA7CapsuleVAA5ColorVGGGQo_AMyAMyAMyAMyAMyAMyAgAE11buttonStyleyQrqd__AA09PrimitivenY0Rd__lFQOyAOyAA6HStackVyAA05TupleF0Vy023LocalAuthenticationCoreB012DynamicStackVyA13_yAMyAMyAMyAMyAMyAA5ImageVAA012_AspectRatioQ0VGAA022_EnvironmentKeyWritingT0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundyT0VyA3_GGA23_yAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyA13_yAMyAMyAQA23_yAA0O9AlignmentOGGATG_A48_SgtGGtGG_AA6SpacerVA18_tGGG_AA05PlainnY0VQo_A31_GA23_yA3_SgGGA36_GATGAA01_syT0VyA3_GGAA11_ClipEffectVyAA16RoundedRectangleVGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAuMyAuA19_BackgroundModifierVyAA06_ShapeF0VyAA7CapsuleVAA5ColorVGGGQo_AMyAMyAMyAMyAMyAMyAgAE11buttonStyleyQrqd__AA09PrimitivenY0Rd__lFQOyAOyAA6HStackVyAA05TupleF0Vy023LocalAuthenticationCoreB012DynamicStackVyA13_yAMyAMyAMyAMyAMyAA5ImageVAA012_AspectRatioQ0VGAA022_EnvironmentKeyWritingT0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundyT0VyA3_GGA23_yAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyA13_yAMyAMyAQA23_yAA0O9AlignmentOGGATG_A48_SgtGGtGG_AA6SpacerVA18_tGGG_AA05PlainnY0VQo_A31_GA23_yA3_SgGGA36_GATGAA01_syT0VyA3_GGAA11_ClipEffectVyAA16RoundedRectangleVGG_GMR);
  v16 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v190 = &v166 - v17;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMR);
  v18 = *(*(v197 - 8) + 64);
  MEMORY[0x28223BE20](v197);
  v192 = &v166 - v19;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
  v20 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v22 = &v166 - v21;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAqIyAqA19_BackgroundModifierVyAA06_ShapeC0VyAA7CapsuleVAA5ColorVGGGQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAqIyAqA19_BackgroundModifierVyAA06_ShapeC0VyAA7CapsuleVAA5ColorVGGGQo_MR);
  v170 = *(v189 - 8);
  v23 = *(v170 + 64);
  MEMORY[0x28223BE20](v189);
  v168 = &v166 - v24;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
  v167 = *(v184 - 8);
  v25 = *(v167 + 64);
  MEMORY[0x28223BE20](v184);
  v27 = &v166 - v26;
  *&v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGG_AA8SolariumVAKyAKyAcAE11buttonStyleyQrqd__AA09PrimitivejS0Rd__lFQOyAKyAKyAqA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundsX0VyAA5ColorVGG_AA08BorderedjS0VQo_AWyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAKyAcAE10fontWeightyQrAY6WeightVSgFQOyAQ_Qo_AA08_PaddingP0VGQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGG_AA8SolariumVAKyAKyAcAE11buttonStyleyQrqd__AA09PrimitivejS0Rd__lFQOyAKyAKyAqA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundsX0VyAA5ColorVGG_AA08BorderedjS0VQo_AWyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAKyAcAE10fontWeightyQrAY6WeightVSgFQOyAQ_Qo_AA08_PaddingP0VGQo_MR);
  v169 = *(v186 - 8);
  v28 = *(v169 + 64);
  MEMORY[0x28223BE20](v186);
  v183 = &v166 - v29;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedD0VyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAMyAA0Q0VyAMyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVAMyA9_AA11_ClipEffectVyAA7CapsuleVGGAMyA9_A13_yAA16RoundedRectangleVGGQo_AgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAW_A11_AMyAMyAgAEANyQrqd__AaORd__lFQOyAMyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GAMyAgAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GACyAgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAMyAQyASGA40_G_A11_A45_AMyA45_AA011_BackgroundY0VyAA06_ShapeF0VyA15_A26_GGGQo_AMyAMyAMyAMyAMyAMyAgAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleF0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yAMyAMyAMyAMyAMyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yAMyAMyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedD0VyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAMyAA0Q0VyAMyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVAMyA9_AA11_ClipEffectVyAA7CapsuleVGGAMyA9_A13_yAA16RoundedRectangleVGGQo_AgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAW_A11_AMyAMyAgAEANyQrqd__AaORd__lFQOyAMyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GAMyAgAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GACyAgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAMyAQyASGA40_G_A11_A45_AMyA45_AA011_BackgroundY0VyAA06_ShapeF0VyA15_A26_GGGQo_AMyAMyAMyAMyAMyAMyAgAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleF0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yAMyAMyAMyAMyAMyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yAMyAMyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GG_GMR);
  v30 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v196 = &v166 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedD0VyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAMyAA0Q0VyAMyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVAMyA9_AA11_ClipEffectVyAA7CapsuleVGGAMyA9_A13_yAA16RoundedRectangleVGGQo_AgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAW_A11_AMyAMyAgAEANyQrqd__AaORd__lFQOyAMyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GAMyAgAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedD0VyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAMyAA0Q0VyAMyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVAMyA9_AA11_ClipEffectVyAA7CapsuleVGGAMyA9_A13_yAA16RoundedRectangleVGGQo_AgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAW_A11_AMyAMyAgAEANyQrqd__AaORd__lFQOyAMyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GAMyAgAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo__GMR);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v166 - v34;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMR);
  v36 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v185 = &v166 - v37;
  v38 = type metadata accessor for LACUIAuthCountdownView();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38 - 8);
  v42 = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v166 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAIyAA0O0VyAIyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoM0VQo_AUyAA11ControlSizeOGG_AA8SolariumVAIyA5_AA11_ClipEffectVyAA7CapsuleVGGAIyA5_A9_yAA16RoundedRectangleVGGQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAIyAA0O0VyAIyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoM0VQo_AUyAA11ControlSizeOGG_AA8SolariumVAIyA5_AA11_ClipEffectVyAA7CapsuleVGGAIyA5_A9_yAA16RoundedRectangleVGGQo_MR);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v50 = &v166 - v49;
  v51 = *(a1 + 65);
  if (v51 > 1)
  {
    if (v51 == 2)
    {
      v208 = *(a1 + 16);
      outlined init with copy of LACUIAuthCountdownView(v193, v44, type metadata accessor for LACUIAuthCountdownView);
      v75 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v76 = swift_allocObject();
      outlined init with take of RoundedRectangle(v44, v76 + v75, type metadata accessor for LACUIAuthCountdownView);
      v77 = v76 + ((v40 + v75 + 7) & 0xFFFFFFFFFFFFFFF8);
      v78 = *(a1 + 48);
      *(v77 + 32) = *(a1 + 32);
      *(v77 + 48) = v78;
      *(v77 + 64) = *(a1 + 64);
      v79 = *(a1 + 16);
      *v77 = *a1;
      *(v77 + 16) = v79;
      v199 = v208;
      outlined init with copy of LACUIAuthButtonConfiguration(a1, &v200);
      outlined init with copy of String(&v208, &v200);
      lazy protocol witness table accessor for type String and conformance String();

      Button<>.init<A>(_:action:)();
      v80 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v81 = v187;
      v82 = &v22[*(v187 + 36)];
      *v82 = v80;
      *(v82 + 1) = v83;
      *(v82 + 2) = v84;
      *(v82 + 3) = v85;
      *(v82 + 4) = v86;
      v82[40] = 0;
      v87 = Solarium.init()();
      MEMORY[0x28223BE20](v87);
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMR);
      v89 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      v164 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>> and conformance <> ModifiedContent<A, B>();
      *(&v162 + 1) = MEMORY[0x277CE1340];
      v163 = v89;
      v161 = v88;
      *&v162 = v89;
      v90 = MEMORY[0x277CE1350];
      v91 = v168;
      View.staticIf<A, B, C>(_:then:else:)();

      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v22, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
      v92 = v170;
      v93 = v189;
      (*(v170 + 16))(v190, v91, v189);
      swift_storeEnumTagMultiPayload();
      v200 = v81;
      v201 = v90;
      v202 = v81;
      v203 = v88;
      v204 = v89;
      v205 = MEMORY[0x277CE1340];
      v206 = v89;
      v207 = v164;
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
      v94 = v192;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v94, v196, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v94, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMR);
      return (*(v92 + 8))(v91, v93);
    }

    else
    {
      v186 = *(a1 + 16);
      v120 = *(a1 + 32);
      v121 = *(a1 + 40);
      v123 = *(a1 + 48);
      v122 = *(a1 + 56);
      v124 = *(a1 + 64);
      outlined init with copy of LACUIAuthCountdownView(v193, v42, type metadata accessor for LACUIAuthCountdownView);
      v125 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v126 = swift_allocObject();
      v127 = outlined init with take of RoundedRectangle(v42, v126 + v125, type metadata accessor for LACUIAuthCountdownView);
      v128 = v126 + ((v40 + v125 + 7) & 0xFFFFFFFFFFFFFFF8);
      v129 = *(a1 + 48);
      *(v128 + 32) = *(a1 + 32);
      *(v128 + 48) = v129;
      *(v128 + 64) = *(a1 + 64);
      v130 = *(a1 + 16);
      *v128 = *a1;
      *(v128 + 16) = v130;
      MEMORY[0x28223BE20](v127);
      *(&v166 - 8) = v123;
      *(&v166 - 7) = v122;
      LOBYTE(v161) = v124;
      v162 = v186;
      v163 = v120;
      v164 = v121;
      outlined init with copy of LACUIAuthButtonConfiguration(a1, &v200);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAEyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAQyAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyAEyAJyAJyAA4TextVAQyAA13TextAlignmentOGGAA08_PaddingP0VG_A20_SgtGGtGG_AA6SpacerVALtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAEyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAQyAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyAEyAJyAJyAA4TextVAQyAA13TextAlignmentOGGAA08_PaddingP0VG_A20_SgtGGtGG_AA6SpacerVALtGGMR);
      lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(DynamicStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>?, VStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>?)>>)>>, Spacer, Image)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAEyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAQyAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyAEyAJyAJyAA4TextVAQyAA13TextAlignmentOGGAA08_PaddingP0VG_A20_SgtGGtGG_AA6SpacerVALtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAEyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAQyAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyAEyAJyAJyAA4TextVAQyAA13TextAlignmentOGGAA08_PaddingP0VG_A20_SgtGGtGG_AA6SpacerVALtGGMR);
      v131 = v171;
      Button.init(action:label:)();
      v132 = v174;
      PlainButtonStyle.init()();
      lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(DynamicStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>?, VStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>?)>>)>>, Spacer, Image)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMR);
      lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
      v133 = v179;
      v134 = v173;
      v135 = v176;
      View.buttonStyle<A>(_:)();
      (*(v175 + 8))(v132, v135);
      (*(v172 + 8))(v131, v134);
      static Color.purple.getter();
      v136 = Color.opacity(_:)();

      *(v133 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GMR) + 36)) = v136;
      static Color.purple.getter();
      v137 = Color.opacity(_:)();

      KeyPath = swift_getKeyPath();
      v139 = (v133 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGMR) + 36));
      *v139 = KeyPath;
      v139[1] = v137;
      v140 = static Font.footnote.getter();
      v141 = swift_getKeyPath();
      v142 = (v133 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GMR) + 36));
      *v142 = v141;
      v142[1] = v140;
      LOBYTE(v140) = static Edge.Set.all.getter();
      v143 = v133 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GMR) + 36);
      *v143 = v140;
      *(v143 + 8) = 0u;
      *(v143 + 24) = 0u;
      *(v143 + 40) = 1;
      static Color.purple.getter();
      Color.opacity(_:)();

      v144 = Color.opacity(_:)();

      v145 = static Edge.Set.all.getter();
      v146 = v133 + *(v177 + 36);
      *v146 = v144;
      *(v146 + 8) = v145;
      LOBYTE(v144) = static Solarium.isEnabled.getter();
      v147 = static Solarium.isEnabled.getter();

      if (v144)
      {
        v148 = 16.0;
      }

      else
      {
        v148 = 8.0;
      }

      if (v147)
      {
        v149 = 16.0;
      }

      else
      {
        v149 = 8.0;
      }

      v150 = *(v180 + 20);
      v151 = *MEMORY[0x277CE0118];
      v152 = type metadata accessor for RoundedCornerStyle();
      v153 = v181;
      (*(*(v152 - 8) + 104))(v181 + v150, v151, v152);
      *v153 = v148;
      v153[1] = v149;
      v154 = v178;
      v155 = &v178[*(v191 + 36)];
      outlined init with take of RoundedRectangle(v153, v155, MEMORY[0x277CDFC08]);
      *(v155 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)) = 256;
      outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v133, v154, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGMR);
      v156 = v182;
      outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v154, v182, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v156, v190, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
      swift_storeEnumTagMultiPayload();
      v157 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMR);
      v158 = lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      v159 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>> and conformance <> ModifiedContent<A, B>();
      v200 = v187;
      v201 = MEMORY[0x277CE1350];
      v202 = v187;
      v203 = v157;
      v204 = v158;
      v205 = MEMORY[0x277CE1340];
      v206 = v158;
      v207 = v159;
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
      v160 = v192;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v160, v196, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v160, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMR);
      return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v156, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    }
  }

  else
  {
    v192 = v47;
    if (v51)
    {
      v95 = *(a1 + 16);
      v96 = *(a1 + 24);
      outlined init with copy of LACUIAuthCountdownView(v193, v44, type metadata accessor for LACUIAuthCountdownView);
      v97 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v98 = swift_allocObject();
      v99 = outlined init with take of RoundedRectangle(v44, v98 + v97, type metadata accessor for LACUIAuthCountdownView);
      v100 = v98 + ((v40 + v97 + 7) & 0xFFFFFFFFFFFFFFF8);
      v101 = *(a1 + 48);
      *(v100 + 32) = *(a1 + 32);
      *(v100 + 48) = v101;
      *(v100 + 64) = *(a1 + 64);
      v102 = *(a1 + 16);
      *v100 = *a1;
      *(v100 + 16) = v102;
      MEMORY[0x28223BE20](v99);
      v165 = v96;
      outlined init with copy of LACUIAuthButtonConfiguration(a1, &v200);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
      lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
      Button.init(action:label:)();
      Solarium.init()();
      v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMR);
      v190 = v103;
      v104 = lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
      v191 = v104;
      v105 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
      v193 = v105;
      v188 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      v164 = v188;
      *(&v162 + 1) = MEMORY[0x277CE1340];
      v163 = v105;
      v161 = v103;
      *&v162 = v104;
      v106 = MEMORY[0x277CE1350];
      v107 = v183;
      v108 = v184;
      View.staticIf<A, B, C>(_:then:else:)();

      (*(v167 + 8))(v27, v108);
      v109 = v169;
      v110 = v107;
      v111 = v186;
      (*(v169 + 16))(v35, v110, v186);
      swift_storeEnumTagMultiPayload();
      v112 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMR);
      v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
      v114 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
      v115 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
      v116 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
      v117 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
      v200 = v112;
      v201 = v106;
      v202 = v113;
      v203 = v114;
      v204 = v115;
      v118 = MEMORY[0x277CE1340];
      v205 = MEMORY[0x277CE1340];
      v206 = v116;
      v207 = v117;
      swift_getOpaqueTypeConformance2();
      v200 = v108;
      v201 = v106;
      v202 = v189;
      v203 = v190;
      v204 = v191;
      v205 = v118;
      v206 = v193;
      v207 = v188;
      swift_getOpaqueTypeConformance2();
      v119 = v185;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v119, v196, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v119, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMR);
      return (*(v109 + 8))(v183, v111);
    }

    else
    {
      v52 = *(a1 + 24);
      v191 = *(a1 + 16);
      v53 = v48;
      v166 = v48;
      outlined init with copy of LACUIAuthCountdownView(v193, v44, type metadata accessor for LACUIAuthCountdownView);
      v54 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v55 = (v40 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      outlined init with take of RoundedRectangle(v44, v56 + v54, type metadata accessor for LACUIAuthCountdownView);
      v57 = v56 + v55;
      v58 = *(a1 + 48);
      *(v57 + 32) = *(a1 + 32);
      *(v57 + 48) = v58;
      *(v57 + 64) = *(a1 + 64);
      v59 = *(a1 + 16);
      *v57 = *a1;
      *(v57 + 16) = v59;
      outlined init with copy of LACUIAuthButtonConfiguration(a1, &v200);
      LACUIAuthCountdownView.primaryButton(with:action:)(v191, v52, v50);

      v60 = v192;
      (*(v53 + 16))(v35, v50, v192);
      swift_storeEnumTagMultiPayload();
      v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMR);
      v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
      v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
      v64 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
      v65 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
      v66 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
      v200 = v61;
      v201 = MEMORY[0x277CE1350];
      v202 = v62;
      v203 = v63;
      v67 = MEMORY[0x277CE1340];
      v204 = v64;
      v205 = MEMORY[0x277CE1340];
      v206 = v65;
      v207 = v66;
      swift_getOpaqueTypeConformance2();
      v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
      v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMR);
      v70 = lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
      v71 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
      v72 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      v200 = v184;
      v201 = MEMORY[0x277CE1350];
      v202 = v68;
      v203 = v69;
      v204 = v70;
      v205 = v67;
      v206 = v71;
      v207 = v72;
      swift_getOpaqueTypeConformance2();
      v73 = v185;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v73, v196, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v73, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMR);
      return (*(v166 + 8))(v50, v60);
    }
  }
}

uint64_t LACUIAuthCountdownView.primaryButton(with:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = type metadata accessor for BorderedProminentButtonStyle();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - v12;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMR);
  v14 = *(*(v25[0] - 8) + 64);
  MEMORY[0x28223BE20](v25[0]);
  v16 = v25 - v15;
  v25[4] = a1;
  v25[5] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v17 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v19 = &v13[*(v10 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
  View.buttonStyle<A>(_:)();
  (*(v6 + 8))(v9, v5);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v13, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v20 = &v16[*(v25[0] + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
  v22 = *MEMORY[0x277CDF420];
  v23 = type metadata accessor for ControlSize();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  Solarium.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B, C>(_:then:else:)();
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v16, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMR);
}

uint64_t LACUIAuthCountdownView.secondaryButton(with:action:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  Solarium.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B, C>(_:then:else:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t LACUIAuthCountdownView.barButton(with:action:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  v18 = a1;
  v19 = a2;
  lazy protocol witness table accessor for type String and conformance String();

  Button<>.init<A>(_:action:)();
  v9 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v10 = &v8[*(v5 + 36)];
  *v10 = v9;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  Solarium.init()();
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B, C>(_:then:else:)();
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v8, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
}

uint64_t LACUIAuthCountdownView.tableRowButton(with:text:image:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a4;
  v53 = a6;
  v51 = a3;
  v58 = a7;
  v10 = type metadata accessor for RoundedRectangle();
  v11 = *(v10 - 8);
  v56 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for PlainButtonStyle();
  v14 = *(v54 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v54);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGMR);
  v24 = *(v23 - 8);
  v55 = v23 - 8;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v27 = &v51 - v26;
  LOBYTE(v26) = *(a5 + 16);
  v59 = *a5;
  v60 = v26;
  v61 = a1;
  v62 = a2;
  v63 = v51;
  v64 = v52;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAEyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAQyAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyAEyAJyAJyAA4TextVAQyAA13TextAlignmentOGGAA08_PaddingP0VG_A20_SgtGGtGG_AA6SpacerVALtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAEyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAQyAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyAEyAJyAJyAA4TextVAQyAA13TextAlignmentOGGAA08_PaddingP0VG_A20_SgtGGtGG_AA6SpacerVALtGGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(DynamicStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>?, VStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>?)>>)>>, Spacer, Image)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAEyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAQyAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyAEyAJyAJyAA4TextVAQyAA13TextAlignmentOGGAA08_PaddingP0VG_A20_SgtGGtGG_AA6SpacerVALtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAEyAA15ModifiedContentVyAJyAJyAJyAJyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAQyAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyAEyAJyAJyAA4TextVAQyAA13TextAlignmentOGGAA08_PaddingP0VG_A20_SgtGGtGG_AA6SpacerVALtGGMR);
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(DynamicStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>?, VStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>?)>>)>>, Spacer, Image)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMR);
  lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v28 = v54;
  View.buttonStyle<A>(_:)();
  (*(v14 + 8))(v17, v28);
  (*(v19 + 8))(v22, v18);
  static Color.purple.getter();
  v29 = Color.opacity(_:)();

  *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GMR) + 36)] = v29;
  static Color.purple.getter();
  v30 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v32 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGMR) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = static Font.footnote.getter();
  v34 = swift_getKeyPath();
  v35 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GMR) + 36)];
  *v35 = v34;
  v35[1] = v33;
  LOBYTE(v33) = static Edge.Set.all.getter();
  v36 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GMR) + 36)];
  *v36 = v33;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  static Color.purple.getter();
  Color.opacity(_:)();

  v37 = Color.opacity(_:)();

  v38 = static Edge.Set.all.getter();
  v39 = &v27[*(v55 + 44)];
  *v39 = v37;
  v39[8] = v38;
  LOBYTE(v37) = static Solarium.isEnabled.getter();
  v40 = static Solarium.isEnabled.getter();
  if (v37)
  {
    v41 = 16.0;
  }

  else
  {
    v41 = 8.0;
  }

  if (v40)
  {
    v42 = 16.0;
  }

  else
  {
    v42 = 8.0;
  }

  v43 = *(v56 + 28);
  v44 = *MEMORY[0x277CE0118];
  v45 = type metadata accessor for RoundedCornerStyle();
  v46 = v57;
  (*(*(v45 - 8) + 104))(v57 + v43, v44, v45);
  *v46 = v41;
  v46[1] = v42;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v48 = v58;
  v49 = v58 + *(v47 + 36);
  outlined init with take of RoundedRectangle(v46, v49, MEMORY[0x277CDFC08]);
  *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)) = 256;
  return outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v27, v48, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGMR);
}

uint64_t closure #2 in LACUIAuthCountdownView.primaryButton(with:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR) + 36);
  v5 = *MEMORY[0x277CE0118];
  v6 = type metadata accessor for RoundedCornerStyle();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR) + 36)) = 256;
  return outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(a1, a2, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMR);
}

uint64_t closure #3 in LACUIAuthCountdownView.primaryButton(with:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36));
  v5 = *(type metadata accessor for RoundedRectangle() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = type metadata accessor for RoundedCornerStyle();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #14.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  return outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(a1, a2, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMR);
}

__n128 closure #1 in LACUIAuthCountdownView.primaryButton(with:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = MEMORY[0x277D84F90];
  *(a3 + 96) = v11;
  *(a3 + 112) = v12;
  *(a3 + 128) = v13;
  *(a3 + 32) = v7;
  *(a3 + 48) = v8;
  result = v10;
  *(a3 + 64) = v9;
  *(a3 + 80) = v10;
  return result;
}

uint64_t closure #2 in LACUIAuthCountdownView.secondaryButton(with:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BorderedButtonStyle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
  (*(*(v15 - 8) + 16))(v12, a1, v15);
  v16 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR) + 36)];
  *v16 = KeyPath;
  v16[1] = v13;
  *&v12[*(v9 + 36)] = static Color.primary.getter();
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v8, v4);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v12, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGMR);
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGMR) + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
  v19 = *MEMORY[0x277CDF420];
  v20 = type metadata accessor for ControlSize();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR) + 36);
  v22 = *MEMORY[0x277CE0118];
  v23 = type metadata accessor for RoundedCornerStyle();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR);
  *(v21 + *(result + 36)) = 256;
  return result;
}

double closure #3 in LACUIAuthCountdownView.secondaryButton(with:action:)@<D0>(uint64_t a1@<X8>)
{
  static Font.Weight.bold.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
  View.fontWeight(_:)();
  v2 = static Edge.Set.all.getter();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMR) + 36);
  *v3 = v2;
  result = 0.0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 1;
  return result;
}

uint64_t closure #2 in LACUIAuthCountdownView.barButton(with:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Capsule();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v21 = *MEMORY[0x277CE0118];
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(v16, v21, v22);
  v23 = a2 + *(type metadata accessor for LACUIAuthCountdownView() + 20);
  specialized Environment.wrappedValue.getter(v12);
  (*(v6 + 16))(v10, v12, v5);
  v24 = (*(v6 + 88))(v10, v5);
  if (v24 == *MEMORY[0x277CDF3D0])
  {
    v25 = [objc_opt_self() systemBackgroundColor];
    v26 = Color.init(uiColor:)();
    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v27 = v24;
    v28 = *MEMORY[0x277CDF3C0];
    v29 = objc_opt_self();
    v30 = (v6 + 8);
    if (v27 == v28)
    {
      v31 = [v29 secondarySystemBackgroundColor];
      v26 = Color.init(uiColor:)();
      (*v30)(v12, v5);
    }

    else
    {
      v32 = [v29 systemBackgroundColor];
      v26 = Color.init(uiColor:)();
      v33 = *v30;
      (*v30)(v12, v5);
      v33(v10, v5);
    }
  }

  outlined init with take of RoundedRectangle(v16, v20, MEMORY[0x277CE1260]);
  *&v20[*(v17 + 52)] = v26;
  *&v20[*(v17 + 56)] = 256;
  v34 = static Alignment.center.getter();
  v36 = v35;
  v37 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMR) + 36);
  outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v20, v37, &_s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMR);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGMR) + 36));
  *v38 = v34;
  v38[1] = v36;
  return outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v41, a3, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
}

uint64_t closure #1 in LACUIAuthCountdownView.tableRowButton(with:text:image:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = static VerticalAlignment.center.getter();
  *(a8 + 8) = 0;
  *(a8 + 16) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy023LocalAuthenticationCoreB012DynamicStackVyAIyAA15ModifiedContentVyANyANyANyANyAA5ImageVAA012_AspectRatioG0VGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleV0VyAA5ColorVGGAUyAA4FontVSgGGAA010_FlexFrameG0VGSg_AA6VStackVyAIyANyANyAA4TextVAUyAA13TextAlignmentOGGAA08_PaddingG0VG_A24_SgtGGtGG_AA6SpacerVAPtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy023LocalAuthenticationCoreB012DynamicStackVyAIyAA15ModifiedContentVyANyANyANyANyAA5ImageVAA012_AspectRatioG0VGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleV0VyAA5ColorVGGAUyAA4FontVSgGGAA010_FlexFrameG0VGSg_AA6VStackVyAIyANyANyAA4TextVAUyAA13TextAlignmentOGGAA08_PaddingG0VG_A24_SgtGGtGG_AA6SpacerVAPtGGMR);
  return closure #1 in closure #1 in LACUIAuthCountdownView.tableRowButton(with:text:image:action:)(a1, a2, a3, a4, a5, a6, a7, a8 + *(v16 + 44));
}

uint64_t closure #1 in closure #1 in LACUIAuthCountdownView.tableRowButton(with:text:image:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGGMR);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = a3;
  *(v23 + 40) = a4;
  *(v23 + 48) = a5;
  v24 = v31;
  *(v23 + 56) = a6;
  *(v23 + 64) = v24;
  *v22 = 0;
  v22[8] = 1;
  *(v22 + 2) = partial apply for closure #1 in closure #1 in closure #1 in LACUIAuthCountdownView.tableRowButton(with:text:image:action:);
  *(v22 + 3) = v23;
  v25 = *(v16 + 48);
  *&v22[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  outlined copy of LACUIAuthImageConfiguration?(a1, a2, a3);

  v26 = Image.init(systemName:)();
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v22, v20, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v20, a8, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGGMR);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGG_AD6SpacerVAJtMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGG_AD6SpacerVAJtMR);
  v28 = a8 + *(v27 + 48);
  *v28 = 0;
  *(v28 + 8) = 1;
  *(a8 + *(v27 + 64)) = v26;

  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v22, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGGMR);

  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v20, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGGMd, &_s25LocalAuthenticationCoreUI12DynamicStackVy05SwiftD09TupleViewVyAD15ModifiedContentVyAHyAHyAHyAHyAD5ImageVAD18_AspectRatioLayoutVGAD30_EnvironmentKeyWritingModifierVyAD19SymbolRenderingModeVSgGGAD016_ForegroundStyleS0VyAD5ColorVGGAOyAD4FontVSgGGAD010_FlexFrameO0VGSg_AD6VStackVyAFyAHyAHyAD4TextVAOyAD13TextAlignmentOGGAD08_PaddingO0VG_A18_SgtGGtGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in LACUIAuthCountdownView.tableRowButton(with:text:image:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v76 = a6;
  v77 = a7;
  v74 = a4;
  v75 = a5;
  v67 = a1;
  v68 = a2;
  v79 = a8;
  LODWORD(v73) = ~a3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGMR);
  v9 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v11 = &v63 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMR);
  v12 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v14 = &v63 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGMR);
  v15 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v72 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v71 = &v63 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSgMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v78 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v63 - v28;
  if (v73)
  {
    v64 = v19;
    v65 = v18;
    v73 = &v63 - v28;
    if (a3)
    {
      outlined copy of LACUIAuthImageConfiguration();
      v30 = Image.init(_internalSystemName:)();
    }

    else
    {
      v33 = v67;
      v32 = v68;
      outlined copy of LACUIAuthImageConfiguration?(v67, v68, a3);
      outlined copy of LACUIAuthImageConfiguration();
      if (one-time initialization token for current != -1)
      {
        swift_once();
      }

      v34 = static NSBundle.current;
      v30 = Image.init(_:bundle:)();
      outlined consume of LACUIAuthImageConfiguration?(v33, v32, a3);
    }

    v35 = &v11[*(v66 + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
    static SymbolRenderingMode.monochrome.getter();
    v37 = type metadata accessor for SymbolRenderingMode();
    (*(*(v37 - 8) + 56))(v35 + v36, 0, 1, v37);
    *v35 = swift_getKeyPath();
    *v11 = v30;
    *(v11 + 1) = 0;
    *(v11 + 8) = 1;
    v38 = static Color.accentColor.getter();
    outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v11, v14, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGMR);
    *&v14[*(v70 + 36)] = v38;
    v39 = static Font.title.getter();
    KeyPath = swift_getKeyPath();
    outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v14, v17, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMR);
    v41 = &v17[*(v69 + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v42 = v72;
    outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v17, v72, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGMR);
    v43 = v65;
    v44 = (v42 + *(v65 + 36));
    v45 = *(&v98[17] + 8);
    v44[4] = *(&v98[16] + 8);
    v44[5] = v45;
    v44[6] = *(&v98[18] + 8);
    v46 = *(&v98[13] + 8);
    *v44 = *(&v98[12] + 8);
    v44[1] = v46;
    v47 = *(&v98[15] + 8);
    v44[2] = *(&v98[14] + 8);
    v44[3] = v47;
    v48 = v42;
    v49 = v71;
    outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v48, v71, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMR);
    v31 = v73;
    outlined init with take of DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>(v49, v73, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGMR);
    (*(v64 + 56))(v31, 0, 1, v43);
  }

  else
  {
    (*(v19 + 56))(&v63 - v28, 1, 1, v18);
    v31 = v29;
  }

  v50 = static HorizontalAlignment.leading.getter();
  v81 = 1;
  closure #1 in closure #1 in closure #1 in closure #1 in LACUIAuthCountdownView.tableRowButton(with:text:image:action:)(v76, v77, &v97);
  v90 = v98[7];
  v91 = v98[8];
  v92[0] = v98[9];
  *(v92 + 9) = *(&v98[9] + 9);
  v86 = v98[3];
  v87 = v98[4];
  v88 = v98[5];
  v89 = v98[6];
  v82 = v97;
  v83 = v98[0];
  v84 = v98[1];
  v85 = v98[2];
  v93[8] = v98[7];
  v93[9] = v98[8];
  v94[0] = v98[9];
  *(v94 + 9) = *(&v98[9] + 9);
  v93[4] = v98[3];
  v93[5] = v98[4];
  v93[6] = v98[5];
  v93[7] = v98[6];
  v93[0] = v97;
  v93[1] = v98[0];
  v93[2] = v98[1];
  v93[3] = v98[2];
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v82, &v95, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA14_PaddingLayoutVG_APSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA14_PaddingLayoutVG_APSgtGMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v93, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA14_PaddingLayoutVG_APSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGAA14_PaddingLayoutVG_APSgtGMR);
  *(&v80[8] + 7) = v90;
  *(&v80[9] + 7) = v91;
  *(&v80[10] + 7) = v92[0];
  v80[11] = *(v92 + 9);
  *(&v80[4] + 7) = v86;
  *(&v80[5] + 7) = v87;
  *(&v80[6] + 7) = v88;
  *(&v80[7] + 7) = v89;
  *(v80 + 7) = v82;
  *(&v80[1] + 7) = v83;
  *(&v80[2] + 7) = v84;
  *(&v80[3] + 7) = v85;
  v51 = v81;
  v52 = v78;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v31, v78, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSgMR);
  v53 = v79;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(v52, v79, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSgMR);
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSg_AA6VStackVyAA9TupleViewVyACyACyAA4TextVAJyAA0Y9AlignmentOGGAA08_PaddingH0VG_A15_SgtGGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSg_AA6VStackVyAA9TupleViewVyACyACyAA4TextVAJyAA0Y9AlignmentOGGAA08_PaddingH0VG_A15_SgtGGtMR) + 48);
  *&v96[129] = v80[8];
  *&v96[145] = v80[9];
  *&v96[161] = v80[10];
  *&v96[177] = v80[11];
  *&v96[65] = v80[4];
  *&v96[81] = v80[5];
  *&v96[97] = v80[6];
  *&v96[113] = v80[7];
  *&v96[17] = v80[1];
  *&v96[33] = v80[2];
  v55 = v53 + v54;
  v95 = v50;
  v96[0] = v51;
  *&v96[49] = v80[3];
  *&v96[1] = v80[0];
  v56 = *&v96[160];
  *(v55 + 160) = *&v96[144];
  *(v55 + 176) = v56;
  *(v55 + 192) = *&v96[176];
  *(v55 + 208) = v96[192];
  v57 = *&v96[96];
  *(v55 + 96) = *&v96[80];
  *(v55 + 112) = v57;
  v58 = *&v96[128];
  *(v55 + 128) = *&v96[112];
  *(v55 + 144) = v58;
  v59 = *&v96[32];
  *(v55 + 32) = *&v96[16];
  *(v55 + 48) = v59;
  v60 = *&v96[64];
  *(v55 + 64) = *&v96[48];
  *(v55 + 80) = v60;
  v61 = *v96;
  *v55 = v95;
  *(v55 + 16) = v61;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v95, &v97, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVG_ARSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVG_ARSgtGGMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v31, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSgMR);
  *(&v98[8] + 1) = v80[8];
  *(&v98[9] + 1) = v80[9];
  *(&v98[10] + 1) = v80[10];
  *(&v98[11] + 1) = v80[11];
  *(&v98[4] + 1) = v80[4];
  *(&v98[5] + 1) = v80[5];
  *(&v98[6] + 1) = v80[6];
  *(&v98[7] + 1) = v80[7];
  *(v98 + 1) = v80[0];
  *(&v98[1] + 1) = v80[1];
  *(&v98[2] + 1) = v80[2];
  v97 = v50;
  LOBYTE(v98[0]) = v51;
  *(&v98[3] + 1) = v80[3];
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v97, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVG_ARSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAA14_PaddingLayoutVG_ARSgtGGMR);
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v52, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAJyAA4FontVSgGGAA010_FlexFrameH0VGSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in LACUIAuthCountdownView.tableRowButton(with:text:image:action:)@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, _OWORD *a3@<X8>)
{

  static Font.Weight.bold.getter();
  v6 = Text.fontWeight(_:)();
  v8 = v7;
  v10 = v9;
  v39 = v11;

  KeyPath = swift_getKeyPath();
  v38 = static Edge.Set.all.getter();
  v13 = 0;
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v10 & 1;
  LOBYTE(v58[0]) = v10 & 1;
  LOBYTE(v56[0]) = 0;
  if (!a2)
  {
    a1 = 0;
    v23 = 0;
LABEL_8:
    v25 = 0;
    v32 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_9;
  }

  v23 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v23 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    a1 = 0;
    a2 = 0;
    goto LABEL_8;
  }

  v24 = v10 & 1;
  v25 = swift_getKeyPath();

  v26 = v6;
  v27 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v22 = v24;
  v13 = v31;
  LOBYTE(v58[0]) = 0;
  LOBYTE(v56[0]) = 0;
  v32 = v27;
  v6 = v26;
  v23 = MEMORY[0x277D84F90];
LABEL_9:
  v37 = v22;
  *&v45 = v6;
  *(&v45 + 1) = v8;
  LOBYTE(v46) = v22;
  *(&v46 + 1) = v39;
  *&v47 = KeyPath;
  BYTE8(v47) = 0;
  LOBYTE(v48) = v38;
  *(&v48 + 1) = v15;
  *v49 = v17;
  *&v49[8] = v19;
  *&v49[16] = v21;
  v49[24] = 0;
  *&v40[9] = *&v49[9];
  *&v50 = a1;
  *(&v50 + 1) = a2;
  *&v51 = 0;
  *(&v51 + 1) = v23;
  v52 = v25;
  v53 = 0;
  *&v54 = v32;
  *(&v54 + 1) = v13;
  *v55 = v28;
  *&v55[8] = v29;
  *&v55[16] = v30;
  v55[24] = 0;
  *v40 = *v49;
  v41 = v50;
  v42 = v51;
  *&v44[9] = *&v55[9];
  v43 = v54;
  *v44 = *v55;
  v33 = v45;
  v34 = v46;
  v35 = v48;
  a3[2] = v47;
  a3[3] = v35;
  *a3 = v33;
  a3[1] = v34;
  a3[6] = v41;
  a3[7] = v42;
  a3[4] = *v40;
  a3[5] = *&v40[16];
  *(a3 + 169) = *&v44[9];
  a3[9] = v43;
  a3[10] = *v44;
  a3[8] = v25;
  v56[0] = a1;
  v56[1] = a2;
  v56[2] = 0;
  v56[3] = v23;
  v56[4] = v25;
  v56[5] = 0;
  v56[6] = v32;
  v56[7] = v13;
  v56[8] = v28;
  v56[9] = v29;
  v56[10] = v30;
  v57 = 0;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v45, v58, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?(&v50, v58, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGSgMR);
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v56, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGSgMR);
  v58[0] = v6;
  v58[1] = v8;
  v59 = v37;
  v60 = v39;
  v61 = KeyPath;
  v62 = 0;
  v63 = v38;
  v64 = v15;
  v65 = v17;
  v66 = v19;
  v67 = v21;
  v68 = 0;
  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(v58, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMR);
}

uint64_t type metadata accessor for LACUIAuthCountdownView()
{
  result = type metadata singleton initialization cache for LACUIAuthCountdownView;
  if (!type metadata singleton initialization cache for LACUIAuthCountdownView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25609747C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAA012_ConditionalG0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAGyAqA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleW0VyAA5ColorVGG_AA8SolariumVA9_AGyA9_AYyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentW0VG_AGyAGyAGyAGyACyAEyAGyAGyAA6SpacerVAVGAA05_FlexsR0VG_AGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAA4TextV_A11_AGyA28_AYyAA13TextAlignmentOGGAGyA32_AA08_PaddingR0VGQo_A19_GAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA28__A11_A32_A32_Qo_tGGA34_GA34_GAA06_TraitvW0VyAA0r13PriorityTraitU0VGGAA010_FixedSizeR0VGAGyAGyAGyAGyACyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgAGyAGyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_AGyAGyAiAEAJ_AKQrqd___qd_0_xXEtAaMRd__AaHRd_0_r0_lFQOyACyAEyAGyAA5GroupVyAOyAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAiAE06buttonZ0yQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAGyAA6ButtonVyAGyA28_A25_GGA1_G_AA023BorderedProminentButtonZ0VQo_AYyAA11ControlSizeOGG_A11_AGyA87_AA11_ClipEffectVyAA7CapsuleVGGAGyA87_A89_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA79__A11_AGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyAGyA80_A8_G_AA014BorderedButtonZ0VQo_A86_GA92_GAGyAiAE10fontWeightyQrA_6WeightVSgFQOyA79__Qo_A34_GQo_GAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyA77_yA28_GA34_G_A11_A114_AGyA114_AA011_BackgroundW0VyAA06_ShapeE0VyA91_A7_GGGQo_AGyAGyAGyAGyAGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyAEyA54_12DynamicStackVyAEyAGyAGyAGyAGyATA15_GA8_GA1_GA25_GSg_ACyAEyA35__A35_SgtGGtGG_A22_AQtGGG_AA011PlainButtonZ0VQo_A8_GAYyA7_SgGGA1_GA34_GAA011_BackgroundzW0VyA7_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A11_AGyA164_A34_GQo_A34_GA50_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAA012_ConditionalG0VyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameR0VGAGyAqA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleW0VyAA5ColorVGG_AA8SolariumVA9_AGyA9_AYyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentW0VG_AGyAGyAGyAGyACyAEyAGyAGyAA6SpacerVAVGAA05_FlexsR0VG_AGyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAA4TextV_A11_AGyA28_AYyAA13TextAlignmentOGGAGyA32_AA08_PaddingR0VGQo_A19_GAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA28__A11_A32_A32_Qo_tGGA34_GA34_GAA06_TraitvW0VyAA0r13PriorityTraitU0VGGAA010_FixedSizeR0VGAGyAGyAGyAGyACyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgAGyAGyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_AGyAGyAiAEAJ_AKQrqd___qd_0_xXEtAaMRd__AaHRd_0_r0_lFQOyACyAEyAGyAA5GroupVyAOyAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyAiAE06buttonZ0yQrqd__AA015PrimitiveButtonZ0Rd__lFQOyAGyAA6ButtonVyAGyA28_A25_GGA1_G_AA023BorderedProminentButtonZ0VQo_AYyAA11ControlSizeOGG_A11_AGyA87_AA11_ClipEffectVyAA7CapsuleVGGAGyA87_A89_yAA16RoundedRectangleVGGQo_AiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyA79__A11_AGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyAGyA80_A8_G_AA014BorderedButtonZ0VQo_A86_GA92_GAGyAiAE10fontWeightyQrA_6WeightVSgFQOyA79__Qo_A34_GQo_GAOyAiAEAJ_AkLQrqd___qd_0_xXEqd_1_xXEtAaMRd__AaHRd_0_AaHRd_1_r1_lFQOyAGyA77_yA28_GA34_G_A11_A114_AGyA114_AA011_BackgroundW0VyAA06_ShapeE0VyA91_A7_GGGQo_AGyAGyAGyAGyAGyAGyAiAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyAEyA54_12DynamicStackVyAEyAGyAGyAGyAGyATA15_GA8_GA1_GA25_GSg_ACyAEyA35__A35_SgtGGtGG_A22_AQtGGG_AA011PlainButtonZ0VQo_A8_GAYyA7_SgGGA1_GA34_GAA011_BackgroundzW0VyA7_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A11_AGyA164_A34_GQo_A34_GA50_GtGGMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v32 = *(v1 + 64);
  v33 = v0;
  v4 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAKyAuA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleY0VyAA5ColorVGG_AA8SolariumVA13_AKyA13_A1_yAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentY0VG_AKyAKyAKyAKyAA0F0VyAIyAKyAKyAA6SpacerVAZGAA05_FlexuG0VG_AKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAA4TextV_A15_AKyA34_A1_yAA13TextAlignmentOGGAKyA38_AA08_PaddingG0VGQo_A23_GAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA34__A15_A38_A38_Qo_tGGA40_GA40_GAA06_TraitxY0VyAA0g13PriorityTraitW0VGGAA010_FixedSizeG0VGAKyAKyAKyAKyA26_yAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA60_022LACUIAuthCountdownItemD0VGGA40_GA40_GA53_GA56_GSgAKyAKyA60_023LACUIAuthCountdownDelayD0VA40_GA56_GSgA28_AKyAKyAmAEAN_AOQrqd___qd_0_xXEtAaQRd__AaLRd_0_r0_lFQOyA26_yAIyAKyAA5GroupVyASyASyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyAmAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA34_A31_GGA5_G_AA28BorderedProminentButtonStyleVQo_A1_yAA11ControlSizeOGG_A15_AKyA93_AA11_ClipEffectVyAA7CapsuleVGGAKyA93_A95_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA85__A15_AKyAKyAmAEA80_yQrqd__AAA81_Rd__lFQOyAKyA86_A12_G_AA19BorderedButtonStyleVQo_A92_GA98_GAKyAmAE10fontWeightyQrA3_6WeightVSgFQOyA85__Qo_A40_GQo_GASyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyA83_yA34_GA40_G_A15_A120_AKyA120_AA011_BackgroundY0VyAA06_ShapeD0VyA97_A11_GGGQo_AKyAKyAKyAKyAKyAKyAmAEA80_yQrqd__AAA81_Rd__lFQOyA83_yAA6HStackVyAIyA60_12DynamicStackVyAIyAKyAKyAKyAKyAXA19_GA12_GA5_GA31_GSg_A26_yAIyA41__A41_SgtGGtGG_A28_AUtGGG_AA16PlainButtonStyleVQo_A12_GA1_yA11_SgGGA5_GA40_GAA016_BackgroundStyleY0VyA11_GGA102_GGGGA40_GSg_A59_ySayA60_28LACUIAuthButtonConfigurationVGSSA162_GtGG_A15_AKyA170_A40_GQo_A40_GA56_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGAKyAuA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleY0VyAA5ColorVGG_AA8SolariumVA13_AKyA13_A1_yAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentY0VG_AKyAKyAKyAKyAA0F0VyAIyAKyAKyAA6SpacerVAZGAA05_FlexuG0VG_AKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAA4TextV_A15_AKyA34_A1_yAA13TextAlignmentOGGAKyA38_AA08_PaddingG0VGQo_A23_GAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA34__A15_A38_A38_Qo_tGGA40_GA40_GAA06_TraitxY0VyAA0g13PriorityTraitW0VGGAA010_FixedSizeG0VGAKyAKyAKyAKyA26_yAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA60_022LACUIAuthCountdownItemD0VGGA40_GA40_GA53_GA56_GSgAKyAKyA60_023LACUIAuthCountdownDelayD0VA40_GA56_GSgA28_AKyAKyAmAEAN_AOQrqd___qd_0_xXEtAaQRd__AaLRd_0_r0_lFQOyA26_yAIyAKyAA5GroupVyASyASyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyAmAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA34_A31_GGA5_G_AA28BorderedProminentButtonStyleVQo_A1_yAA11ControlSizeOGG_A15_AKyA93_AA11_ClipEffectVyAA7CapsuleVGGAKyA93_A95_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA85__A15_AKyAKyAmAEA80_yQrqd__AAA81_Rd__lFQOyAKyA86_A12_G_AA19BorderedButtonStyleVQo_A92_GA98_GAKyAmAE10fontWeightyQrA3_6WeightVSgFQOyA85__Qo_A40_GQo_GASyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAKyA83_yA34_GA40_G_A15_A120_AKyA120_AA011_BackgroundY0VyAA06_ShapeD0VyA97_A11_GGGQo_AKyAKyAKyAKyAKyAKyAmAEA80_yQrqd__AAA81_Rd__lFQOyA83_yAA6HStackVyAIyA60_12DynamicStackVyAIyAKyAKyAKyAKyAXA19_GA12_GA5_GA31_GSg_A26_yAIyA41__A41_SgtGGtGG_A28_AUtGGG_AA16PlainButtonStyleVQo_A12_GA1_yA11_SgGGA5_GA40_GAA016_BackgroundStyleY0VyA11_GGA102_GGGGA40_GSg_A59_ySayA60_28LACUIAuthButtonConfigurationVGSSA162_GtGG_A15_AKyA170_A40_GQo_A40_GA56_GtGGMR) + 44) + v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAA012_ConditionalK0VyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGAIyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_AIyA5_AUyAA19SymbolRenderingModeVSgGGQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAA012_ConditionalK0VyAIyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGAIyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_AIyA5_AUyAA19SymbolRenderingModeVSgGGQo_MR);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VGMR) + 36);
  v7 = type metadata accessor for AccessibilityAttachmentModifier();
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VG_ACyACyACyACyAA6VStackVyAA05TupleE0VyACyACyAA6SpacerVARGAA05_FlexqP0VG_ACyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_A7_ACyA28_AUyAA13TextAlignmentOGGACyA32_AA08_PaddingP0VGQo_A15_GAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyA28__A7_A32_A32_Qo_tGGA34_GA34_GAA06_TraittU0VyAA0p13PriorityTraitS0VGGAA010_FixedSizeP0VGACyACyACyACyA18_yAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgACyACyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_ACyACyAeAEAF_AGQrqd___qd_0_xXEtAaIRd__AaDRd_0_r0_lFQOyA18_yA20_yACyAA5GroupVyAKyAKyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyACyAA6ButtonVyACyA28_A25_GGAYG_AA023BorderedProminentButtonX0VQo_AUyAA11ControlSizeOGG_A7_ACyA87_AA11_ClipEffectVyAA7CapsuleVGGACyA87_A89_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyA79__A7_ACyACyAeAEA74_yQrqd__AAA75_Rd__lFQOyACyA80_A4_G_AA014BorderedButtonX0VQo_A86_GA92_GACyAeAE10fontWeightyQrAW6WeightVSgFQOyA79__Qo_A34_GQo_GAKyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyACyA77_yA28_GA34_G_A7_A114_ACyA114_AA011_BackgroundU0VyAA06_ShapeE0VyA91_A3_GGGQo_ACyACyACyACyACyACyAeAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyA20_yA54_12DynamicStackVyA20_yACyACyACyACyAPA11_GA4_GAYGA25_GSg_A18_yA20_yA35__A35_SgtGGtGG_A22_AMtGGG_AA011PlainButtonX0VQo_A4_GAUyA3_SgGGAYGA34_GAA011_BackgroundxU0VyA3_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A7_ACyA164_A34_GQo_A34_GA50_GtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameP0VGACyAmA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleU0VyAA5ColorVGG_AA8SolariumVA5_ACyA5_AUyAA19SymbolRenderingModeVSgGGQo_AA023AccessibilityAttachmentU0VG_ACyACyACyACyAA6VStackVyAA05TupleE0VyACyACyAA6SpacerVARGAA05_FlexqP0VG_ACyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_A7_ACyA28_AUyAA13TextAlignmentOGGACyA32_AA08_PaddingP0VGQo_A15_GAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyA28__A7_A32_A32_Qo_tGGA34_GA34_GAA06_TraittU0VyAA0p13PriorityTraitS0VGGAA010_FixedSizeP0VGACyACyACyACyA18_yAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSA54_022LACUIAuthCountdownItemE0VGGA34_GA34_GA47_GA50_GSgACyACyA54_023LACUIAuthCountdownDelayE0VA34_GA50_GSgA22_ACyACyAeAEAF_AGQrqd___qd_0_xXEtAaIRd__AaDRd_0_r0_lFQOyA18_yA20_yACyAA5GroupVyAKyAKyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyACyAA6ButtonVyACyA28_A25_GGAYG_AA023BorderedProminentButtonX0VQo_AUyAA11ControlSizeOGG_A7_ACyA87_AA11_ClipEffectVyAA7CapsuleVGGACyA87_A89_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyA79__A7_ACyACyAeAEA74_yQrqd__AAA75_Rd__lFQOyACyA80_A4_G_AA014BorderedButtonX0VQo_A86_GA92_GACyAeAE10fontWeightyQrAW6WeightVSgFQOyA79__Qo_A34_GQo_GAKyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyACyA77_yA28_GA34_G_A7_A114_ACyA114_AA011_BackgroundU0VyAA06_ShapeE0VyA91_A3_GGGQo_ACyACyACyACyACyACyAeAEA74_yQrqd__AAA75_Rd__lFQOyA77_yAA6HStackVyA20_yA54_12DynamicStackVyA20_yACyACyACyACyAPA11_GA4_GAYGA25_GSg_A18_yA20_yA35__A35_SgtGGtGG_A22_AMtGGG_AA011PlainButtonX0VQo_A4_GAUyA3_SgGGAYGA34_GAA011_BackgroundxU0VyA3_GGA96_GGGGA34_GSg_A53_ySayA54_28LACUIAuthButtonConfigurationVGSSA156_GtGG_A7_ACyA164_A34_GQo_A34_GA50_GtMR);
  v10 = v9[12];
  v11 = v4 + v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6SpacerVAA06_FrameG0VGAA05_FlexlG0VG_AKyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaTRd_0_AaTRd_1_r1_lFQOyAA4TextV_AA8SolariumVAKyA_AA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAKyA7_AA08_PaddingG0VGQo_AA023AccessibilityAttachmentY0VGAuAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaTRd_0_AaTRd_1_r1_lFQOyA__A1_A7_A7_Qo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6SpacerVAA06_FrameG0VGAA05_FlexlG0VG_AKyAA0D0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0D14InputPredicateRd__AaTRd_0_AaTRd_1_r1_lFQOyAA4TextV_AA8SolariumVAKyA_AA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAKyA7_AA08_PaddingG0VGQo_AA023AccessibilityAttachmentY0VGAuAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaTRd_0_AaTRd_1_r1_lFQOyA__A1_A7_A7_Qo_tGGMR) + 44);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexfG0VG_ACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0I14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAsA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGACyA_AA08_PaddingG0VGQo_AA023AccessibilityAttachmentU0VGAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAS_AUA_A_Qo_tMd, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexfG0VG_ACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0I14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAsA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGACyA_AA08_PaddingG0VGQo_AA023AccessibilityAttachmentU0VGAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAS_AUA_A_Qo_tMR);
  v13 = v11 + *(v12 + 48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_AA8SolariumVAA15ModifiedContentVyAiA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAMyAsA14_PaddingLayoutVGQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_AA8SolariumVAA15ModifiedContentVyAiA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGAMyAsA14_PaddingLayoutVGQo_MR);
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAkA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGACyAsA14_PaddingLayoutVGQo_AA023AccessibilityAttachmentQ0VGMR);
  v8(v13 + *(v15 + 36), v7);
  v16 = *(v12 + 64);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_AA8SolariumVAA15ModifiedContentVyAiA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGASQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_AA8SolariumVAA15ModifiedContentVyAiA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGGASQo_MR);
  (*(*(v17 - 8) + 8))(v11 + v16, v17);
  v18 = v4 + v9[16];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGAA010_FixedSizeQ0VGMR);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAJ0mnoD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAJ0mnoD0VGGMR) + 44);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAD0hiJ4ViewVGMd, &_s7SwiftUI7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAD0hiJ4ViewVGMR);
    (*(*(v21 - 8) + 8))(v18 + v20, v21);
  }

  v22 = v4 + v9[20];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGMd, &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB027LACUIAuthCountdownDelayViewVAA14_PaddingLayoutVGAA010_FixedSizeM0VGMR);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = *(v22 + 8);

    v25 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
    v26 = *(v25 + 20);
    v27 = type metadata accessor for Date();
    (*(*(v27 - 8) + 8))(v22 + v26, v27);
    v28 = *(v22 + *(v25 + 24) + 8);
  }

  v29 = v9[28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0C14InputPredicateRd__AaBRd_0_r0_lFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalL0VyAPyAcAEAD_AE4elseQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyALyAA0S0VyALyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVALyA13_AA11_ClipEffectVyAA7CapsuleVGGALyA13_A17_yAA16RoundedRectangleVGGQo_AcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyA__A15_ALyALyAcAEARyQrqd__AaSRd__lFQOyALyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GALyAcAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAUyAWGA44_G_A15_A49_ALyA49_AA19_BackgroundModifierVyAA06_ShapeC0VyA19_A30_GGGQo_ALyALyALyALyALyALyAcAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAJy023LocalAuthenticationCoreB012DynamicStackVyAJyALyALyALyALyALyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AHyAJyALyALyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ALyA118_A44_GQo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0C14InputPredicateRd__AaBRd_0_r0_lFQOyAA6VStackVyAA05TupleC0VyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalL0VyAPyAcAEAD_AE4elseQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyALyAA0S0VyALyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVALyA13_AA11_ClipEffectVyAA7CapsuleVGGALyA13_A17_yAA16RoundedRectangleVGGQo_AcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyA__A15_ALyALyAcAEARyQrqd__AaSRd__lFQOyALyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GALyAcAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAcAEAD_AeQQrqd___qd_0_xXEqd_1_xXEtAaFRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAUyAWGA44_G_A15_A49_ALyA49_AA19_BackgroundModifierVyAA06_ShapeC0VyA19_A30_GGGQo_ALyALyALyALyALyALyAcAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAJy023LocalAuthenticationCoreB012DynamicStackVyAJyALyALyALyALyALyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AHyAJyALyALyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ALyA118_A44_GQo_MR);
  (*(*(v30 - 8) + 8))(v4 + v29, v30);

  return MEMORY[0x2821FE8E8](v33, v3 + v32, v2 | 7);
}

unint64_t lazy protocol witness table accessor for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier()
{
  result = lazy protocol witness table cache variable for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier;
  if (!lazy protocol witness table cache variable for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmbedInScrollViewIfNeededModifier and conformance EmbedInScrollViewIfNeededModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyARyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaSRd_0_AaSRd_1_r1_lFQOyAA08ModifiedQ0VyAtAE11buttonStyleyQrqd__AA09PrimitivemZ0Rd__lFQOyAZyAA0M0VyAZyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentmZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVAZyA22_AA11_ClipEffectVyAA7CapsuleVGGAZyA22_A26_yAA16RoundedRectangleVGGQo_AtAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaSRd_0_AaSRd_1_r1_lFQOyA8__A24_AZyAZyAtAEA_yQrqd__AAA0_Rd__lFQOyAZyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedmZ0VQo_A21_GA29_GAZyAtAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GARyAtAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaSRd_0_AaSRd_1_r1_lFQOyAZyA2_yA4_GA53_G_A24_A58_AZyA58_AA19_BackgroundModifierVyAA06_ShapeE0VyA28_A39_GGGQo_AZyAZyAZyAZyAZyAZyAtAEA_yQrqd__AAA0_Rd__lFQOyA2_yACyAEyAK12DynamicStackVyAEyAZyAZyAZyAZyAZyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAEyAZyAZyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AGA70_tGGG_AA05PlainmZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA19_ConditionalContentVyARyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaSRd_0_AaSRd_1_r1_lFQOyAA08ModifiedQ0VyAtAE11buttonStyleyQrqd__AA09PrimitivemZ0Rd__lFQOyAZyAA0M0VyAZyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentmZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVAZyA22_AA11_ClipEffectVyAA7CapsuleVGGAZyA22_A26_yAA16RoundedRectangleVGGQo_AtAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaSRd_0_AaSRd_1_r1_lFQOyA8__A24_AZyAZyAtAEA_yQrqd__AAA0_Rd__lFQOyAZyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedmZ0VQo_A21_GA29_GAZyAtAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GARyAtAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaSRd_0_AaSRd_1_r1_lFQOyAZyA2_yA4_GA53_G_A24_A58_AZyA58_AA19_BackgroundModifierVyAA06_ShapeE0VyA28_A39_GGGQo_AZyAZyAZyAZyAZyAZyAtAEA_yQrqd__AAA0_Rd__lFQOyA2_yACyAEyAK12DynamicStackVyAEyAZyAZyAZyAZyAZyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAEyAZyAZyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AGA70_tGGG_AA05PlainmZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA19SymbolRenderingModeVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolRenderingMode?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LACUIAuthCountdownItemView and conformance LACUIAuthCountdownItemView()
{
  result = lazy protocol witness table cache variable for type LACUIAuthCountdownItemView and conformance LACUIAuthCountdownItemView;
  if (!lazy protocol witness table cache variable for type LACUIAuthCountdownItemView and conformance LACUIAuthCountdownItemView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIAuthCountdownItemView and conformance LACUIAuthCountdownItemView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LACUIAuthCountdownItemConfiguration and conformance LACUIAuthCountdownItemConfiguration()
{
  result = lazy protocol witness table cache variable for type LACUIAuthCountdownItemConfiguration and conformance LACUIAuthCountdownItemConfiguration;
  if (!lazy protocol witness table cache variable for type LACUIAuthCountdownItemConfiguration and conformance LACUIAuthCountdownItemConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIAuthCountdownItemConfiguration and conformance LACUIAuthCountdownItemConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.controlSize : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x259C58570](v5);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGMR);
    type metadata accessor for BorderedButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleM0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<Capsule, Color>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2560989D4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C58520]();
  *a1 = result;
  return result;
}

uint64_t sub_256098A00(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.accentColor.setter();
}

uint64_t sub_256098A54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_256098AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_256098B7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for LACUIAuthCountdownView()
{
  type metadata accessor for ObservedObject<LACUIAuthCountdownViewModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ObservedObject<LACUIAuthCountdownViewModel>()
{
  if (!lazy cache variable for type metadata for ObservedObject<LACUIAuthCountdownViewModel>)
  {
    type metadata accessor for LACUIAuthCountdownViewModel();
    lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(&lazy protocol witness table cache variable for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel, type metadata accessor for LACUIAuthCountdownViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<LACUIAuthCountdownViewModel>);
    }
  }
}

void type metadata accessor for Environment<ColorScheme>()
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0>, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0>, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0>, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI19_ConditionalContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAiAE7toolbar7contentQrqd__yXE_tAaHRd__lFQOyAiAE0N20BackgroundVisibility_3forQrAA0Q0O_AA16ToolbarPlacementVdtFQOyAiAEAK_ANQrAP_ARdtFQOyAA08ModifiedD0VyATy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleH0VyATyAiAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0H14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyATyACyATyATyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGATyA5_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA25_ATyA25_A13_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ATyATyATyATyAYyA_yATyATyAA6SpacerVA10_GAA16_FlexFrameLayoutVG_ATyAiAEA0__A1_A2_Qrqd___qd_0_xXEqd_1_xXEtAAA3_Rd__AaHRd_0_AaHRd_1_r1_lFQOyAA4TextV_A27_ATyA44_A13_yAA13TextAlignmentOGGATyA48_AA14_PaddingLayoutVGQo_A35_GAiAEA0__A1_A2_Qrqd___qd_0_xXEqd_1_xXEtAAA3_Rd__AaHRd_0_AaHRd_1_r1_lFQOyA44__A27_A48_A48_Qo_tGGA50_GA50_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGATyATyATyATyAYyAA7ForEachVySayAU35LACUIAuthCountdownItemConfigurationVGSSAU022LACUIAuthCountdownItemH0VGGA50_GA50_GA63_GA66_GSgATyATyAU023LACUIAuthCountdownDelayH0VA50_GA66_GSgA38_ATyATyAiAEA0__A1_Qrqd___qd_0_xXEtAAA3_Rd__AaHRd_0_r0_lFQOyAYyA_yATyAA0Z0VyACyACyAiAEA0__A1_A2_Qrqd___qd_0_xXEqd_1_xXEtAAA3_Rd__AaHRd_0_AaHRd_1_r1_lFQOyATyAiAE11buttonStyleyQrqd__AA09PrimitiveL5StyleRd__lFQOyATyAA0L0VyATyA44_A41_GGA17_G_AA017BorderedProminentL5StyleVQo_A13_yAA11ControlSizeOGG_A27_ATyA102_AA11_ClipEffectVyAA7CapsuleVGGATyA102_A104_yAA16RoundedRectangleVGGQo_AiAEA0__A1_A2_Qrqd___qd_0_xXEqd_1_xXEtAAA3_Rd__AaHRd_0_AaHRd_1_r1_lFQOyA94__A27_ATyATyAiAEA89_yQrqd__AAA90_Rd__lFQOyATyA95_A24_G_AA08BorderedL5StyleVQo_A101_GA107_GATyAiAE10fontWeightyQrA15_6WeightVSgFQOyA94__Qo_A50_GQo_GACyAiAEA0__A1_A2_Qrqd___qd_0_xXEqd_1_xXEtAAA3_Rd__AaHRd_0_AaHRd_1_r1_lFQOyATyA92_yA44_GA50_G_A27_A129_ATyA129_AA01_P8ModifierVyAA06_ShapeH0VyA106_A23_GGGQo_ATyATyATyATyATyATyAiAEA89_yQrqd__AAA90_Rd__lFQOyA92_yAA6HStackVyA_yAU07DynamicF0VyA_yATyATyATyATyA8_A31_GA24_GA17_GA41_GSg_AYyA_yA51__A51_SgtGGtGG_A38_A5_tGGG_AA05PlainL5StyleVQo_A24_GA13_yA23_SgGGA17_GA50_GAA01_P13StyleModifierVyA23_GGA111_GGGGA50_GSg_A69_ySayAU09LACUIAuthL13ConfigurationVGSSA171_GtGG_A27_ATyA179_A50_GQo_A50_GA66_GtGGGAU013EmbedInScrollH16IfNeededModifierVGA166_G_Qo__Qo__ATyA139_yA_yA38_Sg_A177_tGGA66_GSgQo__Qo_GA199_GMd,  &_s7SwiftUI19_ConditionalContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAiAE7toolbar7contentQrqd__yXE_tAaHRd__lFQOyAiAE0N20BackgroundVisibility_3forQrAA0Q0O_AA16ToolbarPlacementVdtFQOyAiAEAK_ANQrAP_ARdtFQOyAA08ModifiedD0VyATy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleH0VyATyAiAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0H14InputPredicateRd__AaHRd_0_AaHRd_1_r1_lFQOyATyACyATyATyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGATyA5_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA25_ATyA25_A13_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ATyATyATyATyAYyA_yATyATyAA6SpacerVA10_GAA16_FlexFrameLayoutVG_ATyAiAEA0__A1_A2_Qrqd___qd_0_xXEqd_1_xXEtAAA3_Rd__AaHRd_0_AaHRd_1_r1_lFQOyAA4TextV_A27_ATyA44_A13_yAA13TextAlignmentOGGATyA48_AA14_PaddingLayoutVGQo_A35_GAiAEA0__A1_A2_Qrqd___qd_0_xXEqd_1_xXEtAAA3_Rd__AaHRd_0_AaHRd_1_r1_lFQOyA44__A27_A48_A48_Qo_tGGA50_GA50_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGATyATyATyATyAYyAA7ForEachVySayAU35LACUIAuthCountdownItemConfigurationVGSSAU022LACUIAuthCountdownItemH0VGGA50_GA50_GA63_GA66_GSgATyATyAU023LACUIAuthCountdownDelayH0VA50_GA66_GSgA38_ATyATyAiAEA0__A1_Qrqd___qd_0_xXEtAAA3_Rd__AaHRd_0_r0_lFQOyAYyA_yATyAA0Z0VyACyACyAiAEA0__A1_A2_Qrqd___qd_0_xXEqd_1_xXEtAAA3_Rd__AaHRd_0_AaHRd_1_r1_lFQOyATyAiAE11buttonStyleyQrqd__AA09PrimitiveL5StyleRd__lFQOyATyAA0L0VyATyA44_A41_GGA17_G_AA017BorderedProminentL5StyleVQo_A13_yAA11ControlSizeOGG_A27_ATyA102_AA11_ClipEffectVyAA7CapsuleVGGATyA102_A104_yAA16RoundedRectangleVGGQo_AiAEA0__A1_A2_Qrqd___qd_0_xXEqd_1_xXEtAAA3_Rd__AaHRd_0_AaHRd_1_r1_lFQOyA94__A27_ATyATyAiAEA89_yQrqd__AAA90_Rd__lFQOyATyA95_A24_G_AA08BorderedL5StyleVQo_A101_GA107_GATyAiAE10fontWeightyQrA15_6WeightVSgFQOyA94__Qo_A50_GQo_GACyAiAEA0__A1_A2_Qrqd___qd_0_xXEqd_1_xXEtAAA3_Rd__AaHRd_0_AaHRd_1_r1_lFQOyATyA92_yA44_GA50_G_A27_A129_ATyA129_AA01_P8ModifierVyAA06_ShapeH0VyA106_A23_GGGQo_ATyATyATyATyATyATyAiAEA89_yQrqd__AAA90_Rd__lFQOyA92_yAA6HStackVyA_yAU07DynamicF0VyA_yATyATyATyATyA8_A31_GA24_GA17_GA41_GSg_AYyA_yA51__A51_SgtGGtGG_A38_A5_tGGG_AA05PlainL5StyleVQo_A24_GA13_yA23_SgGGA17_GA50_GAA01_P13StyleModifierVyA23_GGA111_GGGGA50_GSg_A69_ySayAU09LACUIAuthL13ConfigurationVGSSA171_GtGG_A27_ATyA179_A50_GQo_A50_GA66_GtGGGAU013EmbedInScrollH16IfNeededModifierVGA166_G_Qo__Qo__ATyA139_yA_yA38_Sg_A177_tGGA66_GSgQo__Qo_GA199_GMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>( &lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0> and conformance NavigationStack<A, B>,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAgAE7toolbar7contentQrqd__yXE_tAaFRd__lFQOyAgAE0L20BackgroundVisibility_3forQrAA0O0O_AA16ToolbarPlacementVdtFQOyAgAEAI_ALQrAN_APdtFQOyAA15ModifiedContentVyARy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleF0VyARyAgAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyARyAA012_ConditionalT0VyARyARyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGARyA5_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA25_ARyA25_A13_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ARyARyARyARyAWyAYyARyARyAA6SpacerVA10_GAA16_FlexFrameLayoutVG_ARyAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyAA4TextV_A27_ARyA44_A13_yAA13TextAlignmentOGGARyA48_AA14_PaddingLayoutVGQo_A35_GAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA44__A27_A48_A48_Qo_tGGA50_GA50_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGARyARyARyARyAWyAA7ForEachVySayAS35LACUIAuthCountdownItemConfigurationVGSSAS022LACUIAuthCountdownItemF0VGGA50_GA50_GA63_GA66_GSgARyARyAS023LACUIAuthCountdownDelayF0VA50_GA66_GSgA38_ARyARyAgAEAZ_A_Qrqd___qd_0_xXEtAAA1_Rd__AaFRd_0_r0_lFQOyAWyAYyARyAA0Y0VyA3_yA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyAgAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyARyAA0J0VyARyA44_A41_GGA17_G_AA017BorderedProminentJ5StyleVQo_A13_yAA11ControlSizeOGG_A27_ARyA102_AA11_ClipEffectVyAA7CapsuleVGGARyA102_A104_yAA16RoundedRectangleVGGQo_AgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA94__A27_ARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyARyA95_A24_G_AA08BorderedJ5StyleVQo_A101_GA107_GARyAgAE10fontWeightyQrA15_6WeightVSgFQOyA94__Qo_A50_GQo_GA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyA92_yA44_GA50_G_A27_A129_ARyA129_AA01_N8ModifierVyAA06_ShapeF0VyA106_A23_GGGQo_ARyARyARyARyARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyA92_yAA6HStackVyAYyAS07DynamicD0VyAYyARyARyARyARyA8_A31_GA24_GA17_GA41_GSg_AWyAYyA51__A51_SgtGGtGG_A38_A5_tGGG_AA05PlainJ5StyleVQo_A24_GA13_yA23_SgGGA17_GA50_GAA01_N13StyleModifierVyA23_GGA111_GGGGA50_GSg_A69_ySayAS09LACUIAuthJ13ConfigurationVGSSA171_GtGG_A27_ARyA179_A50_GQo_A50_GA66_GtGGGAS013EmbedInScrollF16IfNeededModifierVGA166_G_Qo__Qo__ARyA139_yAYyA38_Sg_A177_tGGA66_GSgQo__Qo_GMd,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAgAE7toolbar7contentQrqd__yXE_tAaFRd__lFQOyAgAE0L20BackgroundVisibility_3forQrAA0O0O_AA16ToolbarPlacementVdtFQOyAgAEAI_ALQrAN_APdtFQOyAA15ModifiedContentVyARy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleF0VyARyAgAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyARyAA012_ConditionalT0VyARyARyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGARyA5_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA25_ARyA25_A13_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ARyARyARyARyAWyAYyARyARyAA6SpacerVA10_GAA16_FlexFrameLayoutVG_ARyAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyAA4TextV_A27_ARyA44_A13_yAA13TextAlignmentOGGARyA48_AA14_PaddingLayoutVGQo_A35_GAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA44__A27_A48_A48_Qo_tGGA50_GA50_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGARyARyARyARyAWyAA7ForEachVySayAS35LACUIAuthCountdownItemConfigurationVGSSAS022LACUIAuthCountdownItemF0VGGA50_GA50_GA63_GA66_GSgARyARyAS023LACUIAuthCountdownDelayF0VA50_GA66_GSgA38_ARyARyAgAEAZ_A_Qrqd___qd_0_xXEtAAA1_Rd__AaFRd_0_r0_lFQOyAWyAYyARyAA0Y0VyA3_yA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyAgAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyARyAA0J0VyARyA44_A41_GGA17_G_AA017BorderedProminentJ5StyleVQo_A13_yAA11ControlSizeOGG_A27_ARyA102_AA11_ClipEffectVyAA7CapsuleVGGARyA102_A104_yAA16RoundedRectangleVGGQo_AgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyA94__A27_ARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyARyA95_A24_G_AA08BorderedJ5StyleVQo_A101_GA107_GARyAgAE10fontWeightyQrA15_6WeightVSgFQOyA94__Qo_A50_GQo_GA3_yAgAEAZ_A_A0_Qrqd___qd_0_xXEqd_1_xXEtAAA1_Rd__AaFRd_0_AaFRd_1_r1_lFQOyARyA92_yA44_GA50_G_A27_A129_ARyA129_AA01_N8ModifierVyAA06_ShapeF0VyA106_A23_GGGQo_ARyARyARyARyARyARyAgAEA89_yQrqd__AAA90_Rd__lFQOyA92_yAA6HStackVyAYyAS07DynamicD0VyAYyARyARyARyARyA8_A31_GA24_GA17_GA41_GSg_AWyAYyA51__A51_SgtGGtGG_A38_A5_tGGG_AA05PlainJ5StyleVQo_A24_GA13_yA23_SgGGA17_GA50_GAA01_N13StyleModifierVyA23_GGA111_GGGGA50_GSg_A69_ySayAS09LACUIAuthJ13ConfigurationVGSSA171_GtGG_A27_ARyA179_A50_GQo_A50_GA66_GtGGGAS013EmbedInScrollF16IfNeededModifierVGA166_G_Qo__Qo__ARyA139_yAYyA38_Sg_A177_tGGA66_GSgQo__Qo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0D20BackgroundVisibility_3forQrAA0G0O_AA16ToolbarPlacementVdtFQOyAcAEAD_AGQrAI_AKdtFQOyAA15ModifiedContentVyAMy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAMyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAA012_ConditionalL0VyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAMyA0_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA20_AMyA20_A8_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AMyAMyAMyAMyARyATyAMyAMyAA6SpacerVA5_GAA16_FlexFrameLayoutVG_AMyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A22_AMyA39_A8_yAA13TextAlignmentOGGAMyA43_AA14_PaddingLayoutVGQo_A30_GAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA39__A22_A43_A43_Qo_tGGA45_GA45_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAMyAMyAMyAMyARyAA7ForEachVySayAN35LACUIAuthCountdownItemConfigurationVGSSAN022LACUIAuthCountdownItemC0VGGA45_GA45_GA58_GA61_GSgAMyAMyAN023LACUIAuthCountdownDelayC0VA45_GA61_GSgA33_AMyAMyAcAEAU_AVQrqd___qd_0_xXEtAaXRd__AaBRd_0_r0_lFQOyARyATyAMyAA0Q0VyAZyAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAMyAA6ButtonVyAMyA39_A36_GGA12_G_AA28BorderedProminentButtonStyleVQo_A8_yAA11ControlSizeOGG_A22_AMyA97_AA11_ClipEffectVyAA7CapsuleVGGAMyA97_A99_yAA16RoundedRectangleVGGQo_AcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA89__A22_AMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyAMyA90_A19_G_AA19BorderedButtonStyleVQo_A96_GA102_GAMyAcAE10fontWeightyQrA10_6WeightVSgFQOyA89__Qo_A45_GQo_GAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyA87_yA39_GA45_G_A22_A124_AMyA124_AA01_F8ModifierVyAA06_ShapeC0VyA101_A18_GGGQo_AMyAMyAMyAMyAMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyA87_yAA6HStackVyATyAN12DynamicStackVyATyAMyAMyAMyAMyA3_A26_GA19_GA12_GA36_GSg_ARyATyA46__A46_SgtGGtGG_A33_A0_tGGG_AA16PlainButtonStyleVQo_A19_GA8_yA18_SgGGA12_GA45_GAA01_F13StyleModifierVyA18_GGA106_GGGGA45_GSg_A64_ySayAN28LACUIAuthButtonConfigurationVGSSA166_GtGG_A22_AMyA174_A45_GQo_A45_GA61_GtGGGAN013EmbedInScrollcU14NeededModifierVGA161_G_Qo__Qo__AMyA134_yATyA33_Sg_A172_tGGA61_GSgQo_Md,  &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0D20BackgroundVisibility_3forQrAA0G0O_AA16ToolbarPlacementVdtFQOyAcAEAD_AGQrAI_AKdtFQOyAA15ModifiedContentVyAMy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAMyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAA012_ConditionalL0VyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAMyA0_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA20_AMyA20_A8_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AMyAMyAMyAMyARyATyAMyAMyAA6SpacerVA5_GAA16_FlexFrameLayoutVG_AMyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A22_AMyA39_A8_yAA13TextAlignmentOGGAMyA43_AA14_PaddingLayoutVGQo_A30_GAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA39__A22_A43_A43_Qo_tGGA45_GA45_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAMyAMyAMyAMyARyAA7ForEachVySayAN35LACUIAuthCountdownItemConfigurationVGSSAN022LACUIAuthCountdownItemC0VGGA45_GA45_GA58_GA61_GSgAMyAMyAN023LACUIAuthCountdownDelayC0VA45_GA61_GSgA33_AMyAMyAcAEAU_AVQrqd___qd_0_xXEtAaXRd__AaBRd_0_r0_lFQOyARyATyAMyAA0Q0VyAZyAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAMyAA6ButtonVyAMyA39_A36_GGA12_G_AA28BorderedProminentButtonStyleVQo_A8_yAA11ControlSizeOGG_A22_AMyA97_AA11_ClipEffectVyAA7CapsuleVGGAMyA97_A99_yAA16RoundedRectangleVGGQo_AcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyA89__A22_AMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyAMyA90_A19_G_AA19BorderedButtonStyleVQo_A96_GA102_GAMyAcAE10fontWeightyQrA10_6WeightVSgFQOyA89__Qo_A45_GQo_GAZyAcAEAU_AvWQrqd___qd_0_xXEqd_1_xXEtAaXRd__AaBRd_0_AaBRd_1_r1_lFQOyAMyA87_yA39_GA45_G_A22_A124_AMyA124_AA01_F8ModifierVyAA06_ShapeC0VyA101_A18_GGGQo_AMyAMyAMyAMyAMyAMyAcAEA84_yQrqd__AAA85_Rd__lFQOyA87_yAA6HStackVyATyAN12DynamicStackVyATyAMyAMyAMyAMyA3_A26_GA19_GA12_GA36_GSg_ARyATyA46__A46_SgtGGtGG_A33_A0_tGGG_AA16PlainButtonStyleVQo_A19_GA8_yA18_SgGGA12_GA45_GAA01_F13StyleModifierVyA18_GGA106_GGGGA45_GSg_A64_ySayAN28LACUIAuthButtonConfigurationVGSSA166_GtGG_A22_AMyA174_A45_GQo_A45_GA61_GtGGGAN013EmbedInScrollcU14NeededModifierVGA161_G_Qo__Qo__AMyA134_yATyA33_Sg_A172_tGGA61_GSgQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE27toolbarBackgroundVisibility_3forQrAA0F0O_AA16ToolbarPlacementVdtFQOyAcAE0D0_AEQrAG_AIdtFQOyAA15ModifiedContentVyALy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyALyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAA012_ConditionalK0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGALyA_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA19_ALyA19_A7_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ALyALyALyALyAQyASyALyALyAA6SpacerVA4_GAA16_FlexFrameLayoutVG_ALyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A21_ALyA38_A7_yAA13TextAlignmentOGGALyA42_AA14_PaddingLayoutVGQo_A29_GAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA38__A21_A42_A42_Qo_tGGA44_GA44_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGALyALyALyALyAQyAA7ForEachVySayAM35LACUIAuthCountdownItemConfigurationVGSSAM022LACUIAuthCountdownItemC0VGGA44_GA44_GA57_GA60_GSgALyALyAM023LACUIAuthCountdownDelayC0VA44_GA60_GSgA32_ALyALyAcAEAT_AUQrqd___qd_0_xXEtAaWRd__AaBRd_0_r0_lFQOyAQyASyALyAA0P0VyAYyAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyALyA38_A35_GGA11_G_AA28BorderedProminentButtonStyleVQo_A7_yAA11ControlSizeOGG_A21_ALyA96_AA11_ClipEffectVyAA7CapsuleVGGALyA96_A98_yAA16RoundedRectangleVGGQo_AcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA88__A21_ALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyALyA89_A18_G_AA19BorderedButtonStyleVQo_A95_GA101_GALyAcAE10fontWeightyQrA9_6WeightVSgFQOyA88__Qo_A44_GQo_GAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyA86_yA38_GA44_G_A21_A123_ALyA123_AA01_E8ModifierVyAA06_ShapeC0VyA100_A17_GGGQo_ALyALyALyALyALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyA86_yAA6HStackVyASyAM12DynamicStackVyASyALyALyALyALyA2_A25_GA18_GA11_GA35_GSg_AQyASyA45__A45_SgtGGtGG_A32_A_tGGG_AA16PlainButtonStyleVQo_A18_GA7_yA17_SgGGA11_GA44_GAA01_E13StyleModifierVyA17_GGA105_GGGGA44_GSg_A63_ySayAM28LACUIAuthButtonConfigurationVGSSA165_GtGG_A21_ALyA173_A44_GQo_A44_GA60_GtGGGAM013EmbedInScrollcT14NeededModifierVGA160_G_Qo__Qo_Md,  &_s7SwiftUI4ViewPAAE27toolbarBackgroundVisibility_3forQrAA0F0O_AA16ToolbarPlacementVdtFQOyAcAE0D0_AEQrAG_AIdtFQOyAA15ModifiedContentVyALy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyALyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAA012_ConditionalK0VyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGALyA_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA19_ALyA19_A7_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ALyALyALyALyAQyASyALyALyAA6SpacerVA4_GAA16_FlexFrameLayoutVG_ALyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A21_ALyA38_A7_yAA13TextAlignmentOGGALyA42_AA14_PaddingLayoutVGQo_A29_GAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA38__A21_A42_A42_Qo_tGGA44_GA44_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGALyALyALyALyAQyAA7ForEachVySayAM35LACUIAuthCountdownItemConfigurationVGSSAM022LACUIAuthCountdownItemC0VGGA44_GA44_GA57_GA60_GSgALyALyAM023LACUIAuthCountdownDelayC0VA44_GA60_GSgA32_ALyALyAcAEAT_AUQrqd___qd_0_xXEtAaWRd__AaBRd_0_r0_lFQOyAQyASyALyAA0P0VyAYyAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyALyA38_A35_GGA11_G_AA28BorderedProminentButtonStyleVQo_A7_yAA11ControlSizeOGG_A21_ALyA96_AA11_ClipEffectVyAA7CapsuleVGGALyA96_A98_yAA16RoundedRectangleVGGQo_AcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyA88__A21_ALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyALyA89_A18_G_AA19BorderedButtonStyleVQo_A95_GA101_GALyAcAE10fontWeightyQrA9_6WeightVSgFQOyA88__Qo_A44_GQo_GAYyAcAEAT_AuVQrqd___qd_0_xXEqd_1_xXEtAaWRd__AaBRd_0_AaBRd_1_r1_lFQOyALyA86_yA38_GA44_G_A21_A123_ALyA123_AA01_E8ModifierVyAA06_ShapeC0VyA100_A17_GGGQo_ALyALyALyALyALyALyAcAEA83_yQrqd__AAA84_Rd__lFQOyA86_yAA6HStackVyASyAM12DynamicStackVyASyALyALyALyALyA2_A25_GA18_GA11_GA35_GSg_AQyASyA45__A45_SgtGGtGG_A32_A_tGGG_AA16PlainButtonStyleVQo_A18_GA7_yA17_SgGGA11_GA44_GAA01_E13StyleModifierVyA17_GGA105_GGGGA44_GSg_A63_ySayAM28LACUIAuthButtonConfigurationVGSSA165_GtGG_A21_ALyA173_A44_GQo_A44_GA60_GtGGGAM013EmbedInScrollcT14NeededModifierVGA160_G_Qo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerVSg_AA7ForEachVySay023LocalAuthenticationCoreB028LACUIAuthButtonConfigurationVGSSAA5GroupVyAA012_ConditionalD0VyATyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaURd_0_AaURd_1_r1_lFQOyACyAvAE11buttonStyleyQrqd__AA09PrimitiveoZ0Rd__lFQOyACyAA0O0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentoZ0VQo_A10_yAA11ControlSizeOGG_AA8SolariumVACyA22_AA11_ClipEffectVyAA7CapsuleVGGACyA22_A26_yAA16RoundedRectangleVGGQo_AvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyA8__A24_ACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyACyA15_AA011_ForegroundZ8ModifierVyAA5ColorVGG_AA08BorderedoZ0VQo_A21_GA29_GACyAvAE10fontWeightyQrA12_6WeightVSgFQOyA8__Qo_AA14_PaddingLayoutVGQo_GATyAvAEAW_AxYQrqd___qd_0_xXEqd_1_xXEtAaZRd__AaURd_0_AaURd_1_r1_lFQOyACyA2_yA4_GA53_G_A24_A58_ACyA58_AA19_BackgroundModifierVyAA06_ShapeG0VyA28_A39_GGGQo_ACyACyACyACyACyACyAvAEA_yQrqd__AAA0_Rd__lFQOyA2_yAEyAGyAM12DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGA10_yAA19SymbolRenderingModeVSgGGA40_GA14_GA6_GSg_AA6VStackVyAGyACyACyA4_A10_yAA13TextAlignmentOGGA53_G_A89_SgtGGtGG_AIA70_tGGG_AA05PlainoZ0VQo_A40_GA10_yA39_SgGGA14_GA53_GAA011_BackgroundZ8ModifierVyA39_GGA33_GGGGGtGGAA16_FixedSizeLayoutVGSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI4ViewPAAE7toolbar_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAA15ModifiedContentVyAKy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAKyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAKyAzA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA18_AKyA18_A6_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AKyAKyAKyAKyAPyARyAKyAKyAA6SpacerVA3_GAA16_FlexFrameLayoutVG_AKyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A20_AKyA37_A6_yAA13TextAlignmentOGGAKyA41_AA14_PaddingLayoutVGQo_A28_GAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA37__A20_A41_A41_Qo_tGGA43_GA43_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAKyAKyAKyAKyAPyAA7ForEachVySayAL35LACUIAuthCountdownItemConfigurationVGSSAL022LACUIAuthCountdownItemC0VGGA43_GA43_GA56_GA59_GSgAKyAKyAL023LACUIAuthCountdownDelayC0VA43_GA59_GSgA31_AKyAKyAcAEAS_ATQrqd___qd_0_xXEtAaVRd__AaBRd_0_r0_lFQOyAPyARyAKyAA0O0VyAXyAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA37_A34_GGA10_G_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGG_A20_AKyA95_AA11_ClipEffectVyAA7CapsuleVGGAKyA95_A97_yAA16RoundedRectangleVGGQo_AcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA87__A20_AKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyAKyA88_A17_G_AA19BorderedButtonStyleVQo_A94_GA100_GAKyAcAE10fontWeightyQrA8_6WeightVSgFQOyA87__Qo_A43_GQo_GAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyA85_yA37_GA43_G_A20_A122_AKyA122_AA19_BackgroundModifierVyAA06_ShapeC0VyA99_A16_GGGQo_AKyAKyAKyAKyAKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyA85_yAA6HStackVyARyAL12DynamicStackVyARyAKyAKyAKyAKyA1_A24_GA17_GA10_GA34_GSg_APyARyA44__A44_SgtGGtGG_A31_AZtGGG_AA16PlainButtonStyleVQo_A17_GA6_yA16_SgGGA10_GA43_GAA24_BackgroundStyleModifierVyA16_GGA104_GGGGA43_GSg_A62_ySayAL28LACUIAuthButtonConfigurationVGSSA164_GtGG_A20_AKyA172_A43_GQo_A43_GA59_GtGGGAL013EmbedInScrollcS14NeededModifierVGA159_G_Qo_Md,  &_s7SwiftUI4ViewPAAE7toolbar_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAA15ModifiedContentVyAKy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyAKyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAA012_ConditionalJ0VyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGAKyAzA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA18_AKyA18_A6_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_AKyAKyAKyAKyAPyARyAKyAKyAA6SpacerVA3_GAA16_FlexFrameLayoutVG_AKyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A20_AKyA37_A6_yAA13TextAlignmentOGGAKyA41_AA14_PaddingLayoutVGQo_A28_GAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA37__A20_A41_A41_Qo_tGGA43_GA43_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGAKyAKyAKyAKyAPyAA7ForEachVySayAL35LACUIAuthCountdownItemConfigurationVGSSAL022LACUIAuthCountdownItemC0VGGA43_GA43_GA56_GA59_GSgAKyAKyAL023LACUIAuthCountdownDelayC0VA43_GA59_GSgA31_AKyAKyAcAEAS_ATQrqd___qd_0_xXEtAaVRd__AaBRd_0_r0_lFQOyAPyARyAKyAA0O0VyAXyAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAKyA37_A34_GGA10_G_AA28BorderedProminentButtonStyleVQo_A6_yAA11ControlSizeOGG_A20_AKyA95_AA11_ClipEffectVyAA7CapsuleVGGAKyA95_A97_yAA16RoundedRectangleVGGQo_AcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyA87__A20_AKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyAKyA88_A17_G_AA19BorderedButtonStyleVQo_A94_GA100_GAKyAcAE10fontWeightyQrA8_6WeightVSgFQOyA87__Qo_A43_GQo_GAXyAcAEAS_AtUQrqd___qd_0_xXEqd_1_xXEtAaVRd__AaBRd_0_AaBRd_1_r1_lFQOyAKyA85_yA37_GA43_G_A20_A122_AKyA122_AA19_BackgroundModifierVyAA06_ShapeC0VyA99_A16_GGGQo_AKyAKyAKyAKyAKyAKyAcAEA82_yQrqd__AAA83_Rd__lFQOyA85_yAA6HStackVyARyAL12DynamicStackVyARyAKyAKyAKyAKyA1_A24_GA17_GA10_GA34_GSg_APyARyA44__A44_SgtGGtGG_A31_AZtGGG_AA16PlainButtonStyleVQo_A17_GA6_yA16_SgGGA10_GA43_GAA24_BackgroundStyleModifierVyA16_GGA104_GGGGA43_GSg_A62_ySayAL28LACUIAuthButtonConfigurationVGSSA164_GtGG_A20_AKyA172_A43_GQo_A43_GA59_GtGGGAL013EmbedInScrollcS14NeededModifierVGA159_G_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA9TupleViewVyACyAA0L0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0L14InputPredicateRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGACyAtA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA12_ACyA12_A0_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ACyACyACyACyAHyAJyACyACyAA6SpacerVAYGAA05_FlexxW0VG_ACyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyAA4TextV_A14_ACyA31_A0_yAA13TextAlignmentOGGACyA35_AA08_PaddingW0VGQo_A22_GAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA31__A14_A35_A35_Qo_tGGA37_GA37_GAA21_TraitWritingModifierVyAA0w13PriorityTraitZ0VGGAA010_FixedSizeW0VGACyACyACyACyAHyAA7ForEachVySayAD35LACUIAuthCountdownItemConfigurationVGSSAD022LACUIAuthCountdownItemL0VGGA37_GA37_GA50_GA53_GSgACyACyAD023LACUIAuthCountdownDelayL0VA37_GA53_GSgA25_ACyACyAlAEAM_ANQrqd___qd_0_xXEtAaPRd__AaKRd_0_r0_lFQOyAHyAJyACyAA0I0VyARyARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAlAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyACyA31_A28_GGA4_G_AA28BorderedProminentButtonStyleVQo_A0_yAA11ControlSizeOGG_A14_ACyA89_AA11_ClipEffectVyAA7CapsuleVGGACyA89_A91_yAA16RoundedRectangleVGGQo_AlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA81__A14_ACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyACyA82_A11_G_AA19BorderedButtonStyleVQo_A88_GA94_GACyAlAE10fontWeightyQrA2_6WeightVSgFQOyA81__Qo_A37_GQo_GARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyA79_yA31_GA37_G_A14_A116_ACyA116_AA19_BackgroundModifierVyAA06_ShapeL0VyA93_A10_GGGQo_ACyACyACyACyACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyA79_yAA6HStackVyAJyAD12DynamicStackVyAJyACyACyACyACyAWA18_GA11_GA4_GA28_GSg_AHyAJyA38__A38_SgtGGtGG_A25_ATtGGG_AA16PlainButtonStyleVQo_A11_GA0_yA10_SgGGA4_GA37_GAA24_BackgroundStyleModifierVyA10_GGA98_GGGGA37_GSg_A56_ySayAD28LACUIAuthButtonConfigurationVGSSA158_GtGG_A14_ACyA166_A37_GQo_A37_GA53_GtGGGAD013EmbedInScrolllN14NeededModifierVGA153_GMd,  &_s7SwiftUI15ModifiedContentVyACy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA9TupleViewVyACyAA0L0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0L14InputPredicateRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameW0VGACyAtA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA12_ACyA12_A0_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ACyACyACyACyAHyAJyACyACyAA6SpacerVAYGAA05_FlexxW0VG_ACyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyAA4TextV_A14_ACyA31_A0_yAA13TextAlignmentOGGACyA35_AA08_PaddingW0VGQo_A22_GAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA31__A14_A35_A35_Qo_tGGA37_GA37_GAA21_TraitWritingModifierVyAA0w13PriorityTraitZ0VGGAA010_FixedSizeW0VGACyACyACyACyAHyAA7ForEachVySayAD35LACUIAuthCountdownItemConfigurationVGSSAD022LACUIAuthCountdownItemL0VGGA37_GA37_GA50_GA53_GSgACyACyAD023LACUIAuthCountdownDelayL0VA37_GA53_GSgA25_ACyACyAlAEAM_ANQrqd___qd_0_xXEtAaPRd__AaKRd_0_r0_lFQOyAHyAJyACyAA0I0VyARyARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyAlAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyACyA31_A28_GGA4_G_AA28BorderedProminentButtonStyleVQo_A0_yAA11ControlSizeOGG_A14_ACyA89_AA11_ClipEffectVyAA7CapsuleVGGACyA89_A91_yAA16RoundedRectangleVGGQo_AlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyA81__A14_ACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyACyA82_A11_G_AA19BorderedButtonStyleVQo_A88_GA94_GACyAlAE10fontWeightyQrA2_6WeightVSgFQOyA81__Qo_A37_GQo_GARyAlAEAM_AnOQrqd___qd_0_xXEqd_1_xXEtAaPRd__AaKRd_0_AaKRd_1_r1_lFQOyACyA79_yA31_GA37_G_A14_A116_ACyA116_AA19_BackgroundModifierVyAA06_ShapeL0VyA93_A10_GGGQo_ACyACyACyACyACyACyAlAEA76_yQrqd__AAA77_Rd__lFQOyA79_yAA6HStackVyAJyAD12DynamicStackVyAJyACyACyACyACyAWA18_GA11_GA4_GA28_GSg_AHyAJyA38__A38_SgtGGtGG_A25_ATtGGG_AA16PlainButtonStyleVQo_A11_GA0_yA10_SgGGA4_GA37_GAA24_BackgroundStyleModifierVyA10_GGA98_GGGGA37_GSg_A56_ySayAD28LACUIAuthButtonConfigurationVGSSA158_GtGG_A14_ACyA166_A37_GQo_A37_GA53_GtGGGAD013EmbedInScrolllN14NeededModifierVGA153_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GlassGroup<VStack<TupleView<(ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, _FixedSizeLayout>?, ModifiedContent<ModifiedContent<LACUIAuthCountdownDelayView, _PaddingLayout>, _FixedSizeLayout>?, Sp();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>>)>>, _FixedSizeLayout>? and conformance <A> A?();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<NavigationStack<NavigationPath, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0>, <<opaque return type of View.navigationBarBackButtonHidden(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t sub_256098FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGACyAgA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA016_ForegroundStyleN0VyAA5ColorVGGAOyAA19SymbolRenderingModeVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GAA06_TraitvW0VyAA0j13PriorityTraitU0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GA5_GMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_ACyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVACyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGACyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGA5_GMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_AGyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVAGyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAGyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6SpacerVAA12_FrameLayoutVGAA05_FlexiJ0VG_AGyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaPRd_0_AaPRd_1_r1_lFQOyAA4TextV_AA8SolariumVAGyAwA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAGyA3_AA08_PaddingJ0VGQo_AA023AccessibilityAttachmentW0VGAqAEAR_AsTQrqd___qd_0_xXEqd_1_xXEtAaURd__AaPRd_0_AaPRd_1_r1_lFQOyAW_AYA3_A3_Qo_tGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _FlexFrameLayout>, ModifiedContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, AccessibilityAttachmentModifier>, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGAA21_TraitWritingModifierVyAA0q8PriorityR3KeyVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGAQGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAH0klM4ViewVGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAF0ijK4ViewVGGMd, &_s7SwiftUI6VStackVyAA7ForEachVySay023LocalAuthenticationCoreB035LACUIAuthCountdownItemConfigurationVGSSAF0ijK4ViewVGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[LACUIAuthCountdownItemConfiguration], String, LACUIAuthCountdownItemView>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.staticIf<A, B>(_:then:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.staticIf<A, B>(_:then:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.staticIf<A, B>(_:then:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0E14InputPredicateRd__AaDRd_0_r0_lFQOyAA6VStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAPyAeAEAF_AG4elseQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyA__A15_ACyACyAeAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAeAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAPyAeAEAF_AgQQrqd___qd_0_xXEqd_1_xXEtAaHRd__AaDRd_0_AaDRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_ACyACyACyACyACyACyAeAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyALy023LocalAuthenticationCoreB012DynamicStackVyALyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AJyALyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGG_A15_ACyA118_A44_GQo_A44_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyAKyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_ACyACyAmAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeG0VyA19_A30_GGGQo_ACyACyACyACyACyACyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAGy023LocalAuthenticationCoreB012DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AEyAGyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGA44_GMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA5GroupVyAA012_ConditionalD0VyAKyAA0G0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0G14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyACyAA0S0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVACyA13_AA11_ClipEffectVyAA7CapsuleVGGACyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_ACyACyAmAEARyQrqd__AaSRd__lFQOyACyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GACyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyACyAUyAWGA44_G_A15_A49_ACyA49_AA19_BackgroundModifierVyAA06_ShapeG0VyA19_A30_GGGQo_ACyACyACyACyACyACyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAGy023LocalAuthenticationCoreB012DynamicStackVyAGyACyACyACyACyACyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_AEyAGyACyACyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGA44_GMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>, _PaddingLayout>?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:els, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalG0VyAKyAA0E0PAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAmAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAGyAA0S0VyAGyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentsQ0VQo_A1_yAA11ControlSizeOGG_AA8SolariumVAGyA13_AA11_ClipEffectVyAA7CapsuleVGGAGyA13_A17_yAA16RoundedRectangleVGGQo_AmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyA__A15_AGyAGyAmAEARyQrqd__AaSRd__lFQOyAGyA6_AA011_ForegroundQ8ModifierVyAA5ColorVGG_AA08BorderedsQ0VQo_A12_GA20_GAGyAmAE10fontWeightyQrA3_6WeightVSgFQOyA__Qo_AA08_PaddingW0VGQo_GAKyAmAEAN_AoPQrqd___qd_0_xXEqd_1_xXEtAaQRd__AaLRd_0_AaLRd_1_r1_lFQOyAGyAUyAWGA44_G_A15_A49_AGyA49_AA19_BackgroundModifierVyAA06_ShapeE0VyA19_A30_GGGQo_AGyAGyAGyAGyAGyAGyAmAEARyQrqd__AaSRd__lFQOyAUyAA6HStackVyAEy023LocalAuthenticationCoreB012DynamicStackVyAEyAGyAGyAGyAGyAGyAA5ImageVAA012_AspectRatioW0VGA1_yAA19SymbolRenderingModeVSgGGA31_GA5_GAYGSg_ACyAEyAGyAGyAWA1_yAA0T9AlignmentOGGA44_G_A81_SgtGGtGG_AA6SpacerVA64_tGGG_AA05PlainsQ0VQo_A31_GA1_yA30_SgGGA5_GA44_GAA011_BackgroundQ8ModifierVyA30_GGA24_GGGGA44_GSg_AA7ForEachVySayA60_09LACUIAuthS13ConfigurationVGSSA108_GtGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>>, _PaddingLayout>?, ForEach<[LACUIAuthButtonConfiguration], String, Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.staticIf<A, B>(_:then:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedE0VyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAMyAA0Q0VyAMyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVAMyA9_AA11_ClipEffectVyAA7CapsuleVGGAMyA9_A13_yAA16RoundedRectangleVGGQo_AgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAW_A11_AMyAMyAgAEANyQrqd__AaORd__lFQOyAMyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GAMyAgAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAEyAgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAMyAQyASGA40_G_A11_A45_AMyA45_AA011_BackgroundY0VyAA06_ShapeF0VyA15_A26_GGGQo_AMyAMyAMyAMyAMyAMyAgAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleF0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yAMyAMyAMyAMyAMyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yAMyAMyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0F14InputPredicateRd__AaFRd_0_AaFRd_1_r1_lFQOyAA08ModifiedE0VyAgAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAMyAA0Q0VyAMyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentqO0VQo_AYyAA11ControlSizeOGG_AA8SolariumVAMyA9_AA11_ClipEffectVyAA7CapsuleVGGAMyA9_A13_yAA16RoundedRectangleVGGQo_AgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAW_A11_AMyAMyAgAEANyQrqd__AaORd__lFQOyAMyA2_AA011_ForegroundoY0VyAA5ColorVGG_AA08BorderedqO0VQo_A8_GA16_GAMyAgAE10fontWeightyQrA_6WeightVSgFQOyAW_Qo_AA08_PaddingU0VGQo_GAEyAgAEAH_AiJQrqd___qd_0_xXEqd_1_xXEtAaKRd__AaFRd_0_AaFRd_1_r1_lFQOyAMyAQyASGA40_G_A11_A45_AMyA45_AA011_BackgroundY0VyAA06_ShapeF0VyA15_A26_GGGQo_AMyAMyAMyAMyAMyAMyAgAEANyQrqd__AaORd__lFQOyAQyAA6HStackVyAA05TupleF0Vy023LocalAuthenticationCoreB012DynamicStackVyA57_yAMyAMyAMyAMyAMyAA5ImageVAA012_AspectRatioU0VGAYyAA19SymbolRenderingModeVSgGGA27_GA1_GAUGSg_AA6VStackVyA57_yAMyAMyAsYyAA0R9AlignmentOGGA40_G_A81_SgtGGtGG_AA6SpacerVA62_tGGG_AA05PlainqO0VQo_A27_GAYyA26_SgGGA1_GA40_GAA011_BackgroundoY0VyA26_GGA20_GGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GACyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAKyAOyAQGA38_G_A9_A43_AKyA43_AA011_BackgroundX0VyAA06_ShapeE0VyA13_A24_GGGQo_AKyAKyAKyAKyAKyAKyAeAEALyQrqd__AaMRd__lFQOyAOyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA55_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioT0VGAWyAA19SymbolRenderingModeVSgGGA25_GA_GASGSg_AA6VStackVyA55_yAKyAKyAqWyAA0Q9AlignmentOGGA38_G_A79_SgtGGtGG_AA6SpacerVA60_tGGG_AA05PlainpN0VQo_A25_GAWyA24_SgGGA_GA38_GAA011_BackgroundnX0VyA24_GGA18_GGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GACyAeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAKyAOyAQGA38_G_A9_A43_AKyA43_AA011_BackgroundX0VyAA06_ShapeE0VyA13_A24_GGGQo_AKyAKyAKyAKyAKyAKyAeAEALyQrqd__AaMRd__lFQOyAOyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA55_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioT0VGAWyAA19SymbolRenderingModeVSgGGA25_GA_GASGSg_AA6VStackVyA55_yAKyAKyAqWyAA0Q9AlignmentOGGA38_G_A79_SgtGGtGG_AA6SpacerVA60_tGGG_AA05PlainpN0VQo_A25_GAWyA24_SgGGA_GA38_GAA011_BackgroundnX0VyA24_GGA18_GGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0>, _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAKyAA0P0VyAKyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentpN0VQo_AWyAA11ControlSizeOGG_AA8SolariumVAKyA7_AA11_ClipEffectVyAA7CapsuleVGGAKyA7_A11_yAA16RoundedRectangleVGGQo_AeAEAF_AgHQrqd___qd_0_xXEqd_1_xXEtAaIRd__AaDRd_0_AaDRd_1_r1_lFQOyAU_A9_AKyAKyAeAEALyQrqd__AaMRd__lFQOyAKyA0_AA011_ForegroundnX0VyAA5ColorVGG_AA0zpN0VQo_A6_GA14_GAKyAeAE10fontWeightyQrAY6WeightVSgFQOyAU_Qo_AA08_PaddingT0VGQo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0E14InputPredicateRd__AaDRd_0_AaDRd_1_r1_lFQOyAA08ModifiedD0VyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVG_AA8SolariumVAsKyAsA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVAA5ColorVGGGQo_AKyAKyAKyAKyAKyAKyAeAE11buttonStyleyQrqd__AA09PrimitivemX0Rd__lFQOyAMyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyA11_yAKyAKyAKyAKyAKyAA5ImageVAA012_AspectRatioP0VGAA022_EnvironmentKeyWritingS0VyAA19SymbolRenderingModeVSgGGAA011_ForegroundxS0VyA1_GGA21_yAA4FontVSgGGAA010_FlexFrameP0VGSg_AA6VStackVyA11_yAKyAKyAOA21_yAA0N9AlignmentOGGARG_A46_SgtGGtGG_AA6SpacerVA16_tGGG_AA05PlainmX0VQo_A29_GA21_yA1_SgGGA34_GARGAA01_rxS0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>.0, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GAA011_BackgroundgX0VyA4_GGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GA25_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGA10_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GAWyA4_SgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0Vy023LocalAuthenticationCoreB012DynamicStackVyAMyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA011_ForegroundgX0VyAA5ColorVGGAWyAA4FontVSgGGAA010_FlexFrameT0VGSg_AA6VStackVyAMyACyACyAA4TextVAWyAA13TextAlignmentOGGAA08_PaddingT0VG_A26_SgtGGtGG_AA6SpacerVARtGGG_AA05PlainiG0VQo_A5_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMR);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(DynamicStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _ForegroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>?, VStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout>?)>>)>>, Spacer, Image)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVy023LocalAuthenticationCoreB012DynamicStackVyAGyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA18_AspectRatioLayoutVGAA30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGGAA016_ForegroundStyleU0VyAA5ColorVGGASyAA4FontVSgGGAA010_FlexFrameQ0VGSg_AA6VStackVyAGyALyALyAA4TextVASyAA13TextAlignmentOGGAA08_PaddingQ0VG_A22_SgtGGtGG_AA6SpacerVANtGGGMR);
    lazy protocol witness table accessor for type LACUIAuthCountdownViewModel and conformance LACUIAuthCountdownViewModel(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_256099EA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_AA017BorderedProminentiG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_256099F70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyACyAA4TextVAA16_FlexFrameLayoutVGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundgQ0VyAA5ColorVGG_AA08BorderediG0VQo_AQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGG_Qo_AA08_PaddingM0VGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Text, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25609A06C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25609A118()
{
  if (*(v0 + 32) != 255)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    outlined consume of LACUIAuthImageConfiguration();
  }

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t outlined copy of LACUIAuthImageConfiguration?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of LACUIAuthImageConfiguration();
  }

  return result;
}

uint64_t objectdestroy_51Tm()
{
  v1 = (type metadata accessor for LACUIAuthCountdownView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v0 + v4;
  v11 = *(v0 + v4 + 8);

  v12 = *(v0 + v4 + 24);

  v13 = *(v0 + v4 + 40);

  if (*(v0 + v4 + 64) != 255)
  {
    v14 = *(v10 + 48);
    v15 = *(v10 + 56);
    outlined consume of LACUIAuthImageConfiguration();
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 66, v2 | 7);
}

uint64_t partial apply for closure #4 in closure #1 in LACUIAuthCountdownView.button(with:)()
{
  v1 = *(type metadata accessor for LACUIAuthCountdownView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *(v0 + v2 + 8);
  v5 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v5;
  v9 = *(v3 + 64);
  v6 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v6;
  return (*(*v4 + 168))(v8);
}

unint64_t lazy protocol witness table accessor for type LACUIAuthButtonConfiguration and conformance LACUIAuthButtonConfiguration()
{
  result = lazy protocol witness table cache variable for type LACUIAuthButtonConfiguration and conformance LACUIAuthButtonConfiguration;
  if (!lazy protocol witness table cache variable for type LACUIAuthButtonConfiguration and conformance LACUIAuthButtonConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACUIAuthButtonConfiguration and conformance LACUIAuthButtonConfiguration);
  }

  return result;
}

uint64_t objectdestroy_66Tm()
{
  v1 = (type metadata accessor for LACUIAuthCountdownView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in LACUIAuthCountdownView.barButtons(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LACUIAuthCountdownView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v7;
  v11 = *(a1 + 64);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  return closure #1 in LACUIAuthCountdownView.button(with:)(v10, v2 + v6, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Spacer)>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in View.embedInNavigationStack(if:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAcAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0I20BackgroundVisibility_3forQrAA0L0O_AA16ToolbarPlacementVdtFQOyAcAEAE_AHQrAJ_ALdtFQOyAA15ModifiedContentVyANy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyANyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAA012_ConditionalQ0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGANyA1_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA21_ANyA21_A9_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ANyANyANyANyASyAUyANyANyAA6SpacerVA6_GAA16_FlexFrameLayoutVG_ANyAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A23_ANyA40_A9_yAA13TextAlignmentOGGANyA44_AA14_PaddingLayoutVGQo_A31_GAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA40__A23_A44_A44_Qo_tGGA46_GA46_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGANyANyANyANyASyAA7ForEachVySayAO35LACUIAuthCountdownItemConfigurationVGSSAO022LACUIAuthCountdownItemC0VGGA46_GA46_GA59_GA62_GSgANyANyAO023LACUIAuthCountdownDelayC0VA46_GA62_GSgA34_ANyANyAcAEAV_AWQrqd___qd_0_xXEtAaYRd__AaBRd_0_r0_lFQOyASyAUyANyAA0V0VyA_yA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAcAE11buttonStyleyQrqd__AA09PrimitiveG5StyleRd__lFQOyANyAA0G0VyANyA40_A37_GGA13_G_AA017BorderedProminentG5StyleVQo_A9_yAA11ControlSizeOGG_A23_ANyA98_AA11_ClipEffectVyAA7CapsuleVGGANyA98_A100_yAA16RoundedRectangleVGGQo_AcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA90__A23_ANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyANyA91_A20_G_AA08BorderedG5StyleVQo_A97_GA103_GANyAcAE10fontWeightyQrA11_6WeightVSgFQOyA90__Qo_A46_GQo_GA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyA88_yA40_GA46_G_A23_A125_ANyA125_AA01_K8ModifierVyAA06_ShapeC0VyA102_A19_GGGQo_ANyANyANyANyANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyA88_yAA6HStackVyAUyAO12DynamicStackVyAUyANyANyANyANyA4_A27_GA20_GA13_GA37_GSg_ASyAUyA47__A47_SgtGGtGG_A34_A1_tGGG_AA05PlainG5StyleVQo_A20_GA9_yA19_SgGGA13_GA46_GAA01_K13StyleModifierVyA19_GGA107_GGGGA46_GSg_A65_ySayAO09LACUIAuthG13ConfigurationVGSSA167_GtGG_A23_ANyA175_A46_GQo_A46_GA62_GtGGGAO013EmbedInScrollcZ14NeededModifierVGA162_G_Qo__Qo__ANyA135_yAUyA34_Sg_A173_tGGA62_GSgQo__Qo_Md,  &_s7SwiftUI4ViewPAAE29navigationBarBackButtonHiddenyQrSbFQOyAcAE7toolbar7contentQrqd__yXE_tAaBRd__lFQOyAcAE0I20BackgroundVisibility_3forQrAA0L0O_AA16ToolbarPlacementVdtFQOyAcAEAE_AHQrAJ_ALdtFQOyAA15ModifiedContentVyANy023LocalAuthenticationCoreB010GlassGroupVyAA6VStackVyAA05TupleC0VyANyAcAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAA012_ConditionalQ0VyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGANyA1_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGGAA24_ForegroundStyleModifierVyAA5ColorVGG_AA8SolariumVA21_ANyA21_A9_yAA19SymbolRenderingModeVSgGGQo_AA31AccessibilityAttachmentModifierVG_ANyANyANyANyASyAUyANyANyAA6SpacerVA6_GAA16_FlexFrameLayoutVG_ANyAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyAA4TextV_A23_ANyA40_A9_yAA13TextAlignmentOGGANyA44_AA14_PaddingLayoutVGQo_A31_GAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA40__A23_A44_A44_Qo_tGGA46_GA46_GAA21_TraitWritingModifierVyAA22LayoutPriorityTraitKeyVGGAA16_FixedSizeLayoutVGANyANyANyANyASyAA7ForEachVySayAO35LACUIAuthCountdownItemConfigurationVGSSAO022LACUIAuthCountdownItemC0VGGA46_GA46_GA59_GA62_GSgANyANyAO023LACUIAuthCountdownDelayC0VA46_GA62_GSgA34_ANyANyAcAEAV_AWQrqd___qd_0_xXEtAaYRd__AaBRd_0_r0_lFQOyASyAUyANyAA0V0VyA_yA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyAcAE11buttonStyleyQrqd__AA09PrimitiveG5StyleRd__lFQOyANyAA0G0VyANyA40_A37_GGA13_G_AA017BorderedProminentG5StyleVQo_A9_yAA11ControlSizeOGG_A23_ANyA98_AA11_ClipEffectVyAA7CapsuleVGGANyA98_A100_yAA16RoundedRectangleVGGQo_AcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyA90__A23_ANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyANyA91_A20_G_AA08BorderedG5StyleVQo_A97_GA103_GANyAcAE10fontWeightyQrA11_6WeightVSgFQOyA90__Qo_A46_GQo_GA_yAcAEAV_AwXQrqd___qd_0_xXEqd_1_xXEtAaYRd__AaBRd_0_AaBRd_1_r1_lFQOyANyA88_yA40_GA46_G_A23_A125_ANyA125_AA01_K8ModifierVyAA06_ShapeC0VyA102_A19_GGGQo_ANyANyANyANyANyANyAcAEA85_yQrqd__AAA86_Rd__lFQOyA88_yAA6HStackVyAUyAO12DynamicStackVyAUyANyANyANyANyA4_A27_GA20_GA13_GA37_GSg_ASyAUyA47__A47_SgtGGtGG_A34_A1_tGGG_AA05PlainG5StyleVQo_A20_GA9_yA19_SgGGA13_GA46_GAA01_K13StyleModifierVyA19_GGA107_GGGGA46_GSg_A65_ySayAO09LACUIAuthG13ConfigurationVGSSA167_GtGG_A23_ANyA175_A46_GQo_A46_GA62_GtGGGAO013EmbedInScrollcZ14NeededModifierVGA162_G_Qo__Qo__ANyA135_yAUyA34_Sg_A173_tGGA62_GSgQo__Qo_MR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t outlined init with take of RoundedRectangle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of LACUIAuthCountdownView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of LACUIAuthCountdownDelayConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static LACUIIcon.genericIcon.getter()
{
  v0 = [objc_opt_self() genericApplicationIcon];
  v1 = LACUIImageWithIcon(v0);

  return v1;
}

id static LACUIIcon.image(forBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v5 = MEMORY[0x259C58D00](a1, a2);
    v6 = [v4 initWithBundleIdentifier_];

    v7 = LACUIImageWithIcon(v6);
    return v7;
  }

  else
  {
    v9 = [swift_getObjCClassFromMetadata() genericIcon];

    return v9;
  }
}

id static LACUIIcon.image(forPath:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized static LACUIIcon.icon(forPath:)(a1, a2);
  if (v2)
  {
    v3 = v2;
    v4 = LACUIImageWithIcon(v2);

    return v4;
  }

  else
  {
    v6 = [swift_getObjCClassFromMetadata() genericIcon];

    return v6;
  }
}

LACUIIcon __swiftcall LACUIIcon.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id specialized static LACUIIcon.icon(forPath:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for URL();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UTType();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v49 - v26;
  if (a2)
  {
    v28 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v28 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {

      UTType.init(_:)();
      outlined init with copy of UTType?(v27, v25);
      if ((*(v17 + 48))(v25, 1, v16) != 1)
      {
        (*(v17 + 32))(v20, v25, v16);
        v43 = UTType.identifier.getter();
        v45 = v44;
        v46 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
        v47 = MEMORY[0x259C58D00](v43, v45);

        v48 = [v46 initWithType_];

        (*(v17 + 8))(v20, v16);
        outlined destroy of UTType?(v27);
        return v48;
      }

      outlined destroy of UTType?(v25);
      v29 = MEMORY[0x259C58D00](a1, a2);
      v30 = [v29 stringByExpandingTildeInPath];

      v31 = v30;
      if (!v30)
      {
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = MEMORY[0x259C58D00](v32);
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = [objc_opt_self() defaultManager];
      v34 = [v33 fileExistsAtPath_];

      if (v34)
      {
        v36 = v49;
        v35 = v50;
        (*(v49 + 56))(v11, 1, 1, v50);
        (*(v51 + 104))(v7, *MEMORY[0x277CC91D8], v52);
        URL.init(filePath:directoryHint:relativeTo:)();
        v37 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
        URL._bridgeToObjectiveC()(v38);
        v40 = v39;
        v41 = [v37 initWithURL_];

        (*(v36 + 8))(v15, v35);
        outlined destroy of UTType?(v27);
        return v41;
      }

      outlined destroy of UTType?(v27);
    }
  }

  return 0;
}

unint64_t type metadata accessor for LACUIIcon()
{
  result = lazy cache variable for type metadata for LACUIIcon;
  if (!lazy cache variable for type metadata for LACUIIcon)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACUIIcon);
  }

  return result;
}

uint64_t outlined init with copy of UTType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UTType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int_optional __swiftcall LACUISceneControlling.sceneRequestID(from:)(Swift::OpaquePointer_optional from)
{
  rawValue = from.value._rawValue;
  v116 = type metadata accessor for URLQueryItem();
  v2 = *(v116 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v116);
  v6 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v105 = &v104 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v104 - v10;
  v12 = type metadata accessor for URLComponents();
  v107 = *(v12 - 8);
  v13 = *(v107 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v113 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v104 - v16;
  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (rawValue)
  {
    v22 = rawValue[2];
    v115 = v12;
    if (v22)
    {
      v24 = *(v19 + 16);
      v23 = v19 + 16;
      v25 = rawValue + ((*(v23 + 64) + 32) & ~*(v23 + 64));
      v110 = *(v23 + 56);
      v111 = v24;
      v112 = v23;
      v26 = (v107 + 48);
      v108 = (v107 + 32);
      v109 = (v23 - 8);
      v27 = MEMORY[0x277D84F90];
      v106 = v17;
      v24(v21, v25, v17);
      while (1)
      {
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        (*v109)(v21, v17);
        if ((*v26)(v11, 1, v12) == 1)
        {
          outlined destroy of URLComponents?(v11);
        }

        else
        {
          v28 = *v108;
          (*v108)(v113, v11, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
          }

          v30 = *(v27 + 2);
          v29 = *(v27 + 3);
          v31 = v27;
          if (v30 >= v29 >> 1)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v27);
          }

          *(v31 + 16) = v30 + 1;
          v27 = v31;
          v32 = v31 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v30;
          v12 = v115;
          v28(v32, v113, v115);
          v17 = v106;
        }

        v25 = v110 + v25;
        if (!--v22)
        {
          break;
        }

        v111(v21, v25, v17);
      }
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v35 = *(v27 + 2);
    if (v35)
    {
      v36 = *(v107 + 16);
      v37 = *(v107 + 80);
      v111 = v27;
      v38 = v27 + ((v37 + 32) & ~v37);
      v112 = *(v107 + 72);
      v113 = v36;
      v39 = (v107 + 8);
      v40 = MEMORY[0x277D84F90];
      do
      {
        v42 = v114;
        v43 = v115;
        (v113)(v114, v38, v115);
        v44 = URLComponents.queryItems.getter();
        (*v39)(v42, v43);
        if (v44)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
          }

          v45 = v40;
          v46 = v40[2];
          v47 = v45;
          v48 = v45[3];
          if (v46 >= v48 >> 1)
          {
            v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v46 + 1, 1, v47);
          }

          v47[2] = v46 + 1;
          v41 = &v47[v46];
          v40 = v47;
          v41[4] = v44;
        }

        v38 = v112 + v38;
        --v35;
      }

      while (v35);
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    v114 = v40[2];
    if (!v114)
    {
      v53 = MEMORY[0x277D84F90];
      goto LABEL_49;
    }

    v51 = 0;
    v112 = v40 + 4;
    v52 = (v2 + 8);
    v110 = (v2 + 32);
    v53 = MEMORY[0x277D84F90];
    v111 = v40;
    while (2)
    {
      v113 = v53;
      while (1)
      {
        if (v51 >= v40[2])
        {
          goto LABEL_132;
        }

        v54 = v112[v51];
        v115 = v51 + 1;
        v55 = *(v54 + 16);

        if (v55)
        {
          break;
        }

LABEL_29:

LABEL_30:
        v51 = v115;
        v53 = v113;
        v40 = v111;
        if (v115 == v114)
        {
          goto LABEL_49;
        }
      }

      v56 = 0;
      while (1)
      {
        if (v56 >= *(v54 + 16))
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        (*(v2 + 16))(v6, v54 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v56, v116);
        if (URLQueryItem.name.getter() == 0x4974736575716572 && v57 == 0xE900000000000044)
        {
          break;
        }

        v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v58)
        {
          goto LABEL_41;
        }

        ++v56;
        isUniquelyReferenced_nonNull_native = (*v52)(v6, v116);
        if (v55 == v56)
        {
          goto LABEL_29;
        }
      }

LABEL_41:
      v59 = v105;
      v60 = v116;
      (*v110)(v105, v6, v116);
      v61 = URLQueryItem.value.getter();
      v63 = v62;

      isUniquelyReferenced_nonNull_native = (*v52)(v59, v60);
      if (!v63)
      {
        goto LABEL_30;
      }

      v64 = v113;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v111;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v64 + 2) + 1, 1, v64);
        v64 = isUniquelyReferenced_nonNull_native;
      }

      v65 = v64;
      v66 = *(v64 + 2);
      v67 = v65;
      v68 = *(v65 + 3);
      if (v66 >= v68 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v66 + 1, 1, v67);
        v67 = isUniquelyReferenced_nonNull_native;
      }

      *(v67 + 16) = v66 + 1;
      v69 = v67 + 16 * v66;
      v53 = v67;
      *(v69 + 32) = v61;
      *(v69 + 40) = v63;
      v51 = v115;
      if (v115 != v114)
      {
        continue;
      }

      break;
    }

LABEL_49:

    v70 = *(v53 + 2);
    if (v70)
    {
      v71 = 0;
      v72 = v53 + 32;
      v73 = MEMORY[0x277D84F90];
      while (1)
      {
        while (1)
        {
          if (v71 >= *(v53 + 2))
          {
            goto LABEL_131;
          }

          v74 = &v72[16 * v71];
          v75 = *v74;
          v76 = v74[1];
          ++v71;
          v77 = HIBYTE(v76) & 0xF;
          v50 = v75 & 0xFFFFFFFFFFFFLL;
          if ((v76 & 0x2000000000000000) != 0 ? HIBYTE(v76) & 0xF : v75 & 0xFFFFFFFFFFFFLL)
          {
            break;
          }

LABEL_114:
          if (v71 == v70)
          {
            goto LABEL_125;
          }
        }

        if ((v76 & 0x1000000000000000) != 0)
        {

          v80 = specialized _parseInteger<A, B>(ascii:radix:)(v75, v76, 10);
          v99 = v98;

          if (v99)
          {
            goto LABEL_114;
          }

          goto LABEL_117;
        }

        if ((v76 & 0x2000000000000000) != 0)
        {
          v117[0] = v75;
          v117[1] = v76 & 0xFFFFFFFFFFFFFFLL;
          if (v75 == 43)
          {
            if (!v77)
            {
              goto LABEL_133;
            }

            if (--v77)
            {
              v80 = 0;
              v90 = v117 + 1;
              while (1)
              {
                v91 = *v90 - 48;
                if (v91 > 9)
                {
                  break;
                }

                v92 = 10 * v80;
                if ((v80 * 10) >> 64 != (10 * v80) >> 63)
                {
                  break;
                }

                v80 = v92 + v91;
                if (__OFADD__(v92, v91))
                {
                  break;
                }

                ++v90;
                if (!--v77)
                {
                  goto LABEL_113;
                }
              }
            }
          }

          else if (v75 == 45)
          {
            if (!v77)
            {
              goto LABEL_135;
            }

            if (--v77)
            {
              v80 = 0;
              v84 = v117 + 1;
              while (1)
              {
                v85 = *v84 - 48;
                if (v85 > 9)
                {
                  break;
                }

                v86 = 10 * v80;
                if ((v80 * 10) >> 64 != (10 * v80) >> 63)
                {
                  break;
                }

                v80 = v86 - v85;
                if (__OFSUB__(v86, v85))
                {
                  break;
                }

                ++v84;
                if (!--v77)
                {
                  goto LABEL_113;
                }
              }
            }
          }

          else if (v77)
          {
            v80 = 0;
            v95 = v117;
            while (1)
            {
              v96 = *v95 - 48;
              if (v96 > 9)
              {
                break;
              }

              v97 = 10 * v80;
              if ((v80 * 10) >> 64 != (10 * v80) >> 63)
              {
                break;
              }

              v80 = v97 + v96;
              if (__OFADD__(v97, v96))
              {
                break;
              }

              ++v95;
              if (!--v77)
              {
                goto LABEL_113;
              }
            }
          }
        }

        else
        {
          if ((v75 & 0x1000000000000000) != 0)
          {
            isUniquelyReferenced_nonNull_native = (v76 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            isUniquelyReferenced_nonNull_native = _StringObject.sharedUTF8.getter();
          }

          v79 = *isUniquelyReferenced_nonNull_native;
          if (v79 == 43)
          {
            if (v50 < 1)
            {
              goto LABEL_136;
            }

            v77 = v50 - 1;
            if (v50 != 1)
            {
              v80 = 0;
              if (!isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_104;
              }

              v87 = (isUniquelyReferenced_nonNull_native + 1);
              while (1)
              {
                v88 = *v87 - 48;
                if (v88 > 9)
                {
                  break;
                }

                v89 = 10 * v80;
                if ((v80 * 10) >> 64 != (10 * v80) >> 63)
                {
                  break;
                }

                v80 = v89 + v88;
                if (__OFADD__(v89, v88))
                {
                  break;
                }

                ++v87;
                if (!--v77)
                {
                  goto LABEL_113;
                }
              }
            }
          }

          else if (v79 == 45)
          {
            if (v50 < 1)
            {
              goto LABEL_134;
            }

            v77 = v50 - 1;
            if (v50 != 1)
            {
              v80 = 0;
              if (!isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_104;
              }

              v81 = (isUniquelyReferenced_nonNull_native + 1);
              while (1)
              {
                v82 = *v81 - 48;
                if (v82 > 9)
                {
                  break;
                }

                v83 = 10 * v80;
                if ((v80 * 10) >> 64 != (10 * v80) >> 63)
                {
                  break;
                }

                v80 = v83 - v82;
                if (__OFSUB__(v83, v82))
                {
                  break;
                }

                ++v81;
                if (!--v77)
                {
                  goto LABEL_113;
                }
              }
            }
          }

          else if (v50)
          {
            v80 = 0;
            if (!isUniquelyReferenced_nonNull_native)
            {
LABEL_104:
              LOBYTE(v77) = 0;
              goto LABEL_113;
            }

            while (1)
            {
              v93 = *isUniquelyReferenced_nonNull_native - 48;
              if (v93 > 9)
              {
                break;
              }

              v94 = 10 * v80;
              if ((v80 * 10) >> 64 != (10 * v80) >> 63)
              {
                break;
              }

              v80 = v94 + v93;
              if (__OFADD__(v94, v93))
              {
                break;
              }

              ++isUniquelyReferenced_nonNull_native;
              if (!--v50)
              {
                goto LABEL_104;
              }
            }
          }
        }

        v80 = 0;
        LOBYTE(v77) = 1;
LABEL_113:
        v118 = v77;
        if (v77)
        {
          goto LABEL_114;
        }

LABEL_117:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 16) + 1, 1, v73);
          v73 = isUniquelyReferenced_nonNull_native;
        }

        v102 = *(v73 + 16);
        v101 = *(v73 + 24);
        if (v102 >= v101 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1, v73);
          v73 = isUniquelyReferenced_nonNull_native;
        }

        *(v73 + 16) = v102 + 1;
        *(v73 + 8 * v102 + 32) = v80;
        v53 = v100;
        if (v71 == v70)
        {
          goto LABEL_125;
        }
      }
    }

    v73 = MEMORY[0x277D84F90];
LABEL_125:

    v103 = *(v73 + 16);
    v34 = v103 == 0;
    if (v103)
    {
      v33 = *(v73 + 32);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
    v34 = 1;
  }

  isUniquelyReferenced_nonNull_native = v33;
  LOBYTE(v50) = v34;
LABEL_137:
  result.is_nil = v50;
  result.value = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t outlined destroy of URLComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for LACUISceneUserInfoKey(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LACUISceneUserInfoKey(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C58DA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id LACUIDTOSensorNotTrustedScenePresentationHandler.init()()
{
  v1 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BEBD0, 0x74656863746152, 0xE700000000000000);
  v3 = v2;
  v4 = [objc_opt_self() deviceHasFaceID];
  v5 = "DTO_UNAPPROVED_SENSOR_TITLE";
  if (v4)
  {
    v5 = "ENSOR_TEXT_TOUCH_ID";
    v6 = 0xD000000000000022;
  }

  else
  {
    v6 = 0xD000000000000023;
  }

  v7 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(v6, (v5 | 0x8000000000000000), 0x74656863746152, 0xE700000000000000);
  v9 = v8;
  v10 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x4F5F4E4F54545542, 0xE90000000000004BLL, 0x75676F6C61746143, 0xE900000000000065);
  v11 = &v0[OBJC_IVAR____TtC25LocalAuthenticationCoreUI34LACUIAlertScenePresentationHandler_configuration];
  *v11 = 1;
  *(v11 + 1) = v1;
  *(v11 + 2) = v3;
  *(v11 + 3) = v7;
  *(v11 + 4) = v9;
  *(v11 + 5) = v10;
  *(v11 + 6) = v12;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for LACUIAlertScenePresentationHandler();
  return objc_msgSendSuper2(&v14, sel_init);
}

id LACUIDTOSensorNotTrustedScenePresentationHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIDTOSensorNotTrustedScenePresentationHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACUIAuthContainerViewModel.__allocating_init(dataSource:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMd, &_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for LACUIAuthState();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = *(v3 + 48);
  v21 = *(v3 + 52);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel__state;
  v24 = type metadata accessor for LACUIAuthCountdownConfiguration();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  outlined init with copy of LACUIAuthState(v19, v17);
  Published.init(initialValue:)();
  outlined destroy of LACUIAuthState(v19);
  (*(v9 + 32))(v22 + v23, v12, v8);
  v25 = v22 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource;
  *(v22 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v25 + 8) = v29;
  swift_unknownObjectWeakAssign();
  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v22;
  *(v27 + 40) = xmmword_2560B9EC0;
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:), v27);

  swift_unknownObjectRelease();
  return v22;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
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

      outlined destroy of TaskPriority?(a3);

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

  outlined destroy of TaskPriority?(a3);
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

uint64_t key path setter for LACUIAuthContainerViewModel.state : LACUIAuthContainerViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for LACUIAuthState();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  outlined init with copy of LACUIAuthState(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of LACUIAuthState(v10, v8);

  static Published.subscript.setter();
  return outlined destroy of LACUIAuthState(v10);
}

uint64_t LACUIAuthContainerViewModel.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for LACUIAuthContainerViewModel.$state : LACUIAuthContainerViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy25LocalAuthenticationCoreUI14LACUIAuthStateO_GMd, &_s7Combine9PublishedV9PublisherVy25LocalAuthenticationCoreUI14LACUIAuthStateO_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMd, &_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t LACUIAuthContainerViewModel.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMd, &_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t LACUIAuthContainerViewModel.dataSource.getter()
{
  v1 = v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t LACUIAuthContainerViewModel.dataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LACUIAuthContainerViewModel.dataSource.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return LACUIAuthContainerViewModel.dataSource.modify;
}

void LACUIAuthContainerViewModel.dataSource.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t LACUIAuthContainerViewModel.init(dataSource:)(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMd, &_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for LACUIAuthState();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v19 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel__state;
  v20 = type metadata accessor for LACUIAuthCountdownConfiguration();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  outlined init with copy of LACUIAuthState(v18, v16);
  Published.init(initialValue:)();
  outlined destroy of LACUIAuthState(v18);
  (*(v8 + 32))(v2 + v19, v11, v7);
  v21 = v2 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource;
  *(v2 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v21 + 8) = v25;
  swift_unknownObjectWeakAssign();
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v2;
  *(v23 + 40) = xmmword_2560B9EC0;
  *(v23 + 56) = 0u;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0u;
  *(v23 + 104) = 0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)partial apply, v23);

  swift_unknownObjectRelease();
  return v2;
}

uint64_t outlined init with copy of LACUIAuthState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LACUIAuthState(uint64_t a1)
{
  v2 = type metadata accessor for LACUIAuthState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall LACUIAuthContainerViewModel.refresh()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v0;
  *(v6 + 40) = xmmword_2560B9EC0;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)partial apply, v6);
}

uint64_t LACUIAuthContainerViewModel.send(action:)(uint64_t a1)
{
  *(v2 + 160) = v1;
  v4 = *(*(type metadata accessor for LACUIAuthState() - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  *(v2 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  type metadata accessor for MainActor();
  *(v2 + 200) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 208) = v8;
  *(v2 + 216) = v7;

  return MEMORY[0x2822009F8](LACUIAuthContainerViewModel.send(action:), v8, v7);
}

uint64_t LACUIAuthContainerViewModel.send(action:)()
{
  v1 = (*(**(v0 + 160) + 144))();
  *(v0 + 224) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 176);
    v5 = *(v0 + 160);
    ObjectType = swift_getObjectType();
    (*(*v5 + 96))();
    v7 = *(v0 + 32);
    *(v0 + 88) = *(v0 + 16);
    v8 = *(v0 + 48);
    *(v0 + 136) = *(v0 + 64);
    *(v0 + 120) = v8;
    *(v0 + 152) = *(v0 + 80);
    *(v0 + 104) = v7;
    v9 = *(v3 + 8);
    v28 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 232) = v11;
    *v11 = v0;
    v11[1] = LACUIAuthContainerViewModel.send(action:);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);

    return v28(v12, v13, v0 + 88, ObjectType, v3);
  }

  else
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);

    v17 = type metadata accessor for LACUIAuthCountdownConfiguration();
    v18 = (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v19 = *(v0 + 192);
    v20 = *(v0 + 176);
    (*(**(v0 + 160) + 96))(v18);
    LOBYTE(v16) = specialized static LACUIAuthState.== infix(_:_:)(v19, v20);
    outlined destroy of LACUIAuthState(v20);
    if ((v16 & 1) == 0)
    {
      v21 = *(v0 + 168);
      v22 = *(v0 + 176);
      v23 = *(v0 + 160);
      outlined init with copy of LACUIAuthState(*(v0 + 192), v22);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of LACUIAuthState(v22, v21);

      static Published.subscript.setter();
      outlined destroy of LACUIAuthState(v22);
    }

    v24 = *(v0 + 184);
    v26 = *(v0 + 168);
    v25 = *(v0 + 176);
    outlined destroy of LACUIAuthState(*(v0 + 192));

    v27 = *(v0 + 8);

    return v27();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 176);
  v8 = *v0;

  swift_unknownObjectRelease();
  outlined destroy of LACUIAuthState(v4);
  v5 = *(v1 + 216);
  v6 = *(v1 + 208);

  return MEMORY[0x2822009F8](LACUIAuthContainerViewModel.send(action:), v6, v5);
}

{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  v4 = outlined init with take of LACUIAuthState(v3, v2);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  (*(**(v0 + 160) + 96))(v4);
  LOBYTE(v2) = specialized static LACUIAuthState.== infix(_:_:)(v5, v6);
  outlined destroy of LACUIAuthState(v6);
  if ((v2 & 1) == 0)
  {
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v9 = *(v0 + 160);
    outlined init with copy of LACUIAuthState(*(v0 + 192), v8);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of LACUIAuthState(v8, v7);

    static Published.subscript.setter();
    outlined destroy of LACUIAuthState(v8);
  }

  v10 = *(v0 + 184);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  outlined destroy of LACUIAuthState(*(v0 + 192));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t LACUIAuthContainerViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMd, &_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of weak LACUIAuthCountdownViewModelHandler?(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource);
  return v0;
}

uint64_t LACUIAuthContainerViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMd, &_s7Combine9PublishedVy25LocalAuthenticationCoreUI14LACUIAuthStateOGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of weak LACUIAuthCountdownViewModelHandler?(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAuthContainerViewModel_dataSource);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LACUIAuthContainerViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LACUIAuthContainerViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t LACUIAuthContainerViewModel.handle(action:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-v5 - 8];
  v7 = *(a1 + 48);
  v22 = *(a1 + 32);
  v23 = v7;
  v24 = *(a1 + 64);
  v8 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v8;
  v18 = v22;
  v19 = v7;
  v20 = v24;
  v16 = v21[0];
  v17 = v8;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v1;
  v11 = v16;
  *(v10 + 56) = v17;
  v12 = v19;
  *(v10 + 72) = v18;
  *(v10 + 88) = v12;
  *(v10 + 104) = v20;
  *(v10 + 40) = v11;
  outlined init with copy of LACUIAuthActionCountdown(v21, v15);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)partial apply, v10);
}

uint64_t protocol witness for LACUIAuthCountdownViewModelHandler.handle(action:) in conformance LACUIAuthContainerViewModel(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-v5 - 8];
  v7 = *(a1 + 48);
  v22 = *(a1 + 32);
  v23 = v7;
  v24 = *(a1 + 64);
  v8 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v8;
  v18 = v22;
  v19 = v7;
  v20 = v24;
  v16 = v21[0];
  v17 = v8;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v1;
  v11 = v16;
  *(v10 + 56) = v17;
  v12 = v19;
  *(v10 + 72) = v18;
  *(v10 + 88) = v12;
  *(v10 + 104) = v20;
  *(v10 + 40) = v11;
  outlined init with copy of LACUIAuthActionCountdown(v21, v15);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)partial apply, v10);
}

uint64_t closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = *(a5 + 64);
  v6 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v6;
  v7 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v7;
  v8 = *(*a4 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 88) = v10;
  *v10 = v5;
  v10[1] = closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:);

  return v12(v5 + 16);
}

uint64_t closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s25LocalAuthenticationCoreUI27LACUIAuthContainerViewModelC15sendToMainActor33_B25DC98AA5C9D048A72856B75FF5B62ELL6actionyAA0E6ActionO_tFyyYacfU_TA_0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:)(a1, v4, v5, v6, (v1 + 5));
}

uint64_t outlined init with take of LACUIAuthState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LACUIAuthState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25609EEF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25609EF44(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t type metadata accessor for LACUIAuthContainerViewModel()
{
  result = type metadata singleton initialization cache for LACUIAuthContainerViewModel;
  if (!type metadata singleton initialization cache for LACUIAuthContainerViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LACUIAuthContainerViewModel()
{
  type metadata accessor for Published<LACUIAuthState>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of LACUIAuthContainerViewModel.send(action:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return v8(a1);
}

void type metadata accessor for Published<LACUIAuthState>()
{
  if (!lazy cache variable for type metadata for Published<LACUIAuthState>)
  {
    type metadata accessor for LACUIAuthState();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<LACUIAuthState>);
    }
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  if (*(v0 + 48) >= 2uLL)
  {

    v3 = *(v0 + 64);

    v4 = *(v0 + 80);

    if (*(v0 + 104) != 255)
    {
      v5 = *(v0 + 88);
      v6 = *(v0 + 96);
      outlined consume of LACUIAuthImageConfiguration();
    }
  }

  return MEMORY[0x2821FE8E8](v0, 106, 7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25609F460()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in LACUIRatchetViewModel.start();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_42(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in LACUIAuthContainerViewModel.sendToMainActor(action:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

id LACUIAngelConnectionListenerProvider.__allocating_init(domainName:protocolServiceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_domainName];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_protocolServiceName];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id LACUIAngelConnectionListenerProvider.init(domainName:protocolServiceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_domainName];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_protocolServiceName];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for LACUIAngelConnectionListenerProvider();
  return objc_msgSendSuper2(&v8, sel_init);
}

id LACUIAngelConnectionListenerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACUIAngelConnectionListenerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIAngelConnectionListenerProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id LACUIAngelConnectionListenerProvider.makeConnectionListener()()
{
  v1 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_domainName);
  v2 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_domainName + 8);
  v3 = v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_protocolServiceName;
  v4 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_protocolServiceName);
  v5 = *(v3 + 8);
  v6 = objc_allocWithZone(MEMORY[0x277D24130]);
  v7 = MEMORY[0x259C58D00](v1, v2);
  v8 = MEMORY[0x259C58D00](v4, v5);
  v9 = [v6 initWithDomainName:v7 protocolServiceName:v8];

  return v9;
}

uint64_t LACUIAngelManager.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t LACUIAngelManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LACUIAngelManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return LACUIAngelManager.delegate.modify;
}

void LACUIAngelManager.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

void *LACUIAngelManager.currentRequest.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);
  v3 = v2;
  return v2;
}

uint64_t LACUIAngelManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t LACUIAngelManager.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t LACUIAngelManager.connectionInvalidated(_:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = v1[4];
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = *MEMORY[0x277D23E88];

    v6 = (v4 + 16 * v5 + 24);
    v14 = v4;
    while (v5 <= *(v4 + 16))
    {
      if (*v6 == a1)
      {
        v7 = *(v6 - 1);
        v8 = objc_opt_self();
        v9 = v7;
        swift_unknownObjectRetain();
        v10 = MEMORY[0x259C58D00](0xD000000000000016, 0x80000002560BEE10);
        v11 = [v8 errorWithCode:v15 debugDescription:v10];

        v12 = *(*v1 + 176);
        v13 = v11;
        v12(v9, v11);
        v4 = v14;

        swift_unknownObjectRelease();
      }

      v6 -= 2;
      if (!--v5)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t LACUIAngelManager.enqueue(request:for:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = v3[4];
  v12 = a1;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[4] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    v3[4] = v11;
  }

  v15 = v11[2];
  v14 = v11[3];
  if (v15 >= v14 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v11);
  }

  v11[2] = v15 + 1;
  v16 = &v11[2 * v15];
  v16[4] = v12;
  v16[5] = a2;
  v3[4] = v11;
  swift_endAccess();
  static LACLog.ui.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = *(v3[4] + 16);

    _os_log_impl(&dword_256063000, v17, v18, "Angel queued requests count:%ld", v19, 0xCu);
    MEMORY[0x259C59AD0](v19, -1, -1);
  }

  else
  {
  }

  v20 = (*(v7 + 8))(v10, v6);
  result = (*(*v3 + 96))(v20);
  if (result)
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    (*(v23 + 8))(v3, &protocol witness table for LACUIAngelManager, v12, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t LACUIAngelManager.dequeue(request:error:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v12 = v2[4];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    for (i = (v12 + 40); *(i - 1) != a1; i += 2)
    {
      if (v13 == ++v14)
      {
        return result;
      }
    }

    v16 = *i;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = specialized Array.remove(at:)(v14);
    swift_endAccess();
    swift_unknownObjectRelease();

    static LACLog.ui.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = *(v3[4] + 16);

      _os_log_impl(&dword_256063000, v18, v19, "Angel queued requests count:%ld", v20, 0xCu);
      MEMORY[0x259C59AD0](v20, -1, -1);
    }

    else
    {
    }

    v21 = (*(v7 + 8))(v10, v6);
    if ((*(*v3 + 96))(v21))
    {
      v23 = v22;
      ObjectType = swift_getObjectType();
      (*(v23 + 16))(v3, &protocol witness table for LACUIAngelManager, a1, ObjectType, v23);
      swift_unknownObjectRelease();
    }

    if ([v16 remoteObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29[0] = v27;
    v29[1] = v28;
    if (*(&v28 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25LACRemoteUIClientProtocol_pMd, &_sSo25LACRemoteUIClientProtocol_pMR);
      if (swift_dynamicCast())
      {
        v25 = v26[1];
        if (a2)
        {
          a2 = _convertErrorToNSError(_:)();
        }

        [v25 uiDismissedForRequest:a1 error:a2];

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      return outlined destroy of Any?(v29);
    }
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    v9 = v7[5];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t LACUIAngelManager.deinit()
{
  outlined destroy of weak LACUIAuthCountdownViewModelHandler?(v0 + 16);
  v1 = *(v0 + 32);

  return v0;
}

uint64_t LACUIAngelManager.__deallocating_deinit()
{
  outlined destroy of weak LACUIAuthCountdownViewModelHandler?(v0 + 16);
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void (*protocol witness for LACUIAngelManaging.delegate.modify in conformance LACUIAngelManager(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return protocol witness for LACUIAngelManaging.delegate.modify in conformance LACUIAngelManager;
}

void protocol witness for LACUIAngelManaging.delegate.modify in conformance LACUIAngelManager(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
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

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2560A0738@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2560A0784(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

char *LACUIAngelConnectionListener.init(listenerProvider:manager:)(void *a1, void *a2, uint64_t a3)
{
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v23);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v22[0] = a1;
  v22[1] = a2;
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener_listenerProvider] = a1;
  v15 = &v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener_manager];
  *v15 = a2;
  *(v15 + 1) = a3;
  type metadata accessor for OS_dispatch_queue_serial();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  static DispatchQoS.userInitiated.getter();
  v25 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v23);
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener_replyQueue] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = [v22[0] makeConnectionListener];
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener_listener] = v16;
  v17 = type metadata accessor for LACUIAngelConnectionListener();
  v24.receiver = v3;
  v24.super_class = v17;
  v18 = objc_msgSendSuper2(&v24, sel_init);
  v19 = *&v18[OBJC_IVAR____TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener_listener];
  v20 = v18;
  [v19 setDelegate_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v20;
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes)
  {
    type metadata accessor for OS_dispatch_queue_serial.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A]);
  }

  return result;
}

id LACUIAngelConnectionListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACUIAngelConnectionListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIAngelConnectionListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACUIAngelConnectionListener.connectionDidInvalidate(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = a1;
    v25 = v13;
    *v12 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16LACXPCConnection_pMd, &_sSo16LACXPCConnection_pMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_256063000, v9, v10, "%s did invalidate", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C59AD0](v13, -1, -1);
    v17 = v12;
    v2 = v23;
    MEMORY[0x259C59AD0](v17, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v18 = *(v2 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener_manager);
  v19 = *(v2 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener_manager + 8);
  ObjectType = swift_getObjectType();
  return (*(v19 + 40))(a1, ObjectType, v19);
}

void specialized LACUIAngelConnectionListener.listener(_:didReceive:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  static LACLog.ui.getter();
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *&v37 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v36 = v5;
    v17 = v16;
    v38 = a1;
    v39 = v16;
    *v15 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16LACXPCConnection_pMd, &_sSo16LACXPCConnection_pMR);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v39);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_256063000, v12, v13, "Incoming connection %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v21 = v17;
    v5 = v36;
    MEMORY[0x259C59AD0](v21, -1, -1);
    v22 = v15;
    v2 = v37;
    MEMORY[0x259C59AD0](v22, -1, -1);
  }

  v23 = *(v5 + 8);
  v23(v11, v4);
  if ([a1 hasEntitlement_])
  {
    v24 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener_manager;
    v25 = type metadata accessor for LACUIAngelConnectionHandler();
    v37 = *(v2 + v24);
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_connection] = a1;
    *&v26[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_manager] = v37;
    v40.receiver = v26;
    v40.super_class = v25;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v27 = objc_msgSendSuper2(&v40, sel_init);
    v28 = objc_opt_self();
    v29 = [v28 interfaceForXPCProtocol_];
    v30 = [v28 interfaceForXPCProtocol_];
    v31 = [objc_allocWithZone(MEMORY[0x277D24128]) initWithRemoteObjectInterface:v29 exportedInterface:v30 exportedObject:v27 replyQueue:*(v2 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI28LACUIAngelConnectionListener_replyQueue)];

    [a1 configureWithConfiguration_];
    [a1 setDelegate_];
    [a1 activate];
  }

  else
  {
    static LACLog.ui.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_256063000, v32, v33, "Missing entitlement", v34, 2u);
      MEMORY[0x259C59AD0](v34, -1, -1);
    }

    v23(v9, v4);
    [a1 invalidate];
  }
}

uint64_t LACUIAngelPresenter.currentRequest.didset()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    v11 = *&v6[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest + 8];
    v17 = *&v6[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
    v18 = v11;
    outlined copy of LACUIAngelPresenter.PresentedRequest?(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI19LACUIAngelPresenterC16PresentedRequest33_9F3F8244F22CF33ABB39A642650B213BLLVSgMd, _s25LocalAuthenticationCoreUI19LACUIAngelPresenterC16PresentedRequest33_9F3F8244F22CF33ABB39A642650B213BLLVSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_256063000, v7, v8, "Angel current request: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x259C59AD0](v10, -1, -1);
    MEMORY[0x259C59AD0](v9, -1, -1);
  }

  return (*(v2 + 8))(v5, v1);
}

char *LACUIAngelPresenter.init(manager:sceneController:sceneProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_hostedScenes] = MEMORY[0x277D84F90];
  v7 = &v5[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_manager];
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = &v5[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_sceneController];
  *v8 = a3;
  *(v8 + 1) = a4;
  *&v5[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_sceneProvider] = a5;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for LACUIAngelPresenter();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v20, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_manager];
  v11 = *&v9[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_manager + 8];
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 24);
  v14 = v9;
  swift_unknownObjectRetain();
  v13(v9, &protocol witness table for LACUIAngelPresenter, ObjectType, v11);
  swift_unknownObjectRelease();
  v15 = *&v14[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_sceneController];
  v16 = *&v14[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_sceneController + 8];
  v17 = swift_getObjectType();
  v18 = *(v16 + 16);
  swift_unknownObjectRetain();
  v18(v9, &protocol witness table for LACUIAngelPresenter, v17, v16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

void *LACUIAngelPresenter.request(forScene:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  v11 = *&v2[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(v10 + 1);
  swift_unknownObjectRetain();
  outlined copy of LACUIAngelPresenter.PresentedRequest?(v11);
  outlined consume of LACUIAngelPresenter.PresentedRequest?(v11);
  v13 = [v12 persistentIdentifier];
  swift_unknownObjectRelease();
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == a1 && v16 == a2)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
LABEL_8:
      v39 = a1;
      static LACLog.ui.getter();
      v19 = v2;

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v40 = v38;
        *v22 = 136315394;
        v23 = v19;
        v24 = v6;
        v25 = [v23 description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v5;
        v27 = v26;
        v29 = v28;

        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v40);

        *(v22 + 4) = v30;
        *(v22 + 12) = 2082;
        *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, a2, &v40);
        _os_log_impl(&dword_256063000, v20, v21, "%s doesn't serve request with connected scene: %{public}s", v22, 0x16u);
        v31 = v38;
        swift_arrayDestroy();
        MEMORY[0x259C59AD0](v31, -1, -1);
        MEMORY[0x259C59AD0](v22, -1, -1);

        (*(v24 + 8))(v9, v37);
      }

      else
      {

        (*(v6 + 8))(v9, v5);
      }

      return 0;
    }
  }

  v32 = *v10;
  if (*v10)
  {
    v33 = *(v10 + 1);
    v34 = *v10;
    outlined copy of LACUIAngelPresenter.PresentedRequest?(v32);
    v35 = v34;
    outlined consume of LACUIAngelPresenter.PresentedRequest?(v34);
    return v34;
  }

  return 0;
}

void *outlined copy of LACUIAngelPresenter.PresentedRequest?(void *result)
{
  if (result)
  {
    v1 = result;

    return swift_unknownObjectRetain();
  }

  return result;
}

void *outlined consume of LACUIAngelPresenter.PresentedRequest?(void *result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

id LACUIAngelPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACUIAngelPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIAngelPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void LACUIAngelPresenter.presentNext()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest;
  if (!*(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest))
  {
    v9 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_manager);
    v8 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_manager + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v8 + 8))(ObjectType, v8);
    if (v11)
    {
      v12 = v11;
      v13 = *(v0 + OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_sceneProvider);
      v48 = v12;
      v14 = [v13 makeSceneForRequest_];
      if (v14)
      {
        v15 = v14;
        static LACLog.ui.getter();
        swift_unknownObjectRetain();
        v16 = v48;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        swift_unknownObjectRelease();
        v47 = v17;
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v44 = v18;
          v20 = v19;
          v43 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v49 = v45;
          *v20 = 136446466;
          v21 = [v15 identifier];
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v16;
          v24 = v23;

          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v49);
          v16 = v46;

          *(v20 + 4) = v25;
          *(v20 + 12) = 2114;
          *(v20 + 14) = v16;
          v26 = v43;
          *v43 = v48;
          v27 = v16;
          v28 = v47;
          _os_log_impl(&dword_256063000, v47, v44, "Did create scene %{public}s for request: %{public}@", v20, 0x16u);
          outlined destroy of LACUIAuthCountdownDelayConfiguration?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x259C59AD0](v26, -1, -1);
          v29 = v45;
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x259C59AD0](v29, -1, -1);
          MEMORY[0x259C59AD0](v20, -1, -1);
        }

        else
        {
        }

        (*(v3 + 8))(v6, v2);
        v40 = *v7;
        v41 = *(v7 + 8);
        *v7 = v48;
        *(v7 + 8) = v15;
        swift_unknownObjectRetain_n();
        v42 = v16;
        outlined consume of LACUIAngelPresenter.PresentedRequest?(v40);
        LACUIAngelPresenter.currentRequest.didset();
        swift_unknownObjectRelease();

        [v15 setDelegate_];
        [v15 activate];

        swift_unknownObjectRelease();
      }

      else
      {
        v30 = objc_opt_self();
        v31 = *MEMORY[0x277D23E88];
        v49 = 0;
        v50 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v49 = 0xD000000000000016;
        v50 = 0x80000002560BF030;
        v32 = [v48 description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = ObjectType;
        v36 = v35;

        MEMORY[0x259C58D70](v33, v36);

        v37 = MEMORY[0x259C58D00](v49, v50);

        v38 = [v30 errorWithCode:v31 debugDescription:v37];

        (*(v8 + 56))(v48, v38, v34, v8);
        LACUIAngelPresenter.presentNext()();
        v39 = v48;
      }
    }
  }
}

void LACUIAngelPresenter.angelSceneDidDeactivate(_:error:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v17 = *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  if (v17)
  {
    v18 = *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest + 8];
    v19 = v17;
    swift_unknownObjectRetain();
    if (v18 == a1)
    {
      v68 = v7;
      static LACLog.ui.getter();
      swift_unknownObjectRetain();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v69 = v6;
        v70[0] = v58;
        v67 = v58;
        *v57 = 136446210;
        v71 = a1;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19LACUIAngelSceneType_pMd, &_sSo19LACUIAngelSceneType_pMR);
        v59 = String.init<A>(describing:)();
        v61 = a2;
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v70);

        *(v57 + 4) = v62;
        a2 = v61;
        _os_log_impl(&dword_256063000, v55, v56, "%{public}s scene did deactivate", v57, 0xCu);
        v63 = v67;
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x259C59AD0](v63, -1, -1);
        MEMORY[0x259C59AD0](v57, -1, -1);

        (*(v68 + 8))(v16, v69);
      }

      else
      {

        (*(v68 + 8))(v16, v6);
      }

      v65 = *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_manager];
      v64 = *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_manager + 8];
      ObjectType = swift_getObjectType();
      (*(v64 + 56))(v19, a2, ObjectType, v64);
      swift_unknownObjectRelease();
    }

    else
    {
      static LACLog.ui.getter();
      swift_unknownObjectRetain();
      v20 = v3;
      v21 = v19;
      swift_unknownObjectRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v71 = v68;
        *v24 = 136446722;
        v70[0] = a1;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19LACUIAngelSceneType_pMd, &_sSo19LACUIAngelSceneType_pMR);
        v25 = String.init<A>(describing:)();
        v69 = v6;
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v71);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2080;
        v28 = v20;
        v29 = [v28 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        LODWORD(v67) = v23;
        v31 = v7;
        v33 = v32;

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v33, &v71);

        *(v24 + 14) = v34;
        *(v24 + 22) = 2082;
        v70[0] = v21;
        v70[1] = v18;
        v35 = v21;
        swift_unknownObjectRetain();
        v36 = String.init<A>(describing:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v71);

        *(v24 + 24) = v38;
        _os_log_impl(&dword_256063000, v22, v67, "%{public}s scene did deactivate but %s currently handles %{public}s", v24, 0x20u);
        v39 = v68;
        swift_arrayDestroy();
        MEMORY[0x259C59AD0](v39, -1, -1);
        MEMORY[0x259C59AD0](v24, -1, -1);
        swift_unknownObjectRelease();

        (*(v31 + 8))(v14, v69);
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v7 + 8))(v14, v6);
      }
    }
  }

  else
  {
    static LACLog.ui.getter();
    swift_unknownObjectRetain();
    v40 = v3;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v70[0] = v44;
      *v43 = 136446466;
      v71 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19LACUIAngelSceneType_pMd, &_sSo19LACUIAngelSceneType_pMR);
      v45 = String.init<A>(describing:)();
      v69 = v6;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v70);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = v40;
      v49 = [v48 description];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v7;
      v53 = v52;

      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v53, v70);

      *(v43 + 14) = v54;
      _os_log_impl(&dword_256063000, v41, v42, "%{public}s scene did deactivate but %s has no current request", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C59AD0](v44, -1, -1);
      MEMORY[0x259C59AD0](v43, -1, -1);

      (*(v51 + 8))(v11, v69);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }
  }
}

void LACUIAngelPresenter.registerScene(customIdentifier:persistentIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v57 = a1;
  v56 = type metadata accessor for Logger();
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v56);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = &v4[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  v16 = *&v4[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  if (!v16)
  {
    goto LABEL_7;
  }

  v55 = v12;
  v17 = a3;
  v18 = v8;
  v19 = &v4[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  v20 = *(v15 + 1);
  outlined copy of LACUIAngelPresenter.PresentedRequest?(v16);
  swift_unknownObjectRetain();
  outlined consume of LACUIAngelPresenter.PresentedRequest?(v16);
  v21 = [v20 identifier];
  swift_unknownObjectRelease();
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == v57 && v24 == a2)
  {

    v15 = v19;
    v8 = v18;
    a3 = v17;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = v19;
    v8 = v18;
    a3 = v17;
    v12 = v55;
    if ((v26 & 1) == 0)
    {
LABEL_7:
      v54 = v15;
      static LACLog.ui.getter();

      v27 = v4;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v59 = v31;
        *v30 = 136446978;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v59);
        *(v30 + 12) = 2082;
        *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, a2, &v59);
        *(v30 + 22) = 2080;
        v32 = v27;
        v33 = [v32 description];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v59);

        *(v30 + 24) = v37;
        *(v30 + 32) = 2082;
        v38 = *v54;
        if (*v54)
        {
          v39 = *(v54 + 1);
          outlined copy of LACUIAngelPresenter.PresentedRequest?(*v54);
          swift_unknownObjectRetain();
          outlined consume of LACUIAngelPresenter.PresentedRequest?(v38);
          v40 = [v39 identifier];
          swift_unknownObjectRelease();
          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }

        v58[0] = v38;
        v58[1] = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v50 = String.init<A>(describing:)();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v59);

        *(v30 + 34) = v52;
        _os_log_impl(&dword_256063000, v28, v29, "Scene %{public}s-%{public}s did connect but %s has current request with %{public}s", v30, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x259C59AD0](v31, -1, -1);
        MEMORY[0x259C59AD0](v30, -1, -1);
      }

      (*(v8 + 8))(v12, v56);
      return;
    }
  }

  static LACLog.ui.getter();

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v58[0] = v46;
    *v45 = 136446466;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, a2, v58);
    *(v45 + 12) = 2082;
    *(v45 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v58);
    _os_log_impl(&dword_256063000, v43, v44, "Did associate scene %{public}s with persistent identifier %{public}s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v46, -1, -1);
    MEMORY[0x259C59AD0](v45, -1, -1);
  }

  (*(v8 + 8))(v14, v56);
  v47 = *v15;
  if (*v15)
  {
    v48 = *(v15 + 1);
    outlined copy of LACUIAngelPresenter.PresentedRequest?(*v15);
    swift_unknownObjectRetain();
    outlined consume of LACUIAngelPresenter.PresentedRequest?(v47);
    v49 = MEMORY[0x259C58D00](a3, a4);
    [v48 setPersistentIdentifier_];
    swift_unknownObjectRelease();
  }
}

uint64_t LACUIAngelPresenter.registerHostedScene(persistentIdentifier:sceneIdentifier:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v32 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v31 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v30 = v10;
    v21 = v20;
    v33[0] = v20;
    *v19 = 136446466;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, a4, v33);
    *(v19 + 12) = 2082;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v33);
    _os_log_impl(&dword_256063000, v15, v16, "Did register hosted scene %{public}s with persistent identifier %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v21, -1, -1);
    v22 = v19;
    a3 = v31;
    MEMORY[0x259C59AD0](v22, -1, -1);

    (*(v11 + 8))(v14, v30);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v23 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_hostedScenes;
  swift_beginAccess();
  v24 = *(v5 + v23);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    *(v5 + v23) = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  v28 = &v24[32 * v27];
  *(v28 + 4) = v32;
  *(v28 + 5) = a2;
  *(v28 + 6) = a3;
  *(v28 + 7) = a4;
  *(v5 + v23) = v24;
  return swift_endAccess();
}

uint64_t LACUIAngelPresenter.unregisterHostedScene(persistentIdentifier:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446210;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v20);
    _os_log_impl(&dword_256063000, v11, v12, "Did unregister hosted scene with persistent identifier %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x259C59AD0](v14, -1, -1);
    MEMORY[0x259C59AD0](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_hostedScenes;
  swift_beginAccess();

  v16 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v3 + v15), a1, a2);

  v18 = *(*(v3 + v15) + 16);
  if (v18 < v16)
  {
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v16, v18);
    return swift_endAccess();
  }

  return result;
}

uint64_t LACUIAngelPresenter.unregisterScene(persistentIdentifier:)(uint64_t a1, unint64_t a2)
{
  v61 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v12 = &v2[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  v13 = *&v2[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  if (!v13 || (v14 = *(v12 + 1), swift_unknownObjectRetain(), outlined copy of LACUIAngelPresenter.PresentedRequest?(v13), outlined consume of LACUIAngelPresenter.PresentedRequest?(v13), v15 = [v14 persistentIdentifier], swift_unknownObjectRelease(), !v15))
  {
LABEL_8:
    v60 = v5;
    static LACLog.ui.getter();
    v21 = v2;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v22, v23))
    {

      return (*(v60 + 8))(v9, v4);
    }

    v59 = v4;
    v24 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v63 = v58;
    *v24 = 136446722;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, a2, &v63);
    *(v24 + 12) = 2080;
    v25 = v21;
    v26 = [v25 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v63);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2082;
    v31 = *v12;
    if (*v12)
    {
      v32 = *(v12 + 1);
      swift_unknownObjectRetain();
      outlined copy of LACUIAngelPresenter.PresentedRequest?(v31);
      outlined consume of LACUIAngelPresenter.PresentedRequest?(v31);
      v33 = [v32 persistentIdentifier];
      swift_unknownObjectRelease();
      if (v33)
      {
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

LABEL_21:
        v52 = v60;
        v62[0] = v31;
        v62[1] = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v53 = String.init<A>(describing:)();
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v63);

        *(v24 + 24) = v55;
        _os_log_impl(&dword_256063000, v22, v23, "Scene %{public}s did disconnect but %s has current request with %{public}s", v24, 0x20u);
        v56 = v58;
        swift_arrayDestroy();
        MEMORY[0x259C59AD0](v56, -1, -1);
        MEMORY[0x259C59AD0](v24, -1, -1);

        return (*(v52 + 8))(v9, v59);
      }

      v31 = 0;
    }

    v35 = 0;
    goto LABEL_21;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 == v61 && v18 == a2)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v37 = *v12;
  if (*v12)
  {
    v38 = *(v12 + 1);
    outlined copy of LACUIAngelPresenter.PresentedRequest?(*v12);
    swift_unknownObjectRetain();
    outlined consume of LACUIAngelPresenter.PresentedRequest?(v37);
    [v38 deactivate];
    swift_unknownObjectRelease();
  }

  static LACLog.ui.getter();
  v39 = v2;

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62[0] = v60;
    *v42 = 136315394;
    v43 = v39;
    v44 = v5;
    v45 = [v43 description];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v4;
    v47 = v46;
    v49 = v48;

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v62);

    *(v42 + 4) = v50;
    *(v42 + 12) = 2082;
    *(v42 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, a2, v62);
    _os_log_impl(&dword_256063000, v40, v41, "%s did deactivate scene %{public}s", v42, 0x16u);
    v51 = v60;
    swift_arrayDestroy();
    MEMORY[0x259C59AD0](v51, -1, -1);
    MEMORY[0x259C59AD0](v42, -1, -1);

    return (*(v44 + 8))(v11, v59);
  }

  else
  {

    return (*(v5 + 8))(v11, v4);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C58FC0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void specialized LACUIAngelPresenter.didFinishRequest(_:request:)(void *a1)
{
  v77 = type metadata accessor for Logger();
  v3 = *(v77 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v77);
  v7 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v70[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v70[-v11];
  v13 = &v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  v14 = *&v1[OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_currentRequest];
  if (v14)
  {
    v15 = *(v13 + 1);
    v16 = v14;
    swift_unknownObjectRetain();
    if (v14 == a1)
    {
      v74 = v16;
      v75 = v15;
      static LACLog.ui.getter();
      v52 = v1;
      v53 = a1;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v78[0] = v73;
        *v56 = 136315394;
        v57 = v52;
        v71 = v55;
        v58 = v57;
        v59 = [v57 description];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v3;
        v62 = v61;

        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v78);

        *(v56 + 4) = v63;
        *(v56 + 12) = 2114;
        *(v56 + 14) = v53;
        v64 = v72;
        *v72 = v53;
        v65 = v53;
        _os_log_impl(&dword_256063000, v54, v71, "%s dismissing scene for request %{public}@", v56, 0x16u);
        outlined destroy of LACUIAuthCountdownDelayConfiguration?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x259C59AD0](v64, -1, -1);
        v66 = v73;
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x259C59AD0](v66, -1, -1);
        MEMORY[0x259C59AD0](v56, -1, -1);

        (*(v76 + 8))(v12, v77);
      }

      else
      {

        (*(v3 + 8))(v12, v77);
      }

      v67 = v74;
      [v75 deactivate];
      v68 = *v13;
      v69 = *(v13 + 1);
      *v13 = 0;
      *(v13 + 1) = 0;
      outlined consume of LACUIAngelPresenter.PresentedRequest?(v68);
      LACUIAngelPresenter.currentRequest.didset();
      LACUIAngelPresenter.presentNext()();
      swift_unknownObjectRelease();
    }

    else
    {
      v76 = v3;
      static LACLog.ui.getter();
      v17 = v1;
      v18 = a1;
      v19 = v16;
      swift_unknownObjectRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v74 = v23;
        v75 = swift_slowAlloc();
        v79 = v75;
        *v22 = 138543874;
        *(v22 + 4) = v18;
        *v23 = v18;
        *(v22 + 12) = 2080;
        v24 = v17;
        v25 = v18;
        v26 = [v24 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v79);

        *(v22 + 14) = v30;
        *(v22 + 22) = 2082;
        v78[0] = v19;
        v78[1] = v15;
        v31 = v19;
        swift_unknownObjectRetain();
        v32 = String.init<A>(describing:)();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v79);

        *(v22 + 24) = v34;
        _os_log_impl(&dword_256063000, v20, v21, "%{public}@ finished but %s currently handles %{public}s", v22, 0x20u);
        v35 = v74;
        outlined destroy of LACUIAuthCountdownDelayConfiguration?(v74, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x259C59AD0](v35, -1, -1);
        v36 = v75;
        swift_arrayDestroy();
        MEMORY[0x259C59AD0](v36, -1, -1);
        MEMORY[0x259C59AD0](v22, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v76 + 8))(v10, v77);
    }
  }

  else
  {
    static LACLog.ui.getter();
    v37 = v1;
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v76 = v3;
      v42 = v41;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v78[0] = v44;
      *v42 = 138543618;
      *(v42 + 4) = v38;
      *v43 = v38;
      *(v42 + 12) = 2080;
      v45 = v37;
      v46 = v38;
      v47 = [v45 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v78);

      *(v42 + 14) = v51;
      _os_log_impl(&dword_256063000, v39, v40, "%{public}@ finished but %s has no current request", v42, 0x16u);
      outlined destroy of LACUIAuthCountdownDelayConfiguration?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x259C59AD0](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x259C59AD0](v44, -1, -1);
      MEMORY[0x259C59AD0](v42, -1, -1);

      (*(v76 + 8))(v7, v77);
    }

    else
    {

      (*(v3 + 8))(v7, v77);
    }
  }
}

void specialized LACUIAngelPresenter.didReceiveRequest(_:request:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v8 = v1;
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = v4;
    v13 = v12;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v13 = 136315394;
    v14 = v8;
    v15 = [v14 description];
    v27 = v3;
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v29);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2114;
    *(v13 + 14) = v9;
    v21 = v25;
    *v25 = v9;
    v22 = v9;
    _os_log_impl(&dword_256063000, v10, v11, "%s did receive presentation request %{public}@", v13, 0x16u);
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x259C59AD0](v21, -1, -1);
    v23 = v26;
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x259C59AD0](v23, -1, -1);
    MEMORY[0x259C59AD0](v13, -1, -1);

    (*(v28 + 8))(v7, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  LACUIAngelPresenter.presentNext()();
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 4)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t specialized LACUIAngelPresenter.angelSceneDidActivate(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16 = v10;
    *v9 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19LACUIAngelSceneType_pMd, &_sSo19LACUIAngelSceneType_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_256063000, v7, v8, "%{public}s scene did activate", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x259C59AD0](v10, -1, -1);
    MEMORY[0x259C59AD0](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t specialized LACUIAngelPresenter.sceneControllerDidConnectScene(_:identifier:userInfo:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v14 = 0u;
    v15 = 0u;
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v14, &_sypSgMd, &_sypSgMR);
    goto LABEL_17;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(&v12), (v7 & 1) == 0))
  {
    outlined destroy of AnyHashable(&v12);
    v14 = 0u;
    v15 = 0u;
    goto LABEL_8;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v6, &v14);
  outlined destroy of AnyHashable(&v12);
  if (!*(&v15 + 1))
  {
LABEL_8:
    outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v14, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    LACUIAngelPresenter.registerScene(customIdentifier:persistentIdentifier:)(v12, v13, a1, a2);
  }

LABEL_9:
  v8 = *MEMORY[0x277D23E20];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(&v12), (v10 & 1) == 0))
  {
    outlined destroy of AnyHashable(&v12);
LABEL_17:
    v14 = 0u;
    v15 = 0u;
    return outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v14, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v9, &v14);
  outlined destroy of AnyHashable(&v12);
  if (*(&v15 + 1))
  {
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    LACUIAngelPresenter.registerHostedScene(persistentIdentifier:sceneIdentifier:)(a1, a2, v12, v13);
  }

  return outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v14, &_sypSgMd, &_sypSgMR);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 32 * result + 88;
    while (v10 < v11)
    {
      v16 = *(v6 + v12 - 24);
      v17 = *(v6 + v12 - 16);
      if (v16 != a2 || v17 != a3)
      {
        v19 = *(v6 + v12 - 24);
        v20 = *(v6 + v12 - 16);
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v21 = (v6 + 32 + 32 * v9);
            v28 = v21[1];
            v29 = *v21;
            v22 = v21[3];
            v27 = v21[2];
            v23 = *(v6 + v12);
            v31 = *(v6 + v12 - 8);

            v30 = v23;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            }

            v24 = (v6 + 32 * v9);
            v25 = v24[5];
            v26 = v24[7];
            v24[4] = v16;
            v24[5] = v17;
            v24[6] = v31;
            v24[7] = v30;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = (v6 + v12);
            v14 = *(v6 + v12 - 16);
            v15 = *(v6 + v12);
            *(v13 - 3) = v29;
            *(v13 - 2) = v28;
            *(v13 - 1) = v27;
            *v13 = v22;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 32;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t specialized LACUIAngelPresenter.sceneControllerDidDisconnectScene(_:identifier:)(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI19LACUIAngelPresenter_hostedScenes;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = (v6 + 40);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    if (*(v7 - 1) != a1 || *v7 != a2)
    {
      v7 += 4;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    return LACUIAngelPresenter.unregisterHostedScene(persistentIdentifier:)(a1, a2);
  }

  return LACUIAngelPresenter.unregisterScene(persistentIdentifier:)(a1, a2);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LACUIAngelPresenter.HostedScene(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LACUIAngelPresenter.HostedScene(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LACUIAngelPresenter.PresentedRequest(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LACUIAngelPresenter.PresentedRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id LACUIAngelConnectionHandler.__allocating_init(connection:manager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_connection] = a1;
  v8 = &v7[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_manager];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id LACUIAngelConnectionHandler.init(connection:manager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_connection] = a1;
  v4 = &v3[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_manager];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for LACUIAngelConnectionHandler();
  return objc_msgSendSuper2(&v6, sel_init);
}

id LACUIAngelConnectionHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACUIAngelConnectionHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACUIAngelConnectionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACUIAngelConnectionHandler.showUI(for:completion:)(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v11 = a1;
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v16 = 138543618;
    *(v16 + 4) = v11;
    *v17 = v11;
    *(v16 + 12) = 2082;
    v36 = *&v12[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_connection];
    v37 = v18;
    v19 = v11;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16LACXPCConnection_pMd, &_sSo16LACXPCConnection_pMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v37);
    v32 = v7;
    v23 = a2;
    v24 = v22;

    *(v16 + 14) = v24;
    a2 = v23;
    _os_log_impl(&dword_256063000, v13, v14, "Incoming request: %{public}@ for connection: %{public}s", v16, 0x16u);
    outlined destroy of NSObject?(v17);
    MEMORY[0x259C59AD0](v17, -1, -1);
    v25 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x259C59AD0](v25, -1, -1);
    MEMORY[0x259C59AD0](v16, -1, -1);

    v26 = v10;
    v27 = &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
    (*(v35 + 8))(v26, v32);
  }

  else
  {

    (*(v35 + 8))(v10, v7);
    v27 = &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  }

  v29 = *&v12[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_manager];
  v28 = *&v12[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_manager + 8];
  ObjectType = swift_getObjectType();
  (*(v28 + 48))(v11, *&v12[v27[406]], ObjectType, v28);
  return a2(0);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized LACUIAngelConnectionHandler.showUI(for:completion:)(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACLog.ui.getter();
  v11 = a1;
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v33 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v17 = 138543618;
    *(v17 + 4) = v11;
    *v18 = v11;
    *(v17 + 12) = 2082;
    v32 = v6;
    v34 = *&v12[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_connection];
    v35 = v19;
    v20 = v11;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16LACXPCConnection_pMd, &_sSo16LACXPCConnection_pMR);
    v21 = String.init<A>(describing:)();
    v23 = a3;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v35);

    *(v17 + 14) = v24;
    a3 = v23;
    v15 = &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DynamicStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, Spacer, TimelineView<PeriodicTimelineSchedule, ModifiedContent<Text, AccessibilityAttachmentModifier>>)>>, _FlexFrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
    _os_log_impl(&dword_256063000, v13, v14, "Incoming request: %{public}@ for connection: %{public}s", v17, 0x16u);
    outlined destroy of NSObject?(v18);
    MEMORY[0x259C59AD0](v18, -1, -1);
    v25 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x259C59AD0](v25, -1, -1);
    MEMORY[0x259C59AD0](v17, -1, -1);

    (*(v33 + 8))(v10, v32);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v27 = *&v12[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_manager];
  v26 = *&v12[OBJC_IVAR____TtC25LocalAuthenticationCoreUI27LACUIAngelConnectionHandler_manager + 8];
  ObjectType = swift_getObjectType();
  (*(v26 + 48))(v11, *&v12[v15[406]], ObjectType, v26);
  return (*(a3 + 16))(a3, 0);
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v7 = 0x61436D6F74737563;
        v8 = 0xEC0000006C65636ELL;
      }

      else
      {
        v7 = 0x6461526F54706174;
        v8 = 0xEA00000000007261;
      }
    }

    else if (a1 == 4)
    {
      v8 = 0x80000002560BDBA0;
      v7 = 0xD000000000000015;
    }

    else
    {
      v8 = 0xE600000000000000;
      v7 = 0x6C65636E6163;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701736292;
    if (a1 != 2)
    {
      v4 = 0x65756E69746E6F63;
      v3 = 0xE800000000000000;
    }

    v5 = 0xD000000000000012;
    v6 = 0x80000002560BDB70;
    if (a1)
    {
      v5 = 0x726F4D6E7261656CLL;
      v6 = 0xE900000000000065;
    }

    if (a1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v10 = 0xEC0000006C65636ELL;
        if (v7 != 0x61436D6F74737563)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v10 = 0xEA00000000007261;
        if (v7 != 0x6461526F54706174)
        {
LABEL_46:
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v10 = 0x80000002560BDBA0;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = 0xE600000000000000;
      if (v7 != 0x6C65636E6163)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v10 = 0xE400000000000000;
      if (v7 != 1701736292)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = 0xE800000000000000;
      if (v7 != 0x65756E69746E6F63)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x726F4D6E7261656CLL;
    }

    else
    {
      v9 = 0xD000000000000012;
    }

    if (a2)
    {
      v10 = 0xE900000000000065;
    }

    else
    {
      v10 = 0x80000002560BDB70;
    }

    if (v7 != v9)
    {
      goto LABEL_46;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_46;
  }

  v11 = 1;
LABEL_47:

  return v11 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

LocalAuthenticationCoreUI::LACUIAuthCountdownConfiguration::ActionButtonIdentifier_optional __swiftcall LACUIAuthCountdownConfiguration.ActionButtonIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LACUIAuthCountdownConfiguration.ActionButtonIdentifier.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

double static LACUIAuthCountdownConfiguration.begin(title:message:strictModeEnabled:showsLocationWarning:familiarLocationsUnavailable:customCancelTitle:)@<D0>(uint64_t a1@<X0>, void (*a2)(void, void, void, void)@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void, void)@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v67 = a8;
  LODWORD(v58) = a7;
  LODWORD(v61) = a6;
  LODWORD(v59) = a5;
  v64 = a4;
  v65 = a3;
  v62 = a2;
  v66 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMd, &_s25LocalAuthenticationCoreUI36LACUIAuthCountdownDelayConfigurationVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = &v58 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI35LACUIAuthCountdownItemConfigurationVGMR);
  v14 = swift_allocObject();
  v63 = xmmword_2560BAC90;
  *(v14 + 16) = xmmword_2560BAC90;
  v15 = specialized static LocalizedStrings.ratchetCoolOffSecurityDelayDuration.getter();
  v17 = v16;
  *&v69[0] = 0;
  *(&v69[0] + 1) = 0xE000000000000000;
  *&v71 = 0xD000000000000015;
  *(&v71 + 1) = 0x80000002560BE6D0;
  LOBYTE(v72) = 1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x259C58D70](0x656C74697425, 0xE600000000000000);
  v18 = *(&v69[0] + 1);
  *(v14 + 32) = *&v69[0];
  *(v14 + 40) = v18;
  *(v14 + 48) = 0xD000000000000015;
  *(v14 + 56) = 0x80000002560BE6D0;
  *(v14 + 64) = 1;
  *(v14 + 72) = v15;
  *(v14 + 80) = v17;
  v19 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000002ALL, 0x80000002560BE6F0, 0x74656863746152, 0xE700000000000000);
  v21 = v20;
  *&v69[0] = 0;
  *(&v69[0] + 1) = 0xE000000000000000;
  v60 = xmmword_2560BACA0;
  v71 = xmmword_2560BACA0;
  LOBYTE(v72) = 1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x259C58D70](0x656C74697425, 0xE600000000000000);
  v22 = *(&v69[0] + 1);
  *(v14 + 88) = *&v69[0];
  *(v14 + 96) = v22;
  *(v14 + 104) = v60;
  *(v14 + 120) = 1;
  *(v14 + 128) = v19;
  *(v14 + 136) = v21;
  if (v61)
  {
    v23 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000002CLL, 0x80000002560BE7F0, 0x74656863746152, 0xE700000000000000);
    v25 = v24;
    *&v69[0] = 0;
    *(&v69[0] + 1) = 0xE000000000000000;
    *&v71 = 0xD000000000000013;
    *(&v71 + 1) = 0x80000002560BE7D0;
    LOBYTE(v72) = 1;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x259C58D70](0x656C74697425, 0xE600000000000000);
    v26 = v69[0];
    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    if (v28 >= v27 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v14);
    }

    *(v14 + 16) = v28 + 1;
    v29 = v14 + 56 * v28;
    *(v29 + 32) = v26;
    *(v29 + 48) = 0xD000000000000013;
    *(v29 + 56) = 0x80000002560BE7D0;
    *(v29 + 64) = 1;
    *(v29 + 72) = v23;
    *(v29 + 80) = v25;
  }

  v30 = v64;
  if (v62)
  {
    v61 = v62;
  }

  else
  {
    v66 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001CLL, 0x80000002560BE720, 0x74656863746152, 0xE700000000000000);
    v61 = v31;
  }

  *&v60 = a10;
  if (v30)
  {

    v62 = v30;
  }

  else
  {
    v32 = "RATCHET_COOL_OFF_TITLE_BEGIN";
    if (v58)
    {
      v32 = "RATCHET_COOL_OFF_TITLE_READY";
    }

    v33 = 0xD00000000000001ELL;
    if (v58)
    {
      v33 = 0xD000000000000034;
    }

    if (v59)
    {
      v34 = "RATCHET_COOL_OFF_LEARN_MORE";
    }

    else
    {
      v34 = v32;
    }

    if (v59)
    {
      v35 = 0xD00000000000002ALL;
    }

    else
    {
      v35 = v33;
    }

    v65 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(v35, (v34 | 0x8000000000000000), 0x74656863746152, 0xE700000000000000);
    v62 = v36;
  }

  v37 = type metadata accessor for LACUIAuthCountdownDelayConfiguration();
  v64 = *(*(v37 - 8) + 56);
  v64(v68, 1, 1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMd, &_ss23_ContiguousArrayStorageCy25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = v63;

  v39 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001DLL, 0x80000002560BE760, 0x74656863746152, 0xE700000000000000);
  *(v38 + 64) = 0u;
  *(v38 + 80) = 0u;
  *(v38 + 96) = 255;
  *(v38 + 32) = 0xD000000000000012;
  *(v38 + 40) = 0x80000002560BDB70;
  *(v38 + 48) = v39;
  *(v38 + 56) = v40;
  v41 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BE780, 0x74656863746152, 0xE700000000000000);
  *(v38 + 136) = 0u;
  *(v38 + 152) = 0u;
  *(v38 + 168) = 511;
  *(v38 + 104) = 0x726F4D6E7261656CLL;
  *(v38 + 112) = 0xE900000000000065;
  *(v38 + 120) = v41;
  *(v38 + 128) = v42;
  if (v60)
  {
    *&v63 = 0xEC0000006C65636ELL;
    v58 = 0x61436D6F74737563;
    v59 = v60;
  }

  else
  {
    v67 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0x435F4E4F54545542, 0xED00004C45434E41, 0x75676F6C61746143, 0xE900000000000065);
    v59 = v43;
    *&v63 = 0xE600000000000000;
    v58 = 0x6C65636E6163;
  }

  v44 = type metadata accessor for LACUIAuthCountdownConfiguration();
  v45 = v44[7];
  v64(a9 + v45, 1, 1, v37);
  v46 = v44[8];
  v47 = a9 + v44[10];
  *(v47 + 64) = 0;
  *(v47 + 32) = 0u;
  *(v47 + 48) = 0u;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  v48 = a9 + v44[11];
  *(v48 + 64) = 0;
  *(v48 + 32) = 0u;
  *(v48 + 48) = 0u;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(a9 + v44[12]) = 1;
  *(a9 + v44[13]) = 0;
  *a9 = xmmword_2560BACB0;
  *(a9 + 16) = 1;
  v49 = v61;
  *(a9 + 24) = v66;
  *(a9 + 32) = v49;
  v50 = v62;
  *(a9 + 40) = v65;
  *(a9 + 48) = v50;

  outlined assign with take of LACUIAuthCountdownDelayConfiguration?(v68, a9 + v45);
  *(a9 + v46) = v14;
  *(a9 + v44[9]) = v38;
  v70 = *(v47 + 64);
  v51 = *(v47 + 48);
  v69[2] = *(v47 + 32);
  v69[3] = v51;
  v52 = *(v47 + 16);
  v69[0] = *v47;
  v69[1] = v52;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(v69, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  v53 = v63;
  *v47 = v58;
  *(v47 + 8) = v53;
  v54 = v59;
  *(v47 + 16) = v67;
  *(v47 + 24) = v54;
  *(v47 + 32) = 0u;
  *(v47 + 48) = 0u;
  *(v47 + 64) = 767;
  v55 = *(v48 + 48);
  v73 = *(v48 + 32);
  v74 = v55;
  v75 = *(v48 + 64);
  v56 = *(v48 + 16);
  v71 = *v48;
  v72 = v56;
  outlined destroy of LACUIAuthCountdownDelayConfiguration?(&v71, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMd, &_s25LocalAuthenticationCoreUI28LACUIAuthButtonConfigurationVSgMR);
  result = 0.0;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0u;
  *(v48 + 48) = 0u;
  *(v48 + 64) = 0;
  return result;
}