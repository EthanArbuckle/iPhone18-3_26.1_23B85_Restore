unint64_t lazy protocol witness table accessor for type UIAccessibilityCustomAction and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIAccessibilityCustomAction and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIAccessibilityCustomAction and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIAccessibilityCustomAction and conformance NSObject);
  }

  return result;
}

uint64_t outlined assign with take of AutoplayCandidate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoplayCandidate(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_69_3()
{
  **(v1 - 400) = v0;

  return outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
}

uint64_t OUTLINED_FUNCTION_99_2()
{

  return MEMORY[0x1EEDE1268](0);
}

uint64_t OUTLINED_FUNCTION_108_3()
{

  return _ConditionalContent<>.init(storage:)();
}

BOOL static CaptioningStateManager.CaptioningState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v4 = *&v3 == 0;
  }

  else
  {
    if (*&v2 != 1)
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return (v7 & 1) != 0;
    }

    v4 = *&v3 == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t CaptioningStateManager.captioningStatePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<CaptioningStateManager.CaptioningState, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMd);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t CaptioningStateManager.call.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CaptioningStateManager.call.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(&lazy protocol witness table cache variable for type CaptioningStateManager and conformance CaptioningStateManager, 255, type metadata accessor for CaptioningStateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t CaptioningStateManager.call.setter()
{
  swift_getKeyPath();
  specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t CaptioningStateManager.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_76();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v0, 255, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t type metadata accessor for CaptioningStateManager()
{
  result = type metadata singleton initialization cache for CaptioningStateManager;
  if (!type metadata singleton initialization cache for CaptioningStateManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in CaptioningStateManager.call.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_76();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v0, 255, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CaptioningStateManager.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_76();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v0, 255, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CaptioningStateManager.asrAssetIdentifier.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_76();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v1, 255, v2);
  OUTLINED_FUNCTION_1_12();

  v3 = *(v0 + 40);

  return v3;
}

uint64_t key path getter for CaptioningStateManager.asrAssetIdentifier : CaptioningStateManager@<X0>(uint64_t *a1@<X8>)
{
  result = CaptioningStateManager.asrAssetIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CaptioningStateManager.asrAssetIdentifier : CaptioningStateManager(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CaptioningStateManager.asrAssetIdentifier.setter(v1, v2);
}

uint64_t CaptioningStateManager.asrAssetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t CaptioningStateManager.asrAssetIdentifier.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t closure #1 in CaptioningStateManager.asrAssetIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
}

uint64_t CaptioningStateManager.asrAvailability.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(&lazy protocol witness table cache variable for type CaptioningStateManager and conformance CaptioningStateManager, 255, type metadata accessor for CaptioningStateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

uint64_t CaptioningStateManager.asrAvailability.setter(uint64_t result)
{
  if (*(v1 + 56) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)();
  }

  return result;
}

uint64_t CaptioningStateManager.captionsRecognizerStateManager.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_76();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v0, 255, v1);
  OUTLINED_FUNCTION_1_12();

  OUTLINED_FUNCTION_4_5();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t key path getter for CaptioningStateManager.captionsRecognizerStateManager : CaptioningStateManager@<X0>(uint64_t *a1@<X8>)
{
  result = CaptioningStateManager.captionsRecognizerStateManager.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CaptioningStateManager.captionsRecognizerStateManager.setter()
{
  swift_getKeyPath();
  specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t CaptioningStateManager.captionsRecognizerStateManager.init@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in CaptioningStateManager.captionsRecognizerStateManager.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 80) = a3;
  return swift_unknownObjectWeakAssign();
}

void (*CaptioningStateManager.captionsRecognizerStateManager.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_getKeyPath();
  v3[6] = OBJC_IVAR____TtC15ConversationKit22CaptioningStateManager___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_76();
  v3[7] = lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v4, 255, v5);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v3 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v1 + 80);
  v3[3] = Strong;
  v3[4] = v7;
  return CaptioningStateManager.captionsRecognizerStateManager.modify;
}

void CaptioningStateManager.captionsRecognizerStateManager.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 80) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
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

  *v3 = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t CaptioningStateManager.cancellables.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_76();
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(v0, 255, v1);
  OUTLINED_FUNCTION_1_12();

  OUTLINED_FUNCTION_4_5();
}

uint64_t CaptioningStateManager.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();

  _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5();
  v4 = v3;

  if (v4)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized CaptioningStateManager.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t closure #1 in CaptioningStateManager.cancellables.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
}

void *CaptioningStateManager.__allocating_init(capabilities:call:)()
{
  OUTLINED_FUNCTION_8_48();
  v0 = OUTLINED_FUNCTION_5_46();

  return specialized CaptioningStateManager.__allocating_init(capabilities:call:)(v0, v1, v2, v3, v4);
}

void *CaptioningStateManager.init(capabilities:call:)()
{
  OUTLINED_FUNCTION_8_48();
  v0 = OUTLINED_FUNCTION_5_46();

  return specialized CaptioningStateManager.init(capabilities:call:)(v0, v1, v2, v3, v4);
}

uint64_t closure #1 in CaptioningStateManager.init(capabilities:call:)(char *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_4_5();
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptioningStateManager.setCaptioningEnabled(_:)(v1);
  }

  return result;
}

Swift::Void __swiftcall CaptioningStateManager.setCaptioningEnabled(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if ((CaptioningStateManager.isCaptioningEnabled.getter() & 1) != v4)
  {
    if (a1)
    {
      v8 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
      type metadata accessor for MainActor();

      v9 = static MainActor.shared.getter();
      v10 = swift_allocObject();
      v11 = MEMORY[0x1E69E85E0];
      v10[2] = v9;
      v10[3] = v11;
      v10[4] = v2;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    }

    else
    {
      v12 = 0;
      v13 = 1;
      CurrentValueSubject.send(_:)();
    }
  }
}

uint64_t closure #1 in CaptioningStateManager.setCaptioningEnabled(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in CaptioningStateManager.setCaptioningEnabled(_:), v6, v5);
}

uint64_t closure #1 in CaptioningStateManager.setCaptioningEnabled(_:)()
{
  v1 = v0;
  v2 = v0 + 2;
  if (CaptioningStateManager.asrAvailability.getter() == 2)
  {
    v3 = 1009;
  }

  else
  {
    v3 = 1;
  }

  v4 = objc_opt_self();
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = closure #1 in CaptioningStateManager.setCaptioningEnabled(_:);
  v5 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyShySSGs5NeverOGMd);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> () with result type Set<String>;
  v1[13] = &block_descriptor_48;
  v1[14] = v5;
  [v4 installedLanguagesForTaskHint:v3 completion:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v2);
}

{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](closure #1 in CaptioningStateManager.setCaptioningEnabled(_:), v2, v1);
}

{

  v1 = *(v0 + 144);
  v2 = CaptioningStateManager.asrAssetIdentifier.getter();
  v4 = specialized Set.contains(_:)(v2, v3, v1);

  if (v4)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BAA20;
    v6 = CaptioningStateManager.asrAvailability.getter();
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = v7;
    v9 = v6 == 2;
    if (v6 == 2)
    {
      v10 = 1381187911;
    }

    else
    {
      v10 = 0x525341474ELL;
    }

    v11 = 0xE500000000000000;
    v12 = MEMORY[0x1E69E6158];
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = v7;
    if (v9)
    {
      v11 = 0xE400000000000000;
    }

    *(v5 + 32) = v10;
    *(v5 + 40) = v11;
    v13 = CaptioningStateManager.asrAssetIdentifier.getter();
    *(v5 + 96) = v12;
    *(v5 + 104) = v8;
    *(v5 + 72) = v13;
    *(v5 + 80) = v14;
    static os_log_type_t.default.getter();
    v15 = 2;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BC4BAA20;
    v17 = CaptioningStateManager.asrAvailability.getter();
    v18 = lazy protocol witness table accessor for type String and conformance String();
    v19 = v18;
    v20 = v17 == 2;
    if (v17 == 2)
    {
      v21 = 1381187911;
    }

    else
    {
      v21 = 0x525341474ELL;
    }

    v22 = 0xE500000000000000;
    v23 = MEMORY[0x1E69E6158];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = v18;
    if (v20)
    {
      v22 = 0xE400000000000000;
    }

    *(v16 + 32) = v21;
    *(v16 + 40) = v22;
    v24 = CaptioningStateManager.asrAssetIdentifier.getter();
    *(v16 + 96) = v23;
    *(v16 + 104) = v19;
    *(v16 + 72) = v24;
    *(v16 + 80) = v25;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v15 = 1;
  }

  *(v0 + 80) = v15;
  *(v0 + 88) = 1;
  CurrentValueSubject.send(_:)();
  v26 = *(v0 + 8);

  return v26();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSet) -> () with result type Set<String>(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v1, v2);
}

Swift::Void __swiftcall CaptioningStateManager.fetchSpeechModel()()
{
  v1 = v0;
  CurrentValueSubject.value.getter();
  if (v30 == 1 && v29 == 1)
  {
    if (CaptioningStateManager.asrAvailability.getter() == 2)
    {
      v7 = 1009;
    }

    else
    {
      if (CaptioningStateManager.asrAvailability.getter() != 1)
      {
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
LABEL_20:
        CurrentValueSubject.send(_:)();
        return;
      }

      v7 = 1011;
    }

    CaptioningStateManager.call.getter();
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 184))(ObjectType, v9);
    swift_unknownObjectRelease();
    v12 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(v11);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SFEntitledAssetConfig);
      v16 = CaptioningStateManager.asrAssetIdentifier.getter();
      v18 = SFEntitledAssetConfig.__allocating_init(language:taskHint:)(v16, v17, v7);
      v19 = objc_opt_self();
      v20 = MEMORY[0x1BFB209B0](v14, v15);

      OUTLINED_FUNCTION_20();
      v21 = swift_allocObject();
      swift_weakInit();
      v33 = partial apply for closure #1 in CaptioningStateManager.fetchSpeechModel();
      v34 = v21;
      v29 = MEMORY[0x1E69E9820];
      v30 = 1107296256;
      v31 = thunk for @escaping @callee_guaranteed (@unowned Int, @unowned Bool) -> ();
      v32 = &block_descriptor_22;
      v22 = _Block_copy(&v29);

      v33 = partial apply for closure #2 in CaptioningStateManager.fetchSpeechModel();
      v34 = v1;
      v29 = MEMORY[0x1E69E9820];
      v30 = 1107296256;
      v31 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ();
      v32 = &block_descriptor_11_0;
      v23 = _Block_copy(&v29);

      [v19 fetchAssetWithConfig:v18 clientIdentifier:v20 detailedProgress:v22 completion:v23];
      _Block_release(v23);
      _Block_release(v22);

      return;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BC4BA940;
    v29 = CaptioningStateManager.call.getter();
    v30 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
    v26 = String.init<A>(reflecting:)();
    v28 = v27;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    goto LABEL_20;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  CurrentValueSubject.value.getter();
  v35 = v29;
  v36 = v30;
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

id SFEntitledAssetConfig.__allocating_init(language:taskHint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x1BFB209B0](a1, a2);

  v8 = [v6 initWithLanguage:v7 taskHint:a3];

  return v8;
}

uint64_t closure #1 in CaptioningStateManager.fetchSpeechModel()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BAA20;
  v1 = String.init<A>(reflecting:)();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = lazy protocol witness table accessor for type String and conformance String();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v6 = String.init<A>(reflecting:)();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @unowned Bool) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t closure #2 in CaptioningStateManager.fetchSpeechModel()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  aBlock[4] = partial apply for closure #1 in closure #2 in CaptioningStateManager.fetchSpeechModel();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_37;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v9, v6, v13);
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

uint64_t closure #1 in closure #2 in CaptioningStateManager.fetchSpeechModel()(void *a1)
{
  if (a1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BC4BA940;
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v4 = String.init<A>(reflecting:)();
    v6 = v5;
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
LABEL_13:

      CurrentValueSubject.send(_:)();
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BC4BA940;
    swift_beginAccess();
    if (swift_weakLoadStrong() && (v9 = CaptioningStateManager.asrAvailability.getter(), , v9 == 2))
    {
      v10 = 0xE400000000000000;
      v11 = 1381187911;
    }

    else
    {
      v10 = 0xE500000000000000;
      v11 = 0x525341474ELL;
    }

    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = v11;
    *(v8 + 40) = v10;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed String?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

Swift::Void __swiftcall CaptioningStateManager.setRecognizerEnabled(_:)(Swift::Bool a1)
{
  v2 = CaptioningStateManager.captionsRecognizerStateManager.getter();
  v4 = v3;
  if (a1)
  {
    if (!v2)
    {
      return;
    }

    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v6 = swift_getObjectType();
    (*(v4 + 16))(v6, v4);
  }

  swift_unknownObjectRelease();
}

uint64_t CaptioningStateManager.createMoreMenuItemProvider()@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isMoreMenuEnabled.getter())
  {
    v2 = type metadata accessor for LiveCaptionMoreMenuItemViewModel();
    v3 = swift_allocObject();

    LiveCaptionMoreMenuItemViewModel.init(_:)(v4);
    result = lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(&lazy protocol witness table cache variable for type LiveCaptionMoreMenuItemViewModel and conformance LiveCaptionMoreMenuItemViewModel, v5, type metadata accessor for LiveCaptionMoreMenuItemViewModel);
  }

  else
  {
    v2 = 0;
    result = 0;
    v3 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v2;
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t LiveCaptionMoreMenuItemViewModel.__allocating_init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_48();
  v2 = swift_allocObject();
  LiveCaptionMoreMenuItemViewModel.init(_:)(a1);
  return v2;
}

uint64_t CaptioningStateManager.deinit()
{

  swift_unknownObjectRelease();

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 72);

  v1 = OBJC_IVAR____TtC15ConversationKit22CaptioningStateManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CaptioningStateManager.__deallocating_deinit()
{
  CaptioningStateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t LiveCaptionMoreMenuItemViewModel.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v5 = [v4 videoCallTranslationEnabled];

  *(v2 + 16) = v5;
  *(v2 + 24) = a1;
  type metadata accessor for FTMenuItem();

  *(v2 + 32) = static FTMenuItem.liveCaptionsRow(isSessionActive:rowAction:stopAction:)();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of FTMenuItem.rowAction.setter();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of FTMenuItem.stopAction.setter();

  return v2;
}

uint64_t closure #1 in LiveCaptionMoreMenuItemViewModel.init(_:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_5();
  result = swift_weakLoadStrong();
  if (result)
  {
    CaptioningStateManager.setCaptioningEnabled(_:)(a2 & 1);
  }

  return result;
}

uint64_t LiveCaptionMoreMenuItemViewModel.createMenuItem()()
{
  if (((*((*MEMORY[0x1E69E7D40] & **(*(v0 + 24) + 64)) + 0x70))() & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + 16) != 1)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  VideoCallTranslationController.hudViewModel.getter();
  v1 = CallTranslationHUDViewModel.isTranslationStarted.getter();

  if (v1)
  {
    return 0;
  }

LABEL_7:
  CurrentValueSubject.value.getter();
  v2 = *(v0 + 32);
  dispatch thunk of FTMenuItem.isSessionActive.setter();

  return v2;
}

uint64_t LiveCaptionMoreMenuItemViewModel.deinit()
{

  return v0;
}

uint64_t LiveCaptionMoreMenuItemViewModel.__deallocating_deinit()
{
  LiveCaptionMoreMenuItemViewModel.deinit();
  OUTLINED_FUNCTION_4_48();

  return swift_deallocClassInstance();
}

void *specialized CaptioningStateManager.__allocating_init(capabilities:call:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();

  return specialized CaptioningStateManager.init(capabilities:call:)(a1, a2, v9, a4, a5);
}

void *specialized CaptioningStateManager.init(capabilities:call:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v40 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v33 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v33 - v10;
  v39 = type metadata accessor for Locale();
  v11 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LanguageManager();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3[10] = 0;
  swift_unknownObjectWeakInit();
  a3[11] = MEMORY[0x1E69E7CD0];
  v37 = a3 + 11;
  ObservationRegistrar.init()();
  a3[8] = a1;
  v41 = 0;
  v42 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit22CaptioningStateManagerC0gH0Os5NeverOGMd);
  swift_allocObject();
  v18 = a1;
  a3[2] = CurrentValueSubject.init(_:)();
  a3[3] = a2;
  a3[4] = v40;
  [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  LanguageManager.init(featureFlags:)();
  static Locale.current.getter();
  v19 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v21 = v20;
  v23 = v22;
  (*(v11 + 8))(v13, v39);
  v24 = (*(v15 + 8))(v17, v14);
  a3[5] = v19;
  a3[6] = v21;
  a3[7] = v23;
  v25 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v18) + 0x70))(v24))
  {
    v26 = (*((*v25 & *v18) + 0x68))();
    v40 = v18;
    v41 = v26;
    v27 = [objc_opt_self() mainRunLoop];
    v43 = v27;
    v28 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v29 = v34;
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
    lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
    v30 = v35;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSRunLoop.SchedulerOptions?(v29);

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
    v31 = v38;
    Publisher<>.sink(receiveValue:)();

    (*(v36 + 8))(v30, v31);
    swift_getKeyPath();
    v41 = a3;
    lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(&lazy protocol witness table cache variable for type CaptioningStateManager and conformance CaptioningStateManager, 255, type metadata accessor for CaptioningStateManager);
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

  else
  {
  }

  return a3;
}

uint64_t partial apply for closure #1 in CaptioningStateManager.setCaptioningEnabled(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in CaptioningStateManager.setCaptioningEnabled(_:)(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type CaptioningStateManager and conformance CaptioningStateManager(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for CaptioningStateManager()
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

Swift::Void __swiftcall ShareViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShareViewController();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  ShareViewController.startProcessInputItemsTask()();
}

uint64_t ShareViewController.startProcessInputItemsTask()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

id ShareViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id ShareViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility] = 0;
  v7 = OBJC_IVAR____TtC15ConversationKit19ShareViewController_collaborationInitiationManager;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 conversationManager];

  type metadata accessor for CollaborationInitiationManager();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *&v3[v7] = v10;
  if (a2)
  {
    v11 = MEMORY[0x1BFB209B0](a1, a2);
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for ShareViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id ShareViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ShareViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility] = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit19ShareViewController_collaborationInitiationManager;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 conversationManager];

  type metadata accessor for CollaborationInitiationManager();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *&v1[v3] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ShareViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id ShareViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in ShareViewController.startProcessInputItemsTask()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = closure #1 in ShareViewController.startProcessInputItemsTask();

  return ShareViewController.processInputItems()();
}

uint64_t closure #1 in ShareViewController.startProcessInputItemsTask()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  *(v6 + 80) = v0;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v9 = closure #1 in ShareViewController.startProcessInputItemsTask();
  }

  else
  {
    v9 = closure #1 in ShareViewController.startProcessInputItemsTask();
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  v18 = v0;

  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v1 = *(v0 + 80);
  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, &static Log.default);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_42();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v3 = v10;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Error processing input items: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_4();
  }

  v12 = [*(v0 + 48) extensionContext];
  v13 = *(v0 + 80);
  if (v12)
  {
    OUTLINED_FUNCTION_28_0();
    v14 = _convertErrorToNSError(_:)();
    [v3 cancelRequestWithError_];
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();

  return v15();
}

uint64_t ShareViewController.processInputItems()()
{
  v1[24] = v0;
  type metadata accessor for MainActor();
  v1[25] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v3;
  v1[27] = v2;

  return MEMORY[0x1EEE6DFA0](ShareViewController.processInputItems(), v3, v2);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = ShareViewController.processInputItems();
  }

  else
  {
    v7 = ShareViewController.processInputItems();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t ShareViewController.processExtensionItem(_:for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x1EEE6DFA0](ShareViewController.processExtensionItem(_:for:), v6, v5);
}

void ShareViewController.processExtensionItem(_:for:)()
{
  v1 = outlined bridged method (pb) of @objc NSExtensionItem.attachments.getter(*(v0 + 16));
  *(v0 + 96) = v1;
  if (!v1)
  {
    v13 = *(v0 + 16);

    OUTLINED_FUNCTION_19_18();
    _StringGuts.grow(_:)(21);
    v14 = v13;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v46 = v16;
    v47 = v18;
    v19 = 0x80000001BC4FD110;
    v20 = 0xD000000000000013;
    goto LABEL_25;
  }

  v2 = v1;
  OUTLINED_FUNCTION_33_17();
  v4 = specialized Array.count.getter(v3);
  *(v0 + 104) = v4;
  v5 = 0;
  if (v4)
  {
    do
    {
      v6 = *(v0 + 96);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB22010](v5);
      }

      else
      {
        if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v7 = *(v6 + 8 * v5 + 32);
      }

      v8 = v7;
      *(v0 + 112) = v7;
      *(v0 + 120) = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_26_18();
      v10 = v9;
      v11 = [v8 hasItemConformingToTypeIdentifier_];

      if (v11)
      {
        v39 = swift_task_alloc();
        *(v0 + 128) = v39;
        *v39 = v0;
        OUTLINED_FUNCTION_4_49(v39);
        OUTLINED_FUNCTION_13_3();

        ShareViewController.loadSandboxToken(from:)(v40);
        return;
      }

      v5 = *(v0 + 120);
    }

    while (v5 != *(v0 + 104));
    v12 = *(v0 + 96);
    v2 = v12;
  }

  else
  {
    v12 = *(v0 + 96);
  }

  v21 = 0;
  v22 = v2 & 0xFFFFFFFFFFFFFF8;
  v23 = v12 & 0xC000000000000001;
  v24 = v12 + 32;
  while (1)
  {
    if (v21 == v5)
    {
      v30 = *(v0 + 16);

      OUTLINED_FUNCTION_19_18();
      _StringGuts.grow(_:)(46);
      v31 = v30;
      v32 = [v31 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v46 = v33;
      v47 = v35;
      v20 = 0xD00000000000002CLL;
      v19 = 0x80000001BC4FD190;
LABEL_25:
      MEMORY[0x1BFB20B10](v20, v19);
      lazy protocol witness table accessor for type ShareViewControllerError and conformance ShareViewControllerError();
      OUTLINED_FUNCTION_19_6();
      *v36 = v46;
      v36[1] = v47;
      swift_willThrow();

      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_13_3();

      __asm { BRAA            X1, X16 }
    }

    if (v23)
    {
      v25 = MEMORY[0x1BFB22010](v21, *(v0 + 96));
    }

    else
    {
      if (v21 >= *(v22 + 16))
      {
        goto LABEL_35;
      }

      v25 = *(v24 + 8 * v21);
    }

    v26 = v25;
    *(v0 + 160) = v25;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_26_18();
    v28 = v27;
    v29 = [v26 hasItemConformingToTypeIdentifier_];

    if (v29 & 1) == 0 && [v26 respondsToSelector_] && (objc_msgSend(v26, sel_sl_hasPossibleCollaborationRepresentation))
    {
      v42 = *(v0 + 24);
      *(v0 + 168) = *(*(v0 + 32) + OBJC_IVAR____TtC15ConversationKit19ShareViewController_collaborationInitiationManager);
      v43 = v26;
      *(v0 + 176) = [v42 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = swift_task_alloc();
      *(v0 + 184) = v44;
      *v44 = v0;
      OUTLINED_FUNCTION_6_49(v44);
      OUTLINED_FUNCTION_13_3();

      NSItemProvider.collaborationInitiator.getter();
      return;
    }

    v5 = *(v0 + 104);
    ++v21;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t ShareViewController.processExtensionItem(_:for:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  v3[17] = v5;
  v3[18] = v6;
  v3[19] = v0;

  if (v0)
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = ShareViewController.processExtensionItem(_:for:);
  }

  else
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = ShareViewController.processExtensionItem(_:for:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  v49 = v0;
  v1 = MEMORY[0x1BFB209B0](*(v0 + 136), *(v0 + 144));
  consumeSandboxToken(v1);

  if (one-time initialization token for default != -1)
  {
LABEL_38:
    OUTLINED_FUNCTION_0_45();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 112);
    v9 = OUTLINED_FUNCTION_42();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v47);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Consumed sandbox token %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  v12 = 0xED00006E656B6F74;
  OUTLINED_FUNCTION_33_17();
  while (1)
  {
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);
    if (v13 == *(v0 + 104))
    {
      v19 = 0;
      v20 = v14 & 0xFFFFFFFFFFFFFF8;
      v21 = v14 & 0xC000000000000001;
      v22 = v14 + 32;
      while (1)
      {
        if (v19 == v13)
        {
          v32 = *(v0 + 16);

          OUTLINED_FUNCTION_19_18();
          _StringGuts.grow(_:)(46);
          v33 = v32;
          v34 = [v33 description];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v47 = v35;
          v48 = v37;
          MEMORY[0x1BFB20B10](0xD00000000000002CLL, 0x80000001BC4FD190);
          v38 = v47;
          v39 = v48;
          lazy protocol witness table accessor for type ShareViewControllerError and conformance ShareViewControllerError();
          OUTLINED_FUNCTION_19_6();
          *v40 = v38;
          v40[1] = v39;
          swift_willThrow();

          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_13_3();

          __asm { BRAA            X1, X16 }
        }

        if (v21)
        {
          v23 = MEMORY[0x1BFB22010](v19, *(v0 + 96));
        }

        else
        {
          if (v19 >= *(v20 + 16))
          {
            goto LABEL_36;
          }

          v23 = *(v22 + 8 * v19);
        }

        v24 = v23;
        *(v0 + 160) = v23;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_35;
        }

        v25 = v12;
        v26 = MEMORY[0x1BFB209B0](v4, v12);
        v27 = [v24 hasItemConformingToTypeIdentifier_];

        if (v27 & 1) == 0 && [v24 respondsToSelector_] && (objc_msgSend(v24, sel_sl_hasPossibleCollaborationRepresentation))
        {
          v43 = *(v0 + 24);
          *(v0 + 168) = *(*(v0 + 32) + OBJC_IVAR____TtC15ConversationKit19ShareViewController_collaborationInitiationManager);
          v44 = v24;
          *(v0 + 176) = [v43 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = swift_task_alloc();
          *(v0 + 184) = v45;
          *v45 = v0;
          OUTLINED_FUNCTION_6_49(v45);
          OUTLINED_FUNCTION_13_3();

          return NSItemProvider.collaborationInitiator.getter();
        }

        v13 = *(v0 + 104);
        ++v19;
        v12 = v25;
      }
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1BFB22010](*(v0 + 120));
    }

    else
    {
      if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v15 = *(v14 + 8 * v13 + 32);
    }

    v16 = v15;
    *(v0 + 112) = v15;
    *(v0 + 120) = v13 + 1;
    if (__OFADD__(v13, 1))
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

    v17 = MEMORY[0x1BFB209B0](v4, 0xED00006E656B6F74);
    v18 = [v16 hasItemConformingToTypeIdentifier_];

    if (v18)
    {
      break;
    }
  }

  v28 = swift_task_alloc();
  *(v0 + 128) = v28;
  *v28 = v0;
  OUTLINED_FUNCTION_4_49();
  OUTLINED_FUNCTION_13_3();

  return ShareViewController.loadSandboxToken(from:)(v29);
}

