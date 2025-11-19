uint64_t closure #1 in DatagramChannelStream.sendNextEgressMessage()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - v11;
  v66 = type metadata accessor for NWEndpoint();
  v13 = *(v66 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v66);
  v60 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v55 - v21;
  v23 = *a1;
  v24 = (*(*a2 + 320))(v20);
  if (*(v24 + 16))
  {
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
    if (v26)
    {
      v27 = v66;
      (*(v13 + 16))(v19, *(v24 + 56) + *(v13 + 72) * v25, v66);

      v28 = *(v13 + 32);
      v28(v22, v19, v27);
      v28(a3, v22, v27);
      return (*(v13 + 56))(a3, 0, 1, v27);
    }
  }

  v63 = v3;
  v64 = v23;
  v62 = a3;

  if (*(a2 + 80) == 1)
  {
    v31 = *(a2 + 24);
    v30 = *(a2 + 32);
    v32 = *(a2 + 64);
    v33 = *(a2 + 72);
    v34 = *(a2 + 48);
    v58 = *(a2 + 56);
    v35 = v58;
    v59 = v34;

    outlined copy of Data?(v32, v33);
    v57 = MEMORY[0x1B270FF70](v34, v35);
    v56 = MEMORY[0x1B270FF70](v31, v30);
    if (v33 >> 60 == 15)
    {
      v36 = 0;
    }

    else
    {
      v36 = v32;
    }

    if (v33 >> 60 == 15)
    {
      v37 = 0xC000000000000000;
    }

    else
    {
      v37 = v33;
    }

    v38 = objc_opt_self();
    outlined copy of Data?(v32, v33);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v36, v37);
    v40 = v38;
    v42 = v56;
    v41 = v57;
    v43 = [v40 createEndpointForSessionIDAlias:v57 topic:v56 participantIDAlias:v64 salt:isa];

    NWEndpoint.init(_:)();
    outlined consume of DatagramEndpoint(v59, v58, v32, v33, 1);
    v44 = v66;
    if ((*(v13 + 48))(v12, 1, v66) != 1)
    {
      v59 = *(v13 + 32);
      v45 = v60;
      v59(v60, v12, v44);
      v46 = v61;
      (*(v13 + 16))(v61, v45, v44);
      v58 = *(v13 + 56);
      v58(v46, 0, 1, v44);
      v47 = (*(*a2 + 336))(v65);
      specialized Dictionary.subscript.setter(v46, v64);
      v47(v65, 0);
      v48 = v62;
      v59(v62, v45, v44);
      return (v58)(v48, 0, 1, v44);
    }
  }

  else
  {
    v44 = v66;
    (*(v13 + 56))(v12, 1, 1, v66);
  }

  outlined destroy of NSObject?(v12, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, log);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v62;
  if (v52)
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = v64;
    _os_log_impl(&dword_1AEB26000, v50, v51, "Could not create an endpoint for participant: %llu", v54, 0xCu);
    MEMORY[0x1B27120C0](v54, -1, -1);
  }

  return (*(v13 + 56))(v53, 1, 1, v44);
}

uint64_t closure #2 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v34 = a6;
  v35 = a4;
  v36 = a5;
  v37 = a3;
  v29[0] = a2;
  v9 = *a7;
  v31 = a7;
  v32 = v9;
  v33 = v9;
  v10 = type metadata accessor for NWEndpoint();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v29 - v16;
  v30 = v29 - v16;
  dispatch_group_enter(a2);
  v18 = *(v11 + 16);
  v18(v17, a1, v10);
  (*(v11 + 56))(v17, 0, 1, v10);
  type metadata accessor for NWConnectionGroup.Message();
  v29[1] = static NWConnectionGroup.Message.default.getter();
  v18(v13, a1, v10);
  v19 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v31;
  v23 = v32;
  *(v21 + 16) = *(v32 + 80);
  v24 = v34;
  *(v21 + 24) = *(v33 + 88);
  v25 = v29[0];
  *(v21 + 40) = *(v23 + 104);
  *(v21 + 48) = v25;
  *(v21 + 56) = v24;
  (*(v11 + 32))(v21 + v19, v13, v10);
  *(v21 + v20) = v22;
  v26 = v25;

  v27 = v30;
  NWConnectionGroup.send(content:to:message:completion:)();

  return outlined destroy of NSObject?(v27, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
}

uint64_t closure #1 in closure #2 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v53 = a4;
  v7 = type metadata accessor for NWEndpoint();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49 - v18;
  v20 = type metadata accessor for NWError();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_projectBox();
  dispatch_group_leave(a2);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v19, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return outlined destroy of NSObject?(v19, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  }

  (*(v21 + 32))(v24, v19, v20);
  (*(v21 + 16))(v15, v24, v20);
  v27 = type metadata accessor for DatagramChannelError(0);
  swift_storeEnumTagMultiPayload();
  v50 = *(v27 - 8);
  v51 = v27;
  (*(v50 + 56))(v15, 0, 1, v27);
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v15, v25, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v52 = v24;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, log);
  v29 = v54;
  v30 = v55;
  v31 = v56;
  (*(v55 + 16))(v54, v53, v56);
  swift_retain_n();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v53 = v25;
    v36 = v35;
    v59[0] = v35;
    *v34 = 136315394;
    v37 = NWEndpoint.debugDescription.getter();
    v38 = v31;
    v40 = v39;
    (*(v30 + 8))(v29, v38);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, v59);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    v42 = DatagramChannelStream.description.getter();
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v59);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_1AEB26000, v32, v33, "Failed to send egress message to endpoint: %s %s", v34, 0x16u);
    swift_arrayDestroy();
    v46 = v36;
    v47 = v52;
    v25 = v53;
    MEMORY[0x1B27120C0](v46, -1, -1);
    MEMORY[0x1B27120C0](v34, -1, -1);

    v48 = v57;
  }

  else
  {

    (*(v30 + 8))(v29, v31);
    v48 = v57;
    v47 = v52;
  }

  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v25, v48, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  result = (*(v50 + 48))(v48, 1, v51);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    DatagramChannelStream.terminate(error:)(v48);
    (*(v21 + 8))(v47, v20);
    return outlined destroy of DatagramChannelError(v48);
  }

  return result;
}

uint64_t closure #3 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = *(v4 + 80);
  v10 = *(v4 + 96);
  v11 = type metadata accessor for EgressMessage();
  v12 = a1 + *(v11 + 40);
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 8);
    v15 = swift_projectBox();
    swift_beginAccess();
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v15, v8, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
    v16 = type metadata accessor for DatagramChannelError(0);
    if ((*(*(v16 - 8) + 48))(v8, 1, v16) == 1)
    {

      outlined destroy of NSObject?(v8, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
      v17 = 0;
    }

    else
    {
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError);
      v17 = swift_allocError();
      outlined init with take of DatagramChannelError(v8, v18);
    }

    v13(v17);

    v11 = _sxRi_zRi0_zlyytIseghHr_SgWOe(v13);
  }

  return DatagramChannelStream.sendNextEgressMessage()(v11);
}

