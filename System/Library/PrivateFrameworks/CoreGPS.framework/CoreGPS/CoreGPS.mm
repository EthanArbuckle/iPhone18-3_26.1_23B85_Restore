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

uint64_t CoreGPSDevice._client.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t CoreGPSDevice.sendRequest(request:)()
{
  result = (*(*v0 + 88))();
  if (result)
  {
    dispatch thunk of GPSXPCClient.send(_:)();
  }

  return result;
}

uint64_t GPSXPCClient.send(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = v34 - v12;
  v14 = *(v3 + 16);
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in GPSXPCClient.send(_:);
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);

  v16 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6GPSXPC14GPSXPCProtocol_pMd, &_s6GPSXPC14GPSXPCProtocol_pMR);
  if (swift_dynamicCast())
  {
    v17 = v34[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v17 onData_];

    v19 = vxpclog.unsafeMutableAddressor();
    outlined init with copy of Logger?(v19, v13);
    if ((*(v7 + 48))(v13, 1, v6) == 1)
    {
      swift_unknownObjectRelease();
      return outlined destroy of Logger?(v13, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
    }

    else
    {
      outlined copy of Data._Representation(a1, a2);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      outlined consume of Data._Representation(a1, a2);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136446210;
        v31 = Data.description.getter();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, aBlock);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_22D06E000, v27, v28, "client,sent %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x2318C7D60](v30, -1, -1);
        MEMORY[0x2318C7D60](v29, -1, -1);
      }

      swift_unknownObjectRelease();

      return (*(v7 + 8))(v13, v6);
    }
  }

  else
  {
    v21 = xpclog.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v21, v6);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      *(v24 + 4) = v14;
      *v25 = v14;
      v26 = v14;
      _os_log_impl(&dword_22D06E000, v22, v23, "remoteObjectProxyWithErrorHandler failed%{public}@", v24, 0xCu);
      outlined destroy of Logger?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2318C7D60](v25, -1, -1);
      MEMORY[0x2318C7D60](v24, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }
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

uint64_t sub_22D06FAFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D06FB34()
{
  MEMORY[0x2318C7D90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t key path getter for CoreGPSDevice._client : CoreGPSDevice@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CoreGPSDevice._client : CoreGPSDevice(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t CoreGPSDevice._client.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t CoreGPSDevice.__allocating_init(queue:callbackIndication:callbackInterrupt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  CoreGPSDevice.init(queue:callbackIndication:callbackInterrupt:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t CoreGPSDevice.init(queue:callbackIndication:callbackInterrupt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  *(v6 + 16) = 0;
  if (!isAvailable()())
  {
    v17 = gpslog.unsafeMutableAddressor();
    (*(v10 + 16))(v16, v17, v9);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = a4;
      v21 = a5;
      v22 = v20;
      *v20 = 0;
      _os_log_impl(&dword_22D06E000, v18, v19, "isAvailable() returned false. Please check this function before using CoreGPS. But inited anyway!!!", v20, 2u);
      v23 = v22;
      a5 = v21;
      a4 = v35;
      MEMORY[0x2318C7D60](v23, -1, -1);
    }

    (*(v10 + 8))(v16, v9);
  }

  v24 = gpslog.unsafeMutableAddressor();
  (*(v10 + 16))(v14, v24, v9);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22D06E000, v25, v26, "CoreGPSDevice,init", v27, 2u);
    MEMORY[0x2318C7D60](v27, -1, -1);
  }

  (*(v10 + 8))(v14, v9);
  v28 = type metadata accessor for GPSXPCClient();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = GPSXPCClient.init(queue:onData:onInterrupt:)(v36, v37, v38, a4, a5);
  swift_beginAccess();
  v32 = *(v6 + 16);
  *(v6 + 16) = v31;

  return v6;
}

uint64_t CoreGPSDevice.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CoreGPSDevice.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t one-time initialization function for gpslog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, gpslog);
  __swift_project_value_buffer(v0, gpslog);
  return Logger.init(subsystem:category:)();
}

uint64_t gpslog.unsafeMutableAddressor()
{
  if (one-time initialization token for gpslog != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, gpslog);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Bool __swiftcall isAvailable()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x2318C7960](0xD000000000000011, 0x800000022D074F80);
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v25 = 0u;
    v26 = 0u;
    outlined destroy of Any?(&v25);
    v25 = 0u;
    v26 = 0u;
