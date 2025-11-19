uint64_t sub_2559E1284()
{
  MEMORY[0x259C46670](v0 + 16);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2559E12D0()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2559E1324(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2559E1334(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_2559E1354()
{
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2559E1390()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2559E13C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2559E141C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2559E146C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2559E14EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void type metadata accessor for CAFMediaSourceSemanticType()
{
  if (!lazy cache variable for type metadata for CAFMediaSourceSemanticType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CAFMediaSourceSemanticType);
    }
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CAFMediaSourceSemanticType@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CAFMediaSourceSemanticType.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CAFMediaSourceSemanticType@<X0>(_BYTE *a1@<X8>)
{
  result = CAFMediaSourceSemanticType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, Swift::UInt8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType()
{
  result = lazy protocol witness table cache variable for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType;
  if (!lazy protocol witness table cache variable for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType)
  {
    type metadata accessor for CAFMediaSourceSemanticType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType);
  }

  return result;
}

uint64_t key path getter for CarPlayConnectionManager.car_queue : CarPlayConnectionManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

id CarPlayConnectionManager.car_queue.getter()
{
  v1 = OBJC_IVAR___CarPlayConnectionManager_car_queue;
  OUTLINED_FUNCTION_10();
  v2 = *(v0 + v1);

  return v2;
}

void CarPlayConnectionManager.car_queue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CarPlayConnectionManager_car_queue;
  OUTLINED_FUNCTION_9();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for CarPlayConnectionManager.carManager : CarPlayConnectionManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

id CarPlayConnectionManager.carManager.getter()
{
  v1 = OBJC_IVAR___CarPlayConnectionManager_carManager;
  OUTLINED_FUNCTION_10();
  v2 = *(v0 + v1);

  return v2;
}

void CarPlayConnectionManager.carManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CarPlayConnectionManager_carManager;
  OUTLINED_FUNCTION_9();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for CarPlayConnectionManager.carManagerObservable : CarPlayConnectionManager@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

id CarPlayConnectionManager.carManagerObservable.getter()
{
  v1 = OBJC_IVAR___CarPlayConnectionManager_carManagerObservable;
  OUTLINED_FUNCTION_10();
  v2 = *(v0 + v1);

  return v2;
}

void CarPlayConnectionManager.carManagerObservable.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CarPlayConnectionManager_carManagerObservable;
  OUTLINED_FUNCTION_9();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CarPlayConnectionManager.carRadioListener.getter()
{
  v1 = OBJC_IVAR___CarPlayConnectionManager____lazy_storage___carRadioListener;
  v2 = *(v0 + OBJC_IVAR___CarPlayConnectionManager____lazy_storage___carRadioListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CarPlayConnectionManager____lazy_storage___carRadioListener);
  }

  else
  {
    v4 = v0;
    (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
    v5 = objc_allocWithZone(type metadata accessor for RadioListener());
    v6 = OUTLINED_FUNCTION_14();
    v7 = RadioListener.init(serialQueue:)(v6);
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id CarPlayConnectionManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR___CarPlayConnectionManager_carManager;
  swift_beginAccess();
  [*&v0[v1] unregisterObserver_];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CarPlayConnectionManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *CarPlayConnectionManager.init(carManager:)(void *a1)
{
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13();
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_13();
  v30 = OBJC_IVAR___CarPlayConnectionManager_car_queue;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v9, *MEMORY[0x277D85260], v31);
  *&v1[v30] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (specialized Array._getCount()(MEMORY[0x277D84F90]))
  {
    v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(MEMORY[0x277D84F90]);
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR___CarPlayConnectionManager_cancellables] = v14;
  *&v1[OBJC_IVAR___CarPlayConnectionManager____lazy_storage___carRadioListener] = 0;
  *&v1[OBJC_IVAR___CarPlayConnectionManager_carManager] = a1;
  OUTLINED_FUNCTION_11();
  type metadata accessor for OS_dispatch_queue(v15, v16, v17);
  OUTLINED_FUNCTION_11();
  lazy protocol witness table accessor for type CAFCar and conformance CAFCar(v18, v19, v20);
  v21 = a1;
  *&v1[OBJC_IVAR___CarPlayConnectionManager_carManagerObservable] = CAFObserved<>.observable.getter();
  v33.receiver = v1;
  v33.super_class = type metadata accessor for CarPlayConnectionManager();
  v22 = objc_msgSendSuper2(&v33, sel_init);
  v23 = OBJC_IVAR___CarPlayConnectionManager_carManager;
  swift_beginAccess();
  v24 = *&v22[v23];
  v25 = v22;
  [v24 registerObserver_];
  v26 = OBJC_IVAR___CarPlayConnectionManager_carManagerObservable;
  swift_beginAccess();
  v27 = *((*MEMORY[0x277D85000] & *v25) + 0x110);
  v28 = *&v25[v26];
  v27();

  return v25;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall CarPlayConnectionManager.resetListeners()()
{
  v1 = v0;
  v2 = CarPlayConnectionManager.carRadioListener.getter();
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x148))();

  v4 = *(v1 + OBJC_IVAR___CarPlayConnectionManager____lazy_storage___carRadioListener);
  v5 = *((*v3 & *v4) + 0x150);
  v6 = v4;
  v5();
}

void closure #1 in variable initialization expression of static CarPlayConnectionManager.shared()
{
  v0 = type metadata accessor for CarPlayConnectionManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = outlined bridged method (mbbnb) of @objc NSBundle.path(forResource:ofType:)(0x5379616C50726143, 0xED0000616D656863, 0x7473696C70, 0xE500000000000000, v2);
  v5 = v4;

  if (v5)
  {
    v6 = objc_allocWithZone(MEMORY[0x277CF83A0]);
    v7 = @nonobjc CAFCarManager.init(registrationFilePath:)(v3, v5);
    v8 = objc_allocWithZone(v0);
    CarPlayConnectionManager.init(carManager:)(v7);
  }

  else
  {
    __break(1u);
  }
}

id static CarPlayConnectionManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static CarPlayConnectionManager.shared;

  return v1;
}

void CarPlayConnectionManager.registerUpdateHandler(_:)(uint64_t a1, uint64_t a2)
{
  v4 = CarPlayConnectionManager.carRadioListener.getter();
  (*((*MEMORY[0x277D85000] & *v4) + 0x160))(a1, a2);
}

uint64_t CarPlayConnectionManager.attemptCarConnectionAndWaitForUpdates(_:)()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMR);
  OUTLINED_FUNCTION_0(v38);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo6CAFCarCSg_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo6CAFCarCSg_GSo17OS_dispatch_queueCGMR);
  v39 = OUTLINED_FUNCTION_0(v12);
  v40 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVySo6CAFCarCSg_GSo17OS_dispatch_queueCGAMGMd, &_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVySo6CAFCarCSg_GSo17OS_dispatch_queueCGAMGMR);
  v41 = OUTLINED_FUNCTION_0(v17);
  v42 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17();
  v22 = dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  v37 = v0;
  v23 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))(v22);
  v43 = v23;
  v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  type metadata accessor for OS_dispatch_queue(v25, v26, v27);
  OUTLINED_FUNCTION_3();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](v28, &_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMR);
  OUTLINED_FUNCTION_5(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  OUTLINED_FUNCTION_8();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v4);

  (*(v6 + 8))(v11, 0x277D85C78uLL);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFCar, 0x277CF8398);
  OUTLINED_FUNCTION_2();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](v29, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo6CAFCarCSg_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo6CAFCarCSg_GSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_12();
  v30 = OUTLINED_FUNCTION_19();
  v31(v30);
  OUTLINED_FUNCTION_18();
  swift_allocObject();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_1();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](v32, &_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVySo6CAFCarCSg_GSo17OS_dispatch_queueCGAMGMd, &_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVySo6CAFCarCSg_GSo17OS_dispatch_queueCGAMGMR);
  OUTLINED_FUNCTION_15();

  v33 = OUTLINED_FUNCTION_16();
  v34(v33);
  OUTLINED_FUNCTION_20();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #2 in CarPlayConnectionManager.attemptCarConnectionAndWaitForUpdates(_:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFCar, 0x277CF8398);
    lazy protocol witness table accessor for type CAFCar and conformance CAFCar(&lazy protocol witness table cache variable for type CAFCar and conformance CAFCar, &lazy cache variable for type metadata for CAFCar, 0x277CF8398);
    v4 = CAFObserved<>.observable.getter();
    CarPlayConnectionManager.setupCarMediaConnection(_:)();
  }
}

uint64_t CarPlayConnectionManager.setupCarMediaConnection(_:)()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8CAFMediaCSg_GMd, &_s7Combine9PublishedV9PublisherVySo8CAFMediaCSg_GMR);
  OUTLINED_FUNCTION_0(v38);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo8CAFMediaCSg_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo8CAFMediaCSg_GSo17OS_dispatch_queueCGMR);
  v39 = OUTLINED_FUNCTION_0(v12);
  v40 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVySo8CAFMediaCSg_GSo17OS_dispatch_queueCGAMGMd, &_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVySo8CAFMediaCSg_GSo17OS_dispatch_queueCGAMGMR);
  v41 = OUTLINED_FUNCTION_0(v17);
  v42 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17();
  v22 = dispatch thunk of CAFCarObservable.$media.getter();
  v37 = v0;
  v23 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))(v22);
  v43 = v23;
  v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  type metadata accessor for OS_dispatch_queue(v25, v26, v27);
  OUTLINED_FUNCTION_3();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](v28, &_s7Combine9PublishedV9PublisherVySo8CAFMediaCSg_GMd, &_s7Combine9PublishedV9PublisherVySo8CAFMediaCSg_GMR);
  OUTLINED_FUNCTION_5(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  OUTLINED_FUNCTION_8();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v4);

  (*(v6 + 8))(v11, 0x277D85C78uLL);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMedia, 0x277CF8508);
  OUTLINED_FUNCTION_2();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](v29, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo8CAFMediaCSg_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySo8CAFMediaCSg_GSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_12();
  v30 = OUTLINED_FUNCTION_19();
  v31(v30);
  OUTLINED_FUNCTION_18();
  swift_allocObject();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_1();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](v32, &_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVySo8CAFMediaCSg_GSo17OS_dispatch_queueCGAMGMd, &_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVySo8CAFMediaCSg_GSo17OS_dispatch_queueCGAMGMR);
  OUTLINED_FUNCTION_15();

  v33 = OUTLINED_FUNCTION_16();
  v34(v33);
  OUTLINED_FUNCTION_20();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