uint64_t closure #4 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v46 = a3;
  v4 = *a2;
  v45 = type metadata accessor for DatagramChannelError(0);
  v5 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for NWError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v11, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v11, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
    v17 = *(v4 + 80);
    v18 = *(v4 + 96);
    v19 = type metadata accessor for EgressMessage();
    v20 = v46 + *(v19 + 40);
    if (*v20)
    {
      v21 = *(v20 + 8);
      v19 = (*v20)(0);
    }

    return DatagramChannelStream.sendNextEgressMessage()(v19);
  }

  else
  {
    v44 = v4;
    (*(v13 + 32))(v16, v11, v12);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, log);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v16;
      v28 = v27;
      v47 = v27;
      *v26 = 136315138;
      v29 = DatagramChannelStream.description.getter();
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v47);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1AEB26000, v24, v25, "Failed to multicast egress message %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v33 = v28;
      v16 = v43;
      MEMORY[0x1B27120C0](v33, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    else
    {
    }

    v34 = v44;
    (*(v13 + 16))(v7, v16, v12);
    swift_storeEnumTagMultiPayload();
    DatagramChannelStream.terminate(error:)(v7);
    v35 = *(v34 + 80);
    v36 = *(v34 + 96);
    v37 = v46 + *(type metadata accessor for EgressMessage() + 40);
    v38 = *v37;
    if (*v37)
    {
      v39 = *(v37 + 8);
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError);
      v40 = swift_allocError();
      outlined init with copy of DatagramChannelError(v7, v41);
      v38(v40);
    }

    outlined destroy of DatagramChannelError(v7);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t protocol witness for AnyDatagramChannelStream.topic.getter in conformance DatagramChannelStream<A, B>()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void (*protocol witness for AnyDatagramChannelStream.channelGroupState.modify in conformance DatagramChannelStream<A, B>(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 256))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t DatagramChannelStream.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 96);
  v12 = *(*v3 + 80);
  v13 = v7;
  v8 = type metadata accessor for DatagramChannelStream.OutputSubscription();
  swift_allocObject();

  v10 = specialized DatagramChannelStream.OutputSubscription.init<A>(channelStream:subscriber:)(v9, a1, a2, a3);
  v14 = v8;
  WitnessTable = swift_getWitnessTable();
  *&v12 = v10;
  dispatch thunk of Subscriber.receive(subscription:)();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v12);
}

uint64_t DatagramChannelStream.description.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v20 = 0;
  v21 = 0xE000000000000000;
  MEMORY[0x1B2710020](0x3D666C6573, 0xE500000000000000);
  v19 = v0;
  _print_unlocked<A, B>(_:_:)();
  v10 = v20;
  v17 = v21;
  v20 = 0x3D6369706F74;
  v21 = 0xE600000000000000;
  MEMORY[0x1B2710020](*(v0 + 24), *(v0 + 32));
  v11 = v21;
  v18 = v20;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + direct field offset for DatagramChannelStream.traceId, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    v20 = v10;
    v21 = v17;
    MEMORY[0x1B2710020](32, 0xE100000000000000);
    MEMORY[0x1B2710020](v18, v11);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    v20 = 0x3D64496563617274;
    v21 = 0xE800000000000000;
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v12);

    v13 = v20;
    v14 = v21;
    (*(v2 + 8))(v5, v1);
    v20 = v10;
    v21 = v17;
    MEMORY[0x1B2710020](32, 0xE100000000000000);
    MEMORY[0x1B2710020](v18, v11);

    MEMORY[0x1B2710020](32, 0xE100000000000000);
    MEMORY[0x1B2710020](v13, v14);
  }

  return v20;
}

unint64_t specialized DatagramChannelGroupState.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DatagramChannelGroupState.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of DatagramChannelError(uint64_t a1)
{
  v2 = type metadata accessor for DatagramChannelError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized DatagramChannelStream.OutputSubscription.init<A>(channelStream:subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v13 = *(v10 + direct field offset for DatagramChannelStream.output);
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
  type metadata accessor for DatagramChannelError(255);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type DatagramChannelError and conformance DatagramChannelError, type metadata accessor for DatagramChannelError);
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

unint64_t lazy protocol witness table accessor for type DatagramChannelGroupState and conformance DatagramChannelGroupState()
{
  result = lazy protocol witness table cache variable for type DatagramChannelGroupState and conformance DatagramChannelGroupState;
  if (!lazy protocol witness table cache variable for type DatagramChannelGroupState and conformance DatagramChannelGroupState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatagramChannelGroupState and conformance DatagramChannelGroupState);
  }

  return result;
}

void type metadata completion function for DatagramChannelStream()
{
  type metadata accessor for UUID?();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<DatagramChannelGroupState>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void type metadata accessor for Published<DatagramChannelGroupState>()
{
  if (!lazy cache variable for type metadata for Published<DatagramChannelGroupState>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<DatagramChannelGroupState>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EgressMessageError and conformance EgressMessageError()
{
  result = lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError;
  if (!lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError;
  if (!lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EgressMessageError and conformance EgressMessageError);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DatagramChannelError) -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DatagramChannelError) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t outlined init with copy of DatagramChannelError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatagramChannelError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DatagramChannelError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatagramChannelError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #4 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = *(type metadata accessor for EgressMessage() - 8);
  v6 = v1[6];
  v7 = v1 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return closure #4 in DatagramChannelStream.sendNextEgressMessage()(a1, v6, v7);
}

uint64_t partial apply for closure #3 in DatagramChannelStream.sendNextEgressMessage()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(type metadata accessor for EgressMessage() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v5);
  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #3 in DatagramChannelStream.sendNextEgressMessage()(v0 + v4, v6, v7);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #2 in DatagramChannelStream.sendNextEgressMessage()(uint64_t a1)
{
  v3 = *(type metadata accessor for NWEndpoint() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);

  return closure #1 in closure #2 in DatagramChannelStream.sendNextEgressMessage()(a1, v6, v7, v1 + v4, v5);
}

uint64_t closure #1 in static DictionaryConvertible.compactMapValuesToDictionaryConvertible(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *a1;
  v14 = *(a3 + 8);

  v14(v15, a2, a3);
  v16 = *(a2 - 8);
  if ((*(v16 + 48))(v12, 1, a2) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v17 = 1;
  }

  else
  {
    (*(v16 + 32))(a4, v12, a2);
    v17 = 0;
  }

  return (*(v16 + 56))(a4, v17, 1, a2);
}

unint64_t CPAppPolicy.GlobalAutoSharePlayToggle.description.getter(char a1)
{
  _StringGuts.grow(_:)(44);

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v2, v3);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0xD000000000000029;
}