{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    v6 = *(v3 + 176);
    v8 = *(v3 + 48);
    v7 = *(v3 + 56);
    v9 = *(v3 + 40);

    (*(v8 + 8))(v7, v9);
    v10 = *(v3 + 80);
    v11 = *(v3 + 88);
    v12 = ShareViewController.processExtensionItem(_:for:);
  }

  else
  {
    v10 = *(v3 + 80);
    v11 = *(v3 + 88);
    v12 = ShareViewController.processExtensionItem(_:for:);
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

{
  v1 = *(v0 + 160);
  if (*(v0 + 272) == 1)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);

    *(v0 + 240) = static MainActor.shared.getter();
    v4 = swift_task_alloc();
    *(v0 + 248) = v4;
    v4[2] = v2;
    v4[3] = v1;
    v4[4] = v3;
    v5 = swift_task_alloc();
    *(v0 + 256) = v5;
    *v5 = v0;
    v5[1] = ShareViewController.processExtensionItem(_:for:);

    return MEMORY[0x1EEE6DE38]();
  }

  else
  {

    lazy protocol witness table accessor for type ShareViewControllerError and conformance ShareViewControllerError();
    OUTLINED_FUNCTION_19_6();
    *v6 = 0xD000000000000033;
    v6[1] = 0x80000001BC4FD130;
    swift_willThrow();

    OUTLINED_FUNCTION_13();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_44();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = ShareViewController.processExtensionItem(_:for:);
  }

  else
  {
    v7 = ShareViewController.processExtensionItem(_:for:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);

  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility);
  *(v1 + OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility) = 0;

  OUTLINED_FUNCTION_13();

  return v3();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_13();

  return v2();
}

id ShareViewController.processExtensionItem(_:for:)()
{
  OUTLINED_FUNCTION_44();
  v1 = [*(v0 + 16) attributedTitle];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 208) = v5;
  result = [*(v0 + 32) view];
  if (result)
  {
    v7 = result;

    *(v0 + 216) = [v7 window];

    v8 = swift_task_alloc();
    *(v0 + 224) = v8;
    *v8 = v0;
    v8[1] = ShareViewController.processExtensionItem(_:for:);

    return CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ShareViewController.processExtensionItem(_:for:)(char a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 232) = v1;

  v7 = *(v4 + 216);
  v8 = *(v4 + 192);
  if (v1)
  {
    v9 = *(v5 + 48);
    v10 = *(v5 + 56);
    v11 = *(v5 + 40);

    (*(v9 + 8))(v10, v11);
    v12 = *(v5 + 80);
    v13 = *(v5 + 88);
    v14 = ShareViewController.processExtensionItem(_:for:);
  }

  else
  {
    v16 = *(v5 + 48);
    v15 = *(v5 + 56);
    v17 = *(v5 + 40);
    *(v5 + 272) = a1 & 1;
    (*(v16 + 8))(v15, v17);

    v12 = *(v5 + 80);
    v13 = *(v5 + 88);
    v14 = ShareViewController.processExtensionItem(_:for:);
  }

  return MEMORY[0x1EEE6DFA0](v14, v12, v13);
}

uint64_t ShareViewController.loadSandboxToken(from:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[4] = a1;
  v1[5] = ObjectType;
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v5;
  v1[9] = v4;

  return MEMORY[0x1EEE6DFA0](ShareViewController.loadSandboxToken(from:), v5, v4);
}

uint64_t ShareViewController.loadSandboxToken(from:)()
{
  OUTLINED_FUNCTION_44();
  v7 = *(v0 + 32);
  v1 = static MainActor.shared.getter();
  *(v0 + 80) = v1;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *(v2 + 16) = v7;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = ShareViewController.loadSandboxToken(from:);
  v4 = MEMORY[0x1E69E85E0];
  v5 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE6DE38](v0 + 16, v1, v4, 0xD000000000000017, 0x80000001BC4FD1C0, partial apply for closure #1 in ShareViewController.loadSandboxToken(from:), v2, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = ShareViewController.loadSandboxToken(from:);
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = ShareViewController.loadSandboxToken(from:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];

  return v3(v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

void closure #1 in ShareViewController.loadSandboxToken(from:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5Error_pGMd);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = MEMORY[0x1BFB209B0](0x2D786F62646E6173, 0xED00006E656B6F74, v6);
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in ShareViewController.loadSandboxToken(from:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_23;
  v12 = _Block_copy(aBlock);

  [a2 loadItemForTypeIdentifier:v9 options:0 completionHandler:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in ShareViewController.loadSandboxToken(from:)(uint64_t a1, void *a2)
{
  if (a1 && (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd), (swift_dynamicCast() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5Error_pGMd);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    _StringGuts.grow(_:)(55);
    MEMORY[0x1BFB20B10](0xD000000000000035, 0x80000001BC4FD210);
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v5 = String.init<A>(describing:)();
    MEMORY[0x1BFB20B10](v5);

    lazy protocol witness table accessor for type ShareViewControllerError and conformance ShareViewControllerError();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }
}

void closure #2 in ShareViewController.processExtensionItem(_:for:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  objc_allocWithZone(MEMORY[0x1E697B698]);
  v15 = @nonobjc SWBackgroundSendUtility.init(itemProvider:faceTime:queue:completion:)(a3, a4, v12, partial apply for closure #1 in closure #2 in ShareViewController.processExtensionItem(_:for:), v14);
  v16 = *(a2 + OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility);
  *(a2 + OBJC_IVAR____TtC15ConversationKit19ShareViewController_backgroundSendUtility) = v15;
}

uint64_t closure #1 in closure #2 in ShareViewController.processExtensionItem(_:for:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);
    return CheckedContinuation.resume(returning:)();
  }
}

id @nonobjc SWBackgroundSendUtility.init(itemProvider:faceTime:queue:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v12[3] = &block_descriptor_23;
  v9 = _Block_copy(v12);
  v10 = [v5 initWithItemProvider:a1 faceTimeConversation:a2 queue:a3 completion:v9];

  _Block_release(v9);

  return v10;
}

unint64_t lazy protocol witness table accessor for type ShareViewControllerError and conformance ShareViewControllerError()
{
  result = lazy protocol witness table cache variable for type ShareViewControllerError and conformance ShareViewControllerError;
  if (!lazy protocol witness table cache variable for type ShareViewControllerError and conformance ShareViewControllerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareViewControllerError and conformance ShareViewControllerError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TUConversation and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversation and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversation and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversation);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversation and conformance NSObject);
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc NSExtensionItem.attachments.getter(void *a1)
{
  v1 = [a1 attachments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSItemProvider);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnnn) of @objc NSExtensionContext.completeRequest(returningItems:completionHandler:)(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 completeRequestReturningItems:isa completionHandler:a2];
}

uint64_t partial apply for closure #1 in closure #1 in ShareViewController.loadSandboxToken(from:)(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5Error_pGMd);

  return closure #1 in closure #1 in ShareViewController.loadSandboxToken(from:)(a1, a2);
}

uint64_t objectdestroy_16Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in ShareViewController.processExtensionItem(_:for:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd);

  return closure #1 in closure #2 in ShareViewController.processExtensionItem(_:for:)(a1);
}

id ShareCardSharePlayHeaderView.init(controlsManager:app:)(void *a1, void *a2)
{
  State.init(wrappedValue:)();
  v4 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x78);
  v5 = a1;
  v6 = a2;
  v4();

  return v5;
}

uint64_t ShareCardSharePlayHeaderView.picker.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v32 = a3;
  v31 = a1;
  v38 = a5;
  type metadata accessor for MenuOrder();
  OUTLINED_FUNCTION_1();
  v36 = v7;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA15ModifiedContentVyAEyAEyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGANyAA5ColorVSgGGANyAA4FontVSgGGAA7SectionVyAiA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA9_AA6ButtonVyAA6HStackVyAA9TupleViewVyAI_AA6SpacerVAKSgtGGGGAA9EmptyViewVGGMd);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = [objc_opt_self() conversationKit];
  v49._object = 0xE000000000000000;
  v19.value._countAndFlagsBits = 0x61737265766E6F43;
  v19.value._object = 0xEF74694B6E6F6974;
  v20._object = 0x80000001BC4FD250;
  v20._countAndFlagsBits = 0xD000000000000017;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BA940;
  v23 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x68))();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  String.init(format:_:)();

  v26 = String.uppercased()();

  v43 = v26;
  v44 = v31;
  v45 = a2;
  v46 = v32;
  v47 = v33;
  v39 = v31;
  v40 = a2;
  v41 = v32;
  v42 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGALyAA4FontVSgGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGAlA6ButtonVyAA6HStackVyAA9TupleViewVyAE_AA6SpacerVAA5ImageVSgtGGGGAA05EmptyQ0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Section<Text, ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>>, EmptyView> and conformance <> Section<A, B, C>();
  Menu.init(content:label:)();
  static MenuOrder.fixed.getter();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, Section<Text, ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>>, EmptyView>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA15ModifiedContentVyAEyAEyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGANyAA5ColorVSgGGANyAA4FontVSgGGAA7SectionVyAiA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA9_AA6ButtonVyAA6HStackVyAA9TupleViewVyAI_AA6SpacerVAKSgtGGGGAA9EmptyViewVGGMd);
  v27 = v34;
  View.menuOrder(_:)();
  (*(v36 + 8))(v9, v37);
  (*(v11 + 8))(v14, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = &v17[*(v35 + 36)];
  *v29 = partial apply for closure #1 in View.animation(_:);
  v29[1] = v28;
  v48 = v26;
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGMd);
}

uint64_t closure #1 in ShareCardSharePlayHeaderView.picker.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGAhA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGGMd);
  lazy protocol witness table accessor for type ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>> and conformance <> ForEach<A, B, C>();
  lazy protocol witness table accessor for type String and conformance String();
  return Section<>.init<A>(_:content:)();
}

uint64_t closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter(void *a1, void *a2, char a3, uint64_t a4)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  v9 = a1;
  v10 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit13ForegroundAppC19AutomaticShareStateOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [ForegroundApp.AutomaticShareState] and conformance [A], &_sSay15ConversationKit13ForegroundAppC19AutomaticShareStateOGMd);
  lazy protocol witness table accessor for type ForegroundApp.AutomaticShareState and conformance ForegroundApp.AutomaticShareState();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Text, Spacer, Image?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGMd);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter(char *a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  *(v10 + 48) = v9;

  v11 = a2;
  v12 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, Spacer, Image?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGMd);
  return Button.init(action:label:)();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter(void *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit13ForegroundAppC014AutomaticShareC0OGMd);
  State.wrappedValue.setter();
  v8 = v7 == 2;
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x90))(v8);
  v10 = ShareCardSharePlayHeaderView.shareMediaEphemeralAlert(authorization:)(v8, a1, a2);
  return (*((*v9 & *a1) + 0x8E0))(v10);
}

__n128 closure #2 in closure #1 in closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v18 = 1;
  closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter(a1, &v12);
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  result = v12;
  v11 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in ShareCardSharePlayHeaderView.picker.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [objc_opt_self() conversationKit];
  v20 = 0xE000000000000000;
  if (v3 == 1)
  {
    v5 = 0x7478654E206B7341;
    v6 = 0x656D695420;
  }

  else
  {
    v5 = 0x6974616D6F747541;
    v6 = 0x796C6C6163;
  }

  v7 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  v8.value._countAndFlagsBits = 0x61737265766E6F43;
  v8.value._object = 0xEF74694B6E6F6974;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, v8, v4, v9, *(&v20 - 1));

  lazy protocol witness table accessor for type String and conformance String();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit13ForegroundAppC014AutomaticShareC0OGMd);
  State.wrappedValue.getter();
  if (v21 == v3)
  {
    v18 = Image.init(systemName:)();
  }

  else
  {
    v18 = 0;
  }

  outlined copy of Text.Storage(v11, v13, v15 & 1);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v18;

  outlined consume of Text.Storage(v11, v13, v15 & 1);
}

uint64_t closure #2 in ShareCardSharePlayHeaderView.picker.getter@<X0>(char a1@<W2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGMd);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  LOBYTE(v40._countAndFlagsBits) = a1;
  v40._object = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit13ForegroundAppC014AutomaticShareC0OGMd);
  State.wrappedValue.getter();
  v17 = v39;
  v18 = [objc_opt_self() conversationKit];
  v19 = "chevron.up.chevron.down";
  if (v17 == 1)
  {
    v19 = "SharePlay For Quoted_%@";
    v20 = 0xD000000000000014;
  }

  else
  {
    v20 = 0xD000000000000017;
  }

  v41._object = 0xE000000000000000;
  v21.value._countAndFlagsBits = 0x61737265766E6F43;
  v21.value._object = 0xEF74694B6E6F6974;
  v22 = v19 | 0x8000000000000000;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v20, v21, v18, v23, v41);

  v40 = v24;
  lazy protocol witness table accessor for type String and conformance String();
  Label<>.init<A>(_:systemImage:)();
  KeyPath = swift_getKeyPath();
  v26 = &v12[*(v10 + 44)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd) + 28);
  v28 = *MEMORY[0x1E697E7D8];
  v29 = type metadata accessor for LayoutDirection();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = KeyPath;
  (*(v6 + 32))(v12, v8, v5);
  v30 = static Color.secondary.getter();
  v31 = swift_getKeyPath();
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v12, v16, &_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd);
  v32 = &v16[*(v14 + 44)];
  *v32 = v31;
  v32[1] = v30;
  v33 = static Font.callout.getter();
  v34 = swift_getKeyPath();
  v35 = v38;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v16, v38, &_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGALyAA4FontVSgGGMd);
  v37 = (v35 + *(result + 36));
  *v37 = v34;
  v37[1] = v33;
  return result;
}

uint64_t closure #1 in ShareCardSharePlayHeaderView.content.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v38 = a3;
  v36 = a1;
  v39 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v32 - v10);
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v16 = a2;
  v17 = static UIImage.appIcon(for:usingIconCrop:)(*(a2 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier), *(a2 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8), 0);
  if (v17)
  {
    v18 = a4;
    v19 = v17;
    Image.init(uiImage:)();
    (*(v13 + 104))(v15, *MEMORY[0x1E6981630], v12);
    v35 = Image.resizable(capInsets:resizingMode:)();

    (*(v13 + 8))(v15, v12);
    static Layout.ConversationControls.values.getter(v45);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    a4 = v18;
    LOBYTE(v46[0]) = 0;
    v41 = v45[56];
    v42 = v45[55];
    v40 = v45[57];
    v20 = v45[58];
    v33 = v45[60];
    v34 = v45[59];
    v21 = 0x3FF0000000000000;
  }

  else
  {
    v34 = 0.0;
    v35 = 0;
    v21 = 0;
    v41 = 0.0;
    v42 = 0.0;
    v40 = 0.0;
    v20 = 0.0;
    v33 = 0.0;
  }

  v32 = v20;
  v22 = static HorizontalAlignment.leading.getter();
  static Layout.ConversationControls.values.getter(v46);
  v23 = v46[17];
  *v11 = v22;
  v11[1] = v23;
  *(v11 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAA0D0PAAE9menuOrderyQrAA04MenuM0VFQOyAA0N0VyAMyAMyAMyAA5LabelVyAkA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA0G9DirectionOGGA_yAA5ColorVSgGGA_yAA4FontVSgGGAA7SectionVyAkA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA22_AA6ButtonVyAA6HStackVyAIyAK_AA6SpacerVAXSgtGGGGAA05EmptyD0VGG_Qo_AA012_TransactionT0VGAA023AccessibilityAttachmentT0VGtGGMd);
  closure #1 in closure #1 in ShareCardSharePlayHeaderView.content.getter(v36, v16, v38, a4, v11 + *(v24 + 44));
  v25 = v37;
  outlined init with copy of Participant?(v11, v37, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMd);
  v27 = v34;
  v26 = v35;
  v43[0] = v35;
  v43[1] = v21;
  v43[2] = 0;
  *&v43[3] = v42;
  *&v43[4] = v41;
  *&v43[5] = v40;
  *&v43[6] = v20;
  *&v43[7] = v34;
  v28 = v33;
  *&v43[8] = v33;
  v29 = v39;
  memcpy(v39, v43, 0x48uLL);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSg_AA6VStackVyAA9TupleViewVyAA4TextV_ACyACyAA0L0PAAE9menuOrderyQrAA04MenuO0VFQOyAA0P0VyACyACyACyAA5LabelVyArEGAA30_EnvironmentKeyWritingModifierVyAA0H9DirectionOGGA2_yAA5ColorVSgGGA2_yAA4FontVSgGGAA7SectionVyArA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA25_AA6ButtonVyAA6HStackVyAPyAR_AA6SpacerVAESgtGGGGAA05EmptyL0VGG_Qo_AA012_TransactionU0VGAA023AccessibilityAttachmentU0VGtGGtMd);
  outlined init with copy of Participant?(v25, v29 + *(v30 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?(v43, v44);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAA0E0PAAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAIyAIyAIyAA5LabelVyAgA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAWyAA5ColorVSgGGAWyAA4FontVSgGGAA7SectionVyAgA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA18_AA6ButtonVyAA6HStackVyAEyAG_AA6SpacerVATSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionQ0VGAA023AccessibilityAttachmentQ0VGtGGMd);
  v44[0] = v26;
  v44[1] = v21;
  v44[2] = 0;
  *&v44[3] = v42;
  *&v44[4] = v41;
  *&v44[5] = v40;
  *&v44[6] = v32;
  *&v44[7] = v27;
  *&v44[8] = v28;
  return outlined destroy of ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?(v44);
}

uint64_t closure #1 in closure #1 in ShareCardSharePlayHeaderView.content.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v32 = a3;
  v31 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v29 = &v29 - v11;
  v34 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x68))(v10);
  v35 = v12;
  lazy protocol witness table accessor for type String and conformance String();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Font.Weight.bold.getter();
  v18 = Text.fontWeight(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  outlined consume of Text.Storage(v13, v15, v17 & 1);

  v25 = v29;
  ShareCardSharePlayHeaderView.picker.getter(v31, a2, v32, v33, v29);
  v26 = v30;
  outlined init with copy of Participant?(v25, v30, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd);
  *a5 = v18;
  *(a5 + 8) = v20;
  *(a5 + 16) = v22 & 1;
  *(a5 + 24) = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAA4ViewPAAE9menuOrderyQrAA04MenuH0VFQOyAA0I0VyAEyAEyAEyAA5LabelVyAcA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAcA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleF0VyAC_AA6SpacerVAPSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGtMd);
  outlined init with copy of Participant?(v26, a5 + *(v27 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd);
  outlined copy of Text.Storage(v18, v20, v22 & 1);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd);
  outlined consume of Text.Storage(v18, v20, v22 & 1);
}

void *ShareCardSharePlayHeaderView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v33 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6HStackVyAA5GroupVyAEyAA15ModifiedContentVyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAEyAA4TextV_AKyAKyAA0C0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyAKyAKyAKyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAGyAEyAX_AA6SpacerVAMSgtGGGGAA05EmptyC0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32[-v13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v16 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v16;
  v17 = static Axis.Set.vertical.getter();
  *(inited + 33) = v17;
  v18 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    v18 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    v18 = Axis.Set.init(rawValue:)();
  }

  *v10 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA6HStackVyAA5GroupVyAIyAA15ModifiedContentVyAOyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA6VStackVyAIyAA4TextV_AOyAOyAA0D0PAAE9menuOrderyQrAA04MenuV0VFQOyAA0W0VyAOyAOyAOyAA5LabelVyA0_AQGAA30_EnvironmentKeyWritingModifierVyAA0Q9DirectionOGGA12_yAA5ColorVSgGGA12_yAA4FontVSgGGAA7SectionVyA0_AA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA35_AA6ButtonVyAKyAIyA0__AA6SpacerVAQSgtGGGGAA05EmptyD0VGG_Qo_AA20_TransactionModifierVGAA31AccessibilityAttachmentModifierVGtGGtGGG_AZyA60_GtGGMd);
  closure #1 in ShareCardSharePlayHeaderView.body.getter(a1, a2, v33, v34, &v10[*(v19 + 44)]);
  v20 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v10, v14, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6HStackVyAA5GroupVyAEyAA15ModifiedContentVyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAEyAA4TextV_AKyAKyAA0C0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyAKyAKyAKyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAGyAEyAX_AA6SpacerVAMSgtGGGGAA05EmptyC0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGMd);
  v29 = &v14[*(v11 + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v14, a5, &_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGMd);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGAA05_FlexoN0VGMd);
  return memcpy((a5 + *(v30 + 36)), __src, 0x70uLL);
}

