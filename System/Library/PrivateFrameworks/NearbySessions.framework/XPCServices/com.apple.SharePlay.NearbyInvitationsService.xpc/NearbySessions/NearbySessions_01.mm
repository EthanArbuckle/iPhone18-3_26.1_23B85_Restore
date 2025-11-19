void closure #2 in NearbyInvitationAdvertiser.advertise()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWListenerC5StateOSgMd, &_s7Network10NWListenerC5StateOSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for NWListener.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v30 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v28 - v15;
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.client);
  v20 = *(v10 + 16);
  v20(v18, a1, v9);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v29 = v22;
    v23 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v23 = 136315138;
    v20(v8, v18, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    outlined init with copy of (String, Any)(v8, v6, &_s7Network10NWListenerC5StateOSgMd, &_s7Network10NWListenerC5StateOSgMR);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      (*(v10 + 32))(v16, v6, v9);
      v20(v30, v16, v9);
      v25 = String.init<A>(reflecting:)();
      v24 = v26;
      (*(v10 + 8))(v16, v9);
    }

    outlined destroy of Any?(v8, &_s7Network10NWListenerC5StateOSgMd, &_s7Network10NWListenerC5StateOSgMR);
    (*(v10 + 8))(v18, v9);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v31);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v29, "*** Listener state update, state=%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  else
  {

    (*(v10 + 8))(v18, v9);
  }
}

uint64_t NearbyInvitationAdvertiser.stopAdvertising()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(NearbyInvitationAdvertiser.stopAdvertising(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising(), v4);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in NearbyInvitationAdvertiser.stopAdvertising()()
{
  v1 = (*(**(v0 + 16) + 136))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      NWListener.cancel()();

      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v7 = *(v0 + 8);

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of (String, Any)(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of Any?(v12, &_sScPSgMd, &_sScPSgMR);
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

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
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

uint64_t NearbyInvitationAdvertiser.deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__connections;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__dataReceived;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_connectionRequests);

  outlined destroy of weak PeerConnectionDelegate?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate);
  return v0;
}

uint64_t NearbyInvitationAdvertiser.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__connections;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__dataReceived;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_connectionRequests);

  outlined destroy of weak PeerConnectionDelegate?(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t NearbyInvitationAdvertiser.approveConnectionRequest(id:localInvitation:connection:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v44 = a5;
  v7 = type metadata accessor for NWConnection.SendCompletion();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  __chkstk_darwin(v7);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InvitationRequestData();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWProtocolFramer.Message();
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v14 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
  v48 = &type metadata for ConnectionMessageType;
  v47 = 2;
  dispatch thunk of NWProtocolFramer.Message.subscript.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000C8980;
  *(v15 + 32) = v14;
  v16 = type metadata accessor for NWConnection.ContentContext();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  v19 = NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();

  outlined copy of Data._Representation(a3, a4);
  InvitationRequestData.init(invitationData:id:pseudo:)();
  v20 = type metadata accessor for JSONEncoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type InvitationRequestData and conformance InvitationRequestData(&lazy protocol witness table cache variable for type InvitationRequestData and conformance InvitationRequestData, 255, &type metadata accessor for InvitationRequestData);
  v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v25 = v24;
  v39 = v10;
  v26 = v41;
  v27 = v42;
  v28 = v19;
  v29 = v43;
  (*(v42 + 104))(v41, enum case for NWConnection.SendCompletion.idempotent(_:), v43);
  outlined copy of Data._Representation(v23, v25);
  v40 = v28;
  v30 = v44;
  NWConnection.send(content:contentContext:isComplete:completion:)();
  outlined consume of Data._Representation(v23, v25);
  (*(v27 + 8))(v26, v29);
  (*(*v45 + 304))(v30);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Log.client);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v39;
  if (v34)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "NearbyInvitationsAdvertiser sent data for LMI", v36, 2u);

    outlined consume of Data._Representation(v23, v25);
  }

  else
  {

    outlined consume of Data._Representation(v23, v25);
  }

  return (*(v46 + 8))(v13, v35);
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
    _CocoaArrayWrapper.endIndex.getter();
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

uint64_t specialized ConnectionMessageType.init(rawValue:)(uint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

uint64_t partial apply for closure #1 in AdvertisementProtocol.handleInput(framer:)(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  result = *(v3 + 16);
  if (a1)
  {
    if (a2 - a1 >= result)
    {
      v6 = *(v3 + 24);
      *v6 = *a1;
      *(v6 + 8) = 0;
    }

    else
    {
      return 0;
    }
  }

  else if (result <= 0)
  {
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys;
  if (!lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys);
  }

  return result;
}

uint64_t specialized AdvertisementProtocolHeader.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy44com_apple_SharePlay_NearbyInvitationsService27AdvertisementProtocolHeaderV10CodingKeys33_BB57DF391DAD469BCCA423D45398D2B3LLOGMd, &_ss22KeyedDecodingContainerVy44com_apple_SharePlay_NearbyInvitationsService27AdvertisementProtocolHeaderV10CodingKeys33_BB57DF391DAD469BCCA423D45398D2B3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AdvertisementProtocolHeader.CodingKeys and conformance AdvertisementProtocolHeader.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12[15] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[14] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9 | (v10 << 32);
}

char *specialized NearbyInvitationAdvertiser.init(listenerConfiguration:delegate:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v43 = a2;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd, &_s7Combine9PublishedVy10Foundation4DataVSgGMR);
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v38 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  __chkstk_darwin(v9);
  v35 = &v34 - v11;
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v34 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v34);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  *&v44 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type InvitationRequestData and conformance InvitationRequestData(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *(a3 + 2) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a3 + 4) = &_swiftEmptyArrayStorage;
  v20 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__connections;
  *&v44 = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
  v21 = v35;
  Published.init(initialValue:)();
  (*(v36 + 32))(&a3[v20], v21, v37);
  v22 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser__dataReceived;
  v44 = xmmword_1000C8990;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v23 = v38;
  Published.init(initialValue:)();
  (*(v39 + 32))(&a3[v22], v23, v40);
  v24 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_connectionRequests;
  *&a3[v24] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7Network12NWConnectionCSgTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  *&a3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.client);
  v26 = v41;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "NearbyInvitationsAdvertiser init %@", v29, 0xCu);
    outlined destroy of Any?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  *(a3 + 3) = v26;
  v32 = &a3[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService26NearbyInvitationAdvertiser_delegate];
  swift_beginAccess();
  *(v32 + 1) = v42;
  swift_unknownObjectWeakAssign();
  return a3;
}

nw_parameters_t specialized static NearbyInvitationAdvertiser.createParameters(isBrowsing:)(char a1)
{
  application_service = nw_parameters_create_application_service();
  if (a1)
  {
    v3 = xpc_array_create(0, 0);
    v4 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_string(v3, v4, "com.apple.rapport.browse");
    v5 = xpc_array_create(0, 0);
    v6 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_string(v5, v6, "RapportBrowseAgent");
    swift_unknownObjectRetain();
    nw_parameters_set_required_netagent_classes();
    nw_parameters_set_server_mode();
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.client);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      v12 = [application_service description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v28);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Create Parameters are browsing with %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    nw_parameters_set_server_mode();
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.client);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      v22 = [application_service description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v28);

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Create Parameters are listening with %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }
  }

  return application_service;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NWProtocolOptions();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v5, 1, v3);
}