CopresenceCore::CPAppPolicy::AuthorizedBundles::SchemaVersion_optional __swiftcall CPAppPolicy.AuthorizedBundles.SchemaVersion.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = CopresenceCore_CPAppPolicy_AuthorizedBundles_SchemaVersion_one;
  }

  else
  {
    v1.value = CopresenceCore_CPAppPolicy_AuthorizedBundles_SchemaVersion_unknownDefault;
  }

  if (rawValue == -1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CPAppPolicy.AuthorizedBundles.SchemaVersion.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CPAppPolicy.AuthorizedBundles.SchemaVersion()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  MEMORY[0x1B27111E0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CPAppPolicy.AuthorizedBundles.SchemaVersion()
{
  if (*v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  return MEMORY[0x1B27111E0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CPAppPolicy.AuthorizedBundles.SchemaVersion()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  MEMORY[0x1B27111E0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CPAppPolicy.AuthorizedBundles.SchemaVersion@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CPAppPolicy.AuthorizedBundles.SchemaVersion(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (!*v1)
  {
    v2 = -1;
  }

  *a1 = v2;
}

uint64_t CPAppPolicy.AuthorizedBundles.bundleIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CPAppPolicy.AuthorizedBundles.allowedHandles.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t CPAppPolicy.AuthorizedBundles.description.getter()
{
  _StringGuts.grow(_:)(83);
  MEMORY[0x1B2710020](0xD000000000000030, 0x80000001AEE330A0);
  MEMORY[0x1B2710020](*(v0 + 8), *(v0 + 16));
  MEMORY[0x1B2710020](0x69726F6874756120, 0xEC0000003D64657ALL);
  if (*(v0 + 24))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 24))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v1, v2);

  MEMORY[0x1B2710020](0xD000000000000010, 0x80000001AEE330E0);
  v3 = *(v0 + 32);
  type metadata accessor for Date();
  v4 = Dictionary.description.getter();
  MEMORY[0x1B2710020](v4);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0;
}

uint64_t CPAppPolicy.AuthorizedBundles.init(version:bundleIdentifier:authorized:allowedHandles:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

unint64_t CPAppPolicy.ContactsChangeHistoryToken.description.getter()
{
  _StringGuts.grow(_:)(48);

  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = String.init<A>(reflecting:)();
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1B2710020](v2, v4);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0xD00000000000002DLL;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance CPAppPolicy.ContactsChangeHistoryToken()
{
  v1 = *v0;
  v2 = v0[1];
  return CPAppPolicy.ContactsChangeHistoryToken.description.getter();
}

uint64_t CPAppPolicy.ContactHandles.description.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a3 + 40;
    v6 = MEMORY[0x1E69E7CC0];
    v25 = a3 + 40;
    do
    {
      v28 = v6;
      v7 = (v5 + 16 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_18;
        }

        v9 = *(v7 - 1);
        v10 = *v7;
        swift_bridgeObjectRetain_n();
        v11 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v9, v10);
        v13 = v12;
        isa = Data._bridgeToObjectiveC()().super.isa;
        outlined consume of Data._Representation(v11, v13);
        v15 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

        if (v15)
        {
          break;
        }

        ++v8;
        v7 += 2;
        if (v4 == v3)
        {
          v6 = v28;
          goto LABEL_16;
        }
      }

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v6 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1, v28);
        v6 = result;
      }

      v5 = v25;
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v20 + 1;
      v21 = v6 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v4 != v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  _StringGuts.grow(_:)(70);
  MEMORY[0x1B2710020](0xD00000000000002ELL, 0x80000001AEE33130);
  MEMORY[0x1B2710020](v26, a2);
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE33160);
  v22 = MEMORY[0x1B2710180](v6, MEMORY[0x1E69E6158]);
  v24 = v23;

  MEMORY[0x1B2710020](v22, v24);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0;
}

double CPAppPolicy.AuthorizedBundles.init(dictionary:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized CPAppPolicy.AuthorizedBundles.init(dictionary:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t CPAppPolicy.AuthorizedBundles.dictionaryRepresentation.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC8];
  if (v2 != 2)
  {
    v15 = &type metadata for CPAppPolicy.AuthorizedBundles.SchemaVersion;
    LOBYTE(v14) = v2 & 1;
    outlined init with take of Any(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  }

  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  v15 = MEMORY[0x1E69E6158];
  *&v14 = v5;
  *(&v14 + 1) = v6;
  outlined init with take of Any(&v14, v13);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0xD000000000000010, 0x80000001AEE32AB0, v7);
  v8 = v1[24];
  v15 = MEMORY[0x1E69E6370];
  LOBYTE(v14) = v8;
  outlined init with take of Any(&v14, v13);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0x7A69726F68747561, 0xEA00000000006465, v9);
  v10 = *(v1 + 4);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
  *&v14 = v10;
  outlined init with take of Any(&v14, v13);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 0x486465776F6C6C61, 0xEE0073656C646E61, v11);
  return v3;
}

double protocol witness for DictionaryConvertible.init(dictionary:) in conformance CPAppPolicy.AuthorizedBundles@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized CPAppPolicy.AuthorizedBundles.init(dictionary:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t CPAppPolicy.ContactHandles.dictionaryRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = MEMORY[0x1E69E6158];
  *&v9 = a1;
  *(&v9 + 1) = a2;
  outlined init with take of Any(&v9, v8);

  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, 0xD000000000000011, 0x80000001AEE33180, isUniquelyReferenced_nonNull_native);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  *&v9 = a3;
  outlined init with take of Any(&v9, v8);

  v6 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, 0xD000000000000011, 0x80000001AEE331A0, v6);
  return v4;
}

uint64_t protocol witness for DictionaryConvertible.init(dictionary:) in conformance CPAppPolicy.ContactHandles@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized CPAppPolicy.ContactHandles.init(dictionary:)(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t specialized CPAppPolicy.ContactHandles.init(dictionary:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x80000001AEE33180);
    if (v3)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v2, v8);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x80000001AEE331A0), (v5 & 1) != 0))
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v4, v8);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          if (swift_dynamicCast())
          {
            return v7;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t specialized CPAppPolicy.AuthorizedBundles.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F6973726576, 0xE700000000000000);
  if ((v5 & 1) != 0 && (outlined init with copy of Any(*(a1 + 56) + 32 * v4, v20), swift_dynamicCast()))
  {
    v6 = v18;
    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 2;
    if (!*(a1 + 16))
    {
LABEL_17:

      v6 = 0;
      v10 = 0;
      v9 = 0;
      v13 = 0;
      v17 = 0;
      goto LABEL_18;
    }
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x80000001AEE32AB0);
  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v7, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v9 = v19;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v10 = v18;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(0x7A69726F68747561, 0xEA00000000006465);
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v11, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  if (!*(a1 + 16) || (v13 = v18, v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x486465776F6C6C61, 0xEE0073656C646E61), (v15 & 1) == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v14, v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

  v17 = v18;
LABEL_18:
  *a2 = v6;
  a2[1] = v10;
  a2[2] = v9;
  a2[3] = v13;
  a2[4] = v17;
  return result;
}

