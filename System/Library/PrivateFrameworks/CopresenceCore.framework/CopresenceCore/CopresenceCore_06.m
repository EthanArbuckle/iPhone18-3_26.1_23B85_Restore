uint64_t PluginRpcStream.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for NWConnection.SendCompletion();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NWConnection.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v29 = direct field offset for PluginRpcStream.inputSubscriber;
  v14 = *(**(v0 + direct field offset for PluginRpcStream.inputSubscriber) + 216);

  v14(v15);

  v16 = direct field offset for PluginRpcStream.stream;
  swift_beginAccess();
  if (*(v0 + v16))
  {
    v27 = v2;

    NWConnection.state.getter();
    (*(v7 + 104))(v11, *MEMORY[0x1E6977C00], v6);
    v17 = MEMORY[0x1B270F7E0](v13, v11);
    v18 = *(v7 + 8);
    v18(v11, v6);
    v18(v13, v6);
    if (v17)
    {
      type metadata accessor for NWConnection.ContentContext();
      static NWConnection.ContentContext.finalMessage.getter();
      *v5 = destructiveProjectEnumData for ActivitySession.Errors;
      v5[1] = 0;
      v19 = v27;
      v20 = v28;
      (*(v28 + 104))(v5, *MEMORY[0x1E6977BF8], v27);
      NWConnection.send(content:contentContext:isComplete:completion:)();

      (*(v20 + 8))(v5, v19);
    }

    else
    {
    }
  }

  v21 = *(v1 + 24);

  outlined destroy of NSObject?(v1 + direct field offset for PluginRpcStream.traceId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(v1 + direct field offset for PluginRpcStream.output);

  v23 = *(v1 + v29);

  v24 = *(v1 + direct field offset for PluginRpcStream.cancellable);

  v25 = *(v1 + v16);

  return v1;
}

uint64_t PluginRpcStream.__deallocating_deinit()
{
  PluginRpcStream.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void PluginRpcStream.start(stream:)()
{
  v1 = *(*v0 + 192);
  v2 = *v0 + 192;

  v1(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v2 - 112);
  *(v5 + 24) = *(v2 - 104);
  *(v5 + 40) = *(v2 - 88);
  *(v5 + 48) = v4;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(partial apply for closure #1 in PluginRpcStream.start(stream:));
  NWConnection.stateUpdateHandler.setter();

  PluginRpcStream.sendPath()();
}

uint64_t closure #1 in PluginRpcStream.start(stream:)(uint64_t a1)
{
  v2 = type metadata accessor for PluginRpcError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWConnection.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NWError();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v7 + 16))(v10, a1, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6977C10])
    {
      (*(v7 + 96))(v10, v6);
      (*(v12 + 32))(v15, v10, v11);
      (*(v12 + 16))(v5, v15, v11);
      (*(v12 + 56))(v5, 0, 3, v11);
      swift_storeEnumTagMultiPayload();
      PluginRpcStream.terminate(error:)(v5);

      outlined destroy of PluginRpcError(v5, type metadata accessor for PluginRpcError);
      return (*(v12 + 8))(v15, v11);
    }

    else
    {

      return (*(v7 + 8))(v10, v6);
    }
  }

  return result;
}

void PluginRpcStream.sendPath()()
{
  v1 = v0;
  v39 = type metadata accessor for NWConnection.SendCompletion();
  isa = v39[-1].isa;
  v3 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for PluginProtocolHeader();
  v6 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, log);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v38 = v8;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40[0] = v14;
    *v13 = 136315138;
    v15 = PluginRpcStream.description.getter();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v40);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1AEB26000, v10, v11, "RPC %s sending path", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  else
  {
  }

  if ((*(*v1 + 184))())
  {
    v19 = *(v1 + 2);
    v20 = *(v1 + 3);

    v21 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v19, v20);
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1AEE07B40;
    type metadata accessor for NWProtocolFramer.Message();
    v25 = v38;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + direct field offset for PluginRpcStream.traceId, v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v26 = v37;
    swift_storeEnumTagMultiPayload();
    if (one-time initialization token for definition != -1)
    {
      swift_once();
    }

    v27 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
    v40[3] = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    outlined init with copy of PluginRpcError(v25, boxed_opaque_existential_1, type metadata accessor for PluginProtocolHeader);

    dispatch thunk of NWProtocolFramer.Message.subscript.setter();

    outlined destroy of PluginRpcError(v25, type metadata accessor for PluginProtocolHeader);
    *(v24 + 32) = v27;
    v29 = type metadata accessor for NWConnection.ContentContext();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    outlined copy of Data._Representation(v21, v23);
    NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
    *v5 = partial apply for closure #1 in PluginRpcStream.sendPath();
    v5[1] = v1;
    v32 = v39;
    (*(isa + 13))(v5, *MEMORY[0x1E6977BF8], v39);

    NWConnection.send(content:contentContext:isComplete:completion:)();

    outlined consume of Data._Representation(v21, v23);

    outlined consume of Data._Representation(v21, v23);
    (*(isa + 1))(v5, v32);
  }

  else
  {
    v39 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1AEB26000, v39, v33, "PluginRpcStream.sendPath: Stream not yet started", v34, 2u);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    v35 = v39;
  }
}

void closure #1 in PluginRpcStream.sendPath()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16[-v6];
  v8 = type metadata accessor for NWError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v13 = outlined destroy of NSObject?(v7, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    (*(**(a2 + direct field offset for PluginRpcStream.inputSubscriber) + 208))(v13);
    PluginRpcStream.receiveNextResponse()();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type NWError and conformance NWError, MEMORY[0x1E6977D78]);
    v14 = swift_allocError();
    (*(v9 + 16))(v15, v12, v8);
    v16[0] = 13;
    v17 = v14;
    v18 = 0xD000000000000013;
    v19 = 0x80000001AEE30ED0;
    PluginRpcStream.terminate(status:)(v16);

    (*(v9 + 8))(v12, v8);
  }
}

void PluginRpcStream.sendNextRequest(_:)(uint64_t a1)
{
  v2 = v1;
  v63 = *v1;
  v4 = v63;
  v5 = type metadata accessor for NWConnection.SendCompletion();
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = (v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PluginProtocolHeader();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v59 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v56 - v15;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, log);
  (*(v13 + 16))(v16, a1, v12);

  v62 = v18;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v58 = v8;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v57 = v5;
    v23 = v22;
    v24 = swift_slowAlloc();
    v56[1] = a1;
    v25 = v24;
    v64[0] = v24;
    *v23 = 136315395;
    v26 = PluginRpcStream.description.getter();
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v64);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2081;
    v30 = *(*(v63 + 96) + 8);
    v31 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    v33 = v32;
    (*(v13 + 8))(v16, v12);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v64);

    *(v23 + 14) = v34;
    _os_log_impl(&dword_1AEB26000, v19, v20, "RPC %s sending request message %{private}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v25, -1, -1);
    v35 = v23;
    v5 = v57;
    MEMORY[0x1B27120C0](v35, -1, -1);
  }

  else
  {

    v36 = (*(v13 + 8))(v16, v12);
  }

  if ((*(*v2 + 184))(v36))
  {
    v37 = *(v63 + 96);
    v38 = Message.serializedData(partial:)();
    v43 = v42;
    v44 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1AEE07B40;
    type metadata accessor for NWProtocolFramer.Message();
    v46 = v58;
    v47 = v59;
    swift_storeEnumTagMultiPayload();
    if (one-time initialization token for definition != -1)
    {
      swift_once();
    }

    v48 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
    v64[3] = v46;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
    outlined init with copy of PluginRpcError(v47, boxed_opaque_existential_1, type metadata accessor for PluginProtocolHeader);

    dispatch thunk of NWProtocolFramer.Message.subscript.setter();

    outlined destroy of PluginRpcError(v47, type metadata accessor for PluginProtocolHeader);
    *(v45 + 32) = v48;
    v50 = type metadata accessor for NWConnection.ContentContext();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v53 = v44;
    outlined copy of Data._Representation(v44, v43);
    NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
    v55 = v60;
    v54 = v61;
    *v60 = partial apply for closure #1 in PluginRpcStream.sendNextRequest(_:);
    v55[1] = v2;
    (*(v54 + 104))(v55, *MEMORY[0x1E6977BF8], v5);

    NWConnection.send(content:contentContext:isComplete:completion:)();

    outlined consume of Data._Representation(v53, v43);

    outlined consume of Data._Representation(v53, v43);
    (*(v54 + 8))(v55, v5);
  }

  else
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1AEB26000, v39, v40, "PluginRpcStream.sendNextRequest: Stream not yet started", v41, 2u);
      MEMORY[0x1B27120C0](v41, -1, -1);
    }
  }
}

uint64_t closure #1 in PluginRpcStream.sendNextRequest(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for NWError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v13 = outlined destroy of NSObject?(v7, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    return (*(**(a2 + direct field offset for PluginRpcStream.inputSubscriber) + 208))(v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type NWError and conformance NWError, MEMORY[0x1E6977D78]);
    v15 = swift_allocError();
    (*(v9 + 16))(v16, v12, v8);
    v17[0] = 13;
    v18 = v15;
    v19 = 0xD00000000000001ELL;
    v20 = 0x80000001AEE30EB0;
    PluginRpcStream.terminate(status:)(v17);

    return (*(v9 + 8))(v12, v8);
  }
}

void PluginRpcStream.receiveNextResponse()()
{
  v1 = *v0;
  if ((*(*v0 + 184))())
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = *(v1 + 80);
    *(v3 + 24) = *(v1 + 88);
    *(v3 + 40) = *(v1 + 104);
    *(v3 + 48) = v2;

    NWConnection.receiveMessage(completion:)();
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, log);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1AEB26000, oslog, v5, "PluginRpcStream.receiveNextResponse: Stream not yet started", v6, 2u);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }
  }
}

uint64_t closure #1 in PluginRpcStream.receiveNextResponse()(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v102 = a3;
  v103 = a5;
  v98 = a1;
  v99 = a2;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v90[1] = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BinaryDecodingOptions();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v94 = v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Optional();
  v92 = *(v93 - 8);
  v17 = *(v92 + 64);
  v18 = MEMORY[0x1EEE9AC00](v93);
  v95 = v90 - v19;
  v97 = a8;
  v96 = *(a8 - 8);
  v20 = *(v96 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v90[0] = v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v91 = v90 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v90 - v26;
  v28 = type metadata accessor for PluginProtocolHeader();
  v101 = *(v28 - 8);
  v29 = *(v101 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v100 = v90 - v33;
  v34 = type metadata accessor for PluginRpcError();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = v90 - v40;
  v42 = type metadata accessor for NWError();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = v90 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v48 = result;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v103, v41, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    if ((*(v43 + 48))(v41, 1, v42) != 1)
    {
      (*(v43 + 32))(v46, v41, v42);
      (*(v43 + 16))(v37, v46, v42);
      (*(v43 + 56))(v37, 0, 3, v42);
      swift_storeEnumTagMultiPayload();
      PluginRpcStream.terminate(error:)(v37);

      outlined destroy of PluginRpcError(v37, type metadata accessor for PluginRpcError);
      return (*(v43 + 8))(v46, v42);
    }

    outlined destroy of NSObject?(v41, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    if (!v102)
    {
      goto LABEL_15;
    }

    if (one-time initialization token for definition != -1)
    {
      swift_once();
    }

    v49 = dispatch thunk of NWConnection.ContentContext.protocolMetadata(definition:)();
    if (!v49)
    {
      goto LABEL_15;
    }

    v50 = v49;
    type metadata accessor for NWProtocolFramer.Message();
    if (!swift_dynamicCastClass())
    {

LABEL_15:
      LOBYTE(v104[0]) = 13;
      *(v104 + 8) = xmmword_1AEE09D80;
      *(&v104[1] + 1) = 0x80000001AEE30E10;
      PluginRpcStream.terminate(status:)(v104);
    }

    dispatch thunk of NWProtocolFramer.Message.subscript.getter();
    if (!*(&v104[1] + 1))
    {

      outlined destroy of NSObject?(v104, &_sypSgMd, &_sypSgMR);
      (*(v101 + 56))(v27, 1, 1, v28);
      goto LABEL_14;
    }

    v51 = swift_dynamicCast();
    v52 = v101;
    (*(v101 + 56))(v27, v51 ^ 1u, 1, v28);
    if ((*(v52 + 48))(v27, 1, v28) == 1)
    {

LABEL_14:
      outlined destroy of NSObject?(v27, &_s14CopresenceCore20PluginProtocolHeaderOSgMd, &_s14CopresenceCore20PluginProtocolHeaderOSgMR);
      goto LABEL_15;
    }

    v53 = v100;
    outlined init with take of PluginRpcError(v27, v100, type metadata accessor for PluginProtocolHeader);
    outlined init with copy of PluginRpcError(v53, v32, type metadata accessor for PluginProtocolHeader);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v55 = *v32;
        v56 = v99;
        if (v99 >> 60 == 15)
        {
          v57 = 0;
          v58 = 0;
        }

        else
        {
          v62 = v98;
          outlined copy of Data._Representation(v98, v99);
          static String.Encoding.utf8.getter();
          v57 = String.init(data:encoding:)();
          v58 = v63;
          outlined consume of Data?(v62, v56);
        }

        LOBYTE(v104[0]) = v55;
        *(&v104[0] + 1) = 0;
        *&v104[1] = v57;
        *(&v104[1] + 1) = v58;
        v64 = 0;

        PluginRpcStream.terminate(status:)(v104);

        v59 = v53;
      }

      else
      {
        v105 = 0;
        memset(v104, 0, sizeof(v104));
        outlined copy of Data?(v98, v99);
        v60 = v97;
        default argument 3 of Message.init(serializedData:extensions:partial:options:)(v97, a10);
        v61 = v95;
        Message.init(serializedData:extensions:partial:options:)();
        v65 = v96;
        (*(v96 + 56))(v61, 0, 1, v60);
        v66 = v91;
        (*(v65 + 32))(v91, v61, v60);
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v103 = v50;
        v67 = type metadata accessor for Logger();
        __swift_project_value_buffer(v67, log);
        v68 = v90[0];
        (*(v65 + 16))(v90[0], v66, v60);

        v69 = Logger.logObject.getter();
        v70 = v60;
        v71 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v69, v71))
        {
          v72 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          *&v104[0] = v102;
          *v72 = 136315395;
          LODWORD(v101) = v71;
          v73 = PluginRpcStream.description.getter();
          v74 = v68;
          v75 = v65;
          v77 = v76;

          v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v77, v104);

          *(v72 + 4) = v78;
          *(v72 + 12) = 2081;
          v79 = *(a10 + 8);
          v80 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
          v82 = v81;
          v83 = *(v75 + 8);
          v99 = v69;
          v83(v74, v70);
          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v104);

          *(v72 + 14) = v84;
          v85 = v99;
          _os_log_impl(&dword_1AEB26000, v99, v101, "RPC %s received response message %{private}s", v72, 0x16u);
          v86 = v102;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v86, -1, -1);
          v87 = v72;
          v66 = v91;
          MEMORY[0x1B27120C0](v87, -1, -1);
        }

        else
        {

          v83 = *(v65 + 8);
          v83(v68, v60);
        }

        v88 = *(v48 + direct field offset for PluginRpcStream.output);

        PassthroughSubject.send(_:)();

        PluginRpcStream.receiveNextResponse()(v89);

        v83(v66, v70);
        v59 = v100;
      }
    }

    else
    {
      LOBYTE(v104[0]) = 13;
      *(v104 + 8) = xmmword_1AEE09D70;
      *(&v104[1] + 1) = 0x80000001AEE30E60;
      PluginRpcStream.terminate(status:)(v104);

      outlined destroy of PluginRpcError(v53, type metadata accessor for PluginProtocolHeader);
      v59 = v32;
    }

    return outlined destroy of PluginRpcError(v59, type metadata accessor for PluginProtocolHeader);
  }

  return result;
}

uint64_t PluginRpcStream.terminate(status:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PluginRpcError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  if (*a1)
  {
    v13 = *(a1 + 3);
    *v8 = *a1;
    v28 = *(a1 + 8);
    *(v8 + 8) = v28;
    *(v8 + 3) = v13;
    swift_storeEnumTagMultiPayload();
    v14 = v28;

    PluginRpcStream.terminate(error:)(v8);
    return outlined destroy of PluginRpcError(v8, type metadata accessor for PluginRpcError);
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, log);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;

      v21 = PluginRpcStream.description.getter();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v29);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1AEB26000, v17, v18, "RPC %s terminating successfully", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1B27120C0](v20, -1, -1);
      MEMORY[0x1B27120C0](v19, -1, -1);
    }

    else
    {
    }

    v25 = *(v2 + direct field offset for PluginRpcStream.output);
    (*(v5 + 56))(v12, 1, 1, v4);
    PassthroughSubject.send(completion:)();
    v26 = outlined destroy of NSObject?(v12, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    v27 = (*(*v2 + 160))(v26);
    if (v27)
    {
      AnyCancellable.cancel()();
    }

    result = (*(*v2 + 184))(v27);
    if (result)
    {
      NWConnection.cancel()();
    }
  }

  return result;
}