uint64_t closure #1 in ShareCardSharePlayHeaderView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v30[-1] - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v30[-1] - v19);
  static Layout.ConversationControls.values.getter(v30);
  v21 = v30[15];
  *v20 = static VerticalAlignment.center.getter();
  v20[1] = v21;
  *(v20 + 16) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA5GroupVyAA05TupleD0VyAA15ModifiedContentVyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSg_AA6VStackVyAKyAA4TextV_AMyAMyAA0D0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyAMyAMyAMyAA5LabelVyAzOGAA30_EnvironmentKeyWritingModifierVyAA0G9DirectionOGGA10_yAA5ColorVSgGGA10_yAA4FontVSgGGAA7SectionVyAzA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA33_AA6ButtonVyAA0F0VyAKyAZ_AA6SpacerVAOSgtGGGGAA05EmptyD0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGGMd);
  closure #1 in ShareCardSharePlayHeaderView.content.getter(a1, a2, a3, a4, v20 + *(v22 + 44));
  v23 = static HorizontalAlignment.leading.getter();
  static Layout.ConversationControls.values.getter(v31);
  v24 = v31[16];
  *v14 = v23;
  v14[1] = v24;
  *(v14 + 16) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA5GroupVyAA05TupleD0VyAA15ModifiedContentVyAMyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSg_AA0F0VyAKyAA4TextV_AMyAMyAA0D0PAAE9menuOrderyQrAA04MenuR0VFQOyAA0S0VyAMyAMyAMyAA5LabelVyAzOGAA30_EnvironmentKeyWritingModifierVyAA0G9DirectionOGGA10_yAA5ColorVSgGGA10_yAA4FontVSgGGAA7SectionVyAzA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA33_AA6ButtonVyAA6HStackVyAKyAZ_AA6SpacerVAOSgtGGGGAA05EmptyD0VGG_Qo_AA012_TransactionX0VGAA023AccessibilityAttachmentX0VGtGGtGGGMd);
  closure #1 in ShareCardSharePlayHeaderView.content.getter(a1, a2, a3, a4, v14 + *(v25 + 44));
  outlined init with copy of Participant?(v20, v17, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMd);
  outlined init with copy of Participant?(v14, v11, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMd);
  v26 = v29;
  outlined init with copy of Participant?(v17, v29, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMd);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGG_ATyA54_GtMd);
  outlined init with copy of Participant?(v11, v26 + *(v27 + 48), &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s7SwiftUI6VStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_ACyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAIyAIyAIyAA5LabelVyAtKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAGyAT_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI6HStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA6VStackVyAGyAA4TextV_AIyAIyAA0F0PAAE9menuOrderyQrAA04MenuQ0VFQOyAA0R0VyAIyAIyAIyAA5LabelVyAvKGAA30_EnvironmentKeyWritingModifierVyAA0L9DirectionOGGA6_yAA5ColorVSgGGA6_yAA4FontVSgGGAA7SectionVyAvA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA29_AA6ButtonVyACyAGyAV_AA6SpacerVAKSgtGGGGAA05EmptyF0VGG_Qo_AA012_TransactionW0VGAA023AccessibilityAttachmentW0VGtGGtGGGMd);
}

Class ShareCardSharePlayHeaderView.shareMediaEphemeralAlert(authorization:)(char a1, uint64_t a2, void *a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v4 = *MEMORY[0x1E69DDD40];
  v36 = 0;
  v37[0] = 0x616C706572616873;
  v37[1] = 0xE900000000000079;
  v37[2] = 1;
  v37[3] = v4;
  v38 = 0;
  v39 = 4;
  v40 = 0;
  v41 = 0;
  v42[0] = 0x616C706572616873;
  v42[1] = 0xE900000000000079;
  v42[2] = 1;
  v42[3] = v4;
  v43 = 0;
  v44 = 4;
  v45 = 0;
  v46 = 0;
  v5 = v4;
  outlined init with copy of SymbolImageDescription(v37, v34);
  outlined destroy of SymbolImageDescription(v42);
  v6 = static UIImage.symbolImage(for:)(v37);
  outlined destroy of SymbolImageDescription(v37);
  if (v6)
  {
    v7 = [objc_opt_self() labelColor];
    v8 = [v6 imageWithTintColor_];
  }

  else
  {
    v8 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v9 = objc_opt_self();
  v10 = [v9 conversationKit];
  v11._object = 0xE900000000000059;
  v47._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x414C504552414853;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v47);

  memset(v34, 0, sizeof(v34));
  v35 = 1;
  v15 = v8;
  v32 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v14._countAndFlagsBits, v14._object, v8, v34);

  v17 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x68))(v16);
  v19 = v18;
  v20 = [v9 conversationKit];
  v21 = "SharePlay Automatically";
  if (a1)
  {
    v21 = "%@_WILL_ASK_SHAREPLAY";
    v22 = 0xD00000000000001FLL;
  }

  else
  {
    v22 = 0xD000000000000015;
  }

  v48._object = 0xE000000000000000;
  v23 = v21 | 0x8000000000000000;
  v24.value._countAndFlagsBits = 0x61737265766E6F43;
  v24.value._object = 0xEF74694B6E6F6974;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v22, v24, v20, v25, v48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BC4BA940;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v26 + 32) = v17;
  *(v26 + 40) = v19;
  v27 = String.init(format:_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  NSAttributedString.__allocating_init(string:)(v30);

  return v32;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGALyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGALyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LayoutDirection> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<Text, ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>>, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<Text, ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>>, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<Text, ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>>, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGAlA6ButtonVyAA6HStackVyAA9TupleViewVyAE_AA6SpacerVAA5ImageVSgtGGGGAA05EmptyQ0VGMd);
    lazy protocol witness table accessor for type ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<Text, ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>>, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGAhA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Text, Spacer, Image?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA5ImageVSgtGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t closure #1 in View.animation(_:)()
{
  result = Transaction.disablesAnimations.getter();
  if ((result & 1) == 0)
  {

    return Transaction.animation.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4MenuVyAA15ModifiedContentVyAEyAEyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGANyAA5ColorVSgGGANyAA4FontVSgGGAA7SectionVyAiA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA9_AA6ButtonVyAA6HStackVyAA9TupleViewVyAI_AA6SpacerVAKSgtGGGGAA9EmptyViewVGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, Image>, _EnvironmentKeyWritingModifier<LayoutDirection>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, Section<Text, ForEach<[ForegroundApp.AutomaticShareState], ForegroundApp.AutomaticShareState, Button<HStack<TupleView<(Text, Spacer, Image?)>>>>, EmptyView>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA15ModifiedContentVyAEyAEyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGANyAA5ColorVSgGGANyAA4FontVSgGGAA7SectionVyAiA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA9_AA6ButtonVyAA6HStackVyAA9TupleViewVyAI_AA6SpacerVAKSgtGGGGAA9EmptyViewVGGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShareCardSharePlayHeaderView(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ShareCardSharePlayHeaderView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuOrderyQrAA04MenuG0VFQOyAA0H0VyACyACyACyAA5LabelVyAA4TextVAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGASyAA5ColorVSgGGASyAA4FontVSgGGAA7SectionVyAnA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA14_AA6ButtonVyAA6HStackVyAA05TupleE0VyAN_AA6SpacerVAPSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionO0VGAA023AccessibilityAttachmentO0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGSg_AA6VStackVyAEyAA4TextV_AGyAGyAA0E0PAAE9menuOrderyQrAA04MenuP0VFQOyAA0Q0VyAGyAGyAGyAA5LabelVyAtIGAA30_EnvironmentKeyWritingModifierVyAA0K9DirectionOGGA4_yAA5ColorVSgGGA4_yAA4FontVSgGGAA7SectionVyAtA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA27_AA6ButtonVyAA6HStackVyAEyAT_AA6SpacerVAISgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionV0VGAA023AccessibilityAttachmentV0VGtGGtGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameJ0VGSg_AA6VStackVyACyAA4TextV_AEyAEyAA0D0PAAE9menuOrderyQrAA04MenuO0VFQOyAA0P0VyAEyAEyAEyAA5LabelVyArGGAA30_EnvironmentKeyWritingModifierVyAA0J9DirectionOGGA2_yAA5ColorVSgGGA2_yAA4FontVSgGGAA7SectionVyArA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA25_AA6ButtonVyAA6HStackVyACyAR_AA6SpacerVAGSgtGGGGAA05EmptyD0VGG_Qo_AA012_TransactionU0VGAA023AccessibilityAttachmentU0VGtGGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ViewThatFits<TupleView<(HStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>, VStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ViewThatFits<TupleView<(HStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>, VStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ViewThatFits<TupleView<(HStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>, VStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGAA05_FlexoN0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ViewThatFits<TupleView<(HStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>, VStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ViewThatFits<TupleView<(HStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>, VStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ViewThatFits<TupleView<(HStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>, VStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ViewThatFits<TupleView<(HStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>, VStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ViewThatFits<TupleView<(HStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>, VStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12ViewThatFitsVyAA05TupleE0VyAA6HStackVyAA5GroupVyAGyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAGyAA4TextV_ACyACyAA0E0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyACyACyACyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAIyAGyAX_AA6SpacerVAMSgtGGGGAA05EmptyE0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGAA08_PaddingN0VGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ViewThatFits<TupleView<(HStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>, VStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>)>> and conformance ViewThatFits<A>, &_s7SwiftUI12ViewThatFitsVyAA05TupleC0VyAA6HStackVyAA5GroupVyAEyAA15ModifiedContentVyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA6VStackVyAEyAA4TextV_AKyAKyAA0C0PAAE9menuOrderyQrAA04MenuS0VFQOyAA0T0VyAKyAKyAKyAA5LabelVyAxMGAA30_EnvironmentKeyWritingModifierVyAA0N9DirectionOGGA8_yAA5ColorVSgGGA8_yAA4FontVSgGGAA7SectionVyAxA7ForEachVySay15ConversationKit13ForegroundAppC19AutomaticShareStateOGA31_AA6ButtonVyAGyAEyAX_AA6SpacerVAMSgtGGGGAA05EmptyC0VGG_Qo_AA012_TransactionY0VGAA023AccessibilityAttachmentY0VGtGGtGGG_AVyA56_GtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ViewThatFits<TupleView<(HStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>, VStack<Group<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<<<opaque return type of View.menuOrder(_:)>>.0, _TransactionModifier>, AccessibilityAttachmentModifier>)>>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ForegroundApp.AutomaticShareState and conformance ForegroundApp.AutomaticShareState()
{
  result = lazy protocol witness table cache variable for type ForegroundApp.AutomaticShareState and conformance ForegroundApp.AutomaticShareState;
  if (!lazy protocol witness table cache variable for type ForegroundApp.AutomaticShareState and conformance ForegroundApp.AutomaticShareState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundApp.AutomaticShareState and conformance ForegroundApp.AutomaticShareState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForegroundApp.AutomaticShareState and conformance ForegroundApp.AutomaticShareState;
  if (!lazy protocol witness table cache variable for type ForegroundApp.AutomaticShareState and conformance ForegroundApp.AutomaticShareState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForegroundApp.AutomaticShareState and conformance ForegroundApp.AutomaticShareState);
  }

  return result;
}

uint64_t objectdestroy_16Tm_0()
{

  return swift_deallocObject();
}

uint64_t PeoplePickerAddButtonHandler.handleContactSelection(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 56))(a2, a3);
  if (result)
  {
    v5 = result;
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    v8 = CNKContactProperty.asRecipient()(v6, v7);
    if (v8)
    {
      v9 = v8;
      v5();
    }

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
  }

  return result;
}

id @nonobjc CNContactProperty.contact.getter()
{
  v1 = [v0 contact];

  return v1;
}

double @nonobjc CNContactProperty.value.getter@<D0>(_OWORD *a1@<X8>)
{
  if ([v1 value])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id CNKContactProperty.asRecipient()(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  v5 = *(a2 + 16);
  v5(v15, a1, a2);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      v6 = 0;
      v7 = v13;
      v8 = v14;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of Any?(v15);
  }

  v5(v15, a1, a2);
  if (v16)
  {
    type metadata accessor for CNPhoneNumber();
    if (swift_dynamicCast())
    {
      v9 = [v13 stringValue];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v10;

      v6 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of Any?(v15);
  }

  v7 = 0;
  v8 = 0xE000000000000000;
  v6 = 5;
LABEL_10:
  if (String.count.getter() < 1)
  {
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x1E6996408]);
    result = @nonobjc CNComposeRecipient.init(contact:address:kind:)(v4, v7, v8, v6);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t CallTranslationHUDViewModel.isTranslationStarted.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_78();
  lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(v1, v2);
  OUTLINED_FUNCTION_1_12();

  return *(v0 + 24);
}

uint64_t CallTranslationHUDViewModel.trailingActionButton()@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for BorderedProminentButtonStyle();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = [objc_opt_self() conversationKit];
  v35._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x5443415F504F5453;
  v15._object = 0xEB000000004E4F49;
  v16.value._countAndFlagsBits = 0x61737265766E6F43;
  v16.value._object = 0xEF74694B6E6F6974;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v35);

  v34 = v18;
  lazy protocol witness table accessor for type String and conformance String();

  Button<>.init<A>(_:action:)();
  BorderedProminentButtonStyle.init()();
  lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x1E697CB70]);
  v19 = v33;
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v13, v8);
  static Color.white.getter();
  v20 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v34._countAndFlagsBits = v20;
  v22 = AnyShapeStyle.init<A>(_:)();
  v23 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd) + 36));
  *v23 = KeyPath;
  v23[1] = v22;
  v24 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGMd) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
  v26 = *MEMORY[0x1E697DC20];
  type metadata accessor for ControlSize();
  OUTLINED_FUNCTION_7_0();
  (*(v27 + 104))(v24 + v25, v26);
  *v24 = swift_getKeyPath();
  v28 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd) + 36);
  v29 = *MEMORY[0x1E697F468];
  type metadata accessor for RoundedCornerStyle();
  OUTLINED_FUNCTION_7_0();
  (*(v30 + 104))(v28, v29);
  *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd) + 36)) = 256;
  LODWORD(v28) = static HierarchicalShapeStyle.primary.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGMd);
  *(v19 + *(result + 36)) = v28;
  return result;
}

uint64_t one-time initialization function for isTranslationStartedDidChangeNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000039, 0x80000001BC4FD3D0);
  static NSNotificationName.isTranslationStartedDidChangeNotification = result;
  return result;
}

id static NSNotificationName.isTranslationStartedDidChangeNotification.getter()
{
  if (one-time initialization token for isTranslationStartedDidChangeNotification != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.isTranslationStartedDidChangeNotification;

  return v1;
}

uint64_t CallTranslationHUDViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  CallTranslationHUDViewModel.init()();
  return v0;
}

uint64_t *CallTranslationHUDViewModel.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_48();
  }

  return &static CallTranslationHUDViewModel.shared;
}

uint64_t static CallTranslationHUDViewModel.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_48();
  }
}

uint64_t CallTranslationHUDViewModel.remoteLanguage.getter(void (*a1)(__n128))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  a1(v13);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of IDView<AvatarStackView, [UUID]>(v5, &_s10Foundation6LocaleVSgMd);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v15, v5, v6);
    static Locale.current.getter();
    v16 = static LanguageDisplayName.short(_:in:)();
    v17 = *(v8 + 8);
    v17(v11, v6);
    v17(v15, v6);
  }

  return v16;
}

void CallTranslationHUDViewModel._isTranslationStarted.didset(char a1)
{
  if ((CallTranslationHUDViewModel.isTranslationStarted.getter() & 1) != (a1 & 1))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong view];

      if (!v3)
      {
        __break(1u);
        return;
      }

      [v3 setHidden_];
    }

    v4 = [objc_opt_self() defaultCenter];
    v5 = v4;
    if (one-time initialization token for isTranslationStartedDidChangeNotification != -1)
    {
      swift_once();
      v4 = v5;
    }

    [v4 postNotificationName:static NSNotificationName.isTranslationStartedDidChangeNotification object:0];
  }
}

void CallTranslationHUDViewModel._isTranslationStarted.setter(char a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  CallTranslationHUDViewModel._isTranslationStarted.didset(v2);
}

uint64_t key path getter for CallTranslationHUDViewModel.isTranslationStarted : CallTranslationHUDViewModel@<X0>(_BYTE *a1@<X8>)
{
  result = CallTranslationHUDViewModel.isTranslationStarted.getter();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for CallTranslationHUDViewModel()
{
  result = type metadata singleton initialization cache for CallTranslationHUDViewModel;
  if (!type metadata singleton initialization cache for CallTranslationHUDViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CallTranslationHUDViewModel.isTranslationStarted.setter(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    v3 = a1 & 1;

    CallTranslationHUDViewModel._isTranslationStarted.setter(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized CallTranslationHUDViewModel.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t CallTranslationHUDViewModel.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_78();
  lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t specialized CallTranslationHUDViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_78();
  lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t CallTranslationHUDViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_78();
  lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t (*CallTranslationHUDViewModel.isTranslationStarted.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  swift_getKeyPath();
  a1[2] = OBJC_IVAR____TtC15ConversationKit27CallTranslationHUDViewModel___observationRegistrar;
  *a1 = v1;
  OUTLINED_FUNCTION_0_78();
  a1[3] = lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(v3, v4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *a1 = *(v1 + 24);
  return CallTranslationHUDViewModel.isTranslationStarted.modify;
}

uint64_t CallTranslationHUDViewModel.isTranslationStarted.modify(uint64_t a1)
{
  v2 = *(a1 + 8);
  CallTranslationHUDViewModel._isTranslationStarted.setter(*a1);
  *a1 = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t CallTranslationHUDViewModel.displayTranscripts.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_78();
  lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(v1, v2);
  OUTLINED_FUNCTION_1_12();

  swift_beginAccess();
  v3 = *(v0 + 32);

  return v3;
}

uint64_t key path getter for CallTranslationHUDViewModel.displayTranscripts : CallTranslationHUDViewModel@<X0>(uint64_t *a1@<X8>)
{
  result = CallTranslationHUDViewModel.displayTranscripts.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for CallTranslationHUDViewModel.displayTranscripts : CallTranslationHUDViewModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CallTranslationHUDViewModel.displayTranscripts.setter(v1, v2);
}

uint64_t CallTranslationHUDViewModel.displayTranscripts.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (specialized CaptionsStateSource.shouldNotifyObservers<A>(_:_:)(*(v2 + 32), *(v2 + 40), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized CallTranslationHUDViewModel.withMutation<A, B>(keyPath:_:)();
  }

  else
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }
}

uint64_t CallTranslationHUDViewModel.displayTranscripts.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t closure #1 in CallTranslationHUDViewModel.displayTranscripts.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void (*CallTranslationHUDViewModel.displayTranscripts.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_getKeyPath();
  v3[4] = OBJC_IVAR____TtC15ConversationKit27CallTranslationHUDViewModel___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_78();
  v6 = lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(v4, v5);
  OUTLINED_FUNCTION_2_18(v6);

  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();

  swift_beginAccess();
  return CallTranslationHUDViewModel.displayTranscripts.modify;
}

void CallTranslationHUDViewModel.displayTranscripts.modify(void **a1)
{
  CallTranslationHUDViewModel.displayTranscripts.modify(a1);
}

{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

Swift::Void __swiftcall CallTranslationHUDViewModel.clear()()
{
  swift_beginAccess();
  *(v0 + 48) = MEMORY[0x1E69E7CC0];

  CallTranslationHUDViewModel.displayTranscripts.setter(0, 0);
}

Swift::Void __swiftcall CallTranslationHUDViewModel.updateTranscript(_:isCompleted:)(Swift::String _, Swift::Bool isCompleted)
{
  v3 = v2;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (isCompleted)
  {
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v6 = *(*(v2 + 48) + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v6);
    v7 = *(v2 + 48);
    *(v7 + 16) = v6 + 1;
    v8 = v7 + 16 * v6;
    *(v8 + 32) = countAndFlagsBits;
    *(v8 + 40) = object;
    *(v3 + 48) = v7;
    swift_endAccess();
    if (v6 < 2)
    {
LABEL_16:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;

      v20 = v24;
      v21 = v26;
      goto LABEL_17;
    }

    v9 = specialized Collection.dropFirst(_:)(v6 - 1, v7);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    if (v14)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        swift_unknownObjectRelease();
        v22 = MEMORY[0x1E69E7CC0];
      }

      v23 = *(v22 + 16);

      if (__OFSUB__(v15 >> 1, v13))
      {
        __break(1u);
      }

      else if (v23 == (v15 >> 1) - v13)
      {
        v17 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v17)
        {
LABEL_15:
          *(v3 + 48) = v17;

          goto LABEL_16;
        }

        v17 = MEMORY[0x1E69E7CC0];
LABEL_14:
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v9, v11, v13, v15);
    v17 = v16;
    goto LABEL_14;
  }

  swift_beginAccess();
  v18 = specialized BidirectionalCollection.last.getter(*(v2 + 48));
  if (v19)
  {
    v27 = v18;
    v28 = v19;
    MEMORY[0x1BFB20B10](10, 0xE100000000000000);
    MEMORY[0x1BFB20B10](countAndFlagsBits, object);
    v20 = v27;
    v21 = v28;
  }

  else
  {

    v20 = countAndFlagsBits;
    v21 = object;
  }

LABEL_17:
  CallTranslationHUDViewModel.displayTranscripts.setter(v20, v21);
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(0, result, *(a2 + 16), a2);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = specialized Array.subscript.getter(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t CallTranslationHUDViewModel.stop.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_78();
  lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(v1, v2);
  OUTLINED_FUNCTION_1_12();

  swift_beginAccess();
  v3 = *(v0 + 56);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return v3;
}

uint64_t key path getter for CallTranslationHUDViewModel.stop : CallTranslationHUDViewModel@<X0>(uint64_t (**a1)()@<X8>)
{
  result = CallTranslationHUDViewModel.stop.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t key path setter for CallTranslationHUDViewModel.stop : CallTranslationHUDViewModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v4 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return CallTranslationHUDViewModel.stop.setter(v4);
}

uint64_t CallTranslationHUDViewModel.stop.setter(uint64_t a1)
{
  swift_getKeyPath();
  specialized CallTranslationHUDViewModel.withMutation<A, B>(keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a1);
}

uint64_t closure #1 in CallTranslationHUDViewModel.stop.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 56);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

void (*CallTranslationHUDViewModel.stop.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_getKeyPath();
  v3[4] = OBJC_IVAR____TtC15ConversationKit27CallTranslationHUDViewModel___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_78();
  v6 = lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(v4, v5);
  OUTLINED_FUNCTION_2_18(v6);

  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();

  swift_beginAccess();
  return CallTranslationHUDViewModel.stop.modify;
}

void __swiftcall CallTranslationHUDViewModel.createTranslationPresentationViewController()(UIViewController *__return_ptr retstr)
{
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  lazy protocol witness table accessor for type TranslationPresentationView and conformance TranslationPresentationView();

  v3 = View.inLockScreenHostingController()();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v4 = v3;
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    v8 = [v4 view];
    if (v8)
    {
      v9 = v8;
      [v8 setHidden_];

      swift_unknownObjectWeakAssign();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t CallTranslationHUDViewModel.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 56));
  MEMORY[0x1BFB23F10](v0 + 72);
  v1 = OBJC_IVAR____TtC15ConversationKit27CallTranslationHUDViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t CallTranslationHUDViewModel.__deallocating_deinit()
{
  CallTranslationHUDViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t CallTranslationHUDViewModel.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  type metadata accessor for LanguagePair();
  swift_allocObject();
  *(v1 + 16) = LanguagePair.init(local:remote:)();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = v10;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  return v1;
}

uint64_t TranslationTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0gH4RoleVtFQOyAA0gE0VyAA08ModifiedD0VyAA6VStackVyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_ARyAA05TupleE0VyAA7DividerV_APyAPyAtA08_PaddingV0VGA9_GSgtGGGMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &__src[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0hI4RoleVtFQOyAA0hF0VyACyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_ARyAA05TupleF0VyAA7DividerV_ACyACyAtA08_PaddingV0VGA9_GSgtGGGA0_GMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &__src[-v8];
  TranslationTextView.content.getter(v5);
  static Alignment.center.getter();
  OUTLINED_FUNCTION_6_50();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v5, v9, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0gH4RoleVtFQOyAA0gE0VyAA08ModifiedD0VyAA6VStackVyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_ARyAA05TupleE0VyAA7DividerV_APyAPyAtA08_PaddingV0VGA9_GSgtGGGMd);
  memcpy(&v9[*(v6 + 44)], __src, 0x70uLL);
  v10 = static Animation.easeInOut.getter();
  v11 = CallTranslationHUDViewModel.displayTranscripts.getter();
  v13 = v12;
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v9, a1, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0hI4RoleVtFQOyAA0hF0VyACyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_ARyAA05TupleF0VyAA7DividerV_ACyACyAtA08_PaddingV0VGA9_GSgtGGGA0_GMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAA4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0hI4RoleVtFQOyAA0hF0VyACyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_ARyAA05TupleF0VyAA7DividerV_ACyACyAtA08_PaddingV0VGA9_GSgtGGGA0_GAA010_AnimationS0VySSSgGGMd);
  v15 = (a1 + *(result + 36));
  *v15 = v10;
  v15[1] = v11;
  v15[2] = v13;
  return result;
}

uint64_t TranslationTextView.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA7DividerV_AA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAMGSgtGGMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v24 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0hI4RoleVtFQOyAA0hF0VyAA08ModifiedD0VyAA6VStackVyARyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_ATyAA05TupleF0VyAA7DividerV_ARyARyAvA08_PaddingW0VGA11_GSgtGG_GMd);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v24 - v5;
  v6 = type metadata accessor for ScrollAnchorRole();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAA6VStackVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGGMd);
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0eF4RoleVtFQOyAA0eC0VyAA15ModifiedContentVyAA6VStackVyANyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_Md);
  v12 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v14 = v24 - v13;
  v15 = CallTranslationHUDViewModel.displayTranscripts.getter();
  if (v16)
  {
    v24[1] = a1;
    MEMORY[0x1EEE9AC00](v15);
    v24[-2] = v17;
    v24[-1] = v18;
    static Axis.Set.vertical.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGMd);
    v24[0] = v2;
    lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    ScrollView.init(_:showsIndicators:content:)();

    static UnitPoint.bottom.getter();
    static ScrollAnchorRole.sizeChanges.getter();
    v19 = lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type ScrollView<ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, _FlexFrameLayout>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAA6VStackVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGGMd);
    View.defaultScrollAnchor(_:for:)();
    (*(v26 + 8))(v8, v27);
    (*(v25 + 8))(v11, v9);
    v20 = v29;
    (*(v12 + 16))(v30, v14, v29);
    swift_storeEnumTagMultiPayload();
    v31 = v9;
    v32 = v19;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7DividerV_AA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAMGSgtGGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v12 + 8))(v14, v20);
  }

  else
  {
    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA7DividerV_AA15ModifiedContentVyAMyAA4TextVAA08_PaddingG0VGAQGSgtGGMd);
    closure #2 in TranslationTextView.content.getter(&v4[*(v22 + 44)]);
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v4, v30, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7DividerV_AA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAMGSgtGGMd);
    swift_storeEnumTagMultiPayload();
    v23 = lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type ScrollView<ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, _FlexFrameLayout>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAA6VStackVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGGMd);
    v31 = v9;
    v32 = v23;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7DividerV_AA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAMGSgtGGMd);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of IDView<AvatarStackView, [UUID]>(v4, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7DividerV_AA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAMGSgtGGMd);
  }
}

