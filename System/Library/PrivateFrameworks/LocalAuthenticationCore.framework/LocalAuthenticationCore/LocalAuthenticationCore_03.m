uint64_t specialized LACGlobalDomain.isDTOStrictModeEnabled.setter(unint64_t a1, SEL *a2)
{
  v3 = a1;
  if (a1)
  {
    a1 = type metadata accessor for NSNumber();
    v4 = v3;
  }

  else
  {
    v4 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v4;
  v13[3] = a1;
  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 sharedInstance];
  v8 = [v7 *a2];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  specialized static LACGlobalDomain.setObject(_:forKey:)(v13, v9, v11);

  return outlined destroy of Any?(v13);
}

id keypath_get_5Tm@<X0>(uint64_t *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  result = [swift_getObjCClassFromMetadata() *a2];
  *a3 = result;
  return result;
}

id keypath_set_6Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v6 = *a1;
  v7 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = *a5;

  return [ObjCClassFromMetadata v9];
}

id keypath_get_3Tm@<X0>(uint64_t *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  result = [swift_getObjCClassFromMetadata() *a2];
  *a3 = result;
  return result;
}

id keypath_set_4Tm(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v6 = *a1;
  v7 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = *a5;

  return [ObjCClassFromMetadata v9];
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t LACCompanionAuthenticationSessionMonitor.handleSessionUpdate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v0 replyQueue];
  v9 = [v0 observers];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v0;
  aBlock[4] = partial apply for closure #1 in LACCompanionAuthenticationSessionMonitor.handleSessionUpdate();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_25;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = v16;
  MEMORY[0x1B2722D20](0, v8, v4, v11);
  _Block_release(v11);

  (*(v18 + 8))(v4, v1);
  (*(v5 + 8))(v8, v17);
}

id LACCompanionAuthenticationSessionMonitor.init(forCompanion:environmentProvider:reply:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initForCompanion:a1 environmentProvider:a2 replyQueue:a3];
  swift_unknownObjectRelease();

  return v4;
}

{
  v3 = specialized LACCompanionAuthenticationSessionMonitor.init(forCompanion:environmentProvider:reply:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t LACCompanionAuthenticationSessionMonitor.description.getter()
{
  _StringGuts.grow(_:)(21);
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();

  v7 = v1;
  MEMORY[0x1B2722A80](0xD000000000000011, 0x80000001B0355800);
  v2 = NSStringFromLACCompanionType([v0 companion]);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B2722A80](v3, v5);

  return v7;
}

uint64_t LACCompanionAuthenticationSessionMonitor.isAvailable.getter()
{
  LACCompanionAuthenticationSessionMonitor.sessionProvider.getter(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_0(v3, v4);
  LOBYTE(v0) = (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v0 & 1;
}

uint64_t LACCompanionAuthenticationSessionMonitor.refresh(completion:)(uint64_t a1, uint64_t a2)
{
  LACCompanionAuthenticationSessionMonitor.sessionProvider.getter(v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  (*(v5 + 32))(a1, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

Swift::Void __swiftcall LACCompanionAuthenticationSessionMonitor.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AA12AnyPublisherVySbs5NeverOGAJGMd, &_s7Combine10PublishersO0A6LatestVy_AA12AnyPublisherVySbs5NeverOGAJGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v81 = &v78 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v78 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - v18;
  v20 = [v1 isAvailable];
  v21 = LACLogABM();
  if (v20)
  {
    Logger.init(_:)();
    v22 = v1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v25 = os_log_type_enabled(v23, v24);
    v80 = v6;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v79 = v3;
      v28 = v2;
      v29 = v17;
      v30 = v7;
      v31 = v27;
      *v26 = 138543362;
      *(v26 + 4) = v22;
      *v27 = v22;
      v32 = v22;
      _os_log_impl(&dword_1B0233000, v23, v24, "%{public}@ Starting listener for session monitoring", v26, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v33 = v31;
      v7 = v30;
      v17 = v29;
      v2 = v28;
      v3 = v79;
      MEMORY[0x1B27246A0](v33, -1, -1);
      v34 = v26;
      v6 = v80;
      MEMORY[0x1B27246A0](v34, -1, -1);
    }

    v37 = *(v7 + 8);
    v35 = v7 + 8;
    v36 = v37;
    v37(v19, v6);
    if ([v22 isMonitoring])
    {
      v38 = LACLogABM();
      Logger.init(_:)();
      v39 = v22;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138543362;
        *(v42 + 4) = v39;
        *v43 = v39;
        v44 = v39;
        _os_log_impl(&dword_1B0233000, v40, v41, "%{public}@ session listener already registered", v42, 0xCu);
        outlined destroy of AsyncStream<()>.Continuation?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v43, -1, -1);
        MEMORY[0x1B27246A0](v42, -1, -1);
      }

      v36(v14, v6);
    }

    else
    {
      v78 = v36;
      v79 = v35;
      v53 = &v22[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider];
      swift_beginAccess();
      v54 = *(v53 + 3);
      v55 = *(v53 + 4);
      v56 = __swift_project_boxed_opaque_existential_0(v53, v54);
      v57 = *(v54 - 8);
      v58 = *(v57 + 64);
      MEMORY[0x1EEE9AC00](v56);
      v60 = &v78 - v59;
      (*(v57 + 16))(&v78 - v59);
      v61 = (*(v55 + 24))(v54, v55);
      (*(v57 + 8))(v60, v54);
      v86 = v61;
      LACCompanionAuthenticationSessionMonitor.mockedSessionProvider.getter(v83);
      v62 = v84;
      v63 = v85;
      __swift_project_boxed_opaque_existential_0(v83, v84);
      v82 = (*(v63 + 24))(v62, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
      lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
      v64 = v81;
      Publishers.CombineLatest.init(_:_:)();
      __swift_destroy_boxed_opaque_existential_0(v83);
      v65 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v66 = swift_allocObject();
      *(v66 + 16) = partial apply for closure #1 in LACCompanionAuthenticationSessionMonitor.start();
      *(v66 + 24) = v65;
      lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<AnyPublisher<Bool, Never>, AnyPublisher<Bool, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AA12AnyPublisherVySbs5NeverOGAJGMd, &_s7Combine10PublishersO0A6LatestVy_AA12AnyPublisherVySbs5NeverOGAJGMR);
      v67 = Publisher<>.sink(receiveValue:)();

      (*(v3 + 8))(v64, v2);
      v68 = *&v22[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_sessionSubscription];
      *&v22[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_sessionSubscription] = v67;

      v69 = LACLogABM();
      Logger.init(_:)();
      v70 = v17;
      v71 = v22;
      v72 = v70;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138543362;
        *(v75 + 4) = v71;
        *v76 = v71;
        v77 = v71;
        _os_log_impl(&dword_1B0233000, v73, v74, "%{public}@ Did start listener for session events", v75, 0xCu);
        outlined destroy of AsyncStream<()>.Continuation?(v76, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27246A0](v76, -1, -1);
        MEMORY[0x1B27246A0](v75, -1, -1);
      }

      v78(v72, v80);
    }
  }

  else
  {
    Logger.init(_:)();
    v45 = v1;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v7;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138543362;
      *(v49 + 4) = v45;
      *v50 = v45;
      v51 = v45;
      _os_log_impl(&dword_1B0233000, v46, v47, "%{public}@ Did not start listener - provider not available", v49, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v50, -1, -1);
      v52 = v49;
      v7 = v48;
      MEMORY[0x1B27246A0](v52, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
  }
}

void closure #1 in LACCompanionAuthenticationSessionMonitor.start()(char a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v5 = Strong;
  LACCompanionAuthenticationSessionMonitor.mockedSessionProvider.getter(v11);

  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  LOBYTE(v5) = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v5)
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      return;
    }

    v9 = v8;
    [v8 setIsUnderlyingSessionActive_];
  }

  else
  {
LABEL_5:
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
      return;
    }

    v9 = v10;
    [v10 setIsUnderlyingSessionActive_];
  }
}

Swift::Void __swiftcall LACCompanionAuthenticationSessionMonitor.stop()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  if ([v1 isMonitoring] && *&v1[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_sessionSubscription])
  {
    *&v1[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_sessionSubscription] = 0;
    AnyCancellable.cancel()();
    v10 = LACLogABM();
    Logger.init(_:)();
    v11 = v1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_1B0233000, v12, v13, "%{public}@ Did stop listener for AKS events", v14, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v15, -1, -1);
      MEMORY[0x1B27246A0](v14, -1, -1);
    }
  }

  else
  {
    v17 = LACLogABM();
    Logger.init(_:)();
    v18 = v1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1B0233000, v19, v20, "%{public}@ Cannot stop monitoring, no AKS listener registered", v21, 0xCu);
      outlined destroy of AsyncStream<()>.Continuation?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v22, -1, -1);
      MEMORY[0x1B27246A0](v21, -1, -1);
    }

    v9 = v7;
  }

  (*(v3 + 8))(v9, v2);
}

uint64_t LACCompanionAuthenticationSessionMonitor.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v4 replyQueue];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v21;
  MEMORY[0x1B2722D20](0, v15, v11, v18);
  _Block_release(v18);

  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

void closure #1 in LACCompanionAuthenticationSessionMonitor.add(_:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong observers];

    [v7 *a3];
  }
}

void @objc LACCompanionAuthenticationSessionMonitor.add(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void __swiftcall LACCompanionAuthenticationSessionMonitor.init()(LACCompanionAuthenticationSessionMonitor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void closure #1 in LACCompanionAuthenticationSessionMonitor.handleSessionUpdate()(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 allObjects];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo48LACCompanionAuthenticationSessionMonitorObserver_pMd, &_sSo48LACCompanionAuthenticationSessionMonitorObserver_pMR);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_17:

    goto LABEL_19;
  }

  if (v10 < 0)
  {
    v29 = v10;
  }

  else
  {
    v29 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  v12 = MEMORY[0x1B2722F00](v29);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v37 = v10 & 0xC000000000000001;
    v14 = (v5 + 8);
    *&v11 = 138543874;
    v30 = v11;
    v33 = v8;
    v34 = v4;
    v31 = v14;
    v32 = v10;
    do
    {
      if (v37)
      {
        v15 = MEMORY[0x1B2722E50](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      v16 = LACLogABM();
      Logger.init(_:)();
      v38 = a2;
      swift_unknownObjectRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v40 = v36;
        *v19 = v30;
        v21 = v38;
        *(v19 + 4) = v38;
        *v20 = a2;
        *(v19 + 12) = 1024;
        *(v19 + 14) = [v21 isUnderlyingSessionActive];
        *(v19 + 18) = 2080;
        v39 = v15;
        swift_unknownObjectRetain();
        v22 = String.init<A>(describing:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v40);

        *(v19 + 20) = v24;
        _os_log_impl(&dword_1B0233000, v17, v18, "%{public}@ Companion session updated isActive: %{BOOL}d. Informing observer %s", v19, 0x1Cu);
        outlined destroy of AsyncStream<()>.Continuation?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v25 = v20;
        v4 = v34;
        MEMORY[0x1B27246A0](v25, -1, -1);
        v26 = v36;
        __swift_destroy_boxed_opaque_existential_0(v36);
        v27 = v26;
        v10 = v32;
        v8 = v33;
        MEMORY[0x1B27246A0](v27, -1, -1);
        v28 = v19;
        v14 = v31;
        MEMORY[0x1B27246A0](v28, -1, -1);
      }

      else
      {
      }

      (*v14)(v8, v4);
      ++v13;
      [v15 companionAuthenticationSessionMonitorDidUpdate_];
      swift_unknownObjectRelease();
    }

    while (v12 != v13);
LABEL_19:

    return;
  }

  __break(1u);
}

uint64_t LACCompanionAuthenticationSessionMonitor.inject(sessionProvider:)(uint64_t *a1)
{
  v3 = OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v1 + v3), a1);
  return swift_endAccess();
}

id specialized LACCompanionAuthenticationSessionMonitor.init(forCompanion:environmentProvider:reply:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = &v3[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor____lazy_storage___mockedSessionProvider];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v3[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_sessionSubscription] = 0;
  v3[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_isUnderlyingSessionActive] = 0;
  *&v3[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_companion] = a1;
  if (a1 == 2)
  {
    v7 = type metadata accessor for LACOnenessSessionProvider();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[4] = 0;
    LOBYTE(v29) = 2;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = a3;
    v8[5] = CurrentValueSubject.init(_:)();
    v8[3] = v12;
    v13 = &v3[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider];
    *(v13 + 3) = v7;
    *(v13 + 4) = &protocol witness table for LACOnenessSessionProvider;
    *v13 = v8;
  }

  else if (a1 == 4)
  {
    v15 = [objc_allocWithZone(LACSharingManager) initWithReplyQueue_];
    v16 = type metadata accessor for LACPhoneIntegrationSessionProvider();
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 48) = 0;
    LOBYTE(v29) = 2;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbSgs5NeverOGMR);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = a3;
    swift_unknownObjectRetain();
    v22 = v15;
    *(v17 + 56) = CurrentValueSubject.init(_:)();
    *(v17 + 24) = a2;
    *(v17 + 32) = v22;
    *(v17 + 40) = v21;
    v30 = v16;
    v31 = &protocol witness table for LACPhoneIntegrationSessionProvider;

    *&v29 = v17;
    outlined init with take of LACPreboardUseCaseProviding(&v29, &v4[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider]);
  }

  else
  {
    v24 = type metadata accessor for LACCompanionAuthenticationSessionProviderDummy();
    objc_allocWithZone(v24);
    v25 = LACCompanionAuthenticationSessionProviderDummy.init(companion:replyQueue:)(a1, a3);
    v26 = &v4[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor__sessionProvider];
    *(v26 + 3) = v24;
    *(v26 + 4) = &protocol witness table for LACCompanionAuthenticationSessionProviderDummy;
    *v26 = v25;
  }

  v27 = [objc_opt_self() weakObjectsHashTable];
  *&v4[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_observers] = v27;
  *&v4[OBJC_IVAR___LACCompanionAuthenticationSessionMonitor_replyQueue] = a3;
  v32.receiver = v4;
  v32.super_class = LACCompanionAuthenticationSessionMonitor;
  return objc_msgSendSuper2(&v32, sel_init);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned Bool) -> ()(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for LACCompanionAuthenticationSessionMonitor()
{
  result = lazy cache variable for type metadata for LACCompanionAuthenticationSessionMonitor;
  if (!lazy cache variable for type metadata for LACCompanionAuthenticationSessionMonitor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACCompanionAuthenticationSessionMonitor);
  }

  return result;
}

uint64_t outlined assign with take of LACCompanionAuthenticationSessionProviding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23LocalAuthenticationCore012LACCompanionB16SessionProviding_pSgMd, _s23LocalAuthenticationCore012LACCompanionB16SessionProviding_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LACPreboardLaunching.launchPreboard()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v9(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LACEvaluationResultWithAssociatedValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for LACEvaluationResultWithAssociatedValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t LACACMContextProvider.externalizedContext.getter()
{
  v1 = [*(v0 + 16) externalizedContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t LACACMContextProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(LACACMHelper) init];
  if (v1)
  {
    *(v0 + 16) = v1;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v0;
}

uint64_t LACACMContextProvider.init()()
{
  v1 = [objc_allocWithZone(LACACMHelper) init];
  if (v1)
  {
    *(v0 + 16) = v1;
  }

  else
  {
    type metadata accessor for LACACMContextProvider();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v0;
}

uint64_t LACACMContextProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id LACOnenessEnvironmentProvider.environment.getter()
{
  v1 = [v0 isFeatureAvailable];
  v2 = [v0 isFeatureSupported];
  v3 = objc_allocWithZone(LACCompanionAuthenticationEnvironment);

  return [v3 initWithFeatureAvailable:v1 featureSupported:v2];
}

LACOnenessEnvironmentProvider __swiftcall LACOnenessEnvironmentProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.isFeatureAvailable = v1;
  result.isFeatureSupported = HIBYTE(v1);
  return result;
}

id LACOnenessEnvironmentProvider.init()()
{
  *(v0 + OBJC_IVAR___LACOnenessEnvironmentProvider_isFeatureAvailable) = 1;
  *(v0 + OBJC_IVAR___LACOnenessEnvironmentProvider_isFeatureSupported) = 1;
  v2.super_class = LACOnenessEnvironmentProvider;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for LACOnenessEnvironmentProvider()
{
  result = lazy cache variable for type metadata for LACOnenessEnvironmentProvider;
  if (!lazy cache variable for type metadata for LACOnenessEnvironmentProvider)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACOnenessEnvironmentProvider);
  }

  return result;
}

id LACInternalInfoParser.init(internalInfo:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithInternalInfo_];

  return v2;
}

id LACInternalInfoParser.init(internalInfo:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___LACInternalInfoParser_internalInfo) = a1;
  v3.super_class = LACInternalInfoParser;
  return objc_msgSendSuper2(&v3, sel_init);
}

id LACInternalInfoParser.callerAuditToken.getter()
{
  v1 = [v0 internalInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v14 = 0x6B6F547469647541;
  *(&v14 + 1) = 0xEA00000000006E65;
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, &v14);
    outlined destroy of AnyHashable(v16);
  }

  else
  {

    outlined destroy of AnyHashable(v16);
    v14 = 0u;
    v15 = 0u;
  }

  v13[0] = v14;
  v13[1] = v15;
  if (*(&v15 + 1))
  {
    outlined init with take of Any(v13, &v12);
    if (swift_dynamicCast())
    {
      v5 = v18;
      if (v18 >> 60 != 15)
      {
        v6 = v17;
        v7 = objc_allocWithZone(LACAuditToken);
        outlined copy of Data._Representation(v6, v5);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v9 = [v7 initWithData_];

        outlined consume of Data?(v6, v5);
        outlined consume of Data?(v6, v5);
        if (v9)
        {
          return v9;
        }
      }
    }
  }

  v11 = [objc_opt_self() nullInstance];

  return v11;
}