uint64_t PluginRpcStream.terminate(error:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for PluginRpcError();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v45 - v23;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, log);
  outlined init with copy of PluginRpcError(a1, v24, type metadata accessor for PluginRpcError);

  v26 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v52))
  {
    v46 = v19;
    v48 = v26;
    v51 = a1;
    v27 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54 = v47;
    *v27 = 136315394;

    v28 = PluginRpcStream.description.getter();
    v29 = v14;
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, &v54);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    outlined init with copy of PluginRpcError(v24, v13, type metadata accessor for PluginRpcError);
    (*(v15 + 56))(v13, 0, 1, v29);
    v33 = v53;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v53, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    v49 = v15;
    v34 = (*(v15 + 48))(v33, 1, v29);
    v50 = v29;
    if (v34 == 1)
    {
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      outlined init with take of PluginRpcError(v33, v22, type metadata accessor for PluginRpcError);
      outlined init with copy of PluginRpcError(v22, v46, type metadata accessor for PluginRpcError);
      v36 = String.init<A>(reflecting:)();
      v35 = v37;
      outlined destroy of PluginRpcError(v22, type metadata accessor for PluginRpcError);
    }

    outlined destroy of NSObject?(v13, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    outlined destroy of PluginRpcError(v24, type metadata accessor for PluginRpcError);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v54);

    *(v27 + 14) = v38;
    v39 = v48;
    _os_log_impl(&dword_1AEB26000, v48, v52, "RPC %s terminating with failure: %s", v27, 0x16u);
    v40 = v47;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v40, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);

    v14 = v50;
    a1 = v51;
    v15 = v49;
  }

  else
  {

    outlined destroy of PluginRpcError(v24, type metadata accessor for PluginRpcError);
  }

  v41 = *(v2 + direct field offset for PluginRpcStream.output);
  outlined init with copy of PluginRpcError(a1, v7, type metadata accessor for PluginRpcError);
  (*(v15 + 56))(v7, 0, 1, v14);
  PassthroughSubject.send(completion:)();
  v42 = outlined destroy of NSObject?(v7, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v43 = (*(*v2 + 160))(v42);
  if (v43)
  {
    AnyCancellable.cancel()();
  }

  result = (*(*v2 + 184))(v43);
  if (result)
  {
    NWConnection.cancel()();
  }

  return result;
}

uint64_t PluginRpcStream.InputSubscriber.rpcStream.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*PluginRpcStream.InputSubscriber.rpcStream.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return PluginRpcStream.InputSubscriber.rpcStream.modify;
}

void PluginRpcStream.InputSubscriber.rpcStream.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void PluginRpcStream.InputSubscriber.receive(subscription:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(*(v3 + 16));
  closure #1 in PluginRpcStream.InputSubscriber.receive(subscription:)(v1, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t closure #1 in PluginRpcStream.InputSubscriber.receive(subscription:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of UserNotificationCenter(a2, v4);
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v4, a1 + 24, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  return swift_endAccess();
}

uint64_t PluginRpcStream.InputSubscriber.receive(_:)(uint64_t a1)
{
  v3 = (*(*v1 + 160))();
  if (v3)
  {
    PluginRpcStream.sendNextRequest(_:)(a1);
  }

  return MEMORY[0x1EEDB5BB8](v3);
}

uint64_t PluginRpcStream.InputSubscriber.receive(completion:)()
{
  v1 = type metadata accessor for NWConnection.SendCompletion();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(*v0 + 160))(v4);
  if (v7)
  {
    v8 = (*(*v7 + 184))(v7);

    if (v8)
    {
      type metadata accessor for NWConnection.ContentContext();
      static NWConnection.ContentContext.finalMessage.getter();
      *v6 = destructiveProjectEnumData for ActivitySession.Errors;
      v6[1] = 0;
      (*(v2 + 104))(v6, *MEMORY[0x1E6977BF8], v1);
      NWConnection.send(content:contentContext:isComplete:completion:)();

      v7 = (*(v2 + 8))(v6, v1);
    }
  }

  return (*(*v0 + 216))(v7);
}

Swift::Void __swiftcall PluginRpcStream.InputSubscriber.requestNextMessage()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + 24, &v2, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  if (v3)
  {
    outlined init with take of ContiguousBytes(&v2, v4);
    os_unfair_lock_unlock(*(v1 + 16));
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    dispatch thunk of Subscription.request(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    outlined destroy of NSObject?(&v2, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
    os_unfair_lock_unlock(*(v1 + 16));
  }
}

Swift::Void __swiftcall PluginRpcStream.InputSubscriber.resetSubscription()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  closure #1 in PluginRpcStream.InputSubscriber.resetSubscription()(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t closure #1 in PluginRpcStream.InputSubscriber.resetSubscription()(uint64_t a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v3, a1 + 24, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  return swift_endAccess();
}

uint64_t PluginRpcStream.InputSubscriber.deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of NSObject?(v0 + 24, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  swift_weakDestroy();
  return v0;
}

uint64_t PluginRpcStream.InputSubscriber.__deallocating_deinit()
{
  PluginRpcStream.InputSubscriber.deinit();

  return swift_deallocClassInstance();
}

uint64_t PluginRpcStream.InputSubscriber.init()()
{
  type metadata accessor for Lock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  swift_weakInit();
  return v0;
}

uint64_t PluginRpcStream.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 96);
  v12 = *(*v3 + 80);
  v13 = v7;
  v8 = type metadata accessor for PluginRpcStream.OutputSubscription();
  swift_allocObject();

  v10 = specialized PluginRpcStream.OutputSubscription.init<A>(stream:subscriber:)(v9, a1, a2, a3);
  v14 = v8;
  WitnessTable = swift_getWitnessTable();
  *&v12 = v10;
  dispatch thunk of Subscriber.receive(subscription:)();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v12);
}

uint64_t PluginRpcStream.OutputSubscription.cancel()()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v2, v0 + 24, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return swift_endAccess();
}

uint64_t PluginRpcStream.OutputSubscription.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  outlined destroy of NSObject?(v0 + 24, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t PluginRpcStream.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + direct field offset for PluginRpcStream.traceId, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of NSObject?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v12 = *(v0 + 24);
    v15[0] = *(v0 + 16);
    v15[1] = v12;

    MEMORY[0x1B2710020](10272, 0xE200000000000000);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v13);

    MEMORY[0x1B2710020](41, 0xE100000000000000);
    v11 = v15[0];
    (*(v6 + 8))(v9, v5);
  }

  return v11;
}

uint64_t *specialized PluginRpcStream.init(definition:input:traceId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *v3;
  v6 = *a1;
  v7 = a1[1];
  v8 = direct field offset for PluginRpcStream.output;
  v9 = *v3;
  v10 = *(*v3 + 88);
  type metadata accessor for PluginRpcError();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginRpcError and conformance PluginRpcError, type metadata accessor for PluginRpcError);
  type metadata accessor for PassthroughSubject();
  *(v3 + v8) = PassthroughSubject.__allocating_init()();
  v11 = direct field offset for PluginRpcStream.inputSubscriber;
  v18 = *(v5 + 80);
  v19 = *(v9 + 96);
  type metadata accessor for PluginRpcStream.InputSubscriber();
  v12 = swift_allocObject();
  PluginRpcStream.InputSubscriber.init()();
  *(v4 + v11) = v12;
  *(v4 + direct field offset for PluginRpcStream.cancellable) = 0;
  *(v4 + direct field offset for PluginRpcStream.stream) = 0;
  v4[2] = v6;
  v4[3] = v7;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v4 + direct field offset for PluginRpcStream.traceId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*v12 + 168);

  v13(v14);

  v17 = *(v4 + direct field offset for PluginRpcStream.inputSubscriber);
  type metadata accessor for AnyPublisher();

  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  outlined destroy of NSObject?(a3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return v4;
}

uint64_t *specialized PluginRpcStream.__allocating_init(definition:input:traceId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v11 = *(v3 + 80);
  v12 = *(v3 + 96);
  v7 = type metadata accessor for PluginRpcStream();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return specialized PluginRpcStream.init(definition:input:traceId:)(a1, a2, a3);
}

uint64_t partial apply for closure #1 in PluginRpcStream.start(stream:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return closure #1 in PluginRpcStream.start(stream:)(a1);
}

uint64_t specialized PluginRpcStream.OutputSubscription.init<A>(stream:subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v31 = a2;
  v7 = *v4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 56) = 0;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  v35 = v4 + 24;
  *(v4 + 16) = v10;
  v13 = *(v10 + direct field offset for PluginRpcStream.output);
  v32 = v10;
  v33 = v13;
  v36[0] = v13;
  v14 = *(v8 + 16);
  v29 = v11;
  v30 = v14;
  (v14)(v12);
  v15 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v34 = v4;
  v28 = v7[10];
  *(v16 + 2) = v28;
  v27 = v7[11];
  *(v16 + 3) = v27;
  *(v16 + 4) = a3;
  v17 = v7[12];
  *(v16 + 5) = v17;
  v18 = v7[13];
  *(v16 + 6) = v18;
  *(v16 + 7) = a4;
  v19 = *(v8 + 32);
  v19(&v16[v15], v12, a3);
  v30(v12, v31, a3);
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 2) = v28;
  *(v20 + 3) = v21;
  *(v20 + 4) = a3;
  *(v20 + 5) = v17;
  v22 = v26;
  *(v20 + 6) = v18;
  *(v20 + 7) = v22;
  v19(&v20[v15], v12, a3);
  type metadata accessor for PluginRpcError();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type PluginRpcError and conformance PluginRpcError, type metadata accessor for PluginRpcError);
  type metadata accessor for PassthroughSubject();

  swift_getWitnessTable();
  v23 = Publisher.sink(receiveCompletion:receiveValue:)();

  v36[3] = type metadata accessor for AnyCancellable();
  v36[4] = MEMORY[0x1E695BF08];

  v36[0] = v23;
  v24 = v35;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v36, v24, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_endAccess();
  return v34;
}

void type metadata completion function for PluginRpcStream()
{
  type metadata accessor for UUID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t outlined init with take of PluginRpcError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PluginRpcError(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PluginRpcError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in PluginRpcStream.OutputSubscription.init<A>(stream:subscriber:)()
{
  v1 = *(v0 + 56);
  v2 = v0 + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80));
  return dispatch thunk of Subscriber.receive(completion:)();
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in PluginRpcStream.OutputSubscription.init<A>(stream:subscriber:)()
{
  v1 = *(v0 + 56);
  v2 = v0 + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80));
  return dispatch thunk of Subscriber.receive(_:)();
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

Swift::Void __swiftcall SharableObjectIdentifier.update(_:)(Swift::Bool a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a1;
  MEMORY[0x1B2710120](&v2, &v3);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t SharableObjectIdentifier.update<A>(_:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = StringProtocol.data(using:allowLossyConversion:)();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    outlined copy of Data._Representation(v5, v7);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v5, v7);
    outlined consume of Data?(v5, v7);
    return outlined consume of Data?(v5, v7);
  }

  return result;
}

Swift::Void __swiftcall SharableObjectIdentifier.update(_:)(Swift::Double a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a1;
  MEMORY[0x1B2710120](&v2, &v3);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  v1 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall SharableObjectIdentifier.update(_:)(Swift::Float a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a1;
  MEMORY[0x1B2710120](&v2, &v3);
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
  dispatch thunk of HashFunction.update(bufferPointer:)();
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t static SharableObjectIdentifier.identifier<A>(ofType:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SharableObjectIdentifier();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  v22[2] = a2;
  v22[3] = a3;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v18 = StringProtocol.data(using:allowLossyConversion:)();
  v20 = v19;
  result = (*(v10 + 8))(v13, v9);
  if (v20 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    outlined copy of Data._Representation(v18, v20);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v18, v20);
    outlined consume of Data?(v18, v20);
    outlined consume of Data?(v18, v20);
    SharableObjectIdentifier.finalize<A>()(a4, a5);
    return outlined destroy of SharableObjectIdentifier(v17);
  }

  return result;
}

uint64_t SharableObjectIdentifier.finalize<A>()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SHA256Digest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  SHA256.finalize()();
  (*(v5 + 16))(v9, v11, v4);
  (*(a2 + 8))(v9, a1, a2);
  return (*(v5 + 8))(v11, v4);
}

uint64_t static SharableObjectIdentifier.identifier<A, B>(ofType:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for SharableObjectIdentifier();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharableObjectIdentifierEncoder();
  v13 = swift_allocObject();
  *(v13 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  SharableObjectIdentifierEncoder.encode<A>(_:)(v12);

  if (!v6)
  {
    SharableObjectIdentifier.finalize<A>()(a4, a6);
    return outlined destroy of SharableObjectIdentifier(v12);
  }

  return result;
}

uint64_t SharableObjectIdentifier.update<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SHA256();
  v7 = lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);

  return MEMORY[0x1EEDBFC88](a1, v6, a2, v7, a3);
}