uint64_t partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in NearbyInvitationAdvertiser.stopAdvertising()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type ConnectionMessageType and conformance ConnectionMessageType()
{
  result = lazy protocol witness table cache variable for type ConnectionMessageType and conformance ConnectionMessageType;
  if (!lazy protocol witness table cache variable for type ConnectionMessageType and conformance ConnectionMessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionMessageType and conformance ConnectionMessageType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdvertisementProtocolHeader(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AdvertisementProtocolHeader(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for NearbyInvitationAdvertiser()
{
  result = type metadata singleton initialization cache for NearbyInvitationAdvertiser;
  if (!type metadata singleton initialization cache for NearbyInvitationAdvertiser)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for NearbyInvitationAdvertiser()
{
  type metadata accessor for Published<[NWConnection]>(319, &lazy cache variable for type metadata for Published<[NWConnection]>, &_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<[NWConnection]>(319, &lazy cache variable for type metadata for Published<Data?>, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[NWConnection]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AdvertisementProtocolHeader.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdvertisementProtocolHeader.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

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
  v8 = v7 + 32 + 16 * result;
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for NWConnection();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v4, v2, 0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
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

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type InvitationRequestData and conformance InvitationRequestData(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t one-time initialization function for defaultNearbyGroupPseudonymConfig()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000031;
  *(inited + 16) = xmmword_1000C8E90;
  *(inited + 40) = 0x80000001000CDBC0;
  *(inited + 48) = 36000;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0xD00000000000003CLL;
  *(inited + 88) = 0x80000001000CDC00;
  *(inited + 96) = 3600;
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0xD000000000000031;
  *(inited + 136) = 0x80000001000CDC40;
  *(inited + 144) = 5;
  *(inited + 168) = &type metadata for Int;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 216) = &type metadata for Int;
  *(inited + 184) = 0x80000001000CDC80;
  *(inited + 192) = 4;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  result = swift_arrayDestroy();
  defaultNearbyGroupPseudonymConfig._rawValue = v1;
  return result;
}

unint64_t NearbyGroupServerBag.BagKey.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000031;
  v2 = 0xD000000000000017;
  if (a1 == 2)
  {
    v2 = 0xD000000000000031;
  }

  if (a1)
  {
    v1 = 0xD00000000000003CLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NearbyGroupServerBag.BagKey(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = NearbyGroupServerBag.BagKey.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == NearbyGroupServerBag.BagKey.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyGroupServerBag.BagKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NearbyGroupServerBag.BagKey.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyGroupServerBag.BagKey()
{
  NearbyGroupServerBag.BagKey.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyGroupServerBag.BagKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NearbyGroupServerBag.BagKey.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NearbyGroupServerBag.BagKey@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NearbyGroupServerBag.BagKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NearbyGroupServerBag.BagKey@<X0>(unint64_t *a1@<X8>)
{
  result = NearbyGroupServerBag.BagKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int IDSServiceError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyGroupServerBag.Errors()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

double NearbyGroupServerBag.nearbyGroupPseudonymTTL.getter()
{
  v0 = specialized NearbyGroupServerBag.numericConfig(for:)(0);
  [v0 doubleValue];
  v2 = v1;

  return v2;
}

double NearbyGroupServerBag.nearbyGroupPseudonymTTLSingleUse.getter()
{
  v0 = specialized NearbyGroupServerBag.numericConfig(for:)(1u);
  [v0 doubleValue];
  v2 = v1;

  return v2;
}

double NearbyGroupServerBag.nearbyGroupPseudonymRefreshSkew.getter()
{
  v0 = specialized NearbyGroupServerBag.numericConfig(for:)(2u);
  [v0 doubleValue];
  v2 = v1;

  return v2;
}

id NearbyGroupServerBag.nearbyGroupHostLimit.getter()
{
  v0 = specialized NearbyGroupServerBag.numericConfig(for:)(3u);
  v1 = [v0 integerValue];

  return v1;
}

double NearbyGroupServerBag.pseudonymConfig(service:reusable:)@<D0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
    result = *&v8;
    a3[2] = v8;
  }

  return result;
}

void __swiftcall NearbyGroupServerBag.pseudonymConfig(featureID:reusable:)(com_apple_SharePlay_NearbyInvitationsService::Pseudonym::Configuration *__return_ptr retstr, Swift::String featureID, Swift::Bool reusable)
{
  object = featureID._object;
  countAndFlagsBits = featureID._countAndFlagsBits;
  v6 = specialized NearbyGroupServerBag.numericConfig(for:)(!reusable);
  [v6 doubleValue];
  v8 = v7;

  v9 = specialized NearbyGroupServerBag.numericConfig(for:)(2u);
  [v9 doubleValue];
  v11 = v10;

  retstr->featureID._countAndFlagsBits = countAndFlagsBits;
  retstr->featureID._object = object;
  retstr->minimumExpirationInSeconds = v8;
  retstr->refreshSkewInSeconds = v11;
  retstr->reuseIdentifier.value._countAndFlagsBits = 0;
  retstr->reuseIdentifier.value._object = 0;
}

unint64_t specialized NearbyGroupServerBag.BagKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NearbyGroupServerBag.BagKey.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized NearbyGroupServerBag.numericConfig(for:)(unsigned __int8 a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = v2;
  v4 = 0xD000000000000031;
  v5 = &async function pointer to closure #1 in NearbyIDSServiceController.init(queue:service:delegate:joinRequestsController:);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v3 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      return v13;
    }
  }

  else
  {
    outlined destroy of Any?(v16);
  }

  if (one-time initialization token for defaultNearbyGroupPseudonymConfig != -1)
  {
    swift_once();
  }

  rawValue = defaultNearbyGroupPseudonymConfig._rawValue;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "tions-ttl-seconds-single-use";
    }

    else
    {
      v4 = 0xD000000000000017;
      v5 = "tions-refreshSkew";
    }
  }

  else if (a1)
  {
    v4 = 0xD00000000000003CLL;
    v5 = "tions-ttl-seconds";
  }

  if (*(defaultNearbyGroupPseudonymConfig._rawValue + 2))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      outlined init with copy of Any(rawValue[7] + 32 * v9, &v14);
      outlined init with take of Any(&v14, v16);
      type metadata accessor for NSNumber();
      swift_dynamicCast();
      return v13;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_23:

  __break(1u);
  return result;
}

void specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = v7 == 0xD000000000000030 && 0x80000001000CDD70 == v8;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v9 == 0xD000000000000032 ? (v12 = 0x80000001000CDF50 == v10) : (v12 = 0), v12))
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v14 = 0xE800000000000000;
    v15 = 0x72656C676E617257;
    goto LABEL_16;
  }

LABEL_12:
  if (_TUIsInternalInstall())
  {
    v14 = 0xE700000000000000;
    v15 = 0x6C6F6F74736469;
LABEL_16:
    v16 = specialized NearbyGroupServerBag.numericConfig(for:)((a2 & 1) == 0);
    [v16 doubleValue];
    v18 = v17;

    v19 = specialized NearbyGroupServerBag.numericConfig(for:)(2u);
    [v19 doubleValue];
    v21 = v20;

    *a3 = v15;
    a3[1] = v14;
    a3[2] = v18;
    a3[3] = v21;
    a3[4] = 0;
    a3[5] = 0;
    return;
  }

  lazy protocol witness table accessor for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors();
  swift_allocError();
  swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type NearbyGroupServerBag.BagKey and conformance NearbyGroupServerBag.BagKey()
{
  result = lazy protocol witness table cache variable for type NearbyGroupServerBag.BagKey and conformance NearbyGroupServerBag.BagKey;
  if (!lazy protocol witness table cache variable for type NearbyGroupServerBag.BagKey and conformance NearbyGroupServerBag.BagKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupServerBag.BagKey and conformance NearbyGroupServerBag.BagKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupServerBag.Errors and conformance NearbyGroupServerBag.Errors);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NearbyGroupServerBag.BagKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NearbyGroupServerBag.BagKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NearbyGroupServerBag.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NearbyGroupServerBag.Errors(_WORD *result, int a2, int a3)
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

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void IDSService.allAliases.getter()
{
  v1 = [v0 accounts];
  if (!v1)
  {
    goto LABEL_41;
  }

  v2 = v1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
  lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
    v8 = v42;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    v4 = v3;
  }

  v35 = v6;
  v12 = &_swiftEmptyArrayStorage;
  v13 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v18 = v37, v16 = v7, v17 = v8, !v37))
    {
LABEL_33:
      outlined consume of Set<IDSAccount>.Iterator._Variant();
      return;
    }

LABEL_20:
    v19 = v13;
    v20 = v4;
    v36 = v18;
    v21 = [v18 vettedAliases];
    if (!v21)
    {
      goto LABEL_40;
    }

    v22 = v21;
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v23 + 16);
    v25 = v12;
    v26 = *(v12 + 2);
    v27 = v26 + v24;
    if (__OFADD__(v26, v24))
    {
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v25;
    if (!isUniquelyReferenced_nonNull_native || (v30 = *(v25 + 3) >> 1, v30 < v27))
    {
      if (v26 <= v27)
      {
        v31 = v26 + v24;
      }

      else
      {
        v31 = v26;
      }

      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v31, 1, v25);
      v30 = *(v29 + 3) >> 1;
    }

    v4 = v20;
    v13 = v19;
    if (*(v23 + 16))
    {
      if (v30 - *(v29 + 2) < v24)
      {
        goto LABEL_38;
      }

      v12 = v29;
      swift_arrayInitWithCopy();

      if (v24)
      {
        v32 = *(v12 + 2);
        v33 = __OFADD__(v32, v24);
        v34 = v32 + v24;
        if (v33)
        {
          goto LABEL_39;
        }

        *(v12 + 2) = v34;
      }
    }

    else
    {
      v12 = v29;

      if (v24)
      {
        goto LABEL_37;
      }
    }

    v7 = v16;
    v8 = v17;
  }

  v14 = v7;
  v15 = v8;
  v16 = v7;
  if (v8)
  {
LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_33;
    }

    goto LABEL_20;
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
      goto LABEL_33;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type IDSAccount and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type IDSAccount and conformance NSObject;
  if (!lazy protocol witness table cache variable for type IDSAccount and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSAccount and conformance NSObject);
  }

  return result;
}