void *closure #1 in TranslationTextView.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = static HorizontalAlignment.leading.getter();
  __src[0] = a1;
  __src[1] = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.title3.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  outlined consume of Text.Storage(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v21[7], __src, 0x70uLL);
  *a3 = v20;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 40) = v15 & 1;
  *(a3 + 48) = v17;
  *(a3 + 56) = KeyPath;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  return memcpy((a3 + 73), v21, 0x77uLL);
}

uint64_t closure #2 in TranslationTextView.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for Divider();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  Divider.init()();
  v10 = CallTranslationHUDViewModel.remoteLanguage.getter();
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v10;
  v13 = v11;
  v69 = v9;
  v14 = CallTranslationHUDViewModel.localLanguage.getter();
  if (!v15)
  {

    v9 = v69;
LABEL_5:
    v59.n128_f64[0] = _s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAGGSgWOi0_(__dst);
    goto LABEL_6;
  }

  v16 = v15;
  v68 = v14;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  Image.init(systemName:)();
  v66 = a1;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
  v19 = [objc_opt_self() conversationKit];
  v74._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0x54414C534E415254;
  v20._object = 0xEB00000000474E49;
  v21.value._countAndFlagsBits = 0x61737265766E6F43;
  v21.value._object = 0xEF74694B6E6F6974;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v74._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v74);
  v65 = v6;

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
  v24._countAndFlagsBits = v12;
  v24._object = v13;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v24);

  v25._countAndFlagsBits = 32;
  v25._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 32;
  v26._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
  v27._countAndFlagsBits = v68;
  v27._object = v16;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v27);

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
  LocalizedStringKey.init(stringInterpolation:)();
  v29 = Text.init(_:tableName:bundle:comment:)();
  v31 = v30;
  v33 = v32;
  static Font.footnote.getter();
  v34 = Text.font(_:)();
  v67 = v4;
  v68 = v3;
  v36 = v35;
  v38 = v37;
  v6 = v65;

  outlined consume of Text.Storage(v29, v31, v33 & 1);

  LODWORD(__dst[0]) = static HierarchicalShapeStyle.secondary.getter();
  v39 = Text.foregroundStyle<A>(_:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  outlined consume of Text.Storage(v34, v36, v38 & 1);

  v46 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  LOBYTE(v72[0]) = v43 & 1;
  v71[0] = 0;
  LOBYTE(v36) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(__dst[0]) = 0;
  v72[0] = v39;
  v72[1] = v41;
  LOBYTE(v72[2]) = v43 & 1;
  a1 = v66;
  v4 = v67;
  v72[3] = v45;
  LOBYTE(v72[4]) = v46;
  v72[5] = v48;
  v72[6] = v50;
  v72[7] = v52;
  v72[8] = v54;
  LOBYTE(v72[9]) = 0;
  LOBYTE(v72[10]) = v36;
  v3 = v68;
  v72[11] = v55;
  v72[12] = v56;
  v72[13] = v57;
  v72[14] = v58;
  LOBYTE(v72[15]) = 0;
  TPNumberPadCharacter.rawValue.getter(v72);
  memcpy(__dst, v72, 0x79uLL);
  v9 = v69;
LABEL_6:
  v60 = *(v4 + 16);
  v60(v6, v9, v3, v59);
  memcpy(v70, __dst, sizeof(v70));
  (v60)(a1, v6, v3);
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerV_AA15ModifiedContentVyAEyAA4TextVAA14_PaddingLayoutVGAIGSgtMd) + 48);
  memcpy(v71, v70, 0x79uLL);
  memcpy((a1 + v61), v70, 0x79uLL);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v71, v72, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAGGSgMd);
  v62 = *(v4 + 8);
  v62(v9, v3);
  memcpy(v72, v70, 0x79uLL);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v72, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAGGSgMd);
  return (v62)(v6, v3);
}

uint64_t TranslationPresentationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGA32_GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIy014CommunicationsB0027CallTranslationLanguagePairD0V_AA15ModifiedContentVyAPyAPyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAA4TextVG_AA08BorderedtR0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundrZ0VyAA017HierarchicalShapeR0VGGtGG_ArAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyAPyAA06ScrollD0VyAPyAA0F0VyAPyAXA2_ySiSgGGSgGAA010_FlexFrameG0VGGA38_G_Qo_tGGMd);
  closure #1 in TranslationPresentationView.body.getter(&v4[*(v9 + 44)]);
  v10 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v11 = &v4[*(v1 + 44)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  static Alignment.center.getter();
  OUTLINED_FUNCTION_6_50();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v4, v8, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGMd);
  memcpy(&v8[*(v5 + 36)], __src, 0x70uLL);
  Solarium.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE14materialEffect_2inQrAA8MaterialV_AA9_ShapeSetVtFQOyAA15ModifiedContentVyAKyAA6VStackVyAA05TupleC0VyAA6HStackVyAOy014CommunicationsB0027CallTranslationLanguagePairC0V_AKyAKyAKyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonU0Rd__lFQOyAA0W0VyAA4TextVG_AA08BorderedwU0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA05_ClipE0VyAA7CapsuleVGGAA011_ForegroundU8ModifierVyAA012HierarchicalhU0VGGtGG_AcAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyAKyAA06ScrollC0VyAKyAMyAKyAZA4_ySiSgGGSgGAA16_FlexFrameLayoutVGGA38_G_Qo_tGGAA14_PaddingLayoutVGA38_G_Qo_Md);
  OUTLINED_FUNCTION_4_50();
  v18 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(v16, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGA32_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGA32_GMR, v17);
  v20[2] = v5;
  v20[3] = v18;
  OUTLINED_FUNCTION_3_68();
  swift_getOpaqueTypeConformance2();
  View.staticIf<A, B, C>(_:then:else:)();
  return outlined destroy of IDView<AvatarStackView, [UUID]>(v8, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAGy014CommunicationsB0027CallTranslationLanguagePairG0V_ACyACyACyAA0G0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonO0Rd__lFQOyAA0Q0VyAA4TextVG_AA08BorderedqO0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundoW0VyAA017HierarchicalShapeO0VGGtGG_AnAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyACyAA06ScrollG0VyACyAEyACyAtZySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tGGAA14_PaddingLayoutVGA32_GMd);
}

uint64_t closure #1 in TranslationPresentationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = type metadata accessor for ScrollAnchorRole();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAA6VStackVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSgGAA16_FlexFrameLayoutVGGMd);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10ScrollViewVyACyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSgGAA16_FlexFrameLayoutVGGARGMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0eF4RoleVtFQOyAA15ModifiedContentVyAA0eC0VyALyAA6VStackVyALyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSgGAA16_FlexFrameLayoutVGGA_G_Qo_Md);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB0027CallTranslationLanguagePairE0V_AA15ModifiedContentVyAJyAJyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAA4TextVG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundnV0VyAA017HierarchicalShapeN0VGGtGGMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0Vy014CommunicationsB0027CallTranslationLanguagePairD0V_AA15ModifiedContentVyANyANyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonQ0Rd__lFQOyAA0S0VyAA4TextVG_AA08BorderedsQ0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundqY0VyAA017HierarchicalShapeQ0VGGtGGMd);
  closure #1 in closure #1 in TranslationPresentationView.body.getter(&v17[*(v18 + 44)]);
  static Axis.Set.vertical.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSgGAA16_FlexFrameLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  ScrollView.init(_:showsIndicators:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v32 + 32))(v7, v4, v33);
  memcpy(&v7[*(v5 + 36)], __src, 0x70uLL);
  static UnitPoint.bottom.getter();
  v19 = v37;
  static ScrollAnchorRole.sizeChanges.getter();
  lazy protocol witness table accessor for type ModifiedContent<ScrollView<ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  View.defaultScrollAnchor(_:for:)();
  (*(v38 + 8))(v19, v39);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v7, &_s7SwiftUI15ModifiedContentVyAA10ScrollViewVyACyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSgGAA16_FlexFrameLayoutVGGARGMd);
  v20 = v14;
  v31 = v14;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v17, v14, &_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB0027CallTranslationLanguagePairE0V_AA15ModifiedContentVyAJyAJyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAA4TextVG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundnV0VyAA017HierarchicalShapeN0VGGtGGMd);
  v21 = v34;
  v22 = v35;
  v23 = *(v34 + 16);
  v24 = v36;
  v23(v35, v11, v36);
  v25 = v20;
  v26 = v40;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v25, v40, &_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB0027CallTranslationLanguagePairE0V_AA15ModifiedContentVyAJyAJyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAA4TextVG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundnV0VyAA017HierarchicalShapeN0VGGtGGMd);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB0027CallTranslationLanguagePairE0V_AA15ModifiedContentVyAJyAJyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAA4TextVG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundnV0VyAA017HierarchicalShapeN0VGGtGG_AlAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA16ScrollAnchorRoleVtFQOyAJyAA06ScrollE0VyAJyAA6VStackVyAJyArXySiSgGGSgGAA16_FlexFrameLayoutVGGA32_G_Qo_tMd);
  v23((v26 + *(v27 + 48)), v22, v24);
  v28 = *(v21 + 8);
  v28(v11, v24);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v17, &_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB0027CallTranslationLanguagePairE0V_AA15ModifiedContentVyAJyAJyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAA4TextVG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundnV0VyAA017HierarchicalShapeN0VGGtGGMd);
  v28(v22, v24);
  return outlined destroy of IDView<AvatarStackView, [UUID]>(v31, &_s7SwiftUI6HStackVyAA9TupleViewVy014CommunicationsB0027CallTranslationLanguagePairE0V_AA15ModifiedContentVyAJyAJyAA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA0P0VyAA4TextVG_AA08BorderedpN0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundnV0VyAA017HierarchicalShapeN0VGGtGGMd);
}

uint64_t closure #1 in closure #1 in TranslationPresentationView.body.getter@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v1 = type metadata accessor for BorderedButtonStyle();
  v43 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgO0VyAA017HierarchicalShapeG0VGGMd) - 8;
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for CallTranslationLanguagePairView();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v41 - v15;

  CallTranslationLanguagePairView.init(model:oneWay:)();
  v16 = [objc_opt_self() conversationKit];
  v52._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x5443415F504F5453;
  v17._object = 0xEB000000004E4F49;
  v18.value._countAndFlagsBits = 0x61737265766E6F43;
  v18.value._object = 0xEF74694B6E6F6974;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v52);

  v51 = v20;
  lazy protocol witness table accessor for type String and conformance String();

  Button<>.init<A>(_:action:)();
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x1E697C540]);
  View.buttonStyle<A>(_:)();
  (*(v43 + 8))(v3, v1);
  (*(v5 + 8))(v7, v4);
  v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd) + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd) + 28);
  v23 = *MEMORY[0x1E697DC08];
  v24 = type metadata accessor for ControlSize();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd) + 36);
  v26 = v11;
  v42 = v11;
  v27 = &v11[v25];
  v28 = *MEMORY[0x1E697F468];
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(v27, v28, v29);
  *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd) + 36)] = 256;
  v30 = static HierarchicalShapeStyle.primary.getter();
  v31 = v47;
  *&v11[*(v48 + 44)] = v30;
  v32 = v44;
  v33 = v45;
  v34 = *(v45 + 16);
  v35 = v46;
  v34(v31, v44, v46);
  v36 = v49;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v26, v49, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgO0VyAA017HierarchicalShapeG0VGGMd);
  v37 = v50;
  v34(v50, v31, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI31CallTranslationLanguagePairViewV_05SwiftB015ModifiedContentVyAFyAFyAD0G0PADE11buttonStyleyQrqd__AD015PrimitiveButtonL0Rd__lFQOyAD0N0VyAD4TextVG_AD08BorderednL0VQo_AD30_EnvironmentKeyWritingModifierVyAD11ControlSizeOGGAD11_ClipEffectVyAD7CapsuleVGGAD011_ForegroundlT0VyAD017HierarchicalShapeL0VGGtMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v36, &v37[*(v38 + 48)], &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgO0VyAA017HierarchicalShapeG0VGGMd);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v42, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgO0VyAA017HierarchicalShapeG0VGGMd);
  v39 = *(v33 + 8);
  v39(v32, v35);
  outlined destroy of IDView<AvatarStackView, [UUID]>(v36, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA08BorderediG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgO0VyAA017HierarchicalShapeG0VGGMd);
  return (v39)(v31, v35);
}

void (*closure #1 in CallTranslationHUDViewModel.trailingActionButton()())(void)
{
  result = CallTranslationHUDViewModel.stop.getter();
  if (result)
  {
    result();
    v1 = OUTLINED_FUNCTION_46();

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
  }

  return result;
}

void *closure #2 in closure #1 in TranslationPresentationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v3 = CallTranslationHUDViewModel.displayTranscripts.getter();
  if (v4)
  {
    __src[0] = v3;
    __src[1] = v4;
    lazy protocol witness table accessor for type String and conformance String();
    v5 = Text.init<A>(_:)();
    v7 = v6;
    v9 = v8;
    static Font.title3.getter();
    v10 = Text.font(_:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;

    outlined consume of Text.Storage(v5, v7, v9 & 1);

    KeyPath = swift_getKeyPath();
    v18 = v14 & 1;
    v19 = 1;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v18 = 0;
    v16 = 0;
    KeyPath = 0;
    v19 = 0;
  }

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v21[7], __src, 0x70uLL);
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  *(a1 + 40) = v18;
  *(a1 + 48) = v16;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = 0;
  *(a1 + 72) = v19;
  return memcpy((a1 + 73), v21, 0x77uLL);
}

uint64_t closure #2 in TranslationPresentationView.body.getter()
{
  v0 = type metadata accessor for RoundedRectangle();
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Material._GlassVariant();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Material();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Material._GlassVariant.clear.getter();
  static Material._glass(_:)();
  (*(v5 + 8))(v7, v4);
  v12 = *(v1 + 28);
  v13 = *MEMORY[0x1E697F468];
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 104))(&v3[v12], v13, v14);
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  specialized View.materialEffect<A>(_:in:)();
  outlined destroy of RoundedRectangle(v3);
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #3 in TranslationPresentationView.body.getter()
{
  v0 = type metadata accessor for RoundedRectangle();
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Material();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Material.ultraThin.getter();
  v8 = *(v1 + 28);
  v9 = *MEMORY[0x1E697F468];
  v10 = type metadata accessor for RoundedCornerStyle();
  (*(*(v10 - 8) + 104))(&v3[v8], v9, v10);
  __asm { FMOV            V0.2D, #10.0 }

  *v3 = _Q0;
  specialized View.materialEffect<A>(_:in:)();
  outlined destroy of RoundedRectangle(v3);
  return (*(v5 + 8))(v7, v4);
}

uint64_t key path getter for EnvironmentValues.tint : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1BFB1E970]();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.controlSize : EnvironmentValues, serialized(uint64_t a1)
{
  type metadata accessor for ControlSize();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3, a1);
  return MEMORY[0x1BFB1E760](v5);
}

unint64_t lazy protocol witness table accessor for type TranslationPresentationView and conformance TranslationPresentationView()
{
  result = lazy protocol witness table cache variable for type TranslationPresentationView and conformance TranslationPresentationView;
  if (!lazy protocol witness table cache variable for type TranslationPresentationView and conformance TranslationPresentationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranslationPresentationView and conformance TranslationPresentationView);
  }

  return result;
}

uint64_t type metadata completion function for CallTranslationHUDViewModel()
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGAA011_ForegroundgP0VyAA012HierarchicalrG0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGAA11_ClipEffectVyAA7CapsuleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGAQyAA11ControlSizeOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_AA017BorderedProminentiG0VQo_AA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    type metadata accessor for BorderedProminentButtonStyle();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(&lazy protocol witness table cache variable for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<<<opaque return type of View.defaultScrollAnchor(_:for:)>>.0, VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>>>, _FlexFrameLayout>, _AnimationModifier<String?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<<<opaque return type of View.defaultScrollAnchor(_:for:)>>.0, VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>>>, _FlexFrameLayout>, _AnimationModifier<String?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<<<opaque return type of View.defaultScrollAnchor(_:for:)>>.0, VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>>>, _FlexFrameLayout>, _AnimationModifier<String?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAA4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0hI4RoleVtFQOyAA0hF0VyACyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_ARyAA05TupleF0VyAA7DividerV_ACyACyAtA08_PaddingV0VGA9_GSgtGGGA0_GAA010_AnimationS0VySSSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<<<opaque return type of View.defaultScrollAnchor(_:for:)>>.0, VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0hI4RoleVtFQOyAA0hF0VyACyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_ARyAA05TupleF0VyAA7DividerV_ACyACyAtA08_PaddingV0VGA9_GSgtGGGA0_GMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0hI4RoleVtFQOyAA0hF0VyACyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_ARyAA05TupleF0VyAA7DividerV_ACyACyAtA08_PaddingV0VGA9_GSgtGGGA0_GMR, lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.defaultScrollAnchor(_:for:)>>.0, VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>>> and conformance <> _ConditionalContent<A, B>);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type _AnimationModifier<String?> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySSSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<<<opaque return type of View.defaultScrollAnchor(_:for:)>>.0, VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>>>, _FlexFrameLayout>, _AnimationModifier<String?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(HStack<TupleView<(CallTranslationLanguagePairView, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _ClipEffect<Capsule>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)>>, <<opaque return type of View.defaultScrollAnchor(_:for:)>>.0)>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_39_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.defaultScrollAnchor(_:for:)>>.0, VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.defaultScrollAnchor(_:for:)>>.0, VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.defaultScrollAnchor(_:for:)>>.0, VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE19defaultScrollAnchor_3forQrAA9UnitPointVSg_AA0gH4RoleVtFQOyAA0gE0VyAA08ModifiedD0VyAA6VStackVyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGG_Qo_ARyAA05TupleE0VyAA7DividerV_APyAPyAtA08_PaddingV0VGA9_GSgtGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAA6VStackVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGGMd);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type ScrollView<ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, _FlexFrameLayout>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAA6VStackVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7DividerV_AA15ModifiedContentVyAIyAA4TextVAA14_PaddingLayoutVGAMGSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.defaultScrollAnchor(_:for:)>>.0, VStack<TupleView<(Divider, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>?)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSgGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ScrollView<ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ScrollView<ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ScrollView<ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10ScrollViewVyACyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSgGAA16_FlexFrameLayoutVGGARGMd);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type ScrollView<ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA15ModifiedContentVyAA6VStackVyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSgGAA16_FlexFrameLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ScrollView<ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CallTranslationHUDViewModel and conformance CallTranslationHUDViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>> and conformance _GlassEffectContainer<A>(&lazy protocol witness table cache variable for type VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAGGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *ParticipantViewButton.image.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_image;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id key path getter for ParticipantViewButton.image : ParticipantViewButton@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_image;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for ParticipantViewButton.image : ParticipantViewButton(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  ParticipantViewButton.image.setter(v1);
}

void ParticipantViewButton.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_image;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  ParticipantViewButton.updateColors()();
}