id closure #1 in CarPlayConnectionManager.attemptCarConnectionAndWaitForUpdates(_:)@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, const char *a4@<X3>, void *a5@<X8>)
{
  v9 = *a1;
  if (one-time initialization token for Log != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, Log);
  v19 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v15 = Optional.debugDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2559DF000, v11, v12, a4, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x259C46600](v14, -1, -1);
    MEMORY[0x259C46600](v13, -1, -1);
  }

  *a5 = v9;

  return v19;
}

void closure #2 in CarPlayConnectionManager.setupCarMediaConnection(_:)(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, Log);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = [v5 debugDescription];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_2559DF000, v6, v7, "#radio: Initializing radio listner with CAFMedia: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x259C46600](v9, -1, -1);
      MEMORY[0x259C46600](v8, -1, -1);
    }

    v15 = CarPlayConnectionManager.carRadioListener.getter();
    (*((*MEMORY[0x277D85000] & *v15) + 0x158))(v5);
  }
}

id CarPlayConnectionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CarPlayConnectionManager.carManager(_:didUpdateCurrentCar:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = v2;
    if (one-time initialization token for Log != -1)
    {
      OUTLINED_FUNCTION_6();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, Log);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2559DF000, v5, v6, "#radio Car disconnected — resetting connection and attempting to await updates", v7, 2u);
      MEMORY[0x259C46600](v7, -1, -1);
    }

    v8 = *((*MEMORY[0x277D85000] & *v3) + 0xF8);

    v8();
  }
}

id @nonobjc CAFCarManager.init(registrationFilePath:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x259C459A0]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithRegistrationFilePath_];

  return v4;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(unint64_t a1)
{
  if (specialized Array.count.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    OUTLINED_FUNCTION_14();
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v21 = specialized Array._getCount()(a1);
  if (v21)
  {
    v3 = 0;
    v4 = v2 + 56;
    v19 = a1;
    v20 = a1 & 0xC000000000000001;
    v18 = a1 + 32;
    while (1)
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v3, v20 == 0, a1);
      if (v20)
      {
        result = MEMORY[0x259C45C30](v3, a1);
        v6 = result;
      }

      else
      {
        v6 = *(v18 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      type metadata accessor for AnyCancellable();
      OUTLINED_FUNCTION_4();
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, v9);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = result & v10;
        v12 = (result & v10) >> 6;
        v13 = *(v4 + 8 * v12);
        v14 = 1 << (result & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        v22 = *(*(v2 + 48) + 8 * v11);
        OUTLINED_FUNCTION_4();
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, v15);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          goto LABEL_17;
        }

        result = v11 + 1;
      }

      *(v4 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v6;
      v16 = *(v2 + 16);
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v17;
LABEL_17:
      a1 = v19;
      if (v3 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CAFCar and conformance CAFCar(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OS_dispatch_queue(255, a2, a3);
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined bridged method (mbbnb) of @objc NSBundle.path(forResource:ofType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x259C459A0]();

  v9 = MEMORY[0x259C459A0](a3, a4);

  v10 = [a5 pathForResource:v8 ofType:v9];

  if (!v10)
  {
    return 0;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5(unint64_t *a1)
{

  return lazy protocol witness table accessor for type CAFCar and conformance CAFCar(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8()
{
  v2 = *(v0 - 144);

  return Publisher.receive<A>(on:options:)();
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12()
{
  v2 = *(v0 - 136);

  return Publisher.compactMap<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_15()
{
  v2 = *(v0 - 120);

  return Publisher<>.sink(receiveValue:)();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21()
{
  v2 = *(v0 - 152);

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

Swift::String __swiftcall CAFMediaSourceSemanticType.stringValue()()
{
  v1 = v0;
  v2 = type metadata accessor for UsoEntity_common_RadioBand.DefinedValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(v1)
  {
    case 1:
      v7 = MEMORY[0x277D5E9E8];
      goto LABEL_11;
    case 2:
      v7 = MEMORY[0x277D5E9F0];
      goto LABEL_11;
    case 3:
      v7 = MEMORY[0x277D5E9F8];
      goto LABEL_11;
    case 6:
    case 8:
      v7 = MEMORY[0x277D5EA00];
LABEL_11:
      (*(v3 + 104))(v6, *v7, v2);
      v12 = UsoEntity_common_RadioBand.DefinedValues.rawValue.getter();
      v13 = v14;
      (*(v3 + 8))(v6, v2);
      break;
    default:
      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, Log);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_2559DF000, v9, v10, "#radio: Received unsupported semantic type", v11, 2u);
        MEMORY[0x259C46600](v11, -1, -1);
      }

      v12 = 0;
      v13 = 0xE000000000000000;
      break;
  }

  v15 = v12;
  v16 = v13;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

id CAFMediaItem.siriFormattedStringFrequency(semanticType:)(char a1)
{
  if (a1 != 8 && a1 != 2)
  {
    [v1 frequency];
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  result = [v1 frequency];
  v4 = result / 1000.0;
  if (roundf(v4) == v4)
  {
    if (v4 == INFINITY)
    {
      __break(1u);
    }

    else if (v4 > -9.2234e18)
    {
      if (v4 < 9.2234e18)
      {
        return dispatch thunk of CustomStringConvertible.description.getter();
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  return Float.description.getter();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x259C459A0]();
  (*(a3 + 16))(a3, v4);
}

uint64_t RadioListener.updateHandler.getter()
{
  v1 = (v0 + OBJC_IVAR___RadioListener_updateHandler);
  OUTLINED_FUNCTION_9_0();
  v3 = *v1;
  v2 = v1[1];
  sub_2559E1324(v3);
  return v3;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String) -> ()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

uint64_t RadioListener.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___RadioListener_updateHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(v6);
}

uint64_t key path getter for RadioListener.updateHandler : RadioListener@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x120))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for RadioListener.updateHandler : RadioListener(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x128);
  sub_2559E1324(v3);
  return v7(v6, v5);
}

id RadioListener.init(serialQueue:)(void *a1)
{
  *&v1[OBJC_IVAR___RadioListener_mediaSourceObservers] = 0;
  if (specialized Array._getCount()(MEMORY[0x277D84F90]))
  {
    v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR___RadioListener_cancellables] = v3;
  *&v1[OBJC_IVAR___RadioListener_allowedMediaSources] = &outlined read-only object #0 of RadioListener.init(serialQueue:);
  v4 = OBJC_IVAR___RadioListener_knownRadioItemsBySourceType;
  type metadata accessor for CAFMediaSourceSemanticType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo6KVItemCGMd, &_sShySo6KVItemCGMR);
  OUTLINED_FUNCTION_1_0();
  lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(v5, v6);
  *&v1[v4] = Dictionary.init(dictionaryLiteral:)();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___RadioListener_maxStationListSize] = 1500;
  v7 = &v1[OBJC_IVAR___RadioListener_updateHandler];
  *v7 = 0;
  *(v7 + 1) = 0;
  swift_unknownObjectUnownedInit();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RadioListener();
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id RadioListener.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong unregisterObserver_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for RadioListener();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall RadioListener.clearDonatedStations()()
{
  v1 = v0;
  if (one-time initialization token for Log != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, Log);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_0(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2559DF000, v3, v4, "#radio: Clearing all donated radio stations.", v5, 2u);
    OUTLINED_FUNCTION_5_0();
  }

  type metadata accessor for CAFMediaSourceSemanticType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo6KVItemCGMd, &_sShySo6KVItemCGMR);
  OUTLINED_FUNCTION_1_0();
  lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(v6, v7);
  v8 = Dictionary.init(dictionaryLiteral:)();
  v9 = OBJC_IVAR___RadioListener_knownRadioItemsBySourceType;
  swift_beginAccess();
  v10 = *(v1 + v9);
  *(v1 + v9) = v8;

  (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))(v11);
}

Swift::Void __swiftcall RadioListener.teardownPublisherSubscriptions()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong unregisterObserver_];
  }

  v3 = *(v0 + OBJC_IVAR___RadioListener_mediaSourceObservers);
  *(v0 + OBJC_IVAR___RadioListener_mediaSourceObservers) = 0;

  v4 = OBJC_IVAR___RadioListener_cancellables;
  OUTLINED_FUNCTION_9_0();
  v5 = *(v0 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
    Set.Iterator.init(_cocoa:)();
    v7 = v20;
    v6 = v21;
    v8 = v22;
    v9 = v23;
    v10 = v24;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v5 + 56);
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v9;
    v15 = v10;
    v16 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v7 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      outlined consume of Set<AnyCancellable>.Iterator._Variant();

      return;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v9 = v16;
      v10 = v17;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        OUTLINED_FUNCTION_14_0();
        v16 = v9;
        v17 = v10;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v8 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void RadioListener.mediaConnectionEstablished(_:)(void *a1)
{
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong registerObserver_];
  }

  if ([a1 receivedAllValues])
  {

    RadioListener.observeMediaSources(from:)(a1);
  }

  else
  {
    if (one-time initialization token for Log != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, Log);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2559DF000, oslog, v6, "#radio: Media received but waiting for receivedAllValues", v7, 2u);
      OUTLINED_FUNCTION_5_0();
    }
  }
}

