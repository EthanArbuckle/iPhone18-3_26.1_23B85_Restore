uint64_t Registry_Impl.getActivePairedDeviceIncludingAltAccount()(uint64_t a1)
{
  v2 = [v1 getDevicesExcluding_];
  type metadata accessor for PDRDevice();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

  if (v3 < 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2318DF310](v7);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2318DF260](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t specialized Registry_Impl.getDevicesExcluding(_:)(char a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v7 = static RegistryCrux.instance;
  v8 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v9 = *(static RegistryCrux.instance + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v9 + 4);

  v11 = *(v7 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
  v10 = *(v7 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);
  v40 = *(v7 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
  v41 = v10;
  v12 = *(v7 + v8);
  v43 = v10;

  v13 = v11;
  os_unfair_lock_unlock(v12 + 4);

  v14 = v13;
  v15 = [v14 allPairingIDs];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = MEMORY[0x277D84F90];
  v17 = *(v16 + 16);
  if (v17)
  {
    v42 = v14;
    v18 = v3 + 16;
    v38 = *(v3 + 16);
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v35 = v16;
    v20 = v16 + v19;
    v21 = (v18 - 8);
    v39 = v18;
    v22 = *(v18 + 56);
    v36 = MEMORY[0x277D84F90];
    v37 = v22;
    do
    {
      v23 = v38;
      v38(v6, v20, v2);
      v24 = type metadata accessor for Device_Impl();
      v25 = objc_allocWithZone(v24);
      v23(&v25[OBJC_IVAR___PDRDevice_Impl_uuid_], v6, v2);
      v26 = &v25[OBJC_IVAR___PDRDevice_Impl_registryState];
      v27 = v41;
      v28 = v42;
      *v26 = v42;
      *(v26 + 1) = v27;
      *(v26 + 2) = v40;
      v44.receiver = v25;
      v44.super_class = v24;
      v29 = v28;
      v30 = v43;
      v31 = objc_msgSendSuper2(&v44, sel_init, v35);
      (*v21)(v6, v2);
      if ((a1 & 1) != 0 && ([v31 isPaired] & 1) == 0 || (a1 & 2) != 0 && objc_msgSend(v31, sel_isArchived) || (a1 & 4) != 0 && (objc_msgSend(v31, sel_isActive) & 1) == 0 || (a1 & 8) != 0 && objc_msgSend(v31, sel_isActive) || (a1 & 0x10) != 0 && (objc_msgSend(v31, sel_isSetup) & 1) == 0 || (a1 & 0x20) != 0 && objc_msgSend(v31, sel_isAltAccount))
      {
      }

      else
      {
        v32 = v31;
        MEMORY[0x2318DF0D0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v36 = v45;
      }

      v20 += v37;
      --v17;
    }

    while (v17);

    v14 = v42;
    v33 = v36;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  return v33;
}

unint64_t type metadata accessor for PDRDevice()
{
  result = lazy cache variable for type metadata for PDRDevice;
  if (!lazy cache variable for type metadata for PDRDevice)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PDRDevice);
  }

  return result;
}

id implementationClass()
{
  if (implementationClass_onceToken != -1)
  {
    implementationClass_cold_1();
  }

  v1 = implementationClass_result;

  return v1;
}

uint64_t __implementationClass_block_invoke()
{
  v0 = +[PDRRegistry_Impl supportsWatch];
  v1 = &off_2787A78D8;
  if (v0)
  {
    v1 = off_2787A78D0;
  }

  v2 = *v1;
  result = objc_opt_class();
  implementationClass_result = result;
  return result;
}

uint64_t one-time initialization function for supportWatch()
{
  v0 = objc_opt_self();
  result = [v0 isUIBuild];
  if (result)
  {
    if (one-time initialization token for demoModeEnabled != -1)
    {
      swift_once();
    }

    if ((static RegistryCrux.demoModeEnabled & 1) == 0)
    {
      result = [v0 deviceClassString];
      if (!result)
      {
        goto LABEL_14;
      }

      v2 = result;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      if (v3 == 0x6863746157 && v5 == 0xE500000000000000)
      {

        result = 1;
        goto LABEL_14;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        result = [v0 amCompanion];
        goto LABEL_14;
      }
    }

    result = 1;
  }

LABEL_14:
  static RegistryCrux.supportWatch = result;
  return result;
}

BOOL one-time initialization function for demoModeEnabled()
{
  result = closure #1 in variable initialization expression of static RegistryCrux.demoModeEnabled();
  static RegistryCrux.demoModeEnabled = result;
  return result;
}

BOOL closure #1 in variable initialization expression of static RegistryCrux.demoModeEnabled()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x2318DF040](0xD000000000000033, 0x800000022DFB0230);
  v1 = [v0 UTF8String];
  v2 = v0;
  v3 = strdup(v1);
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  LODWORD(v14[0]) = -1;
  v5 = notify_register_check(v3, v14);
  v6 = v14[0];
  v7 = v14[0] & ~(SLODWORD(v14[0]) >> 31);
  if (!v5)
  {
    v14[0] = 0;
    if (v6 < 0)
    {
      v11 = 0;
      goto LABEL_19;
    }

    if (notify_is_valid_token(v7))
    {
      notify_get_state(v7, v14);
      v11 = v14[0] != 0;
    }

    else
    {
      v11 = 0;
    }

LABEL_18:
    notify_cancel(v7);
    goto LABEL_19;
  }

  v8 = specialized static InternalPreferences.BOOLean(key:domain:)(0x6D654465726F7453, 0xED000065646F4D6FLL, 0xD000000000000017, 0x800000022DFB0270);
  if (v8 == 2 || (v8 & 1) == 0)
  {
    v11 = 0;
    if (v6 < 0)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  v9 = specialized static InternalPreferences.integer(key:domain:)(0x6D6172676F725046, 0xEE007265626D754ELL, 0xD000000000000017, 0x800000022DFB0270) == 5;
  v11 = (v10 & 1) == 0 && v9;
  if ((v6 & 0x80000000) == 0)
  {
LABEL_11:
    if (notify_is_valid_token(v7))
    {
      notify_set_state(v7, v11);
      notify_post(v4);
    }

    goto LABEL_18;
  }

LABEL_19:
  free(v4);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

id one-time initialization function for sharedInstance_()
{
  v0 = [objc_allocWithZone(type metadata accessor for Registry_Impl()) init];
  v0[OBJC_IVAR___PDRRegistry_Impl_amSingleton] = 1;
  result = [v0 start];
  static Registry_Impl.sharedInstance_ = v0;
  return result;
}

{
  v0 = [objc_allocWithZone(type metadata accessor for Registry_Stub()) init];
  v0[OBJC_IVAR___PDRRegistry_Stub_amSingleton] = 1;
  result = [v0 start];
  static Registry_Stub.sharedInstance_ = v0;
  return result;
}

id Registry_Impl.init()()
{
  v1 = OBJC_IVAR___PDRRegistry_Impl_unfairLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR___PDRRegistry_Impl_delegates;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionCySo19PDRRegistryDelegate_pGMd, _s20PairedDeviceRegistry14WeakCollectionCySo19PDRRegistryDelegate_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 24) = v5;
  *&v0[v3] = v4;
  *&v0[OBJC_IVAR___PDRRegistry_Impl_lastCompatibilityState] = 0;
  v0[OBJC_IVAR___PDRRegistry_Impl_started_] = 0;
  *&v0[OBJC_IVAR___PDRRegistry_Impl_status_] = 0;
  v0[OBJC_IVAR___PDRRegistry_Impl_amSingleton] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for Registry_Impl();
  return objc_msgSendSuper2(&v7, sel_init);
}

void type metadata accessor for PDRRegistryStatus(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

Swift::Void __swiftcall Registry_Impl.start()()
{
  v1 = OBJC_IVAR___PDRRegistry_Impl_started_;
  if (*(v0 + OBJC_IVAR___PDRRegistry_Impl_started_))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = v0;
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v3 = static RegistryCrux.instance;
    v4 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
    v5 = *(static RegistryCrux.instance + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

    os_unfair_lock_lock(v5 + 4);

    v6 = *(v3 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registries_);

    specialized WeakCollection.append(_:)();

    v7 = *(v3 + v4);

    os_unfair_lock_unlock(v7 + 4);

    *(v2 + v1) = 1;
    if ((*(v2 + OBJC_IVAR___PDRRegistry_Impl_amSingleton) & 1) == 0)
    {
      v8 = static RegistryCrux.instance;
      v9 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
      v10 = *(static RegistryCrux.instance + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

      os_unfair_lock_lock(v10 + 4);

      v12 = *(v8 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
      v11 = *(v8 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);
      v13 = *(v8 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
      v14 = *(v8 + v9);
      v15 = v11;

      v16 = v12;
      os_unfair_lock_unlock(v14 + 4);

      Registry_Impl.bootstrapNotify(_:)(v16, v11, v13);
    }
  }
}

char *one-time initialization function for instance()
{
  v0 = type metadata accessor for RegistryCrux(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = RegistryCrux.().init()();
  static RegistryCrux.instance = result;
  return result;
}

uint64_t type metadata accessor for RegistryCrux(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RegistryCrux()
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(319);
  if (v1 <= 0x3F)
  {
    v4 = *(refreshed - 8) + 64;
    type metadata accessor for RegistryState.LoggingInfo?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata completion function for RegistryCrux.RefreshTimings()
{
  result = type metadata accessor for ContinuousClock.Instant();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for RegistryState.LoggingInfo?()
{
  if (!lazy cache variable for type metadata for RegistryState.LoggingInfo?)
  {
    type metadata accessor for RegistryState.LoggingInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RegistryState.LoggingInfo?);
    }
  }
}

uint64_t type metadata accessor for RegistryState.LoggingInfo()
{
  result = type metadata singleton initialization cache for RegistryState.LoggingInfo;
  if (!type metadata singleton initialization cache for RegistryState.LoggingInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RegistryState.LoggingInfo()
{
  result = type metadata accessor for ContinuousClock.Instant();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *RegistryCrux.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[1] = type metadata accessor for NRMutableDeviceCollection(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v6);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
  static ContinuousClock.now.getter();
  v12 = *(type metadata accessor for RegistryCrux.RefreshTimings(0) + 20);
  *(v11 + v12) = specialized RandomNumberGenerator.next<A>(upperBound:)(61440) + 4096;
  v13 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_lastLoggedInfo;
  v14 = type metadata accessor for RegistryState.LoggingInfo();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v1 + v15) = v16;
  v17 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registries_;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionCySo11PDRRegistryCGMd, &_s20PairedDeviceRegistry14WeakCollectionCySo11PDRRegistryCGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x277D84F90];
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v1 + v17) = v18;
  *(v18 + 24) = v19;
  *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_warnedAboutEntitlement_) = 0;
  *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_) = 0;
  v20 = v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionSleeper_;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 1;
  v21 = (v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_serviceShadow_);
  *v21 = 0u;
  v21[1] = 0u;
  *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___hasInternalDiagnostics) = 2;
  v22 = v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___minElapsedToFireMs;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___maxElapsedToFireMs;
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___tailspinsEnabled) = 2;
  v24 = [objc_allocWithZone(MEMORY[0x277D2BCE8]) init];
  v25 = v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_;
  *v25 = v24;
  *(v25 + 8) = xmmword_22DFAE870;
  type metadata accessor for NotifyState();
  v26 = swift_allocObject();
  *(v26 + 40) = 0;
  *(v26 + 44) = 1;
  *(v26 + 24) = closure #1 in default argument 1 of NotifyState.init(name:_:);
  *(v26 + 32) = 0;
  v27 = MEMORY[0x2318DF040](0, 0xE000000000000000);
  v28 = [v27 UTF8String];
  v29 = v27;
  result = strdup(v28);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v26 + 16) = result;
  *(v1 + 16) = v26;
  v31 = swift_allocObject();
  *(v31 + 40) = 0;
  *(v31 + 44) = 1;

  v32 = MEMORY[0x2318DF040](0xD00000000000003FLL, 0x800000022DFB01F0);
  v33 = [v32 UTF8String];
  v34 = v32;
  result = strdup(v33);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v31 + 16) = result;
  *(v31 + 24) = partial apply for closure #1 in RegistryCrux.().init();
  *(v31 + 32) = v1;
  v35 = *(v1 + 16);
  *(v1 + 16) = v31;

  NotifyState.registerDispatch(bootstrap:)(0);

  v36 = *(v1 + 24);
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for closure #2 in RegistryCrux.().init();
  *(v37 + 24) = v1;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_166;
  v38 = _Block_copy(aBlock);

  dispatch_sync(v36, v38);
  _Block_release(v38);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (one-time initialization token for framework != -1)
  {
LABEL_9:
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logs.framework);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_22DF91000, v40, v41, "RegistryCrux fully initialized and synced", v42, 2u);
    MEMORY[0x2318DFC30](v42, -1, -1);
  }

  return v1;
}

uint64_t NotifyState.__deallocating_deinit()
{
  free(*(v0 + 16));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 45, 7);
}

uint64_t type metadata accessor for NRMutableDeviceCollection(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

BOOL NotifyState.registerDispatch(bootstrap:)(char a1)
{
  v2 = v1;
  v18 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = -1;
  v9 = *(v1 + 16);
  type metadata accessor for OS_dispatch_queue();
  (*(v5 + 104))(v8, *MEMORY[0x277D851C8], v4);
  v10 = static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v8, v4);
  aBlock[4] = partial apply for closure #1 in NotifyState.registerDispatch(bootstrap:);
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  v12 = notify_register_dispatch(v9, &out_token, v10, v11);
  _Block_release(v11);

  if ((out_token & 0x80000000) == 0)
  {
    *(v2 + 40) = out_token;
    *(v2 + 44) = 0;
  }

  result = v12 != 0;
  if (!v12 && (a1 & 1) != 0)
  {
    v14 = *(v2 + 32);
    (*(v2 + 24))(v2);
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF94854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for ContinuousClock.Instant();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t one-time initialization function for framework()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logs.framework);
  __swift_project_value_buffer(v0, static Logs.framework);
  return Logger.init(subsystem:category:)();
}

uint64_t partial apply for thunk for @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 40);
  return (*(a1 + 32))();
}