unint64_t lazy protocol witness table accessor for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion()
{
  result = lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion;
  if (!lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPAppPolicy.AuthorizedBundles.SchemaVersion and conformance CPAppPolicy.AuthorizedBundles.SchemaVersion);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPAppPolicy.GlobalAutoSharePlayToggle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for CPAppPolicy.ContactsChangeHistoryToken(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CPAppPolicy.ContactsChangeHistoryToken(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CPAppPolicy.ContactHandles(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for CPAppPolicy.ContactHandles(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v36 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
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

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);

    specialized CPAppPolicy.AuthorizedBundles.init(dictionary:)(v16, v37);
    v17 = v38;
    if (v38)
    {
      v32 = v37[1];
      v33 = v37[0];
      v34 = v39;
      v35 = v40;
      v18 = v36;
      v19 = *(v36 + 16);
      if (*(v36 + 24) <= v19)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19 + 1, 1);
        v18 = v41;
      }

      v36 = v18;
      v20 = *(v18 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = v36 + 64;
      v22 = -1 << *(v36 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v36 + 64 + 8 * (v23 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *(v21 + 8 * v24);
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v36 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v30 = (*(v36 + 48) + 16 * v25);
      *v30 = v14;
      v30[1] = v13;
      v31 = *(v36 + 56) + 40 * v25;
      *v31 = v33;
      *(v31 + 8) = v32;
      *(v31 + 16) = v17;
      *(v31 + 24) = v34 & 1;
      *(v31 + 32) = v35;
      ++*(v36 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v36;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v2 = a1 + 64;
  v40 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v39 = -1 << *(a1 + 32);
  v6 = (63 - v3) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    swift_bridgeObjectRetain_n();

    v16 = specialized CPAppPolicy.ContactHandles.init(dictionary:)(v15);
    if (v17)
    {
      v36 = v16;
      v37 = v17;
      v38 = v18;
      v19 = v40;
      v20 = *(v40 + 16);
      if (*(v40 + 24) <= v20)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20 + 1, 1);
        v19 = v41;
      }

      v40 = v19;
      v21 = *(v19 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = v40 + 64;
      v23 = -1 << *(v40 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v40 + 64 + 8 * (v24 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v23) >> 6;
        v28 = v36;
        v27 = v37;
        v29 = v38;
        while (++v25 != v31 || (v30 & 1) == 0)
        {
          v32 = v25 == v31;
          if (v25 == v31)
          {
            v25 = 0;
          }

          v30 |= v32;
          v33 = *(v22 + 8 * v25);
          if (v33 != -1)
          {
            v26 = __clz(__rbit64(~v33)) + (v25 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_27;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v40 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v28 = v36;
      v27 = v37;
      v29 = v38;
LABEL_24:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v34 = (*(v40 + 48) + 16 * v26);
      *v34 = v14;
      v34[1] = v13;
      v35 = (*(v40 + 56) + 24 * v26);
      *v35 = v28;
      v35[1] = v27;
      v35[2] = v29;
      ++*(v40 + 16);
    }

    else
    {
    }
  }

  v9 = v8;
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      outlined consume of Set<String>.Iterator._Variant();
      return v40;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC8];
  v5 = a1 + 64;
  v33 = MEMORY[0x1E69E7CC8];
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);

  v10 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = v11 | (v10 << 6);
        if (!*(*(*(a1 + 56) + 8 * v12) + 16))
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v30 = v10;
      v31 = v2;
      v15 = (*(a1 + 48) + 16 * v12);
      v16 = *v15;
      v17 = *(v4 + 16);
      v32 = v15[1];
      if (*(v4 + 24) <= v17)
      {

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17 + 1, 1);
        v4 = v33;
      }

      else
      {
      }

      v18 = *(v4 + 40);
      Hasher.init(_seed:)();
      v29 = v16;
      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = v4 + 64;
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v4 + 64 + 8 * (v21 >> 6))) == 0)
      {
        break;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v4 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v2 = v31;
LABEL_25:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v28 = (*(v4 + 48) + 16 * v23);
      *v28 = v29;
      v28[1] = v32;
      ++*(v4 + 16);

      v10 = v30;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v24 = 0;
    v25 = (63 - v20) >> 6;
    v2 = v31;
    while (++v22 != v25 || (v24 & 1) == 0)
    {
      v26 = v22 == v25;
      if (v22 == v25)
      {
        v22 = 0;
      }

      v24 |= v26;
      v27 = *(v19 + 8 * v22);
      if (v27 != -1)
      {
        v23 = __clz(__rbit64(~v27)) + (v22 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_7:
    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= ((63 - v6) >> 6))
      {
        outlined consume of Set<String>.Iterator._Variant();
        return v4;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v2 = a1 + 64;
  v33 = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC8];
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v32 = -1 << *(a1 + 32);
  v6 = (63 - v3) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v11);
    swift_bridgeObjectRetain_n();

    v16 = specialized ActivityListPresenceContext.init(dictionary:)(v15);
    if (v16)
    {
      v31 = v16;
      v17 = v33;
      v18 = *(v33 + 16);
      if (*(v33 + 24) <= v18)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18 + 1, 1);
        v17 = v34;
      }

      v33 = v17;
      v19 = *(v17 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = v33 + 64;
      v21 = -1 << *(v33 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v33 + 64 + 8 * (v22 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v21) >> 6;
        v25 = v31;
        while (++v23 != v27 || (v26 & 1) == 0)
        {
          v28 = v23 == v27;
          if (v23 == v27)
          {
            v23 = 0;
          }

          v26 |= v28;
          v29 = *(v20 + 8 * v23);
          if (v29 != -1)
          {
            v24 = __clz(__rbit64(~v29)) + (v23 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_27;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v33 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v25 = v31;
LABEL_24:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v30 = (*(v33 + 48) + 16 * v24);
      *v30 = v14;
      v30[1] = v13;
      *(*(v33 + 56) + 8 * v24) = v25;
      ++*(v33 + 16);
    }

    else
    {
    }
  }

  v9 = v8;
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      outlined consume of Set<String>.Iterator._Variant();
      return v33;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t AttachmentLedger_CreateTopicResponse.topicConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(TopicResponse + 28), v6, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v9 = *(*(Topic - 8) + 48);
  if (v9(v6, 1, Topic) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = a1 + *(Topic + 36);
  UnknownStorage.init()();
  result = (v9)(v6, 1, Topic);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  }

  return result;
}

uint64_t AttachmentLedger_AttachmentMetadata.mmcsMetadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_MMCSMetadata.baseBlob.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 36);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_MMCSMetadata.progressBlob.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 40);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v5 = *(*(updated - 8) + 56);

  return v5(v1 + v3, 0, 1, updated);
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0) + 40);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_EncryptionID);
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeRequest.initialize.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  v3 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.error.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 36), v6, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0;
  v10 = a1 + *(v8 + 28);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 40), v6, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v8 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  v10 = a1 + *(v8 + 32);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 24), v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a1 = xmmword_1AEE0C200;
  v10 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v5 = *(*(updated - 8) + 56);

  return v5(v1 + v3, 0, 1, updated);
}

uint64_t AttachmentLedger_GetAuthTokenResponse.authPutMaterials.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(AuthTokenResponse + 32), v6, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v8 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  v10 = a1 + *(v8 + 32);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  return result;
}

uint64_t AttachmentLedger_GetAuthTokenResponse.error.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(AuthTokenResponse + 28), v6, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0;
  v10 = a1 + *(v8 + 28);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

BOOL AttachmentLedger_CreateTopicResponse.hasTopicConfig.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of NSObject?(v12, a1, a2);
  return v15;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_ResponseStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AttachmentLedger_ResponseStatus and conformance AttachmentLedger_ResponseStatus();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t AttachmentLedger_CapabilityFlag.rawValue.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance AttachmentLedger_CapabilityFlag@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance AttachmentLedger_CapabilityFlag()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance AttachmentLedger_CapabilityFlag@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AttachmentLedger_CapabilityFlag(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_CapabilityFlag(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AttachmentLedger_CapabilityFlag and conformance AttachmentLedger_CapabilityFlag();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentLedger_CapabilityFlag(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_AttachmentStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AttachmentLedger_AttachmentStatus and conformance AttachmentLedger_AttachmentStatus();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t AttachmentLedger_MMCSMetadata.baseBlob.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 36), v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_MMCSMetadata.baseBlob : AttachmentLedger_MMCSMetadata@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 36), v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_MMCSMetadata.baseBlob : AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v9 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 36);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  v1 = a1 + *(type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0) + 24);
  return UnknownStorage.init()();
}

uint64_t (*AttachmentLedger_MMCSMetadata.baseBlob.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  return AttachmentLedger_MMCSMetadata.baseBlob.modify;
}

uint64_t AttachmentLedger_MMCSMetadata.progressBlob.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 40), v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_MMCSMetadata.progressBlob : AttachmentLedger_MMCSMetadata@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 40), v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_MMCSMetadata.progressBlob : AttachmentLedger_MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v9 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 40);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*AttachmentLedger_MMCSMetadata.progressBlob.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_MMCSMetadata(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  return AttachmentLedger_MMCSMetadata.progressBlob.modify;
}

void AttachmentLedger_MMCSMetadata.progressBlob.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AttachmentLedger_SubscribeResponse.InitializeAck.hasAuthPutMaterials.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v13 + 40), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of NSObject?(v12, a1, a2);
  return v15;
}

uint64_t AttachmentLedger_MMCSMetadata.referenceSignature.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data._Representation(v1, *(v0 + 56));
  return v1;
}