uint64_t closure #1 in SharableObjectIdentifier.update<A>(_:)()
{
  MEMORY[0x1B2710120]();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t _ss15withUnsafeBytes2of_q0_x_q0_SWq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t UUID.init(digest:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8V_A15BtMd, &_ss5UInt8V_A15BtMR);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  UUID.init(uuid:)();
  v2 = type metadata accessor for SHA256Digest();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

_OWORD *closure #1 in UUID.init(digest:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (result)
  {
    if (a2 - result >= 16)
    {
      *a3 = *result;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SecureHashTruncatable<>.init(digest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a4 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v11 = *(*(a2 - 8) + 64);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v9 = type metadata accessor for SHA256Digest();
  return (*(*(v9 - 8) + 8))(a1, v9);
}

uint64_t specialized closure #1 in SecureHashTruncatable<>.init(digest:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 == a5)
  {
    v5 = a2 - result;
    if (!result)
    {
      v5 = 0;
    }

    if (v5 >= a4)
    {
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      return DataProtocol.copyBytes(to:count:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  if (a4 == a5)
  {
    v5 = a2 - result;
    if (!result)
    {
      v5 = 0;
    }

    if (v5 >= a4)
    {
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      return DataProtocol.copyBytes(to:count:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  if (a4 == a5)
  {
    v5 = a2 - result;
    if (!result)
    {
      v5 = 0;
    }

    if (v5 >= a4)
    {
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      return DataProtocol.copyBytes(to:count:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  if (a4 == a5)
  {
    v5 = a2 - result;
    if (!result)
    {
      v5 = 0;
    }

    if (v5 >= a4)
    {
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      return DataProtocol.copyBytes(to:count:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in SecureHashTruncatable<>.init(digest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 == a4)
  {
    v6 = a6 - a5;
    if (!a5)
    {
      v6 = 0;
    }

    if (v6 >= a3)
    {
      lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
      return DataProtocol.copyBytes(to:count:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int(a1, a2);
}

{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[3] = v7;
  v8 = vdupq_n_s64(8uLL);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v4 = type metadata accessor for SHA256Digest();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  *a2 = v7[0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance UInt@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int(a1, a2);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int8(a1, a2);
}

{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = vdupq_n_s64(1uLL);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v4 = type metadata accessor for SHA256Digest();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  *a2 = v7;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance UInt8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int8(a1, a2);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int16@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int16(a1, a2);
}

{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = vdupq_n_s64(2uLL);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v4 = type metadata accessor for SHA256Digest();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  *a2 = v7;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance UInt16@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int16(a1, a2);
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance Int32@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int32(a1, a2);
}

{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = vdupq_n_s64(4uLL);
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v4 = type metadata accessor for SHA256Digest();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  *a2 = v7;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance UInt32@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for SecureHashTruncatable.init(digest:) in conformance Int32(a1, a2);
}

uint64_t String.init(digest:)(uint64_t a1)
{
  _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF9CryptoKit12SHA256DigestV_SSs5NeverOTg5031_sSS14CopresenceCoreE6digestSS9d5Kit12fG21V_tcfcSSs5UInt8VXEfU_Tf1cn_n(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v2 = BidirectionalCollection<>.joined(separator:)();
  v3 = type metadata accessor for SHA256Digest();
  (*(*(v3 - 8) + 8))(a1, v3);

  return v2;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF9CryptoKit12SHA256DigestV_SSs5NeverOTg5031_sSS14CopresenceCoreE6digestSS9d5Kit12fG21V_tcfcSSs5UInt8VXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0]);
  v7 = dispatch thunk of Sequence.underestimatedCount.getter();
  v35 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  result = dispatch thunk of Sequence.makeIterator()();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_1AEE07B20;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        result = String.init(format:_:)();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_1AEE07B20;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        result = String.init(format:_:)();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for SecureHashTruncatable.init(digest:) in conformance String@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF9CryptoKit12SHA256DigestV_SSs5NeverOTg5031_sSS14CopresenceCoreE6digestSS9d5Kit12fG21V_tcfcSSs5UInt8VXEfU_Tf1cn_n(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v4 = BidirectionalCollection<>.joined(separator:)();
  v6 = v5;
  v7 = type metadata accessor for SHA256Digest();
  (*(*(v7 - 8) + 8))(a1, v7);

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      type metadata accessor for Insecure.MD5();
      lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688]);
      result = dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t type metadata accessor for SharableObjectIdentifier()
{
  result = type metadata singleton initialization cache for SharableObjectIdentifier;
  if (!type metadata singleton initialization cache for SharableObjectIdentifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1B270E950]();
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1B270E950]();
      type metadata accessor for Insecure.MD5();
      lazy protocol witness table accessor for type Insecure.MD5Digest and conformance Insecure.MD5Digest(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in SecureHashTruncatable<>.init(digest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 16);
  v10 = *(v8 + 40);
  v12[1] = *(v8 + 48);
  v13 = a1;
  v14 = a2;
  return _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, partial apply for closure #1 in closure #1 in SecureHashTruncatable<>.init(digest:), v12, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for SharableObjectIdentifier()
{
  result = type metadata accessor for SHA256();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in SecureHashTruncatable<>.init(digest:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2, v2[2], v2[3], v2[4]);
}

{
  return specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2, v2[2], v2[3], v2[4]);
}

{
  return specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2, v2[2], v2[3], v2[4]);
}

{
  return specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2, v2[2], v2[3], v2[4]);
}

{
  return partial apply for specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in SecureHashTruncatable<>.init(digest:)(a1, a2);
}

uint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GroupActivityDescription.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GroupActivityDescription.actionDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GroupActivityDescription.ongoingDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t GroupActivityDescription.completedDescription.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t GroupActivityDescription.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int GroupActivityDescription.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void __swiftcall GroupActivityDescription.init(id:actionDescription:ongoingDescription:completedDescription:)(CopresenceCore::GroupActivityDescription *__return_ptr retstr, Swift::String id, Swift::String actionDescription, Swift::String ongoingDescription, Swift::String completedDescription)
{
  retstr->id = id;
  retstr->actionDescription = actionDescription;
  retstr->ongoingDescription = ongoingDescription;
  retstr->completedDescription = completedDescription;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupActivityDescription()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupActivityDescription()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityDescription()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void one-time initialization function for generic()
{
  v0 = *MEMORY[0x1E69D8F30];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4F545F4552414853;
  v5._object = 0xEE00524548544547;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._object = 0x80000001AEE311E0;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x545F444552414853;
  v15._object = 0xEF5245485445474FLL;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.generic = v19;
  *(&static GroupActivityDescription.generic + 1) = v21;
  xmmword_1EB5F5F00 = v8;
  xmmword_1EB5F5F10 = v13;
  xmmword_1EB5F5F20 = v18;
}

void GroupActivityDescription.init(id:actionDescription:ongoingDescription:completedDescription:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *a8 = v16;
  a8[1] = v18;
  a8[2] = a2;
  a8[3] = a3;
  a8[4] = a4;
  a8[5] = a5;
  a8[6] = a6;
  a8[7] = a7;
}

uint64_t static GroupActivityDescription.generic.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for generic != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F5F00;
  v7[0] = static GroupActivityDescription.generic;
  v7[1] = xmmword_1EB5F5F00;
  v2 = xmmword_1EB5F5F10;
  v3 = xmmword_1EB5F5F20;
  v7[2] = xmmword_1EB5F5F10;
  v7[3] = xmmword_1EB5F5F20;
  *a1 = static GroupActivityDescription.generic;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for collaboration()
{
  v0 = *MEMORY[0x1E69D8F18];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._object = 0x80000001AEE31180;
  v5._countAndFlagsBits = 0xD000000000000014;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000016;
  v10._object = 0x80000001AEE311A0;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000015;
  v15._object = 0x80000001AEE311C0;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.collaboration = v19;
  *(&static GroupActivityDescription.collaboration + 1) = v21;
  xmmword_1EB5F5F48 = v8;
  xmmword_1EB5F5F58 = v13;
  xmmword_1EB5F5F68 = v18;
}

uint64_t static GroupActivityDescription.collaboration.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for collaboration != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F5F48;
  v7[0] = static GroupActivityDescription.collaboration;
  v7[1] = xmmword_1EB5F5F48;
  v2 = xmmword_1EB5F5F58;
  v3 = xmmword_1EB5F5F68;
  v7[2] = xmmword_1EB5F5F58;
  v7[3] = xmmword_1EB5F5F68;
  *a1 = static GroupActivityDescription.collaboration;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for listenTogether()
{
  v0 = *MEMORY[0x1E69D8F40];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x545F4E455453494CLL;
  v5._object = 0xEF5245485445474FLL;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000012;
  v10._object = 0x80000001AEE31140;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE31160;
  v15._countAndFlagsBits = 0xD000000000000011;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.listenTogether = v19;
  *(&static GroupActivityDescription.listenTogether + 1) = v21;
  xmmword_1EB5F7C08 = v8;
  xmmword_1EB5F7C18 = v13;
  xmmword_1EB5F7C28 = v18;
}

uint64_t static GroupActivityDescription.listenTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for listenTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7C08;
  v7[0] = static GroupActivityDescription.listenTogether;
  v7[1] = xmmword_1EB5F7C08;
  v2 = xmmword_1EB5F7C18;
  v3 = xmmword_1EB5F7C28;
  v7[2] = xmmword_1EB5F7C18;
  v7[3] = xmmword_1EB5F7C28;
  *a1 = static GroupActivityDescription.listenTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for watchTogether()
{
  v0 = *MEMORY[0x1E69D8F70];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4F545F4843544157;
  v5._object = 0xEE00524548544547;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x80000001AEE31100;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE31120;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.watchTogether = v19;
  *(&static GroupActivityDescription.watchTogether + 1) = v21;
  xmmword_1EB5F7C48 = v8;
  xmmword_1EB5F7C58 = v13;
  xmmword_1EB5F7C68 = v18;
}

uint64_t static GroupActivityDescription.watchTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for watchTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7C48;
  v7[0] = static GroupActivityDescription.watchTogether;
  v7[1] = xmmword_1EB5F7C48;
  v2 = xmmword_1EB5F7C58;
  v3 = xmmword_1EB5F7C68;
  v7[2] = xmmword_1EB5F7C58;
  v7[3] = xmmword_1EB5F7C68;
  *a1 = static GroupActivityDescription.watchTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for playTogether()
{
  v0 = *MEMORY[0x1E69D8F48];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x474F545F59414C50;
  v5._object = 0xED00005245485445;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._object = 0x80000001AEE310E0;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x545F444559414C50;
  v15._object = 0xEF5245485445474FLL;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.playTogether = v19;
  *(&static GroupActivityDescription.playTogether + 1) = v21;
  xmmword_1EB5F7C88 = v8;
  xmmword_1EB5F7C98 = v13;
  xmmword_1EB5F7CA8 = v18;
}

uint64_t static GroupActivityDescription.playTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for playTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7C88;
  v7[0] = static GroupActivityDescription.playTogether;
  v7[1] = xmmword_1EB5F7C88;
  v2 = xmmword_1EB5F7C98;
  v3 = xmmword_1EB5F7CA8;
  v7[2] = xmmword_1EB5F7C98;
  v7[3] = xmmword_1EB5F7CA8;
  *a1 = static GroupActivityDescription.playTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for workoutTogether()
{
  v0 = *MEMORY[0x1E69D8F78];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._object = 0x80000001AEE31080;
  v5._countAndFlagsBits = 0xD000000000000011;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000013;
  v10._object = 0x80000001AEE310A0;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000012;
  v15._object = 0x80000001AEE310C0;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.workoutTogether = v19;
  *(&static GroupActivityDescription.workoutTogether + 1) = v21;
  xmmword_1EB5F7CC8 = v8;
  xmmword_1EB5F7CD8 = v13;
  xmmword_1EB5F7CE8 = v18;
}

uint64_t static GroupActivityDescription.workoutTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for workoutTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7CC8;
  v7[0] = static GroupActivityDescription.workoutTogether;
  v7[1] = xmmword_1EB5F7CC8;
  v2 = xmmword_1EB5F7CD8;
  v3 = xmmword_1EB5F7CE8;
  v7[2] = xmmword_1EB5F7CD8;
  v7[3] = xmmword_1EB5F7CE8;
  *a1 = static GroupActivityDescription.workoutTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for shopTogether()
{
  v0 = *MEMORY[0x1E69D8F68];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x474F545F504F4853;
  v5._object = 0xED00005245485445;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x80000001AEE31040;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE31060;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.shopTogether = v19;
  *(&static GroupActivityDescription.shopTogether + 1) = v21;
  xmmword_1EB5F7D08 = v8;
  xmmword_1EB5F7D18 = v13;
  xmmword_1EB5F7D28 = v18;
}

uint64_t static GroupActivityDescription.shopTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for shopTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7D08;
  v7[0] = static GroupActivityDescription.shopTogether;
  v7[1] = xmmword_1EB5F7D08;
  v2 = xmmword_1EB5F7D18;
  v3 = xmmword_1EB5F7D28;
  v7[2] = xmmword_1EB5F7D18;
  v7[3] = xmmword_1EB5F7D28;
  *a1 = static GroupActivityDescription.shopTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for readTogether()
{
  v0 = *MEMORY[0x1E69D8F58];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x474F545F44414552;
  v5._object = 0xED00005245485445;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._object = 0x80000001AEE31000;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000017;
  v15._object = 0x80000001AEE31020;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.readTogether = v19;
  *(&static GroupActivityDescription.readTogether + 1) = v21;
  xmmword_1EB5F7D48 = v8;
  xmmword_1EB5F7D58 = v13;
  xmmword_1EB5F7D68 = v18;
}

uint64_t static GroupActivityDescription.readTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for readTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7D48;
  v7[0] = static GroupActivityDescription.readTogether;
  v7[1] = xmmword_1EB5F7D48;
  v2 = xmmword_1EB5F7D58;
  v3 = xmmword_1EB5F7D68;
  v7[2] = xmmword_1EB5F7D58;
  v7[3] = xmmword_1EB5F7D68;
  *a1 = static GroupActivityDescription.readTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for exploreTogether()
{
  v0 = *MEMORY[0x1E69D8F28];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._object = 0x80000001AEE30FA0;
  v5._countAndFlagsBits = 0xD000000000000010;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000012;
  v10._object = 0x80000001AEE30FC0;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000011;
  v15._object = 0x80000001AEE30FE0;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.exploreTogether = v19;
  *(&static GroupActivityDescription.exploreTogether + 1) = v21;
  xmmword_1EB5F7D88 = v8;
  xmmword_1EB5F7D98 = v13;
  xmmword_1EB5F7DA8 = v18;
}

uint64_t static GroupActivityDescription.exploreTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for exploreTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7D88;
  v7[0] = static GroupActivityDescription.exploreTogether;
  v7[1] = xmmword_1EB5F7D88;
  v2 = xmmword_1EB5F7D98;
  v3 = xmmword_1EB5F7DA8;
  v7[2] = xmmword_1EB5F7D98;
  v7[3] = xmmword_1EB5F7DA8;
  *a1 = static GroupActivityDescription.exploreTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for learnTogether()
{
  v0 = *MEMORY[0x1E69D8F38];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4F545F4E5241454CLL;
  v5._object = 0xEE00524548544547;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x80000001AEE30F60;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE30F80;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.learnTogether = v19;
  *(&static GroupActivityDescription.learnTogether + 1) = v21;
  xmmword_1EB5F7DC8 = v8;
  xmmword_1EB5F7DD8 = v13;
  xmmword_1EB5F7DE8 = v18;
}

uint64_t static GroupActivityDescription.learnTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for learnTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7DC8;
  v7[0] = static GroupActivityDescription.learnTogether;
  v7[1] = xmmword_1EB5F7DC8;
  v2 = xmmword_1EB5F7DD8;
  v3 = xmmword_1EB5F7DE8;
  v7[2] = xmmword_1EB5F7DD8;
  v7[3] = xmmword_1EB5F7DE8;
  *a1 = static GroupActivityDescription.learnTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for createTogether()
{
  v0 = *MEMORY[0x1E69D8F20];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x545F455441455243;
  v5._object = 0xEF5245485445474FLL;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x80000001AEE30F20;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE30F40;
  v15._countAndFlagsBits = 0xD000000000000010;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.createTogether = v19;
  *(&static GroupActivityDescription.createTogether + 1) = v21;
  xmmword_1EB5F7E08 = v8;
  xmmword_1EB5F7E18 = v13;
  xmmword_1EB5F7E28 = v18;
}

uint64_t static GroupActivityDescription.createTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for createTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7E08;
  v7[0] = static GroupActivityDescription.createTogether;
  v7[1] = xmmword_1EB5F7E08;
  v2 = xmmword_1EB5F7E18;
  v3 = xmmword_1EB5F7E28;
  v7[2] = xmmword_1EB5F7E18;
  v7[3] = xmmword_1EB5F7E28;
  *a1 = static GroupActivityDescription.createTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for screenSharing()
{
  v0 = *MEMORY[0x1E69D8F60];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._object = 0xEC00000045524148;
  v5._countAndFlagsBits = 0x535F4E4545524353;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 &selRef:ObjCClassFromMetadata sendMessageWithDictionary:? error:? + 3];
  v23._object = 0xE000000000000000;
  v10._object = 0xEE00474E49524148;
  v10._countAndFlagsBits = 0x535F4E4545524353;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0xED00004445524148;
  v15._countAndFlagsBits = 0x535F4E4545524353;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.screenSharing = v19;
  *(&static GroupActivityDescription.screenSharing + 1) = v21;
  xmmword_1EB5F7E48 = v8;
  xmmword_1EB5F7E58 = v13;
  xmmword_1EB5F7E68 = v18;
}

uint64_t static GroupActivityDescription.screenSharing.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for screenSharing != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7E48;
  v7[0] = static GroupActivityDescription.screenSharing;
  v7[1] = xmmword_1EB5F7E48;
  v2 = xmmword_1EB5F7E58;
  v3 = xmmword_1EB5F7E68;
  v7[2] = xmmword_1EB5F7E58;
  v7[3] = xmmword_1EB5F7E68;
  *a1 = static GroupActivityDescription.screenSharing;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

void one-time initialization function for podcastTogether()
{
  v0 = *MEMORY[0x1E69D8F50];
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 bundleForClass_];
  v22._object = 0xE000000000000000;
  v5._object = 0xEE004E4F49544341;
  v5._countAndFlagsBits = 0x5F54534143444F50;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v22);

  v9 = [v2 bundleForClass_];
  v23._object = 0xE000000000000000;
  v10._object = 0xEF474E494F474E4FLL;
  v10._countAndFlagsBits = 0x5F54534143444F50;
  v11.value._countAndFlagsBits = 0x6E65736572706F43;
  v11.value._object = 0xEE0065726F436563;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = [v2 bundleForClass_];
  v24._object = 0xE000000000000000;
  v15._object = 0x80000001AEE30F00;
  v15._countAndFlagsBits = 0xD000000000000011;
  v16.value._countAndFlagsBits = 0x6E65736572706F43;
  v16.value._object = 0xEE0065726F436563;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *&static GroupActivityDescription.podcastTogether = v19;
  *(&static GroupActivityDescription.podcastTogether + 1) = v21;
  xmmword_1EB5F7E88 = v8;
  xmmword_1EB5F7E98 = v13;
  xmmword_1EB5F7EA8 = v18;
}

uint64_t static GroupActivityDescription.podcastTogether.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for podcastTogether != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = xmmword_1EB5F7E88;
  v7[0] = static GroupActivityDescription.podcastTogether;
  v7[1] = xmmword_1EB5F7E88;
  v2 = xmmword_1EB5F7E98;
  v3 = xmmword_1EB5F7EA8;
  v7[2] = xmmword_1EB5F7E98;
  v7[3] = xmmword_1EB5F7EA8;
  *a1 = static GroupActivityDescription.podcastTogether;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return outlined init with copy of GroupActivityDescription(v7, &v6);
}

uint64_t one-time initialization function for allCases()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore24GroupActivityDescriptionVGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore24GroupActivityDescriptionVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AEE0A190;
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v1 = xmmword_1EB5F5F00;
  v39[0] = static GroupActivityDescription.generic;
  v39[1] = xmmword_1EB5F5F00;
  v2 = xmmword_1EB5F5F10;
  v3 = xmmword_1EB5F5F20;
  v39[2] = xmmword_1EB5F5F10;
  v39[3] = xmmword_1EB5F5F20;
  *(v0 + 32) = static GroupActivityDescription.generic;
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  outlined init with copy of GroupActivityDescription(v39, v50);
  if (one-time initialization token for watchTogether != -1)
  {
    swift_once();
  }

  v4 = xmmword_1EB5F7C48;
  v40[0] = static GroupActivityDescription.watchTogether;
  v40[1] = xmmword_1EB5F7C48;
  v5 = xmmword_1EB5F7C58;
  v6 = xmmword_1EB5F7C68;
  v40[2] = xmmword_1EB5F7C58;
  v40[3] = xmmword_1EB5F7C68;
  *(v0 + 96) = static GroupActivityDescription.watchTogether;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  *(v0 + 144) = v6;
  outlined init with copy of GroupActivityDescription(v40, v50);
  if (one-time initialization token for listenTogether != -1)
  {
    swift_once();
  }

  v7 = xmmword_1EB5F7C08;
  v41[0] = static GroupActivityDescription.listenTogether;
  v41[1] = xmmword_1EB5F7C08;
  v8 = xmmword_1EB5F7C18;
  v9 = xmmword_1EB5F7C28;
  v41[2] = xmmword_1EB5F7C18;
  v41[3] = xmmword_1EB5F7C28;
  *(v0 + 160) = static GroupActivityDescription.listenTogether;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v9;
  outlined init with copy of GroupActivityDescription(v41, v50);
  if (one-time initialization token for playTogether != -1)
  {
    swift_once();
  }

  v10 = xmmword_1EB5F7C88;
  v42[0] = static GroupActivityDescription.playTogether;
  v42[1] = xmmword_1EB5F7C88;
  v11 = xmmword_1EB5F7C98;
  v12 = xmmword_1EB5F7CA8;
  v42[2] = xmmword_1EB5F7C98;
  v42[3] = xmmword_1EB5F7CA8;
  *(v0 + 224) = static GroupActivityDescription.playTogether;
  *(v0 + 240) = v10;
  *(v0 + 256) = v11;
  *(v0 + 272) = v12;
  outlined init with copy of GroupActivityDescription(v42, v50);
  if (one-time initialization token for workoutTogether != -1)
  {
    swift_once();
  }

  v13 = xmmword_1EB5F7CC8;
  v43[0] = static GroupActivityDescription.workoutTogether;
  v43[1] = xmmword_1EB5F7CC8;
  v14 = xmmword_1EB5F7CD8;
  v15 = xmmword_1EB5F7CE8;
  v43[2] = xmmword_1EB5F7CD8;
  v43[3] = xmmword_1EB5F7CE8;
  *(v0 + 288) = static GroupActivityDescription.workoutTogether;
  *(v0 + 304) = v13;
  *(v0 + 320) = v14;
  *(v0 + 336) = v15;
  outlined init with copy of GroupActivityDescription(v43, v50);
  if (one-time initialization token for screenSharing != -1)
  {
    swift_once();
  }

  v16 = xmmword_1EB5F7E48;
  v44[0] = static GroupActivityDescription.screenSharing;
  v44[1] = xmmword_1EB5F7E48;
  v17 = xmmword_1EB5F7E58;
  v18 = xmmword_1EB5F7E68;
  v44[2] = xmmword_1EB5F7E58;
  v44[3] = xmmword_1EB5F7E68;
  *(v0 + 352) = static GroupActivityDescription.screenSharing;
  *(v0 + 368) = v16;
  *(v0 + 384) = v17;
  *(v0 + 400) = v18;
  outlined init with copy of GroupActivityDescription(v44, v50);
  if (one-time initialization token for shopTogether != -1)
  {
    swift_once();
  }

  v19 = xmmword_1EB5F7D08;
  v45[0] = static GroupActivityDescription.shopTogether;
  v45[1] = xmmword_1EB5F7D08;
  v20 = xmmword_1EB5F7D18;
  v21 = xmmword_1EB5F7D28;
  v45[2] = xmmword_1EB5F7D18;
  v45[3] = xmmword_1EB5F7D28;
  *(v0 + 416) = static GroupActivityDescription.shopTogether;
  *(v0 + 432) = v19;
  *(v0 + 448) = v20;
  *(v0 + 464) = v21;
  outlined init with copy of GroupActivityDescription(v45, v50);
  if (one-time initialization token for readTogether != -1)
  {
    swift_once();
  }

  v22 = xmmword_1EB5F7D48;
  v46[0] = static GroupActivityDescription.readTogether;
  v46[1] = xmmword_1EB5F7D48;
  v23 = xmmword_1EB5F7D58;
  v24 = xmmword_1EB5F7D68;
  v46[2] = xmmword_1EB5F7D58;
  v46[3] = xmmword_1EB5F7D68;
  *(v0 + 480) = static GroupActivityDescription.readTogether;
  *(v0 + 496) = v22;
  *(v0 + 512) = v23;
  *(v0 + 528) = v24;
  outlined init with copy of GroupActivityDescription(v46, v50);
  if (one-time initialization token for exploreTogether != -1)
  {
    swift_once();
  }

  v25 = xmmword_1EB5F7D88;
  v47[0] = static GroupActivityDescription.exploreTogether;
  v47[1] = xmmword_1EB5F7D88;
  v26 = xmmword_1EB5F7D98;
  v27 = xmmword_1EB5F7DA8;
  v47[2] = xmmword_1EB5F7D98;
  v47[3] = xmmword_1EB5F7DA8;
  *(v0 + 544) = static GroupActivityDescription.exploreTogether;
  *(v0 + 560) = v25;
  *(v0 + 576) = v26;
  *(v0 + 592) = v27;
  outlined init with copy of GroupActivityDescription(v47, v50);
  if (one-time initialization token for learnTogether != -1)
  {
    swift_once();
  }

  v28 = xmmword_1EB5F7DC8;
  v48[0] = static GroupActivityDescription.learnTogether;
  v48[1] = xmmword_1EB5F7DC8;
  v29 = xmmword_1EB5F7DD8;
  v30 = xmmword_1EB5F7DE8;
  v48[2] = xmmword_1EB5F7DD8;
  v48[3] = xmmword_1EB5F7DE8;
  *(v0 + 608) = static GroupActivityDescription.learnTogether;
  *(v0 + 624) = v28;
  *(v0 + 640) = v29;
  *(v0 + 656) = v30;
  outlined init with copy of GroupActivityDescription(v48, v50);
  if (one-time initialization token for createTogether != -1)
  {
    swift_once();
  }

  v31 = xmmword_1EB5F7E08;
  v49[0] = static GroupActivityDescription.createTogether;
  v49[1] = xmmword_1EB5F7E08;
  v32 = xmmword_1EB5F7E18;
  v33 = xmmword_1EB5F7E28;
  v49[2] = xmmword_1EB5F7E18;
  v49[3] = xmmword_1EB5F7E28;
  *(v0 + 672) = static GroupActivityDescription.createTogether;
  *(v0 + 688) = v31;
  *(v0 + 704) = v32;
  *(v0 + 720) = v33;
  outlined init with copy of GroupActivityDescription(v49, v50);
  if (one-time initialization token for podcastTogether != -1)
  {
    swift_once();
  }

  v34 = xmmword_1EB5F7E88;
  v50[0] = static GroupActivityDescription.podcastTogether;
  v50[1] = xmmword_1EB5F7E88;
  v35 = xmmword_1EB5F7E98;
  v36 = xmmword_1EB5F7EA8;
  v50[2] = xmmword_1EB5F7E98;
  v50[3] = xmmword_1EB5F7EA8;
  *(v0 + 736) = static GroupActivityDescription.podcastTogether;
  *(v0 + 752) = v34;
  *(v0 + 768) = v35;
  *(v0 + 784) = v36;
  static GroupActivityDescription.allCases = v0;
  return outlined init with copy of GroupActivityDescription(v50, &v38);
}

uint64_t static GroupActivityDescription.allCases.getter()
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static GroupActivityDescription.allCases.setter(void *a1)
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static GroupActivityDescription.allCases = a1;
}

uint64_t (*static GroupActivityDescription.allCases.modify())()
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance GroupActivityDescription@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static GroupActivityDescription.allCases;
}

void __swiftcall GroupActivityDescription.init(id:)(CopresenceCore::GroupActivityDescription_optional *__return_ptr retstr, Swift::String id)
{
  object = id._object;
  countAndFlagsBits = id._countAndFlagsBits;
  if (one-time initialization token for allCases != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *(static GroupActivityDescription.allCases + 2);
  if (v5)
  {
    v6 = (static GroupActivityDescription.allCases + 32);
    while (1)
    {
      v7 = v6[3];
      v9 = *v6;
      v8 = v6[1];
      v16 = v6[2];
      v17 = v7;
      v14 = v9;
      v15 = v8;
      v10 = v9._countAndFlagsBits == countAndFlagsBits && v9._object == object;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v6 += 4;
      if (!--v5)
      {
        goto LABEL_11;
      }
    }

    outlined init with copy of GroupActivityDescription(&v14, &v13);

    v11 = v15;
    retstr->value.id = v14;
    retstr->value.actionDescription = v11;
    v12 = v17;
    retstr->value.ongoingDescription = v16;
    retstr->value.completedDescription = v12;
  }

  else
  {
LABEL_11:

    retstr->value.ongoingDescription = 0u;
    retstr->value.completedDescription = 0u;
    retstr->value.id = 0u;
    retstr->value.actionDescription = 0u;
  }
}

double GroupActivityDescription.init(id:)@<D0>(void *a1@<X0>, Swift::String *a2@<X8>)
{
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  GroupActivityDescription.init(id:)(&v8, v4);

  actionDescription = v8.value.actionDescription;
  *a2 = v8.value.id;
  a2[1] = actionDescription;
  result = *&v8.value.ongoingDescription._countAndFlagsBits;
  completedDescription = v8.value.completedDescription;
  a2[2] = v8.value.ongoingDescription;
  a2[3] = completedDescription;
  return result;
}

uint64_t TUConversationActivityContextIdentifier.isMedia.getter()
{
  v0 = *MEMORY[0x1E69D8F40];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {
    goto LABEL_12;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    v8 = *MEMORY[0x1E69D8F70];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v11 != v12)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_13:

      return v7 & 1;
    }

LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  v7 = 1;
  return v7 & 1;
}

id GroupActivityDescription.tuActivityContext.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = objc_allocWithZone(MEMORY[0x1E69D8B30]);
  v10 = MEMORY[0x1B270FF70](v1, v2);
  v11 = MEMORY[0x1B270FF70](v3, v4);
  v12 = MEMORY[0x1B270FF70](v5, v6);
  v13 = MEMORY[0x1B270FF70](v8, v7);
  v14 = [v9 initWithContextIdentifier:v10 actionDescription:v11 ongoingDescription:v12 completedDescription:v13];

  return v14;
}

id CPGroupActivityDescription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CPGroupActivityDescription.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPGroupActivityDescription();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CPGroupActivityDescription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPGroupActivityDescription();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static GroupActivityDescription.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v8 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v11 && v14 == v10)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id specialized static CPGroupActivityDescription.activityContext(with:)()
{
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  GroupActivityDescription.init(id:)(&v15, v0);
  object = v15.value.id._object;
  if (v15.value.id._object)
  {
    countAndFlagsBits = v15.value.id._countAndFlagsBits;
    v3 = v15.value.actionDescription._countAndFlagsBits;
    v4 = v15.value.actionDescription._object;
    v5 = v15.value.ongoingDescription._countAndFlagsBits;
    v6 = v15.value.ongoingDescription._object;
    v7 = v15.value.completedDescription._countAndFlagsBits;
    v8 = v15.value.completedDescription._object;
    v9 = objc_allocWithZone(MEMORY[0x1E69D8B30]);
    v10 = MEMORY[0x1B270FF70](countAndFlagsBits, object);
    v11 = MEMORY[0x1B270FF70](v3, v4);
    v12 = MEMORY[0x1B270FF70](v5, v6);
    v13 = MEMORY[0x1B270FF70](v7, v8);
    object = [v9 initWithContextIdentifier:v10 actionDescription:v11 ongoingDescription:v12 completedDescription:v13];

    outlined destroy of GroupActivityDescription?(&v15);
  }

  return object;
}

unint64_t lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription()
{
  result = lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription;
  if (!lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [GroupActivityDescription] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GroupActivityDescription] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GroupActivityDescription] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14CopresenceCore24GroupActivityDescriptionVGMd, &_sSay14CopresenceCore24GroupActivityDescriptionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GroupActivityDescription] and conformance [A]);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GroupActivityDescription(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for GroupActivityDescription(uint64_t result, int a2, int a3)
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

uint64_t outlined destroy of GroupActivityDescription?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24GroupActivityDescriptionVSgMd, &_s14CopresenceCore24GroupActivityDescriptionVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SimulatedDataCryptor.encryptionKeyID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_encryptionKeyID;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t SimulatedDataCryptor.encryptionKeyID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_encryptionKeyID;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path setter for SimulatedDataCryptor.encryptionKeyID : SimulatedDataCryptor(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x68))(v7);
}

uint64_t SimulatedDataCryptor.decryptionKeyIDSet.getter()
{
  v1 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SimulatedDataCryptor.decryptionKeyIDSet.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SimulatedDataCryptor.encryptData(_:seqNum:)(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    outlined copy of Data._Representation(result, a2);
    return v2;
  }

  return result;
}

id SimulatedDataCryptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SimulatedDataCryptor.init()()
{
  UUID.init()();
  v1 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AEE07B20;
  UUID.init()();
  *&v0[v1] = v5;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SimulatedDataCryptor();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t type metadata accessor for SimulatedDataCryptor()
{
  result = type metadata singleton initialization cache for SimulatedDataCryptor;
  if (!type metadata singleton initialization cache for SimulatedDataCryptor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SimulatedDataCryptor.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static SimulatedDataCryptor.supportsSecureCoding = a1;
  return result;
}

id SimulatedDataCryptor.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  UUID.init()();
  v4 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AEE07B20;
  UUID.init()();
  *&v3[v4] = v8;
  v11.receiver = v3;
  v11.super_class = v1;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id SimulatedDataCryptor.init(coder:)(void *a1)
{
  UUID.init()();
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AEE07B20;
  UUID.init()();
  *&v1[v3] = v7;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SimulatedDataCryptor();
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id SimulatedDataCryptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatedDataCryptor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for SimulatedDataCryptor()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t String.localized.getter(uint64_t a1, void *a2)
{
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v11._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x6E65736572706F43;
  v6.value._object = 0xEE0065726F436563;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t PluginEndpoint.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NWEndpoint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PluginEndpoint();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PluginEndpoint(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    v11 = v10[1];
    v13 = v10[2];
    v14 = v10[4];
    v15 = v10[5];
    if (v14 >> 60 == 15)
    {
      v33[0] = 0;
      v33[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      strcpy(v33, "RelaySession(");
      HIWORD(v33[1]) = -4864;
      MEMORY[0x1B2710020](v12, v11);

      MEMORY[0x1B2710020](8236, 0xE200000000000000);
      v32[0] = v13;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v16);

      MEMORY[0x1B2710020](8236, 0xE200000000000000);
      v32[0] = v15;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v17);

      MEMORY[0x1B2710020](41, 0xE100000000000000);
    }

    else
    {
      v20 = v10[3];
      v33[0] = 0;
      v33[1] = 0xE000000000000000;
      outlined copy of Data._Representation(v20, v14);
      _StringGuts.grow(_:)(28);

      strcpy(v33, "RelaySession(");
      HIWORD(v33[1]) = -4864;
      MEMORY[0x1B2710020](v12, v11);

      MEMORY[0x1B2710020](8236, 0xE200000000000000);
      v32[0] = v13;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v21);

      MEMORY[0x1B2710020](8236, 0xE200000000000000);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v23 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

      if (v23)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v32[0] = v24;
        v32[1] = v26;
        v27 = String.init<A>(reflecting:)();
        v29 = v28;
      }

      else
      {
        v29 = 0xE300000000000000;
        v27 = 7104878;
      }

      MEMORY[0x1B2710020](v27, v29);

      MEMORY[0x1B2710020](8236, 0xE200000000000000);
      v32[0] = v15;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v30);

      MEMORY[0x1B2710020](41, 0xE100000000000000);
      outlined consume of Data?(v20, v14);
      outlined consume of Data?(v20, v14);
    }

    return v33[0];
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    strcpy(v33, "Direct(");
    v33[1] = 0xE700000000000000;
    v18 = NWEndpoint.debugDescription.getter();
    MEMORY[0x1B2710020](v18);

    MEMORY[0x1B2710020](41, 0xE100000000000000);
    v19 = v33[0];
    (*(v3 + 8))(v6, v2);
  }

  return v19;
}

uint64_t type metadata accessor for PluginEndpoint()
{
  result = type metadata singleton initialization cache for PluginEndpoint;
  if (!type metadata singleton initialization cache for PluginEndpoint)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PluginEndpoint(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginEndpoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall PluginEndpoint.updateVirtualParticipant(_:localParticipantID:)(Swift::UInt64 _, Swift::UInt64 localParticipantID)
{
  v3 = v2;
  v6 = type metadata accessor for PluginEndpoint();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PluginEndpoint(v3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of PluginEndpoint(v3);
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    v13 = *(v9 + 24);
    v14 = *(v9 + 5);
    if (v12 != _ || v14 != localParticipantID)
    {
      v24 = *(v9 + 24);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, log);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v23 = v10;
        v20 = v19;
        *v19 = 134218752;
        *(v19 + 4) = v12;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v14;
        *(v19 + 22) = 2048;
        *(v19 + 24) = _;
        *(v19 + 32) = 2048;
        *(v19 + 34) = v14;
        _os_log_impl(&dword_1AEB26000, v17, v18, "Updating virtualParticipant, old: [virtualParticipant: %llu, localParticipantID: %llu], new: [virtualParticipant: %llu, localParticipantID: %llu]", v19, 0x2Au);
        v21 = v20;
        v10 = v23;
        MEMORY[0x1B27120C0](v21, -1, -1);
      }

      v13 = v24;
    }

    *v3 = v10;
    *(v3 + 8) = v11;
    *(v3 + 16) = _;
    *(v3 + 24) = v13;
    *(v3 + 40) = localParticipantID;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined destroy of PluginEndpoint(v9);
  }
}

uint64_t outlined destroy of PluginEndpoint(uint64_t a1)
{
  v2 = type metadata accessor for PluginEndpoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for PluginEndpoint()
{
  type metadata accessor for (endpoint: NWEndpoint)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (sessionId: String, virtualParticipant: UInt64, aliasingSalt: Data?, localParticipantID: UInt64)(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (endpoint: NWEndpoint)()
{
  if (!lazy cache variable for type metadata for (endpoint: NWEndpoint))
  {
    v0 = type metadata accessor for NWEndpoint();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (endpoint: NWEndpoint));
    }
  }
}

void type metadata accessor for (sessionId: String, virtualParticipant: UInt64, aliasingSalt: Data?, localParticipantID: UInt64)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (sessionId: String, virtualParticipant: UInt64, aliasingSalt: Data?, localParticipantID: UInt64))
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, "|");
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (sessionId: String, virtualParticipant: UInt64, aliasingSalt: Data?, localParticipantID: UInt64));
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FastSyncActivitySession.leave()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR___CPActivitySession_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = v0;
    specialized ActivitySession.invalidationBlock(execute:)(v8, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in FastSyncActivitySession.leave()(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2F8))(&v16);
  result = v16;
  if (v16 >> 62 != 2)
  {
LABEL_13:
    outlined consume of ActivitySession.State(v16);
    lazy protocol witness table accessor for type ActivitySession.Errors and conformance ActivitySession.Errors();
    swift_allocError();
    *v15 = 1;
    return swift_willThrow();
  }

  if (v16 != 0x8000000000000000 && v16 != 0x8000000000000008)
  {
    if (v16 == 0x8000000000000010)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.host);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Leaving activity session with identifier %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    v14 = v9;
    v2 = MEMORY[0x1E69E7D40];
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v16 = 0x8000000000000010;
  return (*((*v2 & *v6) + 0x300))(&v16);
}