Swift::Int NearbyInvitationServiceBluetoothController.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

id NearbyInvitationJoinRequestController.init(sessionProvider:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_pseudonymsByHandle] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_sessionProvider] = a1;
  if (a1 == 1)
  {
    v2 = objc_allocWithZone(IDSService);
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 initWithService:v3];

    if (v4)
    {
      *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_service] = v4;
      v6.receiver = v1;
      v6.super_class = type metadata accessor for NearbyInvitationJoinRequestController();
      return objc_msgSendSuper2(&v6, "init");
    }

    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t NearbyInvitationSessionProvider.serviceName.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0xD000000000000030;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t NearbyInvitationJoinRequestController.generateInvitation()(uint64_t a1)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = v1;
  return _swift_task_switch(NearbyInvitationJoinRequestController.generateInvitation(), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v8 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = NearbyInvitationJoinRequestController.generateInvitation();
  }

  else
  {
    v6 = v3[34];

    v5 = NearbyInvitationJoinRequestController.generateInvitation();
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t NearbyInvitationJoinRequestController.generateInvitation()()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = type metadata accessor for Logger();
  *(v0 + 264) = __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@ Received request to generate invitation.", v7, 0xCu);
    outlined destroy of Any?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v10 = *(v0 + 256);

  v11 = *(v10 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_service);
  *(v0 + 136) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSService, IDSService_ptr);
  *(v0 + 144) = &protocol witness table for IDSService;
  *(v0 + 112) = v11;
  v12 = v11;
  specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)((v0 + 112), 1, (v0 + 64));
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  *(v0 + 272) = v16;
  *(v0 + 224) = *(v0 + 96);
  outlined destroy of Any?(v0 + 224, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 16) = v15;
  *(v0 + 24) = v16;
  *(v0 + 32) = v14;
  *(v0 + 40) = v13;
  *(v0 + 48) = 0xD00000000000001BLL;
  *(v0 + 56) = 0x80000001000CDF90;
  v17 = swift_task_alloc();
  *(v0 + 280) = v17;
  *v17 = v0;
  v17[1] = NearbyInvitationJoinRequestController.generateInvitation();

  return specialized static Pseudonym.reusable(for:configuration:)(v0 + 112, v0 + 16);
}

{
  v37 = v0;
  v1 = v0[36];
  v2 = v0[32];
  v34 = v0[33];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  swift_beginAccess();
  v3 = [*(v1 + 16) URI];
  v4 = [v3 prefixedURI];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = type metadata accessor for Pseudonym();
  v36[3] = v8;
  v9 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Pseudonym and conformance Pseudonym, type metadata accessor for Pseudonym);
  v36[4] = v9;
  v36[0] = v1;
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v36, v5, v7);
  swift_endAccess();
  v10 = type metadata accessor for OwnerCredentials();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = OwnerCredentials.init()();
  v14 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle;
  swift_beginAccess();

  v15 = *&v2[v14];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36[0] = *&v2[v14];
  *&v2[v14] = 0x8000000000000000;
  v33 = v5;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v5, v7, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySS12JoinRequests16OwnerCredentialsCGMd, &_ss18_DictionaryStorageCySS12JoinRequests16OwnerCredentialsCGMR);

  *&v2[v14] = v36[0];
  swift_endAccess();
  v17 = v2;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v32 = v9;
    v20 = v0[32];
    v21 = swift_slowAlloc();
    v35 = v8;
    v22 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v21 = 138412802;
    *(v21 + 4) = v20;
    *v22 = v20;
    *(v21 + 12) = 2080;
    v23 = v20;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v7, v36);

    *(v21 + 14) = v24;
    *(v21 + 22) = 2080;
    v0[30] = v13;

    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v36);

    *(v21 + 24) = v27;
    v9 = v32;
    _os_log_impl(&_mh_execute_header, v18, v19, "%@ Generated invitation, [%s] = %s", v21, 0x20u);
    outlined destroy of Any?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v8 = v35;

    swift_arrayDestroy();
  }

  else
  {
  }

  v28 = v0[36];
  v29 = v0[31];
  v29[3] = v8;
  v29[4] = v9;
  *v29 = v28;
  v30 = v0[1];

  return v30(v13);
}