uint64_t AttachmentLedger_MMCSMetadata.referenceSignature.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.body.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.body.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AttachmentLedger_MMCSMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1AEE0C200;
  *(a1 + 48) = xmmword_1AEE0C200;
  v2 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v3 = a1 + v2[8];
  UnknownStorage.init()();
  v4 = v2[9];
  v5 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a1 + v4, 1, 1, v5);
  v6 = a1 + v2[10];

  return v8(v6, 1, 1, v5);
}

uint64_t AttachmentLedger_AttachmentMetadata.encryptionSlots.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t AttachmentLedger_AttachmentMetadata.mmcsMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 36), v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_MMCSMetadata);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1AEE0C200;
  *(a1 + 48) = xmmword_1AEE0C200;
  v10 = a1 + v8[8];
  UnknownStorage.init()();
  v11 = v8[9];
  v12 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a1 + v11, 1, 1, v12);
  v13(a1 + v8[10], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_AttachmentMetadata.mmcsMetadata : AttachmentLedger_AttachmentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_MMCSMetadata);
  v9 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_MMCSMetadata);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*AttachmentLedger_AttachmentMetadata.mmcsMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0xE000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0xE000000000000000;
    *(v14 + 32) = xmmword_1AEE0C200;
    *(v14 + 48) = xmmword_1AEE0C200;
    v17 = v14 + v9[8];
    UnknownStorage.init()();
    v18 = v9[9];
    v19 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
    v20 = *(*(v19 - 8) + 56);
    v20(v14 + v18, 1, 1, v19);
    v20(v14 + v9[10], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_MMCSMetadata);
  }

  return AttachmentLedger_AttachmentMetadata.mmcsMetadata.modify;
}

void AttachmentLedger_AttachmentMetadata.mmcsMetadata.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_MMCSMetadata);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_MMCSMetadata);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AttachmentLedger_MMCSMetadata.hasBaseBlob.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v13 + 36), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of NSObject?(v12, a1, a2);
  return v15;
}

uint64_t AttachmentLedger_MMCSMetadata.clearBaseBlob()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AttachmentLedger_AttachmentMetadata.status.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t AttachmentLedger_AttachmentMetadata.status.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t AttachmentLedger_AttachmentMetadata.metadata.getter()
{
  v1 = *(v0 + 40);
  outlined copy of Data._Representation(v1, *(v0 + 48));
  return v1;
}

uint64_t AttachmentLedger_AttachmentMetadata.metadata.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AttachmentLedger_MMCSMetadata.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AttachmentLedger_MMCSMetadata.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AttachmentLedger_AttachmentMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = xmmword_1AEE0C200;
  v2 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v3 = a1 + *(v2 + 32);
  UnknownStorage.init()();
  v4 = *(v2 + 36);
  v5 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t AttachmentLedger_AuthPutMaterials.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  v1 = a1 + *(type metadata accessor for AttachmentLedger_AuthPutMaterials(0) + 32);
  return UnknownStorage.init()();
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.signedAuthToken.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.signedAuthToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.accountID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.accountID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AttachmentLedger_AttachmentAuthGetToken.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  v1 = a1 + *(type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0) + 32);
  return UnknownStorage.init()();
}

uint64_t AttachmentLedger_AttachmentEncryption.encryptionID.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 28), v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a1 = xmmword_1AEE0C200;
  v10 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_AttachmentEncryption.encryptionID : AttachmentLedger_AttachmentEncryption@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 28), v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  v11 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_AttachmentEncryption.encryptionID : AttachmentLedger_AttachmentEncryption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_EncryptionID);
  v9 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_EncryptionID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_AttachmentEncryption.encryptionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_EncryptionID);
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_AttachmentEncryption.encryptionID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    v17 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  return AttachmentLedger_AttachmentEncryption.encryptionID.modify;
}

void AttachmentLedger_AttachmentEncryption.encryptionID.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_EncryptionID);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_EncryptionID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_EncryptionID);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_AttachmentEncryption.encryptionMaterial.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t AttachmentLedger_AttachmentEncryption.encryptionMaterial.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AttachmentLedger_MMCSMetadata.BlobData.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AttachmentLedger_ErrorResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  a1[2] = 0;
  a1[3] = 0;
  v3 = a1 + *(v2 + 28);
  return UnknownStorage.init()();
}

uint64_t AttachmentLedger_CreateTopicRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for AttachmentLedger_CreateTopicRequest(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_CreateTopicResponse.error : AttachmentLedger_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  v9 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 24);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_ErrorResponse);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_CreateTopicResponse.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AttachmentLedger_CreateTopicResponse.error.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    v17 = v14 + *(v9 + 28);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  return AttachmentLedger_CreateTopicResponse.error.modify;
}

BOOL AttachmentLedger_UpdateAttachmentResponse.hasError.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of NSObject?(v12, a1, a2);
  return v15;
}

uint64_t key path getter for AttachmentLedger_CreateTopicResponse.topicConfig : AttachmentLedger_CreateTopicResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(TopicResponse + 28), v7, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v10 = *(*(Topic - 8) + 48);
  if (v10(v7, 1, Topic) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v11 = a2 + *(Topic + 36);
  UnknownStorage.init()();
  result = (v10)(v7, 1, Topic);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_CreateTopicResponse.topicConfig : AttachmentLedger_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v5 = *(Topic - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Topic);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  v9 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 28);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  return (*(v5 + 56))(a2 + v9, 0, 1, Topic);
}

uint64_t AttachmentLedger_CreateTopicResponse.topicConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v5 = *(*(Topic - 8) + 56);

  return v5(v1 + v3, 0, 1, Topic);
}

uint64_t AttachmentLedger_CreateTopicResponse.ClientTopicConfig.init()@<X0>(uint64_t a1@<X8>)
{
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(Topic + 36);
  return UnknownStorage.init()();
}

uint64_t outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*AttachmentLedger_CreateTopicResponse.topicConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Topic = type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig(0);
  v5[2] = Topic;
  v10 = *(Topic - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_CreateTopicResponse(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Topic) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v17 = v14 + *(Topic + 36);
    UnknownStorage.init()();
    if (v16(v8, 1, Topic) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  }

  return AttachmentLedger_CreateTopicResponse.topicConfig.modify;
}

void AttachmentLedger_CreateTopicResponse.topicConfig.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMd, &_s14CopresenceCore36AttachmentLedger_CreateTopicResponseV06ClientF6ConfigVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_AttachmentEncryption.clearEncryptionID()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AttachmentLedger_EncryptionID.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AttachmentLedger_EncryptionID.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AttachmentLedger_SubscribeRequest.initialize.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v15 - v6, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v9 = MEMORY[0x1E69E7CC0];
  *(a1 + 2) = MEMORY[0x1E69E7CC0];
  *(a1 + 3) = 0;
  *(a1 + 4) = v9;
  *(a1 + 5) = 0;
  v10 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v11 = &a1[*(v10 + 36)];
  UnknownStorage.init()();
  v12 = *(v10 + 40);
  v13 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t key path setter for AttachmentLedger_SubscribeRequest.initialize : AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 2) = MEMORY[0x1E69E7CC0];
  *(a1 + 3) = 0;
  *(a1 + 4) = v2;
  *(a1 + 5) = 0;
  v3 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v4 = &a1[*(v3 + 36)];
  UnknownStorage.init()();
  v5 = *(v3 + 40);
  v6 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