void ParticipantViewButton.updateColors()()
{
  ObjectType = swift_getObjectType();
  v44.receiver = v0;
  v44.super_class = ObjectType;
  if (objc_msgSendSuper2(&v44, sel_isEnabled))
  {
    v42.receiver = v0;
    v42.super_class = ObjectType;
    if (objc_msgSendSuper2(&v42, sel_isHighlighted))
    {
      v2 = 1;
    }

    else
    {
      v41.receiver = v0;
      v41.super_class = ObjectType;
      if (objc_msgSendSuper2(&v41, sel_isSelected))
      {
        v2 = 4;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  else
  {
    v2 = 2;
  }

  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_colorConfiguration;
  swift_beginAccess();
  specialized Dictionary.subscript.getter(v2, *&v0[v3]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  swift_endAccess();
  if (v5)
  {
LABEL_13:
    v23 = *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_discView];
    v24 = [v9 colorWithAlphaComponent_];
    [v23 setBackgroundColor_];

    v25 = OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_image;
    swift_beginAccess();
    v26 = *&v0[v25];
    if (v26)
    {
      v27 = v7;
      v28 = *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_imageView];
      v29 = v26;
      v30 = [v29 _flatImageWithColor_];
      [v28 setImage_];

      [v28 setAlpha_];
    }

    else
    {
      [*&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_imageView] setImage_];
    }

    return;
  }

  swift_beginAccess();
  specialized Dictionary.subscript.getter(0, *&v0[v3]);
  v5 = v12;
  v7 = v13;
  v9 = v14;
  v11 = v15;
  swift_endAccess();
  if (v5)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BC4BAA20;
    v43 = v2;
    type metadata accessor for UIControlState(0);
    v17 = String.init<A>(reflecting:)();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    v20 = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 64) = v20;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v43 = *&v0[v3];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo14UIControlStateV15ConversationKit21ParticipantViewButtonC13ElementColorsVABSHACyHCg_GMd);
    v21 = String.init<A>(reflecting:)();
    *(v16 + 96) = MEMORY[0x1E69E6158];
    *(v16 + 104) = v20;
    *(v16 + 72) = v21;
    *(v16 + 80) = v22;
    os_log(_:dso:log:type:_:)();

    goto LABEL_13;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BB980;
  v43 = v2;
  type metadata accessor for UIControlState(0);
  v32 = String.init<A>(reflecting:)();
  v34 = v33;
  v35 = MEMORY[0x1E69E6158];
  *(v31 + 56) = MEMORY[0x1E69E6158];
  v36 = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 64) = v36;
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v43 = 0;
  v37 = String.init<A>(reflecting:)();
  *(v31 + 96) = v35;
  *(v31 + 104) = v36;
  *(v31 + 72) = v37;
  *(v31 + 80) = v38;
  v43 = *&v0[v3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo14UIControlStateV15ConversationKit21ParticipantViewButtonC13ElementColorsVABSHACyHCg_GMd);
  v39 = String.init<A>(reflecting:)();
  *(v31 + 136) = v35;
  *(v31 + 144) = v36;
  *(v31 + 112) = v39;
  *(v31 + 120) = v40;
  os_log(_:dso:log:type:_:)();
}

uint64_t (*ParticipantViewButton.image.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantViewButton.image.modify;
}

uint64_t key path getter for ParticipantViewButton.colorConfiguration : ParticipantViewButton@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_colorConfiguration;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void ParticipantViewButton.colorConfiguration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_colorConfiguration;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;

  ParticipantViewButton.updateColors()();
}

uint64_t (*ParticipantViewButton.colorConfiguration.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return ParticipantViewButton.colorConfiguration.modify;
}

void ParticipantViewButton.image.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ParticipantViewButton.updateColors()();
  }
}

id ParticipantViewButton.isSelected.getter()
{
  return ParticipantViewButton.isSelected.getter();
}

{
  OUTLINED_FUNCTION_247();
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v3, *v0);
}

void (*ParticipantViewButton.isSelected.modify())(objc_super **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  v3 = OUTLINED_FUNCTION_1_74(v2);
  *(v1 + 56) = v3;
  *v1 = v0;
  *(v1 + 8) = v3;
  *(v1 + 64) = objc_msgSendSuper2(v1, sel_isSelected);
  return ParticipantViewButton.isSelected.modify;
}

void (*ParticipantViewButton.isHighlighted.modify())(objc_super **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  v3 = OUTLINED_FUNCTION_1_74(v2);
  *(v1 + 56) = v3;
  *v1 = v0;
  *(v1 + 8) = v3;
  *(v1 + 64) = objc_msgSendSuper2(v1, sel_isHighlighted);
  return ParticipantViewButton.isHighlighted.modify;
}

void ParticipantViewButton.isSelected.setter(char a1, SEL *a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, *a2, a1 & 1);
  ParticipantViewButton.updateColors()();
}

void (*ParticipantViewButton.isEnabled.modify())(objc_super **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  v3 = OUTLINED_FUNCTION_1_74(v2);
  *(v1 + 56) = v3;
  *v1 = v0;
  *(v1 + 8) = v3;
  *(v1 + 64) = objc_msgSendSuper2(v1, sel_isEnabled);
  return ParticipantViewButton.isEnabled.modify;
}

void ParticipantViewButton.isSelected.modify(objc_super **a1, char a2, SEL *a3)
{
  v4 = *a1;
  receiver_low = LOBYTE((*a1)[4].receiver);
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v8 = *a1;
  if (a2)
  {
    v8[1].receiver = receiver;
    v8[1].super_class = super_class;
    objc_msgSendSuper2(v8 + 1, *a3, receiver_low);
  }

  else
  {
    v8[2].receiver = receiver;
    v8[2].super_class = super_class;
    objc_msgSendSuper2(v8 + 2, *a3, receiver_low);
    ParticipantViewButton.updateColors()();
  }

  free(v4);
}

objc_super *ParticipantViewButton.__allocating_init(imageName:)(uint64_t a1)
{
  outlined init with copy of Conversation?(a1, &v10, &_s15ConversationKit9ImageName_pSgMd);
  if (v11)
  {
    outlined init with take of TapInteractionHandler(&v10, v12);
    v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v4 = v13;
    v5 = v14;
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    specialized static UIImage.image(named:)(v6, v3, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v10, &_s15ConversationKit9ImageName_pSgMd);
  }

  v7 = objc_allocWithZone(v1);
  v8 = ParticipantViewButton.init(buttonImage:)();
  outlined destroy of TapInteractionHandler?(a1, &_s15ConversationKit9ImageName_pSgMd);
  return v8;
}

objc_super *ParticipantViewButton.__allocating_init(symbolName:)(uint64_t a1)
{
  outlined init with copy of Conversation?(a1, &v11, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
  if (v12)
  {
    outlined init with take of TapInteractionHandler(&v11, v8);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 8))(&v11, v3, v4);
    static UIImage.symbolImage(for:)(&v11);
    outlined destroy of SymbolImageDescription(&v11);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    outlined destroy of TapInteractionHandler?(&v11, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
  }

  v5 = objc_allocWithZone(v1);
  v6 = ParticipantViewButton.init(buttonImage:)();
  outlined destroy of TapInteractionHandler?(a1, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
  return v6;
}

objc_super *ParticipantViewButton.init(buttonImage:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_247();
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_image;
  *(v2 + OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_image) = 0;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v5 = OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_blurView;
  *(v2 + OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_blurView) = v4;
  v6 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v7 = OUTLINED_FUNCTION_28();
  v10 = [v8 v9];
  *(v2 + OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_discView) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v12 = OUTLINED_FUNCTION_28();
  v15 = [v13 v14];
  *(v2 + OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_imageView) = v15;
  [v15 setContentMode_];
  if (v0)
  {
    swift_beginAccess();
    v16 = *(v2 + v3);
    *(v2 + v3) = v0;
    v17 = v0;
  }

  v18 = *(v2 + v5);
  UIVisualEffectView.applyEffect(_:)(ConversationKit_PlatformEffectViewStyle_extraLight);

  if (one-time initialization token for expandButton != -1)
  {
    swift_once();
  }

  *(v2 + OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_colorConfiguration) = static Colors.ParticipantViews.expandButton;

  v19 = OUTLINED_FUNCTION_28();
  v21 = [(objc_super *)v20 initWithFrame:v19];
  [(objc_super *)v21 setUserInteractionEnabled:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  v23 = OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_blurView;
  v24 = *(&v21->receiver + OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_blurView);
  *(inited + 32) = v24;
  v25 = *(&v21->receiver + OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_discView);
  *(inited + 40) = v25;
  v26 = *(&v21->receiver + OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_imageView);
  *(inited + 48) = v26;
  v27 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    v43 = v24;
    v44 = v25;
    v45 = v26;
    v32 = MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v28 = *(inited + 32);
    v29 = v24;
    v30 = v25;
    v31 = v26;
    v32 = v28;
  }

  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  OUTLINED_FUNCTION_2_71();

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v27 == 0, inited);
  if (v27)
  {
    v34 = MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v34 = *(inited + 40);
  }

  v35 = v34;
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  OUTLINED_FUNCTION_2_71();

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, v27 == 0, inited);
  if (v27)
  {
    v36 = MEMORY[0x1BFB22010](2, inited);
  }

  else
  {
    v36 = *(inited + 48);
  }

  v37 = v36;

  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  OUTLINED_FUNCTION_2_71();

  ParticipantViewButton.addConstraints()();
  v38 = objc_opt_self();
  v39 = [v38 clearColor];
  [(objc_super *)v21 setBackgroundColor:v39];

  v40 = *(&v21->receiver + v23);
  v41 = [v38 clearColor];
  [v40 setBackgroundColor_];

  ParticipantViewButton.updateColors()();
  return v21;
}

void ParticipantViewButton.addConstraints()()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_blurView];
  [v0 addSubview_];
  v2 = [v1 contentView];
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_discView];
  [v2 addSubview_];

  v36 = *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_imageView];
  [v3 addSubview_];
  v35 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4C65B0;
  v5 = [v1 topAnchor];
  v6 = [v0 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  v17 = [v3 topAnchor];
  v18 = [v1 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v4 + 64) = v19;
  v20 = [v3 leadingAnchor];
  v21 = [v1 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v4 + 72) = v22;
  v23 = [v3 trailingAnchor];
  v24 = [v1 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v4 + 80) = v25;
  v26 = [v3 bottomAnchor];
  v27 = [v1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v4 + 88) = v28;
  v29 = [v36 centerXAnchor];
  v30 = [v3 centerXAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v4 + 96) = v31;
  v32 = [v36 centerYAnchor];
  v33 = [v3 centerYAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v4 + 104) = v34;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints_];
}

id ParticipantViewButton.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

void ParticipantViewButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_image) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantViewButton.layoutSubviews()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_blurView];
  [v0 bounds];
  v3 = v2;
  [v0 bounds];
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  [v1 _setCornerRadius_];
  v6 = *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantViewButton_discView];
  [v1 _cornerRadius];
  [v6 _setCornerRadius_];
}

id ParticipantViewButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantViewButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CALayer.withoutActions(_:)(void (*a1)(id))
{
  v2 = objc_opt_self();
  [v2 begin];
  a1([v2 setDisableActions_]);

  return [v2 commit];
}

BOOL CALayer.LayerAnimationCoordinatorKeyPath.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CALayer.LayerAnimationCoordinatorKeyPath.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CALayer.LayerAnimationCoordinatorKeyPath@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CALayer.LayerAnimationCoordinatorKeyPath.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void specialized CALayer.coordinateAnimation(_:animations:)(void *a1, void *a2, void *a3)
{
  v5 = objc_opt_self();
  [v5 begin];
  v6 = OUTLINED_FUNCTION_0_79();
  v7 = MEMORY[0x1BFB209B0](v6);
  v8 = [a1 animationForKey_];

  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      [v10 duration];
      [v5 setAnimationDuration_];
      v8 = [v10 timingFunction];

      [v5 setAnimationTimingFunction_];
    }
  }

  closure #1 in ParticipantViewLabelContainerViewLayer.layoutSublayers()(a2, a3);
  [v5 commit];
}

id CALayer.coordinateAnimation(_:animations:)(void (*a1)(void))
{
  v3 = objc_opt_self();
  [v3 begin];
  v4 = OUTLINED_FUNCTION_0_79();
  v5 = MEMORY[0x1BFB209B0](v4);
  v6 = [v1 animationForKey_];

  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      [v8 duration];
      [v3 setAnimationDuration_];
      v6 = [v8 timingFunction];

      [v3 setAnimationTimingFunction_];
    }
  }

  a1();

  return [v3 commit];
}

unint64_t lazy protocol witness table accessor for type CALayer.LayerAnimationCoordinatorKeyPath and conformance CALayer.LayerAnimationCoordinatorKeyPath()
{
  result = lazy protocol witness table cache variable for type CALayer.LayerAnimationCoordinatorKeyPath and conformance CALayer.LayerAnimationCoordinatorKeyPath;
  if (!lazy protocol witness table cache variable for type CALayer.LayerAnimationCoordinatorKeyPath and conformance CALayer.LayerAnimationCoordinatorKeyPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CALayer.LayerAnimationCoordinatorKeyPath and conformance CALayer.LayerAnimationCoordinatorKeyPath);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CALayer.LayerAnimationCoordinatorKeyPath(_BYTE *result, int a2, int a3)
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

void ClarityUIContactsView.navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);

  JUMPOUT(0x1BFB20050);
}

uint64_t key path setter for ClarityUIContactsView.navigationPath : ClarityUIContactsView(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return ClarityUIContactsView.navigationPath.setter(v5);
}

uint64_t ClarityUIContactsView.navigationPath.setter(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  Binding.wrappedValue.setter();
  return (*(v4 + 8))(a1, v2);
}

void (*ClarityUIContactsView.navigationPath.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = type metadata accessor for NavigationPath();
  *v3 = v4;
  v5 = *(v4 - 8);
  v3[1] = v5;
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  v3[4] = v7;
  v8 = __swift_coroFrameAllocStub(*(*(v7 - 8) + 64));
  v3[5] = v8;
  outlined init with copy of Binding<NavigationPath>(v1, v8);
  MEMORY[0x1BFB20050](v7);
  return ClarityUIContactsView.navigationPath.modify;
}

void ClarityUIContactsView.navigationPath.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  if (a2)
  {
    v6 = *v2;
    v7 = v2[1];
    (*(v7 + 16))(*(*a1 + 16), v5, *v2);
    Binding.wrappedValue.setter();
    outlined destroy of Binding<NavigationPath>(v3);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    Binding.wrappedValue.setter();
    outlined destroy of Binding<NavigationPath>(v3);
  }

  free(v3);
  free(v5);
  free(v4);

  free(v2);
}

uint64_t outlined init with copy of Binding<NavigationPath>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Binding<NavigationPath>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ClarityUIContactsView.$navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);

  return Binding.projectedValue.getter();
}

uint64_t ClarityUIContactsView.body.getter()
{
  v1 = type metadata accessor for ClarityUINavigationTitle();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMd);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  v16 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySSGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_GMd);
  lazy protocol witness table accessor for type ForEach<[String], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>();
  List<>.init(content:)();
  static ClarityUINavigationTitle.contacts.getter();
  OUTLINED_FUNCTION_0_80();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v13, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGAEG_Qo_GGMd);
  View.navigationTitle(_:)();
  (*(v3 + 8))(v6, v1);
  return (*(v9 + 8))(v12, v7);
}

uint64_t closure #1 in ClarityUIContactsView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ClarityUIContactsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (a1 + *(v5 + 28));
  v8 = *v6;
  v7 = v6[1];
  v16 = v8;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit21ClarityUIContactsListCGMd);
  State.wrappedValue.getter();
  v9 = ClarityUIContactsList.allContactIdentifiers.getter();

  v15[1] = v9;
  swift_getKeyPath();
  outlined init with copy of ClarityUIContactsView(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  outlined init with take of ClarityUIContactsView(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_Md);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
  v13 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
  v16 = v12;
  v17 = v13;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

unint64_t lazy protocol witness table accessor for type ForEach<[String], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[String], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[String], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySSGSSAA4ViewPAAE5badgeyQrSiFQOyAA14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOG_Qo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[String], String, <<opaque return type of View.badge(_:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ClarityUIContactsView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a2;
  v23 = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = v21 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = a2 + *(type metadata accessor for ClarityUIContactsView() + 20);
  v12 = *v10;
  v11 = *(v10 + 8);
  v28 = v12;
  v29 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit21ClarityUIContactsListCGMd);
  State.wrappedValue.getter();
  v13._countAndFlagsBits = v8;
  v13._object = v9;
  ClarityUIContactsList.contact(for:)(v13);

  v14 = v29;
  v15 = v30;
  v16 = v31;
  v32 = 0;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v17 = v28;
  v18 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, ClarityUIContactAvatar> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGMd);
  lazy protocol witness table accessor for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination();
  NavigationLink<>.init<A>(value:label:)();
  v28 = v17;
  v29 = v18;
  v30 = v15;
  v31 = v16;
  v33.cnContact.super.isa = &v28;
  ClarityUICallHistory.badgeCount(for:)(v33);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<Label<Text, ClarityUIContactAvatar>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA5LabelVyAA4TextV15ConversationKit22ClarityUIContactAvatarVGs5NeverOGMd);
  v19 = v22;
  View.badge(_:)();

  return (*(v5 + 8))(v7, v19);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ClarityUIContactsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  CNContact.clarityUIDisplayName.getter();
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

id closure #2 in closure #1 in closure #1 in closure #1 in ClarityUIContactsView.body.getter@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = a1;

  return a2;
}

uint64_t ClarityUIContactsView.init(navigationPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of Binding<NavigationPath>(a1, a2);
  v3 = type metadata accessor for ClarityUIContactsView();
  v4 = (a2 + *(v3 + 20));
  type metadata accessor for ClarityUIContactsList();
  swift_allocObject();
  ClarityUIContactsList.init()();
  State.init(wrappedValue:)();
  *v4 = v7;
  v4[1] = v8;
  v5 = *(v3 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a2 + v5) = static ClarityUICallHistory.shared;
}

uint64_t outlined init with take of Binding<NavigationPath>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ClarityUIContactsView()
{
  result = type metadata singleton initialization cache for ClarityUIContactsView;
  if (!type metadata singleton initialization cache for ClarityUIContactsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIContactsNavigationDestination and conformance ClarityUIContactsNavigationDestination()
{
  result = lazy protocol witness table cache variable for type ClarityUIContactsNavigationDestination and conformance ClarityUIContactsNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIContactsNavigationDestination and conformance ClarityUIContactsNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIContactsNavigationDestination and conformance ClarityUIContactsNavigationDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIContactsNavigationDestination and conformance ClarityUIContactsNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIContactsNavigationDestination and conformance ClarityUIContactsNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIContactsNavigationDestination and conformance ClarityUIContactsNavigationDestination);
  }

  return result;
}