uint64_t LACInternalInfoParser.userId.getter()
{
  v1 = [v0 internalInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8[0] = 0x644972657355;
  v8[1] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
    outlined destroy of AnyHashable(v7);

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    outlined destroy of AnyHashable(v7);
    return 0;
  }
}

uint64_t LACInternalInfoParser.options.getter()
{
  v1 = [v0 internalInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8[0] = 0x736E6F6974704FLL;
  v8[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
    outlined destroy of AnyHashable(v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    outlined destroy of AnyHashable(v7);
    return 0;
  }
}

id LACInternalInfoParser.policy.getter()
{
  v1 = [v0 internalInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v11 = 0x7963696C6F50;
  *(&v11 + 1) = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, &v11);
    outlined destroy of AnyHashable(v13);
  }

  else
  {

    outlined destroy of AnyHashable(v13);
    v11 = 0u;
    v12 = 0u;
  }

  v9[0] = v11;
  v9[1] = v12;
  if (!*(&v12 + 1))
  {
    return 0;
  }

  outlined init with take of Any(v9, &v8);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  if (!v10)
  {
    return 0;
  }

  v6 = [v10 integerValue];

  return v6;
}

id LACInternalInfoParser.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double static LACPreboardUseCaseProviding.allUseCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18LACPreboardUseCaseaGMd, &_ss23_ContiguousArrayStorageCySo18LACPreboardUseCaseaGMR);
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_1B0342810;
  *(v0 + 32) = 4;
  *(v0 + 40) = 3;
  return result;
}

uint64_t dispatch thunk of LACPreboardUseCaseProviding.completeCurrentUseCase(success:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v11(a1, a2, a3);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned LACEvaluationRequest, @unowned LACEvaluationResult, @unowned @escaping @callee_unowned @convention(block) @Sendable (@unowned LACEvaluationResult) -> ()) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void *))
{
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  v10[3] = &block_descriptor_16_1;
  v8 = _Block_copy(v10);

  a5(a1, a2, v8);
  _Block_release(v8);
}

id LACConcurrentEvaluationController.canProcessRequest(_:)(uint64_t a1)
{
  v2 = [objc_msgSend(v1 model)];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t LACConcurrentEvaluationController.processRequest(_:configuration:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 model];
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  v12[3] = &block_descriptor_12;
  v10 = _Block_copy(v12);

  [v9 processRequest:a1 configuration:a2 completion:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationController.postProcessRequest(_:result:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [v5 model];
  if ([v10 respondsToSelector_])
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
    v13[3] = &block_descriptor_3;
    v11 = _Block_copy(v13);

    [v10 postProcessRequest:a1 result:a2 completion:v11];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

id LACConcurrentEvaluationController.makeModel()()
{
  v1 = [v0 manager];
  v2 = [v0 replyQueue];
  v3 = [objc_opt_self() sharedInstance];
  v4 = [objc_opt_self() sharedInstance];
  v5 = type metadata accessor for LACConcurrentEvaluationControllerModel();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_stashedRequests] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_clientInfoProvider] = v3;
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper] = v4;
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager] = v1;
  type metadata accessor for LACConcurrentIdleUIListenerProvider();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v3;
  v8 = v4;
  v9 = v2;
  v10 = specialized LACConcurrentIdleUIListenerProvider.__allocating_init(handler:replyQueue:)(v1, v9);

  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_idleUIListenerProvider] = v10;
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_replyQueue] = v9;
  v13.receiver = v6;
  v13.super_class = v5;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  swift_unknownObjectRelease();

  return v11;
}

unint64_t type metadata accessor for LACConcurrentIdleUIListenerProvider()
{
  result = lazy cache variable for type metadata for LACConcurrentIdleUIListenerProvider;
  if (!lazy cache variable for type metadata for LACConcurrentIdleUIListenerProvider)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACConcurrentIdleUIListenerProvider);
  }

  return result;
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.isSessionActive.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGSo17OS_dispatch_queueCGMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive;
  if (*(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive))
  {
    v11 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive);
  }

  else
  {
    v21 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_isSessionActiveSubject);
    v19 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
    v12 = v0;
    v13 = Publisher.share()();
    v14 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_replyQueue);
    v20 = v14;
    v21 = v13;
    v15 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGMd, &_s7Combine10PublishersO5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGMR);
    type metadata accessor for OS_dispatch_queue();
    lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Share<CurrentValueSubject<Bool, Never>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGMd, &_s7Combine10PublishersO5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGMR);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
    Publisher.receive<A>(on:options:)();
    outlined destroy of OS_dispatch_queue.SchedulerOptions?(v4);

    lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Share<CurrentValueSubject<Bool, Never>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC5ShareCy_AA19CurrentValueSubjectCySbs5NeverOGGSo17OS_dispatch_queueCGMR);
    v11 = Publisher.eraseToAnyPublisher()();
    (*(v19 + 8))(v9, v5);
    v16 = *(v12 + v10);
    *(v12 + v10) = v11;
  }

  return v11;
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.isSessionActive.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive);
  *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive) = a1;
}

uint64_t (*LACCompanionAuthenticationSessionProviderDummy.isSessionActive.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = LACCompanionAuthenticationSessionProviderDummy.isSessionActive.getter();
  return LACCompanionAuthenticationSessionProviderDummy.isSessionActive.modify;
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.isSessionActive.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive);
  *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive) = v2;
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.isActive.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_isSessionActiveSubject);

  CurrentValueSubject.value.getter();

  return v3;
}

void *LACCompanionAuthenticationSessionProviderDummy.init(companion:replyQueue:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy____lazy_storage___isSessionActive] = 0;
  v5 = OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_isSessionActiveSubject;
  v16 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v2[v5] = CurrentValueSubject.init(_:)();
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_companion] = a1;
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_replyQueue] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for LACCompanionAuthenticationSessionProviderDummy();
  v9 = a2;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 sharedInstance];
  [v13 addObserver:v12 notification:@"com.apple.LocalAuthentication.GlobalDomainDidChange"];

  (*((*MEMORY[0x1E69E7D40] & *v12) + 0xC0))(destructiveProjectEnumData for LACLog, 0);
  return v12;
}

id LACCompanionAuthenticationSessionProviderDummy.__deallocating_deinit()
{
  v1 = [objc_opt_self() sharedInstance];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LACCompanionAuthenticationSessionProviderDummy();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.refresh(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))();
  v4 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore46LACCompanionAuthenticationSessionProviderDummy_isSessionActiveSubject);
  v5 = v3 & 1;

  CurrentValueSubject.send(_:)();

  if (a1)
  {
    return a1(v5);
  }

  return result;
}

id LACCompanionAuthenticationSessionProviderDummy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t LACCompanionAuthenticationSessionProviderDummy.notificationCenter(_:didReceive:)(uint64_t a1, const __CFString *a2)
{
  result = LACDarwinNotificationsEqual(a2, @"com.apple.LocalAuthentication.GlobalDomainDidChange");
  if (result)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xC0);

    return v4(destructiveProjectEnumData for LACLog, 0);
  }

  return result;
}

uint64_t LACConcurrentEvaluationManager.stashRequest(_:acceptsIdleUI:)(uint64_t a1, char a2)
{
  [objc_msgSend(v2 model)];

  return swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationManager.register(_:)(uint64_t a1, SEL *a2)
{
  [objc_msgSend(v2 model)];

  return swift_unknownObjectRelease();
}

void @objc LACConcurrentEvaluationManager.register(_:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v7 = a1;
  [objc_msgSend(v7 model)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationManager.add(observer:for:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  [objc_msgSend(v3 model)];

  return swift_unknownObjectRelease();
}

void @objc LACConcurrentEvaluationManager.add(observer:for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  [objc_msgSend(v9 model)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id LACConcurrentEvaluationManager.restartRequests(forContextID:)()
{
  v1 = [v0 model];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 restartRequestsForContextID_];
  swift_unknownObjectRelease();

  return v3;
}

void LACConcurrentEvaluationManager.cancelRequests(forContextID:)()
{
  v1 = [v0 model];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 cancelRequestsForContextID_];
  swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationManager.idleUIGotFocus(_:identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 model];
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v12[3] = &block_descriptor_13;
  v10 = _Block_copy(v12);

  [v9 idleUIGotFocus:a1 identifier:a2 completion:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

Swift::Void __swiftcall LACConcurrentEvaluationManager.connectionInvalidated(forIdentifier:)(NSNumber_optional forIdentifier)
{
  [objc_msgSend(v1 model)];

  swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationManager.connect(_:identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 model];
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACConcurrentIdleUIHandling?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_3_0;
  v10 = _Block_copy(v12);

  [v9 connectIdleUI:a1 identifier:a2 completion:v10];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACConcurrentIdleUIHandling?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

id LACConcurrentEvaluationManager.makeModel()()
{
  v1 = [v0 replyQueue];
  v2 = [objc_opt_self() sharedInstance];
  v3 = [objc_opt_self() sharedInstance];
  v4 = objc_allocWithZone(type metadata accessor for LACConcurrentEvaluationManagerModel());

  return specialized LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(v2, v3, v1, v4);
}

id specialized LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers;
  *&a4[v9] = [objc_opt_self() weakObjectsHashTable];
  v10 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers;
  *&a4[v10] = [objc_opt_self() strongToWeakObjectsMapTable];
  v11 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_connectedUIInstances;
  *&a4[v11] = [objc_opt_self() strongToWeakObjectsMapTable];
  v12 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
  v13 = MEMORY[0x1E69E7CC0];
  *&a4[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&a4[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests] = v13;
  *&a4[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_clientInfoProvider] = a1;
  *&a4[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_helper] = a2;
  *&a4[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue] = a3;
  v15.receiver = a4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id LACFileManager.fileExists(at:)()
{
  v0 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v2 = MEMORY[0x1B27229A0](countAndFlagsBits);

  v3 = [v0 fileExistsAtPath_];

  return v3;
}

uint64_t LACFileManager.writeFile(contents:at:isExcludedFromBackup:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  result = specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(a3, a4, a5);
  if (!v5)
  {
    return Data.write(to:options:)();
  }

  return result;
}

void LACFileManager.replaceFile(at:with:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v6 - v3;
  v5 = [objc_opt_self() defaultManager];
  NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
  if (!v0)
  {
    outlined destroy of URL?(v4);
  }
}

id protocol witness for LACFileManaging.fileExists(at:) in conformance LACFileManager()
{
  v0 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v2 = MEMORY[0x1B27229A0](countAndFlagsBits);

  v3 = [v0 fileExistsAtPath_];

  return v3;
}

uint64_t protocol witness for LACFileManaging.writeFile(contents:at:isExcludedFromBackup:attributes:) in conformance LACFileManager(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  result = specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(a3, a4, a5);
  if (!v5)
  {
    return Data.write(to:options:)();
  }

  return result;
}

void protocol witness for LACFileManaging.replaceFile(at:with:) in conformance LACFileManager()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v6 - v3;
  v5 = [objc_opt_self() defaultManager];
  NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
  if (!v0)
  {
    outlined destroy of URL?(v4);
  }
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  outlined init with copy of (NSFileAttributeKey, Any)(a1 + 32, &v37);
  v7 = v37;
  v39 = v37;
  outlined init with take of Any(v38, v36);
  v8 = *a3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v15) = v10;
  if (v8[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    v16 = *a3;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for NSFileAttributeKey(0);
    v9 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v9;
  specialized _NativeDictionary.copy()();
  v9 = v20;
  if (v15)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v36);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v21[6] + 8 * v9) = v7;
  outlined init with take of Any(v36, (v21[7] + 32 * v9));
  v22 = v21[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v13)
  {
    v21[2] = v23;
    if (v4 != 1)
    {
      v15 = a1 + 72;
      v24 = 1;
      while (v24 < *(a1 + 16))
      {
        outlined init with copy of (NSFileAttributeKey, Any)(v15, &v37);
        v7 = v37;
        v39 = v37;
        outlined init with take of Any(v38, v36);
        v25 = *a3;
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
        v28 = v25[2];
        v29 = (v27 & 1) == 0;
        v13 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v13)
        {
          goto LABEL_22;
        }

        a2 = v27;
        if (v25[3] < v30)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, 1);
          v31 = *a3;
          v26 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
          if ((a2 & 1) != (v32 & 1))
          {
            goto LABEL_5;
          }
        }

        if (a2)
        {
          goto LABEL_8;
        }

        v33 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v33[6] + 8 * v26) = v7;
        outlined init with take of Any(v36, (v33[7] + 32 * v26));
        v34 = v33[2];
        v13 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v13)
        {
          goto LABEL_23;
        }

        ++v24;
        v33[2] = v35;
        v15 += 40;
        if (v4 == v24)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  _StringGuts.grow(_:)(30);
  MEMORY[0x1B2722A80](0xD00000000000001BLL, 0x80000001B0356900);
  type metadata accessor for NSFileAttributeKey(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2722A80](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(uint64_t a1, int a2, uint64_t a3)
{
  v72 = a3;
  v75 = a2;
  v83 = *MEMORY[0x1E69E9840];
  v77 = type metadata accessor for URLResourceValues();
  v74 = *(v77 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v64 - v12;
  v14 = v7[2];
  v70 = v7 + 2;
  v71 = a1;
  v69 = v14;
  v14(&v64 - v12, a1, v6);
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v18 = MEMORY[0x1B27229A0](countAndFlagsBits);

  LOBYTE(a1) = [v16 fileExistsAtPath_];

  v76 = v7;
  if (a1)
  {
    v19 = v77;
LABEL_3:
    if (v75 != 2)
    {
      v20 = v73;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      URL.setResourceValues(_:)();
      (*(v74 + 8))(v20, v19);
    }

    result = (v76[1])(v13, v6);
    goto LABEL_38;
  }

  v68 = v15;
  v22 = [v15 defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  v28 = v7[1];
  v26 = v7 + 1;
  v27 = v28;
  v28(v11, v6);
  *&v82 = 0;
  v29 = [v22 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&v82];

  if (!v29)
  {
    v51 = v82;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = v27(v13, v6);
    goto LABEL_38;
  }

  v66 = v27;
  v67 = v26;
  v30 = v72;
  if (!v72)
  {
    v52 = v82;
    v53 = v68;
    v19 = v77;
LABEL_33:
    v57 = [v53 defaultManager];
    v58 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v59 = MEMORY[0x1B27229A0](v58);

    if (v30)
    {
      type metadata accessor for NSFileAttributeKey(0);
      lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
      v60.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v60.super.isa = 0;
    }

    v61 = [v57 createFileAtPath:v59 contents:0 attributes:v60.super.isa];

    if (v61)
    {
      goto LABEL_3;
    }

    type metadata accessor for LACFileManager.Error();
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type LACFileManager.Error and conformance LACFileManager.Error, type metadata accessor for LACFileManager.Error);
    swift_allocError();
    v69(v62, v71, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    result = v66(v13, v6);
LABEL_38:
    v63 = *MEMORY[0x1E69E9840];
    return result;
  }

  v31 = *(v72 + 16);
  v19 = v77;
  v32 = v78;
  if (v31)
  {
    v64 = v13;
    v65 = v6;
    v33 = v82;
    v34 = 0;
    v81 = *MEMORY[0x1E696A370];
    v80 = *MEMORY[0x1E696A320];
    v79 = *MEMORY[0x1E696A358];
    v35 = MEMORY[0x1E69E7CC0];
    v36 = (v30 + 40);
    do
    {
      v37 = *(v36 - 1);
      v39 = *v36;
      v36 += 16;
      v38 = v39;
      v40 = v39 == 1;
      v41 = v81;
      if (v39 == 1)
      {
        v41 = v80;
      }

      v42 = MEMORY[0x1E69E75F8];
      if (v40)
      {
        v42 = MEMORY[0x1E69E6810];
        v43 = v37 >> 16;
      }

      else
      {
        v43 = v34;
      }

      v44 = v38 == 0;
      v45 = v79;
      if (v44)
      {
        v46 = MEMORY[0x1E69E6810];
      }

      else
      {
        v45 = v41;
        v46 = v42;
      }

      if (v44)
      {
        v34 = v37 >> 16;
      }

      else
      {
        v34 = v43;
      }

      v47 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
      }

      v49 = v35[2];
      v48 = v35[3];
      if (v49 >= v48 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v35);
      }

      v35[2] = v49 + 1;
      v50 = &v35[5 * v49];
      v50[4] = v47;
      v50[5] = v37 | (v34 << 16);
      *(v50 + 3) = v82;
      v50[8] = v46;
      --v31;
    }

    while (v31);
    v19 = v77;
    v32 = v78;
    v13 = v64;
    v6 = v65;
    goto LABEL_30;
  }

  v54 = v82;
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMR);
    v55 = static _DictionaryStorage.allocate(capacity:)();
    goto LABEL_31;
  }

  v55 = MEMORY[0x1E69E7CC8];
LABEL_31:
  *&v82 = v55;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v56, 1, &v82);
  if (!v32)
  {

    v30 = v82;
    v53 = v68;
    goto LABEL_33;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized LACFileManager.verifyFile(at:hasAttributes:)(uint64_t a1, uint64_t a2)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v5 = MEMORY[0x1B27229A0](countAndFlagsBits);

  v34[0] = 0;
  v6 = [v3 attributesOfItemAtPath:v5 error:v34];

  v7 = v34[0];
  if (!v6)
  {
    v25 = v34[0];
    _convertNSErrorToError(_:)();

    goto LABEL_36;
  }

  type metadata accessor for NSFileAttributeKey(0);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v7;

  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_25:

    goto LABEL_37;
  }

  v32 = *MEMORY[0x1E696A370];
  v11 = *MEMORY[0x1E696A320];
  v12 = *MEMORY[0x1E696A358];
  v13 = (a2 + 40);
  while (1)
  {
    v14 = *(v13 - 1);
    if (!*v13)
    {
      break;
    }

    if (*v13 == 1)
    {
      if (!*(v8 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v16 & 1) == 0) || (outlined init with copy of Any(*(v8 + 56) + 32 * v15, v34), (swift_dynamicCast() & 1) == 0) || v33 != v14)
      {
        type metadata accessor for LACFileManager.Error();
        lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type LACFileManager.Error and conformance LACFileManager.Error, type metadata accessor for LACFileManager.Error);
        swift_allocError();
        *v29 = v14;
        v22 = v29 + 1;
        if (!*(v8 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v30 & 1) == 0))
        {
          *v22 = 0u;
          v22[1] = 0u;
          goto LABEL_35;
        }

        goto LABEL_23;
      }
    }

    else if (!*(v8 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v32), (v20 & 1) == 0) || (outlined init with copy of Any(*(v8 + 56) + 32 * v19, v34), (swift_dynamicCast() & 1) == 0) || v33 != v14)
    {
      type metadata accessor for LACFileManager.Error();
      lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type LACFileManager.Error and conformance LACFileManager.Error, type metadata accessor for LACFileManager.Error);
      swift_allocError();
      *v21 = v14;
      v22 = v21 + 4;
      if (!*(v8 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v32), (v24 & 1) == 0))
      {
        *v22 = 0u;
        v22[1] = 0u;
        goto LABEL_35;
      }