LABEL_24:
    outlined destroy of Any?(&v25);
    goto LABEL_25;
  }

  v3 = v2;
  v4 = MEMORY[0x2318C7960](0xD000000000000015, 0x800000022D074FA0);
  v5 = [v3 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v23;
      if (one-time initialization token for gpslog != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, gpslog);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 67240192;
        *(v10 + 4) = v23;
        _os_log_impl(&dword_22D06E000, v8, v9, "CoreGPS,forceAvailable,%{BOOL,public}d", v10, 8u);
        MEMORY[0x2318C7D60](v10, -1, -1);
      }

      return v6;
    }
  }

  else
  {
    outlined destroy of Any?(&v25);
  }

  v11 = v3;
  v12 = MEMORY[0x2318C7960](0x636167654C657355, 0xEF63705862694C79);
  v13 = [v11 objectForKey_];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    if (one-time initialization token for gpslog != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, gpslog);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67240192;
      *(v17 + 4) = v23;
      _os_log_impl(&dword_22D06E000, v15, v16, "CoreGPS,useLegacyLibXpc,%{BOOL,public}d", v17, 8u);
      MEMORY[0x2318C7D60](v17, -1, -1);
    }

    return v23 ^ 1;
  }

LABEL_25:
  if (one-time initialization token for gpslog != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, gpslog);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67240192;
    v6 = 1;
    *(v21 + 4) = 1;
    _os_log_impl(&dword_22D06E000, v19, v20, "CoreGPS,isAvailable,default,%{BOOL,public}d", v21, 8u);
    MEMORY[0x2318C7D60](v21, -1, -1);
  }

  else
  {

    return 1;
  }

  return v6;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t GPSXPCClient._callbackData.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t GPSXPCClient._callbackInterrupt.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t GPSXPCClient.__allocating_init(queue:onData:onInterrupt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  GPSXPCClient.init(queue:onData:onInterrupt:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t GPSXPCClient.init(queue:onData:onInterrupt:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v58 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v54 - v17;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  type metadata accessor for ALServiceDelegate();
  v54[1] = a3;

  v54[3] = a5;

  v19 = static ALServiceDelegate.serviceName()();
  v21 = v20;
  v22 = xpclog.unsafeMutableAddressor();
  v23 = *(v13 + 16);
  v56 = v22;
  v57 = v13 + 16;
  v55 = v23;
  (v23)(v18);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v26 = os_log_type_enabled(v24, v25);
  v54[2] = v13;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v54[0] = a1;
    v28 = v12;
    v29 = v13;
    v30 = v27;
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136446210;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &aBlock);
    _os_log_impl(&dword_22D06E000, v24, v25, "Try connecting xpc service %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x2318C7D60](v31, -1, -1);
    MEMORY[0x2318C7D60](v30, -1, -1);

    v32 = v29;
    v12 = v28;
    a1 = v54[0];
  }

  else
  {

    v32 = v13;
  }

  v33 = *(v32 + 8);
  v33(v18, v12);
  v34 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v35 = MEMORY[0x2318C7960](v19, v21);

  v36 = [v34 initWithMachServiceName:v35 options:0];

  *(v6 + 16) = v36;
  [v36 setExportedObject_];
  v37 = *(v6 + 16);
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 interfaceWithProtocol_];
  [v39 setExportedInterface_];

  v41 = *(v6 + 16);
  v42 = [v38 interfaceWithProtocol_];
  [v41 setRemoteObjectInterface_];

  v43 = *(v6 + 16);
  v63 = partial apply for implicit closure #3 in implicit closure #2 in GPSXPCClient.init(queue:onData:onInterrupt:);
  v64 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = thunk for @escaping @callee_guaranteed () -> ();
  v62 = &block_descriptor;
  v44 = _Block_copy(&aBlock);
  v45 = v43;

  [v45 setInterruptionHandler_];
  _Block_release(v44);

  v46 = *(v6 + 16);
  v63 = partial apply for implicit closure #5 in implicit closure #4 in GPSXPCClient.init(queue:onData:onInterrupt:);
  v64 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = thunk for @escaping @callee_guaranteed () -> ();
  v62 = &block_descriptor_3;
  v47 = _Block_copy(&aBlock);

  v48 = v46;

  [v48 setInvalidationHandler_];
  _Block_release(v47);

  [*(v6 + 16) _setQueue_];
  v49 = v58;
  [*(v6 + 16) activate];
  v55(v49, v56, v12);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 67240192;
    *(v52 + 4) = [*(v6 + 16) processIdentifier];

    _os_log_impl(&dword_22D06E000, v50, v51, "Connected to xpc service pid: %{public}d", v52, 8u);
    MEMORY[0x2318C7D60](v52, -1, -1);
  }

  else
  {
  }

  v33(v49, v12);
  return v6;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t GPSXPCClient.onData(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v23 - v7;
  v9 = vxpclog.unsafeMutableAddressor();
  outlined init with copy of Logger?(v9, v8);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    outlined destroy of Logger?(v8, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    outlined consume of Data._Representation(a1, a2);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = v13;
      v15 = v14;
      v24 = swift_slowAlloc();
      v26 = v24;
      *v15 = 136315138;
      v16 = Data.description.getter();
      v18 = v3;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v26);

      *(v15 + 4) = v19;
      v3 = v18;
      _os_log_impl(&dword_22D06E000, v12, v25, "client,receive %s", v15, 0xCu);
      v20 = v24;
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x2318C7D60](v20, -1, -1);
      MEMORY[0x2318C7D60](v15, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  v21 = *(v3 + 32);
  return (*(v3 + 24))(a1, a2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t GPSXPCClient.interruptionHandler()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = xpclog.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v7, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = *(v1 + 16);
    *(v10 + 4) = v12;
    *v11 = v12;
    v13 = v12;
    _os_log_impl(&dword_22D06E000, v8, v9, "client,interruptionHandler %{public}@", v10, 0xCu);
    outlined destroy of Logger?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2318C7D60](v11, -1, -1);
    MEMORY[0x2318C7D60](v10, -1, -1);
  }

  v14 = (*(v3 + 8))(v6, v2);
  v15 = *(v1 + 48);
  return (*(v1 + 40))(v14);
}