{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t outlined init with copy of RegistryCrux.RefreshTimings(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of RegistryCrux.RefreshTimings(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized WeakCollection.sweep(action:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (*(v4 + 16))
  {
    v5 = 0;
    do
    {
      outlined init with copy of RegistryState.LoggingInfo?(v4 + 8 * v5 + 32, v13, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of UUID?(v13, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
      if (Strong)
      {
        v11 = Strong;
        MEMORY[0x2318DF0D0]();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v5;
      }

      else
      {
        swift_beginAccess();
        v7 = *(a1 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 16) = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          *(a1 + 16) = v7;
        }

        v9 = v7[2];
        if (v5 >= v9)
        {
          __break(1u);
          return;
        }

        v10 = v9 - 1;
        outlined destroy of UUID?(&v7[v5 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
        swift_arrayInitWithTakeFrontToBack();
        v7[2] = v10;
        *(a1 + 16) = v7;
        swift_endAccess();
      }

      v4 = *(a1 + 16);
    }

    while (v5 < *(v4 + 16));
  }
}

uint64_t specialized WeakCollection.append(_:)()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v2 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v0 + 16) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  v2[2] = v5 + 1;
  outlined init with take of WeakCollection<PDRRegistry>.Weak(v8, &v2[v5 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
  *(v0 + 16) = v2;
  swift_endAccess();
  v6 = *(v0 + 24);

  os_unfair_lock_unlock(v6 + 4);
}

{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v2 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v0 + 16) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  v2[2] = v5 + 1;
  outlined init with take of WeakCollection<PDRRegistry>.Weak(v8, &v2[v5 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
  *(v0 + 16) = v2;
  swift_endAccess();
  v6 = *(v0 + 24);

  os_unfair_lock_unlock(v6 + 4);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20PairedDeviceRegistry14WeakCollectionC0G0VySo11PDRRegistryC_GGMd, &_ss23_ContiguousArrayStorageCy20PairedDeviceRegistry14WeakCollectionC0G0VySo11PDRRegistryC_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20PairedDeviceRegistry14WeakCollectionC0G0VySo19PDRRegistryDelegate_p_GGMd, &_ss23_ContiguousArrayStorageCy20PairedDeviceRegistry14WeakCollectionC0G0VySo19PDRRegistryDelegate_p_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t type metadata instantiation function for WeakCollection.Weak()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t outlined init with take of WeakCollection<PDRRegistry>.Weak(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t Registry_Impl.bootstrapNotify(_:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v34);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___PDRRegistry_Impl_unfairLock;
  v15 = *&v3[OBJC_IVAR___PDRRegistry_Impl_unfairLock];

  os_unfair_lock_lock(v15 + 4);

  v16 = *&v3[OBJC_IVAR___PDRRegistry_Impl_delegates];
  v17 = *(v16 + 24);

  os_unfair_lock_lock(v17 + 4);

  aBlock[0] = MEMORY[0x277D84F90];
  specialized WeakCollection.sweep(action:)(v16, aBlock);
  v18 = aBlock[0];
  v19 = *(v16 + 24);

  os_unfair_lock_unlock(v19 + 4);

  v20 = *&v4[v14];

  os_unfair_lock_unlock(v20 + 4);

  v21 = [v4 callbackQueue];
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v4;
  v23 = v31;
  v24 = v32;
  v22[4] = v31;
  v22[5] = v24;
  v22[6] = v33;
  aBlock[4] = partial apply for closure #1 in Registry_Impl.bootstrapNotify(_:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_40;
  v25 = _Block_copy(aBlock);
  v26 = v24;
  v27 = v4;
  v28 = v23;
  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2318DF1C0](0, v13, v9, v25);
  _Block_release(v25);

  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v34);
}

uint64_t sub_22DF95770()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t specialized WeakCollection.sweep(action:)(uint64_t a1, void *a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (*(v5 + 16))
  {
    v6 = 0;
    do
    {
      outlined init with copy of RegistryState.LoggingInfo?(v5 + 8 * v6 + 32, v13, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of UUID?(v13, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
      if (Strong)
      {
        v11 = swift_unknownObjectRetain();
        MEMORY[0x2318DF0D0](v11);
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = swift_unknownObjectRelease();
        ++v6;
      }

      else
      {
        swift_beginAccess();
        v8 = *(a1 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 16) = v8;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          v8 = result;
          *(a1 + 16) = result;
        }

        v9 = v8[2];
        if (v6 >= v9)
        {
          __break(1u);
          return result;
        }

        v10 = v9 - 1;
        outlined destroy of UUID?(&v8[v6 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
        swift_arrayInitWithTakeFrontToBack();
        v8[2] = v10;
        *(a1 + 16) = v8;
        result = swift_endAccess();
      }

      v5 = *(a1 + 16);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t outlined init with copy of RegistryState.LoggingInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t closure #1 in Registry_Impl.bootstrapNotify(_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v50 = a4;
  v51 = a5;
  v54 = a2;
  v55 = a3;
  v6 = type metadata accessor for UUID();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v53 = &v41 - v11;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    do
    {
      v13 = 0;
      v14 = a1 & 0xC000000000000001;
      v45 = a1 + 32;
      v46 = a1 & 0xFFFFFFFFFFFFFF8;
      v52 = v44 + 16;
      v15 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
      v16 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
      v17 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
      v57 = (v44 + 8);
      v56 = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v42 = v12;
      v43 = a1;
      v41 = a1 & 0xC000000000000001;
      while (v14)
      {
        v18 = MEMORY[0x2318DF260](v13, a1);
        v19 = __OFADD__(v13++, 1);
        if (v19)
        {
          goto LABEL_23;
        }

LABEL_11:
        if ([v18 v16[47]])
        {
          [v18 v15[46]];
          result = swift_unknownObjectRelease();
          if (v13 == v12)
          {
            return result;
          }
        }

        else
        {
          v59 = v18;
          v20 = [v55 allPairingIDs];
          v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v22 = *(v21 + 16);
          if (v22)
          {
            v47 = v21;
            v48 = v13;
            v23 = v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
            v58 = *(v44 + 72);
            v24 = *(v44 + 16);
            v25 = v53;
            v24(v53, v23, v6);
            while (1)
            {
              v39 = v59;
              if ([v59 v16[47]])
              {
                v26 = v16;
                v27 = v49;
                v24(v49, v25, v6);
                v28 = type metadata accessor for Device_Impl();
                v29 = objc_allocWithZone(v28);
                v24(&v29[OBJC_IVAR___PDRDevice_Impl_uuid_], v27, v6);
                v30 = &v29[OBJC_IVAR___PDRDevice_Impl_registryState];
                v31 = v55;
                v33 = v50;
                v32 = v51;
                *v30 = v55;
                *(v30 + 1) = v33;
                *(v30 + 2) = v32;
                v60.receiver = v29;
                v60.super_class = v28;
                v34 = v31;
                v35 = v33;
                v36 = objc_msgSendSuper2(&v60, sel_init);
                v37 = *v57;
                v38 = v27;
                v16 = v26;
                v17 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
                (*v57)(v38, v6);
                [v39 registry:v54 added:v36];

                v25 = v53;
                v37(v53, v6);
              }

              else
              {
                (*v57)(v25, v6);
              }

              v23 += v58;
              if (!--v22)
              {
                break;
              }

              v24(v25, v23, v6);
            }

            swift_unknownObjectRelease();

            v12 = v42;
            a1 = v43;
            v13 = v48;
            v14 = v41;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v15 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
          if (v13 == v12)
          {
            return result;
          }
        }
      }

      if (v13 >= *(v46 + 16))
      {
        goto LABEL_24;
      }

      v18 = *(v45 + 8 * v13);
      swift_unknownObjectRetain();
      v19 = __OFADD__(v13++, 1);
      if (!v19)
      {
        goto LABEL_11;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      if (a1 < 0)
      {
        v40 = a1;
      }

      else
      {
        v40 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x2318DF310](v40);
      v12 = result;
    }

    while (result);
  }

  return result;
}

uint64_t PDRDevice.isPaired()(void *a1)
{
  if ([v1 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    outlined destroy of UUID?(v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  return result;
}

double Device_Impl.valueFor(property:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + OBJC_IVAR___PDRDevice_Impl_registryState;
  v6 = *(v2 + OBJC_IVAR___PDRDevice_Impl_registryState);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v8 = [v6 deviceForPairingID_];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:a1];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 value];

      if (v11)
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (!v12)
        {
          *(a2 + 24) = swift_getObjectType();

          *a2 = v11;
          return result;
        }

        v13 = *(v5 + 8);
        if (v13)
        {
          v14 = v12;
          swift_unknownObjectRetain();
          v15 = [v13 objectForKeyedSubscript_];
          if (v15)
          {
            v16 = v15;
            *(a2 + 24) = swift_getObjectType();

            swift_unknownObjectRelease_n();
            *a2 = v16;
            return result;
          }

          swift_unknownObjectRelease_n();
          goto LABEL_15;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logs.framework);
    v8 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22DF91000, v8, v19, "Device could not find itself in RegistryState", v20, 2u);
      MEMORY[0x2318DFC30](v20, -1, -1);
    }
  }

LABEL_15:
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t type metadata accessor for Device_Impl()
{
  result = type metadata singleton initialization cache for Device_Impl;
  if (!type metadata singleton initialization cache for Device_Impl)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t PDRDevice.localPairingDataStorePath.getter(void *a1)
{
  if ([v1 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of UUID?(v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

Swift::Bool __swiftcall Device_Impl.supportsCapabilityRaw(_:)(Swift::UInt32 a1)
{
  if ([v1 valueForProperty_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  outlined init with copy of Any?(v9, &v7);
  if (*(&v8 + 1))
  {
    type metadata accessor for NRMiniUUIDSet();
    if (swift_dynamicCast())
    {
      v3 = [v6 hasCapability_];

      outlined destroy of UUID?(v9, &_sypSgMd, &_sypSgMR);
      return v3;
    }

    v5 = v9;
  }

  else
  {
    outlined destroy of UUID?(v9, &_sypSgMd, &_sypSgMR);
    v5 = &v7;
  }

  outlined destroy of UUID?(v5, &_sypSgMd, &_sypSgMR);
  return 0;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NRMiniUUIDSet()
{
  result = lazy cache variable for type metadata for NRMiniUUIDSet;
  if (!lazy cache variable for type metadata for NRMiniUUIDSet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NRMiniUUIDSet);
  }

  return result;
}

id @objc PDRDevice.systemBuildVersion()(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = PDRDevice.localPairingDataStorePath.getter(a3);
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x2318DF040](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_22DF96B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuousClock.Instant();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22DF96BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuousClock.Instant();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22DF96C24()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DF96C74()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22DF96CD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DF96D0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DF96D44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DF96D8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22DF96DCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22DF96E14()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22DF96E5C()
{
  v1 = *(type metadata accessor for RegistryCrux.RefreshTimings(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22DF96F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for ContinuousClock.Instant();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22DF9701C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_22DF97074()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_22DF9743C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DF976C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DF97928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return NSRequestConcreteImplementation();
}

uint64_t PDRRawVersionFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 componentsSeparatedByString:@"."];
    if (![v3 count])
    {
      v11 = 0xFFFFFFFFLL;
LABEL_11:

      goto LABEL_12;
    }

    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 integerValue];

    if ([v3 count] < 2)
    {
      v7 = 0;
    }

    else
    {
      v6 = [v3 objectAtIndexedSubscript:1];
      v7 = [v6 integerValue];

      if ([v3 count] >= 3)
      {
        v8 = [v3 objectAtIndexedSubscript:2];
        v9 = [v8 integerValue];

        v10 = v9;
LABEL_10:
        v11 = (v5 << 16) | (v7 << 8) | v10;
        goto LABEL_11;
      }
    }

    v10 = 0;
    goto LABEL_10;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_12:

  return v11;
}

uint64_t PDRWatchOSVersion(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0xFFFFFFFFLL;
  if (v3 && a2)
  {
    v4 = PDRRawVersionFromString(a2);
    v5 = v3;
    if (([v5 isEqualToString:@"Watch OS"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"watchOS") & 1) == 0)
    {
      if (v4 >> 8 == 2050 && [v5 isEqualToString:@"iPhone OS"])
      {
        v4 = v4 | 0x10000u;
      }

      else
      {
        v4 = 0xFFFFFFFFLL;
      }
    }
  }

  return v4;
}

uint64_t PDRWatchOSVersionForRemoteDevice(void *a1)
{
  v1 = a1;
  v2 = [v1 valueForProperty:@"systemName"];
  v3 = [v1 valueForProperty:@"systemVersion"];

  v4 = PDRWatchOSVersion(v2, v3);
  return v4;
}

id frameworkLog()
{
  if (frameworkLog_onceToken != -1)
  {
    frameworkLog_cold_1();
  }

  v1 = frameworkLog_logHandle;

  return v1;
}

uint64_t __frameworkLog_block_invoke()
{
  frameworkLog_logHandle = os_log_create("com.apple.paireddeviceregistry", "framework");

  return MEMORY[0x2821F96F8]();
}

uint64_t PDRDeviceSizeForProductType(void *a1)
{
  v1 = a1;
  v2 = [&unk_28419EAE0 objectForKeyedSubscript:v1];
  v3 = v2;
  if (v2 && (v4 = [v2 intValue]) != 0)
  {
    v5 = v4;
  }

  else
  {
    v6 = frameworkLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      PDRDeviceSizeForProductType_cold_1(v1, v6);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t PDRDeviceSizeForArtworkDeviceSubType(uint64_t a1)
{
  if (a1 <= 429)
  {
    if (a1 > 383)
    {
      if (a1 == 384)
      {
        return 1;
      }

      if (a1 == 390)
      {
        return 3;
      }
    }

    else
    {
      if (a1 == 320)
      {
        return 2;
      }

      if (a1 == 340)
      {
        return 4;
      }
    }
  }

  else if (a1 <= 483)
  {
    if (a1 == 430)
    {
      return 5;
    }

    if (a1 == 446)
    {
      return 8;
    }
  }

  else
  {
    switch(a1)
    {
      case 484:
        return 6;
      case 496:
        return 9;
      case 502:
        return 7;
    }
  }

  v3 = frameworkLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    PDRDeviceSizeForArtworkDeviceSubType_cold_1(a1, v3);
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance PDRDevicePropertyKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x2318DF0C0](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PDRDevicePropertyKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PDRDevicePropertyKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance PDRDevicePropertyKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance PDRDevicePropertyKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance PDRDevicePropertyKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x2318DF040](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PDRDevicePropertyKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PDRDevicePropertyKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x2318DF040](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PDRDevicePropertyKey@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PDRCompatibilityState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance PDRDevicePropertyKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey);
  v3 = lazy protocol witness table accessor for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PDRDevicePropertyKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t base witness table accessor for Equatable in PDRDevicePropertyKey()
{
  return lazy protocol witness table accessor for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey);
}

{
  return lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey, type metadata accessor for PDRDevicePropertyKey);
}

uint64_t specialized static InternalPreferences.double(key:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x2318DF040]();
  v7 = MEMORY[0x2318DF040](a3, a4);
  v8 = CFPreferencesCopyAppValue(v6, v7);

  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFNumberGetTypeID())
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v10 = swift_dynamicCastObjCClassUnconditional();
      [v10 doubleValue];
      v12 = v11;
      swift_unknownObjectRelease();

      return v12;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t specialized static InternalPreferences.BOOLean(key:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x2318DF040]();
  v7 = MEMORY[0x2318DF040](a3, a4);
  v8 = CFPreferencesCopyAppValue(v6, v7);

  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFBooleanGetTypeID())
    {
      type metadata accessor for CFBooleanRef(0);
      swift_unknownObjectRetain();
      v10 = swift_dynamicCastUnknownClassUnconditional();
      Value = CFBooleanGetValue(v10);

      swift_unknownObjectRelease();
      return Value != 0;
    }

    swift_unknownObjectRelease();
  }

  return 2;
}

id specialized static InternalPreferences.integer(key:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x2318DF040]();
  v7 = MEMORY[0x2318DF040](a3, a4);
  v8 = CFPreferencesCopyAppValue(v6, v7);

  if (v8)
  {
    v9 = CFGetTypeID(v8);
    if (v9 == CFNumberGetTypeID())
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v10 = swift_dynamicCastObjCClassUnconditional();
      v11 = [v10 integerValue];
      swift_unknownObjectRelease();

      return v11;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t partial apply for closure #1 in NotifyState.registerDispatch(bootstrap:)(uint64_t result)
{
  if ((*(v1 + 44) & 1) == 0 && *(v1 + 40) == result)
  {
    v2 = *(v1 + 32);
    return (*(v1 + 24))(v1);
  }

  return result;
}

uint64_t RegistryCrux.hasInternalDiagnostics.getter()
{
  v1 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___hasInternalDiagnostics;
  v2 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___hasInternalDiagnostics);
  if (v2 == 2)
  {
    LOBYTE(v2) = os_variant_has_internal_diagnostics();
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

double RegistryCrux.minElapsedToFireMs.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___minElapsedToFireMs);
  if ((*(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___minElapsedToFireMs + 8) & 1) == 0)
  {
    return *v1;
  }

  result = COERCE_DOUBLE(specialized static InternalPreferences.double(key:domain:)(0xD000000000000012, 0x800000022DFAFEF0, 0xD000000000000016, 0x800000022DFAFEB0));
  if (v3)
  {
    result = 30.0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

double RegistryCrux.maxElapsedToFireMs.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___maxElapsedToFireMs);
  if ((*(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___maxElapsedToFireMs + 8) & 1) == 0)
  {
    return *v1;
  }

  result = COERCE_DOUBLE(specialized static InternalPreferences.double(key:domain:)(0xD000000000000012, 0x800000022DFAFED0, 0xD000000000000016, 0x800000022DFAFEB0));
  if (v3)
  {
    result = 5000.0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t RegistryCrux.tailspinsEnabled.getter()
{
  v1 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___tailspinsEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___tailspinsEnabled);
  if (v2 == 2)
  {
    LOBYTE(v2) = specialized static InternalPreferences.BOOLean(key:domain:)(0xD000000000000018, 0x800000022DFAFE90, 0xD000000000000016, 0x800000022DFAFEB0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t closure #1 in RegistryCrux.().init()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(a2 + 24);
  aBlock[4] = partial apply for closure #1 in closure #1 in RegistryCrux.().init();
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_169;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2318DF1C0](0, v11, v7, v12);
  _Block_release(v12);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v15);
}

uint64_t closure #1 in closure #1 in RegistryCrux.().init()(uint64_t a1)
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  v3 = refreshed - 8;
  v4 = *(refreshed - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](refreshed);
  v7 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  static ContinuousClock.now.getter();
  v10 = *(v3 + 28);
  *&v9[v10] = specialized RandomNumberGenerator.next<A>(upperBound:)(61440) + 4096;
  v11 = objc_opt_self();
  outlined init with copy of RegistryCrux.RefreshTimings(v9, v7, type metadata accessor for RegistryCrux.RefreshTimings);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  outlined init with take of RegistryCrux.RefreshTimings(v7, v13 + v12);
  *(v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #1 in closure #1 in RegistryCrux.().init();
  *(v14 + 24) = v13;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_179;
  v15 = _Block_copy(aBlock);

  [v11 initiateRefresh_];
  _Block_release(v15);
  outlined destroy of RegistryCrux.RefreshTimings(v9, type metadata accessor for RegistryCrux.RefreshTimings);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in RegistryCrux.().init()(uint64_t a1)
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  v3 = *(*(refreshed - 8) + 64);
  MEMORY[0x28223BE20](refreshed);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logs.framework);
  outlined init with copy of RegistryCrux.RefreshTimings(a1, v5, type metadata accessor for RegistryCrux.RefreshTimings);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 33554688;
    v10 = *&v5[*(refreshed + 20)];
    outlined destroy of RegistryCrux.RefreshTimings(v5, type metadata accessor for RegistryCrux.RefreshTimings);
    *(v9 + 4) = v10;
    _os_log_impl(&dword_22DF91000, v7, v8, "#refresh_%hx Starting async refresh", v9, 6u);
    MEMORY[0x2318DFC30](v9, -1, -1);
  }

  else
  {
    outlined destroy of RegistryCrux.RefreshTimings(v5, type metadata accessor for RegistryCrux.RefreshTimings);
  }

  RegistryCrux.refresh(timings:)(a1);
}

uint64_t closure #2 in RegistryCrux.().init()()
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  v1 = *(*(refreshed - 8) + 64);
  v2 = MEMORY[0x28223BE20](refreshed);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  static ContinuousClock.now.getter();
  v7 = *(refreshed + 20);
  *&v6[v7] = specialized RandomNumberGenerator.next<A>(upperBound:)(61440) + 4096;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logs.framework);
  outlined init with copy of RegistryCrux.RefreshTimings(v6, v4, type metadata accessor for RegistryCrux.RefreshTimings);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 33554688;
    v12 = *&v4[*(refreshed + 20)];
    outlined destroy of RegistryCrux.RefreshTimings(v4, type metadata accessor for RegistryCrux.RefreshTimings);
    *(v11 + 4) = v12;
    _os_log_impl(&dword_22DF91000, v9, v10, "#refresh_%hx Starting bootstrap sync refresh", v11, 6u);
    MEMORY[0x2318DFC30](v11, -1, -1);
  }

  else
  {
    outlined destroy of RegistryCrux.RefreshTimings(v4, type metadata accessor for RegistryCrux.RefreshTimings);
  }

  RegistryCrux.refresh(timings:)(v6);
  return outlined destroy of RegistryCrux.RefreshTimings(v6, type metadata accessor for RegistryCrux.RefreshTimings);
}

void RegistryCrux.refresh(timings:)(uint64_t a1)
{
  v4 = v1;
  v140 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v122 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v121 = &v115 - v11;
  MEMORY[0x28223BE20](v10);
  v126 = &v115 - v12;
  v127 = type metadata accessor for RegistryState.LoggingInfo();
  v130 = *(v127 - 8);
  v13 = *(v130 + 64);
  v14 = MEMORY[0x28223BE20](v127);
  v125 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v124 = (&v115 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v123 = &v115 - v19;
  MEMORY[0x28223BE20](v18);
  v132 = (&v115 - v20);
  v21 = type metadata accessor for ContinuousClock.Instant();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  v26 = *(*(refreshed - 8) + 64);
  MEMORY[0x28223BE20](refreshed);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = (&v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v4[3];
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x277D85200], v29);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v33, v29);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v36 = v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
  swift_beginAccess();
  v133 = v36;
  outlined assign with copy of RegistryCrux.RefreshTimings(a1, v36);
  swift_endAccess();
  v37 = mach_absolute_time();
  v38 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v39 = *(v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v39 + 4);

  v40 = 0;
  v41 = v4[2];
  *&state64 = 0;
  if ((*(v41 + 44) & 1) == 0)
  {
    v42 = *(v41 + 40);

    if (notify_is_valid_token(v42))
    {
      if (*(v41 + 44))
      {
        __break(1u);
        goto LABEL_57;
      }

      notify_get_state(*(v41 + 40), &state64);
    }

    v40 = state64;
  }

  v43 = *(v4 + v38);

  os_unfair_lock_unlock(v43 + 4);

  if (((*(v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16) ^ v40) & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    if (one-time initialization token for framework == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

  if (v40 <= 0)
  {
    v129 = v22;
    v66 = [objc_allocWithZone(MEMORY[0x277D2BCE8]) init];
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logs.framework);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v128 = v21;
      v71 = v70;
      *v70 = 33554944;
      v72 = v133;
      *(v70 + 4) = *(v133 + *(refreshed + 20));

      *(v71 + 6) = 2048;
      outlined init with copy of RegistryCrux.RefreshTimings(v72, v28, type metadata accessor for RegistryCrux.RefreshTimings);
      static ContinuousClock.now.getter();
      ContinuousClock.Instant.duration(to:)();
      (*(v129 + 1))(v25, v128);
      v73 = Duration.components.getter();
      v75 = v74;
      outlined destroy of RegistryCrux.RefreshTimings(v28, type metadata accessor for RegistryCrux.RefreshTimings);
      *(v71 + 8) = v73 * 1000.0 + v75 * 1.0e-15;
      _os_log_impl(&dword_22DF91000, v68, v69, "#refresh_%hx %fms Daemon is idle, creating empty collection", v71, 0x10u);
      MEMORY[0x2318DFC30](v71, -1, -1);
    }

    else
    {
    }

    v87 = objc_opt_self();
    v88 = swift_allocObject();
    v88[2] = v4;
    v88[3] = v66;
    v88[4] = 0;
    v88[5] = v40;
    v81 = swift_allocObject();
    *(v81 + 16) = partial apply for closure #1 in RegistryCrux.assignNewState(_:);
    *(v81 + 24) = v88;
    v138 = partial apply for thunk for @callee_guaranteed () -> ();
    v139 = v81;
    *&state64 = MEMORY[0x277D85DD0];
    *(&state64 + 1) = 1107296256;
    v136 = thunk for @escaping @callee_guaranteed () -> ();
    v137 = &block_descriptor_57;
    v25 = _Block_copy(&state64);
    v84 = v139;

    v4 = v66;

    [v87 initiateAssignment_];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_38;
  }

  v116 = v37;
  outlined init with copy of RegistryCrux.RefreshTimings(v133, v28, type metadata accessor for RegistryCrux.RefreshTimings);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v44 = *(v22 + 1);
  v128 = v21;
  v129 = (v22 + 8);
  v120 = v44;
  v44(v25, v21);
  v21 = Duration.components.getter();
  v22 = v45;
  outlined destroy of RegistryCrux.RefreshTimings(v28, type metadata accessor for RegistryCrux.RefreshTimings);
  if (RegistryCrux.hasInternalDiagnostics.getter() & 1) != 0 && (RegistryCrux.tailspinsEnabled.getter())
  {
    v46 = [objc_opt_self() instance];
    [v46 beginFetchIntervalTrace];
  }

  v119 = RegistryCrux.definitelyFetchRegistryState(oldToken:)(v40);
  v118 = v47;
  v117 = v48;
  outlined init with copy of RegistryCrux.RefreshTimings(v133, v28, type metadata accessor for RegistryCrux.RefreshTimings);
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v120(v25, v128);
  v49 = Duration.components.getter();
  v51 = v50;
  outlined destroy of RegistryCrux.RefreshTimings(v28, type metadata accessor for RegistryCrux.RefreshTimings);
  v52 = RegistryCrux.minElapsedToFireMs.getter();
  v53 = RegistryCrux.maxElapsedToFireMs.getter();
  if (v52 > v53)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v54 = v53;
  v2 = 1.0e-15;
  v3 = v49 * 1000.0 + v51 * 1.0e-15 - (v21 * 1000.0 + v22 * 1.0e-15);
  v55 = [objc_opt_self() instance];
  v56 = v55;
  if (v52 > v3 || v3 > v54)
  {
    [v55 cancelFetchIntervalTrace];
  }

  else
  {
    [v55 endFetchIntervalTrace];

    RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000016, 0x800000022DFAFE70, &state64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
    swift_dynamicCast();
    [v134 xpcTriggerTailspinFrom:v116 forApp:0];
    swift_unknownObjectRelease();
  }

  v76 = v132;
  if ((*(v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux____lazy_storage___hasInternalDiagnostics) & 1) == 0)
  {
LABEL_45:
    if (one-time initialization token for framework == -1)
    {
LABEL_46:
      v98 = type metadata accessor for Logger();
      __swift_project_value_buffer(v98, static Logs.framework);

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 33555200;
        v102 = v133;
        *(v101 + 4) = *(v133 + *(refreshed + 20));

        v21 = 2048;
        *(v101 + 6) = 2048;
        v22 = type metadata accessor for RegistryCrux.RefreshTimings;
        outlined init with copy of RegistryCrux.RefreshTimings(v102, v28, type metadata accessor for RegistryCrux.RefreshTimings);
        static ContinuousClock.now.getter();
        ContinuousClock.Instant.duration(to:)();
        v120(v25, v128);
        v103 = Duration.components.getter();
        v105 = v104;
        outlined destroy of RegistryCrux.RefreshTimings(v28, type metadata accessor for RegistryCrux.RefreshTimings);
        *(v101 + 8) = v103 * 1000.0 + v105 * v2;
        *(v101 + 16) = 2048;
        *(v101 + 18) = v3;
        _os_log_impl(&dword_22DF91000, v99, v100, "#refresh_%hx %fms definitelyFetchRegistryState complete. %fms", v101, 0x1Au);
        MEMORY[0x2318DFC30](v101, -1, -1);
      }

      else
      {
      }

      v106 = objc_opt_self();
      v107 = swift_allocObject();
      v108 = v119;
      v107[2] = v4;
      v107[3] = v108;
      v109 = v118;
      v110 = v117;
      v107[4] = v118;
      v107[5] = v110;
      v111 = swift_allocObject();
      *(v111 + 16) = closure #1 in RegistryCrux.assignNewState(_:)partial apply;
      *(v111 + 24) = v107;
      v138 = thunk for @callee_guaranteed () -> ()partial apply;
      v139 = v111;
      *&state64 = MEMORY[0x277D85DD0];
      *(&state64 + 1) = 1107296256;
      v136 = thunk for @escaping @callee_guaranteed () -> ();
      v137 = &block_descriptor_68;
      v25 = _Block_copy(&state64);
      v112 = v109;

      v113 = v108;

      [v106 initiateAssignment_];
      _Block_release(v25);
      v28 = swift_isEscapingClosureAtFileLocation();

      if ((v28 & 1) == 0)
      {
        goto LABEL_50;
      }

      __break(1u);
LABEL_55:
      swift_once();
LABEL_20:
      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Logs.framework);

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 33554944;
        v62 = v133;
        *(v61 + 4) = *(v133 + *(refreshed + 20));

        *(v61 + 6) = 2048;
        outlined init with copy of RegistryCrux.RefreshTimings(v62, v28, type metadata accessor for RegistryCrux.RefreshTimings);
        static ContinuousClock.now.getter();
        ContinuousClock.Instant.duration(to:)();
        (*(v22 + 1))(v25, v21);
        v63 = Duration.components.getter();
        v65 = v64;
        outlined destroy of RegistryCrux.RefreshTimings(v28, type metadata accessor for RegistryCrux.RefreshTimings);
        *(v61 + 8) = v63 * 1000.0 + v65 * 1.0e-15;
        _os_log_impl(&dword_22DF91000, v59, v60, "#refresh_%hx %fms Refresh appears unnecessary", v61, 0x10u);
        MEMORY[0x2318DFC30](v61, -1, -1);
      }

      else
      {
      }

LABEL_50:
      v114 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_53:
    swift_once();
    goto LABEL_46;
  }

  v116 = v28;
  v77 = v118;
  v78 = v118;
  v79 = v119;
  RegistryState.LoggingInfo.init(_:)(v79, v77, v117, v76);
  v68 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_lastLoggedInfo;
  swift_beginAccess();
  v80 = v126;
  outlined init with copy of RegistryState.LoggingInfo?(v68 + v4, v126, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
  v22 = (v130 + 48);
  v21 = *(v130 + 48);
  v81 = v127;
  v82 = (v21)(v80, 1, v127);
  outlined destroy of UUID?(v80, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
  v83 = v82 == 1;
  v84 = v132;
  if (v83)
  {
    goto LABEL_39;
  }

  isEscapingClosureAtFileLocation = v121;
  outlined init with copy of RegistryState.LoggingInfo?(v68 + v4, v121, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
  if ((v21)(isEscapingClosureAtFileLocation, 1, v81) != 1)
  {
    if (*v84 == *isEscapingClosureAtFileLocation && v84[1] == *(isEscapingClosureAtFileLocation + 8) && v84[2] == *(isEscapingClosureAtFileLocation + 16))
    {
      v86 = isEscapingClosureAtFileLocation + *(v81 + 28);
      ContinuousClock.Instant.duration(to:)();
      LOBYTE(v86) = static Duration.< infix(_:_:)();
      outlined destroy of RegistryCrux.RefreshTimings(isEscapingClosureAtFileLocation, type metadata accessor for RegistryState.LoggingInfo);
      if ((v86 & 1) == 0)
      {
LABEL_44:
        outlined destroy of RegistryCrux.RefreshTimings(v84, type metadata accessor for RegistryState.LoggingInfo);
        v28 = v116;
        goto LABEL_45;
      }

LABEL_39:
      v89 = v122;
      outlined init with copy of RegistryCrux.RefreshTimings(v84, v122, type metadata accessor for RegistryState.LoggingInfo);
      (*(v130 + 56))(v89, 0, 1, v81);
      swift_beginAccess();
      outlined assign with take of RegistryState.LoggingInfo?(v89, v68 + v4, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
      swift_endAccess();
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      __swift_project_value_buffer(v90, static Logs.framework);
      v21 = v123;
      outlined init with copy of RegistryCrux.RefreshTimings(v84, v123, type metadata accessor for RegistryState.LoggingInfo);
      v22 = v124;
      outlined init with copy of RegistryCrux.RefreshTimings(v84, v124, type metadata accessor for RegistryState.LoggingInfo);
      v91 = v125;
      outlined init with copy of RegistryCrux.RefreshTimings(v84, v125, type metadata accessor for RegistryState.LoggingInfo);

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 33555456;
        *(v94 + 4) = *(v133 + *(refreshed + 20));

        *(v94 + 6) = 2048;
        v95 = v21;
        v96 = *v21;
        outlined destroy of RegistryCrux.RefreshTimings(v95, type metadata accessor for RegistryState.LoggingInfo);
        *(v94 + 8) = v96;
        *(v94 + 16) = 2048;
        v21 = *(v22 + 1);
        outlined destroy of RegistryCrux.RefreshTimings(v22, type metadata accessor for RegistryState.LoggingInfo);
        *(v94 + 18) = v21;
        *(v94 + 26) = 2048;
        v22 = *(v91 + 16);
        outlined destroy of RegistryCrux.RefreshTimings(v91, type metadata accessor for RegistryState.LoggingInfo);
        *(v94 + 28) = v22;
        _os_log_impl(&dword_22DF91000, v92, v93, "#refresh_%hx Device collection info after definitelyFetchRegistryState: %ld total %ld paired %ld active", v94, 0x24u);
        v97 = v94;
        v84 = v132;
        MEMORY[0x2318DFC30](v97, -1, -1);
      }

      else
      {
        outlined destroy of RegistryCrux.RefreshTimings(v91, type metadata accessor for RegistryState.LoggingInfo);
        outlined destroy of RegistryCrux.RefreshTimings(v22, type metadata accessor for RegistryState.LoggingInfo);
        outlined destroy of RegistryCrux.RefreshTimings(v21, type metadata accessor for RegistryState.LoggingInfo);
      }

      goto LABEL_44;
    }

LABEL_38:
    outlined destroy of RegistryCrux.RefreshTimings(isEscapingClosureAtFileLocation, type metadata accessor for RegistryState.LoggingInfo);
    goto LABEL_39;
  }

LABEL_57:
  __break(1u);
}

void closure #1 in RegistryCrux.assignNewState(_:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v92 = type metadata accessor for ContinuousClock.Instant();
  v91 = *(v92 - 8);
  v8 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  v11 = *(*(refreshed - 1) + 64);
  MEMORY[0x28223BE20](refreshed);
  v89 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v14 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registries_);
  v16 = *(v15 + 24);

  os_unfair_lock_lock(v16 + 4);

  aBlock[0] = MEMORY[0x277D84F90];
  specialized WeakCollection.sweep(action:)(v15, aBlock);
  v17 = aBlock[0];
  v18 = *(v15 + 24);

  os_unfair_lock_unlock(v18 + 4);

  v19 = (a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
  v20 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
  v21 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);
  v98 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
  *v19 = a2;
  v19[1] = a3;
  v102 = a4;
  v19[2] = a4;
  v22 = *(a1 + v13);
  v100 = a3;
  v23 = a3;

  v24 = v20;
  v25 = v21;
  v26 = a2;
  os_unfair_lock_unlock(v22 + 4);

  if (one-time initialization token for framework != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v27 = type metadata accessor for Logger();
    v28 = __swift_project_value_buffer(v27, static Logs.framework);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v101 = v17;
    v95 = v28;
    v88 = refreshed;
    if (v31)
    {
      v32 = swift_slowAlloc();
      *v32 = 33554944;
      v33 = a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
      swift_beginAccess();
      *(v32 + 4) = *(v33 + refreshed[5]);

      *(v32 + 6) = 2048;
      v93 = a1;
      v97 = v24;
      v34 = v89;
      outlined init with copy of RegistryCrux.RefreshTimings(v33, v89, type metadata accessor for RegistryCrux.RefreshTimings);
      v99 = v25;
      v35 = v90;
      static ContinuousClock.now.getter();
      ContinuousClock.Instant.duration(to:)();
      v36 = v26;
      (*(v91 + 8))(v35, v92);
      v37 = Duration.components.getter();
      v39 = v38;
      v40 = v34;
      v24 = v97;
      a1 = v93;
      outlined destroy of RegistryCrux.RefreshTimings(v40, type metadata accessor for RegistryCrux.RefreshTimings);
      v41 = v37;
      v25 = v99;
      v42 = v39;
      v26 = v36;
      *(v32 + 8) = v41 * 1000.0 + v42 * 1.0e-15;
      _os_log_impl(&dword_22DF91000, v29, v30, "#refresh_%hx %fms New collection swapped in", v32, 0x10u);
      v43 = v32;
      v17 = v101;
      MEMORY[0x2318DFC30](v43, -1, -1);
    }

    else
    {
    }

    v44 = v24;
    swift_retain_n();
    v45 = v44;
    v46 = v25;
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    v47 = v26;
    v48 = v23;
    refreshed = v47;
    v49 = v48;
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    default argument 0 of static OSLogIntegerFormatting.hex(explicitPositiveSign:includePrefix:uppercase:minDigits:)();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v94 = v46;
    v99 = v49;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 33555712;
      v54 = v45;
      v55 = a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
      swift_beginAccess();
      LOWORD(v55) = *(v55 + v88[5]);

      *(v53 + 4) = v55;

      *(v53 + 6) = 1040;
      *(v53 + 8) = 16;
      *(v53 + 12) = 2048;

      *(v53 + 14) = v98 & 0x3FFFFFFFFFFFFFFFLL;
      *(v53 + 22) = 1040;
      *(v53 + 24) = 16;
      *(v53 + 28) = 2048;
      v45 = v54;

      *(v53 + 30) = v102 & 0x3FFFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_22DF91000, v50, v51, "#refresh_%hx history %.*llx -> %.*llx", v53, 0x26u);
      MEMORY[0x2318DFC30](v53, -1, -1);
    }

    else
    {

      v50 = refreshed;
    }

    type metadata accessor for NRMutableDeviceCollection(0, &lazy cache variable for type metadata for NRMutableDeviceCollection, 0x277D2BCE8);
    v56 = [swift_getObjCClassFromMetadata() diffFrom:v45 to:refreshed];

    if (!v56)
    {

LABEL_25:
      v79 = v94;
      goto LABEL_26;
    }

    objc_opt_self();
    v97 = swift_dynamicCastObjCClass();
    if (!v97)
    {

      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    v98 = v56;
    v87 = v45;
    v93 = a1;
    v86 = v17 >> 62;
    if (v17 >> 62)
    {
      break;
    }

    v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_19;
    }

LABEL_12:
    v96 = objc_opt_self();
    if (v23 < 1)
    {
      __break(1u);
      return;
    }

    a1 = 0;
    v57 = v17 & 0xC000000000000001;
    v24 = v104;
    while (1)
    {
      v58 = v57 ? MEMORY[0x2318DF260](a1, v17) : *(v17 + 8 * a1 + 32);
      v59 = v58;
      type metadata accessor for Registry_Impl();
      v60 = swift_dynamicCastClassUnconditional();
      v61 = swift_allocObject();
      v62 = v97;
      v61[2] = v60;
      v61[3] = v62;
      v63 = v100;
      v61[4] = refreshed;
      v61[5] = v63;
      v61[6] = v102;
      v26 = swift_allocObject();
      v26[2] = partial apply for closure #1 in Registry_Impl.notify(deviceColletionDiff:state:);
      v26[3] = v61;
      v104[2] = thunk for @callee_guaranteed () -> ()partial apply;
      v105 = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v104[0] = thunk for @escaping @callee_guaranteed () -> ();
      v104[1] = &block_descriptor_78;
      v25 = _Block_copy(aBlock);
      v17 = v105;
      v64 = v59;
      v65 = refreshed;
      v66 = v99;
      v67 = v64;
      swift_unknownObjectRetain();

      [v96 initiateNotifications_];

      _Block_release(v25);
      LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

      if (v67)
      {
        break;
      }

      ++a1;
      v17 = v101;
      if (v23 == a1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  if (v17 < 0)
  {
    v85 = v17;
  }

  else
  {
    v85 = v17 & 0xFFFFFFFFFFFFFF8;
  }

  v23 = MEMORY[0x2318DF310](v85);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_19:
  v68 = v93;

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v69, v70))
  {

    swift_unknownObjectRelease();

    swift_bridgeObjectRelease_n();
    v45 = v87;
    goto LABEL_25;
  }

  v71 = swift_slowAlloc();
  *v71 = 33555200;
  v72 = v68 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
  swift_beginAccess();
  *(v71 + 4) = *(v72 + v88[5]);

  *(v71 + 6) = 2048;
  v73 = v89;
  outlined init with copy of RegistryCrux.RefreshTimings(v72, v89, type metadata accessor for RegistryCrux.RefreshTimings);
  v74 = v90;
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  (*(v91 + 8))(v74, v92);
  v75 = Duration.components.getter();
  v77 = v76;
  outlined destroy of RegistryCrux.RefreshTimings(v73, type metadata accessor for RegistryCrux.RefreshTimings);
  *(v71 + 8) = v75 * 1000.0 + v77 * 1.0e-15;
  *(v71 + 16) = 2048;
  if (v86)
  {
    if (v17 < 0)
    {
      v83 = v17;
    }

    else
    {
      v83 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    v78 = MEMORY[0x2318DF310](v83);
  }

  else
  {
    v78 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = v87;
  v79 = v94;

  *(v71 + 18) = v78;

  _os_log_impl(&dword_22DF91000, v69, v70, "#refresh_%hx %fms %ld Registries informed", v71, 0x1Au);
  MEMORY[0x2318DFC30](v71, -1, -1);

  swift_unknownObjectRelease();
  v45 = v84;
LABEL_26:
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_22DF91000, v80, v81, "assignNewState complete", v82, 2u);
    MEMORY[0x2318DFC30](v82, -1, -1);
  }
}

id RegistryCrux.definitelyFetchRegistryState(oldToken:)(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for ContinuousClock.Instant();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  v7 = *(*(refreshed - 8) + 64);
  MEMORY[0x28223BE20]();
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0u;
  v61 = 0u;
  v62 = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  v11 = v2 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings;
  v12 = "ed";
  swift_beginAccess();
  swift_beginAccess();
  v48 = v11;
  swift_beginAccess();
  v57 = v59;
  v46 = (v4 + 8);
  *&v13 = 33555200;
  v45 = v13;
  v53 = a1;
  v47 = "ed";
  while (1)
  {
    while (1)
    {
      RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000027, v12 | 0x8000000000000000, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NRXPCRegistryDelegate_pMd, &_sSo21NRXPCRegistryDelegate_pMR);
      swift_dynamicCast();
      v15 = v59[4];
      v16 = swift_allocObject();
      v16[2] = v9;
      v16[3] = v2;
      v16[4] = a1;
      v59[2] = partial apply for closure #1 in RegistryCrux.definitelyFetchRegistryState(oldToken:);
      v59[3] = v16;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v59[0] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NRMutableDeviceCollection?, @guaranteed NRSecureDevicePropertyStore?, @unowned UInt64, @unowned Bool) -> ();
      v59[1] = &block_descriptor_0;
      v17 = _Block_copy(&aBlock);

      [v15 xpcGetDeviceCollectionWithBlock_];
      _Block_release(v17);
      if (!*(v9 + 16))
      {
        break;
      }

      swift_unknownObjectRelease();
      v14 = *v10;
      if (*v10)
      {
        goto LABEL_15;
      }
    }

    v18 = specialized getter of sleeper #1 in RegistryCrux.definitelyFetchRegistryState(oldToken:)(&v60);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    result = [objc_opt_self() sleepForTimeInterval_];
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    v27 = v24 * 2.37137;
    if (v24 * 2.37137 > 0.01)
    {
      v27 = 0.01;
    }

    *&v61 = v22 + v24;
    *(&v61 + 1) = v27;
    v62 = 0;
    *&v60 = v18 + 1;
    *(&v60 + 1) = v20 << (v26 >= v20);
    if (v26 < v20)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logs.framework);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = v45;
        v32 = *(refreshed + 20);
        v56 = v29;
        v33 = v48;
        *(v31 + 4) = *(v48 + v32);

        *(v31 + 6) = 2048;
        v54 = type metadata accessor for RegistryCrux.RefreshTimings;
        v34 = v33;
        v35 = v49;
        outlined init with copy of RegistryCrux.RefreshTimings(v34, v49, type metadata accessor for RegistryCrux.RefreshTimings);
        v36 = v51;
        static ContinuousClock.now.getter();
        ContinuousClock.Instant.duration(to:)();
        v55 = v30;
        (*v46)(v36, v52);
        v12 = v47;
        v37 = Duration.components.getter();
        v39 = v38;
        outlined destroy of RegistryCrux.RefreshTimings(v35, v54);
        *(v31 + 8) = v37 * 1000.0 + v39 * 1.0e-15;
        *(v31 + 16) = 2048;
        *(v31 + 18) = v26;
        v40 = v56;
        _os_log_impl(&dword_22DF91000, v56, v55, "#refresh_%hx %fms definitelyFetchRegistryState at %ld retries", v31, 0x1Au);
        v41 = v31;
        a1 = v53;
        MEMORY[0x2318DFC30](v41, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v14 = *v10;
    if (*v10)
    {
LABEL_15:
      v42 = *(v9 + 32);
      v43 = *(v9 + 24);
      v44 = v14;

      return v44;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized getter of sleeper #1 in RegistryCrux.definitelyFetchRegistryState(oldToken:)(uint64_t *a1)
{
  if (a1[4])
  {
    swift_beginAccess();
    result = 0;
    *a1 = xmmword_22DFAE880;
    *(a1 + 1) = xmmword_22DFAE890;
    *(a1 + 32) = 0;
  }

  else
  {
    v3 = a1[2];
    v4 = a1[3];
    result = *a1;
    v5 = a1[1];
  }

  return result;
}

void closure #1 in RegistryCrux.definitelyFetchRegistryState(oldToken:)(void *a1, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  if ((a4 & 1) == 0)
  {
    RegistryCrux.warnAboutMissingEntitlement()();
    v19 = [objc_allocWithZone(MEMORY[0x277D2BCE8]) init];
    swift_beginAccess();
    v16 = a5[2];
    v17 = a5[3];
    v20 = a5[4];
    a5[2] = v19;
    a5[3] = 0;
    a5[4] = a7;
    goto LABEL_5;
  }

  if (a1)
  {
    swift_beginAccess();
    v11 = a5[2];
    v12 = a5[3];
    v13 = a5[4];
    a5[2] = a1;
    a5[3] = a2;
    a5[4] = a3;
    v14 = a2;
    v15 = a1;
    v16 = v11;
    v17 = v12;
LABEL_5:
    outlined consume of RegistryState?(v16, v17);
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall RegistryCrux.warnAboutMissingEntitlement()()
{
  if (RegistryCrux.hasInternalDiagnostics.getter())
  {
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    __swift_project_value_buffer(v0, static Logs.framework);
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&dword_22DF91000, oslog, v1, "Process is not entitled to access PairedDeviceRegistry. Please add the entitlement com.apple.nano.nanoregistry.generalaccess", v2, 2u);
      MEMORY[0x2318DFC30](v2, -1, -1);
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NRMutableDeviceCollection?, @guaranteed NRSecureDevicePropertyStore?, @unowned UInt64, @unowned Bool) -> ()(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v12 = a2;
  v11 = a3;
  v10(a2, a3, a4, a5);
}

uint64_t RegistryCrux.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of RegistryCrux.RefreshTimings(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_refreshTimings, type metadata accessor for RegistryCrux.RefreshTimings);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_lastLoggedInfo, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMd, &_s20PairedDeviceRegistry0C5StateV11LoggingInfoVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  v3 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);

  v4 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registries_);

  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_serviceShadow_, &_sypSgMd, &_sypSgMR);
  return v0;
}

uint64_t RegistryCrux.__deallocating_deinit()
{
  RegistryCrux.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id one-time initialization function for unifiedRemoteObjectInterface()
{
  result = closure #1 in variable initialization expression of static RegistryCrux.unifiedRemoteObjectInterface();
  static RegistryCrux.unifiedRemoteObjectInterface = result;
  return result;
}

id closure #1 in variable initialization expression of static RegistryCrux.unifiedRemoteObjectInterface()
{
  [objc_opt_self() interfaceWithProtocol_];
  result = [objc_opt_self() enclosedClassTypes];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = result;
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(*(v2 + 16), 0);
    v5 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v4 + 4), v3, v2);
    outlined consume of Set<AnyHashable>.Iterator._Variant();
    if (v5 == v3)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_6:
  v10 = v4;
  result = [objc_opt_self() enclosedClassTypes];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v7);
  specialized _arrayForceCast<A, B>(_:)(v10);
  v8 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 initWithArray_];

  result = static Set._forceBridgeFromObjectiveC(_:result:)();
LABEL_10:
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = specialized Sequence._copySequenceContents(initializing:)(&v48, &v4[40 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v15 = *(v4 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v4 + 2) = v17;
  }

  if (result != v13)
  {
    result = outlined consume of Set<AnyHashable>.Iterator._Variant();
LABEL_14:
    *v1 = v4;
    return result;
  }

LABEL_17:
  v2 = *(v4 + 2);
  v14 = v49;
  v37 = v49;
  v38 = v48;
  v3 = v50;
  v17 = v51;
  v18 = v52;
  if (v52)
  {
    v19 = v51;
LABEL_27:
    v23 = (v18 - 1) & v18;
    outlined init with copy of AnyHashable(*(v38 + 48) + 40 * (__clz(__rbit64(v18)) | (v19 << 6)), &v45);
    v22 = v19;
    while (1)
    {
      outlined init with copy of RegistryState.LoggingInfo?(&v45, &v42, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
      if (!*(&v43 + 1))
      {
        break;
      }

      v3 = (v3 + 64) >> 6;
      v24 = &_ss11AnyHashableVSgMd;
      while (1)
      {
        outlined destroy of UUID?(&v42, v24, &_ss11AnyHashableVSgMR);
        v25 = *(v4 + 3);
        v26 = v25 >> 1;
        if ((v25 >> 1) < v2 + 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v2 + 1, 1, v4);
          v26 = *(v4 + 3) >> 1;
        }

        outlined init with copy of RegistryState.LoggingInfo?(&v45, &v39, v24, &_ss11AnyHashableVSgMR);
        if (*(&v40 + 1))
        {
          break;
        }

        v35 = v22;
LABEL_52:
        outlined destroy of UUID?(&v39, v24, &_ss11AnyHashableVSgMR);
        v28 = v2;
        v22 = v35;
LABEL_31:
        *(v4 + 2) = v28;
        outlined init with copy of RegistryState.LoggingInfo?(&v45, &v42, v24, &_ss11AnyHashableVSgMR);
        if (!*(&v43 + 1))
        {
          goto LABEL_53;
        }
      }

      if (v2 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v2;
      }

      while (1)
      {
        v42 = v39;
        v43 = v40;
        v44 = v41;
        v28 = v27;
        if (v2 == v27)
        {
          outlined destroy of AnyHashable(&v42);
          v2 = v28;
          goto LABEL_31;
        }

        v29 = v24;
        outlined destroy of UUID?(&v45, v24, &_ss11AnyHashableVSgMR);
        v30 = &v4[40 * v2 + 32];
        v31 = v44;
        v32 = v43;
        *v30 = v42;
        *(v30 + 16) = v32;
        *(v30 + 32) = v31;
        if (!v23)
        {
          break;
        }

        v33 = v22;
LABEL_50:
        v36 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        outlined init with copy of AnyHashable(*(v38 + 48) + 40 * (v36 | (v33 << 6)), &v45);
        v35 = v33;
LABEL_39:
        ++v2;
        v24 = v29;
        outlined init with copy of RegistryState.LoggingInfo?(&v45, &v39, v29, &_ss11AnyHashableVSgMR);
        v22 = v35;
        v27 = v28;
        if (!*(&v40 + 1))
        {
          goto LABEL_52;
        }
      }

      if (v3 <= (v22 + 1))
      {
        v34 = v22 + 1;
      }

      else
      {
        v34 = v3;
      }

      v35 = v34 - 1;
      while (1)
      {
        v33 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v33 >= v3)
        {
          v23 = 0;
          v47 = 0;
          v45 = 0u;
          v46 = 0u;
          goto LABEL_39;
        }

        v23 = *(v37 + 8 * v33);
        ++v22;
        if (v23)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v23 = 0;
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
    }

LABEL_53:
    outlined destroy of UUID?(&v45, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
    outlined consume of Set<AnyHashable>.Iterator._Variant();
    result = outlined destroy of UUID?(&v42, &_ss11AnyHashableVSgMd, &_ss11AnyHashableVSgMR);
    goto LABEL_14;
  }

LABEL_20:
  v20 = (v3 + 64) >> 6;
  if (v20 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = (v3 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      goto LABEL_55;
    }

    v18 = *(v14 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of AnyHashable(v4, &v8);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v9, (v2 + 32 * v6 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t RegistryCrux.connectionLocked()()
{
  v1 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_;
  v2 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_);
LABEL_15:
    v22 = v2;
    return v3;
  }

  v4 = v0;
  v24 = 0u;
  v25 = 0u;
  v5 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_serviceShadow_;
  swift_beginAccess();
  outlined assign with take of RegistryState.LoggingInfo?(&v24, v4 + v5, &_sypSgMd, &_sypSgMR);
  swift_endAccess();
  v6 = RegistryCrux.connectionSleeper_.modify();
  if (*(v7 + 32))
  {
    (v6)(&v24, 0);
LABEL_12:
    v14 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v15 = MEMORY[0x2318DF040](0xD000000000000030, 0x800000022DFB0190);
    v16 = [v14 initWithMachServiceName:v15 options:{4096, v24, v25}];

    if (one-time initialization token for unifiedRemoteObjectInterface != -1)
    {
      swift_once();
    }

    [v16 setRemoteObjectInterface_];
    v17 = [objc_opt_self() interfaceWithProtocol_];
    [v16 setExportedInterface_];

    [v16 setExportedObject_];
    v26 = partial apply for closure #1 in RegistryCrux.connectionLocked();
    v27 = v4;
    *&v24 = MEMORY[0x277D85DD0];
    *(&v24 + 1) = 1107296256;
    *&v25 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v25 + 1) = &block_descriptor_152;
    v18 = _Block_copy(&v24);

    [v16 setInvalidationHandler_];
    _Block_release(v18);
    v26 = closure #2 in RegistryCrux.connectionLocked();
    v27 = 0;
    *&v24 = MEMORY[0x277D85DD0];
    *(&v24 + 1) = 1107296256;
    *&v25 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v25 + 1) = &block_descriptor_155;
    v19 = _Block_copy(&v24);
    [v16 setInterruptionHandler_];
    _Block_release(v19);
    v20 = v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionSleeper_;
    swift_beginAccess();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 1;
    v21 = *(v4 + v1);
    *(v4 + v1) = v16;
    v3 = v16;

    [v3 activate];
    v2 = 0;
    goto LABEL_15;
  }

  v8 = RetrySleeper.sleep()();
  (v6)(&v24, 0);
  if (!v8)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logs.framework);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_12;
  }

  v12 = swift_slowAlloc();
  *v12 = 134217984;
  v13 = v4 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionSleeper_;
  swift_beginAccess();
  if ((*(v13 + 32) & 1) == 0)
  {
    *(v12 + 4) = *v13;

    _os_log_impl(&dword_22DF91000, v10, v11, "Slept %ld times on XPC connection construction", v12, 0xCu);
    MEMORY[0x2318DFC30](v12, -1, -1);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in RegistryCrux.connectionLocked()(uint64_t a1)
{
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logs.framework);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22DF91000, v3, v4, "XPC connection is invalid. Retrying eventually.", v5, 2u);
    MEMORY[0x2318DFC30](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v7 = *(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v7 + 4);

  memset(v16, 0, sizeof(v16));
  v8 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_serviceShadow_;
  swift_beginAccess();
  outlined assign with take of RegistryState.LoggingInfo?(v16, a1 + v8, &_sypSgMd, &_sypSgMR);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_;
  [*(a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionShadow_) invalidate];
  v10 = *(a1 + v9);
  *(a1 + v9) = 0;

  v11 = a1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_connectionSleeper_;
  swift_beginAccess();
  if (*(v11 + 32))
  {
    v12 = xmmword_22DFAE890;
    v13 = xmmword_22DFAE880;
  }

  else
  {
    v13 = *v11;
    v12 = *(v11 + 16);
  }

  *v11 = v13;
  *(v11 + 16) = v12;
  *(v11 + 32) = 0;
  v14 = *(a1 + v6);

  os_unfair_lock_unlock(v14 + 4);
}

uint64_t RegistryCrux.synchronousUntypedService(tag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v8 = *(v3 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v8 + 4);

  v9 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_serviceShadow_;
  swift_beginAccess();
  outlined init with copy of RegistryState.LoggingInfo?(v3 + v9, &aBlock, &_sypSgMd, &_sypSgMR);
  if (*(&v22 + 1))
  {
    outlined init with take of Any(&aBlock, a3);
LABEL_7:
    v17 = *(v3 + v7);

    os_unfair_lock_unlock(v17 + 4);
  }

  v19 = v7;
  v20 = v9;
  v18 = a3;
  outlined destroy of UUID?(&aBlock, &_sypSgMd, &_sypSgMR);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v25 = 0u;
  v26 = 0u;
  swift_beginAccess();
  do
  {
    *(v11 + 16) = 0;
    v12 = RegistryCrux.connectionLocked()();
    v13 = swift_allocObject();
    v13[2] = v11;
    v13[3] = v10;
    v13[4] = a1;
    v13[5] = a2;
    v23 = partial apply for closure #1 in RegistryCrux.synchronousUntypedService(tag:);
    v24 = v13;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v22 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    *(&v22 + 1) = &block_descriptor_149;
    v14 = _Block_copy(&aBlock);

    v15 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v14);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of UUID?(&v25, &_sypSgMd, &_sypSgMR);
    v25 = aBlock;
    v26 = v22;
  }

  while ((*(v11 + 16) & 1) != 0);
  swift_beginAccess();
  outlined assign with copy of UUID?(&v25, v3 + v20, &_sypSgMd, &_sypSgMR);
  swift_endAccess();
  result = outlined init with copy of RegistryState.LoggingInfo?(&v25, &aBlock, &_sypSgMd, &_sypSgMR);
  if (*(&v22 + 1))
  {
    outlined destroy of UUID?(&v25, &_sypSgMd, &_sypSgMR);
    outlined init with take of Any(&aBlock, v18);

    v7 = v19;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t getter of sleeper #1 in RegistryCrux.synchronousUntypedService(tag:)(uint64_t a1)
{
  if (*(a1 + 48))
  {
    swift_beginAccess();
    result = 0;
    *(a1 + 16) = xmmword_22DFAE880;
    *(a1 + 32) = xmmword_22DFAE890;
    *(a1 + 48) = 0;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = a1 + 16;
    result = *(a1 + 16);
    v5 = *(v6 + 8);
  }

  return result;
}

void closure #1 in RegistryCrux.synchronousUntypedService(tag:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v41 = _convertErrorToNSError(_:)();
  if ([v41 code] != 4097)
  {
    goto LABEL_7;
  }

  v10 = [v41 domain];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = *MEMORY[0x277CCA050];
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v15)
  {

LABEL_15:
    swift_beginAccess();
    *(a2 + 16) = 1;
    v26 = getter of sleeper #1 in RegistryCrux.synchronousUntypedService(tag:)(a3);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [objc_opt_self() sleepForTimeInterval_];
    v33 = __OFADD__(v26, 1);
    v34 = v26 + 1;
    if (v33)
    {
      __break(1u);
    }

    else
    {
      if (v32 * 2.37137 <= 0.01)
      {
        v35 = v32 * 2.37137;
      }

      else
      {
        v35 = 0.01;
      }

      swift_beginAccess();
      *(a3 + 32) = v30 + v32;
      *(a3 + 40) = v35;
      *(a3 + 48) = 0;
      *(a3 + 16) = v34;
      *(a3 + 24) = v28 << (v34 >= v28);
      if (v34 < v28)
      {
        goto LABEL_23;
      }

      if (one-time initialization token for framework == -1)
      {
LABEL_21:
        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logs.framework);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v37, v38))
        {

          return;
        }

        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v42 = v40;
        *v39 = 136315650;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v42);
        *(v39 + 12) = 2048;
        *(v39 + 14) = *(a3 + 16);

        *(v39 + 22) = 2048;
        *(v39 + 24) = *(a3 + 32);
        _os_log_impl(&dword_22DF91000, v37, v38, "Service fetch for %s retried %ld times, %f seconds", v39, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x2318DFC30](v40, -1, -1);
        MEMORY[0x2318DFC30](v39, -1, -1);

LABEL_23:
        return;
      }
    }

    swift_once();
    goto LABEL_21;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logs.framework);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_22DF91000, v20, v21, "Failed to get service: %@", v22, 0xCu);
    outlined destroy of UUID?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2318DFC30](v23, -1, -1);
    MEMORY[0x2318DFC30](v22, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::Int __swiftcall RegistryCrux.switchIndex()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v3 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
  v5 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
  v6 = *(v0 + v2);
  v7 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);

  v8 = v4;
  os_unfair_lock_unlock(v6 + 4);

  if (v5 < 0)
  {
  }

  else
  {
    RegistryCrux.synchronousUntypedService(tag:)(0x6E49686374697773, 0xED00002928786564, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NRXPCRegistryDelegate_pMd, &_sSo21NRXPCRegistryDelegate_pMR);
    swift_dynamicCast();
    v9 = v18;
    v16 = partial apply for closure #1 in RegistryCrux.switchIndex();
    v17 = v1;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v14 = thunk for @escaping @callee_guaranteed (@unowned UInt32) -> ();
    v15 = &block_descriptor_159;
    v10 = _Block_copy(&aBlock);

    [v9 xpcSwitchIndex_];

    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v11 = *(v1 + 16);

  return v11;
}