LABEL_23:
      outlined init with copy of Any(*(v8 + 56) + 32 * v23, v22);
      goto LABEL_35;
    }

LABEL_4:
    v13 += 16;
    if (!--v10)
    {
      goto LABEL_25;
    }
  }

  if (*(v8 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if (v18)
    {
      outlined init with copy of Any(*(v8 + 56) + 32 * v17, v34);
      if ((swift_dynamicCast() & 1) != 0 && v33 == v14)
      {
        goto LABEL_4;
      }
    }
  }

  type metadata accessor for LACFileManager.Error();
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type LACFileManager.Error and conformance LACFileManager.Error, type metadata accessor for LACFileManager.Error);
  swift_allocError();
  *v27 = v14;
  v22 = v27 + 1;
  if (*(v8 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if (v28)
    {
      goto LABEL_23;
    }
  }

  *v22 = 0u;
  v22[1] = 0u;
LABEL_35:

  swift_storeEnumTagMultiPayload();
LABEL_36:
  result = swift_willThrow();
LABEL_37:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized LACFileManager.readFile(at:verifyingAttributes:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v7 = MEMORY[0x1B27229A0](countAndFlagsBits);

  v8 = [v5 fileExistsAtPath_];

  if (v8)
  {
    result = specialized LACFileManager.verifyFile(at:hasAttributes:)(a1, a2);
    if (!v2)
    {
      return Data.init(contentsOf:options:)();
    }
  }

  else
  {
    type metadata accessor for LACFileManager.Error();
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type LACFileManager.Error and conformance LACFileManager.Error, type metadata accessor for LACFileManager.Error);
    swift_allocError();
    v11 = v10;
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 16))(v11, a1, v12);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

id specialized LACFileManager.deleteItem(at:)()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v8[0] = 0;
  v4 = [v0 removeItemAtURL:v2 error:v8];

  if (v4)
  {
    result = v8[0];
  }

  else
  {
    v6 = v8[0];
    _convertNSErrorToError(_:)();

    result = swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized LACFileManager.replaceFile(at:with:isExcludedFromBackup:fileAttributes:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v67 = a2;
  v68 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v57 - v10;
  v78 = type metadata accessor for URL.DirectoryHint();
  v73 = *(v78 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v70 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UUID();
  v72 = *(v77 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for URL();
  v69 = *(v79 - 8);
  v16 = *(v69 + 64);
  v17 = MEMORY[0x1EEE9AC00](v79);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v57 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v57 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v57 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v76 = &v57 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v71 = &v57 - v31;
  v74 = a4;
  v75 = a5;
  v32 = v82;
  result = specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(a1, a4, a5);
  if (!v32)
  {
    v60 = v25;
    v59 = v19;
    v58 = v22;
    v61 = a1;
    v82 = 0;
    URL.deletingLastPathComponent()();
    UUID.init()();
    v34 = UUID.uuidString.getter();
    v35 = v69;
    v37 = v36;
    v38 = *(v72 + 8);
    v62 = v36;
    v63 = v38;
    v38(v15, v77);
    v80 = v34;
    v81 = v37;
    LODWORD(v72) = *MEMORY[0x1E6968F70];
    v39 = v73;
    v65 = *(v73 + 104);
    v40 = v70;
    v41 = v78;
    v65(v70);
    v64 = lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(component:directoryHint:)();
    v73 = *(v39 + 8);
    (v73)(v40, v41);

    v42 = *(v35 + 8);
    v42(v28, v79);
    UUID.init()();
    v43 = UUID.uuidString.getter();
    v45 = v44;
    v63(v15, v77);
    v80 = v43;
    v81 = v45;
    MEMORY[0x1B2722A80](1886221358, 0xE400000000000000);
    v46 = v78;
    (v65)(v40, v72, v78);
    v47 = v42;
    v48 = v79;
    v49 = v71;
    v50 = v76;
    URL.appending<A>(path:directoryHint:)();
    (v73)(v40, v46);

    v42(v50, v48);
    v51 = v74;
    v52 = v75;
    v53 = v82;
    specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(v49, v74, v75);
    if (!v53)
    {
      specialized LACFileManager.touchFile(at:isExcludedFromBackup:attributes:)(v49, v51, v52);
      Data.write(to:options:)();
      v54 = [objc_opt_self() defaultManager];
      v55 = v66;
      NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
      outlined destroy of URL?(v55);

      v56 = v58;
      URL.deletingLastPathComponent()();
      specialized LACFileManager.deleteItem(at:)();
      v47(v56, v48);
    }

    return (v47)(v49, v48);
  }

  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LACFileManager.Error()
{
  result = type metadata singleton initialization cache for LACFileManager.Error;
  if (!type metadata singleton initialization cache for LACFileManager.Error)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LACFileManager.Error()
{
  type metadata accessor for (at: URL)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (expected: UInt, actual: Any?)(319, &lazy cache variable for type metadata for (expected: UInt, actual: Any?));
    if (v1 <= 0x3F)
    {
      type metadata accessor for (expected: UInt, actual: Any?)(319, &lazy cache variable for type metadata for (expected: UInt16, actual: Any?));
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (at: URL)()
{
  if (!lazy cache variable for type metadata for (at: URL))
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (at: URL));
    }
  }
}

void type metadata accessor for (expected: UInt, actual: Any?)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sypSgMd, _sypSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of (NSFileAttributeKey, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSFileAttributeKeya_yptMd, &_sSo18NSFileAttributeKeya_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id LACConcurrentEvaluationManagerModel.__allocating_init(clientInfoProvider:helper:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  swift_getObjectType();

  return specialized LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(a1, a2, a3, v7);
}

uint64_t LACConcurrentEvaluationManagerModel.activeRequests.didset()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in LACConcurrentEvaluationManagerModel.activeRequests.didset;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_31_0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2722D20](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

void closure #1 in LACConcurrentEvaluationManagerModel.activeRequests.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    LACConcurrentEvaluationManagerModel.unstashRequestIfPossible()();
  }
}

uint64_t LACConcurrentEvaluationManagerModel.unstashRequestIfPossible()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v9 = LACLogConcurrentEvaluations();
  Logger.init(_:)();
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
    swift_beginAccess();
    *(v13 + 4) = (*(&v10->isa + v14))[2];

    _os_log_impl(&dword_1B0233000, v11, v12, "Active requests count: %ld", v13, 0xCu);
    MEMORY[0x1B27246A0](v13, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  v15 = *(v2 + 8);
  v15(v8, v1);
  v16 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
  result = swift_beginAccess();
  if ((*(&v10->isa + v16))[2])
  {
    return result;
  }

  v18 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  swift_beginAccess();
  v19 = *(&v10->isa + v18);
  if (v19 >> 62)
  {
    if (v19 < 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v19 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x1B2722F00](v21);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_15:
    v22 = LACLogConcurrentEvaluations();
    Logger.init(_:)();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B0233000, v23, v24, "No stashed request", v25, 2u);
      MEMORY[0x1B27246A0](v25, -1, -1);
    }

    return (v15)(v6, v1);
  }

  result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v19 & 0xC000000000000001) != 0)
  {

    v20 = MEMORY[0x1B2722E50](0, v19);

    goto LABEL_10;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);

LABEL_10:
    LACConcurrentEvaluationManagerModel.unstashRequest(_:)(v20);
  }

  __break(1u);
  return result;
}

id LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return specialized LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(a1, a2, a3, v3);
}

id LACConcurrentEvaluationManagerModel.add(observer:for:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v35 = v6;
  v19 = LACLogConcurrentEvaluations();
  Logger.init(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v20, v21))
  {
    v34 = v3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136446466;
    v24 = [a1 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v38);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2082;
    if (a2)
    {
      v37 = [a2 identifier];
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v29 = BinaryInteger.description.getter();
      v31 = v30;
    }

    else
    {
      v31 = 0xE300000000000000;
      v29 = 7104878;
    }

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v38);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_1B0233000, v20, v21, "Adding observer %{public}s for request rid: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v23, -1, -1);
    MEMORY[0x1B27246A0](v22, -1, -1);

    (*(v36 + 8))(v9, v35);
    v3 = v34;
    if (!a2)
    {
      return [*(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers) addObject_];
    }

    return [*(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers) setObject:a1 forKey:a2];
  }

  (*(v36 + 8))(v9, v35);
  if (a2)
  {
    return [*(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers) setObject:a1 forKey:a2];
  }

  return [*(v3 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers) addObject_];
}

void LACConcurrentEvaluationManagerModel.remove(observer:for:)(void *a1, void *a2)
{
  v5 = type metadata accessor for NSFastEnumerationIterator();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = v2;
  v18 = *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v20 = LACLogConcurrentEvaluations();
  Logger.init(_:)();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = os_log_type_enabled(v21, v22);
  v55 = a1;
  if (v23)
  {
    v50 = v9;
    v24 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v58 = v49;
    *v24 = 136446466;
    v25 = [a1 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v58);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    if (a2)
    {
      LODWORD(v57) = [a2 identifier];
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v30 = BinaryInteger.description.getter();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v40 = v53;
    v33 = v54;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v58);

    *(v24 + 14) = v41;
    _os_log_impl(&dword_1B0233000, v21, v22, "Removing observer %{public}s for request rid: %{public}s", v24, 0x16u);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v42, -1, -1);
    MEMORY[0x1B27246A0](v24, -1, -1);

    (*(v40 + 8))(v12, v50);
    v34 = v55;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {

    (*(v53 + 8))(v12, v9);
    v33 = v54;
    v34 = v55;
    if (!a2)
    {
LABEL_12:
      [*&v33[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers] removeObject_];
      v43 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers;
      [*&v33[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers] copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10NSMapTableCMd, &_sSo10NSMapTableCMR);
      swift_dynamicCast();
      v54 = v57;
      v44 = [v57 keyEnumerator];
      NSEnumerator.makeIterator()();

      NSFastEnumerationIterator.next()();
      while (v59)
      {
        outlined init with take of Any(&v58, &v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20LACEvaluationRequest_pMd, _sSo20LACEvaluationRequest_pMR);
        if (swift_dynamicCast())
        {
          v46 = v56;
          v47 = *&v33[v43];
          swift_unknownObjectRetain();
          v48 = [v47 objectForKey_];
          if (v48)
          {
            if (v48 == v34)
            {
              v45 = *&v33[v43];
              [v45 removeObjectForKey_];
              swift_unknownObjectRelease();

              v34 = v55;
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          swift_unknownObjectRelease_n();
        }

        NSFastEnumerationIterator.next()();
      }

      (*(v51 + 8))(v8, v52);

      return;
    }
  }

  v35 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers;
  v36 = *&v33[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers];
  swift_unknownObjectRetain_n();
  v37 = [v36 objectForKey_];
  if (v37)
  {
    v38 = v37;
    swift_unknownObjectRelease();
    if (v38 == v34)
    {
      v39 = *&v33[v35];
      [v39 removeObjectForKey_];
    }
  }

  swift_unknownObjectRelease_n();
}

void @objc LACConcurrentEvaluationManagerModel.add(observer:for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t LACConcurrentEvaluationManagerModel.register(_:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v90 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v95 = &v90 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v90 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    if (v11 < 0)
    {
      v88 = v11;
    }

    else
    {
      v88 = v11 & 0xFFFFFFFFFFFFFF8;
    }

    v55 = MEMORY[0x1B2722F00](v88);
    goto LABEL_16;
  }

  v23 = LACConcurrentEvaluationManagerModel.sessionIdentifier(for:)(a1);
  if (!v24)
  {
    v49 = LACLogConcurrentEvaluations();
    Logger.init(_:)();
    swift_unknownObjectRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67109120;
      *(v52 + 4) = [a1 identifier];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0233000, v50, v51, "Missing identifiers to register request rid: %u", v52, 8u);
      MEMORY[0x1B27246A0](v52, -1, -1);
    }

    else
    {
LABEL_31:

      swift_unknownObjectRelease();
    }

    return (*(v4 + 8))(v8, v3);
  }

  v19 = v23;
  v22 = v24;
  type metadata accessor for LACConcurrentEvaluationManagedRequest();
  v8 = swift_allocObject();
  v8[48] = 1;
  *(v8 + 2) = a1;
  *(v8 + 3) = v19;
  *(v8 + 4) = v22;
  *(v8 + 5) = 0;
  v96 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_connectedUIInstances);
  swift_unknownObjectRetain();
  v26 = v25;

  v27 = [a1 identifier];
  v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  v29 = [v26 objectForKey_];

  if (v29)
  {
    v30 = *(v8 + 5);
    *(v8 + 5) = v29;
    swift_unknownObjectRelease();
  }

  v31 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
  v32 = v96;
  swift_beginAccess();
  v33 = *(v32 + v31);
  v34 = *(v33 + 16);
  v93 = v31;
  if (v34 && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v22), (v36 & 1) != 0))
  {
    v37 = *(*(v33 + 56) + 8 * v35);
    swift_endAccess();
    v100 = v37;
    v38 = swift_bridgeObjectRetain_n();
  }

  else
  {
    v38 = swift_endAccess();
    v37 = MEMORY[0x1E69E7CC0];
    v100 = MEMORY[0x1E69E7CC0];
  }

  v99[0] = v8;
  MEMORY[0x1EEE9AC00](v38);
  *(&v90 - 2) = v99;
  v39 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v90 - 4), v37);

  if (v39)
  {

    v40 = LACLogConcurrentEvaluations();
    Logger.init(_:)();

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v99[0] = v44;
      *v43 = 136446210;

      v45 = LACConcurrentEvaluationManagedRequest.description.getter();
      v47 = v46;

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v99);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1B0233000, v41, v42, "Request %{public}s already registered", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1B27246A0](v44, -1, -1);
      MEMORY[0x1B27246A0](v43, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v11, v3);
  }

  v53 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  v54 = v96;
  swift_beginAccess();
  v11 = *(v54 + v53);
  if (v11 >> 62)
  {
    goto LABEL_46;
  }

  v55 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:

  v92 = v3;
  if (v55)
  {
    v91 = v4;
    v50 = 0;
    v3 = v11 & 0xC000000000000001;
    v4 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v56 = MEMORY[0x1B2722E50](v50, v11);
        v57 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        if (v50 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_45;
        }

        v56 = *(v11 + 8 * v50 + 32);

        v57 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_30;
        }
      }

      v58 = *(v56 + 24) == v19 && v22 == *(v56 + 32);
      if (v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v50;
      if (v57 == v55)
      {
        v4 = v91;
        v3 = v92;
        goto LABEL_38;
      }
    }

    v60 = LACLogConcurrentEvaluations();
    v61 = v94;
    Logger.init(_:)();

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v98[0] = v90;
      *v64 = 136446466;

      v65 = LACConcurrentEvaluationManagedRequest.description.getter();
      v67 = v66;

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v98);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      *(v64 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v22, v98);
      _os_log_impl(&dword_1B0233000, v62, v63, "Cancelling stashed request %{public}s because a new request for session %s is registered", v64, 0x16u);
      v69 = v90;
      swift_arrayDestroy();
      MEMORY[0x1B27246A0](v69, -1, -1);
      MEMORY[0x1B27246A0](v64, -1, -1);
    }

    v4 = v91;
    v3 = v92;
    (*(v91 + 8))(v61, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1B0343080;
    *(v70 + 32) = v56;

    LACConcurrentEvaluationManagerModel.cancelRequests(_:)(v70);
  }

LABEL_38:

  v71 = LACLogConcurrentEvaluations();
  v72 = v95;
  Logger.init(_:)();

  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = v4;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v98[0] = v77;
    *v76 = 136446466;

    v78 = LACConcurrentEvaluationManagedRequest.description.getter();
    v80 = v79;

    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v98);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2082;
    *(v76 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v22, v98);
    _os_log_impl(&dword_1B0233000, v73, v74, "Registering request %{public}s with sessionID: %{public}s", v76, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27246A0](v77, -1, -1);
    MEMORY[0x1B27246A0](v76, -1, -1);

    (*(v75 + 8))(v95, v92);
  }

  else
  {

    (*(v4 + 8))(v72, v3);
  }

  v82 = v93;

  MEMORY[0x1B2722B30](v83);
  if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v89 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v84 = v100;
  v85 = v96;
  swift_beginAccess();
  v86 = *(v85 + v82);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = *(v85 + v82);
  *(v85 + v82) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v84, v19, v22, isUniquelyReferenced_nonNull_native);

  *(v85 + v82) = v97;
  swift_endAccess();
  LACConcurrentEvaluationManagerModel.activeRequests.didset();
}