{
  v1 = v0[34];

  v2 = v0[37];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  v3 = v0[1];

  return v3();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of PseudonymProtocol(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    outlined destroy of Any?(a1, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of Any?(v10, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMR);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMR);
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      specialized _NativeDictionary._delete(at:)(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for NWBrowser.Result();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of Any?(a1, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return outlined destroy of Any?(v8, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      specialized _NativeDictionary._delete(at:)(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = type metadata accessor for UUID();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      specialized _NativeDictionary._delete(at:)(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyInvitationJoinRequestController.releaseInvitation(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = v1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34[0] = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v34);
    _os_log_impl(&_mh_execute_header, v6, v7, "%@ Received request to release invitation owned by: %s", v8, 0x16u);
    outlined destroy of Any?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v12 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle;
  swift_beginAccess();
  if (*(*&v5[v12] + 16) && (v13 = *&v5[v12], , specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), v15 = v14, , (v15 & 1) != 0))
  {
    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(countAndFlagsBits, object, &_ss18_DictionaryStorageCySS12JoinRequests16OwnerCredentialsCGMd, &_ss18_DictionaryStorageCySS12JoinRequests16OwnerCredentialsCGMR);
    swift_endAccess();

    swift_beginAccess();
    specialized Dictionary._Variant.removeValue(forKey:)(countAndFlagsBits, object, v34);
    swift_endAccess();
    outlined init with copy of (String, Any)(v34, v33, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
    v16 = v5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v19 = 138412546;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 2080;
      outlined init with copy of (String, Any)(v33, &v31, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
      if (v32)
      {
        outlined init with take of PseudonymProtocol(&v31, v30);
        outlined init with copy of PseudonymProtocol(v30, v29);
        v22 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pMR);
        v23 = String.init<A>(reflecting:)();
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
      }

      else
      {
        v27 = v16;
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      outlined destroy of Any?(v33, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v35);

      *(v19 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "%@ Released: %s", v19, 0x16u);
      outlined destroy of Any?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }

    else
    {

      outlined destroy of Any?(v33, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
    }

    outlined destroy of Any?(v34, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }
}

NSObject *NearbyInvitationJoinRequestController.encrypt(_:responseKey:invitation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a3;
    v17 = a4;
    v18 = swift_slowAlloc();
    v32 = v18;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v32);
    _os_log_impl(&_mh_execute_header, v13, v14, "Attempting encryption for: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    a4 = v17;
    a3 = v16;
  }

  v19 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle;
  swift_beginAccess();
  v20 = *(v7 + v19);
  if (*(v20 + 16))
  {

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
    if (v22)
    {
      v23 = *(*(v20 + 56) + 8 * v21);

      v24 = (*(*v23 + 136))(a1, a2, a3, a4);

      return v24;
    }
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v33);
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to find credentials for invitation %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
  swift_allocError();
  *v28 = 0;
  swift_willThrow();
  return v24;
}

uint64_t (*NearbyInvitationJoinRequestController.decrypt(_:to:)(uint64_t a1, uint64_t a2, unint64_t a3))(uint64_t, unint64_t, uint64_t, unint64_t)
{
  v62 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v63 = type metadata accessor for NearbyProtoJoinRequest(0);
  v12 = *(v63 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v63);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = (&v56 - v18);
  __chkstk_darwin(v17);
  v21 = &v56 - v20;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Log.default);
  v59 = a1;
  outlined init with copy of NearbyProtoJoinRequest(a1, v21);
  v61 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v57 = v25;
    v58 = a3;
    v26 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v65 = v56;
    *v26 = 136315138;
    outlined init with copy of NearbyProtoJoinRequest(v21, v11);
    v27 = v63;
    (*(v12 + 56))(v11, 0, 1, v63);
    outlined init with copy of (String, Any)(v11, v9, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMR);
    if ((*(v12 + 48))(v9, 1, v27) == 1)
    {
      v28 = 0xE300000000000000;
      v29 = 7104878;
    }

    else
    {
      outlined init with take of NearbyProtoJoinRequest(v9, v19);
      outlined init with copy of NearbyProtoJoinRequest(v19, v16);
      v29 = String.init<A>(reflecting:)();
      v28 = v30;
      outlined destroy of NearbyProtoJoinRequest(v19);
    }

    outlined destroy of Any?(v11, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E16ProtoJoinRequestVSgMR);
    outlined destroy of NearbyProtoJoinRequest(v21);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v65);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v57, "Attempting decryption of: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);

    a3 = v58;
  }

  else
  {

    outlined destroy of NearbyProtoJoinRequest(v21);
    v27 = v63;
  }

  v32 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle;
  v33 = v64;
  swift_beginAccess();
  v34 = *(v33 + v32);
  if (*(v34 + 16))
  {

    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v62, a3);
    if (v36)
    {
      v37 = *(*(v34 + 56) + 8 * v35);

      v38 = *(v27 + 20);
      v39 = (v59 + *(v27 + 24));
      v40 = v39[1];
      if (v40 >> 60 == 15)
      {
        v41 = 0;
      }

      else
      {
        v41 = *v39;
      }

      if (v40 >> 60 == 15)
      {
        v42 = 0xC000000000000000;
      }

      else
      {
        v42 = v39[1];
      }

      v43 = (v59 + v38);
      v44 = *v43;
      v45 = v43[1];
      if (v45 >> 60 == 15)
      {
        v46 = 0;
      }

      else
      {
        v46 = *v43;
      }

      if (v45 >> 60 == 15)
      {
        v47 = 0xC000000000000000;
      }

      else
      {
        v47 = v43[1];
      }

      v19 = *(*v37 + 128);
      outlined copy of Data?(*v39, v40);
      outlined copy of Data?(v44, v45);
      v64 = v41;
      v48 = v60;
      v49 = v19(v41, v42, v46, v47);
      if (v48)
      {
        outlined consume of Data._Representation(v46, v47);
        outlined consume of Data._Representation(v64, v42);
      }

      else
      {
        v19 = v49;

        outlined consume of Data._Representation(v46, v47);
        outlined consume of Data._Representation(v64, v42);
      }

      return v19;
    }
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v66 = v53;
    *v52 = 136315138;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, a3, &v66);
    _os_log_impl(&_mh_execute_header, v50, v51, "Failed to find credentials for invitation %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }

  lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
  swift_allocError();
  *v54 = 0;
  swift_willThrow();
  return v19;
}

uint64_t NearbyInvitationJoinRequestController.decryptJoinRequest(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = (*((swift_isaMask & *v4) + 0xC0))(a2, a3, a4);
  if (!v5)
  {
    v6 = v14;
    v15 = v12;
    v16 = v13;
    type metadata accessor for NearbyProtoJoinRequest.Content(0);
    outlined copy of Data._Representation(v15, v16);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type NearbyProtoJoinRequest.Content and conformance NearbyProtoJoinRequest.Content, type metadata accessor for NearbyProtoJoinRequest.Content);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    outlined consume of Data._Representation(v15, v16);
  }

  return v6;
}

Swift::Void __swiftcall NearbyInvitationJoinRequestController.markAllPseudonymsUsed()()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_pseudonymsByHandle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = one-time initialization token for default;

  if (v3 != -1)
  {
LABEL_16:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pMd, &_s44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pMR);
    v9 = Dictionary.Values.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v21);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Marking all generated pseudonyms as used: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v12 = 1 << *(v2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v2 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      outlined init with copy of PseudonymProtocol(*(v2 + 56) + 40 * (v18 | (v17 << 6)), v21);
      v19 = v22;
      v20 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v20 + 56))(v19, v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      if (!v14)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v2 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyInvitationJoinRequestController.markUsed(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_pseudonymsByHandle;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v7)
    {
      outlined init with copy of PseudonymProtocol(*(v5 + 56) + 40 * v6, v16);

      outlined init with take of PseudonymProtocol(v16, v17);
      v8 = v18;
      v9 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v9 + 56))(v8, v9);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      return;
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.default);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to find pseudonym for handle: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();
}

NSObject *NearbyInvitationJoinRequestController.existingInvitationInfo(for:)(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting lookup for existing invitation for: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v11 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService37NearbyInvitationJoinRequestController_credentialsByHandle;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (*(v12 + 16))
  {

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      (*(*v15 + 96))(v16);
      if (v17 >> 60 == 15)
      {
        a2 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(a2, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, a2, v18, "Invitation expired. PublicKey data not found.", v19, 2u);
        }

        lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
        swift_allocError();
        *v20 = 1;
        swift_willThrow();
      }

      else
      {
        objc_allocWithZone(type metadata accessor for NearbyInvitationJoinRequestMetadata());

        a2 = NearbyInvitationJoinRequestMetadata.init(publicKey:pseudonym:)();
      }

      return a2;
    }
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v28);
    _os_log_impl(&_mh_execute_header, v21, v22, "Failed to find credentials for handle: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors();
  swift_allocError();
  *v25 = 0;
  swift_willThrow();
  return a2;
}

id NearbyInvitationServiceHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyInvitationJoinRequestController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyInvitationJoinRequestController();
  return objc_msgSendSuper2(&v2, "dealloc");
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0K6DeviceVyAC0H13RangingFilterC_GGMd, &_ss23_ContiguousArrayStorageCy44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0K6DeviceVyAC0H13RangingFilterC_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GMd, &_s44com_apple_SharePlay_NearbyInvitationsService24FilteredBluetoothScannerC0H6DeviceVyAA0E13RangingFilterC_GMR);
    swift_arrayInitWithCopy();
  }

  return v10;
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

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of PseudonymProtocol((*(v12 + 56) + 40 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  specialized _NativeDictionary._delete(at:)(v7, v10);
  *v3 = v10;
  return v12;
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, &_ss18_DictionaryStorageCySS7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMd, &_ss18_DictionaryStorageCySS7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMR);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for NWBrowser.Result();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for NWBrowser.Result();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = *v4;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  v12 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v7;
  v18 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()(a3, a4);
    v14 = v18;
  }

  v15 = *(*(v14 + 48) + 16 * v11 + 8);

  v16 = *(*(v14 + 56) + 8 * v11);
  specialized _NativeDictionary._delete(at:)(v11, v14);
  *v7 = v14;
  return v16;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pGMd, &_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        outlined init with take of PseudonymProtocol(v25, v37);
      }

      else
      {
        outlined init with copy of PseudonymProtocol(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of PseudonymProtocol(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14NearbySessions0C13AdvertisementCGMd, &_ss18_DictionaryStorageCySS14NearbySessions0C13AdvertisementCGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVGMd, &_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = *(v5 + 56) + 32 * v22;
      v26 = *(v25 + 8);
      v43 = *v25;
      v44 = *v23;
      v41 = *(v25 + 17);
      v42 = *(v25 + 16);
      v27 = *(v25 + 24);
      if ((v40 & 1) == 0)
      {
        v28 = v27;
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v44;
      v17[1] = v24;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v43;
      *(v18 + 8) = v26;
      *(v18 + 16) = v42;
      *(v18 + 17) = v41;
      *(v18 + 24) = v27;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for NWBrowser.Result() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSSDySSSaySSGGGMd, &_ss18_DictionaryStorageCySSSDySSSaySSGGGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySS12JoinRequests20RequesterCredentialsCGMd, &_ss18_DictionaryStorageCySS12JoinRequests20RequesterCredentialsCGMR);
}

{
  v5 = v4;
  v31 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v22 = *v5;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, v25, a2, v26);
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCySS7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMd, &_ss18_DictionaryStorageCySS7Combine18PassthroughSubjectCy10Foundation4DataVs5Error_pGGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return outlined init with take of PseudonymProtocol(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v25;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a7 & 1);
    v26 = *v8;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v28 = *v8;
  if (v23)
  {
    v29 = v28[7] + 32 * v17;
    v30 = *(v29 + 8);
    v31 = *(v29 + 24);
    *v29 = a1;
    *(v29 + 8) = a2;
    *(v29 + 16) = a3 & 1;
    *(v29 + 17) = HIBYTE(a3) & 1;
    *(v29 + 24) = a4;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v17, a5, a6, a1, a2, a3 & 0x101, a4, v28);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      specialized _NativeDictionary.copy()(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

{
  v9 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      specialized _NativeDictionary.copy()(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v30, v31);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return specialized _NativeDictionary._insert(at:key:value:)(v17, v14, a1, v23);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of PseudonymProtocol(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6 & 1;
  *(v9 + 17) = HIBYTE(a6) & 1;
  *(v9 + 24) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pGMd, &_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17PseudonymProtocol_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        outlined init with copy of PseudonymProtocol(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of PseudonymProtocol(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVGMd, &_ss18_DictionaryStorageCySS44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 17);
        v27 = *(v22 + 24);
        v28 = (*(v4 + 48) + v18);
        *v28 = v20;
        v28[1] = v21;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 17) = v26;
        *(v29 + 24) = v27;
        v30 = v27;
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

      v16 = *(v2 + 64 + 8 * v8);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVy14NearbySessions22InvitationJoinResponseCSg_s5Error_pSgtcGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVy14NearbySessions22InvitationJoinResponseCSg_s5Error_pSgtcGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSuGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSuGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v43 = type metadata accessor for NWBrowser.Result();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UUID();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV7Network9NWBrowserC6ResultVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV7Network9NWBrowserC6ResultVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14NearbySessions0C13AdvertisementCGMd, &_ss18_DictionaryStorageCySS14NearbySessions0C13AdvertisementCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors;
  if (!lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyInvitationJoinRequestController.Errors and conformance NearbyInvitationJoinRequestController.Errors);
  }

  return result;
}

uint64_t outlined init with copy of NearbyProtoJoinRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoJoinRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NearbyProtoJoinRequest(uint64_t a1)
{
  v2 = type metadata accessor for NearbyProtoJoinRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of NearbyProtoJoinRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyProtoJoinRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NearbyInvitationServiceBluetoothController.findInvitations(scannerID:for:ignoringDistance:)(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, log);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 67109378;
    *(v10 + 4) = NearbyInvitationActivityType.rawValue.getter();
    *(v10 + 8) = 2080;
    if (a3)
    {
      v12 = 0x69676E6172206F6ELL;
    }

    else
    {
      v12 = 0x676E69676E6172;
    }

    if (a3)
    {
      v13 = 0xEA0000000000676ELL;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v28);

    *(v10 + 10) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Finding invitations for %u with %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  v15 = type metadata accessor for NearbyInvitationsInviteScanner(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitations;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *(v18 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_advertisements) = &_swiftEmptyDictionarySingleton;
  v21 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v23 = *(*(v22 - 8) + 56);
  v23(v18 + v21, 1, 1, v22);
  v23(v18 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation, 1, 1, v22);
  NearbyInvitationsScanner.init(ignoringDistance:)(a3 & 1);
  [v18[6] setUseCase:131092];
  [v18[6] addDiscoveryType:21];
  v24 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan);
  *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14NearbySessions0D22InvitationActivityTypeOGMd, &_ss23_ContiguousArrayStorageCy14NearbySessions0D22InvitationActivityTypeOGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000C8970;
  *(v25 + 32) = a2;
  (*(*v18 + 67))(a1, v25);
}

uint64_t NearbyInvitationsInviteScanner.__allocating_init(ignoringDistance:)(char a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitations;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_advertisements) = &_swiftEmptyDictionarySingleton;
  v8 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_scanContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMd, &_sScS12ContinuationVy14NearbySessions0B13AdvertisementC_GMR);
  v10 = *(*(v9 - 8) + 56);
  v10(v5 + v8, 1, 1, v9);
  v10(v5 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService30NearbyInvitationsInviteScanner_lostInvitationContinuation, 1, 1, v9);
  NearbyInvitationsScanner.init(ignoringDistance:)(a1);
  v11 = *(v5 + 48);

  [v11 setUseCase:131092];
  [*(v5 + 48) addDiscoveryType:21];

  return v5;
}

uint64_t NearbyInvitationServiceBluetoothController.lostInvitations()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan;
  if (*(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan))
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, log);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Monitoring for lost invitations";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, log);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "No ongoing scan, can't monitor for lost invitations. Call findInvitations() first";
      goto LABEL_10;
    }
  }

  v11 = *(v2 + v4);
  if (v11)
  {
    v12 = *(*v11 + 440);

    v12(v13);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A13AdvertisementCGMd, &_sScSy14NearbySessions0A13AdvertisementCGMR);
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

Swift::Void __swiftcall NearbyInvitationServiceBluetoothController.stopFindingInvitations()()
{
  v1 = *(v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan);
  if (v1)
  {
    v2 = *(*v1 + 336);

    v2(v3);
  }
}

uint64_t NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(NearbyInvitationServiceBluetoothController.broadcast(invitation:), 0, 0);
}

uint64_t NearbyInvitationServiceBluetoothController.broadcast(invitation:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  v0[6] = __swift_project_value_buffer(v2, log);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received request to start broadcasting invitation %@", v7, 0xCu);
    outlined destroy of Any?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v10 = v0[4];
  v11 = v0[5];

  v0[7] = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_queue;
  v12 = swift_allocObject();
  v0[8] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = async function pointer to AsyncSerialQueue.performAndWaitFor<A>(_:)[1];
  v14 = v10;
  v15 = v11;
  v16 = swift_task_alloc();
  v0[9] = v16;
  v17 = type metadata accessor for NearbyInvitationsInviteAdvertiser(0);
  *v16 = v0;
  v16[1] = NearbyInvitationServiceBluetoothController.broadcast(invitation:);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v0 + 2, &async function pointer to partial apply for closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:), v12, v17);
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = NearbyInvitationServiceBluetoothController.broadcast(invitation:);
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = NearbyInvitationServiceBluetoothController.broadcast(invitation:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v1 = v0[2];
  v0[11] = v1;
  v2 = *(*v1 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = NearbyInvitationServiceBluetoothController.broadcast(invitation:);

  return v6();
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = NearbyInvitationServiceBluetoothController.broadcast(invitation:);
  }

  else
  {
    v3 = NearbyInvitationServiceBluetoothController.broadcast(invitation:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

{
  v24 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    *(v0 + 24) = v6;
    v11 = v7;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to start advertising invitation: %@, reason: %s", v8, 0x16u);
    outlined destroy of Any?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  v15 = *(v0 + 56);
  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  v18 = swift_allocObject();
  *(v0 + 112) = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = async function pointer to AsyncSerialQueue.performAndWaitFor<A>(_:)[1];
  v20 = v17;
  v16;
  v21 = swift_task_alloc();
  *(v0 + 120) = v21;
  *v21 = v0;
  v21[1] = NearbyInvitationServiceBluetoothController.broadcast(invitation:);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)();
}

{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.broadcast(invitation:), 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[11];
  swift_willThrow();

  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for UUID();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)()
{
  v46 = v0;
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  NearbyAdvertisementRequest.identifier.getter();
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_ongoingBroadcasts;
  swift_beginAccess();
  if (*(*(v3 + v4) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v0[14]), (v5 & 1) != 0))
  {
    v6 = v0[14];
    v7 = v0[11];
    v8 = v0[12];
    swift_endAccess();
    (*(v8 + 8))(v6, v7);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v10 = v0[9];
    v9 = v0[10];
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, log);
    v12 = v9;
    v13 = v10;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[10];
      v43 = v0[11];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45 = v19;
      *v17 = 138412546;
      *(v17 + 4) = v16;
      *v18 = v16;
      *(v17 + 12) = 2080;
      v20 = *(v3 + v4);
      type metadata accessor for NearbyInvitationsInviteAdvertiser(0);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v21 = v16;

      v22 = Dictionary.description.getter();
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v45);

      *(v17 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Advertiser already started for %@, all broadcasts: %s", v17, 0x16u);
      outlined destroy of Any?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0Tm(v19);
    }

    v26 = v0[13];
    v27 = v0[14];
    lazy protocol witness table accessor for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();

    v29 = v0[1];
  }

  else
  {
    v30 = v0[13];
    v31 = v0[14];
    v32 = v0[11];
    v33 = v0[12];
    v34 = v0[10];
    v44 = v0[8];
    swift_endAccess();
    v35 = *(v33 + 8);
    v35(v31, v32);
    v36 = type metadata accessor for NearbyInvitationsInviteAdvertiser(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    NearbyInvitationsInviteAdvertiser.init(invitation:)(v34);
    NearbyAdvertisementRequest.identifier.getter();
    swift_beginAccess();

    v40 = *(v3 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v3 + v4);
    *(v3 + v4) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v30, isUniquelyReferenced_nonNull_native);
    v35(v30, v32);
    *(v3 + v4) = v45;
    swift_endAccess();
    *v44 = v39;

    v29 = v0[1];
  }

  return v29();
}