uint64_t RadioListener.registerUpdateHandler(_:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  if (one-time initialization token for Log != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, Log);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = MEMORY[0x277D85000];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v16 = (*((*MEMORY[0x277D85000] & *v6) + 0x138))(v15);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);
    v10 = MEMORY[0x277D85000];

    *(v11 + 14) = v18;
    _os_log_impl(&dword_2559DF000, v7, v8, "#radio: %s listening for %s updates.", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  else
  {
  }

  v19 = *((*v10 & *v6) + 0x128);
  sub_2559E1324(a1);
  return v19(a1, a2);
}

uint64_t RadioListener.radioStations()()
{
  v1 = v0;
  v2 = OBJC_IVAR___RadioListener_knownRadioItemsBySourceType;
  OUTLINED_FUNCTION_9_0();
  v3 = specialized Dictionary.subscript.getter(6u, *(v0 + v2));
  if (v3)
  {
    v4 = sub_2559E1334(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = specialized Dictionary.subscript.getter(8u, *(v0 + v2));
  if (v5)
  {
    v6 = sub_2559E1334(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = specialized Dictionary.subscript.getter(2u, *(v0 + v2));
  if (v7)
  {
    v8 = sub_2559E1334(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = specialized Dictionary.subscript.getter(1u, *(v0 + v2));
  if (v9)
  {
    v10 = sub_2559E1334(v9);
  }

  else
  {
    v10 = 0;
  }

  v62 = v2;
  v11 = specialized Dictionary.subscript.getter(3u, *(v0 + v2));
  if (v11)
  {
    v12 = sub_2559E1334(v11);
  }

  else
  {
    v12 = 0;
  }

  if (one-time initialization token for Log == -1)
  {
    goto LABEL_17;
  }

LABEL_55:
  OUTLINED_FUNCTION_0_0();
  swift_once();
LABEL_17:
  v13 = type metadata accessor for Logger();
  v59 = __swift_project_value_buffer(v13, Log);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v58 = v1;
  if (OUTLINED_FUNCTION_16_0(v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134219008;
    *(v16 + 4) = v4;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v6;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v8;
    *(v16 + 32) = 2048;
    *(v16 + 34) = v10;
    *(v16 + 42) = 2048;
    *(v16 + 44) = v12;
    _os_log_impl(&dword_2559DF000, v14, v15, "#radio Number of radio donations by media source: — \n\tDAB: %ld\n\tFMDAB: %ld\n\tFM: %ld\n\tAM: %ld\n\tSiriusXM: %ld", v16, 0x34u);
    OUTLINED_FUNCTION_5_0();
  }

  v12 = v62;
  v17 = *&v62[v1];
  v19 = *(v17 + 64);
  v10 = v17 + 64;
  v18 = v19;
  v20 = 1 << *(*&v62[v1] + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v63 = *&v62[v1];

  v24 = 0;
  v4 = v59;
  v60 = v23;
  v61 = v10;
  while (v22)
  {
    v25 = v24;
LABEL_28:
    v6 = *(*(v63 + 48) + (__clz(__rbit64(v22)) | (v25 << 6)));
    v65 = 0;
    v66 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v65 = 0xD00000000000001CLL;
    v66 = 0x8000000255A01710;
    v26 = CAFMediaSourceSemanticType.description.getter();
    MEMORY[0x259C459E0](v26);

    v67 = v65;
    v68 = v66;
    v27 = *&v12[v1];
    if (*(v27 + 16))
    {
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v29)
      {
        v30 = *(*(v27 + 56) + 8 * v28);
        if ((v30 & 0xC000000000000001) != 0)
        {

          __CocoaSet.makeIterator()();
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
          lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type KVItem and conformance NSObject, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
          Set.Iterator.init(_cocoa:)();
          v31 = v69;
          v1 = v70;
          v32 = v71;
          v4 = v72;
          v8 = v73;
        }

        else
        {
          v33 = -1 << *(v30 + 32);
          v1 = v30 + 56;
          v32 = ~v33;
          v34 = -v33;
          if (v34 < 64)
          {
            v35 = ~(-1 << v34);
          }

          else
          {
            v35 = -1;
          }

          v8 = v35 & *(v30 + 56);

          v4 = 0;
        }

        v57 = v32;
        v6 = (v32 + 64) >> 6;
        v64 = v31;
        if (v31 < 0)
        {
          goto LABEL_43;
        }

        while (1)
        {
          v36 = v4;
          v37 = v8;
          v10 = v4;
          if (!v8)
          {
            while (1)
            {
              v10 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                break;
              }

              if (v10 >= v6)
              {
                goto LABEL_47;
              }

              v37 = *(v1 + 8 * v10);
              ++v36;
              if (v37)
              {
                goto LABEL_41;
              }
            }

LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

LABEL_41:
          v38 = (v37 - 1) & v37;
          v12 = *(*(v31 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v37)))));
          if (!v12)
          {
            break;
          }

          while (1)
          {
            v65 = 9;
            v66 = 0xE100000000000000;
            v39 = [v12 description];
            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            MEMORY[0x259C459E0](v40, v42);

            MEMORY[0x259C459E0](10, 0xE100000000000000);
            v44 = v65;
            v43 = v66;
            OUTLINED_FUNCTION_15_0();
            MEMORY[0x259C459E0](v44, v43);
            swift_endAccess();

            v4 = v10;
            v8 = v38;
            v31 = v64;
            if ((v64 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_43:
            if (__CocoaSet.Iterator.next()())
            {
              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
              OUTLINED_FUNCTION_14_0();
              v12 = v65;
              v10 = v4;
              v38 = v8;
              if (v65)
              {
                continue;
              }
            }

            goto LABEL_47;
          }
        }

LABEL_47:
        outlined consume of Set<AnyCancellable>.Iterator._Variant();
        v1 = v58;
        v12 = v62;
        v4 = v59;
        v23 = v60;
        v10 = v61;
      }
    }

    v22 &= v22 - 1;
    v45 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_0(v8))
    {
      v6 = OUTLINED_FUNCTION_17_0();
      v46 = OUTLINED_FUNCTION_10_0();
      v65 = v46;
      *v6 = 136315138;
      OUTLINED_FUNCTION_9_0();
      v47 = v67;
      v48 = v68;

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v65);

      *(v6 + 4) = v49;
      v12 = v62;
      _os_log_impl(&dword_2559DF000, v45, v8, "%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v10 = v61;
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();
      v23 = v60;
    }

    else
    {
    }

    v24 = v25;
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v10 + 8 * v25);
    ++v24;
    if (v22)
    {
      goto LABEL_28;
    }
  }

  v50 = *(v1 + OBJC_IVAR___RadioListener_mediaSourceObservers);

  RadioListener.generateItemsFromFrequencyRanges(_:)();
  v52 = v51;

  v53 = *&v12[v1];

  v55 = Dictionary<>.allValues.getter(v54);

  v65 = v55;
  specialized Array.append<A>(contentsOf:)(v52);
  return v65;
}

uint64_t specialized Dictionary.subscript.getter(Swift::UInt8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t Dictionary<>.allValues.getter(uint64_t a1)
{
  v16 = MEMORY[0x277D84F90];
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  for (i = 0; v7; result = specialized Array.append<A>(contentsOf:)(v15))
  {
    v12 = i;
LABEL_7:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = *(*(a1 + 56) + ((v12 << 9) | (8 * v13)));
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v16;
    }

    v7 = *(v3 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void RadioListener.generateItemsFromFrequencyRanges(_:)()
{
  v1 = *(v0 + OBJC_IVAR___RadioListener_mediaSourceObservers);

  v3 = static FrequencyRangeUtils.getMediaSourcesFromMediaSourceObserves(_:)(v2);

  v4 = static FrequencyRangeUtils.createStationGeneratorsFrom(mediaSources:)(v3);

  v6 = v4 + 56;
  v5 = *(v4 + 56);
  v7 = *(v4 + 32);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;

  v13 = 0;
  v14 = KMIntentVocabularyAuthorization;
  v30 = v4 + 56;
  while (v10)
  {
    v15 = v13;
LABEL_7:
    v16 = *(v4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v10))));
    v17 = *(v16 + 8);
    isa = v14[38].isa;
    v19 = *v16;

    if (isa != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v10 &= v10 - 1;
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, Log);
    v21 = v19;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_17_0();
      v25 = OUTLINED_FUNCTION_10_0();
      v32 = v25;
      *v24 = 136315138;
      v26 = RadioFrequencyRangeItemGenerator.description.getter(v21, v17);
      log = v22;
      v28 = v4;
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v32);

      *(v24 + 4) = v29;
      v4 = v28;
      _os_log_impl(&dword_2559DF000, log, v23, "Donating: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v6 = v30;
      OUTLINED_FUNCTION_5_0();
      v14 = KMIntentVocabularyAuthorization;
      OUTLINED_FUNCTION_5_0();
    }

    else
    {
    }

    v13 = v15;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      static FrequencyRangeUtils.concatenateGeneratedFrequencyItems(_:)(v4);

      return;
    }

    v10 = *(v6 + 8 * v15);
    ++v13;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void RadioListener.observeMediaSources(from:)(void *a1)
{
  v2 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_0();
  v63 = v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGMR);
  OUTLINED_FUNCTION_0(v62);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_0();
  v61 = v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0I18SourceSemanticTypeV_AKtGMd, &_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0I18SourceSemanticTypeV_AKtGMR);
  OUTLINED_FUNCTION_0(v60);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_0();
  v59 = v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AC10CompactMapVy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0J18SourceSemanticTypeV_AMtGGMd, &_s7Combine10PublishersO6FilterVy_AC10CompactMapVy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0J18SourceSemanticTypeV_AMtGGMR);
  OUTLINED_FUNCTION_0(v58);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_0();
  v57 = v18;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC6FilterVy_AC07CompactC0Vy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0J18SourceSemanticTypeV_AOtGGAX_SaySo6KVItemCGtGMd, &_s7Combine10PublishersO3MapVy_AC6FilterVy_AC07CompactC0Vy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0J18SourceSemanticTypeV_AOtGGAX_SaySo6KVItemCGtGMR);
  OUTLINED_FUNCTION_0(v56);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_0();
  v55 = v22;
  v23 = outlined bridged method (pb) of @objc CAFMedia.mediaSources.getter(a1);
  if (v23)
  {
    v24 = v23;
    v25 = specialized Array._getCount()(v23);
    if (v25)
    {
      v26 = v25;
      v70 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v26 < 0)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v27 = 0;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x259C45C30](v27, v24);
        }

        else
        {
          v28 = *(v24 + 8 * v27 + 32);
        }

        v29 = v28;
        ++v27;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaSource, 0x277CF8518);
        lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type CAFMediaSource and conformance CAFMediaSource, &lazy cache variable for type metadata for CAFMediaSource, 0x277CF8518);
        CAFObserved<>.observable.getter();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v30 = *(v70 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v26 != v27);

      v31 = v70;
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }

    v35 = *(v2 + OBJC_IVAR___RadioListener_mediaSourceObservers);
    *(v2 + OBJC_IVAR___RadioListener_mediaSourceObservers) = v31;

    swift_unknownObjectWeakInit();
    v66 = specialized Array._getCount()(v31);
    OUTLINED_FUNCTION_9_0();
    v36 = 0;
    v64 = v31 & 0xFFFFFFFFFFFFFF8;
    v65 = v31 & 0xC000000000000001;
    v54 = v31;
    while (1)
    {
      if (v66 == v36)
      {

        MEMORY[0x259C46670](v71);
        return;
      }

      if (v65)
      {
        v37 = MEMORY[0x259C45C30](v36, v31);
      }

      else
      {
        if (v36 >= *(v64 + 16))
        {
          goto LABEL_30;
        }

        v37 = *(v31 + 8 * v36 + 32);
      }

      v38 = v37;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v40 = Strong;
        v68 = v36;
        dispatch thunk of CAFMediaSourceObservable.$mediaItems.getter();
        v69 = swift_unknownObjectUnownedLoadStrong();
        v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
        __swift_storeEnumTagSinglePayload(v63, 1, 1, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGMd, &_s7Combine12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGMR);
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CAFMediaItems?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGMd, &_s7Combine12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGMR);
        lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        Publisher.receive<A>(on:options:)();
        outlined destroy of NSObject?(v63, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

        OUTLINED_FUNCTION_18();
        *(swift_allocObject() + 16) = v38;
        v42 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26CAFMediaSourceSemanticTypeV_So0A5ItemsCtMd, &_sSo26CAFMediaSourceSemanticTypeV_So0A5ItemsCtMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<CAFMediaItems?, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGMR);
        Publisher.compactMap<A>(_:)();

        OUTLINED_FUNCTION_12_0(&v75);
        v43(v61, v62);
        OUTLINED_FUNCTION_18();
        v44 = swift_allocObject();
        *(v44 + 16) = v40;
        v45 = swift_allocObject();
        *(v45 + 16) = partial apply for closure #2 in closure #2 in RadioListener.observeMediaSources(from:);
        *(v45 + 24) = v44;
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.ReceiveOn<AnyPublisher<CAFMediaItems?, Never>, OS_dispatch_queue>, (CAFMediaSourceSemanticType, CAFMediaItems)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0I18SourceSemanticTypeV_AKtGMd, &_s7Combine10PublishersO10CompactMapVy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0I18SourceSemanticTypeV_AKtGMR);
        v46 = v40;
        Publisher.filter(_:)();

        OUTLINED_FUNCTION_12_0(&v74);
        v47(v59, v60);
        OUTLINED_FUNCTION_18();
        v48 = swift_allocObject();
        *(v48 + 16) = v46;
        v49 = swift_allocObject();
        *(v49 + 16) = partial apply for closure #3 in closure #2 in RadioListener.observeMediaSources(from:);
        *(v49 + 24) = v48;
        v50 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26CAFMediaSourceSemanticTypeV_SaySo6KVItemCGtMd, &_sSo26CAFMediaSourceSemanticTypeV_SaySo6KVItemCGtMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Filter<Publishers.CompactMap<Publishers.ReceiveOn<AnyPublisher<CAFMediaItems?, Never>, OS_dispatch_queue>, (CAFMediaSourceSemanticType, CAFMediaItems)>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AC10CompactMapVy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0J18SourceSemanticTypeV_AMtGGMd, &_s7Combine10PublishersO6FilterVy_AC10CompactMapVy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0J18SourceSemanticTypeV_AMtGGMR);
        Publisher.map<A>(_:)();

        OUTLINED_FUNCTION_12_0(&v73);
        v51(v57, v58);
        OUTLINED_FUNCTION_18();
        *(swift_allocObject() + 16) = v50;
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Publishers.Filter<Publishers.CompactMap<Publishers.ReceiveOn<AnyPublisher<CAFMediaItems?, Never>, OS_dispatch_queue>, (CAFMediaSourceSemanticType, CAFMediaItems)>>, (CAFMediaSourceSemanticType, [KVItem])> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC6FilterVy_AC07CompactC0Vy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0J18SourceSemanticTypeV_AOtGGAX_SaySo6KVItemCGtGMd, &_s7Combine10PublishersO3MapVy_AC6FilterVy_AC07CompactC0Vy_AC9ReceiveOnVy_AA12AnyPublisherVySo13CAFMediaItemsCSgs5NeverOGSo17OS_dispatch_queueCGSo0J18SourceSemanticTypeV_AOtGGAX_SaySo6KVItemCGtGMR);
        v52 = v50;
        Publisher<>.sink(receiveValue:)();

        OUTLINED_FUNCTION_12_0(&v72);
        v53(v55, v56);
        OUTLINED_FUNCTION_15_0();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v36 = v68;
        v31 = v54;
      }

      else
      {
      }

      ++v36;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (one-time initialization token for Log != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, Log);
  v67 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v67, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2559DF000, v67, v33, "#radio Error: CAFMedia has no media sources.", v34, 2u);
    OUTLINED_FUNCTION_5_0();
  }
}