id LACConcurrentEvaluationManagerModel.sessionIdentifier(for:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - v9;
  result = [a1 contextID];
  if (result)
  {
    v12 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v10, v8, v3);
    v13 = [a1 client];
    if (v13)
    {
      v14 = v13;
      v15 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_clientInfoProvider);
      v16 = [a1 options];
      if (v16)
      {
        v17 = v16;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v18.super.isa = 0;
      }

      v19 = [v15 infoForXPCClient:v14 evaluationOptions:v18.super.isa];

      if ([*(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_helper) isClientAllowListedWithClientInfo_])
      {
        v24 = UUID.uuidString.getter();
        v25 = v20;
        MEMORY[0x1B2722A80](45, 0xE100000000000000);
        v23[3] = [v14 processId];
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B2722A80](v21);
        swift_unknownObjectRelease();

        v22 = v24;
      }

      else
      {
        LODWORD(v24) = [v14 processId];
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        swift_unknownObjectRelease();
      }

      (*(v4 + 8))(v10, v3);
      return v22;
    }

    else
    {
      (*(v4 + 8))(v10, v3);
      return 0;
    }
  }

  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.cancelRequests(_:)(uint64_t a1)
{
  v74 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v74 - 8);
  v3 = *(v2 + 8);
  MEMORY[0x1EEE9AC00](v74);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v73 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v63 - v14;
  v65 = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    do
    {
      v17 = LACLogConcurrentEvaluations();
      Logger.init(_:)();
      v18 = v65;

      a1 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      v20 = os_log_type_enabled(a1, v19);
      v79 = v5;
      v78 = v6;
      v71 = v16;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = v2;
        v23 = swift_slowAlloc();
        *&v88 = v23;
        *v21 = 136446210;
        v24 = type metadata accessor for LACConcurrentEvaluationManagedRequest();
        v25 = MEMORY[0x1B2722B60](v18, v24);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v88);
        v6 = v78;

        *(v21 + 4) = v27;
        _os_log_impl(&dword_1B0233000, a1, v19, "Cancelling requests: %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        v28 = v23;
        v2 = v22;
        MEMORY[0x1B27246A0](v28, -1, -1);
        v29 = v21;
        v5 = v79;
        MEMORY[0x1B27246A0](v29, -1, -1);
      }

      v30 = *(v81 + 8);
      v81 += 8;
      v31 = v30;
      v32 = (v30)(v15, v6);
      v15 = 0;
      v70 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers;
      v69 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers;
      v72 = v18 & 0xC000000000000001;
      v64 = v18 & 0xFFFFFFFFFFFFFF8;
      v63 = v18 + 32;
      v76 = " accept idling UI";
      v68 = (v2 + 8);
      v32.n128_u64[0] = 136446466;
      v77 = v32;
      while (v72)
      {
        v33 = MEMORY[0x1B2722E50](v15, v65);
        v34 = __OFADD__(v15++, 1);
        if (v34)
        {
          goto LABEL_28;
        }

LABEL_15:
        v75 = v15;
        v35 = *(v33 + 40);
        if (v35)
        {
          [v35 destroyIdleUI];
        }

        v36 = [*(v80 + v70) objectEnumerator];
        NSEnumerator.makeIterator()();

        while (1)
        {
          NSFastEnumerationIterator.next()();
          if (!v89)
          {
            break;
          }

          outlined init with take of Any(&v88, &v87);
          v37 = LACLogConcurrentEvaluations();
          Logger.init(_:)();
          outlined init with copy of Any(&v87, v86);

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v85 = v41;
            *v40 = v77.n128_u32[0];
            outlined init with copy of Any(v86, &v83);
            v42 = String.init<A>(describing:)();
            v44 = v43;
            __swift_destroy_boxed_opaque_existential_0(v86);
            v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v85);

            *(v40 + 4) = v45;
            *(v40 + 12) = 2082;
            v83 = 0;
            v84 = 0xE000000000000000;

            _StringGuts.grow(_:)(59);
            MEMORY[0x1B2722A80](0xD00000000000002BLL, v76 | 0x8000000000000000);
            v82 = [*(v33 + 16) identifier];
            v46 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1B2722A80](v46);

            MEMORY[0x1B2722A80](0x6E6F697373657320, 0xEC000000203A4449);
            MEMORY[0x1B2722A80](*(v33 + 24), *(v33 + 32));

            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, &v85);

            *(v40 + 14) = v47;
            v5 = v79;
            _os_log_impl(&dword_1B0233000, v38, v39, "Informing %{public}s about canceling of request %{public}s", v40, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B27246A0](v41, -1, -1);
            v48 = v40;
            v6 = v78;
            MEMORY[0x1B27246A0](v48, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0(v86);
          }

          v31(v12, v6);
          outlined init with copy of Any(&v87, v86);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38LACConcurrentEvaluationManagerObserver_pMd, &_sSo38LACConcurrentEvaluationManagerObserver_pMR);
          if (swift_dynamicCast())
          {
            [v83 systemDidCancelRequest:*(v33 + 16) manager:v80];
            swift_unknownObjectRelease();
          }

          __swift_destroy_boxed_opaque_existential_0(&v87);
        }

        (*v68)(v5, v74);
        v49 = [*(v80 + v69) objectForKey_];
        v50 = LACLogConcurrentEvaluations();
        v2 = v73;
        Logger.init(_:)();

        swift_unknownObjectRetain();
        a1 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(a1, v51))
        {
          v52 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *&v88 = v67;
          *v52 = v77.n128_u32[0];
          *&v87 = v49;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38LACConcurrentEvaluationManagerObserver_pSgMd, &_sSo38LACConcurrentEvaluationManagerObserver_pSgMR);
          v53 = String.init<A>(describing:)();
          v66 = v51;
          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v88);

          *(v52 + 4) = v55;
          *(v52 + 12) = 2082;

          v56 = LACConcurrentEvaluationManagedRequest.description.getter();
          v58 = v57;

          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v88);
          v5 = v79;

          *(v52 + 14) = v59;
          _os_log_impl(&dword_1B0233000, a1, v66, "Informing %{public}s about canceling of request %{public}s", v52, 0x16u);
          v60 = v67;
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v60, -1, -1);
          v61 = v52;
          v6 = v78;
          MEMORY[0x1B27246A0](v61, -1, -1);
        }

        v31(v2, v6);
        v15 = v75;
        if (v49)
        {
          a1 = *(v33 + 16);
          swift_unknownObjectRetain();
          [v49 systemDidCancelRequest:a1 manager:v80];

          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
        }

        else
        {
        }

        if (v15 == v71)
        {
          return result;
        }
      }

      if (v15 >= *(v64 + 16))
      {
        goto LABEL_29;
      }

      v33 = *(v63 + 8 * v15);

      v34 = __OFADD__(v15++, 1);
      if (!v34)
      {
        goto LABEL_15;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      if (a1 < 0)
      {
        v62 = a1;
      }

      else
      {
        v62 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x1B2722F00](v62);
      v16 = result;
    }

    while (result);
  }

  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.stashRequest(_:acceptsIdleUI:)(void *a1, int a2)
{
  v118 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v121 = &v112 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v117 = &v112 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v116 = &v112 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v114 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v112 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if (v26)
  {
    v27 = LACConcurrentEvaluationManagerModel.sessionIdentifier(for:)(a1);
    if (!v28)
    {
LABEL_19:
      v39 = LACLogConcurrentEvaluations();
      Logger.init(_:)();
      swift_unknownObjectRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 67109120;
        *(v42 + 4) = [a1 identifier];
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v40, v41, "Missing identifiers to stash request rid: %u", v42, 8u);
        MEMORY[0x1B27246A0](v42, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v5 + 8))(v9, v4);
    }

    v29 = v27;
    v30 = v28;
    v31 = v2;
    v32 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
    swift_beginAccess();
    v33 = *(v2 + v32);
    if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30), (v35 & 1) != 0))
    {
      v2 = *(*(v33 + 56) + 8 * v34);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v2 = MEMORY[0x1E69E7CC0];
    }

    v122 = v29;
    v123 = v30;
    v119 = v4;
    v120 = v5;
    v112 = v2 >> 62;
    v113 = v31;
    if (!(v2 >> 62))
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_9;
      }

LABEL_72:

      v100 = LACLogConcurrentEvaluations();
      v101 = v121;
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v125[0] = v105;
        *v104 = 136446466;
        v106 = [a1 description];
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;

        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, v125);

        *(v104 + 4) = v110;
        *(v104 + 12) = 1024;
        LODWORD(v110) = [a1 identifier];
        swift_unknownObjectRelease();
        *(v104 + 14) = v110;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v102, v103, "No active request for %{public}s rid: %u to stash", v104, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x1B27246A0](v105, -1, -1);
        MEMORY[0x1B27246A0](v104, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      return (*(v120 + 8))(v101, v119);
    }
  }

  else
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  if (v2 < 0)
  {
    v99 = v2;
  }

  else
  {
    v99 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = MEMORY[0x1B2722F00](v99);
  if (!v4)
  {
    goto LABEL_72;
  }

LABEL_9:
  v36 = 0;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B2722E50](v36, v2);
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v36 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_66;
      }

      v9 = *(v2 + 8 * v36 + 32);

      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_18;
      }
    }

    v38 = [v9[2] identifier];
    if (v38 == [a1 identifier])
    {
      break;
    }

    ++v36;
    if (v37 == v4)
    {
      goto LABEL_72;
    }
  }

  v43 = v118;
  *(v9 + 48) = v118 & 1;
  if (v112)
  {
    if (v2 < 0)
    {
      v46 = v2;
    }

    else
    {
      v46 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v44 = MEMORY[0x1B2722F00](v46);
  }

  else
  {
    v44 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = v119;
  v48 = v123;

  v49 = v120;
  if (v44 == 1)
  {
    v50 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
    v51 = v113;
    swift_beginAccess();
    v2 = *(v51 + v50);
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v111 = v2;
      }

      else
      {
        v111 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v47 = MEMORY[0x1B2722F00](v111);
    }

    else
    {
      v47 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47)
    {
      v48 = 0;
      v49 = v2 & 0xC000000000000001;
      a1 = (v2 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v49)
        {
          v52 = MEMORY[0x1B2722E50](v48, v2);
          v53 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v48 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v52 = *(v2 + 8 * v48 + 32);

          v53 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        v54 = *(v52 + 24) == v122 && v123 == *(v52 + 32);
        if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v48;
        if (v53 == v47)
        {
          goto LABEL_49;
        }
      }

      v77 = [*(v52 + 16) identifier];
      v78 = [v9[2] identifier];
      v79 = LACLogConcurrentEvaluations();
      if (v77 == v78)
      {
        v80 = v115;
        Logger.init(_:)();

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v124 = v84;
          *v83 = 136446210;

          v85 = LACConcurrentEvaluationManagedRequest.description.getter();
          v87 = v86;

          v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v124);

          *(v83 + 4) = v88;
          _os_log_impl(&dword_1B0233000, v81, v82, "Request %{public}s already stashed", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v84);
          MEMORY[0x1B27246A0](v84, -1, -1);
          MEMORY[0x1B27246A0](v83, -1, -1);
        }

        else
        {
        }

        (*(v120 + 8))(v80, v119);
        LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(v9, v122, v123);
      }

      else
      {
        v89 = v114;
        Logger.init(_:)();
        v90 = v123;

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();

        v93 = os_log_type_enabled(v91, v92);
        v94 = v119;
        if (v93)
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v124 = v96;
          *v95 = 136446210;
          v97 = v122;
          *(v95 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v124);
          _os_log_impl(&dword_1B0233000, v91, v92, "There is another stashed request for sessionID: %{public}s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v96);
          MEMORY[0x1B27246A0](v96, -1, -1);
          v90 = v123;
          MEMORY[0x1B27246A0](v95, -1, -1);

          (*(v120 + 8))(v89, v94);
        }

        else
        {

          (*(v120 + 8))(v89, v94);
          v97 = v122;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_1B0343080;
        *(v98 + 32) = v9;

        LACConcurrentEvaluationManagerModel.cancelRequests(_:)(v98);

        LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(v9, v97, v90);
      }
    }

    else
    {
LABEL_49:

      v63 = LACLogConcurrentEvaluations();
      v64 = v116;
      Logger.init(_:)();

      v65 = v123;

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v124 = v69;
        *v68 = 136446722;

        v70 = LACConcurrentEvaluationManagedRequest.description.getter();
        v72 = v71;

        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v124);
        v65 = v123;

        *(v68 + 4) = v73;
        *(v68 + 12) = 2082;
        v74 = v64;
        v75 = v122;
        *(v68 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v65, &v124);
        *(v68 + 22) = 1024;
        *(v68 + 24) = v43 & 1;
        _os_log_impl(&dword_1B0233000, v66, v67, "Stashing request %{public}s with sessionID: %{public}s acceptsIdleUI: %{BOOL}d", v68, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x1B27246A0](v69, -1, -1);
        MEMORY[0x1B27246A0](v68, -1, -1);

        (*(v120 + 8))(v74, v119);
      }

      else
      {

        (*(v120 + 8))(v64, v119);
        v75 = v122;
      }

      LACConcurrentEvaluationManagerModel.stashRequest(_:)(v9);
      LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(v9, v75, v65);
    }
  }

  else
  {
LABEL_47:
    v55 = LACLogConcurrentEvaluations();
    v56 = v117;
    Logger.init(_:)();

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v125[0] = v60;
      *v59 = 136446210;
      v61 = v122;
      *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, v125);
      _os_log_impl(&dword_1B0233000, v57, v58, "There are other active requests for sessionID: %{public}s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x1B27246A0](v60, -1, -1);
      v62 = v59;
      v48 = v123;
      MEMORY[0x1B27246A0](v62, -1, -1);

      (*(v49 + 8))(v56, v47);
    }

    else
    {

      (*(v49 + 8))(v56, v47);
      v61 = v122;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1B0343080;
    *(v76 + 32) = v9;

    LACConcurrentEvaluationManagerModel.cancelRequests(_:)(v76);

    LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(v9, v61, v48);
  }
}

id LACConcurrentEvaluationManagerModel.stashRequest(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  swift_beginAccess();

  MEMORY[0x1B2722B30](v9);
  if (*((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = swift_endAccess();
  if ((*(a1 + 48) & 1) == 0 && *(a1 + 40))
  {
    v11 = LACLogConcurrentEvaluations();
    Logger.init(_:)();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = LACConcurrentEvaluationManagedRequest.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1B0233000, v12, v13, "Destroying idle UI for %s because the request does not allow idling UI", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B27246A0](v15, -1, -1);
      MEMORY[0x1B27246A0](v14, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    result = *(a1 + 40);
    if (result)
    {
      return [result destroyIdleUI];
    }
  }

  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.unregisterRequest(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v68 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v62 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v20)
  {
    v21 = LACConcurrentEvaluationManagerModel.sessionIdentifier(for:)(a1);
    if (!v22)
    {
LABEL_19:
      v32 = LACLogConcurrentEvaluations();
      Logger.init(_:)();
      swift_unknownObjectRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 67109120;
        *(v35 + 4) = [a1 identifier];
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v33, v34, "Missing identifiers to unregister request %u", v35, 8u);
        MEMORY[0x1B27246A0](v35, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (v5[1])(v9, v4);
    }

    v23 = v21;
    v24 = v22;
    v25 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
    swift_beginAccess();
    v26 = *(v2 + v25);
    if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24), (v28 & 1) != 0))
    {
      v17 = *(*(v26 + 56) + 8 * v27);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v65 = v24;
    v66 = v5;
    v62 = v23;
    v63 = v2;
    v67 = v4;
    if (!(v17 >> 62))
    {
      v29 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_9;
      }

LABEL_34:

      v51 = LACLogConcurrentEvaluations();
      v52 = v68;
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v69[0] = v56;
        *v55 = 136446466;
        v57 = [a1 description];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v69);

        *(v55 + 4) = v61;
        *(v55 + 12) = 1024;
        LODWORD(v61) = [a1 identifier];
        swift_unknownObjectRelease();
        *(v55 + 14) = v61;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_1B0233000, v53, v54, "No active request for %{public}s rid: %u to remove", v55, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x1B27246A0](v56, -1, -1);
        MEMORY[0x1B27246A0](v55, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      return (v66[1])(v52, v67);
    }
  }

  else
  {
LABEL_29:
    __break(1u);
  }

  if (v17 < 0)
  {
    v50 = v17;
  }

  else
  {
    v50 = v17 & 0xFFFFFFFFFFFFFF8;
  }

  v29 = MEMORY[0x1B2722F00](v50);
  if (!v29)
  {
    goto LABEL_34;
  }

LABEL_9:
  v30 = 0;
  v4 = v17 & 0xC000000000000001;
  while (1)
  {
    if (v4)
    {
      v9 = MEMORY[0x1B2722E50](v30, v17);
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v30 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v9 = *(v17 + 8 * v30 + 32);

      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_18;
      }
    }

    v5 = [v9[2] identifier];
    if (v5 == [a1 identifier])
    {
      break;
    }

    ++v30;
    if (v31 == v29)
    {
      goto LABEL_34;
    }
  }

  v36 = LACLogConcurrentEvaluations();
  v37 = v64;
  Logger.init(_:)();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v69[0] = v41;
    *v40 = 136446210;

    v42 = LACConcurrentEvaluationManagedRequest.description.getter();
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v69);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1B0233000, v38, v39, "Unregistering request %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1B27246A0](v41, -1, -1);
    MEMORY[0x1B27246A0](v40, -1, -1);
  }

  (v66[1])(v37, v67);
  v46 = v62;
  v47 = v65;
  v48 = v9[5];
  if (v48)
  {
    [v48 destroyIdleUI];
  }

  LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(v9, v46, v47);
}

uint64_t LACConcurrentEvaluationManagerModel.removeActiveRequest(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v18 = v11;
  }

  else
  {
    swift_endAccess();
    v18 = MEMORY[0x1E69E7CC0];
  }

  v12 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v18, a1);

  if (!(v18 >> 62))
  {
    v13 = v18 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= v12)
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    if (v12 < 0)
    {
      v17 = v12;
    }

    else
    {
      v17 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    if (!MEMORY[0x1B2722F00](v17))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    v16 = v18;
  }

  else
  {
    v16 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  v14 = MEMORY[0x1B2722F00](v16);
  if (v14 < v12)
  {
    goto LABEL_15;
  }

LABEL_7:
  specialized Array.replaceSubrange<A>(_:with:)(v12, v14, v13);
  v12 = v18;
  if (v18 >> 62)
  {
    goto LABEL_16;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    v12 = 0;
  }

LABEL_10:
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v12, a2, a3);
  swift_endAccess();
  return LACConcurrentEvaluationManagerModel.activeRequests.didset();
}