uint64_t GPSXPCClient.invalidationHandler()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = xpclog.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v7, v2);
  swift_retain_n();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = *(v1 + 16);
    *(v10 + 4) = v12;
    *v11 = v12;
    *(v10 + 12) = 1024;
    v13 = [v12 processIdentifier];

    *(v10 + 14) = v13;

    _os_log_impl(&dword_22D06E000, v8, v9, "client,invalidationHandler %@, pid %d exits", v10, 0x12u);
    outlined destroy of Logger?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2318C7D60](v11, -1, -1);
    MEMORY[0x2318C7D60](v10, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t GPSXPCClient.proxyErrorHandler(error:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = xpclog.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22D06E000, v9, v10, "proxyErrorHandler: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2318C7D60](v12, -1, -1);
    MEMORY[0x2318C7D60](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t GPSXPCClient.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t GPSXPCClient.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined destroy of Logger?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t one-time initialization function for xpc()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static GPSXPCLogger.xpc);
  __swift_project_value_buffer(v0, static GPSXPCLogger.xpc);
  return Logger.init(subsystem:category:)();
}

uint64_t static GPSXPCLogger.xpc.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for xpc != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static GPSXPCLogger.xpc);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for xpclog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, xpclog);
  v1 = __swift_project_value_buffer(v0, xpclog);
  if (one-time initialization token for xpc != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static GPSXPCLogger.xpc);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t GPSXPCLogger.xpc.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t xpclog.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, xpclog);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for vxpclog()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  __swift_allocate_value_buffer(v0, vxpclog);
  v1 = __swift_project_value_buffer(v0, vxpclog);
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t vxpclog.unsafeMutableAddressor()
{
  if (one-time initialization token for vxpclog != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);

  return __swift_project_value_buffer(v0, vxpclog);
}

uint64_t vxpclog.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for vxpclog != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v3 = __swift_project_value_buffer(v2, vxpclog);
  return outlined init with copy of Logger?(v3, a1, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
}