id FastSyncActivitySession.rbsAssertion(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() targetWithPid_];
  v2 = MEMORY[0x1B270FF70](0xD00000000000001DLL, 0x80000001AEE31310);
  v3 = MEMORY[0x1B270FF70](0x636E795374736146, 0xE800000000000000);
  v4 = [objc_opt_self() attributeWithDomain:v2 name:v3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AEE07B40;
  *(v5 + 32) = v4;
  v6 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v7 = v4;
  v8 = MEMORY[0x1B270FF70](0xD000000000000024, 0x80000001AEE2F060);
  type metadata accessor for RBSAttribute();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v6 initWithExplanation:v8 target:v1 attributes:isa];

  return v10;
}

uint64_t FastSyncActivitySession.participant(with:includeLocalParticipant:completion:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + OBJC_IVAR___CPActivitySession_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v17 = (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  v18 = MEMORY[0x1E69E7D40];
  v19 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x328))(v17);
  v20 = [v19 bundleIdentifier];

  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if ((*((*v18 & *v5) + 0x3D8))())
    {
      v25 = v24;
      ObjectType = swift_getObjectType();
      (*(v25 + 64))(a1, v21, v23, a2 & 1, a3, a4, ObjectType, v25);
      swift_unknownObjectRelease();
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Log.default);
    v37 = v5;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v37;
      *v33 = v5;
      v38 = v37;
      v35 = "[Translation] Invalid sessionManager on session: %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Log.default);
  v29 = v5;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v5;
    v34 = v29;
    v35 = "[Translation] Failed to find bundleIdentifier from activity on session: %@";