void closure #1 in RegistryCrux.switchIndex()(unsigned int a1, uint64_t a2)
{
  v3 = a1;
  swift_beginAccess();
  *(a2 + 16) = v3;
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logs.framework);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(a2 + 16);

    _os_log_impl(&dword_22DF91000, v5, v6, "Fetched new switchIndex: %ld", v7, 0xCu);
    MEMORY[0x2318DFC30](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UInt32) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t closure #1 in RegistryCrux.deviceIDAtSwitchIndex(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_projectBox();
  v5 = swift_projectBox();
  swift_beginAccess();
  outlined assign with copy of UUID?(a1, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_beginAccess();
  return outlined assign with copy of UUID?(a2, v5, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
}

void *RegistryCrux.unpair(pairingID:options:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD00000000000001ALL, 0x800000022DFB0170, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v1 = v13;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = Dictionary._bridgeToObjectiveC()().super.isa;
  v11 = partial apply for closure #1 in RegistryCrux.pairingClientSetAltAccount(name:altDSID:device:);
  v12 = v0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v9 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v10 = &block_descriptor_139;
  v4 = _Block_copy(&aBlock);

  [v1 xpcUnpairWithDeviceID:isa withOptions:v3 operationHasBegun:v4];
  swift_unknownObjectRelease();
  _Block_release(v4);

  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = v5;

  return v5;
}

void *RegistryCrux.failsafeUnpair(options:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000018, 0x800000022DFB0150, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v1 = v12;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = partial apply for closure #1 in RegistryCrux.failsafeUnpair(options:);
  v11 = v0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v8 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v9 = &block_descriptor_135;
  v3 = _Block_copy(&aBlock);

  [v1 xpcUnpairWithDeviceID:0 withOptions:isa operationHasBegun:v3];
  swift_unknownObjectRelease();
  _Block_release(v3);

  swift_beginAccess();
  v4 = *(v0 + 16);
  v5 = v4;

  return v4;
}

uint64_t RegistryCrux.setActive(device:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000012, 0x800000022DFB0110, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v7 = v19[1];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = [a1 pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  v23 = partial apply for closure #1 in RegistryCrux.setActive(device:);
  v24 = v12;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@guaranteed Error?, @guaranteed String?) -> ();
  v22 = &block_descriptor_131;
  v13 = _Block_copy(&aBlock);

  [v7 xpcSwitchActiveDeviceWithDeviceID:isa withAssertionHandler:v13];
  swift_unknownObjectRelease();
  _Block_release(v13);

  swift_beginAccess();
  v14 = *(v8 + 16);
  v15 = *(v8 + 24);
  swift_beginAccess();
  v16 = *(v9 + 16);

  v17 = v16;

  return v14;
}

void closure #1 in RegistryCrux.setActive(device:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    v7 = *(a4 + 16);
    *(a4 + 16) = a1;
    v8 = a1;
  }

  else
  {
    if (a3)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }

    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    swift_beginAccess();
    v12 = *(a5 + 24);
    *(a5 + 16) = v9;
    *(a5 + 24) = v10;
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Error?, @guaranteed String?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a2;
  v5(a2, v6, v8);
}