uint64_t closure #1 in closure #2 in RadioListener.observeMediaSources(from:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, Log);
  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    if (v3)
    {
      v11 = [v6 mediaItems];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaItem, 0x277CF8510);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = specialized Array._getCount()(v12);
    }

    else
    {
      v13 = 0;
    }

    v22 = v13;
    LOBYTE(v23) = v3 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v21);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    v17 = CAFMediaSourceSemanticType.stringValue()();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17._countAndFlagsBits, v17._object, &v21);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_2559DF000, v7, v8, "#radio CarPlay has %s mediaItems of semanticType: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C46600](v10, -1, -1);
    MEMORY[0x259C46600](v9, -1, -1);
  }

  LOBYTE(v22) = v4;
  v23 = v3;
  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26CAFMediaSourceSemanticTypeV_So0A5ItemsCSgtMd, &_sSo26CAFMediaSourceSemanticTypeV_So0A5ItemsCSgtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26CAFMediaSourceSemanticTypeV_So0A5ItemsCtMd, &_sSo26CAFMediaSourceSemanticTypeV_So0A5ItemsCtMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

BOOL specialized Sequence<>.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t closure #3 in closure #2 in RadioListener.observeMediaSources(from:)(uint64_t a1, id a2)
{
  v3 = [a2 mediaItems];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaItem, 0x277CF8510);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  RadioListener.itemListFrom(semanticType:mediaItems:)(a1, v4);
  v6 = v5;

  return v6;
}

void RadioListener.itemListFrom(semanticType:mediaItems:)(uint64_t a1, uint64_t a2)
{
  v10 = MEMORY[0x277D84F90];
  v4 = specialized Array._getCount()(a2);
  v5 = 0;
  while (v4 != v5)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C45C30](v5, a2);
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v9 = RadioListener.itemFrom(semanticType:mediaItem:)(a1, v6);

    ++v5;
    if (v9)
    {
      MEMORY[0x259C45A00]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v8;
    }
  }
}

id RadioListener.itemFrom(semanticType:mediaItem:)(uint64_t a1, void *a2)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277D22D28]) init];
  v5 = RadioListener.itemIdFrom(semanticType:mediaItem:)(a1, a2);
  v6 = MEMORY[0x259C459A0](v5);

  v58[0] = 0;
  v7 = [v4 setItemType:9 itemId:v6 error:v58];

  if (v7)
  {
    v8 = v58[0];

    v9 = outlined bridged method (pb) of @objc CAFMediaItem.mediaItemName.getter(a2, &selRef_mediaItemName);
    if (v10)
    {
      v11 = MEMORY[0x259C459A0](v9);
    }

    else
    {
      v11 = 0;
    }

    v58[0] = 0;
    v13 = OUTLINED_FUNCTION_6_0();
    v15 = [v13 v14];

    v16 = v58[0];
    if (!v15)
    {
      goto LABEL_19;
    }

    v17 = v58[0];

    CAFMediaSourceSemanticType.stringValue()();
    OUTLINED_FUNCTION_11_0();
    v21 = outlined bridged method (mnbnnn) of @objc KVItemBuilder.addField(type:value:)(355, v18, v20, v19, v4);
    v22 = v58[0];
    if (!v21)
    {
LABEL_27:
      v57 = v22;
      v43 = _convertNSErrorToError(_:)();

      goto LABEL_21;
    }

    v23 = outlined bridged method (pb) of @objc CAFMediaItem.mediaItemName.getter(a2, &selRef_mediaItemShortName);
    if (v24)
    {
      v25 = MEMORY[0x259C459A0](v23);
    }

    else
    {
      v25 = 0;
    }

    v58[0] = 0;
    v26 = OUTLINED_FUNCTION_6_0();
    v28 = [v26 v27];

    v16 = v58[0];
    if (!v28)
    {
      goto LABEL_19;
    }

    v29 = v58[0];

    v30 = outlined bridged method (pb) of @objc CAFMediaItem.mediaItemName.getter(a2, &selRef_identifier);
    if (v31)
    {
      v32 = MEMORY[0x259C459A0](v30);
    }

    else
    {
      v32 = 0;
    }

    v58[0] = 0;
    v33 = OUTLINED_FUNCTION_6_0();
    v35 = [v33 v34];

    v16 = v58[0];
    if (v35)
    {
      v36 = v58[0];

      CAFMediaItem.siriFormattedStringFrequency(semanticType:)(a1);
      OUTLINED_FUNCTION_11_0();
      v40 = outlined bridged method (mnbnnn) of @objc KVItemBuilder.addField(type:value:)(353, v37, v39, v38, v4);
      v41 = v58[0];
      if (v40)
      {

        v58[0] = 0;
        v42 = [v4 buildItemWithError_];
        v22 = v58[0];
        if (v42)
        {

          goto LABEL_26;
        }

        goto LABEL_27;
      }

      v12 = v41;
    }

    else
    {
LABEL_19:
      v12 = v16;
    }
  }

  else
  {
    v12 = v58[0];
  }

  v43 = _convertNSErrorToError(_:)();