void NSXPCConnection.onData(_:)()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  aBlock[4] = partial apply for implicit closure #2 in implicit closure #1 in NSXPCConnection.onData(_:);
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_0;
  v2 = _Block_copy(aBlock);
  v3 = v0;

  v4 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6GPSXPC14GPSXPCProtocol_pMd, &_s6GPSXPC14GPSXPCProtocol_pMR);
  if (swift_dynamicCast())
  {
    v5.super.isa = Data._bridgeToObjectiveC()().super.isa;
    [v9 onData_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for xpclog != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, xpclog);
    v5.super.isa = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5.super.isa, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22D06E000, v5.super.isa, v7, "Invalid proxy", v8, 2u);
      MEMORY[0x2318C7D60](v8, -1, -1);
    }
  }
}

void partial apply for implicit closure #2 in implicit closure #1 in NSXPCConnection.onData(_:)(void *a1)
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, xpclog);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22D06E000, oslog, v4, "proxyErrorHandler: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2318C7D60](v6, -1, -1);
    MEMORY[0x2318C7D60](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t ALServiceDelegate._dataService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__dataService;
  swift_beginAccess();
  return outlined init with copy of GPSXPCDataService(v1 + v3, a1);
}

uint64_t ALServiceDelegate._dataService.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__dataService;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of GPSXPCDataService(a1, v1 + v3);
  return swift_endAccess();
}

char *ALServiceDelegate.init(queue:dataService:)(void *a1, uint64_t *a2)
{
  *&v2[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__queue] = a1;
  outlined init with copy of GPSXPCDataService(a2, &v2[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__dataService]);
  v5 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v6 = a1;
  v7 = MEMORY[0x2318C7960](0x6C7070612E6D6F63, 0xEE00647370672E65);
  v8 = [v5 initWithMachServiceName_];

  *&v2[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__listener] = v8;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for ALServiceDelegate();
  v9 = objc_msgSendSuper2(&v21, sel_init);
  v10 = OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__listener;
  v11 = *&v9[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__listener];
  v12 = *&v9[OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__queue];
  v13 = v9;
  [v11 _setQueue_];
  [*&v9[v10] setDelegate_];
  [*&v9[v10] activate];
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, xpclog);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136446210;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C7070612E6D6F63, 0xEE00647370672E65, &v20);
    _os_log_impl(&dword_22D06E000, v15, v16, "serviceName %{public}s started", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2318C7D60](v18, -1, -1);
    MEMORY[0x2318C7D60](v17, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v13;
}

Swift::Bool __swiftcall ALServiceDelegate.checkEntitlement(_:)(NSXPCConnection a1)
{
  v2 = MEMORY[0x2318C7960](0x6C7070612E6D6F63, 0xEE00647370672E65);
  v3 = [(objc_class *)a1.super.isa valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  outlined init with copy of Logger?(v17, &v15, &_sypSgMd, &_sypSgMR);
  if (!*(&v16 + 1))
  {
    outlined destroy of Logger?(&v15, &_sypSgMd, &_sypSgMR);
LABEL_12:
    if (one-time initialization token for xpclog != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, xpclog);
    v5 = a1.super.isa;
    v6 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240192;
      *(v12 + 4) = [(objc_class *)v5 processIdentifier];

      _os_log_impl(&dword_22D06E000, v6, v11, "Entitlement check failed for pid:%{public}d, connection rejected", v12, 8u);
      MEMORY[0x2318C7D60](v12, -1, -1);
      v9 = 0;
      goto LABEL_18;
    }

    v9 = 0;
LABEL_17:
    v6 = v5;
    goto LABEL_18;
  }

  if (!swift_dynamicCast() || (v14 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, xpclog);
  v5 = a1.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v6, v7))
  {

    v9 = 1;
    goto LABEL_17;
  }

  v8 = swift_slowAlloc();
  *v8 = 67240192;
  *(v8 + 4) = [(objc_class *)v5 processIdentifier];

  _os_log_impl(&dword_22D06E000, v6, v7, "Entitlement check passed for pid: %{public}d", v8, 8u);
  MEMORY[0x2318C7D60](v8, -1, -1);
  v9 = 1;
LABEL_18:

  outlined destroy of Logger?(v17, &_sypSgMd, &_sypSgMR);
  return v9;
}

uint64_t ALServiceDelegate.onData(_:)(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x277D85000] & *v2) + 0x68))(v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 24))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

Swift::Void __swiftcall ALServiceDelegate.onInterrupt()()
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, xpclog);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22D06E000, oslog, v1, "service,onInterrupt", v2, 2u);
    MEMORY[0x2318C7D60](v2, -1, -1);
  }
}