Swift::Bool __swiftcall RegistryCrux.isAssertionActive(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  RegistryCrux.synchronousUntypedService(tag:)(0xD00000000000001ELL, 0x800000022DFAFF90, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v3 = v14;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = MEMORY[0x2318DF040](countAndFlagsBits, object);
  v12 = partial apply for closure #1 in RegistryCrux.isAssertionActive(identifier:);
  v13 = v4;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v11 = &block_descriptor_87;
  v6 = _Block_copy(&aBlock);

  [v3 xpcIsAssertionActive:v5 withCompletion:v6];
  swift_unknownObjectRelease();
  _Block_release(v6);

  swift_beginAccess();
  v7 = *(v4 + 16);

  return v7;
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(a1, a2, a3);
}

{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

Swift::Void __swiftcall RegistryCrux.invalidateSwitchAssertion(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000026, 0x800000022DFAFF40, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v3 = v11;
  v4 = MEMORY[0x2318DF040](countAndFlagsBits, object);
  v9 = closure #1 in RegistryCrux.invalidateSwitchAssertion(identifier:);
  v10 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v8 = &block_descriptor_81;
  v5 = _Block_copy(&aBlock);
  [v3 xpcInvalidateSwitchAssertionWithIdentifier:v4 block:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
}

void closure #1 in RegistryCrux.invalidateSwitchAssertion(identifier:)(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logs.framework);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_22DF91000, oslog, v5, "Invalidation failed (daemon crashed?): %@", v6, 0xCu);
      outlined destroy of UUID?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2318DFC30](v7, -1, -1);
      MEMORY[0x2318DFC30](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

Swift::Int __swiftcall RegistryCrux.lastSyncSwitchIndex()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v4 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_);
  v6 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 8);

  v9 = v5;
  os_unfair_lock_unlock(v7 + 4);

  if (v6 < 0)
  {
  }

  else
  {
    v25 = v8;
    RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000015, 0x800000022DFB00F0, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
    swift_dynamicCast();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v2;
    v30 = partial apply for closure #1 in RegistryCrux.lastSyncSwitchIndex();
    v31 = v10;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Int, @guaranteed Error?) -> ();
    v29 = &block_descriptor_121;
    v11 = _Block_copy(&aBlock);

    [v26 xpcGetLastSwitchIndex_];
    _Block_release(v11);
    swift_beginAccess();
    v12 = *(v2 + 16);
    if (v12)
    {
      v13 = one-time initialization token for framework;
      v14 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logs.framework);
      v16 = v14;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v24 = v9;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v12;
        v21 = v16;
        _os_log_impl(&dword_22DF91000, v17, v18, "Failed to get switchIndex value from CFPrefs: %@", v19, 0xCu);
        outlined destroy of UUID?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x2318DFC30](v20, -1, -1);
        MEMORY[0x2318DFC30](v19, -1, -1);

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

  swift_beginAccess();
  v22 = *(v1 + 16);

  return v22;
}