LABEL_21:
  swift_willThrow();

  if (one-time initialization token for Log != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, Log);
  v45 = a2;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_17_0();
    v49 = OUTLINED_FUNCTION_10_0();
    v58[0] = v49;
    *v48 = 136315138;
    v50 = [v45 debugDescription];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v58);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_2559DF000, v46, v47, "#radio: Could not create KVItem from mediaItem: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  v42 = 0;
LABEL_26:
  v55 = *MEMORY[0x277D85DE8];
  return v42;
}

uint64_t RadioListener.itemIdFrom(semanticType:mediaItem:)(uint64_t a1, void *a2)
{
  Hasher.init()();
  CAFMediaSourceSemanticType.stringValue()();
  String.hash(into:)();

  outlined bridged method (pb) of @objc CAFMediaItem.mediaItemName.getter(a2, &selRef_mediaItemName);
  if (v3)
  {
    OUTLINED_FUNCTION_13_0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  outlined bridged method (pb) of @objc CAFMediaItem.mediaItemName.getter(a2, &selRef_mediaItemShortName);
  if (v4)
  {
    OUTLINED_FUNCTION_13_0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)([a2 frequency]);
  outlined bridged method (pb) of @objc CAFMediaItem.mediaItemName.getter(a2, &selRef_identifier);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher.finalize()();
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t RadioListener.saveItemsBy(semanticType:items:)(Swift::UInt8 a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___RadioListener_knownRadioItemsBySourceType;
  swift_beginAccess();
  v7 = *&v2[v6];

  v9 = Dictionary<>.totalValueCount.getter(v8);

  v10 = specialized Array._getCount()(a2);
  v11 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
LABEL_10:
    OUTLINED_FUNCTION_0_0();
    swift_once();
    goto LABEL_4;
  }

  if (v11 < 1501)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for Log != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, Log);
  v13 = v3;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_0(v15))
  {
    v16 = OUTLINED_FUNCTION_10_0();
    *v16 = 134218496;
    *(v16 + 4) = v11;
    *(v16 + 12) = 2048;
    *(v16 + 14) = 1500;

    *(v16 + 22) = 2048;
    *(v16 + 24) = specialized Array._getCount()(a2);

    _os_log_impl(&dword_2559DF000, v14, v15, "#radio: Something is wrong——Radio store will have %ld stations after current update which is more than the currently allowed limit of %ld. Clearing the store and adding %ld new items. ", v16, 0x20u);
    OUTLINED_FUNCTION_5_0();
  }

  else
  {
  }

  type metadata accessor for CAFMediaSourceSemanticType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo6KVItemCGMd, &_sShySo6KVItemCGMR);
  OUTLINED_FUNCTION_1_0();
  lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(v17, v18);
  v19 = Dictionary.init(dictionaryLiteral:)();
  v20 = *&v3[v6];
  *&v3[v6] = v19;

LABEL_8:

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6KVItemC_SayAEGTt0g5(v21);
  v23 = v22;
  OUTLINED_FUNCTION_15_0();
  v24 = *&v3[v6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *&v3[v6];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, a1, isUniquelyReferenced_nonNull_native);
  *&v3[v6] = v27;
  return swift_endAccess();
}

uint64_t Dictionary<>.totalValueCount.getter(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  while (v7)
  {
LABEL_7:
    v14 = *(*(a1 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *(v14 + 16);
    }

    v7 &= v7 - 1;
    v16 = __OFADD__(v12, v15);
    v12 += v15;
    if (v16)
    {
      __break(1u);
LABEL_13:

      return v12;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_13;
    }

    v7 = *(v3 + 8 * v13);
    ++v11;
    if (v7)
    {
      v11 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo6KVItemC_SayAEGTt0g5(unint64_t a1)
{
  v2 = specialized Array._getCount()(a1);
  v3 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
  v4 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type KVItem and conformance NSObject, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
  v8[1] = MEMORY[0x259C45A60](v2, v3, v4);
  v5 = specialized Array._getCount()(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x259C45C30](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    specialized Set._Variant.insert(_:)(v8, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

Swift::Void __swiftcall RadioListener.donationUpdateTriggered()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = OUTLINED_FUNCTION_0(v9);
  v31 = v11;
  v32 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for Log != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, Log);
  v17 = v0;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_17_0();
    v21 = OUTLINED_FUNCTION_10_0();
    v30 = v4;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    v23 = (*((*MEMORY[0x277D85000] & *v17) + 0x138))();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_2559DF000, v18, v19, "#radio triggering donation request for: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v4 = v30;
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  OUTLINED_FUNCTION_18();
  v27 = swift_allocObject();
  *(v27 + 16) = v17;
  aBlock[4] = partial apply for closure #1 in RadioListener.donationUpdateTriggered();
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor;
  v28 = _Block_copy(aBlock);
  v29 = v17;
  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x259C45AE0](0, v15, v8, v28);
  _Block_release(v28);

  (*(v4 + 8))(v8, v1);
  (*(v31 + 8))(v15, v32);
}

uint64_t closure #1 in RadioListener.donationUpdateTriggered()(void *a1)
{
  v2 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x120))();
  if (result)
  {
    v4 = result;
    v5 = (*((*v2 & *a1) + 0x138))();
    v4(v5);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(v4);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id RadioListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void RadioListener.accessoryDidUpdate(_:receivedAllValues:)(void *a1, char a2)
{
  v3 = v2;
  if (one-time initialization token for Log != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, Log);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a2 & 1;
    v12 = v7;
    _os_log_impl(&dword_2559DF000, v8, v9, "#radio: %@ received all values %{BOOL}d.", v10, 0x12u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v7;
    if ([v14 receivedAllValues])
    {
      RadioListener.observeMediaSources(from:)(v14);
      [v14 unregisterObserver_];
    }
  }
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
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
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t lazy protocol witness table accessor for type CAFMediaSourceSemanticType and conformance CAFMediaSourceSemanticType(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OS_dispatch_queue(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  v9 = sub_2559E1334(a1);
  v10 = specialized Array._getCount()(*v1);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = specialized Sequence._copySequenceContents(initializing:)(&v26, (v3 + 8 * v13 + 32), (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v13, v8);
  if (result < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_7:
    result = outlined consume of Set<AnyCancellable>.Iterator._Variant();
    *v7 = v2;
    return result;
  }

LABEL_10:
  v3 = *(v3 + 16);
  v4 = v26;
  v5 = v27;
  v6 = v29;
  v24 = v28;
  v8 = v30;
  if (v26 < 0)
  {
LABEL_14:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_7;
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
    result = OUTLINED_FUNCTION_14_0();
    v18 = v25;
    goto LABEL_22;
  }

  if (v30)
  {
    v17 = v29;
LABEL_20:
    v19 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = *(*(v26 + 48) + ((v17 << 9) | (8 * v19)));
    result = v18;
  }

  else
  {
    while (1)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_44;
      }

      if (v17 >= ((v28 + 64) >> 6))
      {
        break;
      }

      v8 = *(v27 + 8 * v17);
      ++v6;
      if (v8)
      {
        v6 = v17;
        goto LABEL_20;
      }
    }

    v18 = 0;
    v8 = 0;
  }

  v29 = v6;
  v30 = v8;
LABEL_22:
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (v3 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v20 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v23 = *v7 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 >= v20)
    {
      *(v23 + 16) = v3;
      goto LABEL_23;
    }

    *(v23 + 32 + 8 * v3++) = v18;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_41;
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
    result = OUTLINED_FUNCTION_14_0();
    v18 = v25;
LABEL_37:
    if (!v18)
    {
LABEL_41:
      *(v23 + 16) = v3;
      goto LABEL_7;
    }
  }

  if (v8)
  {
LABEL_33:
    v22 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = *(*(v4 + 48) + ((v6 << 9) | (8 * v22)));
    result = v18;
LABEL_34:
    v26 = v4;
    v27 = v5;
    v28 = v24;
    v29 = v6;
    v30 = v8;
    goto LABEL_37;
  }

  while (1)
  {
    v21 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v21 >= ((v24 + 64) >> 6))
    {
      v18 = 0;
      v8 = 0;
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v21);
    ++v6;
    if (v8)
    {
      v6 = v21;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  v3 = specialized Array._getCount()(a1);
  v4 = specialized Array._getCount()(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    __CocoaSet.count.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, Swift::UInt8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo26CAFMediaSourceSemanticTypeVShySo6KVItemCGGMd, &_ss17_NativeDictionaryVySo26CAFMediaSourceSemanticTypeVShySo6KVItemCGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    type metadata accessor for CAFMediaSourceSemanticType();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a1, v19);
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc CAFMedia.mediaSources.getter(void *a1)
{
  v1 = [a1 mediaSources];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaSource, 0x277CF8518);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc CAFMediaItem.mediaItemName.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array._getCount()(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [KVItem] and conformance [A], &_sSaySo6KVItemCGMd, &_sSaySo6KVItemCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6KVItemCGMd, &_sSaySo6KVItemCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  IsNativeType = specialized Array._hoistableIsNativeTypeChecked()(a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, IsNativeType, a3);
  if (IsNativeType)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x259C45C30](a2, a3);
  }

  *a1 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type KVItem and conformance NSObject, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
    result = Set.Iterator.init(_cocoa:)();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(a4 + 32);
    v8 = a4 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a4 + 56);
  }

  v21 = v7;
  if (!a2)
  {
    v15 = 0;
LABEL_28:
    *v21 = v4;
    v21[1] = v8;
    v21[2] = v9;
    v21[3] = v10;
    v21[4] = v11;
    return v15;
  }

  if (!a3)
  {
    v15 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v20 = v9;
    v16 = (v9 + 64) >> 6;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_26;
        }

        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v18 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v18 >= v16)
            {
              v11 = 0;
              goto LABEL_26;
            }

            v11 = *(v8 + 8 * v18);
            ++v10;
            if (v11)
            {
              v10 = v18;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }

LABEL_18:
        v19 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v19)));
        if (!result)
        {
          goto LABEL_26;
        }
      }

      *a2++ = result;
      ++v15;
      if (v17 == a3)
      {
        v15 = a3;
LABEL_26:
        v9 = v20;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned CAFMediaSourceSemanticType, @guaranteed CAFMediaItems) -> (@unowned Bool)(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1)) & 1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned CAFMediaSourceSemanticType, @guaranteed CAFMediaItems) -> (@unowned CAFMediaSourceSemanticType, @owned [KVItem])@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 1));
  *a2 = result;
  *(a2 + 8) = v7;
  return result;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_5_0()
{

  JUMPOUT(0x259C46600);
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_13_0()
{

  Hasher._combine(_:)(1u);
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_beginAccess();
}

BOOL OUTLINED_FUNCTION_16_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_slowAlloc();
}