uint64_t closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:), 0, 0);
}

uint64_t closure #2 in NearbyInvitationServiceBluetoothController.broadcast(invitation:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  NearbyAdvertisementRequest.identifier.getter();
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v1);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:), 0, 0);
}

uint64_t NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)()
{
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = *(v2 + 16);
  v0[10] = v6;
  v0[11] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = v4;
  (*(v2 + 32))(v8 + v7, v1, v3);
  v9 = async function pointer to AsyncSerialQueue.performAndWaitFor<A>(_:)[1];
  v10 = v4;
  v11 = swift_task_alloc();
  v0[13] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMR);
  *v11 = v0;
  v11[1] = NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v0 + 2, &async function pointer to partial apply for closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:), v8, v12);
}

{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:), 0, 0);
}

{
  v30 = v0;
  v1 = v0[2];
  v0[14] = v1;
  if (v1)
  {
    v2 = *(*v1 + 112);

    v28 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:);

    return v28();
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[8];
    v9 = v0[5];
    v10 = v0[3];
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, log);
    v7(v8, v10, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[8];
    v16 = v0[5];
    v17 = v0[6];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v17 + 8))(v15, v16);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v29);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Broadcaster for %s not found", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
    }

    else
    {

      (*(v17 + 8))(v15, v16);
    }

    v24 = v0[8];
    v25 = v0[9];
    lazy protocol witness table accessor for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    v27 = v0[1];

    return v27();
  }
}

{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:), 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.stopBroadcast(invitation:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_ongoingBroadcasts;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
  v6 = 0;
  if (v7)
  {
    v8 = v5;
    v9 = *(v2 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v3);
    *(v2 + v3) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v6 = *(*(v11 + 56) + 8 * v8);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *(v2 + v3) = v11;
  }

  **(v0 + 40) = v6;
  swift_endAccess();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for UUID();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:), 0, 0);
}

uint64_t NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)()
{
  v1 = v0[11];
  v2 = v0[8];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = *(v2 + 16);
  v0[12] = v6;
  v0[13] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[14] = v8;
  *(v8 + 16) = v4;
  (*(v2 + 32))(v8 + v7, v1, v3);
  v9 = async function pointer to AsyncSerialQueue.performAndWaitFor<A>(_:)[1];
  v10 = v4;
  v11 = swift_task_alloc();
  v0[15] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMR);
  *v11 = v0;
  v11[1] = NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v0 + 2, &async function pointer to partial apply for closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:), v8, v12);
}

{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:), 0, 0);
}

{
  v32 = v0;
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[5];
    v5 = v0[3];
    v6 = *(*v1 + 176);
    v7 = v0[2];

    v6(v4);

    v8 = v0[1];
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[10];
    v12 = v0[7];
    v13 = v0[4];
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, log);
    v10(v11, v13, v12);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[10];
    v19 = v0[7];
    v20 = v0[8];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v20 + 8))(v18, v19);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v31);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Broadcaster for %s not found", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {

      (*(v20 + 8))(v18, v19);
    }

    v27 = v0[10];
    v28 = v0[11];
    lazy protocol witness table accessor for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();

    v8 = v0[1];
  }

  return v8();
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:), 0, 0);
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.assertPublic(invitation:rotations:)()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_ongoingBroadcasts;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 56)), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v7 = 0;
  }

  **(v0 + 40) = v7;
  swift_endAccess();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:), 0, 0);
}

uint64_t NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = *(v2 + 16);
  v0[11] = v6;
  v0[12] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  v7 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = v4;
  (*(v2 + 32))(v8 + v7, v1, v3);
  v9 = async function pointer to AsyncSerialQueue.performAndWaitFor<A>(_:)[1];
  v10 = v4;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0eF16InviteAdvertiserCSgMR);
  *v11 = v0;
  v11[1] = NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)(v0 + 2, &async function pointer to partial apply for closure #1 in NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:), v8, v12);
}

{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:), 0, 0);
}

{
  v31 = v0;
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[4];
    v5 = *(*v1 + 184);
    v6 = v0[2];

    v5(v4);

    v7 = v0[1];
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[3];
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, log);
    v9(v10, v12, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[9];
    v18 = v0[6];
    v19 = v0[7];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v19 + 8))(v17, v18);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v30);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Broadcaster for %s not found", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }

    else
    {

      (*(v19 + 8))(v17, v18);
    }

    v26 = v0[9];
    v27 = v0[10];
    lazy protocol witness table accessor for type NearbyInvitationServiceBluetoothController.Errors and conformance NearbyInvitationServiceBluetoothController.Errors();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();

    v7 = v0[1];
  }

  return v7();
}

uint64_t closure #1 in NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(closure #1 in NearbyInvitationServiceBluetoothController.releasePublicAssertion(invitation:assertionIdentifier:), 0, 0);
}

id NearbyInvitationServiceBluetoothController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v2);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  v12 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_ongoingBroadcasts;
  *&v0[v12] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_44com_apple_SharePlay_NearbyInvitationsService0iJ16InviteAdvertiserCTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_participantInvitationScan] = 0;
  *&v0[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService42NearbyInvitationServiceBluetoothController_ongoingInviteRequests] = 0;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

id NearbyInvitationServiceBluetoothController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NearbyInvitationsAdvertiser.queue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationsAdvertiser_queue;
  v4 = type metadata accessor for AsyncSerialQueue();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NearbyInvitationsAdvertiser.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  NearbyInvitationsAdvertiser.init()();
  return v3;
}

id *NearbyInvitationsAdvertiser.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v2);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  v12 = [objc_allocWithZone(CBAdvertiser) init];
  v1[2] = v12;
  v13 = v12;
  v14 = String._bridgeToObjectiveC()();
  [v13 setLabel:v14];

  [v1[2] setAdvertiseRate:42];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, log);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    v20 = *(*v1 + 15);

    v22 = v20(v21);
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v28);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Init %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  return v1;
}

uint64_t NearbyInvitationsAdvertiser.start()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(NearbyInvitationsAdvertiser.start(), 0, 0);
}

{
  v17 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = (*(*v5 + 120))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Request to start advertiser", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v11 = *(v0 + 16);
  v12 = async function pointer to AsyncSerialQueue.performAndWaitFor<A>(_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 24) = v13;
  *v13 = v0;
  v13[1] = NearbyInvitationsAdvertiser.start();
  v14 = *(v0 + 16);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)();
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v4 = NearbyInvitationsAdvertiser.start();
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = NearbyInvitationsAdvertiser.start();
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

uint64_t closure #1 in NearbyInvitationsAdvertiser.start()()
{
  v15 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = (*(*v5 + 120))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Activating advertiser", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v11 = *(v0[18] + 16);
  v0[2] = v0;
  v0[3] = closure #1 in NearbyInvitationsAdvertiser.start();
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_208;
  v0[14] = v12;
  [v11 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = closure #1 in NearbyInvitationsAdvertiser.start();
  }

  else
  {
    v3 = closure #1 in NearbyInvitationsAdvertiser.start();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

id *NearbyInvitationsAdvertiser.deinit()
{
  v1 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = (*(*v0 + 15))();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  [v0[2] invalidate];
  v10 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService27NearbyInvitationsAdvertiser_queue;
  v11 = type metadata accessor for AsyncSerialQueue();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  return v1;
}

uint64_t NearbyInvitationsAdvertiser.stop()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(NearbyInvitationsAdvertiser.stop(), 0, 0);
}

{
  v17 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = (*(*v5 + 120))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Request to stop advertiser", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v11 = *(v0 + 16);
  v12 = async function pointer to AsyncSerialQueue.performAndWaitFor<A>(_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 24) = v13;
  *v13 = v0;
  v13[1] = NearbyInvitationsAdvertiser.stop();
  v14 = *(v0 + 16);

  return AsyncSerialQueue.performAndWaitFor<A>(_:)();
}

{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(NearbyInvitationsAdvertiser.stop(), 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in NearbyInvitationsAdvertiser.stop()()
{
  [*(*(v0 + 16) + 16) invalidate];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NearbyInvitationsAdvertiser.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(28);
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203A666C657328;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 0x747265766461202CLL;
  v4._object = 0xEE00203A72657369;
  String.append(_:)(v4);
  v5 = [v0[2] description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

id NearbyInvitationRangedHost.matches(device:)(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  result = [a1 stableIdentifier];
  if (result)
  {
    v9 = result;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v10 == a2 && v12 == a3)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    return ([a1 nearbyInfoV2InvitationCounter] == a4);
  }

  return result;
}

BOOL static NearbyInvitationRangedHost.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v8)
  {
    return a3 == a6;
  }

  return result;
}

Swift::Int NearbyInvitationRangedHost.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyInvitationRangedHost()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NearbyInvitationRangedHost()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitationRangedHost()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NearbyInvitationRangedHost(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t key path setter for NearbyInvitationsScanner.rangedHosts : NearbyInvitationsScanner(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t FilteredBluetoothScanner.cancellables.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t NearbyInvitationsScanner.ignoringDistance.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

id NearbyInvitationsScanner.rangingSession.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void NearbyInvitationsScanner.rangingSession.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  v4 = a1;
  [v3 invalidate];
}

void (*NearbyInvitationsScanner.rangingSession.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
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
  v5 = *(v1 + 40);
  *(v4 + 24) = v5;
  v6 = v5;
  return NearbyInvitationsScanner.rangingSession.modify;
}

void NearbyInvitationsScanner.rangingSession.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    [v7 invalidate];

    v9 = *v5;
  }

  else
  {
    [v7 invalidate];
  }

  free(v3);
}

uint64_t key path setter for NearbyInvitationsScanner.deviceFoundStream : NearbyInvitationsScanner(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*(**a2 + 280))(v7);
}