void closure #1 in RegistryCrux.lastSyncSwitchIndex()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  if (a2)
  {
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for NRMutableDeviceCollection(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      a2 = v14;
    }

    else
    {
      a2 = 0;
    }
  }

  swift_beginAccess();
  v9 = *(a4 + 16);
  *(a4 + 16) = a2;

  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logs.framework);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    swift_beginAccess();
    *(v13 + 4) = *(a3 + 16);

    _os_log_impl(&dword_22DF91000, v11, v12, "Fetched lastSyncSwitchIndex: %ld", v13, 0xCu);
    MEMORY[0x2318DFC30](v13, -1, -1);
  }

  else
  {
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Int, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t RegistryCrux.migrationCount(pairingID:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD00000000000001ALL, 0x800000022DFB00B0, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v1 = v11;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = partial apply for closure #1 in RegistryCrux.migrationCount(pairingID:);
  v10 = v0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v7 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Int, @guaranteed Error?) -> ();
  v8 = &block_descriptor_111;
  v3 = _Block_copy(&aBlock);

  [v1 xpcGetMigrationCountForPairingID:isa completion:v3];
  swift_unknownObjectRelease();
  _Block_release(v3);

  swift_beginAccess();
  v4 = *(v0 + 16);

  return v4;
}

uint64_t RegistryCrux.waitForWatchPairingExtendedMetadata(advertisedName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000034, 0x800000022DFB0040, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v5 = v16;
  v6 = MEMORY[0x2318DF040](a1, a2);
  v14 = partial apply for closure #1 in RegistryCrux.waitForWatchPairingExtendedMetadata(advertisedName:);
  v15 = v4;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed NRWatchPairingExtendedMetadata?) -> ();
  v13 = &block_descriptor_105;
  v7 = _Block_copy(&aBlock);

  [v5 xpcWaitForWatchPairingExtendedMetadataForAdvertisedName:v6 completion:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);

  swift_beginAccess();
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);

  return v8;
}