uint64_t static FrequencyRangeUtils.getMediaSourcesFromMediaSourceObserves(_:)(unint64_t a1)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      v2 = __CocoaSet.count.getter();
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x259C45C30](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        CAFMediaSourceObservable.observed.getter();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v7 = *(v12 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v2 != v4);
      return v12;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (one-time initialization token for Log != -1)
  {
LABEL_19:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, Log);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2559DF000, v9, v10, "#radio: No media sources — not generating items from frequency ranges", v11, 2u);
    MEMORY[0x259C46600](v11, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

unint64_t static FrequencyRangeUtils.createStationGeneratorsFrom(mediaSources:)(unint64_t result)
{
  v1 = result;
  v10 = MEMORY[0x277D84FA0];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84FA0];
  }

  result = __CocoaSet.count.getter();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84FA0];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x259C45C30](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      if ([v4 mediaSourceSemanticType] == 2 || objc_msgSend(v5, sel_mediaSourceSemanticType) == 1 || objc_msgSend(v5, sel_mediaSourceSemanticType) == 8)
      {
        v6 = v5;
        v7 = RadioFrequencyRangeItemGenerator.stationFrequencyStringsFromMediaSource(_:)(v6);
        [v6 mediaSourceSemanticType];
        v8 = RadioFrequencyRangeItemGenerator.kvItemsFromFrequencyStrings(_:mediaSourceSemanticType:)(v7);

        specialized Set._Variant.insert(_:)(&v9, v6, v8);
      }

      else
      {
      }
    }

    return v10;
  }

  return result;
}

uint64_t static FrequencyRangeUtils.concatenateGeneratedFrequencyItems(_:)(uint64_t a1)
{
  v13 = MEMORY[0x277D84F90];
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = specialized Array.append<A>(contentsOf:)(v12))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(a1 + 48) + ((v9 << 10) | (16 * v10)) + 8);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v13;
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for KVItem();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6KVItemC_Tt1g5(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          specialized _NativeSet.resize(capacity:)(v17 + 1);
        }

        v18 = v8;
        specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for KVItem();
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        v19 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v18 = a2;
        specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v13);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(void *a1, void *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v26 = a2;
  [a2 mediaSourceSemanticType];
  CAFMediaSourceSemanticType.stringValue()();
  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      v18 = *v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *v23;
      v20 = v26;

      specialized _NativeSet.insertNew(_:at:isUnique:)(v20, a3, v9, isUniquelyReferenced_nonNull_native);
      *v23 = v28;
      *a1 = v20;
      a1[1] = a3;
      return v10 == 0;
    }

    v11 = *(v5 + 48) + 16 * v9;
    v12 = *(v11 + 8);
    v13 = *v11;

    [v13 mediaSourceSemanticType];
    v14 = CAFMediaSourceSemanticType.stringValue()();
    [v26 mediaSourceSemanticType];
    v15 = CAFMediaSourceSemanticType.stringValue()();
    if (v14._countAndFlagsBits == v15._countAndFlagsBits && v14._object == v15._object)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_11;
    }

    v7 = v9 + 1;
  }