void @objc LACConcurrentEvaluationManagerModel.register(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

unint64_t LACConcurrentEvaluationManagerModel.restartRequests(forContextID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v21 = LACLogConcurrentEvaluations();
    Logger.init(_:)();
    v22 = *(v5 + 16);
    v33 = a1;
    v22(v8, a1, v4);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32[1] = v2;
      v26 = v25;
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446210;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v5 + 8))(v8, v4);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v36);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1B0233000, v23, v24, "Retrying requests with UUID %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B27246A0](v27, -1, -1);
      MEMORY[0x1B27246A0](v26, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    (*(v34 + 8))(v12, v35);
    return LACConcurrentEvaluationManagerModel.retryStashedRequests(contextID:)(v33) & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t LACConcurrentEvaluationManagerModel.retryStashedRequests(contextID:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v59 - v9;
  v10 = type metadata accessor for Logger();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v59 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if (v23)
  {
    v25 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
    v26 = swift_beginAccess();
    v27 = *(v1 + v25);
    MEMORY[0x1EEE9AC00](v26);
    *(&v59 - 2) = a1;

    result = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in LACConcurrentEvaluationManagerModel.retryStashedRequests(contextID:), &v59 - 4, v27);
    v23 = result;
    v24 = result & 0xFFFFFFFFFFFFFF8;
    v16 = result >> 62;
    if (!(result >> 62))
    {
      v29 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  if (v23 < 0)
  {
    v44 = v23;
  }

  else
  {
    v44 = v24;
  }

  result = MEMORY[0x1B2722F00](v44);
  v29 = result;
LABEL_4:
  v30 = v3;
  v31 = v4;
  if (!v29)
  {
    v61 = 0;

    v35 = LACLogConcurrentEvaluations();
    Logger.init(_:)();
    (*(v4 + 16))(v8, a1, v30);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v64[0] = v39;
      *v38 = 136446210;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v31 + 8))(v8, v30);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v64);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1B0233000, v36, v37, "No requests to retry for contextID: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1B27246A0](v39, -1, -1);
      MEMORY[0x1B27246A0](v38, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v8, v30);
    }

    (*(v62 + 8))(v14, v63);
    v29 = v61;
    return v29 != 0;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x1B2722E50](0, v23);
    v33 = v23 & 0xFFFFFFFFFFFFFF8;
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v23 + 32);

    v33 = v23 & 0xFFFFFFFFFFFFFF8;
    if (!v16)
    {
LABEL_8:
      v34 = *(v33 + 16);
      goto LABEL_23;
    }

LABEL_19:
    if (v23 < 0)
    {
      v45 = v23;
    }

    else
    {
      v45 = v33;
    }

    v34 = MEMORY[0x1B2722F00](v45);
LABEL_23:

    if (v34 >= 2)
    {
      v59 = v1;
      v46 = LACLogConcurrentEvaluations();
      v47 = v61;
      Logger.init(_:)();
      v48 = v60;
      (*(v4 + 16))(v60, a1, v30);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = v48;
        v53 = swift_slowAlloc();
        v64[0] = v53;
        *v51 = 136446210;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v30;
        v57 = v56;
        (*(v31 + 8))(v52, v55);
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v57, v64);

        *(v51 + 4) = v58;
        _os_log_impl(&dword_1B0233000, v49, v50, "There are more than one requests for contextID: %{public}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x1B27246A0](v53, -1, -1);
        MEMORY[0x1B27246A0](v51, -1, -1);

        (*(v62 + 8))(v61, v63);
      }

      else
      {

        (*(v4 + 8))(v48, v30);
        (*(v62 + 8))(v47, v63);
      }
    }

    LACConcurrentEvaluationManagerModel.unstashRequest(_:)(v32);

    return v29 != 0;
  }

  __break(1u);
  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.cancelRequests(forContextID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v21 = LACLogConcurrentEvaluations();
    Logger.init(_:)();
    v22 = *(v5 + 16);
    v33 = a1;
    v22(v8, a1, v4);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32[1] = v2;
      v26 = v25;
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446210;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v5 + 8))(v8, v4);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v36);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1B0233000, v23, v24, "Canceling requests with UUID %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B27246A0](v27, -1, -1);
      MEMORY[0x1B27246A0](v26, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    (*(v34 + 8))(v12, v35);
    return LACConcurrentEvaluationManagerModel.cancelStashedRequests(contextID:)(v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.cancelStashedRequests(contextID:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  v20 = (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_6:
    v29 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 < 0)
    {
      v29 = v20;
    }

    v30 = v20;
    v31 = MEMORY[0x1B2722F00](v29);
    v20 = v30;
    if (v31)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v19 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  v21 = swift_beginAccess();
  v22 = *(v1 + v19);
  MEMORY[0x1EEE9AC00](v21);
  *(&v41 - 2) = a1;

  v20 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in LACConcurrentEvaluationManagerModel.cancelStashedRequests(contextID:), &v41 - 4, v22);
  if (v20 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v23 = *(v1 + v19);
    v24 = MEMORY[0x1EEE9AC00](v20);
    *(&v41 - 2) = a1;
    v25 = v24;

    v26 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in LACConcurrentEvaluationManagerModel.cancelStashedRequests(contextID:), &v41 - 4, v23);
    v27 = *(v1 + v19);
    *(v1 + v19) = v26;

    LACConcurrentEvaluationManagerModel.cancelRequests(_:)(v25);
  }

LABEL_9:

  v32 = LACLogConcurrentEvaluations();
  Logger.init(_:)();
  (*(v4 + 16))(v7, a1, v3);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v44 = v36;
    *v35 = 136446210;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v4 + 8))(v7, v3);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v44);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1B0233000, v33, v34, "No requests to cancel for contextID: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1B27246A0](v36, -1, -1);
    MEMORY[0x1B27246A0](v35, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  return (*(v42 + 8))(v11, v43);
}

id LACConcurrentEvaluationManagerModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACConcurrentEvaluationManagerModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in LACConcurrentEvaluationManagerModel.idleUIGotFocus(_:identifier:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v43 - v14;
  v16 = [a1 unsignedIntValue];
  v17 = LACLogConcurrentEvaluations();
  Logger.init(_:)();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v48 = v9;
    v21 = a4;
    v22 = a3;
    v23 = a2;
    v24 = v13;
    v25 = v20;
    *v20 = 67109120;
    *(v20 + 4) = v16;
    _os_log_impl(&dword_1B0233000, v18, v19, "Idle UI for rid: %u got focus", v20, 8u);
    v26 = v25;
    v13 = v24;
    a2 = v23;
    a3 = v22;
    a4 = v21;
    v9 = v48;
    MEMORY[0x1B27246A0](v26, -1, -1);
  }

  v48 = v9[1];
  (v48)(v15, v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_25;
  }

  v46 = a4;
  v28 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  v29 = Strong;
  swift_beginAccess();
  v30 = *&v29[v28];

  v47 = a3;
  v44 = v13;
  v45 = v8;
  v43[1] = a2;
  if (v30 >> 62)
  {
LABEL_20:
    if (v30 < 0)
    {
      v38 = v30;
    }

    else
    {
      v38 = v30 & 0xFFFFFFFFFFFFFF8;
    }

    v31 = MEMORY[0x1B2722F00](v38);
    if (v31)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_24:

    a3 = v47;
    v13 = v44;
    v8 = v45;
LABEL_25:
    v39 = LACLogConcurrentEvaluations();
    Logger.init(_:)();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67109120;
      *(v42 + 4) = v16;
      _os_log_impl(&dword_1B0233000, v40, v41, "No stashed request to refocus with rid: %u", v42, 8u);
      MEMORY[0x1B27246A0](v42, -1, -1);
    }

    (v48)(v13, v8);
    return a3(0);
  }

LABEL_6:
  v32 = 0;
  while ((v30 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1B2722E50](v32, v30);
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    if ([*(v33 + 16) identifier] == v16)
    {
      goto LABEL_16;
    }

    ++v32;
    if (v34 == v31)
    {
      goto LABEL_24;
    }
  }

  if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_20;
  }

  v33 = *(v30 + 8 * v32 + 32);

  v34 = v32 + 1;
  if (!__OFADD__(v32, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    LACConcurrentEvaluationManagerModel.unstashRequest(_:)(v33);
  }

  return v47(0);
}

uint64_t LACConcurrentEvaluationManagerModel.unstashRequest(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v52 - v9;
  v11 = type metadata accessor for NSFastEnumerationIterator();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 40);
  if (v15)
  {
    [v15 expectReconnectionOfIdleUI];
  }

  v16 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  swift_beginAccess();

  v17 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v2 + v16), a1);

  v18 = *(v2 + v16);
  v54 = v8;
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v51 = v18;
    }

    else
    {
      v51 = v18 & 0xFFFFFFFFFFFFFF8;
    }

    v19 = MEMORY[0x1B2722F00](v51);
    if (v19 >= v17)
    {
      goto LABEL_5;
    }

LABEL_22:
    __break(1u);
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 < v17)
  {
    goto LABEL_22;
  }

LABEL_5:
  v52 = v11;
  specialized Array.replaceSubrange<A>(_:with:)(v17, v19, &v68);
  swift_endAccess();
  v20 = [*(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_observers) objectEnumerator];
  NSEnumerator.makeIterator()();

  NSFastEnumerationIterator.next()();
  v58 = v2;
  v59 = v4;
  if (v67)
  {
    v22 = (v55 + 8);
    v57 = " accept idling UI";
    *&v21 = 136446466;
    v56 = v21;
    do
    {
      outlined init with take of Any(&v66, v65);
      v23 = LACLogConcurrentEvaluations();
      Logger.init(_:)();
      outlined init with copy of Any(v65, v64);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v63 = v27;
        *v26 = v56;
        outlined init with copy of Any(v64, &v61);
        v28 = String.init<A>(describing:)();
        v30 = v29;
        __swift_destroy_boxed_opaque_existential_0(v64);
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v63);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2082;
        v61 = 0;
        v62 = 0xE000000000000000;
        _StringGuts.grow(_:)(59);
        MEMORY[0x1B2722A80](0xD00000000000002BLL, v57 | 0x8000000000000000);
        v60 = [*(a1 + 16) identifier];
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1B2722A80](v32);

        MEMORY[0x1B2722A80](0x6E6F697373657320, 0xEC000000203A4449);
        MEMORY[0x1B2722A80](*(a1 + 24), *(a1 + 32));
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v63);

        *(v26 + 14) = v33;
        v2 = v58;
        _os_log_impl(&dword_1B0233000, v24, v25, "Informing %{public}s about unstashing of request %{public}s", v26, 0x16u);
        swift_arrayDestroy();
        v34 = v27;
        v4 = v59;
        MEMORY[0x1B27246A0](v34, -1, -1);
        MEMORY[0x1B27246A0](v26, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v64);
      }

      (*v22)(v10, v4);
      outlined init with copy of Any(v65, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38LACConcurrentEvaluationManagerObserver_pMd, &_sSo38LACConcurrentEvaluationManagerObserver_pMR);
      if (swift_dynamicCast())
      {
        [v61 systemReadyForRequest:*(a1 + 16) manager:v2];
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_0(v65);
      NSFastEnumerationIterator.next()();
    }

    while (v67);
  }

  (*(v53 + 8))(v14, v52);
  v35 = *(a1 + 16);
  v36 = [*(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_specializedObservers) objectForKey_];
  v37 = LACLogConcurrentEvaluations();
  v38 = v54;
  Logger.init(_:)();

  swift_unknownObjectRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v66 = v42;
    *v41 = 136446466;
    *&v65[0] = v36;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38LACConcurrentEvaluationManagerObserver_pSgMd, &_sSo38LACConcurrentEvaluationManagerObserver_pSgMR);
    v43 = String.init<A>(describing:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v66);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2082;
    v46 = LACConcurrentEvaluationManagedRequest.description.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v66);

    *(v41 + 14) = v48;
    _os_log_impl(&dword_1B0233000, v39, v40, "Informing %{public}s about unstashing of request %{public}s", v41, 0x16u);
    swift_arrayDestroy();
    v49 = v42;
    v2 = v58;
    MEMORY[0x1B27246A0](v49, -1, -1);
    MEMORY[0x1B27246A0](v41, -1, -1);
  }

  result = (*(v55 + 8))(v38, v59);
  if (v36)
  {
    [v36 systemReadyForRequest:v35 manager:v2];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t LACConcurrentEvaluationManagerModel.connect(_:identifier:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a2;
  v18[6] = a1;
  aBlock[4] = partial apply for closure #1 in LACConcurrentEvaluationManagerModel.connect(_:identifier:completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14;
  v19 = _Block_copy(aBlock);

  v20 = a2;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2722D20](0, v16, v12, v19);
  _Block_release(v19);
  (*(v24 + 8))(v12, v9);
  (*(v13 + 8))(v16, v23);
}

void closure #1 in LACConcurrentEvaluationManagerModel.connect(_:identifier:completion:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, void *a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = [a4 unsignedIntValue];
    v16 = LACLogConcurrentEvaluations();
    Logger.init(_:)();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v42 = a5;
      v20 = a2;
      v21 = v19;
      *v19 = 67109120;
      *(v19 + 4) = v15;
      _os_log_impl(&dword_1B0233000, v17, v18, "Connect idle UI for rid: %u", v19, 8u);
      v22 = v21;
      a2 = v20;
      a5 = v42;
      MEMORY[0x1B27246A0](v22, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    v23 = LACConcurrentEvaluationManagerModel.activeOrStashedRequest(with:)(v15);
    if (v23)
    {
      if ((*(v23 + 48) & 1) == 0)
      {
        v38 = objc_opt_self();
        v39 = MEMORY[0x1B27229A0](0xD000000000000021, 0x80000001B0356B00);
        v40 = [v38 errorWithCode:-1000 debugDescription:v39];

        a2(0, v40);

        goto LABEL_11;
      }

      v24 = *(v23 + 40);
      *(v23 + 40) = a5;
      v25 = v23;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v26 = *(v25 + 16);
      v27 = *&v14[OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_connectedUIInstances];
      v28 = [v26 identifier];
      v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
      [v27 setObject:a5 forKey:v29];

      v30 = v14;
      a2(v14, 0);
    }

    else
    {
      v34 = objc_opt_self();
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v44 = 0xD000000000000027;
      v45 = 0x80000001B0356AD0;
      v43 = v15;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2722A80](v35);

      v36 = MEMORY[0x1B27229A0](v44, v45);

      v37 = [v34 errorWithCode:-1000 debugDescription:v36];

      v30 = v37;
      a2(0, v37);
    }

    v14 = v30;
  }

  else
  {
    v31 = objc_opt_self();
    v32 = MEMORY[0x1B27229A0](0xD000000000000011, 0x80000001B0356AB0);
    v33 = [v31 errorWithCode:-1000 debugDescription:v32];

    v14 = v33;
    a2(0, v33);
  }

LABEL_11:
}

uint64_t LACConcurrentEvaluationManagerModel.activeOrStashedRequest(with:)(int a1)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_stashedRequests;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B2722E50](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          if (v4 < 0)
          {
            v14 = v4;
          }

          else
          {
            v14 = v4 & 0xFFFFFFFFFFFFFF8;
          }

          v5 = MEMORY[0x1B2722F00](v14);
          goto LABEL_3;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }
      }

      if ([*(v7 + 16) identifier] == a1)
      {
        goto LABEL_26;
      }

      ++v6;
    }

    while (v8 != v5);
  }

  v9 = OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_activeRequests;
  swift_beginAccess();
  v10 = *(v1 + v9);

  v1 = specialized Sequence.flatMap<A>(_:)(v11);

  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v15 = v1;
    }

    else
    {
      v15 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x1B2722F00](v15);
    if (v4)
    {
      goto LABEL_16;
    }

LABEL_38:

    return 0;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_16:
  v12 = 0;
  while ((v1 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B2722E50](v12, v1);
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_25;
    }

LABEL_20:
    if ([*(v7 + 16) identifier] == a1)
    {
      goto LABEL_26;
    }

    ++v12;
    if (v13 == v4)
    {
      goto LABEL_38;
    }
  }

  if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v7 = *(v1 + 8 * v12 + 32);

  v13 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
LABEL_26:

  return v7;
}

Swift::Void __swiftcall LACConcurrentEvaluationManagerModel.connectionInvalidated(forIdentifier:)(NSNumber_optional forIdentifier)
{
  isa = forIdentifier.value.super.super.isa;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isa)
  {
    v8 = [(objc_class *)isa unsignedIntValue];
    [*(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_connectedUIInstances) removeObjectForKey_];
    v9 = LACConcurrentEvaluationManagerModel.activeOrStashedRequest(with:)(v8);
    if (v9)
    {
      v10 = v9;
      v11 = LACLogConcurrentEvaluations();
      Logger.init(_:)();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109120;
        *(v14 + 4) = v8;
        _os_log_impl(&dword_1B0233000, v12, v13, "Connection invalidated for request rid: %u", v14, 8u);
        MEMORY[0x1B27246A0](v14, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
      v15 = *(v10 + 40);
      *(v10 + 40) = 0;

      swift_unknownObjectRelease();
    }
  }
}