LABEL_12:
    _os_log_impl(&dword_1AEB26000, v30, v31, v35, v32, 0xCu);
    outlined destroy of NSObject?(v33);
    MEMORY[0x1B27120C0](v33, -1, -1);
    MEMORY[0x1B27120C0](v32, -1, -1);
  }

LABEL_13:

  return a3(0);
}

char *FastSyncActivitySession.__allocating_init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t *a9)
{
  v42 = a7;
  v43 = a8;
  v41 = a6;
  v37 = a5;
  v38 = a2;
  v39 = a4;
  v40 = a1;
  v35 = a9;
  v12 = type metadata accessor for Date();
  v36 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = objc_allocWithZone(v34);
  (*(v18 + 16))(v21, a2, v17);
  (*(v13 + 16))(v16, a5, v12);
  outlined init with copy of UserNotificationCenter(a9, v44);
  ObjectType = swift_getObjectType();
  v23 = v45;
  v24 = v46;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v26 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  v33 = v23;
  v30 = v40;
  v31 = specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(v40, v21, a3, v16, v41, v42, v43, v28, v34, ObjectType, v33, v39, v24);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  (*(v13 + 8))(v37, v36);
  (*(v18 + 8))(v38, v17);
  return v31;
}

char *FastSyncActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t *a9)
{
  v39 = a1;
  v42 = a7;
  v43 = a8;
  v41 = a6;
  v36 = a5;
  v37 = a2;
  v38 = a4;
  v34 = a9;
  v12 = type metadata accessor for Date();
  v35 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a2, v17);
  (*(v13 + 16))(v16, a5, v12);
  outlined init with copy of UserNotificationCenter(a9, v44);
  ObjectType = swift_getObjectType();
  v23 = v45;
  v24 = v46;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v26 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28);
  v33 = ObjectType;
  v30 = v39;
  v31 = specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(v39, v21, a3, v16, v41, v42, v43, v28, v40, v33, v23, v38, v24);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  (*(v13 + 8))(v36, v35);
  (*(v18 + 8))(v37, v17);
  return v31;
}

id FastSyncActivitySession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FastSyncActivitySession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized FastSyncActivitySession.assertionWillInvalidate(_:)()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.host);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1AEB26000, oslog, v1, "[Assertion] DomainAssertionObserver assertionWillInvalidate for app.", v2, 2u);
    MEMORY[0x1B27120C0](v2, -1, -1);
  }
}

unint64_t type metadata accessor for RBSAttribute()
{
  result = lazy cache variable for type metadata for RBSAttribute;
  if (!lazy cache variable for type metadata for RBSAttribute)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBSAttribute);
  }

  return result;
}

uint64_t type metadata accessor for FastSyncActivitySession()
{
  result = type metadata singleton initialization cache for FastSyncActivitySession;
  if (!type metadata singleton initialization cache for FastSyncActivitySession)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double PluginClientMetrics.ConnectionEstablishment.init(report:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized PluginClientMetrics.ConnectionEstablishment.init(report:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t PluginClientMetrics.ConnectionEstablishment.rtcReport.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E76D8];
  v16 = MEMORY[0x1E69E76D8];
  *&v15 = a1;
  outlined init with take of Any(&v15, v14);
  v8 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0xD00000000000001BLL, 0x80000001AEE2EB70, isUniquelyReferenced_nonNull_native);
  v16 = v7;
  *&v15 = a2;
  outlined init with take of Any(&v15, v14);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0xD000000000000018, 0x80000001AEE2EB90, v10);
  v16 = v7;
  *&v15 = a3;
  outlined init with take of Any(&v15, v14);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0xD000000000000024, 0x80000001AEE2EBB0, v11);
  v16 = v7;
  *&v15 = a4;
  outlined init with take of Any(&v15, v14);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0xD00000000000001FLL, 0x80000001AEE2EBE0, v12);
  return v8;
}

unint64_t PluginClientMetrics.ConnectionEstablishment.debugDescription.getter()
{
  _StringGuts.grow(_:)(22);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v0);

  _StringGuts.grow(_:)(28);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v1);

  _StringGuts.grow(_:)(30);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  _StringGuts.grow(_:)(25);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v3);

  _StringGuts.grow(_:)(36);

  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE31360);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD00000000000001ALL, 0x80000001AEE31380);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD00000000000001CLL, 0x80000001AEE313A0);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000017, 0x80000001AEE313C0);

  return 0xD000000000000019;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys()
{
  v1 = 0xD000000000000013;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PluginClientMetrics.ConnectionEstablishment.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PluginClientMetrics.ConnectionEstablishment.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore19PluginClientMetricsO23ConnectionEstablishmentV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore19PluginClientMetricsO23ConnectionEstablishmentV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v17 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v11, v7);
}

uint64_t PluginClientMetrics.ConnectionEstablishment.init(from:)(uint64_t *a1)
{
  result = specialized PluginClientMetrics.ConnectionEstablishment.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PluginClientMetrics.ConnectionEstablishment@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized PluginClientMetrics.ConnectionEstablishment.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PluginClientMetrics.ConnectionEstablishment()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return PluginClientMetrics.ConnectionEstablishment.debugDescription.getter();
}

__n128 PluginClientMetrics.ConnectionDataTransfer.init(report:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized PluginClientMetrics.ConnectionDataTransfer.init(report:)(a1, v5);
  v3 = v6[0];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 57) = *(v6 + 9);
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t PluginClientMetrics.ConnectionDataTransfer.rtcReport.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E76D8];
  v25 = MEMORY[0x1E69E76D8];
  *&v24 = v2;
  outlined init with take of Any(&v24, v23);
  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x617275642D707271, 0xEC0000006E6F6974, isUniquelyReferenced_nonNull_native);
  v6 = v1[1];
  v25 = v3;
  *&v24 = v6;
  outlined init with take of Any(&v24, v23);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000013, 0x80000001AEE2EAB0, v7);
  v8 = v1[2];
  v25 = v3;
  *&v24 = v8;
  outlined init with take of Any(&v24, v23);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000013, 0x80000001AEE2EAD0, v9);
  v10 = v1[4];
  v25 = v3;
  *&v24 = v10;
  outlined init with take of Any(&v24, v23);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000012, 0x80000001AEE2EA90, v11);
  v12 = v1[3];
  v25 = v3;
  *&v24 = v12;
  outlined init with take of Any(&v24, v23);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000012, 0x80000001AEE2EA70, v13);
  v14 = v1[5];
  v25 = v3;
  *&v24 = v14;
  outlined init with take of Any(&v24, v23);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000015, 0x80000001AEE2EAF0, v15);
  v16 = v1[6];
  v25 = v3;
  *&v24 = v16;
  outlined init with take of Any(&v24, v23);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000015, 0x80000001AEE2EB10, v17);
  v18 = v1[7];
  v25 = v3;
  *&v24 = v18;
  outlined init with take of Any(&v24, v23);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000010, 0x80000001AEE2EB30, v19);
  v20 = v1[8];
  v25 = v3;
  *&v24 = v20;
  outlined init with take of Any(&v24, v23);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000010, 0x80000001AEE2EB50, v21);
  return v4;
}

unint64_t PluginClientMetrics.ConnectionDataTransfer.debugDescription.getter()
{
  _StringGuts.grow(_:)(22);

  v11 = *v0;
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v1);

  _StringGuts.grow(_:)(24);

  v12 = v0[1];
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  _StringGuts.grow(_:)(20);

  v13 = v0[2];
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v3);

  _StringGuts.grow(_:)(31);

  v14 = v0[3];
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v4);

  _StringGuts.grow(_:)(27);

  v15 = v0[4];
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v5);

  _StringGuts.grow(_:)(29);

  v16 = v0[5];
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v6);

  _StringGuts.grow(_:)(24);

  v17 = v0[6];
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v7);

  _StringGuts.grow(_:)(23);

  v18 = v0[7];
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v8);

  _StringGuts.grow(_:)(24);

  v19 = v0[8];
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v9);

  _StringGuts.grow(_:)(50);

  MEMORY[0x1B2710020](0xD000000000000014, 0x80000001AEE31360);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000016, 0x80000001AEE31400);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD00000000000001DLL, 0x80000001AEE31440);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000019, 0x80000001AEE31460);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE31420);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE31480);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000016, 0x80000001AEE314A0);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000015, 0x80000001AEE314C0);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000016, 0x80000001AEE314E0);

  return 0xD000000000000018;
}

unint64_t PluginClientMetrics.ConnectionDataTransfer.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000015;
  if (a1 <= 3u)
  {
    v5 = 0xD000000000000011;
    if (a1 != 2)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (!a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PluginClientMetrics.ConnectionDataTransfer.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PluginClientMetrics.ConnectionDataTransfer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore19PluginClientMetricsO22ConnectionDataTransferV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore19PluginClientMetricsO22ConnectionDataTransferV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v21[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v21[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = v3[2];
  v21[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v21[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v21[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[5];
  v21[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v21[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v3[7];
  v21[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = v3[8];
  v21[7] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

__n128 PluginClientMetrics.ConnectionDataTransfer.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PluginClientMetrics.ConnectionDataTransfer.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 protocol witness for Decodable.init(from:) in conformance PluginClientMetrics.ConnectionDataTransfer@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized PluginClientMetrics.ConnectionDataTransfer.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PluginClientMetrics.ConnectionDataTransfer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static PluginClientMetrics.ConnectionDataTransfer.== infix(_:_:)(v7, v9);
}

uint64_t PluginClientReporter.reportReadyCallback.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PluginClientReporter.receivedConnectionEstablishmentReportCount.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t PluginClientReporter.receivedConnectionEstablishmentReportCount.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t PluginClientReporter.receivedDataTransferReportCount.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t PluginClientReporter.receivedDataTransferReportCount.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void *PluginClientReporter.__allocating_init(queue:reportReadyCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  result[5] = MEMORY[0x1E69E7CC8];
  result[6] = v7;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *PluginClientReporter.init(queue:reportReadyCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC8];
  v3[5] = MEMORY[0x1E69E7CC8];
  v3[6] = v4;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void PluginClientReporter.includeConnectionEstablishmentReport(_:withTag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a2;
  v78 = a3;
  v6 = type metadata accessor for NWConnection.EstablishmentReport();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v73 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4[2];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
LABEL_4:
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, log);
    (v18)(v11, a1, v6);
    v22 = v78;

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v80[0] = v26;
      *v25 = 136315394;
      v27 = NWConnection.EstablishmentReport.debugDescription.getter();
      v29 = v28;
      (*(v7 + 8))(v11, v6);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v80);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v22, v80);
      _os_log_impl(&dword_1AEB26000, v23, v24, "[Reporter] Dropping connection-establishment-report, could not parse report=%s tag=%s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    return;
  }

  v18 = *(v7 + 16);
  (v18)(v13, a1, v6);
  specialized PluginClientMetrics.ConnectionEstablishment.init(report:)(v13, v81);
  if (v82)
  {
    if (one-time initialization token for log == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  v31 = v81[1];
  v75 = v81[0];
  v76 = v81[2];
  v74 = v81[3];
  v32 = (*(*v4 + 128))(v80);
  v34 = v33;
  v35 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v34;
  v37 = v79;
  *v34 = 0x8000000000000000;
  v39 = v77;
  v38 = v78;
  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v77, v78);
  v42 = v37[2];
  v43 = (v40 & 1) == 0;
  v44 = v42 + v43;
  if (__OFADD__(v42, v43))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v45 = v40;
  if (v37[3] >= v44)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
    v46 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v38);
    if ((v45 & 1) != (v47 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v41 = v46;
  }

  isUniquelyReferenced_nonNull_native = v76;
  v48 = *v34;
  *v34 = v79;

  v49 = *v34;
  if ((v45 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v41, v39, v38, 0, *v34);
  }

  v50 = v49[7];
  v51 = *(v50 + 8 * v41);
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
    goto LABEL_24;
  }

  *(v50 + 8 * v41) = v53;
  v32(v80, 0);
  if (one-time initialization token for log != -1)
  {
LABEL_25:
    swift_once();
  }

  v54 = v31;
  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, log);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v80[0] = v73;
    *v58 = 136315650;
    v59 = v74;
    v60 = PluginClientMetrics.ConnectionEstablishment.debugDescription.getter();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v80);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    (*(*v4 + 112))(v63);
    v64 = Dictionary.description.getter();
    v66 = v65;

    v67 = v64;
    isUniquelyReferenced_nonNull_native = v76;
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, v80);
    v39 = v77;

    *(v58 + 14) = v68;
    *(v58 + 22) = 2080;
    *(v58 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, v80);
    _os_log_impl(&dword_1AEB26000, v56, v57, "[Reporter] Received connection-establishment-report=%s counts=%s tag=%s", v58, 0x20u);
    v69 = v73;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v69, -1, -1);
    MEMORY[0x1B27120C0](v58, -1, -1);
  }

  else
  {

    v59 = v74;
  }

  v70 = v4[3];
  v71 = v4[4];
  v72 = PluginClientMetrics.ConnectionEstablishment.rtcReport.getter(v75, v54, isUniquelyReferenced_nonNull_native, v59);
  v70(v39, v38, v72);
}

void PluginClientReporter.includeConnectionDataTransferReport(_:withTag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a3;
  v70 = a2;
  v6 = type metadata accessor for NWConnection.DataTransferReport();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v69 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4[2];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_4:
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, log);
    (v18)(v11, a1, v6);
    v22 = v71;

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v77[0] = v26;
      *v25 = 136315394;
      v27 = NWConnection.DataTransferReport.debugDescription.getter();
      v29 = v28;
      (*(v7 + 8))(v11, v6);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v77);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v22, v77);
      _os_log_impl(&dword_1AEB26000, v23, v24, "[Reporter] Dropping data-transfer-report, could not parse report=%s tag=%s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    return;
  }

  v18 = *(v7 + 16);
  (v18)(v13, a1, v6);
  specialized PluginClientMetrics.ConnectionDataTransfer.init(report:)(v13, v74);
  if (v76)
  {
    if (one-time initialization token for log == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  v77[1] = v74[1];
  v77[2] = v74[2];
  v77[3] = v74[3];
  v78 = v75;
  v77[0] = v74[0];
  v31 = (*(*v4 + 152))(v73);
  v33 = v32;
  v34 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v33;
  v36 = v72;
  *v33 = 0x8000000000000000;
  v37 = v70;
  v38 = v71;
  v40 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v71);
  v41 = v36[2];
  v42 = (v39 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v44 = v39;
  if (v36[3] >= v43)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
    v45 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v38);
    if ((v44 & 1) != (v46 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v40 = v45;
  }

  v47 = *v33;
  *v33 = v72;

  v48 = *v33;
  if ((v44 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v40, v37, v38, 0, *v33);
  }

  v49 = v48[7];
  v50 = *(v49 + 8 * v40);
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
    goto LABEL_23;
  }

  *(v49 + 8 * v40) = v52;
  v31(v73, 0);
  if (one-time initialization token for log != -1)
  {
LABEL_24:
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, log);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v73[0] = v57;
    *v56 = 136315650;
    v58 = PluginClientMetrics.ConnectionDataTransfer.debugDescription.getter();
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v73);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    (*(*v4 + 136))(v61);
    v62 = Dictionary.description.getter();
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v73);
    v37 = v70;

    *(v56 + 14) = v65;
    *(v56 + 22) = 2080;
    *(v56 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v73);
    _os_log_impl(&dword_1AEB26000, v54, v55, "[Reporter] Received data-transfer-report=%s count=%s tag=%s", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v57, -1, -1);
    MEMORY[0x1B27120C0](v56, -1, -1);
  }

  v66 = v4[3];
  v67 = v4[4];
  v68 = PluginClientMetrics.ConnectionDataTransfer.rtcReport.getter();
  v66(v37, v38, v68);
}