void type metadata completion function for ClarityUIContactsView()
{
  type metadata accessor for Binding<NavigationPath>(319, &lazy cache variable for type metadata for Binding<NavigationPath>, MEMORY[0x1E697C0B0], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding<NavigationPath>(319, &lazy cache variable for type metadata for State<ClarityUIContactsList>, type metadata accessor for ClarityUIContactsList, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ClarityUICallHistory();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Binding<NavigationPath>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of ClarityUIContactsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIContactsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ClarityUIContactsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIContactsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in ClarityUIContactsView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClarityUIContactsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in ClarityUIContactsView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination()
{
  result = lazy protocol witness table cache variable for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination;
  if (!lazy protocol witness table cache variable for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIOutgoingCallActionsNavigationDestination and conformance ClarityUIOutgoingCallActionsNavigationDestination);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar()
{
  result = lazy protocol witness table cache variable for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar;
  if (!lazy protocol witness table cache variable for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar;
  if (!lazy protocol witness table cache variable for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar);
  }

  return result;
}

double static CallControlsMenuView.Constants.verticalPadding.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = Features.isICUIRedesignEnabled.getter();
  result = 20.0;
  if (v0)
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    result = 20.0;
    if (v3 == 1)
    {
      return 30.0;
    }
  }

  return result;
}

uint64_t CallControlsMenuView.init(viewModel:service:screenShareService:moreMenuService:sidebarStateStream:isScreenLocked:moreMenuDidTap:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for CallControlsMenuViewModel();
  _s15ConversationKit25CallControlsMenuViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CallControlsMenuViewModel and conformance CallControlsMenuViewModel, type metadata accessor for CallControlsMenuViewModel);

  v17 = Bindable<A>.init(wrappedValue:)();
  OUTLINED_FUNCTION_7_46(v17, v18, v19, v20, v21, v22, v23, v24, v122, v129, v136, v143, v151, a7, a3, v173, v181, v188, a1, v201, v208, v215, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v227, v228, v229, v230, v231);
  v25 = type metadata accessor for LetMeInCountdownViewModel();
  swift_allocObject();
  OUTLINED_FUNCTION_5_49();
  v182 = LetMeInCountdownViewModel.init(service:)(v26);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v27 = Features.isMoreMenuEnabled.getter();
    v174 = a2;
    v144 = a4;
    v152 = a9;
    v130 = a5;
    v137 = a6;
    v123 = a8;
    if (v27)
    {
      if (static Platform.current.getter() == 3 && (v35 = Features.isICUIRedesignEnabled.getter(), (v35 & 1) == 0))
      {
        OUTLINED_FUNCTION_7_46(v35, v36, v37, v38, v39, v40, v41, v42, a8, a5, a6, a4, a9, v160, v167, a2, v182, v189, v195, v202, v209, v216, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v227, v228, v229, v230, v231);
        v16 = type metadata accessor for SidebarButtonViewModel();
        swift_allocObject();

        v48 = SidebarButtonViewModel.init(service:stream:isScreenLocked:)(&v231, a5, a6);
        *(&v240 + 1) = v16;
        v241 = &protocol witness table for SidebarButtonViewModel;
        *&v239 = v48;
      }

      else
      {
        v241 = 0;
        v239 = 0u;
        v240 = 0u;
      }

      outlined init with copy of IDSLookupManager(a4, &v231);
      type metadata accessor for MoreMenuButtonViewModel();
      OUTLINED_FUNCTION_6_51();
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v160, a8);
      v49 = MoreMenuButtonViewModel.init(service:moreMenuDidTap:)(&v231, v160, a8);
      v237 = v16;
      v238 = &protocol witness table for MoreMenuButtonViewModel;
      v236[0] = v49;
      *(a9 + *(type metadata accessor for CallControlsMenuView() + 20)) = v49;
    }

    else
    {
      OUTLINED_FUNCTION_7_46(v27, v28, v29, v30, v31, v32, v33, v34, a8, a5, a6, a4, a9, v160, v167, a2, v182, v189, v195, v202, v209, v216, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v227, v228, v229, v230, v231);
      v43 = type metadata accessor for SidebarButtonViewModel();
      swift_allocObject();

      v44 = SidebarButtonViewModel.init(service:stream:isScreenLocked:)(&v231, a5, a6);
      *(&v240 + 1) = v43;
      v241 = &protocol witness table for SidebarButtonViewModel;
      *&v239 = v44;
      outlined init with copy of IDSLookupManager(v167, &v231);
      v45 = type metadata accessor for ScreenShareButtonViewModel();
      swift_allocObject();
      OUTLINED_FUNCTION_5_49();
      v47 = ScreenShareButtonViewModel.init(service:)(v46);
      v237 = v45;
      v238 = &protocol witness table for ScreenShareButtonViewModel;
      v236[0] = v47;
      *(a9 + *(type metadata accessor for CallControlsMenuView() + 20)) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit014CallControlsInF15ButtonViewModel_pSgGMd);
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_1BC4C6890;
    static CallControlsMenuView.translationButtonViewModel()((a4 + 32));
    v50 = outlined init with copy of (CGFloat, AutoplayCandidate)(&v239, a4 + 72, &_s15ConversationKit014CallControlsInC15ButtonViewModel_pSgMd);
    OUTLINED_FUNCTION_7_46(v50, v51, v52, v53, v54, v55, v56, v57, v123, v130, v137, v144, v152, v160, v167, v174, v182, v189, v195, v202, v209, v216, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v227, v228, v229, v230, v231);
    v58 = type metadata accessor for VideoButtonViewModel();
    swift_allocObject();
    OUTLINED_FUNCTION_5_49();
    v60 = VideoButtonViewModel.init(service:)(v59);
    *(a4 + 136) = v58;
    *(a4 + 144) = &protocol witness table for VideoButtonViewModel;
    *(a4 + 112) = v60;
    OUTLINED_FUNCTION_7_46(v60, v61, v62, v63, v64, v65, v66, v67, v124, v131, v138, v145, v153, v161, v168, v175, v183, v190, v196, v203, v210, v217, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v227, v228, v229, v230, v231);
    v68 = type metadata accessor for AudioMuteButtonViewModel();
    swift_allocObject();
    OUTLINED_FUNCTION_5_49();
    v70 = AudioMuteButtonViewModel.init(service:)(v69);
    *(a4 + 176) = v68;
    *(a4 + 184) = &protocol witness table for AudioMuteButtonViewModel;
    *(a4 + 152) = v70;
    v71 = outlined init with copy of IDSLookupManager(v236, a4 + 192);
    *(a4 + 256) = v25;
    *(a4 + 264) = &protocol witness table for LetMeInCountdownViewModel;
    v72 = v184;
    *(a4 + 232) = v184;
    OUTLINED_FUNCTION_7_46(v71, v73, v74, v75, v76, v77, v78, v79, v125, v132, v139, v146, v154, v162, v169, v176, v184, v191, v197, v204, v211, v218, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v227, v228, v229, v230, v231);
    type metadata accessor for JoinButtonViewModel();
    OUTLINED_FUNCTION_6_51();
    swift_retain_n();
    v80 = JoinButtonViewModel.init(service:letMeInViewModel:)(&v231, v72);
    *(a4 + 296) = v68;
    *(a4 + 304) = &protocol witness table for JoinButtonViewModel;
    *(a4 + 272) = v80;
    OUTLINED_FUNCTION_7_46(v80, v81, v82, v83, v84, v85, v86, v87, v126, v133, v140, v147, v155, v163, v170, v177, v185, v192, v198, v205, v212, v219, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v227, v228, v229, v230, v231);
    type metadata accessor for SwitchButtonViewModel();
    OUTLINED_FUNCTION_6_51();
    OUTLINED_FUNCTION_5_49();
    v89 = SwitchButtonViewModel.init(service:)(v88);
    *(a4 + 336) = v68;
    *(a4 + 344) = &protocol witness table for SwitchButtonViewModel;
    *(a4 + 312) = v89;
    OUTLINED_FUNCTION_7_46(v89, v90, v91, v92, v93, v94, v95, v96, v127, v134, v141, v148, v156, v164, v171, v178, v186, v193, v199, v206, v213, v220, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v227, v228, v229, v230, v231);
    v97 = type metadata accessor for CancelButtonViewModel();
    swift_allocObject();
    OUTLINED_FUNCTION_5_49();
    v99 = CancelButtonViewModel.init(service:letMeInViewModel:)(v98, v72);
    *(a4 + 376) = v97;
    *(a4 + 384) = &protocol witness table for CancelButtonViewModel;
    *(a4 + 352) = v99;
    OUTLINED_FUNCTION_7_46(v99, v100, v101, v102, v103, v104, v105, v106, v128, v135, v142, v149, v157, v165, v172, v179, v187, v194, v200, v207, v214, v221, v222, *(&v222 + 1), v223, *(&v223 + 1), v224, v225, v226, *(&v226 + 1), v227, v228, v229, v230, v231);
    type metadata accessor for LeaveButtonViewModel();
    OUTLINED_FUNCTION_6_51();

    v107 = LeaveButtonViewModel.init(service:)(&v231);
    *(a4 + 416) = v97;
    *(a4 + 424) = &protocol witness table for LeaveButtonViewModel;
    *(a4 + 392) = v107;
    v108 = type metadata accessor for LocalVideoRecordButtonViewModel();
    v109 = swift_allocObject();
    *(v109 + 16) = 0;
    *(a4 + 456) = v108;
    *(a4 + 464) = &protocol witness table for LocalVideoRecordButtonViewModel;
    *(a4 + 432) = v109;
    a9 = MEMORY[0x1E69E7CC0];
    v110 = 32;
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of (CGFloat, AutoplayCandidate)(a4 + v110, &v231, &_s15ConversationKit014CallControlsInC15ButtonViewModel_pSgMd);
      v222 = v231;
      v223 = v232;
      v224 = v233;
      if (*(&v232 + 1))
      {
        outlined init with take of TapInteractionHandler(&v222, &v226);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v25 = v112;
        }

        v111 = *(v25 + 16);
        if (v111 >= *(v25 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v25 = v113;
        }

        *(v25 + 16) = v111 + 1;
        outlined init with take of TapInteractionHandler(&v226, v25 + 40 * v111 + 32);
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v222, &_s15ConversationKit014CallControlsInC15ButtonViewModel_pSgMd);
      }

      v110 += 40;
    }

    while (v110 != 472);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    a5 = *(v25 + 16);
    if (!a5)
    {
      break;
    }

    v235 = a9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5, 0);
    a8 = 0;
    v189 = *(v25 + 16);
    a6 = v25 + 32;
    v114 = v235;
    v16 = &v226;
    a2 = &v222;
    while (v189 != a8)
    {
      if (a8 >= *(v25 + 16))
      {
        goto LABEL_29;
      }

      outlined init with copy of IDSLookupManager(a6, &v226 + 8);
      *&v222 = a8;
      outlined init with take of TapInteractionHandler((&v226 + 8), &v222 + 8);
      v202 = a8;
      v209 = 2977385;
      v216 = 0xE300000000000000;
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1BFB20B10](v115);

      outlined init with copy of IDSLookupManager(&v222 + 8, &v232);
      *&v231 = 2977385;
      *(&v231 + 1) = 0xE300000000000000;
      *(&v234 + 1) = v195;

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v222, &_sSi6offset_15ConversationKit014CallControlsInD15ButtonViewModel_p7elementtMd);
      v235 = v114;
      a4 = *(v114 + 16);
      v116 = *(v114 + 24);
      a9 = a4 + 1;
      if (a4 >= v116 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v116 > 1, a4 + 1, 1);
        v114 = v235;
      }

      *(v114 + 16) = a9;
      v117 = (v114 + (a4 << 6));
      v118 = v231;
      v119 = v232;
      v120 = v234;
      v117[4] = v233;
      v117[5] = v120;
      v117[2] = v118;
      v117[3] = v119;
      ++a8;
      a6 += 40;
      if (a5 == a8)
      {

        outlined consume of (@escaping @callee_guaranteed () -> ())?(v160);

        __swift_destroy_boxed_opaque_existential_1(v150);
        __swift_destroy_boxed_opaque_existential_1(v167);
        __swift_destroy_boxed_opaque_existential_1(v180);
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    OUTLINED_FUNCTION_0();
  }

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v160);

  __swift_destroy_boxed_opaque_existential_1(v150);
  __swift_destroy_boxed_opaque_existential_1(v167);
  __swift_destroy_boxed_opaque_existential_1(v180);
  v114 = MEMORY[0x1E69E7CC0];
LABEL_27:
  __swift_destroy_boxed_opaque_existential_1(v236);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v239, &_s15ConversationKit014CallControlsInC15ButtonViewModel_pSgMd);
  result = type metadata accessor for CallControlsMenuView();
  *(v158 + *(result + 24)) = v114;
  return result;
}

uint64_t CallControlsMenuView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit25CallControlsMenuViewModelCGMd);
  Bindable.wrappedValue.getter();
  return v1;
}

void (*CallControlsMenuView.viewModel.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit25CallControlsMenuViewModelCGMd);
  v2[4] = Bindable.wrappedValue.modify();
  return ButtonsStackView.viewModel.modify;
}

uint64_t CallControlsMenuView.$viewModel.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit25CallControlsMenuViewModelCGMd);

  return MEMORY[0x1EEDE4B98](v0);
}

uint64_t CallControlsMenuView.moreMenuViewModel.getter()
{
  type metadata accessor for CallControlsMenuView();
}

uint64_t static CallControlsMenuView.translationButtonViewModel()@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v3 = type metadata accessor for CallTranslationButtonViewModel();
  swift_allocObject();
  result = CallTranslationButtonViewModel.init(featureFlags:)(v2);
  if (result)
  {
    v5 = &protocol witness table for CallTranslationButtonViewModel;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v3;
  a1[4] = v5;
  return result;
}

uint64_t CallControlsMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CallControlsMenuView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v16 = v1;
    v7 = objc_opt_self();
    v8 = [v7 currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9)
    {
      v10 = 0;
LABEL_9:
      v2 = v16;
      goto LABEL_10;
    }

    v11 = [v7 currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12)
    {
      v10 = 1;
      goto LABEL_9;
    }

    swift_beginAccess();
    v2 = v16;
    if (static AmbientState.isPresented == 1)
    {
      v10 = Features.isICUIRedesignEnabled.getter() ^ 1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_10:
  outlined init with copy of CallControlsMenuView(v2, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  result = outlined init with take of CallControlsMenuView(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *a1 = v10 & 1;
  *(a1 + 8) = partial apply for closure #1 in CallControlsMenuView.body.getter;
  *(a1 + 16) = v14;
  return result;
}

uint64_t closure #1 in CallControlsMenuView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy15ConversationKit25CallControlsMenuViewModelCGMd);
  Bindable.wrappedValue.getter();
  v0 = CallControlsMenuViewModel.context.getter();
  v2 = v1;
  v4 = v3;

  type metadata accessor for CallControlsMenuView();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 20) = BYTE4(v0);
  *(v5 + 24) = v2;
  *(v5 + 32) = v4 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit21InCallViewModelHolder33_5B4A18A810ED2BA0BAF7DF9664EFF4B6LLVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA25_AlignmentWritingModifierVGGGAA017_AppearanceActionR0VGAWGSgMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [InCallViewModelHolder] and conformance [A], &_sSay15ConversationKit21InCallViewModelHolder33_5B4A18A810ED2BA0BAF7DF9664EFF4B6LLVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?();
  lazy protocol witness table accessor for type InCallViewModelHolder and conformance InCallViewModelHolder();
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in CallControlsMenuView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA25_AlignmentWritingModifierVGGGAA017_AppearanceActionR0VGAWGMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = a1[5];
  v14 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v13);
  if ((*(v14 + 16))(a2 & 0xFFFFFFFFFFLL, a3, a4, v13, v14))
  {
    v16 = a1[5];
    v15 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v16);
    v17 = (*(*(v15 + 8) + 8))(v16);
    v19 = v18;
    v21 = v20;
    CallControlsType.controlView()(v17, v18, v20, v12);
    outlined consume of CallControlsType(v17, v19, v21);
    outlined init with copy of InCallViewModelHolder(a1, &v31);
    v22 = swift_allocObject();
    v23 = v32;
    *(v22 + 1) = v31;
    *(v22 + 2) = v23;
    v24 = v34;
    *(v22 + 3) = v33;
    *(v22 + 4) = v24;
    v25 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA25_AlignmentWritingModifierVGGGAA017_AppearanceActionR0VGMd) + 36)];
    *v25 = partial apply for closure #1 in InCallViewModelHolder.build(_:);
    v25[1] = v22;
    v25[2] = 0;
    v25[3] = 0;
    outlined init with copy of InCallViewModelHolder(a1, &v31);
    v26 = swift_allocObject();
    v27 = v32;
    v26[1] = v31;
    v26[2] = v27;
    v28 = v34;
    v26[3] = v33;
    v26[4] = v28;
    v29 = &v12[*(v10 + 36)];
    *v29 = 0;
    *(v29 + 1) = 0;
    *(v29 + 2) = partial apply for closure #2 in InCallViewModelHolder.build(_:);
    *(v29 + 3) = v26;
    outlined init with take of ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier>, _AppearanceActionModifier>(v12, a5);
    return __swift_storeEnumTagSinglePayload(a5, 0, 1, v10);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, v10);
  }
}

uint64_t CallControlsMenuView.StackView.body.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v45 = a1;
  v50 = a4;
  v4 = type metadata accessor for HStack();
  OUTLINED_FUNCTION_2_7();
  v44 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for VStack();
  OUTLINED_FUNCTION_2_7();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  type metadata accessor for _ConditionalContent();
  OUTLINED_FUNCTION_2_7();
  v48 = v21;
  v49 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - v22;
  if (v45)
  {
    v24 = static HorizontalAlignment.trailing.getter();
    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_10_30();
    *(v25 - 32) = 1;
    v26 = v47;
    *(v25 - 24) = v46;
    *(v25 - 16) = v26;
    OUTLINED_FUNCTION_12_35();
    VStack.init(alignment:spacing:content:)();
    OUTLINED_FUNCTION_1_26();
    WitnessTable = swift_getWitnessTable();
    v28 = OUTLINED_FUNCTION_11_36();
    static ViewBuilder.buildExpression<A>(_:)(v28, v29, WitnessTable);
    v30 = *(v15 + 8);
    v31 = OUTLINED_FUNCTION_11_36();
    v30(v31);
    static ViewBuilder.buildExpression<A>(_:)(v19, v13, WitnessTable);
    OUTLINED_FUNCTION_1_13();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_11_36();
    static ViewBuilder.buildEither<A, B>(first:)();
    v32 = OUTLINED_FUNCTION_11_36();
    v30(v32);
    (v30)(v19, v13);
  }

  else
  {
    v33 = static VerticalAlignment.top.getter();
    MEMORY[0x1EEE9AC00](v33);
    OUTLINED_FUNCTION_10_30();
    *(v34 - 32) = 0;
    v35 = v47;
    *(v34 - 24) = v46;
    *(v34 - 16) = v35;
    OUTLINED_FUNCTION_12_35();
    HStack.init(alignment:spacing:content:)();
    OUTLINED_FUNCTION_1_13();
    v36 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v9, v4, v36);
    v37 = *(v44 + 8);
    v37(v9, v4);
    static ViewBuilder.buildExpression<A>(_:)(v12, v4, v36);
    OUTLINED_FUNCTION_1_26();
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)();
    v37(v9, v4);
    v37(v12, v4);
  }

  OUTLINED_FUNCTION_1_26();
  v38 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_13();
  v39 = swift_getWitnessTable();
  v51 = v38;
  v52 = v39;
  OUTLINED_FUNCTION_59_1();
  v40 = v49;
  v41 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v23, v40, v41);
  return (*(v48 + 8))(v23, v40);
}

uint64_t closure #1 in CallControlsMenuView.StackView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_7();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = (v10 - v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17(v14);
  static ViewBuilder.buildExpression<A>(_:)(v12, a4, a5);
  v18 = *(v8 + 8);
  v18(v12, a4);
  static ViewBuilder.buildExpression<A>(_:)(v16, a4, a5);
  return v18(v16, a4);
}

uint64_t CallControlsType.controlView()@<X0>(uint64_t (*a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v37 = a2;
  v46 = a4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit21CallControlTextButtonVAA25_AlignmentWritingModifierVGMd);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v35 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextH0VAA25_AlignmentWritingModifierVG_GMd);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v35 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA25_AlignmentWritingModifierVGGMd);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v35 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI10IconButtonVySbGMd);
  v35 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI10IconButtonVyytGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA7AnyViewV014CommunicationsB010IconButtonVyytGGACyAJySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextJ0VAA25_AlignmentWritingModifierVGG_GMd);
  MEMORY[0x1EEE9AC00](v43);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA7AnyViewV014CommunicationsB010IconButtonVyytG_GMd);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v35 - v18);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd);
  v20 = MEMORY[0x1EEE9AC00](v44);
  v22 = &v35 - v21;
  switch(v42)
  {
    case 1:

      IconButton.init(config:action:)();
      v32 = v35;
      v33 = v39;
      (*(v35 + 16))(v7, v10, v39);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<Bool> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVySbGMd);
      lazy protocol witness table accessor for type ModifiedContent<CallControlTextButton, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
      v34 = v41;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of (CGFloat, AutoplayCandidate)(v34, v16, &_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA25_AlignmentWritingModifierVGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA25_AlignmentWritingModifierVGGMd);
      result = (*(v32 + 8))(v10, v33);
      break;
    case 2:
      type metadata accessor for CallControlsTextButtonConfiguration(0);
      _s15ConversationKit25CallControlsMenuViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration, type metadata accessor for CallControlsTextButtonConfiguration);

      v24 = v36;
      Bindable<A>.init(wrappedValue:)();
      v25 = static VerticalAlignment.top.getter();
      v26 = swift_allocObject();
      v27 = v37;
      *(v26 + 16) = a1;
      *(v26 + 24) = v27;
      *(v26 + 32) = 2;
      v28 = (v24 + *(v40 + 36));
      *v28 = v25;
      v28[1] = partial apply for closure #1 in CallControlsType.controlView();
      v28[2] = v26;
      outlined init with copy of (CGFloat, AutoplayCandidate)(v24, v7, &_s7SwiftUI15ModifiedContentVy15ConversationKit21CallControlTextButtonVAA25_AlignmentWritingModifierVGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<Bool> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVySbGMd);
      lazy protocol witness table accessor for type ModifiedContent<CallControlTextButton, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();

      v29 = v41;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of (CGFloat, AutoplayCandidate)(v29, v16, &_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA25_AlignmentWritingModifierVGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA25_AlignmentWritingModifierVGGMd);
      v30 = v24;
      v31 = &_s7SwiftUI15ModifiedContentVy15ConversationKit21CallControlTextButtonVAA25_AlignmentWritingModifierVGMd;
      goto LABEL_5;
    case 3:
      *v19 = a1(v20);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<()> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVyytGMd);

      _ConditionalContent<>.init(storage:)();
      outlined init with copy of (CGFloat, AutoplayCandidate)(v22, v16, &_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

      v30 = v22;
      v31 = &_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd;
LABEL_5:
      result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, v31);
      break;
    default:

      IconButton.init(config:action:)();
      (*(v12 + 16))(v19, v14, v11);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<()> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVyytGMd);
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of (CGFloat, AutoplayCandidate)(v22, v16, &_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd);
      result = (*(v12 + 8))(v14, v11);
      break;
  }

  return result;
}

{
  v38 = a3;
  v31 = a2;
  v42 = a4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit21CallControlTextButtonVAA13_OffsetEffectVGMd);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v31 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextH0VAA13_OffsetEffectVG_GMd);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v31 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA13_OffsetEffectVGGMd);
  MEMORY[0x1EEE9AC00](v41);
  v34 = &v31 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI10IconButtonVySbGMd);
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI10IconButtonVyytGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA7AnyViewV014CommunicationsB010IconButtonVyytGGACyAJySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextJ0VAA13_OffsetEffectVGG_GMd);
  MEMORY[0x1EEE9AC00](v39);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA7AnyViewV014CommunicationsB010IconButtonVyytG_GMd);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v31 - v18);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd);
  v20 = MEMORY[0x1EEE9AC00](v40);
  v22 = &v31 - v21;
  switch(v38)
  {
    case 1:

      IconButton.init(config:action:)();
      v28 = v32;
      v29 = v36;
      (*(v32 + 16))(v7, v10, v36);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<Bool> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVySbGMd);
      lazy protocol witness table accessor for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
      v30 = v34;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of Participant?(v30, v16, &_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA13_OffsetEffectVGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v30, &_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA13_OffsetEffectVGGMd);
      result = (*(v28 + 8))(v10, v29);
      break;
    case 2:
      type metadata accessor for CallControlsTextButtonConfiguration(0);
      lazy protocol witness table accessor for type PreCallButtonsViewModel and conformance PreCallButtonsViewModel(&lazy protocol witness table cache variable for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration, type metadata accessor for CallControlsTextButtonConfiguration);

      v24 = v33;
      Bindable<A>.init(wrappedValue:)();
      *(v24 + *(v37 + 36)) = xmmword_1BC4C92B0;
      outlined init with copy of Participant?(v24, v7, &_s7SwiftUI15ModifiedContentVy15ConversationKit21CallControlTextButtonVAA13_OffsetEffectVGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<Bool> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVySbGMd);
      lazy protocol witness table accessor for type ModifiedContent<CallControlTextButton, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
      v25 = v34;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of Participant?(v25, v16, &_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA13_OffsetEffectVGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA13_OffsetEffectVGGMd);
      v26 = v24;
      v27 = &_s7SwiftUI15ModifiedContentVy15ConversationKit21CallControlTextButtonVAA13_OffsetEffectVGMd;
      goto LABEL_5;
    case 3:
      *v19 = a1(v20);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<()> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVyytGMd);

      _ConditionalContent<>.init(storage:)();
      outlined init with copy of Participant?(v22, v16, &_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();

      v26 = v22;
      v27 = &_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd;
LABEL_5:
      result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, v27);
      break;
    default:

      IconButton.init(config:action:)();
      (*(v12 + 16))(v19, v14, v11);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<()> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVyytGMd);
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of Participant?(v22, v16, &_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _OffsetEffect>> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd);
      result = (*(v12 + 8))(v14, v11);
      break;
  }

  return result;
}

uint64_t closure #1 in InCallViewModelHolder.build(_:)(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  return (*(*(v2 + 8) + 16))(v1);
}

uint64_t closure #2 in InCallViewModelHolder.build(_:)(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  return (*(*(v2 + 8) + 24))(v1);
}

uint64_t protocol witness for Identifiable.id.getter in conformance InCallViewModelHolder@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

double closure #1 in CallControlsType.controlView()()
{
  ViewDimensions.height.getter();
  v1 = v0;
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  return (v1 - v2) * 0.5;
}

uint64_t type metadata accessor for CallControlsMenuView()
{
  result = type metadata singleton initialization cache for CallControlsMenuView;
  if (!type metadata singleton initialization cache for CallControlsMenuView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of CallControlsMenuView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallControlsMenuView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CallControlsMenuView.body.getter()
{
  type metadata accessor for CallControlsMenuView();

  return closure #1 in CallControlsMenuView.body.getter();
}

void type metadata completion function for CallControlsMenuView()
{
  type metadata accessor for Bindable<CallControlsMenuViewModel>(319, &lazy cache variable for type metadata for Bindable<CallControlsMenuViewModel>, type metadata accessor for CallControlsMenuViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Bindable<CallControlsMenuViewModel>(319, &lazy cache variable for type metadata for MoreMenuButtonViewModel?, type metadata accessor for MoreMenuButtonViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [InCallViewModelHolder]();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Bindable<CallControlsMenuViewModel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for [InCallViewModelHolder]()
{
  if (!lazy cache variable for type metadata for [InCallViewModelHolder])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [InCallViewModelHolder]);
    }
  }
}

uint64_t type metadata instantiation function for CallControlsMenuView.StackView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t storeEnumTagSinglePayload for InCallViewModelHolder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA25_AlignmentWritingModifierVGGGAA017_AppearanceActionR0VGAWGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA25_AlignmentWritingModifierVGGGAA017_AppearanceActionR0VGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA25_AlignmentWritingModifierVGGGAA017_AppearanceActionR0VGAWGMR, lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier>, _AppearanceActionModifier>? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA7AnyViewV014CommunicationsB010IconButtonVyytGGACyAHySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextI0VAA25_AlignmentWritingModifierVGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA7AnyViewV014CommunicationsB010IconButtonVyytGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<()> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVyytGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AnyView, IconButton<()>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy014CommunicationsB010IconButtonVySbGAA08ModifiedD0Vy15ConversationKit015CallControlTextG0VAA25_AlignmentWritingModifierVGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<Bool> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVySbGMd);
    lazy protocol witness table accessor for type ModifiedContent<CallControlTextButton, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CallControlTextButton, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CallControlTextButton, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CallControlTextButton, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit21CallControlTextButtonVAA25_AlignmentWritingModifierVGMd);
    _s15ConversationKit25CallControlsMenuViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CallControlTextButton and conformance CallControlTextButton, type metadata accessor for CallControlTextButton);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CallControlTextButton, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallViewModelHolder and conformance InCallViewModelHolder()
{
  result = lazy protocol witness table cache variable for type InCallViewModelHolder and conformance InCallViewModelHolder;
  if (!lazy protocol witness table cache variable for type InCallViewModelHolder and conformance InCallViewModelHolder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallViewModelHolder and conformance InCallViewModelHolder);
  }

  return result;
}