void *specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v23 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x1B2722F00](v17))
  {
    v9 = 0;
    v20 = v5 & 0xFFFFFFFFFFFFFF8;
    v21 = v5 & 0xC000000000000001;
    v19 = v5;
    while (1)
    {
      if (v21)
      {
        v10 = MEMORY[0x1B2722E50](v9, v5);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          return v3;
        }

        goto LABEL_9;
      }

      if (v9 >= *(v20 + 16))
      {
        break;
      }

      v10 = *(v5 + 8 * v9 + 32);

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      v22 = v10;
      v3 = a2;
      v12 = a1(&v22);
      if (v4)
      {
        goto LABEL_15;
      }

      if (v12)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = i;
        v14 = a1;
        v15 = a2;
        v16 = v23[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v15;
        a1 = v14;
        i = v13;
        v5 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v3 = &v23;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v9;
      if (v11 == i)
      {
        v3 = v23;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_18:
    if (v5 < 0)
    {
      v17 = v5;
    }

    else
    {
      v17 = v5 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_23:

  return v3;
}

uint64_t closure #1 in LACConcurrentEvaluationManagerModel.retryStashedRequests(contextID:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  v21 = [*(*a1 + 16) contextID];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v5 + 56);
    v23(v20, 0, 1, v4);
  }

  else
  {
    v23 = *(v5 + 56);
    v23(v20, 1, 1, v4);
  }

  (*(v5 + 16))(v18, a2, v4);
  v23(v18, 0, 1, v4);
  v24 = *(v8 + 48);
  outlined init with copy of UUID?(v20, v11);
  outlined init with copy of UUID?(v18, &v11[v24]);
  v25 = *(v5 + 48);
  if (v25(v11, 1, v4) != 1)
  {
    v27 = v32;
    outlined init with copy of UUID?(v11, v32);
    if (v25(&v11[v24], 1, v4) != 1)
    {
      v28 = v31;
      (*(v5 + 32))(v31, &v11[v24], v4);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v28, v4);
      outlined destroy of AsyncStream<()>.Continuation?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of AsyncStream<()>.Continuation?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v29(v32, v4);
      outlined destroy of AsyncStream<()>.Continuation?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v26 & 1;
    }

    outlined destroy of AsyncStream<()>.Continuation?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v27, v4);
    goto LABEL_9;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v25(&v11[v24], 1, v4) != 1)
  {
LABEL_9:
    outlined destroy of AsyncStream<()>.Continuation?(v11, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v26 = 0;
    return v26 & 1;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = 1;
  return v26 & 1;
}

uint64_t closure #2 in LACConcurrentEvaluationManagerModel.cancelStashedRequests(contextID:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v34 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31[-v19];
  v21 = [*(*a1 + 16) contextID];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v5 + 56);
    v23(v20, 0, 1, v4);
  }

  else
  {
    v23 = *(v5 + 56);
    v23(v20, 1, 1, v4);
  }

  (*(v5 + 16))(v18, a2, v4);
  v23(v18, 0, 1, v4);
  v24 = *(v8 + 48);
  outlined init with copy of UUID?(v20, v11);
  outlined init with copy of UUID?(v18, &v11[v24]);
  v25 = *(v5 + 48);
  if (v25(v11, 1, v4) != 1)
  {
    v27 = v34;
    outlined init with copy of UUID?(v11, v34);
    if (v25(&v11[v24], 1, v4) != 1)
    {
      v28 = v33;
      (*(v5 + 32))(v33, &v11[v24], v4);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v28, v4);
      outlined destroy of AsyncStream<()>.Continuation?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of AsyncStream<()>.Continuation?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v29(v27, v4);
      outlined destroy of AsyncStream<()>.Continuation?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v26 = v32 ^ 1;
      return v26 & 1;
    }

    outlined destroy of AsyncStream<()>.Continuation?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of AsyncStream<()>.Continuation?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v27, v4);
    goto LABEL_9;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of AsyncStream<()>.Continuation?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v25(&v11[v24], 1, v4) != 1)
  {
LABEL_9:
    outlined destroy of AsyncStream<()>.Continuation?(v11, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v26 = 1;
    return v26 & 1;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = 0;
  return v26 & 1;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v37 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v38 = result;
  v40 = v2;
  while (v5)
  {
LABEL_10:
    v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = v10 >> 62;
    v12 = v10;
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v35 = v10;
      }

      else
      {
        v35 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = MEMORY[0x1B2722F00](v35);
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v36 = v8;
      }

      else
      {
        v36 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x1B2722F00](v36);
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v13;
    v15 = __OFADD__(result, v13);
    v16 = result + v13;
    if (v15)
    {
      goto LABEL_52;
    }

    LODWORD(result) = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v17 = v8;
    if (v14)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result != 1 || (v18 = v8 & 0xFFFFFFFFFFFFFF8, v16 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      v19 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v14)
      {
        if (v8 < 0)
        {
          v19 = v8;
        }

        MEMORY[0x1B2722F00](v19);
      }

      else
      {
        v20 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
    }

    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = v12;
    v41 = v17;
    if (v11)
    {
      if (v12 < 0)
      {
        v25 = v12;
      }

      else
      {
        v25 = v12 & 0xFFFFFFFFFFFFFF8;
      }

      v26 = v18;
      result = MEMORY[0x1B2722F00](v25);
      v18 = v26;
      v23 = v12;
      v24 = result;
    }

    else
    {
      v24 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v24)
    {
      if (((v22 >> 1) - v21) < v43)
      {
        goto LABEL_54;
      }

      v27 = v18 + 8 * v21 + 32;
      v39 = v18;
      if (v11)
      {
        if (v24 < 1)
        {
          goto LABEL_56;
        }

        v28 = v23;
        lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [LACConcurrentEvaluationManagedRequest] and conformance [A], &_sSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGMd, &_sSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGMR);
        for (i = 0; i != v24; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGMd, &_sSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGMR);
          v30 = specialized protocol witness for Collection.subscript.read in conformance [A](v42, i, v28);
          v32 = *v31;

          (v30)(v42, 0);
          *(v27 + 8 * i) = v32;
        }
      }

      else
      {
        type metadata accessor for LACConcurrentEvaluationManagedRequest();
        swift_arrayInitWithCopy();
      }

      v1 = v38;
      v2 = v40;
      v8 = v41;
      if (v43 >= 1)
      {
        v33 = *(v39 + 16);
        v15 = __OFADD__(v33, v43);
        v34 = v33 + v43;
        if (v15)
        {
          goto LABEL_55;
        }

        *(v39 + 16) = v34;
      }
    }

    else
    {

      v2 = v40;
      v8 = v41;
      if (v43 > 0)
      {
        goto LABEL_53;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v37)
    {

      return v8;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t LACConcurrentEvaluationManagedRequest.description.getter()
{
  _StringGuts.grow(_:)(59);
  MEMORY[0x1B2722A80](0xD00000000000002BLL, 0x80000001B0356B30);
  v3 = [*(v0 + 16) identifier];
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2722A80](v1);

  MEMORY[0x1B2722A80](0x6E6F697373657320, 0xEC000000203A4449);
  MEMORY[0x1B2722A80](*(v0 + 24), *(v0 + 32));
  return HIDWORD(v3);
}

uint64_t LACConcurrentEvaluationManagedRequest.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LACConcurrentEvaluationManagedRequest(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) identifier];
  return v3 == [*(v2 + 16) identifier];
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x1B2722F00](a1);
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B2722E50](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B2722E50](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance [A]specialized (uint64_t *a1)
{
  v1 = *a1;
}

{
  v1 = *a1;
  return swift_unknownObjectRelease();
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

BOOL partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1)
{
  v2 = **(v1 + 16);
  v3 = [*(*a1 + 16) identifier];
  return v3 == [*(v2 + 16) identifier];
}

unint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    if (a1 < 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = v3;
    }

    v4 = MEMORY[0x1B2722F00](v11);
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B2722E50](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = [*(v6 + 16) identifier];
    v8 = [*(a2 + 16) identifier];

    if (v7 == v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = a3;
  v6 = a2;
  v7 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v8 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for LACConcurrentEvaluationManagedRequest();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v10);
  v10 = v3 - v10;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  v9 = v7 >> 62;
  if (!(v7 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  if (v7 < 0)
  {
    v18 = v7;
  }

  else
  {
    v18 = v4;
  }

  result = MEMORY[0x1B2722F00](v18);
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_29;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v8[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v9)
  {
    if (v7 < 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = v4;
    }

    result = MEMORY[0x1B2722F00](v17);
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_30;
  }

  v4[2] = result + v10;
LABEL_20:
  if (v3 > 0)
  {
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    a3 = *v4 & 0xFFFFFFFFFFFFFF8;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  if (v6 < 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = a3;
  }

  result = MEMORY[0x1B2722F00](v13);
  if (result < v3)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v7)
  {
    if (v6 < 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = MEMORY[0x1B2722F00](v11);
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v12)
  {
    goto LABEL_24;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v3, 0);
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      goto LABEL_50;
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v22 = v5;
      }

      else
      {
        v22 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      if (v9 == MEMORY[0x1B2722F00](v22))
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1B2722E50](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_15:
    v12 = [*(v11 + 16) identifier];
    v13 = [*(a2 + 16) identifier];

    if (v12 != v13)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B2722E50](v8, v5);
          v15 = MEMORY[0x1B2722E50](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_48;
          }

          if (v9 >= v16)
          {
            goto LABEL_49;
          }

          v14 = *(v5 + 32 + 8 * v8);
          v15 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v5 < 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

        if (v5 < 0 || v17)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          v18 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v9 >= *(v18 + 16))
        {
          goto LABEL_46;
        }

        v20 = v18 + 8 * v9;
        v21 = *(v20 + 32);
        *(v20 + 32) = v14;

        *a1 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_45;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  if (v5 < 0)
  {
    v23 = v5;
  }

  else
  {
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x1B2722F00](v23);
}

uint64_t specialized LACConcurrentEvaluationManagerModel.idleUIGotFocus(_:identifier:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel_replyQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v16;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = partial apply for closure #1 in LACConcurrentEvaluationManagerModel.idleUIGotFocus(_:identifier:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27_0;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2722D20](0, v15, v11, v18);
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LACCompanionAuthenticationRequest.acmContextData.getter()
{
  v1 = *(v0 + OBJC_IVAR___LACCompanionAuthenticationRequest_acmContextData);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR___LACCompanionAuthenticationRequest_acmContextData + 8));
  return v1;
}

uint64_t LACCompanionAuthenticationRequest.isFallbackAvailable.getter()
{
  v1 = OBJC_IVAR___LACCompanionAuthenticationRequest_isFallbackAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACCompanionAuthenticationRequest.isFallbackAvailable.setter(char a1)
{
  v3 = OBJC_IVAR___LACCompanionAuthenticationRequest_isFallbackAvailable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id LACCompanionAuthenticationRequest.identifier.getter()
{
  v1 = [objc_msgSend(v0 evaluationRequest)];
  swift_unknownObjectRelease();
  return v1;
}

id LACCompanionAuthenticationRequest.init(evaluationRequest:clientInfo:companionType:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEvaluationRequest:a1 clientInfo:a2 companionType:a3];
  swift_unknownObjectRelease();

  return v4;
}

id LACCompanionAuthenticationRequest.init(evaluationRequest:clientInfo:companionType:)(void *a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 externalizedContext];
  if (v13)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = &v4[OBJC_IVAR___LACCompanionAuthenticationRequest_acmContextData];
    *v18 = v15;
    v18[1] = v17;
    *&v4[OBJC_IVAR___LACCompanionAuthenticationRequest_clientInfo] = a2;
    *&v4[OBJC_IVAR___LACCompanionAuthenticationRequest_companionType] = a3;
    *&v4[OBJC_IVAR___LACCompanionAuthenticationRequest_evaluationRequest] = a1;
    v4[OBJC_IVAR___LACCompanionAuthenticationRequest_isFallbackAvailable] = 1;
    v24.receiver = v4;
    v24.super_class = LACCompanionAuthenticationRequest;
    return objc_msgSendSuper2(&v24, sel_init);
  }

  else
  {
    v20 = LACLogABM();
    Logger.init(_:)();
    swift_unknownObjectRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67240192;
      *(v23 + 4) = [a1 identifier];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0233000, v21, v22, "ACMContext for request: %{public}u is nil", v23, 8u);
      MEMORY[0x1B27246A0](v23, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease_n();
      v21 = a2;
    }

    (*(v9 + 8))(v12, v8);
    type metadata accessor for LACCompanionAuthenticationRequest();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t type metadata accessor for LACCompanionAuthenticationRequest()
{
  result = lazy cache variable for type metadata for LACCompanionAuthenticationRequest;
  if (!lazy cache variable for type metadata for LACCompanionAuthenticationRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACCompanionAuthenticationRequest);
  }

  return result;
}

id LACCompanionAuthenticationRequest.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t static LACLogger.abm.getter()
{
  v0 = LACLogABM();

  return Logger.init(_:)();
}

uint64_t static LACLogger.default.getter()
{
  v0 = LACLogDefault();

  return Logger.init(_:)();
}

uint64_t static LACLogger.ui.getter()
{
  v0 = LACLogUI();

  return Logger.init(_:)();
}

uint64_t static LACLogger.processor.getter()
{
  v0 = LACLogProcessor();

  return Logger.init(_:)();
}

uint64_t static LACLogger.dtoUI.getter()
{
  v0 = LACLogDTOUI();

  return Logger.init(_:)();
}

uint64_t static LACLogger.dtoEvaluation.getter()
{
  v0 = LACLogDTOEvaluation();

  return Logger.init(_:)();
}

uint64_t static LACLogger.dtoEnvironment.getter()
{
  v0 = LACLogDTOEnvironment();

  return Logger.init(_:)();
}

uint64_t static LACLogger.preboard.getter()
{
  v0 = LACLogPreboard();

  return Logger.init(_:)();
}

uint64_t static LACLogger.tests.getter()
{
  v0 = LACLogTests();

  return Logger.init(_:)();
}

Swift::Int LACLogger.Level.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27230B0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type LACLogger.Level and conformance LACLogger.Level()
{
  result = lazy protocol witness table cache variable for type LACLogger.Level and conformance LACLogger.Level;
  if (!lazy protocol witness table cache variable for type LACLogger.Level and conformance LACLogger.Level)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACLogger.Level and conformance LACLogger.Level);
  }

  return result;
}

uint64_t type metadata accessor for LACLogger()
{
  result = type metadata singleton initialization cache for LACLogger;
  if (!type metadata singleton initialization cache for LACLogger)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LACLogger()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
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

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t LACRatchetFlowManager.showCoolOffSheet(options:presentationCompletion:sheetCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v10;
  *(v11 + 40) = xmmword_1B0342B10;
  *(v11 + 56) = a2;
  *(v11 + 64) = a3;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:), v11);
}

uint64_t LACRatchetFlowManager.dismiss(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in LACRatchetFlowManager.dismiss(completion:), v10);
}

uint64_t closure #1 in LACRatchetFlowManager.dismiss(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in LACRatchetFlowManager.dismiss(completion:), 0, 0);
}

uint64_t closure #1 in LACRatchetFlowManager.dismiss(completion:)()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = closure #1 in LACRatchetFlowManager.dismiss(completion:);

    return LACRatchetFlowManager.dismiss()();
  }

  else
  {
    v5 = v0[6];
    if (v5)
    {
      v6 = v0[7];
      v5(0);
    }

    v7 = v0[1];

    return v7();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = closure #1 in LACRatchetFlowManager.dismiss(completion:);
  }

  else
  {

    v4 = closure #1 in LACRatchetFlowManager.dismiss(completion:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[7];
    v1(0);
  }

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 80);
  if (v1)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = v2;
    v4(v2);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t LACRatchetFlowManager.dismiss()()
{
  *(v1 + 208) = v0;
  return MEMORY[0x1EEE6DFA0](LACRatchetFlowManager.dismiss(), 0, 0);
}

{
  v1 = [*(v0 + 208) presenter];
  if (v1)
  {
    v2 = [v1 isPresented];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = [*(v0 + 208) presenter];
      *(v0 + 216) = v3;
      if (v3)
      {
        v4 = v3;
        *(v0 + 80) = v0;
        *(v0 + 88) = LACRatchetFlowManager.dismiss();
        v5 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
        *(v0 + 168) = &block_descriptor_33_0;
        *(v0 + 176) = v5;
        [v4 dismissAnimated:1 completion:v0 + 144];
        v6 = v0 + 80;
LABEL_7:

        return MEMORY[0x1EEE6DEC8](v6);
      }

      v7 = [*(v0 + 208) uiManager];
      *(v0 + 232) = v7;
      if (v7)
      {
        v8 = v7;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        *(v0 + 240) = isa;

        *(v0 + 16) = v0;
        *(v0 + 24) = LACRatchetFlowManager.dismiss();
        v10 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
        *(v0 + 168) = &block_descriptor_15;
        *(v0 + 176) = v10;
        [v8 transitionToState:0 withOptions:isa completion:v0 + 144];
        v6 = v0 + 16;
        goto LABEL_7;
      }
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = LACRatchetFlowManager.dismiss();
  }

  else
  {
    v3 = LACRatchetFlowManager.dismiss();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 216);
  swift_unknownObjectRelease();
  v2 = [*(v0 + 208) uiManager];
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = v2;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v0 + 240) = isa;

    *(v0 + 16) = v0;
    *(v0 + 24) = LACRatchetFlowManager.dismiss();
    v5 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 168) = &block_descriptor_15;
    *(v0 + 176) = v5;
    [v3 transitionToState:0 withOptions:isa completion:v0 + 144];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = LACRatchetFlowManager.dismiss();
  }

  else
  {
    v3 = LACRatchetFlowManager.dismiss();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[29];
  v2 = v0[30];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[28];
  swift_willThrow();
  v2 = v0[27];
  v3 = v0[28];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[30];
  v2 = v0[31];
  swift_willThrow();

  v3 = v0[31];
  v4 = v0[29];
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:), 0, 0);
}