void closure #1 in RegistryCrux.waitForWatchPairingExtendedMetadata(advertisedName:)(char a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  v6 = *(a3 + 24);
  *(a3 + 24) = a2;
  v7 = a2;
}

uint64_t RegistryCrux.completeRTCPairingMetric(metricID:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000023, 0x800000022DFB0010, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v5 = v16;
  v6 = MEMORY[0x2318DF040](a1, a2);
  v14 = partial apply for closure #1 in RegistryCrux.completeRTCPairingMetric(metricID:);
  v15 = v4;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v13 = &block_descriptor_99;
  v7 = _Block_copy(&aBlock);

  [v5 xpcSubmitRTCPairingMetricForMetricID:v6 withSuccess:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);

  swift_beginAccess();
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);

  return v8;
}

void closure #1 in RegistryCrux.completeRTCPairingMetric(metricID:)(char a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  v6 = *(a3 + 24);
  *(a3 + 24) = a2;
  v7 = a2;
}

void *RegistryCrux.pairingClientSetAltAccount(name:altDSID:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = a4;
  v25 = a5;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  RegistryCrux.synchronousUntypedService(tag:)(0xD000000000000030, 0x800000022DFAFFD0, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NRXPCPairingDelegate_pMd, &_sSo20NRXPCPairingDelegate_pMR);
  swift_dynamicCast();
  v14 = v31;
  v15 = MEMORY[0x2318DF040](a1, a2);
  v16 = MEMORY[0x2318DF040](a3, v24);
  v17 = [v25 pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);
  v29 = partial apply for closure #1 in RegistryCrux.pairingClientSetAltAccount(name:altDSID:device:);
  v30 = v13;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v28 = &block_descriptor_93;
  v19 = _Block_copy(&aBlock);

  [v14 xpcPairingClientSetAltAccountName:v15 altDSID:v16 forPairingID:isa completion:v19];
  swift_unknownObjectRelease();
  _Block_release(v19);

  swift_beginAccess();
  v20 = *(v13 + 16);
  v21 = v20;

  return v20;
}

void closure #1 in RegistryCrux.unpair(pairingID:options:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

Swift::Void __swiftcall RegistryCrux.remove(registry:)(PDRRegistry *registry)
{
  v3 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v4 = *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registries_);
  v10 = 0;
  v6 = *(v5 + 24);

  os_unfair_lock_lock(v6 + 4);

  v7 = registry;
  specialized WeakCollection.sweep(action:)(v5, v7, &v10, v5, &v11);

  v8 = *(v5 + 24);

  os_unfair_lock_unlock(v8 + 4);

  if (v10)
  {
  }

  v9 = *(v1 + v3);

  os_unfair_lock_unlock(v9 + 4);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
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
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
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
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(uint64_t result)
{
  if (result)
  {
    v7[3] = v1;
    v7[4] = v2;
    v3 = result;
    v7[0] = 0;
    MEMORY[0x2318DFC40](v7, 8);
    v4 = v3;
    v5 = LOWORD(v7[0]) * v3;
    if (v3 > (LOWORD(v7[0]) * v3) && -v3 % v3 > (LOWORD(v7[0]) * v3))
    {
      v6 = (-v3 % v3);
      do
      {
        v7[0] = 0;
        MEMORY[0x2318DFC40](v7, 8);
        v5 = LOWORD(v7[0]) * v4;
      }

      while (v6 > (LOWORD(v7[0]) * v4));
    }

    return HIWORD(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      outlined init with copy of AnyHashable(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void specialized RegistryCrux.xpcDeviceID(_:needsPasscode:)()
{
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logs.framework);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22DF91000, oslog, v1, "RegistryCrux: xpcDeviceID", v2, 2u);
    MEMORY[0x2318DFC30](v2, -1, -1);
  }
}

void closure #2 in RegistryCrux.connectionLocked()(const char *a1)
{
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logs.framework);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22DF91000, oslog, v3, a1, v4, 2u);
    MEMORY[0x2318DFC30](v4, -1, -1);
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