void ALServiceDelegate.interruptionHandler(_:)(void *a1, const char *a2)
{
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, xpclog);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = a1;
    v10 = v5;
    _os_log_impl(&dword_22D06E000, v6, v7, a2, v8, 0xCu);
    outlined destroy of Logger?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2318C7D60](v9, -1, -1);
    MEMORY[0x2318C7D60](v8, -1, -1);
  }

  ALServiceDelegate.disconnectHandler(_:)(a1);
}

void ALServiceDelegate.disconnectHandler(_:)(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = one-time initialization token for xpclog;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, xpclog);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      *(v10 + 4) = v7;
      *v11 = a1;
      v12 = v7;
      _os_log_impl(&dword_22D06E000, v8, v9, "service,disconnectHandler,%{public}@", v10, 0xCu);
      outlined destroy of Logger?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2318C7D60](v11, -1, -1);
      MEMORY[0x2318C7D60](v10, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v2) + 0x68))(v20);
    v13 = v21;
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v14 + 16))(v7, v13, v14);

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    if (one-time initialization token for xpclog != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, xpclog);
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      *(v17 + 4) = 0;
      *v18 = 0;
      _os_log_impl(&dword_22D06E000, oslog, v16, "service,disconnectHandler,%{public}@", v17, 0xCu);
      outlined destroy of Logger?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2318C7D60](v18, -1, -1);
      MEMORY[0x2318C7D60](v17, -1, -1);
    }
  }
}

id ALServiceDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ALServiceDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with copy of GPSXPCDataService(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of GPSXPCDataService(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized ALServiceDelegate.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for xpclog != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, xpclog);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 67240450;
    *(v8 + 4) = [v5 processIdentifier];

    *(v8 + 8) = 2114;
    *(v8 + 10) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_22D06E000, v6, v7, "New XPC Connection from process:%{public}d, details:(%{public}@)", v8, 0x12u);
    outlined destroy of Logger?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2318C7D60](v9, -1, -1);
    MEMORY[0x2318C7D60](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v2) + 0x90))(v5);
  if (v12)
  {
    [v5 setExportedObject:v2];
    v13 = objc_opt_self();
    v14 = [v13 interfaceWithProtocol_];
    [v5 setExportedInterface:v14];

    v15 = [v13 interfaceWithProtocol_];
    [v5 setRemoteObjectInterface:v15];

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = v16;
    v37 = partial apply for closure #1 in ALServiceDelegate.listener(_:shouldAcceptNewConnection:);
    v38 = v17;
    v33 = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = thunk for @escaping @callee_guaranteed () -> ();
    v36 = &block_descriptor_14;
    v18 = _Block_copy(&v33);
    v19 = v2;

    [v5 setInterruptionHandler:v18];
    _Block_release(v18);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v37 = partial apply for closure #2 in ALServiceDelegate.listener(_:shouldAcceptNewConnection:);
    v38 = v21;
    v33 = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = thunk for @escaping @callee_guaranteed () -> ();
    v36 = &block_descriptor_21;
    v22 = _Block_copy(&v33);
    v23 = v19;

    [v5 setInvalidationHandler:v22];
    _Block_release(v22);
    [v5 _setQueue:*(v23 + OBJC_IVAR____TtC6GPSXPC17ALServiceDelegate__queue)];
    [v5 activate];
    v24 = v5;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 67240450;
      *(v27 + 4) = [v24 processIdentifier];

      *(v27 + 8) = 2114;
      *(v27 + 10) = v24;
      *v28 = v5;
      v29 = v24;
      _os_log_impl(&dword_22D06E000, v25, v26, "Activated Connection from process:%{public}d, details:(%{public}@)", v27, 0x12u);
      outlined destroy of Logger?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2318C7D60](v28, -1, -1);
      MEMORY[0x2318C7D60](v27, -1, -1);
    }

    else
    {

      v25 = v24;
    }

    (*((*v11 & *v23) + 0x68))(&v33);
    v30 = v36;
    v31 = v37;
    __swift_project_boxed_opaque_existential_1(&v33, v36);
    (*(v31 + 1))(v24, v30, v31);
    __swift_destroy_boxed_opaque_existential_0(&v33);
  }

  return v12 & 1;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void partial apply for closure #1 in ALServiceDelegate.listener(_:shouldAcceptNewConnection:)(void (*a1)(void))
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}