uint64_t PluginClientReporter.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return v0;
}

uint64_t PluginClientReporter.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t specialized PluginClientMetrics.ConnectionEstablishment.init(report:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NWConnection.EstablishmentReport();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NWConnection.EstablishmentReport.Handshake();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v52 - v15;
  v17 = MEMORY[0x1B270F730](v14) * 1000.0;
  if (COERCE__INT64(fabs(v17)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v17 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  NWConnection.EstablishmentReport.attemptStartedAfterInterval.getter();
  v19 = v18 * 1000.0;
  if (COERCE__INT64(fabs(v18 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v19 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19 >= 1.84467441e19)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_13;
  }

  v55 = v16;
  v57 = a2;
  v58 = v5;
  v59 = a1;
  v60 = v4;
  v20 = NWConnection.EstablishmentReport.handshakes.getter();
  v62 = *(v20 + 16);
  if (v62)
  {
    v21 = 0;
    v53 = v19;
    v54 = v17;
    v61 = v9 + 16;
    v22 = (v9 + 8);
    while (1)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      (*(v9 + 16))(v13, v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v8);
      type metadata accessor for NWProtocolDefinition();
      v4 = NWConnection.EstablishmentReport.Handshake.definition.getter();
      type metadata accessor for NWProtocolQUICConnection();
      static NWProtocolQUICConnection.definition.getter();
      v23 = static NWProtocolDefinition.== infix(_:_:)();

      if (v23)
      {
        break;
      }

      ++v21;
      (*v22)(v13, v8);
      if (v62 == v21)
      {
        goto LABEL_12;
      }
    }

    v46 = v55;
    (*(v9 + 32))(v55, v13, v8);
    result = NWConnection.EstablishmentReport.Handshake.handshakeDuration.getter();
    v48 = v47 * 1000.0;
    if (COERCE__INT64(fabs(v47 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v48 > -1.0)
    {
      if (v48 < 1.84467441e19)
      {
        NWConnection.EstablishmentReport.Handshake.handshakeRTT.getter();
        v50 = v49;
        (*(v58 + 8))(v59, v60);
        result = (*v22)(v46, v8);
        v51 = v50 * 1000.0;
        if (COERCE__INT64(fabs(v50 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v51 > -1.0)
          {
            if (v51 < 1.84467441e19)
            {
              v44 = 0;
              v42 = v48;
              v43 = v51;
              v45 = v57;
              v41 = v53;
              v40 = v54;
              goto LABEL_24;
            }

            goto LABEL_38;
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          return result;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_12:

  v4 = v56;
  if (one-time initialization token for log != -1)
  {
    goto LABEL_32;
  }

LABEL_13:
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, log);
  v25 = v58;
  v26 = v59;
  v27 = v60;
  (*(v58 + 16))(v4, v59, v60);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v63 = v31;
    *v30 = 136315138;
    v32 = NWConnection.EstablishmentReport.debugDescription.getter();
    v33 = v4;
    v35 = v34;
    v36 = *(v25 + 8);
    v36(v33, v27);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v35, &v63);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_1AEB26000, v28, v29, "Could not find QUIC handshake info in establishment report, report=%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1B27120C0](v31, -1, -1);
    MEMORY[0x1B27120C0](v30, -1, -1);

    result = (v36)(v26, v27);
  }

  else
  {

    v39 = *(v25 + 8);
    v39(v26, v27);
    result = (v39)(v4, v27);
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 1;
  v45 = v57;
LABEL_24:
  *v45 = v40;
  *(v45 + 8) = v41;
  *(v45 + 16) = v42;
  *(v45 + 24) = v43;
  *(v45 + 32) = v44;
  return result;
}

unint64_t lazy protocol witness table accessor for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys);
  }

  return result;
}

uint64_t specialized PluginClientMetrics.ConnectionEstablishment.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001AEE315C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001AEE315E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001AEE31600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001AEE31620 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized PluginClientMetrics.ConnectionEstablishment.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore19PluginClientMetricsO23ConnectionEstablishmentV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore19PluginClientMetricsO23ConnectionEstablishmentV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PluginClientMetrics.ConnectionEstablishment.CodingKeys and conformance PluginClientMetrics.ConnectionEstablishment.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v14 = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t specialized PluginClientMetrics.ConnectionDataTransfer.init(report:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NWConnection.DataTransferReport.PathReport();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NWConnection.DataTransferReport.duration.getter();
  v11 = v10 * 1000.0;
  if (COERCE__INT64(fabs(v10 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v11 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 >= 1.84467441e19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  NWConnection.DataTransferReport.aggregatePathReport.getter();
  v24 = NWConnection.DataTransferReport.PathReport.receivedTransportByteCount.getter();
  v12 = NWConnection.DataTransferReport.PathReport.sentTransportByteCount.getter();
  v13 = NWConnection.DataTransferReport.PathReport.receivedApplicationByteCount.getter();
  v14 = NWConnection.DataTransferReport.PathReport.sentApplicationByteCount.getter();
  v15 = NWConnection.DataTransferReport.PathReport.retransmittedTransportByteCount.getter();
  result = NWConnection.DataTransferReport.PathReport.transportSmoothedRTT.getter();
  v17 = v16 * 1000.0;
  if (COERCE__INT64(fabs(v16 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v17 <= -1.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = NWConnection.DataTransferReport.PathReport.transportMinimumRTT.getter();
  v19 = v18 * 1000.0;
  if (COERCE__INT64(fabs(v18 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v19 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v19 >= 1.84467441e19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  NWConnection.DataTransferReport.PathReport.transportRTTVariance.getter();
  v21 = v20;
  v22 = type metadata accessor for NWConnection.DataTransferReport();
  (*(*(v22 - 8) + 8))(a1, v22);
  result = (*(v5 + 8))(v8, v4);
  v23 = v21 * 1000.0;
  if (COERCE__INT64(fabs(v21 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v23 < 1.84467441e19)
  {
    v25 = 0;
    *a2 = v11;
    *(a2 + 8) = v24;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v17;
    *(a2 + 56) = v19;
    *(a2 + 64) = v23;
    *(a2 + 72) = 0;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys;
  if (!lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys);
  }

  return result;
}

uint64_t specialized PluginClientMetrics.ConnectionDataTransfer.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x80000001AEE315C0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AEE31640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001AEE31660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001AEE31680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001AEE316A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001AEE316C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AEE316E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001AEE31700 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AEE31720 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t specialized PluginClientMetrics.ConnectionDataTransfer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore19PluginClientMetricsO22ConnectionDataTransferV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore19PluginClientMetricsO22ConnectionDataTransferV10CodingKeys33_6D3A58DADCAE87EC4366D8F9C8ECE274LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PluginClientMetrics.ConnectionDataTransfer.CodingKeys and conformance PluginClientMetrics.ConnectionDataTransfer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v36 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = 3;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = 4;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = 5;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = 6;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = 7;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = 8;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v11;
  a2[1] = v12;
  v16 = v26;
  v15 = v27;
  a2[2] = v13;
  a2[3] = v15;
  v18 = v24;
  v17 = v25;
  a2[4] = v16;
  a2[5] = v17;
  v19 = v22;
  v20 = v23;
  a2[6] = v18;
  a2[7] = v20;
  a2[8] = v19;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginClientMetrics.ConnectionEstablishment(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PluginClientMetrics.ConnectionEstablishment(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginClientMetrics.ConnectionDataTransfer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PluginClientMetrics.ConnectionDataTransfer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PluginClientMetrics.ConnectionDataTransfer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginClientMetrics.ConnectionDataTransfer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginClientMetrics.ConnectionEstablishment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginClientMetrics.ConnectionEstablishment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t HostConnectionNotificationObserver.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

id ConversationManagerClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ConversationManagerClient.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ConversationManagerClient.shared;

  return v1;
}

uint64_t key path setter for ConversationManagerClient.pluginClientReporter : ConversationManagerClient(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t ConversationManagerClient.customEndpointProvider.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))();
  specialized Collection.first.getter(v1);
  v3 = v2;
  v5 = v4;

  if (!v3)
  {
    return 0;
  }

  return v5;
}

_OWORD *specialized Collection.first.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.subscript.getter(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = specialized Set.subscript.getter(v3, *(a1 + 36), 0, a1);

  return v5;
}

{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x1B27109A0](v3, v5, v6, v7);
    outlined consume of Set<AddressableMember>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<AddressableMember>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1, type metadata accessor for ActivitySession);
  v13 = v12;
  outlined consume of Set<AddressableMember>.Index._Variant(v3, v5, v2 != 0);
  return v13;
}

uint64_t ConversationManagerClient.customEndpointProvider.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    ConversationManagerClient.registerEndpointProvider(_:)(a1, a2);

    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x148))();
    v5 = specialized Collection.first.getter(v4);
    v7 = v6;

    if (v7)
    {
      swift_unknownObjectRelease();
      v8._countAndFlagsBits = v5;
      v8._object = v7;
      ConversationManagerClient.unregisterEndpointProvider(identifier:)(v8);
    }
  }

  return result;
}

uint64_t ConversationManagerClient.registerEndpointProvider(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v14 = (*(a2 + 8))();
  v16 = v15;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.client);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = v7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v35 = v10;
    v23 = v6;
    v24 = v3;
    v25 = a1;
    v26 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, aBlock);
    _os_log_impl(&dword_1AEB26000, v18, v19, "Registering custom endpoint provider: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v27 = v26;
    a1 = v25;
    v3 = v24;
    v6 = v23;
    v10 = v35;
    MEMORY[0x1B27120C0](v27, -1, -1);
    v28 = v21;
    v7 = v36;
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  v29 = *&v3[direct field offset for XPCClient.queue];
  v30 = swift_allocObject();
  v30[2] = v3;
  v30[3] = v14;
  v30[4] = v16;
  v30[5] = a1;
  v30[6] = a2;
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.registerEndpointProvider(_:);
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v31 = _Block_copy(aBlock);
  v32 = v3;
  swift_unknownObjectRetain();
  v33 = v37;
  static DispatchQoS.unspecified.getter();
  v40 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v33, v10, v31);
  _Block_release(v31);
  (*(v7 + 8))(v10, v6);
  (*(v38 + 8))(v33, v39);
}

Swift::Void __swiftcall ConversationManagerClient.unregisterEndpointProvider(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.client);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, aBlock);
    _os_log_impl(&dword_1AEB26000, v15, v16, "Unregistering custom endpoint provider: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1B27120C0](v19, -1, -1);
    v20 = v18;
    v6 = v25;
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

  v21 = *&v2[direct field offset for XPCClient.queue];
  v22 = swift_allocObject();
  v22[2] = v2;
  v22[3] = countAndFlagsBits;
  v22[4] = object;
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.unregisterEndpointProvider(identifier:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_1;
  v23 = _Block_copy(aBlock);

  v24 = v2;
  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v9, v23);
  _Block_release(v23);
  (*(v6 + 8))(v9, v5);
  (*(v26 + 8))(v13, v27);
}

void (*ConversationManagerClient.customEndpointProvider.modify(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x148);
  v6 = ((*MEMORY[0x1E69E7D40] & *v1) + 328) & 0xFFFFFFFFFFFFLL | 0xD5EB000000000000;
  v3[3] = v5;
  v3[4] = v6;
  v7 = v5();
  specialized Collection.first.getter(v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v9)
  {
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *v4 = v11;
  v4[1] = v13;
  return ConversationManagerClient.customEndpointProvider.modify;
}

void ConversationManagerClient.customEndpointProvider.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  if (a2)
  {
    if (v3)
    {
      v5 = v2[1];
      v4 = v2[2];
      v6 = **a1;
      v7 = swift_unknownObjectRetain();
      ConversationManagerClient.registerEndpointProvider(_:)(v7, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = v2[4];
      v10 = v2[2];
      v11 = (v2[3])();
      v12 = specialized Collection.first.getter(v11);
      v14 = v13;

      if (v14)
      {
        v15 = v2[2];
        swift_unknownObjectRelease();
        v16._countAndFlagsBits = v12;
        v16._object = v14;
        ConversationManagerClient.unregisterEndpointProvider(identifier:)(v16);
      }
    }

    v17 = *v2;
    goto LABEL_9;
  }

  if (v3)
  {
    v8 = v2[2];
    ConversationManagerClient.registerEndpointProvider(_:)(**a1, v2[1]);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v18 = v2[4];
  v19 = v2[2];
  v20 = (v2[3])();
  v21 = specialized Collection.first.getter(v20);
  v23 = v22;

  if (v23)
  {
    v24 = v2[2];
    swift_unknownObjectRelease();
    v25._countAndFlagsBits = v21;
    v25._object = v23;
    ConversationManagerClient.unregisterEndpointProvider(identifier:)(v25);
  }

LABEL_10:

  free(v2);
}

uint64_t ConversationManagerClient.customEndpointProviders.getter()
{
  v1 = direct field offset for ConversationManagerClient.customEndpointProviders;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ConversationManagerClient.customEndpointProviders.setter(uint64_t a1)
{
  v3 = direct field offset for ConversationManagerClient.customEndpointProviders;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ConversationManagerClient.hasInitialState.getter()
{
  v1 = direct field offset for ConversationManagerClient.hasInitialState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationManagerClient.hasInitialState.setter(char a1)
{
  v3 = direct field offset for ConversationManagerClient.hasInitialState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for ConversationManagerClient.activeSessionContainer : ConversationManagerClient@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationManagerClient.activeSessionContainer : ConversationManagerClient(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1C8);
  v4 = *a1;
  return v3(v2);
}

uint64_t ConversationManagerClient.activeSessionContainer.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ConversationManagerClient.activeSessionContainer.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*ConversationManagerClient.activeSessionContainer.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  return ConversationManagerClient.activeSessionContainer.modify;
}

void ConversationManagerClient.activeSessionContainer.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for ConversationManagerClient.$activeSessionContainer : ConversationManagerClient(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo38TUConversationActivitySessionContainerCSg_GMd, &_s7Combine9PublishedV9PublisherVySo38TUConversationActivitySessionContainerCSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x1E0))(v7);
}

uint64_t ConversationManagerClient.$activeSessionContainer.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMd, &_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ConversationManagerClient.$activeSessionContainer.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo38TUConversationActivitySessionContainerCSg_GMd, &_s7Combine9PublishedV9PublisherVySo38TUConversationActivitySessionContainerCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMd, &_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void closure #1 in ConversationManagerClient.init()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v48 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v44 - v21;
  UUID.init(uuidString:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of NSObject?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.client);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49 = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v49);
      _os_log_impl(&dword_1AEB26000, v24, v25, a6, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }
  }

  else
  {
    (*(v16 + 32))(v22, v14, v15);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.client);
    (*(v16 + 16))(v20, v22, v15);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v31 = 136315394;
      v32 = Dictionary.description.getter();
      v45 = v30;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v49);
      v47 = a4;
      v35 = v34;

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v44 = a3;
      v39 = *(v16 + 8);
      v39(v20, v15);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v49);

      *(v31 + 14) = v40;
      _os_log_impl(&dword_1AEB26000, v29, v45, v48, v31, 0x16u);
      v41 = v46;
      swift_arrayDestroy();
      v42 = v41;
      v43 = v44;
      MEMORY[0x1B27120C0](v42, -1, -1);
      MEMORY[0x1B27120C0](v31, -1, -1);
    }

    else
    {

      v43 = a3;
      v39 = *(v16 + 8);
      v39(v20, v15);
    }

    ConversationManagerClient.includeMetricsReport(_:conversationUUID:)(v43, v22);
    v39(v22, v15);
  }
}

uint64_t closure #5 in ConversationManagerClient.init()(id *a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v22 = *a2;
  if (*a1)
  {
    v23 = [*a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v5 + 56);
    v24(v21, 0, 1, v4);
  }

  else
  {
    v24 = *(v5 + 56);
    v24(&v33 - v20, 1, 1, v4);
  }

  if (v22)
  {
    v25 = [v22 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v24(v19, v26, 1, v4);
  v27 = *(v8 + 48);
  outlined init with copy of UUID?(v21, v11);
  outlined init with copy of UUID?(v19, &v11[v27]);
  v28 = *(v5 + 48);
  if (v28(v11, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v11, v16);
    if (v28(&v11[v27], 1, v4) != 1)
    {
      v30 = v34;
      (*(v5 + 32))(v34, &v11[v27], v4);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v5 + 8);
      v31(v30, v4);
      outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v31(v16, v4);
      outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v29 & 1;
    }

    outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v16, v4);
    goto LABEL_12;
  }

  outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v28(&v11[v27], 1, v4) != 1)
  {
LABEL_12:
    outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v29 = 0;
    return v29 & 1;
  }

  outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v29 = 1;
  return v29 & 1;
}