void (*AttachmentLedger_SubscribeRequest.initialize.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
      return AttachmentLedger_SubscribeRequest.initialize.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  v16 = MEMORY[0x1E69E7CC0];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  *(v13 + 2) = v16;
  *(v13 + 3) = 0;
  *(v13 + 4) = v16;
  *(v13 + 5) = 0;
  v17 = &v13[*(v10 + 36)];
  UnknownStorage.init()();
  v18 = *(v10 + 40);
  v19 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
  return AttachmentLedger_SubscribeRequest.initialize.modify;
}

void AttachmentLedger_SubscribeRequest.initialize.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeRequest.updateEncryptionID.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_EncryptionID);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  *a1 = xmmword_1AEE0C200;
  v10 = a1 + *(type metadata accessor for AttachmentLedger_EncryptionID(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeRequest.updateEncryptionID : AttachmentLedger_SubscribeRequest@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v11 - v6, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_EncryptionID);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  *a2 = xmmword_1AEE0C200;
  v10 = a2 + *(type metadata accessor for AttachmentLedger_EncryptionID(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeRequest.updateEncryptionID : AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_EncryptionID);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_EncryptionID);
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeRequest.updateEncryptionID.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_EncryptionID);
  v3 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeRequest.updateEncryptionID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v12 = xmmword_1AEE0C200;
    v15 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeRequest.updateEncryptionID.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_EncryptionID);
  return AttachmentLedger_SubscribeRequest.updateEncryptionID.modify;
}

void AttachmentLedger_SubscribeRequest.updateEncryptionID.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_EncryptionID);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_EncryptionID);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_EncryptionID);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeRequest.attachmentAck.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  v10 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeRequest.attachmentAck : AttachmentLedger_SubscribeRequest@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v11 - v6, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  v10 = a2 + *(type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeRequest.attachmentAck : AttachmentLedger_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeRequest.attachmentAck.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  v3 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeRequest.AttachmentAck.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  v1 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0) + 24);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_SubscribeRequest.attachmentAck.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = 0;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeRequest.attachmentAck.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  return AttachmentLedger_SubscribeRequest.attachmentAck.modify;
}

void AttachmentLedger_SubscribeRequest.attachmentAck.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AttachmentLedger_SubscribeRequest.AttachmentAck.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 40), v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a1 = xmmword_1AEE0C200;
  v10 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID : AttachmentLedger_SubscribeRequest.Initialize@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 40), v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  v11 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID : AttachmentLedger_SubscribeRequest.Initialize(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_EncryptionID);
  v9 = *(type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0) + 40);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_EncryptionID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t (*AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    v17 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  return AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID.modify;
}

uint64_t AttachmentLedger_MMCSMetadata.clearProgressBlob()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AttachmentLedger_SubscribeRequest.Initialize.knownAttachments.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t AttachmentLedger_CreateTopicResponse.ClientTopicConfig.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AttachmentLedger_CreateTopicResponse.ClientTopicConfig.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AttachmentLedger_SubscribeRequest.AttachmentAck.uuids.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.initializeAck.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v17 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v9 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v9;
  *(a1 + 32) = v9;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v11 = a1 + v10[8];
  UnknownStorage.init()();
  v12 = v10[9];
  v13 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v10[10];
  v15 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.initializeAck : AttachmentLedger_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.initializeAck.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v4 = a1 + v3[8];
  UnknownStorage.init()();
  v5 = v3[9];
  v6 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v3[10];
  v8 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

void (*AttachmentLedger_SubscribeResponse.initializeAck.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      return AttachmentLedger_SubscribeResponse.initializeAck.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  *v13 = 0;
  *(v13 + 8) = 1;
  v16 = MEMORY[0x1E69E7CC0];
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  *(v13 + 24) = v16;
  *(v13 + 32) = v16;
  v17 = v13 + v10[8];
  UnknownStorage.init()();
  v18 = v10[9];
  v19 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
  v20 = v10[10];
  v21 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
  return AttachmentLedger_SubscribeResponse.initializeAck.modify;
}

void AttachmentLedger_SubscribeResponse.initializeAck.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.attachmentUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v13 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  *(a1 + *(v11 + 20)) = 0;
  v12 = a1 + *(v11 + 24);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.attachmentUpdate : AttachmentLedger_SubscribeResponse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v13 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  *(a2 + *(v11 + 20)) = 0;
  v12 = a2 + *(v11 + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.attachmentUpdate : AttachmentLedger_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.attachmentUpdate.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  *(a1 + *(v3 + 20)) = 0;
  v4 = a1 + *(v3 + 24);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_SubscribeResponse.attachmentUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_15:
    v16 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    *(v13 + *(v10 + 20)) = 0;
    v17 = v13 + *(v10 + 24);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.attachmentUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  return AttachmentLedger_SubscribeResponse.attachmentUpdate.modify;
}

void AttachmentLedger_SubscribeResponse.attachmentUpdate.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.topicUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  v10 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.topicUpdate : AttachmentLedger_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.topicUpdate.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.topicUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 1;
    *(v12 + 16) = 0;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.topicUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  return AttachmentLedger_SubscribeResponse.topicUpdate.modify;
}

void AttachmentLedger_SubscribeResponse.topicUpdate.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.InitializeAck.error : AttachmentLedger_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 36), v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0;
  v11 = a2 + *(v9 + 28);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.InitializeAck.error : AttachmentLedger_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  v9 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 36);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_ErrorResponse);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 36);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AttachmentLedger_SubscribeResponse.InitializeAck.error.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    v17 = v14 + *(v9 + 28);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  return AttachmentLedger_CreateTopicResponse.error.modify;
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.missingEncryptionIds.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials : AttachmentLedger_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 40), v7, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v9 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  v11 = a2 + *(v9 + 32);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials : AttachmentLedger_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v9 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 40);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 40);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v4 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    v14[5] = 0xE000000000000000;
    v14[6] = 0;
    v17 = v14 + *(v9 + 32);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  return AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials.modify;
}

void AttachmentLedger_SubscribeResponse.InitializeAck.authPutMaterials.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID : AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 24), v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  v11 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID : AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_EncryptionID);
  v9 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 24);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_EncryptionID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_EncryptionID);
  v4 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    v17 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  return AttachmentLedger_SubscribeRequest.Initialize.localEncryptionID.modify;
}

uint64_t AttachmentLedger_CreateTopicResponse.clearError()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v8 - v3);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0, &v8 - v3, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of NSObject?(v4, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v4, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    return 0;
  }

  result = *v4;
  v7 = v4[1];
  return result;
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid : AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v11 - v6);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v11 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      v10 = *v7;
      goto LABEL_7;
    }

    result = outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  }

  v10 = xmmword_1AEE0C200;
LABEL_7:
  *a2 = v10;
  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid : AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  outlined copy of Data._Representation(*a1, v4);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  *a2 = v3;
  a2[1] = v4;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid.setter(uint64_t a1, uint64_t a2)
{
  outlined destroy of NSObject?(v2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v6 + 24) = v8;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  *(v6 + 32) = v10;
  v11 = *(v10 - 8);
  *(v6 + 40) = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v12 = *v9;
      goto LABEL_13;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  }

  v12 = xmmword_1AEE0C200;
LABEL_13:
  *v6 = v12;
  return AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid.modify;
}

void AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.unchangedAttachmentMetadataUuid.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    outlined copy of Data._Representation(**a1, v3);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
    outlined consume of Data._Representation(*v2, v2[1]);
  }

  else
  {
    outlined destroy of NSObject?((*a1)[2], &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v14 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
  }

  v14 = xmmword_1AEE0C200;
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v14;
  v10 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v11 = a1 + *(v10 + 32);
  UnknownStorage.init()();
  v12 = *(v10 + 36);
  v13 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata : AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
LABEL_15:
    *v13 = xmmword_1AEE0C200;
    *(v13 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = xmmword_1AEE0C200;
    v16 = v13 + *(v10 + 32);
    UnknownStorage.init()();
    v17 = *(v10 + 36);
    v18 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    return AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.OneOf_Content);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  return AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.modify;
}

void AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot.attachmentMetadata.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV13InitializeAckV0C8SnapshotV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeRequest.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return UnknownStorage.init()();
}

BOOL AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent.rawValue.getter(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent(uint64_t a1, uint64_t a2)
{
  updated = lazy protocol witness table accessor for type AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent and conformance AttachmentLedger_SubscribeResponse.TopicUpdate.UpdateEvent();

  return MEMORY[0x1EEE15710](a1, a2, updated);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  v10 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.added : AttachmentLedger_SubscribeResponse.AttachmentUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v12 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  v10 = a2 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.added : AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
      return AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v16 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = v13 + *(v10 + 20);
  UnknownStorage.init()();
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.added.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  *a1 = xmmword_1AEE0C200;
  v10 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed : AttachmentLedger_SubscribeResponse.AttachmentUpdate@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v11 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  *a2 = xmmword_1AEE0C200;
  v10 = a2 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed : AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_EncryptionID.init()@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
LABEL_15:
    *v12 = xmmword_1AEE0C200;
    v15 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.removed.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated : AttachmentLedger_SubscribeResponse.AttachmentUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v12 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  v11 = a2 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated : AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
LABEL_15:
    v16 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = v13 + *(v10 + 20);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.encryptionUpdated.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged : AttachmentLedger_SubscribeResponse.AttachmentUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v12 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
  }

  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  v11 = a2 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged : AttachmentLedger_SubscribeResponse.AttachmentUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
LABEL_15:
    v16 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = v13 + *(v10 + 20);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.statusChanged.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.sequenceNumber.setter(uint64_t a1)
{
  result = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v14 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
LABEL_5:
    v14 = xmmword_1AEE0C200;
    *a1 = xmmword_1AEE0C200;
    *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
    *(a1 + 40) = v14;
    v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
    v10 = a1 + *(v9 + 32);
    UnknownStorage.init()();
    v11 = *(v9 + 36);
    v12 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    goto LABEL_5;
  }

  return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full : AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      return AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  }

  *v13 = xmmword_1AEE0C200;
  *(v13 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v13 + 24) = 0;
  *(v13 + 32) = 1;
  *(v13 + 40) = xmmword_1AEE0C200;
  v16 = v13 + *(v10 + 32);
  UnknownStorage.init()();
  v17 = *(v10 + 36);
  v18 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.full.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  }

  *a1 = xmmword_1AEE0C200;
  v10 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack : AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v11 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
  }

  *a2 = xmmword_1AEE0C200;
  v10 = a2 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0) + 20);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack : AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
LABEL_15:
    *v12 = xmmword_1AEE0C200;
    v15 = v12 + *(v9 + 20);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.ack.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AttachmentLedger_EncryptionID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v14 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
LABEL_5:
    *a1 = xmmword_1AEE0C200;
    *(a1 + 16) = 0;
    v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
    v10 = a1 + *(v9 + 24);
    UnknownStorage.init()();
    v11 = *(v9 + 28);
    v12 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
    return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    goto LABEL_5;
  }

  return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full : AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_AttachmentEncryption.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_1AEE0C200;
  *(a3 + 16) = 0;
  v5 = a1(0);
  v6 = a3 + *(v5 + 24);
  UnknownStorage.init()();
  v7 = *(v5 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a3 + v7, 1, 1, v8);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
      return AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  }

  *v13 = xmmword_1AEE0C200;
  *(v13 + 16) = 0;
  v16 = v13 + *(v10 + 24);
  UnknownStorage.init()();
  v17 = *(v10 + 28);
  v18 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.full.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
  }

  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  v10 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack : AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0) + 24);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
LABEL_15:
    *v12 = xmmword_1AEE0C200;
    *(v12 + 16) = 0;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.OneOf_Type);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.ack.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV17EncryptionUpdatedV10OneOf_TypeOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]) & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v4 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Ack(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 28), v6, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v8 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial : AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 28), v7, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v9 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  v12 = *(v9 + 28);
  v13 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial : AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v9 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) + 28);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    *(v14 + 16) = 0;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    v18 = *(v9 + 28);
    v19 = type metadata accessor for AttachmentLedger_EncryptionID(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full.encryptionMaterial.modify;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v14 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
LABEL_5:
    *a1 = xmmword_1AEE0C200;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
    v10 = a1 + *(v9 + 24);
    UnknownStorage.init()();
    v11 = *(v9 + 28);
    v12 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
    return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    goto LABEL_5;
  }

  return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full : AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v3 = a1 + *(v2 + 24);
  UnknownStorage.init()();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v14 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
      return AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  }

  *v13 = xmmword_1AEE0C200;
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  v16 = v13 + *(v10 + 24);
  UnknownStorage.init()();
  v17 = *(v10 + 28);
  v18 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.full.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
  }

  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  v10 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0) + 28);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack : AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  v1 = a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0) + 28);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
LABEL_15:
    *v12 = xmmword_1AEE0C200;
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    *(v12 + 32) = 0;
    v15 = v12 + *(v9 + 28);
    UnknownStorage.init()();
    return AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  return AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.modify;
}

void AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.ack.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_ErrorResponse.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AttachmentLedger_ErrorResponse.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.progressBlob.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 28), v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v8 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xC000000000000000;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.progressBlob : AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 28), v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xC000000000000000;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.progressBlob : AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v9 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0) + 28);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.progressBlob.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v4 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.progressBlob.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  return AttachmentLedger_MMCSMetadata.baseBlob.modify;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.add.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v14 - v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v7, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v9 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v10 = &a1[*(v9 + 20)];
  UnknownStorage.init()();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.add : AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.add.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(updated - 8) + 56);

  return v4(v1, 0, 1, updated);
}

void (*AttachmentLedger_UpdateAttachmentRequest.add.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v11 = *(*(updated - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(updated - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
      return AttachmentLedger_UpdateAttachmentRequest.add.modify;
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  }

  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v16 = &v13[*(updated + 20)];
  UnknownStorage.init()();
  v17 = *(updated + 24);
  v18 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  return AttachmentLedger_UpdateAttachmentRequest.add.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.add.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.remove.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v11 - v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v7, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1AEE0C200;
  v10 = a1 + *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.remove : AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(updated - 8) + 56))(a2, 0, 1, updated);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.remove.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(updated - 8) + 56);

  return v4(v1, 0, 1, updated);
}