uint64_t outlined consume of CallControlsType(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 4u)
  {
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<AnyView, IconButton<()>>, _ConditionalContent<IconButton<Bool>, ModifiedContent<CallControlTextButton, _AlignmentWritingModifier>>>, _AppearanceActionModifier>, _AppearanceActionModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA7AnyViewV014CommunicationsB010IconButtonVyytGGAEyAJySbGACy15ConversationKit015CallControlTextJ0VAA25_AlignmentWritingModifierVGGGAA017_AppearanceActionR0VGAWGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s15ConversationKit25CallControlsMenuViewModelCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall InterfaceOrientationBridgingViewController.viewDidLoad()()
{
  v2 = v0;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for InterfaceOrientationBridgingViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v5 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_1(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
  v6 = Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v1, v3);
  *&v2[OBJC_IVAR____TtC15ConversationKit42InterfaceOrientationBridgingViewController_orientationSubscription] = v6;
}

void closure #1 in InterfaceOrientationBridgingViewController.viewDidLoad()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    InterfaceOrientationBridgingViewController.updateInterfaceOrientationTraitIfNecessary()();
  }
}

void InterfaceOrientationBridgingViewController.updateInterfaceOrientationTraitIfNecessary()()
{
  v1 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];

    if (v4 && (v5 = [v4 windowScene], v4, v5))
    {
      [v5 interfaceOrientation];
      UIViewController.traitOverrides.getter();
      lazy protocol witness table accessor for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait();
      OUTLINED_FUNCTION_0_81();
      _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_1(v6, v7);
      OUTLINED_FUNCTION_2_72();
      UIViewController.traitOverrides.setter();
    }

    else
    {
      UIViewController.traitOverrides.getter();
      lazy protocol witness table accessor for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait();
      OUTLINED_FUNCTION_0_81();
      _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_1(v8, v9);
      OUTLINED_FUNCTION_2_72();
      UIViewController.traitOverrides.setter();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t UIMutableTraits.interfaceOrientation.setter()
{
  lazy protocol witness table accessor for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait();
  OUTLINED_FUNCTION_0_81();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_1(v0, v1);
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait()
{
  result = lazy protocol witness table cache variable for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait;
  if (!lazy protocol witness table cache variable for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait);
  }

  return result;
}

id InterfaceOrientationBridgingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id InterfaceOrientationBridgingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC15ConversationKit42InterfaceOrientationBridgingViewController_orientationSubscription] = 0;
  if (a2)
  {
    v5 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for InterfaceOrientationBridgingViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id InterfaceOrientationBridgingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InterfaceOrientationBridgingViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15ConversationKit42InterfaceOrientationBridgingViewController_orientationSubscription] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InterfaceOrientationBridgingViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id InterfaceOrientationBridgingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InterfaceOrientationBridgingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UITraitCollection.interfaceOrientation.getter()
{
  lazy protocol witness table accessor for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait();
  OUTLINED_FUNCTION_0_81();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_1(v0, v1);
  OUTLINED_FUNCTION_3_69();
  UITraitCollection.subscript.getter();
  return v3;
}

uint64_t UIMutableTraits.interfaceOrientation.getter()
{
  lazy protocol witness table accessor for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait();
  OUTLINED_FUNCTION_0_81();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_1(v0, v1);
  OUTLINED_FUNCTION_3_69();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v3;
}

uint64_t key path getter for UIMutableTraits.interfaceOrientation : <A>A@<X0>(uint64_t *a1@<X8>)
{
  result = UIMutableTraits.interfaceOrientation.getter();
  *a1 = result;
  return result;
}

uint64_t (*UIMutableTraits.interfaceOrientation.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = UIMutableTraits.interfaceOrientation.getter();
  return UIMutableTraits.interfaceOrientation.modify;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance InterfaceOrientationKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_1(&lazy protocol witness table cache variable for type UIInterfaceOrientation and conformance UIInterfaceOrientation, type metadata accessor for UIInterfaceOrientation);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.interfaceOrientation.getter()
{
  lazy protocol witness table accessor for type InterfaceOrientationKey and conformance InterfaceOrientationKey();
  OUTLINED_FUNCTION_3_69();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t lazy protocol witness table accessor for type InterfaceOrientationKey and conformance InterfaceOrientationKey()
{
  result = lazy protocol witness table cache variable for type InterfaceOrientationKey and conformance InterfaceOrientationKey;
  if (!lazy protocol witness table cache variable for type InterfaceOrientationKey and conformance InterfaceOrientationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceOrientationKey and conformance InterfaceOrientationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InterfaceOrientationKey and conformance InterfaceOrientationKey;
  if (!lazy protocol witness table cache variable for type InterfaceOrientationKey and conformance InterfaceOrientationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceOrientationKey and conformance InterfaceOrientationKey);
  }

  return result;
}

uint64_t (*EnvironmentValues.interfaceOrientation.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = lazy protocol witness table accessor for type InterfaceOrientationKey and conformance InterfaceOrientationKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.interfaceOrientation.modify;
}

uint64_t static InterfaceOrientationKey.read(from:)()
{
  lazy protocol witness table accessor for type InterfaceOrientationTrait and conformance InterfaceOrientationTrait();
  OUTLINED_FUNCTION_0_81();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_1(v0, v1);
  OUTLINED_FUNCTION_3_69();
  UITraitCollection.subscript.getter();
  return v3;
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance InterfaceOrientationKey@<X0>(uint64_t *a1@<X8>)
{
  result = static InterfaceOrientationKey.read(from:)();
  *a1 = result;
  return result;
}

id EntitlementsChecker.entitlements(for:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LSBundleRecord();

  result = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  if (!v2)
  {
    v6 = result;
    v7 = [result entitlements];

    return v7;
  }

  return result;
}

id @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1BFB209B0]();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

id EntitlementsChecker.lookupBundleIdentifierSupported(_:entitlement:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;

  result = specialized EntitlementsChecker.tryLog<A>(_:_:function:line:)("Entitlements", 12, 2, 0xD00000000000002FLL, 0x80000001BC4FD640, 53, v5, v5, a1, a2);
  if (result)
  {
    v11 = result;
    v12._countAndFlagsBits = a3;
    v12._object = a4;
    v13 = LSPropertyList.contains(entitlement:)(v12);

    return v13;
  }

  return result;
}

uint64_t EntitlementsChecker.supportsCollaboration(bundleIdentifier:bundleRecord:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = [*(v3 + 16) collaborateTogetherEnabled];
  if (result)
  {
    if (one-time initialization token for firstPartyCollaborationApps != -1)
    {
      swift_once();
    }

    if (specialized Set.contains(_:)(a1, a2, static EntitlementsChecker.firstPartyCollaborationApps))
    {
      return 1;
    }

    else if (a3)
    {
      v8 = a3;
      v9 = [v8 entitlements];
      v10._object = 0x80000001BC4FD5B0;
      v10._countAndFlagsBits = 0xD000000000000031;
      v11 = LSPropertyList.contains(entitlement:)(v10);

      return v11;
    }

    else
    {

      return EntitlementsChecker.lookupBundleIdentifierSupported(_:entitlement:)(a1, a2, 0xD000000000000031, 0x80000001BC4FD5B0);
    }
  }

  return result;
}

id specialized EntitlementsChecker.tryLog<A>(_:_:function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = EntitlementsChecker.entitlements(for:)(a9, a10);

  return v10;
}

uint64_t EntitlementsChecker.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  return v0;
}

unint64_t type metadata accessor for LSBundleRecord()
{
  result = lazy cache variable for type metadata for LSBundleRecord;
  if (!lazy cache variable for type metadata for LSBundleRecord)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LSBundleRecord);
  }

  return result;
}

void *CallRecordingController.callUniqueProxyIdentifier.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = [Strong uniqueProxyIdentifier];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v1;
}

uint64_t key path getter for CallRecordingController.presenter : CallRecordingController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

void key path setter for CallRecordingController.presenter : CallRecordingController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CallRecordingController.presenter.setter(v1);
}

void CallRecordingController.presenter.setter(void *a1)
{
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

id CallRecordingController.educationScreen.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit23CallRecordingController____lazy_storage___educationScreen;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit23CallRecordingController____lazy_storage___educationScreen);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit23CallRecordingController____lazy_storage___educationScreen);
  }

  else
  {
    v4 = closure #1 in CallRecordingController.educationScreen.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in CallRecordingController.educationScreen.getter()
{
  type metadata accessor for CallRecordingEducationViewController();
  v0 = CallRecordingEducationViewController.__allocating_init()();
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v3 = swift_unknownObjectRetain();
  v4 = v2(v3, &protocol witness table for CallRecordingController);
  (*((*v1 & *v0) + 0x90))(v4);
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [v5 setModalPresentationStyle_];

  return v5;
}

id CallRecordingController.init(call:entryPointViewModel:recordingIndicatorViewModel:presenter:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC15ConversationKit23CallRecordingController_recordingIndicatorViewModel;
  *&v6[OBJC_IVAR____TtC15ConversationKit23CallRecordingController_recordingIndicatorViewModel] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit23CallRecordingController____lazy_storage___educationScreen] = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR____TtC15ConversationKit23CallRecordingController_entryPointViewModel] = a3;
  v12 = *&v6[v11];
  *&v6[v11] = a4;

  v13 = a4;

  if (a1)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v14 = 0;
  }

  swift_unknownObjectWeakAssign();

  type metadata accessor for FTMenuItem();
  *&v6[OBJC_IVAR____TtC15ConversationKit23CallRecordingController_menuItem] = static FTMenuItem.callRecordingRow(isSessionActive:dismissOnTap:rowAction:stopAction:)();
  v17.receiver = v6;
  v17.super_class = type metadata accessor for CallRecordingController();
  v15 = objc_msgSendSuper2(&v17, sel_init);

  CallRecordingController.isRecordingRequested()();
  dispatch thunk of FTMenuItem.isSessionActive.setter();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of FTMenuItem.rowAction.setter();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of FTMenuItem.stopAction.setter();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *(a3 + 24) = &protocol witness table for CallRecordingController;
  swift_unknownObjectWeakAssign();

  return v15;
}

void closure #1 in CallRecordingController.init(call:entryPointViewModel:recordingIndicatorViewModel:presenter:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x100))();
  }
}

void closure #2 in CallRecordingController.init(call:entryPointViewModel:recordingIndicatorViewModel:presenter:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x108))();
  }
}

Swift::Void __swiftcall CallRecordingController.tappedContinue()()
{
  v1 = v0;
  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_8_49(v2, static Logger.recordingSession);
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v4))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Education screen: Tapped continue recording");
    OUTLINED_FUNCTION_27();
  }

  CallRecordingButtonViewModel.educationScreenShown.setter(1);
  v7 = CallRecordingController.educationScreen.getter();
  OUTLINED_FUNCTION_20();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v11[4] = partial apply for closure #1 in CallRecordingController.tappedContinue();
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_24;
  v9 = _Block_copy(v11);
  v10 = v1;

  [v7 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

Swift::Void __swiftcall CallRecordingController.tappedCancel()()
{
  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_8_49(v0, static Logger.recordingSession);
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v2))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v3, v4, "Education screen: Tapped cancel recording");
    OUTLINED_FUNCTION_27();
  }

  CallRecordingButtonViewModel.educationScreenShown.setter(0);
  v5 = CallRecordingController.educationScreen.getter();
  [v5 dismissViewControllerAnimated:1 completion:0];
}

Swift::Void __swiftcall CallRecordingController.presentEducationScreen()()
{
  v1 = v0;
  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_8_49(v2, static Logger.recordingSession);
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v4))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Presenting education screen");
    OUTLINED_FUNCTION_27();
  }

  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  v8 = v7();
  if (v8)
  {
    v9 = v8;
    v10 = CallRecordingController.educationScreen.getter();
    v11 = v7();
    [v9 showDetailViewController:v10 sender:v11];
  }
}

Swift::Void __swiftcall CallRecordingController.startRecording()()
{
  if (TUIsCallRecordingStorageDestinationApplicationAvailable())
  {
    if (CallRecordingController.isRecordingRequested()())
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      oslog = OUTLINED_FUNCTION_8_49(v1, static Logger.conversationKit);
      v2 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v2))
      {
        v3 = OUTLINED_FUNCTION_33();
        *v3 = 0;
        _os_log_impl(&dword_1BBC58000, oslog, v2, "Skip start recording. Already requested.", v3, 2u);
        OUTLINED_FUNCTION_27();
      }
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit23CallRecordingController_entryPointViewModel);
      swift_beginAccess();
      if (*(v4 + 60) == 3)
      {
        CallRecordingButtonViewModel.startRecordingButtonTapped()();
      }
    }
  }

  else
  {
    v6[0] = 2;
    CallRecordingController.showAlert(error:)(v6);
  }
}

Swift::Void __swiftcall CallRecordingController.stopRecording()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit23CallRecordingController_recordingIndicatorViewModel);
  if (v1)
  {
    v2 = v1;
    CallRecordingViewModel.tapStopRecording()();
  }
}

void CallRecordingController.showAlert(error:)(_BYTE *a1)
{
  if (*a1 == 2)
  {
    v2 = v1;
    String.localizedCallRecording.getter();
    v25 = String.init(format:_:)();
    v4 = v3;

    String.localizedCallRecording.getter();
    v5 = String.init(format:_:)();
    v7 = v6;

    String.localizedCallRecording.getter();
    v8 = String.init(format:_:)();
    v10 = v9;

    String.localizedCallRecording.getter();
    v11 = String.init(format:_:)();
    v13 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    *(inited + 32) = v8;
    *(inited + 40) = v10;
    *(inited + 48) = v11;
    *(inited + 56) = v13;
    if (one-time initialization token for recordingSession != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v15 = type metadata accessor for Logger();
    v16 = OUTLINED_FUNCTION_8_49(v15, static Logger.recordingSession);
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_33();
      *v18 = 0;
      _os_log_impl(&dword_1BBC58000, v16, v17, "Showing alert for Notes app not installed.", v18, 2u);
      OUTLINED_FUNCTION_27();
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);

    v19 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v25, v4, v5, v7, 1);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v20 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();

    swift_setDeallocating();

    specialized _ContiguousArrayStorage.__deallocating_deinit();
    OUTLINED_FUNCTION_13_21();
    v21 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
    [v19 addAction_];
    [v19 addAction_];
    v22 = [v19 setPreferredAction_];
    v23 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v22);
    if (v23)
    {
      v24 = v23;
      [v23 presentViewController:v19 animated:1 completion:0];
    }
  }
}

void closure #1 in CallRecordingController.showAlert(error:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CallRecordingController.openNotesInAppStore()();
  }
}

void CallRecordingController.openNotesInAppStore()()
{
  v0 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);

  v37 = 0xD000000000000017;
  v38 = 0x80000001BC4FD750;
  static Locale.current.getter();
  v15 = Locale.identifier.getter();
  v17 = v16;
  (*(v2 + 8))(v5, v0);
  MEMORY[0x1BFB20B10](v15, v17);

  MEMORY[0x1BFB20B10](0xD000000000000017, 0x80000001BC4FD770);
  URL.init(string:)();

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of URL?(v8);
    if (one-time initialization token for recordingSession != -1)
    {
      OUTLINED_FUNCTION_1_10();
    }

    v18 = type metadata accessor for Logger();
    v19 = OUTLINED_FUNCTION_8_49(v18, static Logger.recordingSession);
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_33();
      *v21 = 0;
      _os_log_impl(&dword_1BBC58000, v19, v20, "Helper app not installed. Unable to show alert due to invalid URL.", v21, 2u);
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    v22 = objc_opt_self();
    v23 = [v22 sharedApplication];
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    v27 = [v23 canOpenURL_];

    if (v27)
    {
      v28 = [v22 sharedApplication];
      URL._bridgeToObjectiveC()(v29);
      v31 = v30;
      type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
      lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey();
      Dictionary.init(dictionaryLiteral:)();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v28 openURL:v31 options:isa completionHandler:0];
    }

    else
    {
      if (one-time initialization token for recordingSession != -1)
      {
        OUTLINED_FUNCTION_1_10();
      }

      v33 = type metadata accessor for Logger();
      v34 = OUTLINED_FUNCTION_8_49(v33, static Logger.recordingSession);
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_33();
        *v36 = 0;
        _os_log_impl(&dword_1BBC58000, v34, v35, "UIApplication cannot open URL.", v36, 2u);
        OUTLINED_FUNCTION_27();
      }
    }

    (*(v11 + 8))(v14, v9);
  }
}

void CallRecordingController.setRecordingIndicatorViewModel(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit23CallRecordingController_recordingIndicatorViewModel);
  *(v1 + OBJC_IVAR____TtC15ConversationKit23CallRecordingController_recordingIndicatorViewModel) = a1;
  v2 = a1;
}

uint64_t CallRecordingController.isRecordingRequested()()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if ([result isRecording])
    {

      return 1;
    }

    else
    {
      v2 = [v1 recordingSession];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 recordingState];

        return v4 - 6 < 0xFFFFFFFE;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t CallRecordingController.createMenuItem()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  if (![Strong isRecordingAllowed])
  {

    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit23CallRecordingController_menuItem);
  CallRecordingController.isRecordingRequested()();
  dispatch thunk of FTMenuItem.isSessionActive.setter();

  return v3;
}

id CallRecordingController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallRecordingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallRecordingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey()
{
  result = lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey;
  if (!lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey)
  {
    type metadata accessor for UIApplicationOpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey);
  }

  return result;
}

uint64_t Image.init(describer:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v2);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  v9 = specialized Image.init(describer:)(v7, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t specialized Image.init(describer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 32))(v8, v6);
  (*(a3 + 8))(&v11, a2, a3);

  outlined destroy of SymbolImageDescription(&v11);
  v9 = Image.init(systemName:)();
  (*(v5 + 8))(v8, a2);
  return v9;
}

uint64_t MessagesGroup.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MessagesGroup.uuid.setter(uint64_t a1)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t MessagesGroup.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagesGroup() + 20));

  return v1;
}

uint64_t type metadata accessor for MessagesGroup()
{
  result = type metadata singleton initialization cache for MessagesGroup;
  if (!type metadata singleton initialization cache for MessagesGroup)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessagesGroup.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessagesGroup() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessagesGroup.init(uuid:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for MessagesGroup();
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

ConversationKit::CallRecordingButtonConfiguration __swiftcall CallRecordingButtonConfiguration.init(isEnabled:isHidden:)(Swift::Bool isEnabled, Swift::Bool isHidden)
{
  *v2 = isEnabled;
  v2[1] = isHidden;
  result.isEnabled = isEnabled;
  return result;
}

uint64_t getEnumTagSinglePayload for CallRecordingButtonConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CallRecordingButtonConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t CallScreeningViewModelComposer.composeViewModel()()
{
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for viewModel()
{
  result = closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel();
  static CallScreeningViewModelComposer.viewModel = result;
  return result;
}

{
  type metadata accessor for TranscriptionViewModel(0);
  swift_allocObject();
  result = TranscriptionViewModel.init(config:)(0x697263736E617254, 0xEC000000676E6962);
  static TranscriptionView_Previews.viewModel = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = static TranscriptionViewModel.Configuration.default;
  type metadata accessor for TranscriptionViewModel(0);
  swift_allocObject();

  v4 = TranscriptionViewModel.init(config:)(v3, *(&v3 + 1));
  static TaskPriority.userInitiated.getter();
  v5 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  return v4;
}

__int128 *TranscriptionViewModel.Configuration.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_8_50();
  }

  return &static TranscriptionViewModel.Configuration.default;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySbs5NeverOGGMd);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySbs5NeverOG_GMd);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v8;
  v4[14] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel, v8, v7);
}

uint64_t closure #1 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel()
{
  OUTLINED_FUNCTION_21_0();
  type metadata accessor for PhoneLockStateObserver();
  v1 = static PhoneLockStateObserver.shared.getter();
  v2 = PhoneLockStateObserver.isLocked.getter();

  v0[2] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  v4 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  MEMORY[0x1BFB1DE80](v3, v4);

  OUTLINED_FUNCTION_17_29();
  v5 = OUTLINED_FUNCTION_44_0();
  v6(v5);
  v0[15] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Bool, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySbs5NeverOG_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[16] = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_3_70(v7);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6D8C8](v9);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v0;

  v5 = *(v2 + 120);
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

    v8 = closure #1 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;
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

    v8 = closure #1 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  OUTLINED_FUNCTION_24_0();

  *(v0 + 145) = *(v0 + 144);
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel, v1, v2);
}

{
  OUTLINED_FUNCTION_9();
  if (*(v0 + 145) == 2)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    OUTLINED_FUNCTION_13();

    return v1();
  }

  else
  {
    TranscriptionViewModel.hidePrivacySensitiveContent.setter();
    *(v0 + 120) = static MainActor.shared.getter();
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Bool, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySbs5NeverOG_GMd);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_4();
    *(v0 + 128) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_3_70();

    return MEMORY[0x1EEE6D8C8](v5);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 24) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = OUTLINED_FUNCTION_31_9();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySS_GGMd);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySS_G_GMd);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v9;
  v4[27] = v8;

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel, v9, v8);
}

uint64_t closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  OUTLINED_FUNCTION_7_47(&lazy protocol witness table cache variable for type Published<String>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySS_GMd);
  OUTLINED_FUNCTION_21_19();
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_17_29();
  v4 = OUTLINED_FUNCTION_44_0();
  v5(v4);
  v0[28] = 0;
  v0[29] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<String>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySS_G_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[30] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_2_73(v6);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6D8C8](v8);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v0;

  v5 = *(v2 + 232);
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

    v8 = closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;
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

    v8 = closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  OUTLINED_FUNCTION_24_0();

  *(v0 + 256) = *(v0 + 72);
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel, v1, v2);
}