LABEL_11:

  *v27 = *(*(v5 + 48) + 16 * v9);
  *a1 = *v27;
  v21 = v27[0];

  return v10 == 0;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6KVItemC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6KVItemCGMd, "b\b");
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for KVItem();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        specialized _NativeSet.resize(capacity:)(v3 + 1);
      }

      v2 = v15;
      result = NSObject._rawHashValue(seed:)(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6KVItemCGMd, "b\b");
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    result = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 8 * v21) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9KoaMapper32RadioFrequencyRangeItemGeneratorVGMd, &_ss11_SetStorageCy9KoaMapper32RadioFrequencyRangeItemGeneratorVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v27 = *(*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v17 = *(v6 + 40);
    Hasher.init(_seed:)();
    [v27 mediaSourceSemanticType];
    CAFMediaSourceSemanticType.stringValue()();
    String.hash(into:)();

    result = Hasher._finalize()();
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v6 + 48) + 16 * v21) = v27;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v13 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t type metadata accessor for KVItem()
{
  result = lazy cache variable for type metadata for KVItem;
  if (!lazy cache variable for type metadata for KVItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for KVItem);
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for KVItem();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = a2;
  v25 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a4 & 1) == 0)
  {
    if (a4)
    {
      v24 = a2;
      specialized _NativeSet.resize(capacity:)(v7 + 1);
      goto LABEL_8;
    }

    if (v8 <= v7)
    {
      v24 = a2;
      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
LABEL_8:
      v23 = v4;
      v9 = *v4;
      v10 = *(*v4 + 40);
      Hasher.init(_seed:)();
      [v25 mediaSourceSemanticType];
      CAFMediaSourceSemanticType.stringValue()();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = ~(-1 << *(v9 + 32));
      while (1)
      {
        a3 = result & v11;
        if (((*(v9 + 56 + (((result & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v11)) & 1) == 0)
        {
          break;
        }

        v12 = *(v9 + 48) + 16 * a3;
        v13 = *(v12 + 8);
        v4 = *v12;

        [v4 mediaSourceSemanticType];
        v14 = CAFMediaSourceSemanticType.stringValue()();
        [v25 mediaSourceSemanticType];
        v15 = CAFMediaSourceSemanticType.stringValue()();
        if (v14._countAndFlagsBits == v15._countAndFlagsBits && v14._object == v15._object)
        {
          goto LABEL_20;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_21;
        }

        result = a3 + 1;
      }

      v4 = v23;
      v6 = v24;
      goto LABEL_17;
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_17:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v25;
  v19[1] = v6;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_20:

LABEL_21:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_255A00560;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6KVItemCGMd, "b\b");
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9KoaMapper32RadioFrequencyRangeItemGeneratorVGMd, &_ss11_SetStorageCy9KoaMapper32RadioFrequencyRangeItemGeneratorVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        v18 = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6KVItemCGMd, "b\b");
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = NSObject._rawHashValue(seed:)(v16);
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9KoaMapper32RadioFrequencyRangeItemGeneratorVGMd, &_ss11_SetStorageCy9KoaMapper32RadioFrequencyRangeItemGeneratorVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v26 = *(*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v16 = *(v6 + 40);
        Hasher.init(_seed:)();
        v17 = v26;

        [v17 mediaSourceSemanticType];
        CAFMediaSourceSemanticType.stringValue()();
        String.hash(into:)();

        result = Hasher._finalize()();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 16 * v21) = v26;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t RadioFrequencyRangeItemGenerator.description.getter(void *a1, uint64_t a2)
{
  _StringGuts.grow(_:)(48);

  [a1 mediaSourceSemanticType];
  v4 = CAFMediaSourceSemanticType.description.getter();
  MEMORY[0x259C459E0](v4);

  MEMORY[0x259C459E0](0xD000000000000027, 0x8000000255A01860);
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for KVItem();
    lazy protocol witness table accessor for type KVItem and conformance NSObject();
    result = Set.Iterator.init(_cocoa:)();
    a2 = 0x206F6964617223;
    v6 = 0xE700000000000000;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(a2 + 32);
    v6 = a2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a2 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  if (a2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      outlined consume of Set<AnyCancellable>.Iterator._Variant();
      return 0x206F6964617223;
    }

    while (1)
    {
      v23 = 9;
      v19 = [v18 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      MEMORY[0x259C459E0](v20, v22);

      MEMORY[0x259C459E0](9, 0xE100000000000000);

      v8 = v16;
      v9 = v17;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for KVItem();
        swift_dynamicCast();
        v18 = v23;
        v16 = v8;
        v17 = v9;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type KVItem and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type KVItem and conformance NSObject;
  if (!lazy protocol witness table cache variable for type KVItem and conformance NSObject)
  {
    type metadata accessor for KVItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KVItem and conformance NSObject);
  }

  return result;
}

id RadioFrequencyRangeItemGenerator.init(mediaSource:)(void *a1)
{
  v1 = a1;
  v2 = RadioFrequencyRangeItemGenerator.stationFrequencyStringsFromMediaSource(_:)(v1);
  [v1 mediaSourceSemanticType];
  RadioFrequencyRangeItemGenerator.kvItemsFromFrequencyStrings(_:mediaSourceSemanticType:)(v2);

  return v1;
}

uint64_t RadioFrequencyRangeItemGenerator.generatedItems.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

char *RadioFrequencyRangeItemGenerator.stationFrequencyStringsFromMediaSource(_:)(void *a1)
{
  v2 = [a1 currentFrequencyRange];
  v3 = [v2 minimumValue];

  v4 = v3;
  v5 = [a1 currentFrequencyRange];
  v6 = [v5 maximumValue];

  v7 = v6;
  v8 = [a1 currentFrequencyRange];
  v9 = [v8 stepValue];

  v34 = v9;
  v10 = v3 >= v6 || v9 == 0;
  if (v10)
  {
    if (one-time initialization token for Log != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_7;
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 >= v7)
    {
      if ((v4 != v7) | v21 & 1)
      {
        return v22;
      }

      v21 = 1;
      v23 = v7;
    }

    else
    {
      v23 = v4 + v34;
    }

    v24 = [a1 mediaSourceSemanticType];
    if (v24 == 8 || v24 == 2)
    {
      break;
    }

    v35 = v4;
LABEL_26:
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_27:
    v29 = v27;
    v30 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    }

    v32 = *(v22 + 2);
    v31 = *(v22 + 3);
    if (v32 >= v31 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v22);
    }

    *(v22 + 2) = v32 + 1;
    v33 = &v22[16 * v32];
    *(v33 + 4) = v29;
    *(v33 + 5) = v30;
    v4 = v23;
  }

  v26 = OUTLINED_FUNCTION_0_1(v4);
  if (!v10)
  {
    v27 = Float.description.getter();
    goto LABEL_27;
  }

  if (v26 != INFINITY)
  {
    if (v26 <= -9.2234e18)
    {
      goto LABEL_33;
    }

    if (v26 >= 9.2234e18)
    {
      goto LABEL_34;
    }

    v35 = v26;
    goto LABEL_26;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_7:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, Log);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136315906;
    [v12 mediaSourceSemanticType];
    v17 = CAFMediaSourceSemanticType.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v35);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v4;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v7;
    *(v15 + 32) = 2048;
    *(v15 + 34) = v34;
    _os_log_impl(&dword_2559DF000, v13, v14, "#radio: Not a valid range — not generating frequencies for %s\n min: %ld max: %ld step: %ld", v15, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x259C46600](v16, -1, -1);
    MEMORY[0x259C46600](v15, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t RadioFrequencyRangeItemGenerator.kvItemsFromFrequencyStrings(_:mediaSourceSemanticType:)(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  result = MEMORY[0x277D84FA0];
  v30 = MEMORY[0x277D84FA0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    while (1)
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = objc_allocWithZone(MEMORY[0x277D22D28]);

      v8 = [v7 init];
      Hasher.init()();
      CAFMediaSourceSemanticType.stringValue()();
      String.hash(into:)();

      String.hash(into:)();
      memcpy(__dst, __src, sizeof(__dst));
      Hasher.finalize()();
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = MEMORY[0x259C459A0](v9);

      __src[0] = 0;
      v11 = [v8 setItemType:9 itemId:v10 error:__src];

      if (!v11)
      {
        v22 = __src[0];

        v23 = _convertNSErrorToError(_:)();

        goto LABEL_13;
      }

      v12 = __src[0];

      v13 = CAFMediaSourceSemanticType.stringValue()();
      __src[0] = 0;
      v14 = outlined bridged method (mnbnnn) of @objc KVItemBuilder.addField(type:value:)(355, v13._countAndFlagsBits, v13._object, __src, v8);
      v15 = __src[0];
      if (!v14)
      {
        break;
      }

      __src[0] = 0;
      v16 = outlined bridged method (mnbnnn) of @objc KVItemBuilder.addField(type:value:)(353, v6, v5, __src, v8);
      v17 = __src[0];
      if (!v16)
      {
        v27 = v17;
        goto LABEL_12;
      }

      __src[0] = 0;
      v18 = [v8 buildItemWithError_];
      if (!v18)
      {
        v27 = __src[0];
LABEL_12:
        v23 = _convertNSErrorToError(_:)();

LABEL_13:
        swift_willThrow();

        v26 = v23;
LABEL_14:

        goto LABEL_15;
      }

      v19 = v18;
      v20 = __src[0];
      v21 = v19;
      specialized Set._Variant.insert(_:)(__src, v21);

LABEL_15:
      v4 += 2;
      if (!--v3)
      {
        result = v30;
        goto LABEL_17;
      }
    }

    v24 = v15;

    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = v25;
    goto LABEL_14;
  }

LABEL_17:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void RadioFrequencyRangeItemGenerator.speakableFrequencyString(_:semanticType:)(uint64_t a1, char a2)
{
  v2 = a2 == 8 || a2 == 2;
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = OUTLINED_FUNCTION_0_1(a1);
  if (v2)
  {
    if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v3 > -9.2234e18)
    {
      if (v3 < 9.2234e18)
      {
LABEL_11:
        dispatch thunk of CustomStringConvertible.description.getter();
        return;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  Float.description.getter();
}

uint64_t RadioFrequencyRangeItemGenerator.itemIDFrom(semanticType:frequency:)()
{
  Hasher.init()();
  CAFMediaSourceSemanticType.stringValue()();
  String.hash(into:)();

  String.hash(into:)();
  Hasher.finalize()();
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t RadioFrequencyRangeItemGenerator.hash(into:)(int a1, id a2)
{
  [a2 mediaSourceSemanticType];
  CAFMediaSourceSemanticType.stringValue()();
  String.hash(into:)();
}

uint64_t static RadioFrequencyRangeItemGenerator.== infix(_:_:)(void *a1, uint64_t a2, void *a3)
{
  [a1 mediaSourceSemanticType];
  v4 = CAFMediaSourceSemanticType.stringValue()();
  [a3 mediaSourceSemanticType];
  v5 = CAFMediaSourceSemanticType.stringValue()();
  if (v4._countAndFlagsBits == v5._countAndFlagsBits && v4._object == v5._object)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

Swift::Int RadioFrequencyRangeItemGenerator.hashValue.getter(void *a1)
{
  Hasher.init(_seed:)();
  [a1 mediaSourceSemanticType];
  CAFMediaSourceSemanticType.stringValue()();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RadioFrequencyRangeItemGenerator()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RadioFrequencyRangeItemGenerator.hash(into:)(&v3, v1);
  return Hasher._finalize()();
}

id outlined bridged method (mnbnnn) of @objc KVItemBuilder.addField(type:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = MEMORY[0x259C459A0](a2, a3);

  v9 = [a5 addFieldWithType:a1 value:v8 error:a4];

  return v9;
}

unint64_t lazy protocol witness table accessor for type RadioFrequencyRangeItemGenerator and conformance RadioFrequencyRangeItemGenerator()
{
  result = lazy protocol witness table cache variable for type RadioFrequencyRangeItemGenerator and conformance RadioFrequencyRangeItemGenerator;
  if (!lazy protocol witness table cache variable for type RadioFrequencyRangeItemGenerator and conformance RadioFrequencyRangeItemGenerator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadioFrequencyRangeItemGenerator and conformance RadioFrequencyRangeItemGenerator);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RadioFrequencyRangeItemGenerator(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for RadioFrequencyRangeItemGenerator(uint64_t result, int a2, int a3)
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

Swift::Int ProviderError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C45D60](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ProviderError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ProviderError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t KMFindMySyncDevicesProvider.getSyncDevices()()
{
  v1 = v0;
  v70 = type metadata accessor for DispatchTimeInterval();
  v2 = OUTLINED_FUNCTION_0(v70);
  v64 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13();
  v61 = (v7 - v6);
  v66 = type metadata accessor for DispatchTime();
  v8 = OUTLINED_FUNCTION_0(v66);
  v63 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v59 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = v53 - v14;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v16 = OUTLINED_FUNCTION_0(v15);
  v58 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_13();
  v22 = v21 - v20;
  v23 = type metadata accessor for DispatchQoS();
  v24 = OUTLINED_FUNCTION_0(v23);
  v56 = v25;
  v57 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13();
  v30 = v29 - v28;
  v31 = dispatch_semaphore_create(0);
  v32 = swift_allocObject();
  *(v32 + 16) = MEMORY[0x277D84F90];
  v53[0] = v32 + 16;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = *&v0[OBJC_IVAR____TtC9KoaMapper27KMFindMySyncDevicesProvider_syncDeviceProvider];
  dispatch thunk of CachingSyncDeviceProvider.evictCache()();
  v35 = swift_allocObject();
  *(v35 + 16) = 3;
  v54 = (v35 + 16);
  v55 = *&v1[OBJC_IVAR____TtC9KoaMapper27KMFindMySyncDevicesProvider_queue];
  v36 = swift_allocObject();
  v36[2] = v1;
  v36[3] = v35;
  v36[4] = v33;
  v36[5] = v32;
  v36[6] = v31;
  aBlock[4] = partial apply for closure #1 in KMFindMySyncDevicesProvider.getSyncDevices();
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v37 = _Block_copy(aBlock);
  v38 = v1;
  v62 = v35;

  v65 = v33;

  v67 = v32;

  v39 = v31;
  static DispatchQoS.unspecified.getter();
  v68 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x259C45AE0](0, v30, v22, v37);
  v40 = v39;
  _Block_release(v37);
  (*(v58 + 8))(v22, v15);
  (*(v56 + 8))(v30, v57);

  v41 = v59;
  static DispatchTime.now()();
  v42 = v61;
  *v61 = 10;
  v43 = v64;
  v44 = v70;
  (*(v64 + 104))(v42, *MEMORY[0x277D85188], v70);
  v45 = v60;
  MEMORY[0x259C45960](v41, v42);
  (*(v43 + 8))(v42, v44);
  v46 = *(v63 + 8);
  v47 = v41;
  v48 = v66;
  v46(v47, v66);
  LOBYTE(v44) = MEMORY[0x259C45B00](v45);
  v46(v45, v48);
  if (v44)
  {
    v49 = 1;
LABEL_5:
    lazy protocol witness table accessor for type ProviderError and conformance ProviderError();
    swift_allocError();
    *v51 = v49;
    swift_willThrow();

    return v49;
  }

  v50 = v54;
  swift_beginAccess();
  v49 = *v50;
  if (v49 != 3)
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  v49 = *(v67 + 16);

  return v49;
}

uint64_t closure #1 in KMFindMySyncDevicesProvider.getSyncDevices()(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *&a1[OBJC_IVAR____TtC9KoaMapper27KMFindMySyncDevicesProvider_syncDeviceProvider];
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a1;
  v11[5] = a4;
  v11[6] = a5;

  v12 = a1;

  v13 = a5;
  dispatch thunk of CachingSyncDeviceProvider.syncDevices(_:)();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type ProviderError and conformance ProviderError()
{
  result = lazy protocol witness table cache variable for type ProviderError and conformance ProviderError;
  if (!lazy protocol witness table cache variable for type ProviderError and conformance ProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProviderError and conformance ProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProviderError and conformance ProviderError;
  if (!lazy protocol witness table cache variable for type ProviderError and conformance ProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProviderError and conformance ProviderError);
  }

  return result;
}

uint64_t closure #1 in closure #1 in KMFindMySyncDevicesProvider.getSyncDevices()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v41 = a4;
  v42 = a3;
  v8 = type metadata accessor for SyncDevice();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SFMSyncDeviceData();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10SiriFindMy17SFMSyncDeviceDataVs5Error_pGMd, &_ss6ResultOy10SiriFindMy17SFMSyncDeviceDataVs5Error_pGMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - v20;
  outlined init with copy of Result<SFMSyncDeviceData, Error>(a1, &v32 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of Result<SFMSyncDeviceData, Error>(v21);
    swift_beginAccess();
    *(a2 + 16) = 2;
    return OS_dispatch_semaphore.signal()();
  }

  (*(v14 + 32))(v17, v21, v13);
  v22 = SFMSyncDeviceData.syncDevices.getter();
  v23 = *(v22 + 16);
  if (!v23)
  {

    (*(v14 + 8))(v17, v13);
    v29 = MEMORY[0x277D84F90];
LABEL_10:
    v30 = v36;
    swift_beginAccess();
    v31 = *(v30 + 16);
    *(v30 + 16) = v29;

    return OS_dispatch_semaphore.signal()();
  }

  v33 = v17;
  v34 = v14;
  v35 = v13;
  v32 = a2;
  v43 = MEMORY[0x277D84F90];
  v38 = v23;
  specialized ContiguousArray.reserveCapacity(_:)();
  v39 = v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v40 = v22;
  v24 = v42;
  result = swift_beginAccess();
  v26 = 0;
  while (v26 < *(v40 + 16))
  {
    result = (*(v9 + 16))(v12, v39 + *(v9 + 72) * v26, v8);
    v27 = *(v24 + 16);
    if (v27 == -1)
    {
      goto LABEL_13;
    }

    *(v24 + 16) = v27 + 1;
    KMFindMySyncDevicesProvider.itemFrom(syncDevice:itemCount:)();
    ++v26;
    (*(v9 + 8))(v12, v8);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v28 = *(v43 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v24 = v42;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v38 == v26)
    {
      (*(v34 + 8))(v33, v35);

      v29 = v43;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id KMFindMySyncDevicesProvider.itemFrom(syncDevice:itemCount:)()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC9KoaMapper27KMFindMySyncDevicesProvider_itemBuilder);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v3 = MEMORY[0x259C459A0](v2);

  v26[0] = 0;
  v4 = [v1 setItemType:21 itemId:v3 error:v26];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v26[0];

  v6 = SyncDevice.name.getter();
  v26[0] = 0;
  v8 = outlined bridged method (mnbnnn) of @objc KVItemBuilder.addField(type:value:)(950, v6, v7, v26, v1);
  v9 = v26[0];
  if (!v8)
  {
    v13 = v9;
    goto LABEL_7;
  }

  v10 = SyncDevice.ownerFirstName.getter();
  if (v11)
  {
    v12 = MEMORY[0x259C459A0](v10);
  }

  else
  {
    v12 = 0;
  }

  v26[0] = 0;
  v14 = [v1 addFieldWithType:951 value:v12 error:v26];

  v13 = v26[0];
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v26[0];

  v16 = SyncDevice.ownerLastName.getter();
  if (v17)
  {
    v18 = MEMORY[0x259C459A0](v16);
  }

  else
  {
    v18 = 0;
  }

  v26[0] = 0;
  v19 = [v1 addFieldWithType:952 value:v18 error:v26];

  v13 = v26[0];
  if (!v19)
  {
LABEL_16:
    v23 = v13;
    _convertNSErrorToError(_:)();

    goto LABEL_17;
  }

  v20 = v26[0];

  v26[0] = 0;
  v21 = [v1 buildItemWithError_];
  if (!v21)
  {
LABEL_5:
    v13 = v26[0];
LABEL_7:
    _convertNSErrorToError(_:)();

LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  v13 = v21;
  v22 = v26[0];
LABEL_18:
  v24 = *MEMORY[0x277D85DE8];
  return v13;
}

id KMFindMySyncDevicesProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KMFindMySyncDevicesProvider.init()()
{
  v1 = v0;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = OUTLINED_FUNCTION_0(v18);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13();
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_13();
  v17 = OBJC_IVAR____TtC9KoaMapper27KMFindMySyncDevicesProvider_queue;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v9, *MEMORY[0x277D85260], v18);
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = OBJC_IVAR____TtC9KoaMapper27KMFindMySyncDevicesProvider_syncDeviceProvider;
  type metadata accessor for CachingSyncDeviceProvider();
  *&v0[v14] = CachingSyncDeviceProvider.__allocating_init()();
  v15 = OBJC_IVAR____TtC9KoaMapper27KMFindMySyncDevicesProvider_itemBuilder;
  *&v1[v15] = [objc_allocWithZone(MEMORY[0x277D22D28]) init];
  v19.receiver = v1;
  v19.super_class = type metadata accessor for KMFindMySyncDevicesProvider();
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id KMFindMySyncDevicesProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KMFindMySyncDevicesProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ProviderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined init with copy of Result<SFMSyncDeviceData, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10SiriFindMy17SFMSyncDeviceDataVs5Error_pGMd, &_ss6ResultOy10SiriFindMy17SFMSyncDeviceDataVs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<SFMSyncDeviceData, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10SiriFindMy17SFMSyncDeviceDataVs5Error_pGMd, &_ss6ResultOy10SiriFindMy17SFMSyncDeviceDataVs5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, Log);
}

uint64_t one-time initialization function for kmLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.kmLog = result;
  return result;
}

uint64_t *OS_os_log.kmLog.unsafeMutableAddressor()
{
  if (one-time initialization token for kmLog != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  return &static OS_os_log.kmLog;
}

id static OS_os_log.kmLog.getter()
{
  if (one-time initialization token for kmLog != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = static OS_os_log.kmLog;

  return v1;
}

uint64_t one-time initialization function for Log()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, Log);
  __swift_project_value_buffer(v0, Log);
  if (one-time initialization token for kmLog != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = static OS_os_log.kmLog;
  return Logger.init(_:)();
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

id ___getCustomVocabularyMap_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D470E0];
  v4 = a3;
  v5 = [v3 aceObjectArrayWithDictionaryArray:v4 baseClass:objc_opt_class()];

  return v5;
}

void KMLogInit()
{
  if (KMLogInit_onceToken != -1)
  {
    dispatch_once(&KMLogInit_onceToken, &__block_literal_global_116);
  }
}

uint64_t __KMLogInit_block_invoke()
{
  KMLogContextCore = os_log_create("com.apple.siri.vocabulary", "KoaMapper");

  return MEMORY[0x2821F96F8]();
}

id _sharedQueue()
{
  if (_sharedQueue_onceToken != -1)
  {
    dispatch_once(&_sharedQueue_onceToken, &__block_literal_global_153);
  }

  v1 = _sharedQueue_sharedQueue;

  return v1;
}

void ___sharedQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("KMProviderHistoryLog", v2);
  v1 = _sharedQueue_sharedQueue;
  _sharedQueue_sharedQueue = v0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2559F02A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__221(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2559F14F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__432(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _isDefaultLabel(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [@"_$!<" length];
  if (v2 >= [@">!$_" length] + v3 && objc_msgSend(v1, "hasPrefix:", @"_$!<"))
  {
    v4 = [v1 hasSuffix:@">!$_"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void KMMapperSetBuilderError(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277CCA7E8];
  v9[0] = *MEMORY[0x277CCA068];
  v9[1] = v3;
  v10[0] = @"Encountered error building item";
  v10[1] = a2;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v2 errorWithDomain:@"com.apple.siri.koa.mapper" code:6 userInfo:v6];

  KVSetError();
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2559F4024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a20, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__857(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2559F63E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHMMutableHomeManagerConfigurationClass_block_invoke(uint64_t a1)
{
  HomeKitLibrary();
  result = objc_getClass("HMMutableHomeManagerConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHMMutableHomeManagerConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __getHMHomeManagerClass_block_invoke(v3);
  }

  return result;
}

void __getHMHomeManagerClass_block_invoke(uint64_t a1)
{
  HomeKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HMHomeManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHMHomeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    HomeKitLibrary();
  }
}

void HomeKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __HomeKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279805C18;
    v4 = 0;
    HomeKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (HomeKitLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __HomeKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HomeKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2559F8460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1422(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2559FB700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1714(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2559FD1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1917(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}