Swift::Void __swiftcall ConversationManagerClient.fetchInitialStateIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + direct field offset for XPCClient.queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v9 = (v3 + 8);
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_5;
  }

  v11 = *(ConversationManagerClient.notification.getter() + 16);
  v12 = DarwinNotification.state.getter();

  if (v12 != 1 || ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8))(v13) & 1) != 0)
  {
    return;
  }

  v6 = objc_opt_self();
  v9 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  v2 = [v6 processInfo];
  if (one-time initialization token for identity != -1)
  {
    goto LABEL_34;
  }

LABEL_5:
  if ((static ConversationManagerInterface.identity & 0xFE) == 4)
  {

LABEL_8:
    v15 = [v6 v9[144]];
    if (specialized EntitlementValueProviding.isEntitledToUsePublicAPI.getter())
    {

LABEL_21:
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      v23 = v1;
      v24 = specialized XPCClient.connection.getter();
      v41 = partial apply for closure #2 in ConversationManagerClient.fetchInitialStateIfNeeded();
      v42 = v22;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v40 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
      *(&v40 + 1) = &block_descriptor_29;
      v25 = _Block_copy(&aBlock);

      v26 = [v24 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v25);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
      if (swift_dynamicCast())
      {
        v43 = v38[1];
        closure #1 in ConversationManagerClient.fetchInitialStateIfNeeded()(&v43, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v16 = SecTaskCreateFromSelf(0);
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0x1B270FF70](0xD00000000000001CLL, 0x80000001AEE2ED50);
      v19 = SecTaskCopyValueForEntitlement(v17, v18, 0);

      if (v19)
      {
        *(&v40 + 1) = swift_getObjectType();

        *&aBlock = v19;
      }

      else
      {
        aBlock = 0u;
        v40 = 0u;
      }
    }

    else
    {
      aBlock = 0u;
      v40 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    if (!swift_dynamicCast() || (v20 = v44, v44 == 2))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v21 = static EntitlementTestingOverrides.default;
      swift_beginAccess();
      v20 = *(v21 + 1);
    }

    if (v20)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  LOBYTE(aBlock) = static ConversationManagerInterface.identity;
  v14 = NSProcessInfo.isAllowedToConnect(to:)(&aBlock);

  if (v14)
  {
    goto LABEL_8;
  }

LABEL_23:
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Log.client);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&aBlock = v31;
    *v30 = 136315138;
    LOBYTE(v43) = static ConversationManagerInterface.identity;
    v32 = String.init<A>(reflecting:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &aBlock);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1AEB26000, v28, v29, "ConversationManagerClient not requesting initial state since the sandbox does not have access to %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1B27120C0](v31, -1, -1);
    MEMORY[0x1B27120C0](v30, -1, -1);
  }

  if (one-time initialization token for runtimeIssues != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v27, static Log.runtimeIssues);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1AEB26000, v35, v36, "Using SharePlay requires that you add the Group Activities capability to your application's target.", v37, 2u);
    MEMORY[0x1B27120C0](v37, -1, -1);
  }
}

uint64_t closure #1 in ConversationManagerClient.fetchInitialStateIfNeeded()(id *a1, void *a2)
{
  v30 = *a1;
  if (one-time initialization token for client != -1)
  {
LABEL_16:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.client);
  v4 = a2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    type metadata accessor for ConversationManagerClient();
    v9 = v4;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v31);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v5, v6, "ConversationManagerClient requesting initial state %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v13 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1B0))(1);
  v14 = (*((*v13 & *v4) + 0x148))([v30 requestConversationContainersUpdate]);
  a2 = v14;
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = (v21 << 10) | (16 * v22);
      v24 = (a2[6] + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(a2[7] + v23);

      swift_unknownObjectRetain();
      v28 = MEMORY[0x1B270FF70](v25, v26);
      [v30 registerIdentifierForCustomEndpoint_];
      swift_unknownObjectRelease();

      if (!v18)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_12;
    }
  }
}

uint64_t closure #2 in ConversationManagerClient.fetchInitialStateIfNeeded()(void *a1, void *a2)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Error requesting initial state: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v14 = *(a2 + direct field offset for ConversationManagerClient.publishers);

  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  CurrentValueSubject.send(_:)();

  return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x1B0))(0);
}

uint64_t specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = specialized XPCClient.connection.getter();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = a5;
  v14 = _Block_copy(aBlock);

  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v17;
    a1(&v19);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ConversationManagerClient.handleServerDisconnect()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[direct field offset for XPCClient.queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (one-time initialization token for client == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.client);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    v14 = *(ConversationManagerClient.notification.getter() + 16);
    v15 = DarwinNotification.state.getter();

    v28 = v15;
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Server disconnected for ConversationManagerClient notification state %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  v19 = &v9[direct field offset for ConversationManagerClient.publishers];
  v20 = *&v9[direct field offset for ConversationManagerClient.publishers];

  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  CurrentValueSubject.send(_:)();

  v21 = *(v19 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  Subject<>.send()();

  v22 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0x1B0))(0);
  v23 = *(ConversationManagerClient.notification.getter() + 16);
  v24 = DarwinNotification.state.getter();

  if (v24 == 1)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1AEB26000, v25, v26, "Re-fetching initial state as we are told there are changed conversations", v27, 2u);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }

    (*((*v22 & *v9) + 0x1F0))();
  }
}

uint64_t ConversationManagerClient.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for ConversationManagerClient.featureFlags);
  swift_unknownObjectRelease();
  v2 = *(v0 + direct field offset for ConversationManagerClient.pluginClientReporter);

  v3 = *(v0 + direct field offset for ConversationManagerClient.pubSubTopicReporter);

  v4 = *(v0 + direct field offset for ConversationManagerClient.customEndpointProviders);

  v6 = *(v0 + direct field offset for ConversationManagerClient.publishers);
  v5 = *(v0 + direct field offset for ConversationManagerClient.publishers + 8);

  v7 = *(v0 + direct field offset for ConversationManagerClient.subscriptions);

  v8 = *(v0 + direct field offset for ConversationManagerClient.$__lazy_storage_$_notification);

  v9 = direct field offset for ConversationManagerClient._activeSessionContainer;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMd, &_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMR);
  v11 = *(*(v10 - 8) + 8);

  return v11(v0 + v9, v10);
}

id ConversationManagerClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationManagerClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc ConversationManagerClient.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for ConversationManagerClient.featureFlags);
  swift_unknownObjectRelease();
  v3 = *(a1 + direct field offset for ConversationManagerClient.pluginClientReporter);

  v4 = *(a1 + direct field offset for ConversationManagerClient.pubSubTopicReporter);

  v5 = *(a1 + direct field offset for ConversationManagerClient.customEndpointProviders);

  v7 = *(a1 + direct field offset for ConversationManagerClient.publishers);
  v6 = *(a1 + direct field offset for ConversationManagerClient.publishers + 8);

  v8 = *(a1 + direct field offset for ConversationManagerClient.subscriptions);

  v9 = *(a1 + direct field offset for ConversationManagerClient.$__lazy_storage_$_notification);

  v10 = direct field offset for ConversationManagerClient._activeSessionContainer;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMd, &_s7Combine9PublishedVySo38TUConversationActivitySessionContainerCSgGMR);
  v12 = *(*(v11 - 8) + 8);

  return v12(a1 + v10, v11);
}

uint64_t ConversationManagerClient.advertiseGroupActivity(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](ConversationManagerClient.advertiseGroupActivity(_:), 0, 0);
}

uint64_t ConversationManagerClient.advertiseGroupActivity(_:)()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = ConversationManagerClient.advertiseGroupActivity(_:);

  return MEMORY[0x1EEE6DE38]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = ConversationManagerClient.advertiseGroupActivity(_:);
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = SKPresenceDataSource.releasePresence();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t ConversationManagerClient.stopAdvertisingGroupActivity(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](ConversationManagerClient.stopAdvertisingGroupActivity(_:), 0, 0);
}

uint64_t ConversationManagerClient.stopAdvertisingGroupActivity(_:)()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = ConversationManagerClient.stopAdvertisingGroupActivity(_:);

  return MEMORY[0x1EEE6DE38]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v29 = a3;
  v30 = a1;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&a2[direct field offset for XPCClient.queue];
  (*(v17 + 16))(v19, v29, v16);
  (*(v12 + 16))(v15, v30, v11);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = (v18 + *(v12 + 80) + v20) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  (*(v17 + 32))(v22 + v20, v19, v16);
  (*(v12 + 32))(v22 + v21, v15, v11);
  aBlock[4] = v34;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v35;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  v25 = v31;
  static DispatchQoS.unspecified.getter();
  v41 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v26 = v36;
  v27 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v25, v26, v23);
  _Block_release(v23);
  (*(v40 + 8))(v26, v27);
  (*(v37 + 8))(v25, v39);
}

uint64_t closure #1 in closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(uint64_t *))
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.client);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1AEB26000, v10, v11, a4, v12, 2u);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v13);
  v15[2] = a2;
  v15[3] = a3;
  return specialized XPCClient.withHost(body:errorHandler:)(a5, v15, destructiveProjectEnumData for ActivitySession.Errors, 0);
}

void closure #1 in closure #1 in closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v20 = a6;
  v21 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v11 + 16))(v14, a3, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v14, v10);
  aBlock[4] = a5;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = v20;
  v19 = _Block_copy(aBlock);

  [v15 *v21];
  _Block_release(v19);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ConversationManagerClient.activitySessions.getter()
{
  v1 = *&v0[direct field offset for XPCClient.queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ConversationManagerClient.activitySessions.getter;
  *(v3 + 24) = v2;
  v8[4] = _sIg_Ieg_TRTA_0;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor_42;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = *&v5[direct field offset for ConversationManagerClient.publishers];

    CurrentValueSubject.value.getter();

    return v8[0];
  }

  return result;
}

uint64_t ConversationManagerClient.topicCategory(groupUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  (*(v8 + 16))(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  (*(v8 + 32))(v11 + v10, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = v3;

  v19[1] = Future.init(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<PubSubClient.TopicCategory, Never> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR);
  v17 = Publisher.eraseToAnyPublisher()();

  return v17;
}

uint64_t closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a2;
  v33 = a6;
  v30 = a1;
  v31 = a5;
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v36 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *&a3[direct field offset for XPCClient.queue];
  (*(v15 + 16))(v17, a4, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = (v20 + v19);
  v22 = v30;
  v23 = v33;
  *v21 = v31;
  v21[1] = v23;
  v24 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  v25 = v32;
  *v24 = v22;
  v24[1] = v25;
  aBlock[4] = partial apply for closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_196;
  v26 = _Block_copy(aBlock);
  v27 = a3;

  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v28 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v10, v26);
  _Block_release(v26);
  (*(v38 + 8))(v10, v28);
  (*(v35 + 8))(v13, v37);
}

void closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v64 = a6;
  v65 = a5;
  v68 = a4;
  v69 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v60[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v60[-v17];
  v19 = *(a1 + direct field offset for ConversationManagerClient.publishers);

  CurrentValueSubject.value.getter();

  v71 = a2;
  specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:), v70, v72);
  v21 = v20;

  if (v21)
  {
    v22 = [v21 activitySessions];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  v24 = specialized _copyCollectionToContiguousArray<A>(_:)(v23);

  v25 = v24 < 0 || (v24 & 0x4000000000000000) != 0;
  if (v25 == 1)
  {
    goto LABEL_37;
  }

  v26 = *(v24 + 16);
  if (v26 == 1)
  {
LABEL_38:
    if (v25)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_40;
      }
    }

    else if (*(v24 + 16))
    {
LABEL_40:
      if ((v24 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x1B2710B10](0, v24);
      }

      else
      {
        if (!*(v24 + 16))
        {
          __break(1u);
          return;
        }

        v56 = *(v24 + 32);
      }

      v16 = v56;
LABEL_44:

LABEL_45:
      v57 = [v16 activity];

      if (v57)
      {
        v57 = v57;
        if ([v57 isSystemActivity])
        {

          v58 = 2;
        }

        else
        {
          v59 = [v57 isScreenSharingActivity];

          if (v59)
          {
            v58 = 3;
          }

          else
          {
            v58 = 1;
          }
        }
      }

      else
      {
        v58 = 0;
      }

      goto LABEL_51;
    }

LABEL_49:

    goto LABEL_50;
  }

  while (v26)
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Log.client);
    (*(v9 + 2))(v16, a2, v8);
    v39 = v68;

    v40 = v9;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v67 = v8;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v72 = v63;
      *v44 = 136315650;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001AEE319A0, &v72);
      *(v44 + 12) = 2080;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v62 = v41;
      v9 = v40;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v42;
      v47 = v46;
      v66 = *(v9 + 1);
      v66(v16, v8);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v72);

      *(v44 + 14) = v48;
      *(v44 + 22) = 2080;
      *(v44 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v39, &v72);
      v49 = v62;
      _os_log_impl(&dword_1AEB26000, v62, v61, "ConversationManagerClient.%s found multiple activities for group=%s, filtering for topic=%s", v44, 0x20u);
      v50 = v63;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v50, -1, -1);
      MEMORY[0x1B27120C0](v44, -1, -1);

      if (v25)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v66 = *(v40 + 1);
      v66(v16, v8);
      v9 = v40;
      if (v25)
      {
LABEL_22:
        a2 = __CocoaSet.count.getter();
        if (!a2)
        {
          goto LABEL_49;
        }

        goto LABEL_23;
      }
    }

    a2 = *(v24 + 16);
    if (!a2)
    {
      goto LABEL_49;
    }