{
  v1 = v0[33];
  if (v1)
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_9_6();
    }

    if ((*(*static CallScreeningRTTHelper.shared + 192))(v0[32], v1))
    {
      v2 = v0[32];
      v4 = v0[13];
      v3 = v0[14];
      v5 = v0[12];
      v6 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);

      v7 = static MainActor.shared.getter();
      v8 = swift_allocObject();
      v9 = MEMORY[0x1E69E85E0];
      v8[2] = v7;
      v8[3] = v9;
      v8[4] = v5;
      v8[5] = v2;
      v8[6] = v1;
      outlined init with copy of TaskPriority?(v3, v4);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v6);

      v11 = v0[13];
      if (EnumTagSinglePayload == 1)
      {
        outlined destroy of TapInteractionHandler?(v0[13], &_sScPSgMd);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v6 - 8) + 8))(v11, v6);
      }

      v17 = v8[2];
      swift_unknownObjectRetain();

      if (v17)
      {
        swift_getObjectType();
        v18 = dispatch thunk of Actor.unownedExecutor.getter();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      outlined destroy of TapInteractionHandler?(v0[14], &_sScPSgMd);
      v21 = swift_allocObject();
      *(v21 + 16) = &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;
      *(v21 + 24) = v8;
      if (v20 | v18)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v18;
        v0[5] = v20;
      }

      v16 = swift_task_create();
    }

    else
    {
      v16 = v0[28];

      if (v16)
      {
        MEMORY[0x1BFB21000](v0[28], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
LABEL_20:
        v0[29] = static MainActor.shared.getter();
        OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<String>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySS_G_GMd);
        swift_task_alloc();
        OUTLINED_FUNCTION_14_4();
        v0[30] = v22;
        *v22 = v23;
        v24 = OUTLINED_FUNCTION_2_73();

        return MEMORY[0x1EEE6D8C8](v24);
      }
    }

    v0[28] = v16;
    goto LABEL_20;
  }

  v12 = OUTLINED_FUNCTION_44_0();
  v13(v12);

  OUTLINED_FUNCTION_13();

  return v14();
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 88) = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = OUTLINED_FUNCTION_31_9();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t closure #1 in closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
  v6[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySay15ConversationKit22TranscriptionViewModelC7CaptionVG_GGMd);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15ConversationKit22TranscriptionViewModelC7CaptionVG_GMd);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay15ConversationKit22TranscriptionViewModelC7CaptionVG_G_GMd);
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for MainActor();
  v6[21] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[22] = v11;
  v6[23] = v10;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel, v11, v10);
}

uint64_t closure #1 in closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15ConversationKit22TranscriptionViewModelC7CaptionVGGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  OUTLINED_FUNCTION_7_47(&lazy protocol witness table cache variable for type Published<[TranscriptionViewModel.Caption]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay15ConversationKit22TranscriptionViewModelC7CaptionVG_GMd);
  OUTLINED_FUNCTION_21_19();
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_17_29();
  v4 = OUTLINED_FUNCTION_44_0();
  v5(v4);
  v0[24] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<[TranscriptionViewModel.Caption]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay15ConversationKit22TranscriptionViewModelC7CaptionVG_G_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[25] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_4_51(v6);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6D8C8](v8);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 208) = v0;

  v5 = *(v2 + 192);
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

    v8 = closure #1 in closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;
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

    v8 = closure #1 in closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  OUTLINED_FUNCTION_24_0();

  v0[27] = v0[5];
  v1 = v0[22];
  v2 = v0[23];

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel, v1, v2);
}

{
  v1 = v0[27];
  if (v1)
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_9_6();
    }

    v2 = static CallScreeningRTTHelper.shared;
    v3 = *(v1 + 16);
    v4 = v0[10];
    if (v3)
    {
      v5 = v3 - 1;
      v6 = type metadata accessor for TranscriptionViewModel.Caption(0);
      outlined init with copy of TranscriptionViewModel.Caption(v1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v4);

      v7 = v4;
      v8 = 0;
      v9 = v6;
    }

    else
    {

      v9 = type metadata accessor for TranscriptionViewModel.Caption(0);
      v7 = v4;
      v8 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
    v12 = v0[10];
    (*(*v2 + 176))(v12, v0[8], v0[9]);
    outlined destroy of TapInteractionHandler?(v12, &_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
    v0[24] = static MainActor.shared.getter();
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<[TranscriptionViewModel.Caption]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySay15ConversationKit22TranscriptionViewModelC7CaptionVG_G_GMd);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_4();
    v0[25] = v13;
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_4_51();

    return MEMORY[0x1EEE6D8C8](v15);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 48) = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = OUTLINED_FUNCTION_31_9();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void one-time initialization function for waitingForTranscriptionText()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC4FD7D0;
  v2._countAndFlagsBits = 0xD000000000000019;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText = v4;
}

__int128 *TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText.unsafeMutableAddressor()
{
  if (one-time initialization token for waitingForTranscriptionText != -1)
  {
    OUTLINED_FUNCTION_1_75();
  }

  return &static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText;
}

uint64_t static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText.getter()
{
  if (one-time initialization token for waitingForTranscriptionText != -1)
  {
    OUTLINED_FUNCTION_1_75();
  }

  swift_beginAccess();
  v0 = static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText;

  return v0;
}

uint64_t static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for waitingForTranscriptionText != -1)
  {
    OUTLINED_FUNCTION_1_75();
  }

  swift_beginAccess();
  *&static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText = a1;
  *(&static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText + 1) = a2;
}

uint64_t (*static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText.modify())()
{
  if (one-time initialization token for waitingForTranscriptionText != -1)
  {
    OUTLINED_FUNCTION_1_75();
  }

  swift_beginAccess();
  return CallRecordingPillViewController.cancellable.modify;
}

uint64_t key path getter for static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText : TranscriptionViewModel.Configuration.Strings.Type@<X0>(void *a1@<X8>)
{
  TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *(&static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText + 1);
  *a1 = static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText;
  a1[1] = v2;
}

uint64_t key path setter for static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText : TranscriptionViewModel.Configuration.Strings.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText.unsafeMutableAddressor();
  swift_beginAccess();
  *&static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText = v2;
  *(&static TranscriptionViewModel.Configuration.Strings.waitingForTranscriptionText + 1) = v1;
}

uint64_t static TranscriptionViewModel.Configuration.default.getter()
{
  if (one-time initialization token for default != -1)
  {
    OUTLINED_FUNCTION_8_50();
  }

  v0 = static TranscriptionViewModel.Configuration.default;

  return v0;
}

uint64_t partial apply for closure #1 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_0(v3);

  return closure #1 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel(v5, v6, v7, v2);
}

uint64_t partial apply for closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_0(v3);

  return closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel(v5, v6, v7, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_0(v5);

  return closure #1 in closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel(v7, v8, v9, v2, v3, v4);
}

uint64_t outlined init with copy of TranscriptionViewModel.Caption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionViewModel.Caption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *PushToTalkView.leaveLabelButtonView.getter(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v10 = v4;
    v11 = *(v4 + *a2);
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 conversationKit];
    OUTLINED_FUNCTION_5_5();
    v15.super.isa = v14;
    v18 = OUTLINED_FUNCTION_17_0(a3, a4, v16, v17, v15);
    v20 = v19;

    v21 = objc_allocWithZone(type metadata accessor for PushToTalkLabelButtonView());
    v22 = PushToTalkLabelButtonView.init(button:labelText:)(v13, v18, v20);
    v23 = *(v10 + v5);
    *(v10 + v5) = v22;
    v7 = v22;

    v6 = 0;
  }

  v24 = v6;
  return v7;
}

char *PushToTalkView.init(conversationControlsManager:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v73 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd);
  OUTLINED_FUNCTION_1();
  v78 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v73 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0K11ButtonStateO_GSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v82 = v10;
  v83 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v73 - v11;
  v12 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView;
  type metadata accessor for PushToTalkSessionDetailsView();
  *&v1[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC15ConversationKit14PushToTalkView____lazy_storage___leaveLabelButtonView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit14PushToTalkView____lazy_storage___talkLabelButtonView] = 0;
  v13 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_leftMarginLayoutGuide;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v14 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_rightMarginLayoutGuide;
  *&v1[v14] = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v15 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_centerContentLayoutGuide;
  *&v1[v15] = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  *&v1[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_cancellables] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_alwaysOnDisplayDimmingView] = 0;
  v16 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_topDetailContainerMarginConstant;
  v17 = objc_opt_self();
  v18 = [v17 mainScreen];
  [v18 bounds];
  v20 = v19;

  *&v2[v16] = v20 * 0.09;
  v21 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_bottomButtonContainerMarginConstant;
  v22 = [v17 mainScreen];
  [v22 bounds];
  v24 = v23;

  *&v2[v21] = v24 * 0.07;
  v25 = *MEMORY[0x1E69E7D40] & *a1;
  v75 = *(v25 + 0x7C8);
  v76 = v25 + 1992;
  *&v2[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_viewModel] = v75();
  v86 = &type metadata for SymbolImageDescribers.ConversationControls;
  v87 = &protocol witness table for SymbolImageDescribers.ConversationControls;
  LOBYTE(aBlock[0]) = 20;
  if (one-time initialization token for pttLeaveButtonFullScreen != -1)
  {
    swift_once();
  }

  v26 = objc_allocWithZone(type metadata accessor for CircularButton());

  v27 = CircularButton.init(symbol:stateConfiguration:context:)();
  v28 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_leaveButton;
  *&v2[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_leaveButton] = v27;
  [v27 addTarget:a1 action:sel_pttLeaveButtonTappedWithButton_ forControlEvents:64];
  v29 = *&v2[v28];
  v87 = closure #1 in PushToTalkView.init(conversationControlsManager:);
  v88 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v86 = &block_descriptor_25;
  v30 = _Block_copy(aBlock);
  v31 = v29;
  [v31 setConfigurationUpdateHandler_];
  _Block_release(v30);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x657661654C747470, 0xEE006E6F74747542, *&v2[v28]);
  v32 = *&v2[v28];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 conversationKit];
  OUTLINED_FUNCTION_24_3();
  v36.super.isa = v35;
  v39 = OUTLINED_FUNCTION_17_0(v37, 0xE500000000000000, v38, 0xEF74694B6E6F6974, v36);
  v40 = a1;
  v42 = v41;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v39, v42, v34);
  v74 = v40;
  v43 = v75;
  v44 = v75();
  v45 = objc_allocWithZone(type metadata accessor for PushToTalkTalkCircularButton());
  v46 = PushToTalkTalkCircularButton.init(viewModel:)(v44);
  v47 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_talkButton;
  *&v2[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_talkButton] = v46;
  outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x426B6C6154747470, 0xED00006E6F747475, v46);
  v48 = *&v2[v47];
  v49 = [v33 conversationKit];
  OUTLINED_FUNCTION_24_3();
  v50.super.isa = v49;
  v54 = OUTLINED_FUNCTION_17_0(v51, v52, v53, 0xEF74694B6E6F6974, v50);
  v56 = v55;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v54, v56, v48);
  v57 = type metadata accessor for PushToTalkView();
  v84.receiver = v2;
  v84.super_class = v57;
  v58 = objc_msgSendSuper2(&v84, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v86 = v57;
  aBlock[0] = v58;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v59 = v58;
  v60 = @nonobjc UITapGestureRecognizer.init(target:action:)(aBlock, sel_openPTTApp_);
  v61 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView;
  v62 = (v43)([*(*&v59[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView] + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton) addGestureRecognizer_]);
  v63 = v77;
  (*(*v62 + 136))(v62);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v64 = static OS_dispatch_queue.main.getter();
  aBlock[0] = v64;
  v65 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v66 = v79;
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v65);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v67 = v80;
  v68 = v81;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v66, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v78 + 8))(v63, v67);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<PushToTalkViewModel.TalkButtonState>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0K11ButtonStateO_GSo17OS_dispatch_queueCGMd);
  v69 = v83;
  Publisher<>.sink(receiveValue:)();

  (*(v82 + 8))(v68, v69);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  [v59 addLayoutGuide_];
  [v59 addLayoutGuide_];
  [v59 addLayoutGuide_];
  [v59 addSubview_];
  v70 = PushToTalkView.leaveLabelButtonView.getter();
  OUTLINED_FUNCTION_14_24(v70);

  v71 = PushToTalkView.talkLabelButtonView.getter();
  OUTLINED_FUNCTION_14_24(v71);

  PushToTalkView.setupLayoutGuides()();
  PushToTalkView.setupConstraints()();

  return v59;
}

uint64_t closure #1 in PushToTalkView.init(conversationControlsManager:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v18 - v10;
  if ([a1 isEnabled])
  {
    if (one-time initialization token for pttButtonSymbol != -1)
    {
      swift_once();
    }

    v12 = &static Colors.PTT.pttButtonSymbol;
  }

  else
  {
    if (one-time initialization token for pttButtonDisabledSymbol != -1)
    {
      swift_once();
    }

    v12 = &static Colors.PTT.pttButtonDisabledSymbol;
  }

  v13 = *v12;
  UIButton.configuration.getter();
  v14 = type metadata accessor for UIButton.Configuration();
  if (!__swift_getEnumTagSinglePayload(v11, 1, v14))
  {
    *(swift_allocObject() + 16) = v13;
    v15 = v13;
    UIConfigurationColorTransformer.init(_:)();
    v16 = type metadata accessor for UIConfigurationColorTransformer();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v16);
    UIButton.Configuration.imageColorTransformer.setter();
  }

  outlined init with copy of UIButton.Configuration?(v11, v7);
  UIButton.configuration.setter();

  return outlined destroy of TapInteractionHandler?(v11, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
}

void closure #2 in PushToTalkView.init(conversationControlsManager:)(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    PushToTalkView.updateUIForTalkButtonState(state:)(v1);
  }
}

id PushToTalkView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView;
  type metadata accessor for PushToTalkSessionDetailsView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView____lazy_storage___leaveLabelButtonView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView____lazy_storage___talkLabelButtonView) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_leftMarginLayoutGuide;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_rightMarginLayoutGuide;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v4 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_centerContentLayoutGuide;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView_alwaysOnDisplayDimmingView) = 0;
  v5 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_topDetailContainerMarginConstant;
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 bounds];
  v9 = v8;

  *(v0 + v5) = v9 * 0.09;
  v10 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_bottomButtonContainerMarginConstant;
  v11 = [v6 mainScreen];
  [v11 bounds];
  v13 = v12;

  *(v0 + v10) = v13 * 0.07;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall PushToTalkView.openPTTApp(_:)(UITapGestureRecognizer *a1)
{
  v2 = (*(**(v1 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView_viewModel) + 160))(a1);
  if (v2)
  {
    v6 = v2;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2A0))();
    v4 = v3;
    ObjectType = swift_getObjectType();
    LOBYTE(v4) = (*(v4 + 464))(ObjectType, v4);
    swift_unknownObjectRelease();
    if (v4)
    {
      ConversationControlsManager.openPTTApp()();
    }
  }
}

uint64_t PushToTalkView.updateUI(call:)(void *a1)
{
  v99 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v98 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v96 = v5 - v4;
  v97 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v95 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v94 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v86 - v14;
  v90 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v89 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v88 = v19 - v18;
  v20 = [a1 channelDisplayName];
  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = [a1 provider];
  v24 = [v23 localizedName];

  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v25;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
  v26 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter([a1 provider]);
  v28 = static UIImageView.appIcon(for:)(v26, v27);

  v29 = [v28 image];

  v30 = a1;
  v100 = v29;
  _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC7pttCall10badgeImageACSg20CommunicationsUICore05BasicI0_p_So7UIImageCSgtcfCTf4enn_nAA0i6CenterI0V_Tt1g5(v30, v29);
  v32 = v31;
  v91 = v22;
  if (v31)
  {
    v33 = [v31 view];
  }

  else
  {
    v33 = 0;
  }

  Hasher.init()();
  v34 = MEMORY[0x1E69E7D40];
  v92 = v32;
  if (v32)
  {
    v35 = v32;
    v36 = [v30 uniqueProxyIdentifierUUID];
    v37 = v88;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = (*((*v34 & *v35) + 0x58))(v37);
    (*(v89 + 8))(v37, v90);
    Hasher._combine(_:)(1u);
    MEMORY[0x1BFB22640](v38);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v39 = [v30 imageURL];
  if (v39)
  {
    v40 = v39;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v12, v41, 1, v42);
  outlined init with take of URL?(v12, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v42) == 1)
  {
    outlined destroy of TapInteractionHandler?(v15, &_s10Foundation3URLVSgMd);
    v43 = &v103;
    Hasher._combine(_:)(0);
  }

  else
  {
    v44 = URL.hashValue.getter();
    (*(*(v42 - 8) + 8))(v15, v42);
    v43 = &v103;
    Hasher._combine(_:)(1u);
    MEMORY[0x1BFB22640](v44);
  }

  v45 = v33;
  v46 = v101;
  v47 = v91;
  String.hash(into:)();
  v48 = Hasher.finalize()();
  if ([v30 status] == 1)
  {
    if ([v30 isSendingTransmission])
    {

      v49 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_5_5();
      v53 = 0xE900000000000067;
LABEL_26:
      v67.super.isa = v43;
      v56 = OUTLINED_FUNCTION_17_0(v50, v53, v51, v52, v67);
      v55 = v68;
LABEL_33:

      goto LABEL_34;
    }

    if ([v30 isReceivingTransmission])
    {

      v57 = [v30 activeRemoteParticipant];
      if (v57)
      {
        v58 = v57;

        v59 = v30;
        v60 = v100;
        v61 = v58;
        v62 = _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC7pttCall23activeRemoteParticipant10badgeImageACSg20CommunicationsUICore05BasicI0_p_So13TUParticipantCSo7UIImageCSgtcfCTf4ennn_nAA0i6CenterI0V_Tt2g5(v59, v61, v29);
        v63 = v62;
        if (v62)
        {
          v64 = v62;
          v65 = [v64 view];

          v45 = v65;
        }

        else
        {

          v45 = 0;
        }

        v69 = MEMORY[0x1E69E7D40];
        Hasher.init()();
        if (v63)
        {
          v70 = v63;
          v71 = [v59 uniqueProxyIdentifierUUID];
          v72 = v88;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v73 = (*((*v69 & *v70) + 0x58))(v72);
          (*(v89 + 8))(v72, v90);
          Hasher._combine(_:)(1u);
          MEMORY[0x1BFB22640](v73);
        }

        else
        {
          Hasher._combine(_:)(0);
          v70 = 0;
        }

        MEMORY[0x1BFB22640]([v61 hash]);
        v48 = Hasher.finalize()();
        v74 = [v61 name];
        v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v75;
      }

      v43 = [v30 channelDisplayName];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v76;
      v46 = v101;
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v43 = &selRef_fillRule;
  if (![v30 serviceStatus])
  {
LABEL_24:
    v55 = v93;
    v56 = v87;
    goto LABEL_34;
  }

  v54 = [v30 serviceStatus];
  v55 = v93;
  if (v54 == 2 || (v56 = v87, v54 == 1))
  {

    v66 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_5_5();
    goto LABEL_26;
  }

LABEL_34:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v77 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v45;
  *(v79 + 32) = v48;
  *(v79 + 40) = 0;
  *(v79 + 48) = v46;
  *(v79 + 56) = v47;
  *(v79 + 64) = v56;
  *(v79 + 72) = v55;
  aBlock[4] = partial apply for specialized closure #1 in PushToTalkView.updateUI(call:);
  aBlock[5] = v79;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_7;
  v80 = _Block_copy(aBlock);
  v81 = v45;

  v82 = v94;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v83 = v96;
  v84 = v99;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v82, v83, v80);
  _Block_release(v80);

  (*(v98 + 8))(v83, v84);
  return (*(v95 + 8))(v82, v97);
}

void specialized closure #1 in PushToTalkView.updateUI(call:)(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    PushToTalkView.updatePTTSessionDetails(avatar:avatarViewHash:title:subtitle:)(a2, a3, a4 & 1, a5, a6, a7, a8);
  }
}

Swift::Void __swiftcall PushToTalkView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for PushToTalkView();
  objc_msgSendSuper2(&v19, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    v3 = [(objc_class *)isa _backlightLuminance];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 _backlightLuminance];

  if (!isa || v3 != v5)
  {
    v6 = [v1 traitCollection];
    v7 = [v6 _backlightLuminance];

    if (v7 == 1)
    {
      [v1 bounds];
      v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
      v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.75];
      [v12 setBackgroundColor_];

      v14 = OUTLINED_FUNCTION_253();
      [v14 v15];
      v16 = *&v1[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_alwaysOnDisplayDimmingView];
      *&v1[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_alwaysOnDisplayDimmingView] = v12;
      v17 = v12;

      [v1 bringSubviewToFront_];
    }

    else
    {
      v18 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_alwaysOnDisplayDimmingView;
      [*&v1[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_alwaysOnDisplayDimmingView] removeFromSuperview];
      v17 = *&v1[v18];
      *&v1[v18] = 0;
    }
  }
}

void PushToTalkView.updatePTTSessionDetails(avatar:avatarViewHash:title:subtitle:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = ((*((*MEMORY[0x1E69E7D40] & **&v7[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView]) + 0xA8))() == a2) & ~a3;
  if (v14)
  {
    v15 = a3;
  }

  else
  {
    v15 = v13;
  }

  [v7 _removeAllAnimations_];
  v26 = objc_opt_self();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = (*(*static Defaults.shared + 1056))();
  OUTLINED_FUNCTION_20();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = (v15 & 1) == 0;
  *(v18 + 24) = (v15 & 1) == 0;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v32 = partial apply for closure #1 in PushToTalkView.updatePTTSessionDetails(avatar:avatarViewHash:title:subtitle:);
  v33 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed () -> ();
  v31 = &block_descriptor_30_0;
  v20 = _Block_copy(&aBlock);

  OUTLINED_FUNCTION_20();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v19;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  *(v22 + 48) = a3 & 1;
  *(v22 + 56) = a4;
  *(v22 + 64) = a5;
  *(v22 + 72) = a6;
  *(v22 + 80) = a7;
  v32 = partial apply for closure #2 in PushToTalkView.updatePTTSessionDetails(avatar:avatarViewHash:title:subtitle:);
  v33 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v31 = &block_descriptor_37_0;
  v23 = _Block_copy(&aBlock);
  v24 = a1;

  [v26 animateWithDuration:v20 animations:v23 completion:v16];
  _Block_release(v23);
  _Block_release(v20);
}

void closure #1 in PushToTalkView.updatePTTSessionDetails(avatar:avatarViewHash:title:subtitle:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v42 = a6;
  v13 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView;
  v14 = *(Strong + OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView);
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0xA8);
  v17 = v14;
  v16();
  LOBYTE(v16) = v18;

  if (v16 & 1) == 0 && (a2)
  {
    v19 = (*((*v15 & **&v12[v13]) + 0x90))();
    if (v19)
    {
      v20 = v19;
      [v19 setAlpha_];
    }
  }

  v21 = (*((*v15 & **&v12[v13]) + 0xC0))();
  v22 = [v21 text];

  if (v22)
  {

    v23 = (*((*v15 & **&v12[v13]) + 0xC0))();
    v24 = outlined bridged method (ob) of @objc UILabel.text.getter(v23);
    if (!v25)
    {
LABEL_13:
      v28 = (*((*v15 & **&v12[v13]) + 0xC0))(v24);
      [v28 setAlpha_];

      goto LABEL_15;
    }

    if (v24 != a3 || v25 != a4)
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

LABEL_15:
  v29 = *(*&v12[v13] + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton);
  v30 = *((*v15 & *v29) + 0x70);
  v31 = v29;
  v30();
  v33 = v32;

  if (v33)
  {

    v34 = *(*&v12[v13] + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton);
    v35 = *((*v15 & *v34) + 0x70);
    v36 = v34;
    v37 = v35();
    v39 = v38;

    if (!v39)
    {
      goto LABEL_22;
    }

    if (v37 == a5 && v39 == v42)
    {

      return;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v41 & 1) == 0)
    {
LABEL_22:
      [*(*&v12[v13] + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton) setAlpha_];
    }
  }
}