void (*AttachmentLedger_UpdateAttachmentRequest.remove.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v5[4] = updated;
  v14 = *(updated - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 0xE000000000000000;
    *(v12 + 16) = xmmword_1AEE0C200;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return AttachmentLedger_UpdateAttachmentRequest.remove.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v12, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  return AttachmentLedger_UpdateAttachmentRequest.remove.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.remove.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.updateEncryption.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v14 - v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v7, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v11 = &a1[*(v10 + 20)];
  UnknownStorage.init()();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.updateEncryption : AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.updateEncryption.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(updated - 8) + 56);

  return v4(v1, 0, 1, updated);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  v5 = a1(0);
  v6 = &a3[*(v5 + 20)];
  UnknownStorage.init()();
  v7 = *(v5 + 24);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

void (*AttachmentLedger_UpdateAttachmentRequest.updateEncryption.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v11 = *(*(updated - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(updated - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    v16 = &v13[*(updated + 20)];
    UnknownStorage.init()();
    v17 = *(updated + 24);
    v18 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return AttachmentLedger_UpdateAttachmentRequest.updateEncryption.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  return AttachmentLedger_UpdateAttachmentRequest.updateEncryption.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.updateEncryption.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.updateStatus.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v14 - v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  if ((*(*(updated - 8) + 48))(v7, 1, updated) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    }

    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  v11 = &a1[*(v10 + 20)];
  UnknownStorage.init()();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.updateStatus : AttachmentLedger_UpdateAttachmentRequest(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.updateStatus.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(updated - 8) + 56);

  return v4(v1, 0, 1, updated);
}

void (*AttachmentLedger_UpdateAttachmentRequest.updateStatus.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  v11 = *(*(updated - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(updated - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    v16 = &v13[*(updated + 20)];
    UnknownStorage.init()();
    v17 = *(updated + 24);
    v18 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return AttachmentLedger_UpdateAttachmentRequest.updateStatus.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, v13, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  return AttachmentLedger_UpdateAttachmentRequest.updateStatus.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.updateStatus.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[3], v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(updated + 24), v6, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v8 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  v14 = xmmword_1AEE0C200;
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v14;
  v10 = a1 + *(v8 + 32);
  UnknownStorage.init()();
  v11 = *(v8 + 36);
  v12 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.metadata : AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v9 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0) + 24);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t (*AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.metadata.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = xmmword_1AEE0C200;
    v17 = v14 + *(v9 + 32);
    UnknownStorage.init()();
    v18 = *(v9 + 36);
    v19 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  return AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd.metadata.modify;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(updated + 24), v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  }

  *a1 = xmmword_1AEE0C200;
  v10 = &a1[*(v8 + 20)];
  UnknownStorage.init()();
  v11 = *(v8 + 24);
  v12 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container : AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v9 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  }

  *a2 = xmmword_1AEE0C200;
  v11 = &a2[*(v9 + 20)];
  UnknownStorage.init()();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container : AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  v9 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0) + 24);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  return (*(v5 + 56))(a2 + v9, 0, 1, updated);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.init()@<X0>(char *a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v3 = &a1[*(updated + 20)];
  UnknownStorage.init()();
  v4 = *(updated + 24);
  v5 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

void (*AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v5[2] = updated;
  v10 = *(updated - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, updated) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    v17 = &v14[*(updated + 20)];
    UnknownStorage.init()();
    v18 = *(updated + 24);
    v19 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, updated) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  }

  return AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.container.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(updated + 24), v6, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v8 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption : AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v7, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v9 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  v12 = *(v9 + 28);
  v13 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption : AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v9 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0) + 24);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    *(v14 + 16) = 0;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    v18 = *(v9 + 28);
    v19 = type metadata accessor for AttachmentLedger_EncryptionID(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  return AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container.encryption.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(updated + 24), v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  }

  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_1AEE0C200;
  v10 = a1 + *(v8 + 28);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container : AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(updated + 24), v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v9 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  }

  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = xmmword_1AEE0C200;
  v11 = a2 + *(v9 + 28);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container : AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  v9 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  return (*(v5 + 56))(a2 + v9, 0, 1, updated);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_1AEE0C200;
  v1 = a1 + *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0) + 28);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v5[2] = updated;
  v10 = *(updated - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, updated) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    *(v14 + 32) = xmmword_1AEE0C200;
    v17 = v14 + *(updated + 28);
    UnknownStorage.init()();
    if (v16(v8, 1, updated) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  }

  return AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container.modify;
}

void AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.container.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.status.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.status.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.progressBlob.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

uint64_t AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container.progressBlob.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t key path setter for AttachmentLedger_UpdateAttachmentResponse.error : AttachmentLedger_UpdateAttachmentResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_ErrorResponse);
  v9 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0) + 24);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_ErrorResponse);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AttachmentLedger_UpdateAttachmentResponse.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0) + 24);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_ErrorResponse);
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*AttachmentLedger_UpdateAttachmentResponse.error.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    v17 = v14 + *(v9 + 28);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_ErrorResponse);
  }

  return AttachmentLedger_CreateTopicResponse.error.modify;
}

uint64_t AttachmentLedger_UpdateAttachmentResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v3 = a1 + *(updated + 20);
  UnknownStorage.init()();
  v4 = *(updated + 24);
  v5 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t AttachmentLedger_GetAuthTokenRequest.testOption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(AuthTokenRequest + 32), v6, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v9 = *(*(AuthToken - 8) + 48);
  if (v9(v6, 1, AuthToken) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, a1, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  v10 = a1 + *(AuthToken + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, AuthToken);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  }

  return result;
}

uint64_t key path getter for AttachmentLedger_GetAuthTokenRequest.testOption : AttachmentLedger_GetAuthTokenRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(AuthTokenRequest + 32), v7, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v10 = *(*(AuthToken - 8) + 48);
  if (v10(v7, 1, AuthToken) != 1)
  {
    return outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, a2, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  v11 = a2 + *(AuthToken + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, AuthToken);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  }

  return result;
}

uint64_t key path setter for AttachmentLedger_GetAuthTokenRequest.testOption : AttachmentLedger_GetAuthTokenRequest(uint64_t a1, uint64_t a2)
{
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v5 = *(AuthToken - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AuthToken);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData(a1, v8, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  v9 = *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) + 32);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, a2 + v9, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  return (*(v5 + 56))(a2 + v9, 0, 1, AuthToken);
}

uint64_t AttachmentLedger_GetAuthTokenRequest.testOption.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) + 32);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, v1 + v3, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v5 = *(*(AuthToken - 8) + 56);

  return v5(v1 + v3, 0, 1, AuthToken);
}

uint64_t AttachmentLedger_SubscribeResponse.TopicUpdate.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1(0) + 24);
  return UnknownStorage.init()();
}

void (*AttachmentLedger_GetAuthTokenRequest.testOption.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  AuthToken = type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption(0);
  v5[2] = AuthToken;
  v10 = *(AuthToken - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, AuthToken) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = 0;
    v17 = v14 + *(AuthToken + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, AuthToken) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, v14, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  }

  return AttachmentLedger_GetAuthTokenRequest.testOption.modify;
}

void AttachmentLedger_GetAuthTokenRequest.testOption.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AttachmentLedger_MMCSMetadata.BlobData((*a1)[5], v4, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v4, v9 + v3, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AttachmentLedger_MMCSMetadata.BlobData(v5, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
  }

  else
  {
    outlined destroy of NSObject?(v9 + v3, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMd, &_s14CopresenceCore36AttachmentLedger_GetAuthTokenRequestV10TestOptionVSgMR);
    outlined init with take of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, v9 + v3, type metadata accessor for AttachmentLedger_GetAuthTokenRequest.TestOption);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AttachmentLedger_GetAuthTokenResponse.hasAuthPutMaterials.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of NSObject?(v12, a1, a2);
  return v15;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAuthTokenRequest.Action(uint64_t a1, uint64_t a2)
{
  AuthToken = lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.Action and conformance AttachmentLedger_GetAuthTokenRequest.Action();

  return MEMORY[0x1EEE15710](a1, a2, AuthToken);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance AttachmentLedger_ResponseStatus@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AttachmentLedger_ResponseStatus@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttachmentLedger_ResponseStatus()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment(uint64_t a1, uint64_t a2)
{
  AuthToken = lazy protocol witness table accessor for type AttachmentLedger_GetAuthTokenRequest.TokenEnvironment and conformance AttachmentLedger_GetAuthTokenRequest.TokenEnvironment();

  return MEMORY[0x1EEE15710](a1, a2, AuthToken);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttachmentLedger_ResponseStatus()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}