uint64_t closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v0[11] = v3;
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:);
    v6 = v0[6];
    v5 = v0[7];

    return LACRatchetFlowManager.transition(to:with:style:)(v6, v3, v5);
  }

  else
  {
    v8 = v0[8];
    if (v8)
    {
      v9 = v0[9];
      v8(0);
    }

    v10 = v0[1];

    return v10();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:);
  }

  else
  {
    v6 = *(v2 + 80);
    v5 = *(v2 + 88);

    v4 = closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[9];
    v1(0);
  }

  v3 = v0[1];

  return v3();
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];

  v4 = v0[13];
  if (v3)
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v4;
    v6(v4);
  }

  v8 = v0[1];

  return v8();
}

uint64_t partial apply for closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in LACRatchetFlowManager.dismiss(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #1 in LACRatchetFlowManager.dismiss(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_7Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  if (v0[7])
  {
    v3 = v0[8];
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t LACRatchetFlowManager.transition(to:with:style:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[60] = a3;
  v4[61] = v3;
  v4[58] = a1;
  v4[59] = a2;
  return MEMORY[0x1EEE6DFA0](LACRatchetFlowManager.transition(to:with:style:), 0, 0);
}

uint64_t LACRatchetFlowManager.transition(to:with:style:)()
{
  v1 = [(objc_class *)v0[61].super.isa presenter];
  if (v1)
  {
    v2 = [v1 isPresented];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = [(objc_class *)v0[61].super.isa presenter];
      if (v3)
      {
        isa = v0[60].super.isa;
        v5 = [v3 presentationStyle];
        swift_unknownObjectRelease();
        if (v5 == isa)
        {
          v6 = [(objc_class *)v0[61].super.isa uiManager];
          v0[69].super.isa = v6;
          if (v6)
          {
            v7 = v6;
            v8 = v0 + 42;
            v10 = v0[58].super.isa;
            v9 = v0[59].super.isa;
            v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
            v0[70].super.isa = v11.super.isa;
            v0[42].super.isa = v0;
            v0[43].super.isa = LACRatchetFlowManager.transition(to:with:style:);
            v12 = swift_continuation_init();
            v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
            v0[54].super.isa = v12;
            v0[50].super.isa = MEMORY[0x1E69E9820];
            v0[51].super.isa = 1107296256;
            v13 = &block_descriptor_62;
LABEL_9:
            v0[52].super.isa = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
            v0[53].super.isa = v13;
            [(objc_class *)v7 transitionToState:v10 withOptions:v11.super.isa completion:&v0[50]];
LABEL_13:
            v22 = v8;
LABEL_14:

            return MEMORY[0x1EEE6DEC8](v22);
          }

          goto LABEL_23;
        }
      }

      v23 = [(objc_class *)v0[61].super.isa presenter];
      v0[62].super.isa = v23;
      if (v23)
      {
        v24 = v23;
        v0[34].super.isa = v0;
        v0[35].super.isa = LACRatchetFlowManager.transition(to:with:style:);
        v25 = swift_continuation_init();
        v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        v0[50].super.isa = MEMORY[0x1E69E9820];
        v0[51].super.isa = 1107296256;
        v0[52].super.isa = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
        v0[53].super.isa = &block_descriptor_59;
        v0[54].super.isa = v25;
        [(objc_class *)v24 dismissAnimated:1 completion:&v0[50]];
        v22 = v0 + 34;
        goto LABEL_14;
      }

      v26 = [(objc_class *)v0[61].super.isa uiManager];
      v0[64].super.isa = v26;
      if (v26)
      {
        v7 = v26;
        v8 = v0 + 26;
        v10 = v0[58].super.isa;
        v27 = v0[59].super.isa;
        v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v0[65].super.isa = v11.super.isa;
        v0[26].super.isa = v0;
        v0[27].super.isa = LACRatchetFlowManager.transition(to:with:style:);
        v28 = swift_continuation_init();
        v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        v0[54].super.isa = v28;
        v0[50].super.isa = MEMORY[0x1E69E9820];
        v0[51].super.isa = 1107296256;
        v13 = &block_descriptor_56;
        goto LABEL_9;
      }

      v29 = [(objc_class *)v0[61].super.isa presenter];
      v0[67].super.isa = v29;
      if (!v29)
      {
        goto LABEL_23;
      }

      v18 = v29;
      v8 = v0 + 18;
      v19 = v0[60].super.isa;
      v0[18].super.isa = v0;
      v0[19].super.isa = LACRatchetFlowManager.transition(to:with:style:);
      v30 = swift_continuation_init();
      v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
      v0[54].super.isa = v30;
      v0[50].super.isa = MEMORY[0x1E69E9820];
      v0[51].super.isa = 1107296256;
      v21 = &block_descriptor_53;
LABEL_12:
      v0[52].super.isa = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
      v0[53].super.isa = v21;
      [(objc_class *)v18 presentWithStyle:v19 animated:1 completion:&v0[50]];
      goto LABEL_13;
    }
  }

  v14 = [(objc_class *)v0[61].super.isa uiManager];
  v0[72].super.isa = v14;
  if (v14)
  {
    v7 = v14;
    v8 = v0 + 10;
    v10 = v0[58].super.isa;
    v15 = v0[59].super.isa;
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v0[73].super.isa = v11.super.isa;
    v0[10].super.isa = v0;
    v0[11].super.isa = LACRatchetFlowManager.transition(to:with:style:);
    v16 = swift_continuation_init();
    v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    v0[54].super.isa = v16;
    v0[50].super.isa = MEMORY[0x1E69E9820];
    v0[51].super.isa = 1107296256;
    v13 = &block_descriptor_50;
    goto LABEL_9;
  }

  v17 = [(objc_class *)v0[61].super.isa presenter];
  v0[75].super.isa = v17;
  if (v17)
  {
    v18 = v17;
    v8 = v0 + 2;
    v19 = v0[60].super.isa;
    v0[2].super.isa = v0;
    v0[3].super.isa = LACRatchetFlowManager.transition(to:with:style:);
    v20 = swift_continuation_init();
    v0[57].super.isa = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    v0[54].super.isa = v20;
    v0[50].super.isa = MEMORY[0x1E69E9820];
    v0[51].super.isa = 1107296256;
    v21 = &block_descriptor_46;
    goto LABEL_12;
  }

LABEL_23:
  v31 = v0[1].super.isa;

  return v31();
}

{
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 504) = v2;
  if (v2)
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 496);
  swift_unknownObjectRelease();
  v2 = [*(v0 + 488) uiManager];
  *(v0 + 512) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0 + 208;
    v6 = *(v0 + 464);
    v5 = *(v0 + 472);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v0 + 520) = isa;
    *(v0 + 208) = v0;
    *(v0 + 216) = LACRatchetFlowManager.transition(to:with:style:);
    v8 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 424) = &block_descriptor_56;
    *(v0 + 432) = v8;
    [v3 transitionToState:v6 withOptions:isa completion:v0 + 400];
LABEL_5:

    return MEMORY[0x1EEE6DEC8](v4);
  }

  v9 = [*(v0 + 488) presenter];
  *(v0 + 536) = v9;
  if (v9)
  {
    v10 = v9;
    v4 = v0 + 144;
    v11 = *(v0 + 480);
    *(v0 + 144) = v0;
    *(v0 + 152) = LACRatchetFlowManager.transition(to:with:style:);
    v12 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 424) = &block_descriptor_53;
    *(v0 + 432) = v12;
    [v10 presentWithStyle:v11 animated:1 completion:v0 + 400];
    goto LABEL_5;
  }

  v13 = *(v0 + 8);

  return v13();
}

{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 528) = v2;
  if (v2)
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  swift_unknownObjectRelease();

  v3 = [*(v0 + 488) presenter];
  *(v0 + 536) = v3;
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 480);
    *(v0 + 144) = v0;
    *(v0 + 152) = LACRatchetFlowManager.transition(to:with:style:);
    v6 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 424) = &block_descriptor_53;
    *(v0 + 432) = v6;
    [v4 presentWithStyle:v5 animated:1 completion:v0 + 400];

    return MEMORY[0x1EEE6DEC8](v0 + 144);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 544) = v2;
  if (v2)
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 536);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *v0;
  v2 = *(*v0 + 368);
  *(*v0 + 568) = v2;
  if (v2)
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{

  v1 = *(v0 + 552);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 592) = v2;
  if (v2)
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  swift_unknownObjectRelease();

  v3 = [*(v0 + 488) presenter];
  *(v0 + 600) = v3;
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 480);
    *(v0 + 16) = v0;
    *(v0 + 24) = LACRatchetFlowManager.transition(to:with:style:);
    v6 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 424) = &block_descriptor_46;
    *(v0 + 432) = v6;
    [v4 presentWithStyle:v5 animated:1 completion:v0 + 400];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 608) = v2;
  if (v2)
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  else
  {
    v3 = LACRatchetFlowManager.transition(to:with:style:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 600);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[74];
  v2 = v0[73];
  swift_willThrow();

  v3 = v0[74];
  v4 = v0[72];
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

{
  v1 = v0[76];
  swift_willThrow();
  v2 = v0[76];
  v3 = v0[75];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[63];
  swift_willThrow();
  v2 = v0[62];
  v3 = v0[63];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[66];
  v2 = v0[65];
  swift_willThrow();

  v3 = v0[66];
  v4 = v0[64];
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

{
  v1 = v0[68];
  swift_willThrow();
  v2 = v0[68];
  v3 = v0[67];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[71];
  v2 = v0[70];
  swift_willThrow();

  v3 = v0[71];
  v4 = v0[69];
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_41(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t LACPreboardStorageRequest.acl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_acl);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_acl + 8));
  return v1;
}

id LACPreboardStorageRequest.init(for:contextID:options:)(id result, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_acl] = xmmword_1B0343300;
  v4 = static LACPreboardStorageRequest.identifier + 1;
  if (static LACPreboardStorageRequest.identifier == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    ++static LACPreboardStorageRequest.identifier;
    *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_identifier] = v4;
    v8 = [objc_opt_self() currentConnection];
    v9 = [objc_allocWithZone(LACXPCClient) initWithConnection_];

    *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_client] = v9;
    v10 = OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_contextID;
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    (*(v12 + 16))(&v3[v10], a2, v11);
    (*(v12 + 56))(&v3[v10], 0, 1, v11);
    *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_domain] = 0;
    *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_key] = v7;
    *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore25LACPreboardStorageRequest_options] = a3;
    v14.receiver = v3;
    v14.super_class = type metadata accessor for LACPreboardStorageRequest();
    v13 = objc_msgSendSuper2(&v14, sel_init);
    (*(v12 + 8))(a2, v11);
    return v13;
  }

  return result;
}

uint64_t type metadata accessor for LACPreboardStorageRequest()
{
  result = type metadata singleton initialization cache for LACPreboardStorageRequest;
  if (!type metadata singleton initialization cache for LACPreboardStorageRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id LACPreboardStorageRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACPreboardStorageRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACPreboardStorageRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for LACPreboardStorageRequest()
{
  type metadata accessor for UUID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double LACPreboardController.contextProvider.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___contextProvider;
  swift_beginAccess();
  outlined init with copy of (String, Any)(v1 + v3, &v7, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMR);
  if (*(&v8 + 1) == 1)
  {
    v4 = outlined destroy of AsyncStream<()>.Continuation?(&v7, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMR);
    (*(**(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_contextProviderFactory) + 88))(v4);
    outlined init with copy of (String, Any)(a1, &v7, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    swift_beginAccess();
    outlined assign with take of LACACMContextProviding??(&v7, v1 + v3);
    swift_endAccess();
  }

  else
  {
    result = *&v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  return result;
}

id LACPreboardController.syncDispatchQueue.getter()
{
  v1 = OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue;
  v2 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = MEMORY[0x1B27229A0](0xD000000000000011, 0x80000001B0357230);
    v6 = [v4 createUserInitiatedSerialQueueWithIdentifier_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *LACPreboardController.__allocating_init(contextProviderFactory:launcher:passcodeVerifier:storage:uppManager:useCaseProvider:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___contextProvider];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(v16 + 24) = xmmword_1B0342B10;
  *&v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_batchOptionsResult] = 0;
  v17 = &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult];
  *v17 = 0;
  v17[8] = -1;
  *&v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue] = 0;
  *&v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_contextProviderFactory] = a1;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a2, &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launcher]);
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a3, &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_passcodeVerifier]);
  v18 = &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage];
  *v18 = a4;
  *(v18 + 1) = a5;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a6, &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager]);
  v19 = a7;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a7, &v15[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider]);
  v30.receiver = v15;
  v30.super_class = v7;

  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v22 = *&v20[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage];
  v21 = *&v20[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage + 8];
  ObjectType = swift_getObjectType();
  v24 = *(v21 + 16);
  v25 = v20;
  swift_unknownObjectRetain();
  v24(v20, &protocol witness table for LACPreboardController, ObjectType, v21);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v25;
}

char *LACPreboardController.init(contextProviderFactory:launcher:passcodeVerifier:storage:uppManager:useCaseProvider:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___contextProvider];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  *(v16 + 24) = xmmword_1B0342B10;
  *&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_batchOptionsResult] = 0;
  v17 = &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult];
  *v17 = 0;
  v17[8] = -1;
  *&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue] = 0;
  *&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_contextProviderFactory] = a1;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a2, &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launcher]);
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a3, &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_passcodeVerifier]);
  v18 = &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage];
  *v18 = a4;
  *(v18 + 1) = a5;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a6, &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager]);
  v19 = a7;
  outlined init with copy of LACCompanionAuthenticationSessionProviding(a7, &v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider]);
  v30.receiver = v7;
  v30.super_class = ObjectType;

  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v22 = *&v20[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage];
  v21 = *&v20[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage + 8];
  v23 = swift_getObjectType();
  v24 = *(v21 + 16);
  v25 = v20;
  swift_unknownObjectRetain();
  v24(v20, &protocol witness table for LACPreboardController, v23, v21);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v25;
}

uint64_t LACPreboardController.batchOptions.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - v16;
  v18 = LACPreboardController.syncDispatchQueue.getter();
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGSgMd, &_sSaySo8NSNumberCGSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  result = v46;
  if (!v46)
  {
    v42 = v6;
    v39 = v3;
    v40 = v2;
    v20 = dispatch_semaphore_create(0);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    v41 = v7;
    v23 = *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24];
    v22 = *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32];
    v43 = *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage];
    __swift_project_boxed_opaque_existential_0(&v1[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider], v23);
    v24 = *(v22 + 8);
    swift_unknownObjectRetain();
    v25 = v24(v23, v22);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = v1;
    *(v26 + 40) = v43;
    *(v26 + 56) = v25;
    *(v26 + 64) = v20;
    v27 = v1;
    v28 = v20;
    v29 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #2 in LACPreboardController.batchOptions.getter, v26);
    outlined destroy of AsyncStream<()>.Continuation?(v17, &_sScPSgMd, &_sScPSgMR);
    static DispatchTime.now()();
    + infix(_:_:)();
    v30 = *(v44 + 8);
    v31 = v11;
    v32 = v41;
    v30(v31, v41);
    LOBYTE(v25) = MEMORY[0x1B2722D30](v13);
    v30(v13, v32);
    if (v25)
    {
      v33 = LACLogPreboard();
      Logger.init(_:)();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1B0233000, v34, v35, "batchOptions semaphore timed out.", v36, 2u);
        MEMORY[0x1B27246A0](v36, -1, -1);
      }

      (*(v39 + 8))(v42, v40);
      MEMORY[0x1B2722C20](v29, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    }

    v37 = *&v27[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_batchOptionsResult];
    if (v37)
    {
      v38 = *&v27[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_batchOptionsResult];

      return v37;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t LACPreboardController.useCase.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24);
  v2 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t closure #2 in LACPreboardController.batchOptions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a8;
  ObjectType = swift_getObjectType();
  v12 = *(a6 + 32);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v8[4] = v14;
  *v14 = v8;
  v14[1] = closure #2 in LACPreboardController.batchOptions.getter;

  return v16(a7, ObjectType, a6);
}

uint64_t closure #2 in LACPreboardController.batchOptions.getter(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](closure #2 in LACPreboardController.batchOptions.getter, 0, 0);
}

uint64_t closure #2 in LACPreboardController.batchOptions.getter()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v14 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    v6 = v0[5];

    v7 = v14;
  }

  else
  {
    v8 = v0[5];

    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v0[2];
  v10 = v0[3];
  v11 = *(v9 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_batchOptionsResult);
  *(v9 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_batchOptionsResult) = v7;

  OS_dispatch_semaphore.signal()();
  v12 = v0[1];

  return v12();
}

uint64_t partial apply for closure #2 in LACPreboardController.batchOptions.getter(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return closure #2 in LACPreboardController.batchOptions.getter(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of (String, Any)(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v12, &_sScPSgMd, &_sScPSgMR);
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

id LACPreboardController.isFeatureSupported.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 featureFlagPreboardEnabled];

  return v1;
}

id LACPreboardController.isRequired.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = objc_opt_self();
  v10 = [v9 sharedInstance];
  v11 = [v10 featureFlagPreboardEnabled];

  if (!v11)
  {
    v22 = LACLogPreboard();
    Logger.init(_:)();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7269757165527369, 0xEA00000000006465, &v30);
      _os_log_impl(&dword_1B0233000, v23, v24, "%s - feature is not supported", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B27246A0](v26, -1, -1);
      MEMORY[0x1B27246A0](v25, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }

  v12 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24);
  v13 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider), v12);
  v14 = (*(v13 + 8))(v12, v13);
  v15 = LACLogPreboard();
  Logger.init(_:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7269757165527369, 0xEA00000000006465, &v30);
    *(v18 + 12) = 2048;
    *(v18 + 14) = v14;
    _os_log_impl(&dword_1B0233000, v16, v17, "%s use case: %ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1B27246A0](v19, -1, -1);
    MEMORY[0x1B27246A0](v18, -1, -1);
  }

  (*(v2 + 8))(v8, v1);
  if (v14 != 4)
  {
    if (v14 == 3)
    {
      v20 = [v9 sharedInstance];
      v21 = [v20 featureFlagPreboardUPPEnabled];
      goto LABEL_12;
    }

    return 0;
  }

  v20 = [v9 sharedInstance];
  v21 = [v20 featureFlagPreboardDeveloperModeEnabled];