uint64_t NearbyInvitationsScanner.deviceFoundStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMd, &_sScS12ContinuationV15BufferingPolicyOySo8CBDeviceC__GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v19[-v13];
  v15 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream;
  swift_beginAccess();
  outlined init with copy of (String, Any)(v1 + v15, v14, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v14, v16);
  }

  outlined destroy of Any?(v14, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v17 + 16))(v12, a1, v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  swift_beginAccess();
  outlined assign with take of AsyncStream<CBDevice>?(v12, v1 + v15, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  return swift_endAccess();
}

uint64_t closure #1 in closure #1 in NearbyInvitationsScanner.deviceFoundStream.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  return (*(*a2 + 304))(v7);
}

uint64_t NearbyInvitationsScanner.deviceFoundStream.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v8 = *(v7 - 8);
  (*(v8 + 32))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream;
  swift_beginAccess();
  outlined assign with take of AsyncStream<CBDevice>?(v6, v1 + v9, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
  return swift_endAccess();
}

void (*NearbyInvitationsScanner.deviceFoundStream.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  NearbyInvitationsScanner.deviceFoundStream.getter(v9);
  return NearbyInvitationsScanner.deviceFoundStream.modify;
}

void NearbyInvitationsScanner.deviceFoundStream.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream;
    swift_beginAccess();
    outlined assign with take of AsyncStream<CBDevice>?(v5, v7 + v8, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream;
    swift_beginAccess();
    outlined assign with take of AsyncStream<CBDevice>?(v5, v7 + v9, &_sScSySo8CBDeviceCGSgMd, &_sScSySo8CBDeviceCGSgMR);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t key path setter for NearbyInvitationsScanner.deviceFoundContinuation : NearbyInvitationsScanner(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of (String, Any)(a1, &v9 - v6, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  return (*(**a2 + 304))(v7);
}

uint64_t NearbyInvitationsScanner.__allocating_init(ignoringDistance:)(char a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  NearbyInvitationsScanner.init(ignoringDistance:)(a1);
  return v5;
}

uint64_t *NearbyInvitationsScanner.init(ignoringDistance:)(char a1)
{
  v3 = *v1;
  v1[2] = &_swiftEmptySetSingleton;
  v1[5] = [objc_allocWithZone(NISession) init];
  v1[8] = 0;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner____lazy_storage___deviceFoundStream;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo8CBDeviceCGMd, &_sScSySo8CBDeviceCGMR);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService24NearbyInvitationsScanner_deviceFoundContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + 32) = a1;
  v1[6] = [objc_allocWithZone(CBDiscovery) init];
  v1[7] = 200;
  v1[3] = [objc_allocWithZone(type metadata accessor for NISessionDelegate()) init];
  swift_weakAssign();
  v8 = v1[6];

  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  [v9 setLabel:v10];

  [v1[6] setBleScanRate:20];
  v11 = v1[6];
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v11;

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a1;
  *(v14 + 32) = v3;
  v17[4] = partial apply for closure #1 in NearbyInvitationsScanner.init(ignoringDistance:);
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
  v17[3] = &block_descriptor;
  v15 = _Block_copy(v17);

  [v13 setDeviceFoundHandler:v15];
  _Block_release(v15);

  return v1;
}

uint64_t closure #1 in NearbyInvitationsScanner.init(ignoringDistance:)(void *a1, uint64_t a2, char a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMd, &_sScS12ContinuationV11YieldResultOySo8CBDeviceC__GMR);
  v87 = *(v7 - 8);
  v8 = *(v87 + 64);
  __chkstk_darwin(v7);
  v86 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v77 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo8CBDeviceC_GMd, &_sScS12ContinuationVySo8CBDeviceC_GMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v77 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v20 = result;
  (*(*result + 296))();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    return outlined destroy of Any?(v13, &_sScS12ContinuationVySo8CBDeviceC_GSgMd, &_sScS12ContinuationVySo8CBDeviceC_GSgMR);
  }

  (*(v15 + 32))(v18, v13, v14);
  if (([a1 nearbyInfoV2Flags] & 4) == 0 && !objc_msgSend(a1, "nearbyInfoV2InvitationCounter"))
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, log);
    v66 = a1;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v66;
      *v70 = v66;
      v71 = v66;
      _os_log_impl(&_mh_execute_header, v67, v68, "%@ not being ingested for ranging since it doesn't have an invitation.", v69, 0xCu);
      outlined destroy of Any?(v70, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    goto LABEL_39;
  }

  if (a3)
  {
LABEL_7:
    v89 = a1;
    v21 = a1;
    v22 = v86;
    AsyncStream.Continuation.yield(_:)();

    (*(v87 + 8))(v22, v7);
    return (*(v15 + 8))(v18, v14);
  }

  v78 = v7;
  v79 = a4;
  v81 = v18;
  v82 = v15;
  v83 = v14;
  v23 = *(*v20 + 152);
  v80 = v20;
  v24 = v23();
  v25 = v24;
  v26 = v24 + 56;
  v27 = 1 << *(v24 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v24 + 56);
  v30 = (v27 + 63) >> 6;
  v31 = 0;

  while (v29)
  {
LABEL_17:
    v33 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v34 = *(v25 + 48) + 24 * (v33 | (v31 << 6));
    v36 = *v34;
    v35 = *(v34 + 8);
    v85 = *(v34 + 16);

    v37 = [a1 stableIdentifier];
    if (!v37)
    {
      goto LABEL_11;
    }

    v38 = v37;
    v39 = a1;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (v36 == v40 && v35 == v42)
    {

      a1 = v39;
      v25 = v84;
LABEL_25:
      v45 = [a1 nearbyInfoV2InvitationCounter];

      if (v85 == v45)
      {

        v15 = v82;
        v14 = v83;
        v18 = v81;
        v7 = v78;
        goto LABEL_7;
      }
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a1 = v39;
      v25 = v84;
      if (v44)
      {
        goto LABEL_25;
      }

LABEL_11:
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v32 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_17;
    }
  }

  if (one-time initialization token for log == -1)
  {
    goto LABEL_28;
  }

LABEL_44:
  swift_once();
LABEL_28:
  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, log);
  v47 = a1;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v88 = v52;
    *v50 = 136315394;
    v89 = v79;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v54 = >> prefix<A>(_:)(&v89, MetatypeMetadata);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v88);

    *(v50 + 4) = v56;
    *(v50 + 12) = 2112;
    *(v50 + 14) = v47;
    *v51 = v47;
    v57 = v47;
    _os_log_impl(&_mh_execute_header, v48, v49, "%s: Attempting to perform ranging on device: %@", v50, 0x16u);
    outlined destroy of Any?(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  v15 = v82;
  v14 = v83;
  v18 = v81;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NIBluetoothSample, NIBluetoothSample_ptr);
  v58 = v47;
  v59 = NIBluetoothSample.init(with:)(v58);
  if (v59)
  {
    v60 = v59;
    v61 = v80;
    v62 = (*(*v80 + 368))();
    v63 = (*(*v61 + 200))(v62);
    v64 = [v63 devicePresenceNotifier];

    [v64 notifyBluetoothSample:v60];
    goto LABEL_40;
  }

  v72 = v58;
  v67 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v67, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412290;
    *(v74 + 4) = v72;
    *v75 = v72;
    v76 = v72;
    _os_log_impl(&_mh_execute_header, v67, v73, "Couldn't create BTSample for device: %@", v74, 0xCu);
    outlined destroy of Any?(v75, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

LABEL_39:

LABEL_40:

  return (*(v15 + 8))(v18, v14);
}

void thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t NearbyInvitationsScanner.startScan()()
{
  *(v1 + 144) = v0;
  return _swift_task_switch(NearbyInvitationsScanner.startScan(), 0, 0);
}

{
  v16 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = *v5;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Scan starting", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v12 = *(v0[18] + 48);
  v0[2] = v0;
  v0[3] = NearbyInvitationsScanner.startScan();
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_42;
  v0[14] = v13;
  [v12 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = NearbyInvitationsScanner.startScan();
  }

  else
  {
    v3 = NearbyInvitationsScanner.startScan();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v15 = v0;
  v2 = v0[18];
  v1 = v0[19];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = *v5;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Scan started", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v12 = v0[1];

  return v12();
}

{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

Swift::Void __swiftcall NearbyInvitationsScanner.stopScan()()
{
  v1 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = *v1;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Scan stopping", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v11 = (*(*v1 + 200))([v1[6] invalidate]);
  [v11 invalidate];

  swift_beginAccess();
  v12 = v1[2];
  v1[2] = &_swiftEmptySetSingleton;

  v13 = v1[3];
  v14 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  swift_beginAccess();
  v15 = *(v13 + v14);
  *(v13 + v14) = &_swiftEmptyDictionarySingleton;
}

id NearbyInvitationsScanner.enableRanging(with:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, log);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = *v2;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    CBScanRateToString(a1);
    v12 = String.init(cString:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: Scan with ranging enabled at %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v2[6];
  [v15 setDiscoveryFlags:{objc_msgSend(v15, "discoveryFlags") | 0x8000000000000000}];
  [v15 setDiscoveryFlags:{objc_msgSend(v15, "discoveryFlags") | 0x10000000000}];

  return [v15 setBleScanRate:a1];
}

Swift::Void __swiftcall NearbyInvitationsScanner.disableRanging()()
{
  v1 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = *v1;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Scan without ranging", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v11 = v1[6];
  [v11 setDiscoveryFlags:{objc_msgSend(v11, "discoveryFlags") & 0x7FFFFFFFFFFFFFFFLL}];
  [v11 setDiscoveryFlags:{objc_msgSend(v11, "discoveryFlags") & 0xFFFFFEFFFFFFFFFFLL}];

  [v11 setBleScanRate:20];
}

Swift::Void __swiftcall NearbyInvitationsScanner.restartRanging()()
{
  v1 = v0;
  v39 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v39);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v34 - v11;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.default);
  swift_retain_n();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v5;
    v18 = v17;
    v35 = swift_slowAlloc();
    v41 = v1;
    aBlock[0] = v35;
    *v18 = 136315394;
    type metadata accessor for NearbyInvitationsScanner(0);
    v37 = v6;

    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2048;
    v22 = *(v1 + 56);

    *(v18 + 14) = v22;
    v6 = v37;

    _os_log_impl(&_mh_execute_header, v15, v16, "%s Scheduling NISession recreation in %ldms", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);

    v5 = v36;
  }

  else
  {
  }

  aBlock[4] = partial apply for closure #1 in NearbyInvitationsScanner.restartRanging();
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_46;
  _Block_copy(aBlock);
  v41 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = type metadata accessor for DispatchWorkItem();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = DispatchWorkItem.init(flags:block:)();

  v27 = *(v1 + 64);
  *(v1 + 64) = v26;
  if (v27)
  {
    swift_retain_n();
    dispatch thunk of DispatchWorkItem.cancel()();
  }

  else
  {
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  v29 = v38;
  static DispatchTime.now()();
  *v5 = *(v1 + 56);
  v30 = v39;
  (*(v2 + 104))(v5, enum case for DispatchTimeInterval.milliseconds(_:), v39);
  v31 = v40;
  + infix(_:_:)();
  (*(v2 + 8))(v5, v30);
  v32 = *(v7 + 8);
  v32(v29, v6);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v32(v31, v6);
  v33 = *(v1 + 56);
  if (v33 <= 9999)
  {
    if (v33 < 0xC000000000000000)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 56) = 2 * v33;
    }
  }
}

uint64_t closure #1 in NearbyInvitationsScanner.restartRanging()(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    type metadata accessor for NearbyInvitationsScanner(0);

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s NISession recreated", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = (*(*a1 + 208))([objc_allocWithZone(NISession) init]);
  return (*(*a1 + 376))(v10);
}

Swift::Void __swiftcall NearbyInvitationsScanner.runSession()()
{
  v1 = v0;
  v2 = [v0[6] discoveredDevices];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_38:

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, log);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Tried to run session with no devices that have an invitation. Disabling ranging.", v52, 2u);
    }

    lazy protocol witness table accessor for type NearbyInvitationsScanner.Errors and conformance NearbyInvitationsScanner.Errors();
    swift_allocError();
    swift_willThrow();
    goto LABEL_43;
  }

LABEL_37:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_3:
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = v3 + 32;
  v64 = v1;
  v60 = v3 & 0xC000000000000001;
  v61 = v4;
  v59 = v3 & 0xFFFFFFFFFFFFFF8;
  v63 = v3 + 32;
  while (1)
  {
    if (v6)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v9 = *(v8 + 8 * v5);
    }

    v10 = v9;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_48;
    }

    if (([v9 nearbyInfoV2Flags] & 4) != 0 || objc_msgSend(v10, "nearbyInfoV2InvitationCounter"))
    {
      break;
    }

LABEL_30:
    v8 = v63;
    if (v5 == v4)
    {
      goto LABEL_38;
    }
  }

  v62 = v5;
  v12 = (*(*v1 + 19))();
  v13 = v12;
  v14 = v12 + 56;
  v15 = 1 << *(v12 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v12 + 56);
  v3 = (v15 + 63) >> 6;

  v18 = 0;
  while (v17)
  {
LABEL_20:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = (*(v13 + 48) + 24 * (v20 | (v18 << 6)));
    v22 = v21[1];
    v65 = *v21;

    v23 = [v10 stableIdentifier];
    if (v23)
    {
      v24 = v23;
      v1 = v10;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (v65 == v25 && v22 == v27)
      {

        goto LABEL_29;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v10 = v1;
      if (v29)
      {

LABEL_29:

        v1 = v64;
        v4 = v61;
        v5 = v62;
        v7 = v59;
        v6 = v60;
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v19 >= v3)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v18;
    if (v17)
    {
      v18 = v19;
      goto LABEL_20;
    }
  }

  v30 = objc_allocWithZone(NIRegionPredicate);
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 initWithName:v31 devicePresencePreset:3];

  v33 = objc_allocWithZone(NIRegionPredicate);
  v34 = String._bridgeToObjectiveC()();
  v35 = [v33 initWithName:v34 devicePresencePreset:5];

  v36 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v66 = 0;
  v37 = v32;
  v38 = v35;
  v39 = [v36 initWithInnerBoundary:v37 outerBoundary:v38 error:&v66];
  if (v39)
  {
    v40 = v39;
    v41 = v66;

    [v40 setAllowedDevices:4];
    v42 = [v40 setMonitoringOption:1];
    v43 = *(*v64 + 25);
    v44 = (v43)(v42);
    [v44 setDelegate:v64[3]];

    v45 = v43();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v46 = static OS_dispatch_queue.main.getter();
    [v45 setDelegateQueue:v46];

    v47 = v43();
    [v47 runWithConfiguration:v40];

    (*(*v64 + 43))(60);
    return;
  }

  v48 = v66;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v1 = v64;
LABEL_43:
  if (one-time initialization token for log != -1)
  {
LABEL_49:
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, log);
  swift_errorRetain();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    swift_errorRetain();
    v58 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 4) = v58;
    *v57 = v58;
    _os_log_impl(&_mh_execute_header, v54, v55, "NIDevicePresenceConfiguration failed with %@", v56, 0xCu);
    outlined destroy of Any?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*(*v1 + 44))();
}