LABEL_23:
    v18 = 0;
    v8 = (v9 + 8);
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x1B2710B10](v18, v24);
      }

      else
      {
        if (v18 >= *(v24 + 16))
        {
          goto LABEL_36;
        }

        v51 = *(v24 + 8 * v18 + 32);
      }

      v16 = v51;
      v9 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v52 = [v51 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = UUID.uuidString.getter();
      v55 = v54;
      v66(v13, v67);
      if (v53 == v69 && v55 == v68)
      {

        goto LABEL_45;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_44;
      }

      ++v18;
      if (v9 == a2)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v26 = __CocoaSet.count.getter();
    if (v26 == 1)
    {
      goto LABEL_38;
    }
  }

  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Log.client);
  (*(v9 + 2))(v18, a2, v8);
  v28 = v8;
  v29 = v68;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v72 = v33;
    *v32 = 136315650;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001AEE319A0, &v72);
    *(v32 + 12) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v9 + 1))(v18, v28);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v72);

    *(v32 + 14) = v37;
    *(v32 + 22) = 2080;
    *(v32 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v29, &v72);
    _os_log_impl(&dword_1AEB26000, v30, v31, "ConversationManagerClient.%s did not find matching PubSubClient.TopicCategory for group=%s name=%s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v33, -1, -1);
    MEMORY[0x1B27120C0](v32, -1, -1);
  }

  else
  {

    (*(v9 + 1))(v18, v28);
  }

LABEL_50:
  v58 = 0;
  v57 = 0;
LABEL_51:
  LOWORD(v72) = v58;
  v65(&v72);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t ConversationManagerClient.onHostProcessDisconnected.getter()
{
  v1 = *(v0 + direct field offset for ConversationManagerClient.publishers + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCyyts5NeverOGGMd, &_s7Combine12PublisherBoxCyAA18PassthroughSubjectCyyts5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t ConversationManagerClient.includeMetricsReport(_:conversationUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v25 = a3;
  v26 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&v5[direct field offset for XPCClient.queue];
  (*(v17 + 16))(v19, a2, v16);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = a1;
  (*(v17 + 32))(v21 + v20, v19, v16);
  aBlock[4] = v26;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v28;
  v22 = _Block_copy(aBlock);
  v23 = v5;

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v11, v22);
  _Block_release(v22);
  (*(v31 + 8))(v11, v8);
  (*(v29 + 8))(v15, v30);
}

void closure #1 in closure #1 in ConversationManagerClient.addRemoteMembers(_:toConversationWithUUID:)(void **a1)
{
  v1 = *a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v3 = UUID._bridgeToObjectiveC()().super.isa;
  [v1 addRemoteMembers:isa toConversationWithUUID:v3];
}

uint64_t ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:)(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v12 = *(v37 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  if (a1)
  {
    v17 = a1;
  }

  else
  {
    v18 = type metadata accessor for AuthorizationRequestOverrides();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
    *v20 = 0;
    v20[1] = 0;
    v21 = &v19[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
    *v21 = 0;
    v21[1] = 0;
    v22 = &v19[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
    *v22 = 0;
    v22[1] = 0;
    v23 = &v19[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
    *v23 = 0;
    v23[1] = 0;
    v19[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = 0;
    v19[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = 1;
    v41.receiver = v19;
    v41.super_class = v18;
    v17 = objc_msgSendSuper2(&v41, sel_init);
  }

  *(v16 + 16) = v17;
  v24 = a1;
  v25 = *(ConversationManagerClient.notification.getter() + 16);
  v26 = DarwinNotification.state.getter();

  if (v26 == 1)
  {
    v36 = *&v4[direct field offset for XPCClient.queue];
    v27 = swift_allocObject();
    v27[2] = v4;
    v27[3] = v16;
    v27[4] = a2;
    v27[5] = a3;
    aBlock[4] = partial apply for closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_60;
    v28 = _Block_copy(aBlock);
    v29 = v4;

    static DispatchQoS.unspecified.getter();
    v39 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v15, v11, v28);
    _Block_release(v28);
    (*(v38 + 8))(v11, v8);
    (*(v12 + 8))(v15, v37);
  }

  else
  {
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.client);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x80000001AEE2E8A0, aBlock);
      _os_log_impl(&dword_1AEB26000, v31, v32, "Short circuiting prepare for activation since %s is reporting no active conversations.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1B27120C0](v34, -1, -1);
      MEMORY[0x1B27120C0](v33, -1, -1);
    }

    a2(0, 0);
  }
}

uint64_t closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = a2 + 16;
  v8[3] = a3;
  v8[4] = a4;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  specialized XPCClient.withHost(body:errorHandler:)(partial apply for closure #1 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:), v8, partial apply for closure #2 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:), v6);
}

void closure #1 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:)(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_190;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  [v7 prepareForGroupActivityWithOverrides:v11 completionHandler:v10];
  _Block_release(v10);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:)(char a1, void *a2, uint64_t (*a3)(void, void *))
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.client);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2080;
    if (a2)
    {
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v13 = String.init<A>(reflecting:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

    *(v10 + 10) = v16;
    _os_log_impl(&dword_1AEB26000, v8, v9, "ConversationManagerClient prepareForGroupActivity success: %{BOOL}d, error: %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  return a3(a1 & 1, a2);
}

uint64_t closure #2 in closure #1 in ConversationManagerClient.prepareForGroupActivity(overrides:completionHandler:)(void *a1, uint64_t (*a2)(void, void))
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Encountered connection error with prepareForGroupActivity: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  return a2(0, 0);
}

Swift::Void __swiftcall ConversationManagerClient.setActivityAuthorization(_:forBundleIdentifier:)(Swift::Bool _, Swift::String forBundleIdentifier)
{
  object = forBundleIdentifier._object;
  countAndFlagsBits = forBundleIdentifier._countAndFlagsBits;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[direct field offset for XPCClient.queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = _;
  *(v15 + 32) = countAndFlagsBits;
  *(v15 + 40) = object;
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.setActivityAuthorization(_:forBundleIdentifier:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_66;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void closure #1 in ConversationManagerClient.setActivityAuthorization(_:forBundleIdentifier:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = specialized XPCClient.connection.getter();
  aBlock[4] = closure #2 in closure #1 in ConversationManagerClient.setActivityAuthorization(_:forBundleIdentifier:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_181;
  v8 = _Block_copy(aBlock);

  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
  if (swift_dynamicCast())
  {
    v10 = MEMORY[0x1B270FF70](a3, a4);
    [v11 setActivityAuthorization:a2 & 1 forBundleIdentifier:v10];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ConversationManagerClient.createStaticActivitySession(with:onConversationWithUUID:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + direct field offset for XPCClient.queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v15[-16] = a1;
    *&v15[-8] = a2;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = a1;
    specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(partial apply for closure #1 in ConversationManagerClient.createStaticActivitySession(with:onConversationWithUUID:), &v15[-32], partial apply for closure #2 in ConversationManagerClient.createStaticActivitySession(with:onConversationWithUUID:), v13, &block_descriptor_223, &_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in ConversationManagerClient.createStaticActivitySession(with:onConversationWithUUID:)(void **a1, uint64_t a2)
{
  v3 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6[4] = destructiveProjectEnumData for ActivitySession.Errors;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v6[3] = &block_descriptor_178;
  v5 = _Block_copy(v6);
  [v3 createActivitySessionWith:a2 onConversationWithUUID:isa completion:v5];
  _Block_release(v5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void closure #2 in ConversationManagerClient.createStaticActivitySession(with:onConversationWithUUID:)(void *a1, void *a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = a2;
  v6 = a1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, oslog, v7, "Error creating activitySession with request %@, error: %s", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](ConversationManagerClient.createActivitySession(with:onConversationWithUUID:), 0, 0);
}

uint64_t ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = ConversationManagerClient.createActivitySession(with:onConversationWithUUID:);
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 64, 0, 0, 0xD000000000000033, 0x80000001AEE317A0, partial apply for closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:), v2, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = ConversationManagerClient.createActivitySession(with:onConversationWithUUID:);
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = ConversationManagerClient.createActivitySession(with:onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 64));
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2(0);
}

uint64_t closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v33 = a3;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  v30 = a2;
  v35 = *&a2[direct field offset for XPCClient.queue];
  (*(v15 + 16))(v17, v31, v14);
  (*(v10 + 16))(v13, v32, v9);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = (v16 + *(v10 + 80) + v19) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  v22 = v33;
  *(v21 + 24) = v33;
  (*(v15 + 32))(v21 + v19, v17, v14);
  (*(v10 + 32))(v21 + v20, v13, v9);
  aBlock[4] = partial apply for closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_166;
  v23 = _Block_copy(aBlock);
  v24 = v30;
  v25 = v22;
  v26 = v34;
  static DispatchQoS.unspecified.getter();
  v41 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v27 = v36;
  v28 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v26, v27, v23);
  _Block_release(v23);
  (*(v40 + 8))(v27, v28);
  (*(v37 + 8))(v26, v39);
}

uint64_t closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-v10];
  v17 = a2;
  v18 = a3;
  v19 = a4;
  (*(v8 + 16))(&v16[-v10], a4, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v8 + 32))(v13 + v12, v11, v7);
  v14 = a2;
  specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(partial apply for closure #1 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:), v16, partial apply for closure #2 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:), v13, &block_descriptor_223, &_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
}

void closure #1 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - v10;
  v12 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v8 + 16))(v11, a4, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_175;
  v16 = _Block_copy(aBlock);

  [v12 createActivitySessionWith:a2 onConversationWithUUID:isa completion:v16];
  _Block_release(v16);
}

uint64_t closure #2 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(void *a1, void *a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = a2;
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v5;
    *v10 = v5;
    *(v9 + 12) = 2080;
    v12 = v5;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Error creating activitySession with request %@, error: %s", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v19 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(int a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v22 = *&v2[direct field offset for XPCClient.queue];
  (*(v13 + 16))(&v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v12);
  v15 = (*(v13 + 80) + 25) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v21;
  (*(v13 + 32))(v16 + v15, &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v12);
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_83_0;
  v17 = _Block_copy(aBlock);
  v18 = v2;
  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v7, v17);
  _Block_release(v17);
  (*(v25 + 8))(v7, v4);
  (*(v23 + 8))(v11, v24);
}

uint64_t closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11[16] = a2;
  v12 = a3;
  (*(v6 + 16))(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v5);
  v8 = (*(v6 + 80) + 17) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v6 + 32))(v9 + v8, &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(partial apply for closure #1 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:), v11, partial apply for closure #2 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:), v9, &block_descriptor_223, &_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
}

void closure #2 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.client);
  (*(v7 + 16))(v10, a3, v6);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 67109634;
    *(v15 + 4) = a2 & 1;
    *(v15 + 8) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v26);

    *(v15 + 10) = v20;
    *(v15 + 18) = 2080;
    v25 = a1;
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v26);

    *(v15 + 20) = v24;
    _os_log_impl(&dword_1AEB26000, v13, v14, "Error setting downlink muted: (%{BOOL}d) for remote participants in conversation: %s with error: %s", v15, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t ConversationManagerClient.buzzMember(_:conversationUUID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v26 = a3;
  v27 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *&v5[direct field offset for XPCClient.queue];
  (*(v17 + 16))(v19, a2, v16);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = a1;
  (*(v17 + 32))(v21 + v20, v19, v16);
  aBlock[4] = v27;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v29;
  v22 = _Block_copy(aBlock);
  v23 = v5;
  v24 = a1;
  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v11, v22);
  _Block_release(v22);
  (*(v32 + 8))(v11, v8);
  (*(v30 + 8))(v15, v31);
}

void closure #1 in closure #1 in ConversationManagerClient.includeMetricsReport(_:conversationUUID:)(void **a1)
{
  v1 = *a1;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3 = UUID._bridgeToObjectiveC()().super.isa;
  [v1 includeMetricsReport:isa onConversationWithUUID:v3];
}

void closure #1 in ConversationManagerClient.registerEndpointProvider(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E7D40];
  if (*((*((*MEMORY[0x1E69E7D40] & *a1) + 0x148))() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      return;
    }
  }

  else
  {
  }

  v13 = *((*v10 & *a1) + 0x158);

  swift_unknownObjectRetain();
  v14 = v13(aBlock);
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v16;
  *v16 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);

  *v16 = v26;
  v19 = v14(aBlock, 0);
  if ((*((*v10 & *a1) + 0x1A8))(v19))
  {
    v20 = specialized XPCClient.connection.getter();
    aBlock[4] = closure #2 in closure #1 in ConversationManagerClient.registerEndpointProvider(_:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
    aBlock[3] = &block_descriptor_235;
    v21 = _Block_copy(aBlock);

    v22 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v21);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
    if (swift_dynamicCast())
    {
      v23 = v26;
      v24 = MEMORY[0x1B270FF70](a2, a3);
      [v23 registerIdentifierForCustomEndpoint_];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in ConversationManagerClient.unregisterEndpointProvider(identifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E7D40];
  if (*((*((*MEMORY[0x1E69E7D40] & *a1) + 0x148))() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v8 = v7;

    if (v8)
    {
      v9 = *((*v6 & *a1) + 0x158);

      v10 = v9(aBlock);
      specialized Dictionary.subscript.setter(0, 0, a2, a3);
      v11 = v10(aBlock, 0);
      if ((*((*v6 & *a1) + 0x1A8))(v11))
      {
        v12 = specialized XPCClient.connection.getter();
        aBlock[4] = closure #2 in closure #1 in ConversationManagerClient.unregisterEndpointProvider(identifier:);
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
        aBlock[3] = &block_descriptor_232;
        v13 = _Block_copy(aBlock);

        v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
        _Block_release(v13);

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
        if (swift_dynamicCast())
        {
          v15 = MEMORY[0x1B270FF70](a2, a3);
          [v16 unregisterIdentifierForCustomEndpoint_];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
  }
}

uint64_t ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v46 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for DispatchQoS();
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.client);

  v20 = a3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v45 = v11;
    v24 = v23;
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v24 = 136315394;
    v42 = v22;
    v25 = a1;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v24 + 12) = 2080;
    v50 = v20;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    v44 = v6;
    v26 = v20;
    v27 = String.init<A>(reflecting:)();
    v29 = a2;
    v30 = v18;
    v31 = v14;
    v32 = a5;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, aBlock);
    v6 = v44;

    *(v24 + 14) = v33;
    a5 = v32;
    v14 = v31;
    v18 = v30;
    a2 = v29;
    _os_log_impl(&dword_1AEB26000, v21, v42, "Fetching endpoint: %s for activity session: %s", v24, 0x16u);
    v34 = v43;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v34, -1, -1);
    v35 = v24;
    v11 = v45;
    MEMORY[0x1B27120C0](v35, -1, -1);
  }

  else
  {

    v25 = a1;
  }

  v45 = *&v6[direct field offset for XPCClient.queue];
  v36 = swift_allocObject();
  v36[2] = v6;
  v36[3] = v25;
  v36[4] = a2;
  v36[5] = v20;
  v36[6] = v46;
  v36[7] = a5;
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:);
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_95;
  v37 = _Block_copy(aBlock);

  v38 = v20;
  v39 = v6;

  static DispatchQoS.unspecified.getter();
  v50 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v18, v14, v37);
  _Block_release(v37);
  (*(v49 + 8))(v14, v11);
  (*(v47 + 8))(v18, v48);
}

uint64_t closure #1 in ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = specialized XPCClient.connection.getter();
  aBlock[4] = closure #2 in closure #1 in ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_154;
  v12 = _Block_copy(aBlock);

  v13 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    v17 = v15;
    closure #1 in closure #1 in ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:)(&v17, a2, a3, a4, a5, a6);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in ConversationManagerClient.fetchEndpoint(for:activitySession:completionHandler:)(void **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = MEMORY[0x1B270FF70](a2, a3);
  v19 = [a4 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v13 + 8))(v16, v12);
  v21 = [a4 activity];
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
  aBlock[3] = &block_descriptor_157;
  v22 = _Block_copy(aBlock);

  [v17 fetchEndpointWith:v18 activitySessionUUID:isa activity:v21 completion:v22];
  _Block_release(v22);
}

void closure #2 in closure #1 in ConversationManagerClient.addRemoteMembers(_:toConversationWithUUID:)(void *a1, const char *a2)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t protocol witness for ConversationManagerClientProtocol.onHostProcessDisconnected.getter in conformance ConversationManagerClient()
{
  v1 = *(*v0 + direct field offset for ConversationManagerClient.publishers + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA18PassthroughSubjectCyyts5NeverOGGMd, &_s7Combine12PublisherBoxCyAA18PassthroughSubjectCyyts5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient, 0, 0);
}

uint64_t protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 64, 0, 0, 0xD000000000000033, 0x80000001AEE317A0, closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)partial apply, v2, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = protocol witness for ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:) in conformance ConversationManagerClient;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t protocol witness for ConversationManagerClientProtocol.advertiseGroupActivity(_:) in conformance ConversationManagerClient(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](protocol witness for ConversationManagerClientProtocol.advertiseGroupActivity(_:) in conformance ConversationManagerClient, 0, 0);
}

uint64_t protocol witness for ConversationManagerClientProtocol.advertiseGroupActivity(_:) in conformance ConversationManagerClient()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD00000000000001ALL, 0x80000001AEE31750, closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)partial apply, v1, v4);
}