void outlined consume of RegistryState?(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t outlined assign with copy of RegistryCrux.RefreshTimings(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  (*(*(refreshed - 8) + 24))(a2, a1, refreshed);
  return a2;
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in RegistryCrux.isAssertionActive(identifier:)(char a1, uint64_t a2)
{
  v3 = (a2 != 0) & a1;
  result = swift_beginAccess();
  *(v2 + 16) = v3;
  return result;
}

uint64_t partial apply for closure #1 in RegistryCrux.migrationCount(pairingID:)(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t objectdestroy_47Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of RegistryState.LoggingInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
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

uint64_t outlined init with take of RegistryCrux.RefreshTimings(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RegistryCrux.RefreshTimings(0);
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

void partial apply for closure #1 in closure #1 in closure #1 in RegistryCrux.().init()()
{
  v1 = *(type metadata accessor for RegistryCrux.RefreshTimings(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in closure #1 in RegistryCrux.().init()(v0 + v2);
}

id Registry_Stub.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Registry_Stub.init()()
{
  v1 = OBJC_IVAR___PDRRegistry_Stub_unfairLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  v3 = OBJC_IVAR___PDRRegistry_Stub_delegates;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionCySo19PDRRegistryDelegate_pGMd, _s20PairedDeviceRegistry14WeakCollectionCySo19PDRRegistryDelegate_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 24) = v5;
  *&v0[v3] = v4;
  *&v0[OBJC_IVAR___PDRRegistry_Stub_lastCompatibilityState] = 0;
  v0[OBJC_IVAR___PDRRegistry_Stub_started_] = 0;
  *&v0[OBJC_IVAR___PDRRegistry_Stub_status_] = 0;
  v0[OBJC_IVAR___PDRRegistry_Stub_amSingleton] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for Registry_Stub();
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall Registry_Stub.stop()()
{
  if (*(v0 + OBJC_IVAR___PDRRegistry_Stub_started_) != 1 || (*(v0 + OBJC_IVAR___PDRRegistry_Stub_amSingleton) & 1) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR___PDRRegistry_Stub_started_) = 0;
  }
}

uint64_t Registry_Stub.add(delegate:)()
{
  v1 = OBJC_IVAR___PDRRegistry_Stub_unfairLock;
  v2 = *(v0 + OBJC_IVAR___PDRRegistry_Stub_unfairLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR___PDRRegistry_Stub_delegates);

  specialized WeakCollection.append(_:)();

  v4 = *(v0 + v1);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t Registry_Stub.remove(delegate:)(uint64_t a1)
{
  v3 = OBJC_IVAR___PDRRegistry_Stub_unfairLock;
  v4 = *(v1 + OBJC_IVAR___PDRRegistry_Stub_unfairLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + OBJC_IVAR___PDRRegistry_Stub_delegates);
  v12 = 0;
  v11 = 0;
  v6 = *(v5 + 24);

  os_unfair_lock_lock(v6 + 4);

  swift_unknownObjectRetain();
  specialized WeakCollection.sweep(action:)(v5, a1, &v11, v5, &v12);
  swift_unknownObjectRelease();

  v7 = *(v5 + 24);

  os_unfair_lock_unlock(v7 + 4);

  if (v11)
  {
    swift_unknownObjectRelease();
  }

  v8 = v12;
  v9 = *(v1 + v3);

  os_unfair_lock_unlock(v9 + 4);

  return v8;
}

id @objc Registry_Stub.device(forBluetoothID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  outlined destroy of UUID?(v7);

  return 0;
}

id Registry_Stub.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Registry_Stub();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc Registry_Stub.waitForPairingExtendedMetadata(advertisedName:results:)(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  (*(v4 + 2))(v4, 0, 0);

  _Block_release(v4);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RetrySleeper(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RetrySleeper(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

Swift::Bool __swiftcall RetrySleeper.sleep()()
{
  v1 = objc_opt_self();
  v2 = *(v0 + 24);
  result = [v1 sleepForTimeInterval_];
  v4 = v2 * 2.37137;
  if (v2 * 2.37137 > 0.01)
  {
    v4 = 0.01;
  }

  *(v0 + 16) = v2 + *(v0 + 16);
  *(v0 + 24) = v4;
  v5 = *v0 + 1;
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    *v0 = v5;
    v6 = *(v0 + 8);
    if (v5 >= v6)
    {
      *(v0 + 8) = 2 * v6;
    }

    return v5 >= v6;
  }

  return result;
}

char *one-time initialization function for notify()
{
  type metadata accessor for NotifyState();
  v0 = swift_allocObject();
  *(v0 + 40) = 0;
  *(v0 + 44) = 1;
  v1 = MEMORY[0x2318DF040](0xD000000000000025, 0x800000022DFB04F0);
  v2 = [v1 UTF8String];
  v3 = v1;
  result = strdup(v2);
  if (result)
  {
    *(v0 + 16) = result;
    *(v0 + 24) = closure #1 in default argument 1 of NotifyState.init(name:_:);
    *(v0 + 32) = 0;
    result = NotifyState.registerDispatch(bootstrap:)(0);
    static ConnectivityStatus_Impl.notify = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ConnectivityStatus_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConnectivityStatus_Impl.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectivityStatus_Impl();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConnectivityStatus_Impl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectivityStatus_Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static ConnectivityStatus_Impl.currentConnectivity()()
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for notify != -1)
  {
    swift_once();
  }

  result = 0;
  v1 = static ConnectivityStatus_Impl.notify;
  v4[0] = 0;
  if (*(static ConnectivityStatus_Impl.notify + 44))
  {
    goto LABEL_8;
  }

  v2 = *(static ConnectivityStatus_Impl.notify + 10);

  result = notify_is_valid_token(v2);
  if (!result)
  {

    result = 0;
    goto LABEL_8;
  }

  if ((v1[11] & 1) == 0)
  {
    notify_get_state(v1[10], v4);

    result = v4[0];
LABEL_8:
    v3 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RegistryState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for RegistryState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void RegistryState.LoggingInfo.init(_:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v66 = a2;
  v58 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v57 - v12;
  v65 = a1;
  v14 = [v65 allPairingIDs];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = *(v15 + 16);
  if (v16)
  {
    v68 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v61 = v13;
    v62 = v11;
    v17 = v7 + 16;
    v63 = *(v7 + 16);
    v64 = v7 + 16;
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v57[1] = v15;
    v19 = v15 + v18;
    v20 = *(v17 + 56);
    v59 = (v17 - 8);
    v60 = v20;
    v21 = v63;
    do
    {
      v22 = v61;
      v21(v61, v19, v6);
      v23 = v62;
      v21(v62, v22, v6);
      v24 = type metadata accessor for Device_Impl();
      v25 = objc_allocWithZone(v24);
      v21(&v25[OBJC_IVAR___PDRDevice_Impl_uuid_], v23, v6);
      v26 = &v25[OBJC_IVAR___PDRDevice_Impl_registryState];
      v27 = v65;
      v28 = v66;
      *v26 = v65;
      *(v26 + 1) = v28;
      *(v26 + 2) = a3;
      v67.receiver = v25;
      v67.super_class = v24;
      v29 = v27;
      v30 = v28;
      objc_msgSendSuper2(&v67, sel_init);
      v31 = a3;
      v32 = *v59;
      (*v59)(v23, v6);
      v32(v22, v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v33 = *(v68 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a3 = v31;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v19 += v60;
      --v16;
    }

    while (v16);

    v34 = v68;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v64 = v34 >> 62;
  if (v34 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x2318DF310](v50))
  {
    v36 = 0;
    v37 = 0;
    v38 = v34 & 0xC000000000000001;
    do
    {
      if (v38)
      {
        v39 = MEMORY[0x2318DF260](v36, v34);
      }

      else
      {
        if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v39 = *(v34 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v42 = [v39 isPaired];

      if (v42)
      {
        v43 = __OFADD__(v37++, 1);
        if (v43)
        {
          goto LABEL_34;
        }
      }

      ++v36;
    }

    while (v41 != i);
    v44 = 0;
    v45 = 0;
    v58[1] = v37;
    while (1)
    {
      if (v38)
      {
        v46 = MEMORY[0x2318DF260](v44, v34);
      }

      else
      {
        if (v44 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v46 = *(v34 + 8 * v44 + 32);
      }

      v47 = v46;
      v48 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v49 = [v46 isActive];

      if (v49)
      {
        v43 = __OFADD__(v45++, 1);
        if (v43)
        {
          goto LABEL_35;
        }
      }

      ++v44;
      if (v48 == i)
      {
        goto LABEL_41;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (v34 < 0)
    {
      v50 = v34;
    }

    else
    {
      v50 = v34 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v45 = 0;
  v58[1] = 0;
LABEL_41:
  v58[2] = v45;
  if (v64)
  {
    if (v34 < 0)
    {
      v52 = v34;
    }

    else
    {
      v52 = v34 & 0xFFFFFFFFFFFFFF8;
    }

    v51 = MEMORY[0x2318DF310](v52);
  }

  else
  {
    v51 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v65;
  v53 = v66;

  v55 = v58;
  *v58 = v51;
  v56 = v55 + *(type metadata accessor for RegistryState.LoggingInfo() + 28);
  static ContinuousClock.now.getter();
}

id specialized DeviceCollectionFilter_Impl.filterByClosure(_:)(char *a1, SEL *a2)
{
  v3 = a1;
  v4 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v5 = *&a1[OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock];

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection;
  v7 = *(v3 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v21 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2318DF310](v17))
  {

    if (!i)
    {
      break;
    }

    v18 = v6;
    v19 = v4;
    v20 = v3;
    v3 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2318DF260](v3, v7);
      }

      else
      {
        if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v3 + 32);
      }

      v4 = v9;
      v10 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v9 *a2])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = *(v21 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = &v21;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v10 == i)
      {
        v3 = v20;
        v12 = v21;
        v6 = v18;
        v4 = v19;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 < 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_16:

  v13 = *(v6 + v3);
  *(v6 + v3) = v12;

  v14 = *&v4[v3];
  v15 = v3;

  os_unfair_lock_unlock(v14 + 4);

  return v15;
}

{
  v3 = a1;
  v4 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v5 = *&a1[OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock];

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection;
  v7 = *(v3 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v21 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2318DF310](v17))
  {

    if (!i)
    {
      break;
    }

    v18 = v6;
    v19 = v4;
    v20 = v3;
    v3 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2318DF260](v3, v7);
      }

      else
      {
        if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(v7 + 8 * v3 + 32);
      }

      v4 = v10;
      v11 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v10 *a2])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = *(v21 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = &v21;
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v11 == i)
      {
        v3 = v20;
        v12 = v21;
        v6 = v18;
        v4 = v19;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 < 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_16:

  v13 = *(v6 + v3);
  *(v6 + v3) = v12;

  v14 = *&v4[v3];
  v15 = v3;

  os_unfair_lock_unlock(v14 + 4);

  return v15;
}

id DeviceCollectionFilter_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceCollectionFilter_Impl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceCollectionFilter_Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *DeviceCollectionFilter_Impl.active.getter(SEL *a1)
{
  v3 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v4 = *(v1 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection;
  v6 = *(v1 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v20 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2318DF310](v16))
  {

    if (!i)
    {
      break;
    }

    v17 = v5;
    v18 = v3;
    v19 = v1;
    v3 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318DF260](v3, v6);
      }

      else
      {
        if (v3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v3 + 32);
      }

      v5 = v8;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v8 *a1])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = *(v20 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v20;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v9 == i)
      {
        v1 = v19;
        v11 = v20;
        v5 = v17;
        v3 = v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 < 0)
    {
      v16 = v6;
    }

    else
    {
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_16:

  v12 = *&v5[v1];
  *&v5[v1] = v11;

  v13 = *(v1 + v3);
  v14 = v1;

  os_unfair_lock_unlock(v13 + 4);

  return v14;
}

uint64_t *DeviceCollectionFilter_Impl.notActive.getter(SEL *a1)
{
  v3 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v4 = *(v1 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection;
  v6 = *(v1 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v20 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2318DF310](v16))
  {

    if (!i)
    {
      break;
    }

    v17 = v5;
    v18 = v3;
    v19 = v1;
    v3 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2318DF260](v3, v6);
      }

      else
      {
        if (v3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v6 + 8 * v3 + 32);
      }

      v5 = v9;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v9 *a1])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = *(v20 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v20;
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v10 == i)
      {
        v1 = v19;
        v11 = v20;
        v5 = v17;
        v3 = v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 < 0)
    {
      v16 = v6;
    }

    else
    {
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_16:

  v12 = *&v5[v1];
  *&v5[v1] = v11;

  v13 = *(v1 + v3);
  v14 = v1;

  os_unfair_lock_unlock(v13 + 4);

  return v14;
}

uint64_t DeviceCollectionFilter_Impl.final.getter()
{
  v1 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v2 = *(v0 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection;
  v4 = *(v0 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v8 = *(v0 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
    }

    else
    {
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x2318DF310](v8) != 1)
    {
      goto LABEL_17;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_17;
  }

  v5 = *(v0 + v3);
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  if (v5 < 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2318DF310](v9);
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x2318DF260](0, v5);

    goto LABEL_18;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_18:
    v10 = *(v0 + v1);

    os_unfair_lock_unlock(v10 + 4);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t DeviceCollectionFilter_Impl.all.getter()
{
  v1 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  v2 = *(v0 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection);
  v4 = *(v0 + v1);

  os_unfair_lock_unlock(v4 + 4);

  return v3;
}

id Migrator_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Migrator_Impl.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Migrator_Impl();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Migrator_Impl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Migrator_Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed UUID?, @in_guaranteed Date?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  if (a2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v13, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  }

  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 56))(v9, v18, 1, v19);

  v15(v13, v9);

  outlined destroy of UUID?(v9, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  return outlined destroy of UUID?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

id Registry_Impl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static Registry_Impl.supportsWatch()()
{
  if (one-time initialization token for supportWatch != -1)
  {
    swift_once();
  }

  return static RegistryCrux.supportWatch;
}

uint64_t Registry_Impl.computeCompatibilityState()()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v1 = static RegistryCrux.instance;
  v2 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v3 = *(static RegistryCrux.instance + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = *(v1 + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_ + 16);
  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  if (v4 < 0)
  {
    return 0;
  }

  v6 = [v0 getDevicesExcluding_];
  type metadata accessor for PDRDevice();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (v7 < 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x2318DF310](v12);
  if (!result)
  {
LABEL_16:

    return 0;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x2318DF260](0, v7);
    goto LABEL_9;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_9:
    v10 = v9;

    if (([v10 isArchived] & 1) == 0)
    {
      v11 = PDRDevice.compatibilityState.getter();

      return v11;
    }

    return 0;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Registry_Impl.stop()()
{
  v1 = OBJC_IVAR___PDRRegistry_Impl_started_;
  if (*(&v0->super.isa + OBJC_IVAR___PDRRegistry_Impl_started_) != 1 || (*(&v0->super.isa + OBJC_IVAR___PDRRegistry_Impl_amSingleton) & 1) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    RegistryCrux.remove(registry:)(v0);

    *(&v0->super.isa + v1) = 0;
  }
}

uint64_t Registry_Impl.remove(delegate:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PDRRegistry_Impl_delegates);
  v8 = 0;
  v7 = 0;
  v4 = *(v3 + 24);

  os_unfair_lock_lock(v4 + 4);

  swift_unknownObjectRetain();
  specialized WeakCollection.sweep(action:)(v3, a1, &v7, v3, &v8);
  swift_unknownObjectRelease();

  v5 = *(v3 + 24);

  os_unfair_lock_unlock(v5 + 4);

  if (v7)
  {
    swift_unknownObjectRelease();
  }

  return v8;
}

uint64_t closure #1 in Registry_Impl.device(forBluetoothID:)(void **a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (([v7 isActive] & 1) != 0 || objc_msgSend(v7, sel_isPaired))
  {
    v8 = [v7 bluetoothIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = static UUID.== infix(_:_:)();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x2318DF310](v11))
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2318DF260](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v14 = v7;
      v10 = a1(&v14);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    if (a3 < 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = a3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return 0;
}

void *Registry_Impl.device(forBluetoothID:)(uint64_t a1, uint64_t (*a2)(id *), const char *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25[-v9];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of RegistryState.LoggingInfo?(a1, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of UUID?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logs.framework);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22DF91000, v17, v18, a3, v19, 2u);
      MEMORY[0x2318DFC30](v19, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v21 = [v3 getDevicesExcluding_];
    type metadata accessor for PDRDevice();
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x28223BE20](v23);
    *&v25[-16] = v15;
    v24 = specialized Sequence.first(where:)(a2, &v25[-32], v22);

    (*(v12 + 8))(v15, v11);
    return v24;
  }
}

uint64_t closure #1 in Registry_Impl.device(forPairingID:)(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

id @objc Registry_Impl.device(forBluetoothID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), const char *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a1;
  v16 = Registry_Impl.device(forBluetoothID:)(v12, a4, a5);

  outlined destroy of UUID?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return v16;
}

id Registry_Impl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Registry_Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(char *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v35 = a5;
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v36 = *(v40 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 compatibilityState];
  v14 = OBJC_IVAR___PDRRegistry_Impl_unfairLock;
  v15 = *&a1[OBJC_IVAR___PDRRegistry_Impl_unfairLock];

  os_unfair_lock_lock(v15 + 4);

  v16 = *&a1[OBJC_IVAR___PDRRegistry_Impl_delegates];
  v17 = *(v16 + 24);

  os_unfair_lock_lock(v17 + 4);

  aBlock[0] = MEMORY[0x277D84F90];
  specialized WeakCollection.sweep(action:)(v16, aBlock);
  v18 = aBlock[0];
  v19 = *(v16 + 24);

  os_unfair_lock_unlock(v19 + 4);

  v20 = *&a1[OBJC_IVAR___PDRRegistry_Impl_lastCompatibilityState];
  if (v13 != v20)
  {
    *&a1[OBJC_IVAR___PDRRegistry_Impl_lastCompatibilityState] = v13;
  }

  v21 = v13 != v20;
  v22 = *&a1[v14];

  os_unfair_lock_unlock(v22 + 4);

  v23 = [a1 callbackQueue];
  v24 = swift_allocObject();
  v26 = v38;
  v25 = v39;
  *(v24 + 16) = v38;
  *(v24 + 24) = v25;
  v27 = v37;
  v28 = v35;
  *(v24 + 32) = v37;
  *(v24 + 40) = v28;
  *(v24 + 48) = v18;
  *(v24 + 56) = a1;
  *(v24 + 64) = v21;
  aBlock[4] = partial apply for specialized closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_31;
  v29 = _Block_copy(aBlock);
  v30 = v27;
  v31 = a1;
  v32 = v26;
  v33 = v25;
  static DispatchQoS.unspecified.getter();
  v42 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2318DF1C0](0, v12, v9, v29);
  _Block_release(v29);

  (*(v41 + 8))(v9, v6);
  (*(v36 + 8))(v12, v40);
}

uint64_t specialized closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v100 = a7;
  v104 = a5;
  v90 = a3;
  v91 = a4;
  v89 = a2;
  v9 = type metadata accessor for UUID();
  v93 = *(v9 - 8);
  v10 = *(v93 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v88 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v78 - v13;
  v92 = a1;
  v15 = [a1 allPairingIDs];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = v16;
  v87 = *(v16 + 16);
  if (!v87)
  {
  }

  v18 = 0;
  v96 = (v93 + 8);
  v19 = v104 & 0xFFFFFFFFFFFFFF8;
  v99 = v104 & 0xFFFFFFFFFFFFFF8;
  if (v104 < 0)
  {
    v19 = v104;
  }

  v78 = v19;
  v103 = v104 & 0xC000000000000001;
  v83 = @"com.apple.watch.paireddeviceregistry.didsetup";
  v82 = @"com.apple.watch.paireddeviceregistry.didunpair";
  v81 = @"com.apple.watch.paireddeviceregistry.didpair";
  v80 = @"com.apple.watch.paireddeviceregistry.didactivate";
  v79 = @"com.apple.watch.paireddeviceregistry.diddeactivate";
  v86 = v9;
  v97 = v14;
  v85 = v16;
  v84 = v93 + 16;
  while (1)
  {
    if (v18 >= *(v17 + 16))
    {
      goto LABEL_79;
    }

    v20 = v17 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v21 = *(v93 + 72);
    v95 = v18;
    v22 = *(v93 + 16);
    v22(v14, v20 + v21 * v18, v9);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v24 = [v92 objectForKeyedSubscript_];

    if (!v24)
    {
      break;
    }

    v25 = v88;
    v22(v88, v14, v9);
    v26 = type metadata accessor for Device_Impl();
    v27 = objc_allocWithZone(v26);
    v22(&v27[OBJC_IVAR___PDRDevice_Impl_uuid_], v25, v9);
    v28 = &v27[OBJC_IVAR___PDRDevice_Impl_registryState];
    v29 = v89;
    v30 = v90;
    *v28 = v89;
    *(v28 + 1) = v30;
    *(v28 + 2) = v91;
    v105.receiver = v27;
    v105.super_class = v26;
    v31 = v29;
    v32 = v30;
    v33 = objc_msgSendSuper2(&v105, sel_init);
    v94 = *v96;
    v94(v25, v9);
    v101 = v24;
    closure #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v24, v33);
    v98 = v34;
    v36 = v35;
    if (v104 >> 62)
    {
      v37 = MEMORY[0x2318DF310](v78);
      v38 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
      if (!v37)
      {
        goto LABEL_65;
      }

LABEL_11:
      v39 = 0;
      v102 = v33;
LABEL_14:
      if (v103)
      {
        v40 = MEMORY[0x2318DF260](v39, v104);
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v39 >= *(v99 + 16))
        {
          goto LABEL_78;
        }

        v40 = *(v104 + 8 * v39 + 32);
        swift_unknownObjectRetain();
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          break;
        }
      }

      if ([v40 respondsToSelector_])
      {
        [v40 v38[46]];
      }

      else
      {
        if (v100)
        {
          if (one-time initialization token for framework != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          __swift_project_value_buffer(v42, static Logs.framework);
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&dword_22DF91000, v43, v44, "Informing delegate about compatibility state change (N/A)", v45, 2u);
            MEMORY[0x2318DFC30](v45, -1, -1);
          }
        }

        v46 = [v101 changeType];
        if (v46 == 2)
        {
          if (one-time initialization token for framework != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          __swift_project_value_buffer(v52, static Logs.framework);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&dword_22DF91000, v53, v54, "Informing delegate about device removal", v55, 2u);
            MEMORY[0x2318DFC30](v55, -1, -1);
          }

          if ([v40 respondsToSelector_])
          {
            swift_unknownObjectRetain();
            v51.super.isa = UUID._bridgeToObjectiveC()().super.isa;
            [v40 registry:a6 removed:v51.super.isa];
LABEL_41:
            swift_unknownObjectRelease();
          }
        }

        else if (v46 == 1)
        {
          if (one-time initialization token for framework != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          __swift_project_value_buffer(v47, static Logs.framework);
          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_22DF91000, v48, v49, "Informing delegate about property changes", v50, 2u);
            MEMORY[0x2318DFC30](v50, -1, -1);
          }

          if ([v40 respondsToSelector_])
          {
            type metadata accessor for PDRDevicePropertyKey(0);
            lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey, type metadata accessor for PDRDevicePropertyKey);
            swift_unknownObjectRetain();

            v51.super.isa = Set._bridgeToObjectiveC()().super.isa;

            [v40 registry:a6 changed:v102 properties:v51.super.isa];
            goto LABEL_41;
          }
        }

        else
        {
          if (v46)
          {
            goto LABEL_81;
          }

          if (one-time initialization token for framework != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          __swift_project_value_buffer(v56, static Logs.framework);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 0;
            _os_log_impl(&dword_22DF91000, v57, v58, "Informing delegate about device creation", v59, 2u);
            MEMORY[0x2318DFC30](v59, -1, -1);
          }

          if ([v40 respondsToSelector_])
          {
            [v40 registry:a6 added:v102];
          }
        }

        v33 = v102;
        if (v36 & 1) != 0 && ([v40 respondsToSelector_])
        {
          [v40 registry:a6 didSetup:v33];
        }

        v38 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
        if (v36 & 0x100) != 0 && ([v40 respondsToSelector_])
        {
          [v40 registry:a6 didPair:v33];
        }

        if (v36 & 0x10000) != 0 && ([v40 respondsToSelector_])
        {
          [v40 registry:a6 didUnpair:v33];
        }

        if (v36 & 0x1000000) != 0 && ([v40 respondsToSelector_])
        {
          [v40 registry:a6 didActivate:v33];
        }

        if (v36 & 0x100000000) != 0 && ([v40 respondsToSelector_])
        {
          [v40 registry:a6 didDeactivate:v33];
        }
      }

      swift_unknownObjectRelease();
      ++v39;
      if (v41 == v37)
      {
        goto LABEL_65;
      }

      goto LABEL_14;
    }

    v37 = *(v99 + 16);
    v38 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
    if (v37)
    {
      goto LABEL_11;
    }

LABEL_65:
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    if (v36)
    {
      v61 = [objc_opt_self() defaultCenter];
      v62 = getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v60, v33);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v62);

      v63 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v61 postNotificationName:v83 object:a6 userInfo:v63];

      if ((v36 & 0x10000) == 0)
      {
LABEL_67:
        if ((v36 & 0x100) == 0)
        {
          goto LABEL_68;
        }

        goto LABEL_72;
      }
    }

    else if ((v36 & 0x10000) == 0)
    {
      goto LABEL_67;
    }

    v64 = [objc_opt_self() defaultCenter];
    v65 = getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v60, v33);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v65);

    v66 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v64 postNotificationName:v82 object:a6 userInfo:v66];

    if ((v36 & 0x100) == 0)
    {
LABEL_68:
      if ((v36 & 0x1000000) != 0)
      {
        goto LABEL_73;
      }

      goto LABEL_69;
    }

LABEL_72:
    v67 = [objc_opt_self() defaultCenter];
    v68 = getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v60, v33);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v68);

    v69 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v67 postNotificationName:v81 object:a6 userInfo:v69];

    if ((v36 & 0x1000000) != 0)
    {
LABEL_73:
      v70 = [objc_opt_self() defaultCenter];
      v71 = getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v60, v33);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v71);

      v72 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v70 postNotificationName:v80 object:a6 userInfo:v72];

      goto LABEL_74;
    }

LABEL_69:

LABEL_74:
    v73 = v33;
    v14 = v97;
    if ((v36 & 0x100000000) != 0)
    {
      v74 = [objc_opt_self() defaultCenter];
      v75 = getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(v60, v73);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v75);

      v76 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v74 postNotificationName:v79 object:a6 userInfo:v76];

      v9 = v86;
      v94(v14, v86);
    }

    else
    {
      v9 = v86;
      v94(v97, v86);
    }

    v17 = v85;
    v18 = v95 + 1;
    if (v95 + 1 == v87)
    {
    }
  }

  __break(1u);