LABEL_12:
  v28 = v21;

  return v28;
}

Swift::String_optional __swiftcall LACPreboardController.uppTeamName()()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager + 24);
  v2 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager), v1);
  v3 = (*(v2 + 8))(v1, v2);
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LACPreboardController.launchPreboard()()
{
  v2 = v0;
  v3 = type metadata accessor for Logger();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v52 - v8;
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v52 - v19;
  v21 = LACPreboardController.syncDispatchQueue.getter();
  v59 = v2;
  OS_dispatch_queue.sync<A>(execute:)();

  if (v60 == 1)
  {
    v55 = v1;
    v22 = dispatch_semaphore_create(0);
    v23 = type metadata accessor for TaskPriority();
    v24 = *(v23 - 8);
    v53 = *(v24 + 56);
    v54 = v23;
    v52[1] = v24 + 56;
    v53(v20, 1, 1);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v2;
    v25[5] = v22;
    v26 = v2;
    v27 = v22;
    v28 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #2 in LACPreboardController.launchPreboard(), v25);
    static DispatchTime.now()();
    + infix(_:_:)();
    v29 = *(v10 + 8);
    v30 = v14;
    v31 = v27;
    v29(v30, v9);
    LOBYTE(v27) = MEMORY[0x1B2722D30](v16);
    v32 = (v29)(v16, v9);
    v33 = MEMORY[0x1E69E7CA8];
    if (v27)
    {
      v34 = LACLogPreboard();
      v35 = v56;
      Logger.init(_:)();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1B0233000, v36, v37, "Launch semaphore timed out, rebooting now.", v38, 2u);
        MEMORY[0x1B27246A0](v38, -1, -1);
      }

      (*(v57 + 8))(v35, v58);
      MEMORY[0x1B2722C20](v28, v33 + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
      (v53)(v20, 1, 1, v54);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v26;
      v40 = v26;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #3 in LACPreboardController.launchPreboard(), v39);

      v41 = specialized static LACPreboardErrorBuilder.genericError(with:)(0xD000000000000013, 0x80000001B0356ED0);
      v42 = &v40[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult];
      v43 = *&v40[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult];
      *v42 = v41;
      v44 = v42[8];
      v42[8] = 1;
      outlined consume of Result<(), Error>?(v43, v44);
    }

    v45 = *&v26[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController____lazy_storage___syncDispatchQueue];
    MEMORY[0x1EEE9AC00](v32);
    v52[-2] = v26;
    v47 = v46;
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v48 = LACLogPreboard();
    Logger.init(_:)();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1B0233000, v49, v50, "LAPreboard is already launching", v51, 2u);
      MEMORY[0x1B27246A0](v51, -1, -1);
    }

    (*(v57 + 8))(v7, v58);
    specialized static LACPreboardErrorBuilder.error(code:message:)(1, 0xD00000000000001FLL, 0x80000001B0356EB0);
    swift_willThrow();
  }
}

uint64_t closure #2 in LACPreboardController.launchPreboard()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[7] = v9;
  *v9 = v5;
  v9[1] = closure #2 in LACPreboardController.launchPreboard();

  return LACPreboardController.launchPreboard()();
}

uint64_t closure #2 in LACPreboardController.launchPreboard()()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = closure #2 in LACPreboardController.launchPreboard();
  }

  else
  {
    v3 = closure #2 in LACPreboardController.launchPreboard();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[2] + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult;
  v4 = *v3;
  *v3 = 0;
  v5 = *(v3 + 8);
  *(v3 + 8) = 0;
  outlined consume of Result<(), Error>?(v4, v5);
  OS_dispatch_semaphore.signal()();

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[8];
  v2 = v0[6];
  v3 = LACLogPreboard();
  Logger.init(_:)();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B0233000, v5, v6, "Synchronous launch failed with %@, rebooting now.", v8, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v9, -1, -1);
    MEMORY[0x1B27246A0](v8, -1, -1);
  }

  v12 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[4];

  (*(v14 + 8))(v13, v15);
  v16 = v0[6];
  v17 = v0[3];
  v18 = v0[2] + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult;
  v19 = *v18;
  *v18 = v12;
  v20 = *(v18 + 8);
  *(v18 + 8) = 1;
  outlined consume of Result<(), Error>?(v19, v20);
  OS_dispatch_semaphore.signal()();

  v21 = v0[1];

  return v21();
}

uint64_t LACPreboardController.launchPreboard()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.launchPreboard(), 0, 0);
}

{
  v1 = v0[2];
  if (LACPreboardController.isRequired.getter())
  {
    v2 = (v0[2] + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launcher);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v3);
    v5 = *(v4 + 8);
    v19 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = LACPreboardController.launchPreboard();

    return v19(v3, v4);
  }

  else
  {
    v9 = v0[5];
    v10 = LACLogPreboard();
    Logger.init(_:)();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B0233000, v11, v12, "Unable to launch preboard as the feature is not supported", v13, 2u);
      MEMORY[0x1B27246A0](v13, -1, -1);
    }

    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[3];

    (*(v15 + 8))(v14, v16);
    v17 = swift_task_alloc();
    v0[9] = v17;
    *v17 = v0;
    v17[1] = LACPreboardController.launchPreboard();
    v18 = v0[2];

    return LACPreboardController.terminate()();
  }
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = swift_task_alloc();
    v3[10] = v4;
    *v4 = v3;
    v4[1] = LACPreboardController.launchPreboard();
    v5 = v3[2];

    return LACPreboardController.terminate()();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](LACPreboardController.launchPreboard(), 0, 0);
  }
}

{
  v1 = v0[6];
  v2 = LACLogPreboard();
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Did launch preboard", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = v0[4];

  (*(v9 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](LACPreboardController.launchPreboard(), 0, 0);
  }
}

{
  specialized static LACPreboardErrorBuilder.notSupportedError()();
  swift_willThrow();
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = LACPreboardController.launchPreboard();
  }

  else
  {
    v3 = LACPreboardController.launchPreboard();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[8];
  swift_willThrow();
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

{

  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #3 in LACPreboardController.launchPreboard()()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = closure #3 in LACPreboardController.launchPreboard();

  return LACPreboardController.terminate()();
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #3 in LACPreboardController.launchPreboard(), 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = *(v0 + 32);
  v2 = LACLogPreboard();
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Device reboot failed", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);

  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 32);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t LACPreboardController.terminate()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.terminate(), 0, 0);
}

{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 featureFlagPreboardEnabled];

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = LACPreboardController.terminate();
    v4 = v0[2];

    return LACPreboardController.finishPreboard(success:reason:)(0, 0xD000000000000016, 0x80000001B0356EF0);
  }

  else
  {
    v6 = v0[5];
    v7 = LACLogPreboard();
    Logger.init(_:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B0233000, v8, v9, "Unable to terminate preboard as the feature is not supported", v10, 2u);
      MEMORY[0x1B27246A0](v10, -1, -1);
    }

    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];

    (*(v12 + 8))(v11, v13);
    specialized static LACPreboardErrorBuilder.notSupportedError()();
    swift_willThrow();
    v15 = v0[5];
    v14 = v0[6];

    v16 = v0[1];

    return v16();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](LACPreboardController.terminate(), 0, 0);
  }
}

{
  v1 = v0[6];
  v2 = LACLogPreboard();
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Preboard terminated", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = v0[4];

  (*(v9 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

void closure #4 in LACPreboardController.launchPreboard()(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult;
  v2 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult);
  v3 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult + 8);
  if (v3 == 255)
  {
    specialized static LACPreboardErrorBuilder.genericError(with:)(0xD000000000000017, 0x80000001B0357210);
    v5 = *v1;
    v4 = *(v1 + 8);
    v6 = 1;
  }

  else
  {
    v4 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult + 8);
    v5 = *(a1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult);
    v6 = v4;
  }

  *v1 = 0;
  *(v1 + 8) = -1;
  outlined copy of Result<(), Error>?(v2, v3);
  outlined consume of Result<(), Error>?(v5, v4);
  if (v6)
  {
    swift_willThrow();
  }
}

uint64_t @objc closure #1 in LACPreboardController.launchPreboard()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in LACPreboardController.launchPreboard();

  return LACPreboardController.launchPreboard()();
}

uint64_t @objc closure #1 in LACPreboardController.launchPreboard()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t LACPreboardController.enableCurrentUseCase(withPasscode:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for String.Encoding();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.enableCurrentUseCase(withPasscode:), 0, 0);
}

uint64_t LACPreboardController.enableCurrentUseCase(withPasscode:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 160);
  v3 = LACLogPreboard();
  Logger.init(_:)();
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 160);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24];
    v10 = *&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32];
    __swift_project_boxed_opaque_existential_0(&v7[OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider], v9);
    *(v8 + 4) = (*(v10 + 8))(v9, v10);

    _os_log_impl(&dword_1B0233000, v5, v6, "Enabling protected option for usecase: %ld", v8, 0xCu);
    MEMORY[0x1B27246A0](v8, -1, -1);
    v11 = *(v0 + 160);
  }

  else
  {

    v5 = *(v0 + 160);
  }

  v12 = *(v0 + 248);
  v13 = *(v0 + 192);
  v14 = *(v0 + 200);

  v15 = *(v14 + 8);
  *(v0 + 256) = v15;
  *(v0 + 264) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v13);
  if ((LACPreboardController.isRequired.getter() & 1) == 0)
  {
    v31 = *(v0 + 208);
    v32 = LACLogPreboard();
    Logger.init(_:)();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1B0233000, v33, v34, "Unable to enable protected option as the feature is not supported", v35, 2u);
      MEMORY[0x1B27246A0](v35, -1, -1);
    }

    v36 = *(v0 + 208);
    v37 = *(v0 + 192);

    v15(v36, v37);
    specialized static LACPreboardErrorBuilder.notSupportedError()();
    goto LABEL_12;
  }

  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 168);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  static String.Encoding.utf8.getter();
  v21 = String.data(using:allowLossyConversion:)();
  v23 = v22;
  *(v0 + 272) = v21;
  *(v0 + 280) = v22;
  (*(v17 + 8))(v16, v18);
  if (v23 >> 60 == 15)
  {
    v24 = *(v0 + 216);
    v25 = LACLogPreboard();
    Logger.init(_:)();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B0233000, v26, v27, "Unable to encode passcode", v28, 2u);
      MEMORY[0x1B27246A0](v28, -1, -1);
    }

    v29 = *(v0 + 216);
    v30 = *(v0 + 192);

    v15(v29, v30);
    specialized static LACPreboardErrorBuilder.genericError(with:)(0xD000000000000019, 0x80000001B0356F10);
LABEL_12:
    swift_willThrow();
LABEL_13:
    v39 = *(v0 + 240);
    v38 = *(v0 + 248);
    v41 = *(v0 + 224);
    v40 = *(v0 + 232);
    v43 = *(v0 + 208);
    v42 = *(v0 + 216);
    v44 = *(v0 + 184);

    v45 = *(v0 + 8);

    return v45();
  }

  v47 = *(v0 + 160);
  LACPreboardController.contextProvider.getter(v0 + 56);
  if (!*(v0 + 80))
  {
    v59 = *(v0 + 224);
    outlined destroy of AsyncStream<()>.Continuation?(v0 + 56, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    v60 = LACLogPreboard();
    Logger.init(_:)();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1B0233000, v61, v62, "Unable to instantiate ACM helper", v63, 2u);
      MEMORY[0x1B27246A0](v63, -1, -1);
    }

    v64 = *(v0 + 224);
    v65 = *(v0 + 192);

    v15(v64, v65);
    specialized static LACPreboardErrorBuilder.genericError(with:)(0xD00000000000001DLL, 0x80000001B0356F30);
    swift_willThrow();
    outlined consume of Data?(v21, v23);
    goto LABEL_13;
  }

  outlined init with take of LACPreboardUseCaseProviding((v0 + 56), v0 + 16);
  v48 = *(v0 + 40);
  v49 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v48);
  v50 = (*(v49 + 8))(v48, v49);
  *(v0 + 288) = v50;
  *(v0 + 296) = v51;
  if (v51 >> 60 == 15)
  {
    v52 = *(v0 + 232);
    v53 = LACLogPreboard();
    Logger.init(_:)();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1B0233000, v54, v55, "Unable to get externalized context", v56, 2u);
      MEMORY[0x1B27246A0](v56, -1, -1);
    }

    v57 = *(v0 + 232);
    v58 = *(v0 + 192);

    v15(v57, v58);
    specialized static LACPreboardErrorBuilder.genericError(with:)(0xD000000000000021, 0x80000001B0356F50);
    swift_willThrow();
    outlined consume of Data?(v21, v23);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_13;
  }

  v66 = v50;
  v67 = v51;
  v68 = (*(v0 + 160) + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_passcodeVerifier);
  v69 = v68[3];
  v70 = v68[4];
  __swift_project_boxed_opaque_existential_0(v68, v69);
  (*(v70 + 8))(v21, v23, v66, v67, v69, v70);
  v71 = (*(v0 + 160) + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider);
  v72 = v71[3];
  v73 = v71[4];
  __swift_project_boxed_opaque_existential_0(v71, v72);
  v74 = (*(v73 + 8))(v72, v73);
  if (v74 == 4)
  {
    v75 = swift_task_alloc();
    *(v0 + 304) = v75;
    *v75 = v0;
    v75[1] = LACPreboardController.enableCurrentUseCase(withPasscode:);
    v76 = *(v0 + 160);

    return LACPreboardController.setEnvironmentVariable()();
  }

  else if (v74 == 3)
  {
    v77 = swift_task_alloc();
    *(v0 + 320) = v77;
    *v77 = v0;
    v77[1] = LACPreboardController.enableCurrentUseCase(withPasscode:);
    v78 = *(v0 + 160);

    return LACPreboardController.installProfile()();
  }

  else
  {
    if (v74 == -1)
    {
      v79 = (v0 + 112);
      _StringGuts.grow(_:)(24);
      *(v0 + 120) = 0xE000000000000000;
      v80 = (v0 + 120);
      *(v0 + 112) = 0;
      MEMORY[0x1B2722A80](0xD000000000000016, 0x80000001B0356FC0);
      v81 = v71[3];
      v82 = v71[4];
      __swift_project_boxed_opaque_existential_0(v71, v81);
      *(v0 + 136) = (*(v82 + 8))(v81, v82);
    }

    else
    {
      v79 = (v0 + 96);
      _StringGuts.grow(_:)(24);
      *(v0 + 104) = 0xE000000000000000;
      v80 = (v0 + 104);
      *(v0 + 96) = 0;
      MEMORY[0x1B2722A80](0xD000000000000016, 0x80000001B0356FC0);
      v83 = v71[3];
      v84 = v71[4];
      __swift_project_boxed_opaque_existential_0(v71, v83);
      *(v0 + 128) = (*(v84 + 8))(v83, v84);
    }

    type metadata accessor for LACPreboardUseCase(0);
    _print_unlocked<A, B>(_:_:)();
    v85 = *v79;
    v86 = *v80;
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](LACPreboardController.enableCurrentUseCase(withPasscode:), 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[42] = v4;
    *v4 = v3;
    v4[1] = LACPreboardController.enableCurrentUseCase(withPasscode:);
    v5 = v3[20];

    return LACPreboardController.finishPreboard(success:reason:)(1, 0xD000000000000025, 0x80000001B0356FE0);
  }
}

{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](LACPreboardController.enableCurrentUseCase(withPasscode:), 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[42] = v4;
    *v4 = v3;
    v4[1] = LACPreboardController.enableCurrentUseCase(withPasscode:);
    v5 = v3[20];

    return LACPreboardController.finishPreboard(success:reason:)(1, 0xD000000000000025, 0x80000001B0356FE0);
  }
}

{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = LACPreboardController.enableCurrentUseCase(withPasscode:);
  }

  else
  {
    v3 = LACPreboardController.enableCurrentUseCase(withPasscode:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[30];
  v2 = LACLogPreboard();
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Preboard completed", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v9 = v0[33];
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[29];
  v16 = v0[28];
  v17 = v0[27];
  v13 = v0[24];
  v18 = v0[26];
  v19 = v0[23];
  outlined consume of Data?(v0[36], v0[37]);
  outlined consume of Data?(v7, v6);

  v8(v11, v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[36];
  v2 = v0[37];
  outlined consume of Data?(v0[34], v0[35]);
  outlined consume of Data?(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[39];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[23];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[36];
  v2 = v0[37];
  outlined consume of Data?(v0[34], v0[35]);
  outlined consume of Data?(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[41];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[23];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[36];
  v2 = v0[37];
  outlined consume of Data?(v0[34], v0[35]);
  outlined consume of Data?(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[43];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t LACPreboardController.setEnvironmentVariable()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.setEnvironmentVariable(), 0, 0);
}

{
  v1 = *(v0 + 40);
  v3 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage);
  v2 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24);
  v6 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider), v5);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = *(v2 + 56);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = LACPreboardController.setEnvironmentVariable();

  return v12(v7, ObjectType, v2);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = LACPreboardController.setEnvironmentVariable();
  }

  else
  {
    v3 = LACPreboardController.setEnvironmentVariable();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[9];
  v2 = LACLogPreboard();
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Environment variable set succeeded", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v9 = v0[7];

  (*(v9 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = LACLogPreboard();
  Logger.init(_:)();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B0233000, v5, v6, "Environment variable set failed with error: %@", v8, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v9, -1, -1);
    MEMORY[0x1B27246A0](v8, -1, -1);
  }

  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[9];
  v15 = v0[6];
  v16 = v0[7];

  (*(v16 + 8))(v13, v15);
  _StringGuts.grow(_:)(46);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1B2722A80](0xD00000000000002CLL, 0x80000001B03571C0);
  v0[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  specialized static LACPreboardErrorBuilder.error(code:message:)(1, v0[2], v0[3]);

  swift_willThrow();

  v17 = v0[1];

  return v17();
}