LABEL_81:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(void *a1, void *a2)
{
  v3 = [a1 diff];
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v5 = v3;
  v6 = [v3 allPropertyNames];

  if (!v6)
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_12:

    v9 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_6:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = v4;
  v10 = (v7 + 40);
  do
  {
    v11 = *(v10 - 1);
    v12 = *v10;

    v13 = MEMORY[0x2318DF040](v11, v12);

    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    }

    *(v9 + 16) = v15 + 1;
    *(v9 + 8 * v15 + 32) = v13;
    v10 += 2;
    --v8;
  }

  while (v8);

LABEL_13:
  v16 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20PDRDevicePropertyKeya_SayAEGTt0g5Tf4g_n(v9);

  specialized Registry_Impl.NotifyWorthies.init(mutatedProperties:device:)(v16, a2);
}

unint64_t getter of userInfo #1 in closure #1 in closure #1 in Registry_Impl.notify(deviceColletionDiff:state:)(uint64_t a1, void *a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22DFAEC40;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v7;
    *(inited + 72) = type metadata accessor for Device_Impl();
    *(inited + 48) = a2;
    v8 = a2;
    v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of UUID?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    swift_beginAccess();
    v9 = *v3;
    *v3 = v4;
  }

  return v4;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *Registry_Impl.unpair(device:options:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v7 = [a1 pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = RegistryCrux.unpair(pairingID:options:)();

  (*(v3 + 8))(v6, v2);
  return v8;
}

void *Registry_Impl.failsafeUnpair(options:)()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = RegistryCrux.failsafeUnpair(options:)();

  return v0;
}

void Registry_Impl.setActive(device:results:)(void *a1, void (*a2)(void *, id))
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v4 = RegistryCrux.setActive(device:)(a1);
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    v9 = v8;
    v10 = v8;
    a2(v8, 0);
  }

  else
  {
    active = type metadata accessor for ActiveDeviceAssertion_Impl();
    v12 = objc_allocWithZone(active);
    v12[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_valid] = 1;
    *&v12[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_device_] = a1;
    v13 = &v12[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_identifier_];
    *v13 = v4;
    v13[1] = v6;
    v16.receiver = v12;
    v16.super_class = active;

    v14 = a1;
    v15 = objc_msgSendSuper2(&v16, sel_init);
    a2(0, v15);
  }
}

Swift::Int __swiftcall Registry_Impl.lastSyncSwitchIndex()()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = RegistryCrux.lastSyncSwitchIndex()();

  return v0;
}

uint64_t Registry_Impl.migrationCount(pairingID:)()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v0 = RegistryCrux.migrationCount(pairingID:)();

  return v0;
}

void Registry_Impl.waitForPairingExtendedMetadata(advertisedName:results:)(uint64_t a1, uint64_t a2, void (*a3)(void, id))
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v6 = RegistryCrux.waitForWatchPairingExtendedMetadata(advertisedName:)(a1, a2);
  v8 = v7;

  if (v8)
  {
    v9 = objc_allocWithZone(PDRPairingExtendedMetadata);
    v13 = v8;
    v10 = [v9 init];
    [v10 setChipID_];
    [v10 setPairingVersion_];
    v11 = [v13 productType];
    [v10 setProductType_];

    [v10 setPostFailsafeObliteration_];
    [v10 setIsCellularEnabled_];
    [v10 setEncodedSystemVersion_];
    v12 = v10;
    a3(v6 & 1, v10);
  }

  else
  {
    a3(v6 & 1, 0);
  }
}

void Registry_Impl.completeRTCPairingMetric(metricID:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void *))
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v6 = RegistryCrux.completeRTCPairingMetric(metricID:)(a1, a2);
  v8 = v7;

  a3(v6 & 1, v8);
}

void Registry_Impl.pairingClientSetAltAccount(name:altDSID:device:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *))
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v12 = RegistryCrux.pairingClientSetAltAccount(name:altDSID:device:)(a1, a2, a3, a4, a5);

  a6(v12);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
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

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMd, &_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for PDRDevicePropertyKey(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMd, &_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMR);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMd, &_ss11_SetStorageCySo20PDRDevicePropertyKeyaGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v20 = v18;
      String.hash(into:)();
      v21 = Hasher._finalize()();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of RegistryState.LoggingInfo?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t partial apply for closure #1 in RegistryCrux.deviceIDAtSwitchIndex(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in RegistryCrux.deviceIDAtSwitchIndex(_:_:)(a1, a2);
}

unint64_t specialized Registry_Impl.getSwitchEvents(after:process:)(int a1, Class a2, uint64_t a3)
{
  v65 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v71 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v71);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v62 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  v12 = *(*(v70 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v70);
  v67 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v85 = (&v62 - v16);
  MEMORY[0x28223BE20](v15);
  v87 = &v62 - v17;
  v18 = __CFADD__(a1, 1);
  LODWORD(v19) = a1 + 1;
  if (v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v3 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
  v20 = [(objc_class *)a2 switchIndex];
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = v20;
  if (!HIDWORD(v20))
  {
    if (one-time initialization token for instance == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_5:
  v69 = "stry/Registry.swift";
  v68 = v89;
  v63 = v65 + 16;
  v21 = &_s10Foundation4DateVSgMd;
  v62 = a2;
  v64 = v10;
  while (v4 < v19)
  {
LABEL_21:
    result = [a2 v3[31]];
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (HIDWORD(result))
    {
      goto LABEL_28;
    }

    LODWORD(v19) = v4 + 1;
    v18 = v4 >= result;
    v4 = result;
    if (v18)
    {
      return result;
    }
  }

  v22 = static RegistryCrux.instance;
  v75 = OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_unfairLock;
  v74 = static RegistryCrux.instance + OBJC_IVAR____TtC20PairedDeviceRegistry12RegistryCrux_registryState_;
  v10 = type metadata accessor for Date();
  v23 = *(v10 - 1);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v79 = (v23 + 48);
  v66 = (v23 + 8);
  v26 = v19;
  v77 = v22;

  v3 = _s10Foundation4DateVSgMR;
  v73 = v24;
  v72 = v25;
  v76 = v4;
  v80 = v10;
  while (1)
  {
    v27 = v87;
    v24(v87, 1, 1, v10);
    outlined destroy of UUID?(v27, v21, v3);
    v24(v27, 1, 1, v10);
    v83 = swift_allocBox();
    v28 = v21;
    v30 = v29;
    v31 = type metadata accessor for UUID();
    v81 = *(v31 - 8);
    v32 = *(v81 + 56);
    v84 = v30;
    v82 = v31;
    v32(v30, 1, 1);
    v33 = v77;
    v34 = v75;
    v35 = *(v77 + v75);

    os_unfair_lock_lock(v35 + 4);

    v36 = *v74;
    v37 = v3;
    v38 = *(v74 + 16);
    v39 = *(v33 + v34);
    v40 = *(v74 + 8);

    v41 = v36;
    os_unfair_lock_unlock(v39 + 4);

    if (v38 < 0)
    {

      v3 = v37;
      v21 = v28;
    }

    else
    {
      v42 = v87;
      outlined destroy of UUID?(v87, v28, v37);
      RegistryCrux.synchronousUntypedService(tag:)(0xD00000000000001BLL, v69 | 0x8000000000000000, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NRXPCRegistryDelegate_pMd, &_sSo21NRXPCRegistryDelegate_pMR);
      swift_dynamicCast();
      v43 = v89[4];
      v44 = swift_allocBox();
      v78 = v40;
      v46 = v45;
      v24(v45, 1, 1, v80);
      v47 = swift_allocObject();
      *(v47 + 16) = v83;
      *(v47 + 24) = v44;
      v89[2] = closure #1 in RegistryCrux.deviceIDAtSwitchIndex(_:_:)partial apply;
      v89[3] = v47;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v89[0] = thunk for @escaping @callee_guaranteed (@in_guaranteed UUID?, @in_guaranteed Date?) -> ();
      v89[1] = &block_descriptor_25;
      v48 = _Block_copy(&aBlock);

      [v43 xpcDeviceIDAtSwitchIndex:v26 withBlock:v48];

      swift_unknownObjectRelease();
      _Block_release(v48);
      swift_beginAccess();
      outlined init with copy of RegistryState.LoggingInfo?(v46, v42, &_s10Foundation4DateVSgMd, v37);

      v3 = v37;
      v21 = &_s10Foundation4DateVSgMd;
    }

    v49 = v84;
    swift_beginAccess();
    outlined init with copy of RegistryState.LoggingInfo?(v49, v86, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    a2 = v85;
    outlined init with copy of RegistryState.LoggingInfo?(v87, v85, v21, v3);
    v19 = *v79;
    v10 = v80;
    v50 = (*v79)(a2, 1, v80);
    v4 = v76;
    if (v50 == 1)
    {
      outlined destroy of UUID?(v87, v21, v3);
      outlined destroy of UUID?(v85, v21, v3);
      goto LABEL_18;
    }

    v51 = v10;
    outlined destroy of UUID?(v85, v21, v3);
    a2 = (v81 + 48);
    v52 = *(v81 + 48);
    if (v52(v86, 1, v82) == 1)
    {
      outlined destroy of UUID?(v87, v21, v3);
      v10 = v51;
      goto LABEL_18;
    }

    v53 = v3;
    v54 = v67;
    outlined init with copy of RegistryState.LoggingInfo?(v87, v67, v21, v53);
    result = (v19)(v54, 1, v51);
    if (result == 1)
    {
      goto LABEL_34;
    }

    v56 = v64;
    outlined init with copy of RegistryState.LoggingInfo?(v86, v64, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v57 = v82;
    result = (v52)(v56, 1, v82);
    if (result == 1)
    {
      break;
    }

    v58 = v67;
    isa = Date._bridgeToObjectiveC()().super.isa;
    a2 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v65 + 16))(v65, v26, isa, a2);

    v19 = _s10Foundation4DateVSgMR;
    outlined destroy of UUID?(v87, v21, _s10Foundation4DateVSgMR);
    v60 = v56;
    v3 = _s10Foundation4DateVSgMR;
    (*(v81 + 8))(v60, v57);
    v61 = v58;
    v10 = v51;
    (*v66)(v61, v51);
LABEL_18:
    v24 = v73;
    if (v26 == 0xFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_27;
    }

    ++v26;
    outlined destroy of UUID?(v86, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v4 < v26)
    {

      a2 = v62;
      v3 = &selRef_xpcUnpairWithDeviceID_withOptions_operationHasBegun_;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void specialized Registry_Impl.NotifyWorthies.init(mutatedProperties:device:)(uint64_t a1, void *a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * v10)));
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {
      v30 = v11;

LABEL_23:
      [a2 isSetup];
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v11;

      if (v17)
      {
        goto LABEL_23;
      }

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {

LABEL_25:
        [a2 isPaired];
        [a2 isPaired];
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_25;
        }

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
        if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
        {

LABEL_27:
          [a2 isActive];
          [a2 isActive];
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v29)
          {
            goto LABEL_27;
          }
        }
      }
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20PDRDevicePropertyKeya_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PDRDevicePropertyKey(0);
  v4 = v3;
  v5 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type PDRDevicePropertyKey and conformance PDRDevicePropertyKey, type metadata accessor for PDRDevicePropertyKey);
  result = MEMORY[0x2318DF160](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

void specialized Registry_Impl.setActive(device:results:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v4 = RegistryCrux.setActive(device:)(a1);
  v6 = v5;
  v8 = v7;

  if (v8)
  {
    v9 = v8;
    v10 = v8;
    v11 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, v11, 0);
  }

  else
  {
    active = type metadata accessor for ActiveDeviceAssertion_Impl();
    v13 = objc_allocWithZone(active);
    v13[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_valid] = 1;
    *&v13[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_device_] = a1;
    v14 = &v13[OBJC_IVAR___PDRActiveDeviceAssertion_Impl_identifier_];
    *v14 = v4;
    v14[1] = v6;
    v17.receiver = v13;
    v17.super_class = active;

    v15 = a1;
    v16 = objc_msgSendSuper2(&v17, sel_init);
    (*(a2 + 16))(a2, 0, v16);
  }
}

void specialized Registry_Impl.waitForPairingExtendedMetadata(advertisedName:results:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v6 = RegistryCrux.waitForWatchPairingExtendedMetadata(advertisedName:)(a1, a2);
  v8 = v7;

  if (v8)
  {
    v9 = objc_allocWithZone(PDRPairingExtendedMetadata);
    v15 = v8;
    v10 = [v9 init];
    [v10 setChipID_];
    [v10 setPairingVersion_];
    v11 = [v15 productType];
    [v10 setProductType_];

    [v10 setPostFailsafeObliteration_];
    [v10 setIsCellularEnabled_];
    [v10 setEncodedSystemVersion_];
    v12 = *(a3 + 16);
    v13 = v10;
    v12(a3, v6 & 1, v13);
  }

  else
  {
    v14 = *(a3 + 16);

    v14(a3, v6 & 1, 0);
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL static WeakCollection.Weak.== infix(_:_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t WeakCollection.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for WeakCollection.Weak(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeakCollection.Weak(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void specialized WeakCollection.sweep(action:)(uint64_t a1, void *a2, void **a3, uint64_t a4, _BYTE *a5)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (!*(v8 + 16))
  {
    return;
  }

  v9 = 0;
  while (1)
  {
    outlined init with copy of RegistryState.LoggingInfo?(v8 + 8 * v9 + 32, v20, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of UUID?(v20, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    if (Strong)
    {
      break;
    }

    swift_beginAccess();
    v11 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
      *(a1 + 16) = v11;
    }

    v13 = v11[2];
    if (v9 >= v13)
    {
      __break(1u);
      goto LABEL_17;
    }

    v14 = v13 - 1;
    outlined destroy of UUID?(&v11[v9 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    swift_arrayInitWithTakeFrontToBack();
    v11[2] = v14;
    *(a1 + 16) = v11;
    swift_endAccess();
LABEL_8:
    v8 = *(a1 + 16);
    if (v9 >= *(v8 + 16))
    {
      return;
    }
  }

  if (Strong != a2)
  {

    ++v9;
    goto LABEL_8;
  }

  v15 = *a3;
  *a3 = a2;
  a3 = Strong;

  swift_beginAccess();
  a2 = *(a4 + 16);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_13;
  }

LABEL_17:
  a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
LABEL_13:
  v16 = a2[2];
  if (v9 >= v16)
  {
    __break(1u);
  }

  else
  {
    v17 = v16 - 1;
    outlined destroy of UUID?(&a2[v9 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo11PDRRegistryC_GMR);
    swift_arrayInitWithTakeFrontToBack();
    a2[2] = v17;
    *(a4 + 16) = a2;
    swift_endAccess();
    *a5 = 1;
  }
}

uint64_t specialized WeakCollection.sweep(action:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _BYTE *a5)
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  if (!*(v9 + 16))
  {
    return result;
  }

  v10 = 0;
  while (1)
  {
    outlined init with copy of RegistryState.LoggingInfo?(v9 + 8 * v10 + 32, v21, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of UUID?(v21, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    if (Strong)
    {
      break;
    }

    swift_beginAccess();
    v12 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      *(a1 + 16) = v12;
    }

    v14 = v12[2];
    if (v10 >= v14)
    {
      __break(1u);
      goto LABEL_17;
    }

    v15 = v14 - 1;
    outlined destroy of UUID?(&v12[v10 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    swift_arrayInitWithTakeFrontToBack();
    v12[2] = v15;
    *(a1 + 16) = v12;
    result = swift_endAccess();
LABEL_8:
    v9 = *(a1 + 16);
    if (v10 >= *(v9 + 16))
    {
      return result;
    }
  }

  if (Strong != a2)
  {
    result = swift_unknownObjectRelease();
    ++v10;
    goto LABEL_8;
  }

  v16 = *a3;
  *a3 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  a3 = *(a4 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_13;
  }

LABEL_17:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
  a3 = result;
LABEL_13:
  v17 = a3[2];
  if (v10 >= v17)
  {
    __break(1u);
  }

  else
  {
    v18 = v17 - 1;
    outlined destroy of UUID?(&a3[v10 + 4], &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMd, &_s20PairedDeviceRegistry14WeakCollectionC0D0VySo19PDRRegistryDelegate_p_GMR);
    swift_arrayInitWithTakeFrontToBack();
    a3[2] = v18;
    *(a4 + 16) = a3;
    swift_endAccess();
    *a5 = 1;
    return swift_unknownObjectRelease();
  }

  return result;
}

id ActiveDeviceAssertion_Impl.__deallocating_deinit()
{
  [v0 invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActiveDeviceAssertion_Impl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}