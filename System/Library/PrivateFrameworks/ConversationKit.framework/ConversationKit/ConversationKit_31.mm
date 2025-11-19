id TUHandle.idsDestination.getter()
{
  result = TUCopyIDSCanonicalAddressForHandle();
  if (result)
  {
    v1 = result;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ClarityUIOutgoingCallActionProvider.faceTimeVideoAvailability(handle:)(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC15ConversationKit35ClarityUIOutgoingCallActionProvider_lookupManager);
  v5 = TUHandle.idsDestination.getter();
  v6 = MEMORY[0x1BFB209B0](v5);

  v7 = [v4 *a2];

  return v7;
}

uint64_t ClarityUIOutgoingCallActionProvider.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit29ObservableNotificationHandler___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ClarityUIOutgoingCallActionProvider.__deallocating_deinit()
{
  ClarityUIOutgoingCallActionProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 48))(a1, a4, a5);
  if (!v5)
  {
    v6 = TUHandle.idsDestination.getter();
    v8 = v7;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v10, v6, v8);
    swift_endAccess();
  }

  return v5;
}

void _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D852LL7contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t (*a6)(void *)@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 24))(v11, v12);
  v62 = v13;
  if (a5)
  {
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v16 = (*(v15 + 16))(v14, v15);
    specialized Array.append<A>(contentsOf:)(v16);
    v13 = v62;
  }

  v17 = specialized Array.count.getter(v13);
  v53 = 0;
  v18 = 0;
  v19 = v13 & 0xC000000000000001;
  v20 = v13 & 0xFFFFFFFFFFFFFF8;
  v57 = v13 & 0xFFFFFFFFFFFFFF8;
  v58 = v13;
  while (1)
  {
    if (v17 == v18)
    {

      if ((v53 & 1) == 0)
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v38 = 0;
        v39 = 0;
LABEL_29:
        *a8 = v42;
        a8[1] = v43;
        a8[2] = v44;
        a8[3] = v38;
        a8[4] = v39;
        return;
      }

      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = a2 & 1;
LABEL_28:
      v60 = 0x2D746361746E6F43;
      v61 = 0xE800000000000000;
      v47 = a1[3];
      v48 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v47);
      v49 = (*(v48 + 8))(v47, v48);
      MEMORY[0x1BFB20B10](v49);

      MEMORY[0x1BFB20B10](45, 0xE100000000000000);
      v50 = String.init<A>(describing:)();
      MEMORY[0x1BFB20B10](v50);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v38);
      v42 = v60;
      v43 = v61;
      v44 = v41;
      goto LABEL_29;
    }

    if (v19)
    {
      v21 = MEMORY[0x1BFB22010](v18, v13);
    }

    else
    {
      if (v18 >= *(v20 + 16))
      {
        goto LABEL_31;
      }

      v21 = *(v13 + 8 * v18 + 32);
    }

    v22 = v21;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (!a6)
    {
      goto LABEL_27;
    }

    v23 = a6(v22);
    if (v23 == 2)
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);

      goto LABEL_20;
    }

    if (v23)
    {
      if (v23 == 1)
      {
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);
LABEL_27:

        v39 = swift_allocObject();
        *(v39 + 16) = a4;
        *(v39 + 24) = v22;
        v41 = a2 & 1;
        *(v39 + 32) = v41;
        *(v39 + 40) = a3;
        v40 = v22;
        v45 = a4;
        v46 = a3;

        v38 = closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)partial apply;
        goto LABEL_28;
      }

      if (one-time initialization token for clarityUI != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, &static Log.clarityUI);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v60 = v28;
        *v27 = 136315138;
        type metadata accessor for FZHandleIDStatus(0);
        v29 = String.init<A>(describing:)();
        log = v25;
        v31 = v19;
        v32 = a6;
        v33 = a7;
        v34 = v17;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v60);

        *(v27 + 4) = v35;
        v17 = v34;
        a7 = v33;
        a6 = v32;
        v19 = v31;
        _os_log_impl(&dword_1BBC58000, log, v26, "Unhandled FaceTime availability status: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v36 = v28;
        v20 = v57;
        MEMORY[0x1BFB23DF0](v36, -1, -1);
        v37 = v27;
        v13 = v58;
        MEMORY[0x1BFB23DF0](v37, -1, -1);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);
      }

      else
      {
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);
      }

LABEL_20:
      ++v18;
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);

      v53 = 1;
      ++v18;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t (*a6)(void *)@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 24))(v11, v12);
  v63 = v13;
  if (a5)
  {
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v16 = (*(v15 + 16))(v14, v15);
    specialized Array.append<A>(contentsOf:)(v16);
    v13 = v63;
  }

  v17 = specialized Array.count.getter(v13);
  v54 = 0;
  v18 = 0;
  v19 = v13 & 0xC000000000000001;
  v20 = v13 & 0xFFFFFFFFFFFFFF8;
  v58 = v13 & 0xFFFFFFFFFFFFFF8;
  v59 = v13;
  while (1)
  {
    if (v17 == v18)
    {

      if (v54)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v41 = a2 & 1;
        goto LABEL_28;
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      v38 = 0;
      v39 = 0;
      v45 = a8;
LABEL_29:
      *v45 = v42;
      v45[1] = v43;
      v45[2] = v44;
      v45[3] = v38;
      v45[4] = v39;
      return;
    }

    if (v19)
    {
      v21 = MEMORY[0x1BFB22010](v18, v13);
    }

    else
    {
      if (v18 >= *(v20 + 16))
      {
        goto LABEL_31;
      }

      v21 = *(v13 + 8 * v18 + 32);
    }

    v22 = v21;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (!a6)
    {
      goto LABEL_27;
    }

    v23 = a6(v22);
    if (v23 == 2)
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);

      goto LABEL_20;
    }

    if (v23 == 1)
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);
LABEL_27:

      v39 = swift_allocObject();
      *(v39 + 16) = a4;
      *(v39 + 24) = v22;
      v41 = a2 & 1;
      *(v39 + 32) = v41;
      *(v39 + 40) = a3;
      v40 = v22;
      v46 = a4;
      v47 = a3;

      v38 = partial apply for closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:);
LABEL_28:
      v45 = a8;
      v61 = 0x2D746361746E6F43;
      v62 = 0xE800000000000000;
      v48 = a1[3];
      v49 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v48);
      v50 = (*(v49 + 8))(v48, v49);
      MEMORY[0x1BFB20B10](v50);

      MEMORY[0x1BFB20B10](45, 0xE100000000000000);
      v51 = String.init<A>(describing:)();
      MEMORY[0x1BFB20B10](v51);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v38);
      v42 = v61;
      v43 = v62;
      v44 = v41;
      goto LABEL_29;
    }

    if (v23)
    {
      if (one-time initialization token for clarityUI != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, &static Log.clarityUI);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v61 = v28;
        *v27 = 136315138;
        type metadata accessor for FZHandleIDStatus(0);
        v29 = String.init<A>(describing:)();
        log = v25;
        v31 = v19;
        v32 = a6;
        v33 = a7;
        v34 = v17;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v61);

        *(v27 + 4) = v35;
        v17 = v34;
        a7 = v33;
        a6 = v32;
        v19 = v31;
        _os_log_impl(&dword_1BBC58000, log, v26, "Unhandled FaceTime availability status: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v36 = v28;
        v20 = v58;
        MEMORY[0x1BFB23DF0](v36, -1, -1);
        v37 = v27;
        v13 = v59;
        MEMORY[0x1BFB23DF0](v37, -1, -1);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);
      }

      else
      {
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);
      }

LABEL_20:
      ++v18;
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a6);

      v54 = 1;
      ++v18;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    specialized Set._Variant.insert(_:)(&v7, v6, v5);

    v4 += 2;
  }
}

{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      specialized Set._Variant.insert(_:)(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t specialized closure #1 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = a4();
  if (!v4)
  {
    v5 = TUHandle.idsDestination.getter();
    v7 = v6;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v9, v5, v7);
    swift_endAccess();
  }

  return v4;
}

uint64_t closure #2 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 40))(a1, a4, a5);
  if (!v5)
  {
    v6 = TUHandle.idsDestination.getter();
    v8 = v7;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v10, v6, v8);
    swift_endAccess();
  }

  return v5;
}

void closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  [v7 setHandle_];
  [v7 setVideo_];
  [v7 setOriginatingUIType_];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  v12[4] = partial apply for closure #1 in closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:);
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v12[3] = &block_descriptor_39;
  v9 = _Block_copy(v12);
  v10 = v7;
  v11 = a2;

  [a4 launchAppForDialRequest:v10 completion:v9];
  _Block_release(v9);
}

void closure #1 in closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, &static Log.clarityUI);
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 138412802;
      *(v13 + 4) = v9;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v9;
      v14[1] = v10;
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v15 = v9;
      v16 = v10;
      v17 = Error.localizedDescription.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

      *(v13 + 24) = v19;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Unable to launch app for dial request: %@, handle: %@, error: %s", v13, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFB23DF0](v20, -1, -1);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ClarityUIContact.emailAddressHandles.getter(SEL *a1)
{
  v2 = [*v1 *a1];
  type metadata accessor for TUHandle();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler()
{
  result = lazy protocol witness table cache variable for type ObservableNotificationHandler and conformance ObservableNotificationHandler;
  if (!lazy protocol witness table cache variable for type ObservableNotificationHandler and conformance ObservableNotificationHandler)
  {
    type metadata accessor for ObservableNotificationHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObservableNotificationHandler and conformance ObservableNotificationHandler);
  }

  return result;
}

uint64_t specialized ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v11 = MEMORY[0x1E69E7CD0];
  v74 = MEMORY[0x1E69E7CD0];
  v12 = objc_opt_self();
  v67 = a2;
  v68 = a4;
  v65 = a3;
  v66 = a1;
  v60 = a5;
  v70 = v12;
  if ([v12 isDirectFaceTimeAudioCallingCurrentlyAvailable])
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = a5;
    *(v14 + 24) = v13;

    v15 = [v10 faceTimeProvider];

    _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D8527contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5Tf4ennnnn_nAA0C9UIContactV_TB5(a1, a2, a3, a4, 0, v10, v15, 1, v75, partial apply for specialized closure #1 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:), v14);
    v17 = v75[0];
    v16 = v75[1];
    v18 = v75[2];
    v19 = v75[3];
    v20 = v75[4];

    if (v16)
    {
      if (v19)
      {
        v21 = v19;

        outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v19, v20);

        v72[0] = v17;
        v72[1] = v16;
        outlined destroy of String(v72);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v19);
      }

      else
      {
        swift_beginAccess();
        outlined init with copy of ClarityUIOutgoingCallAction?(v75, &v76);

        specialized Set.formUnion<A>(_:)(v24);

        v80[0] = v17;
        v80[1] = v16;
        outlined destroy of String(v80);

        v21 = 0;
      }

      v22 = v18;
    }

    else
    {

      v22 = v18;
      v21 = v19;
    }

    v23 = &selRef_fillRule;
  }

  else
  {
    v16 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v23 = &selRef_fillRule;
    v17 = 0;
  }

  if (![v12 isDirectTelephonyCallingCurrentlyAvailable])
  {
LABEL_19:
    if (!v16)
    {
      v42 = MEMORY[0x1E69E7CC0];
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (v16)
  {

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v21, v20);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v21);
    if (v21)
    {
LABEL_20:

      v39 = v21;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v21, v20);
      v40 = v22;
      goto LABEL_21;
    }
  }

  v61 = v21;
  v63 = v22;
  v58 = v10;
  v25 = [v10 telephonyProvider];
  v26 = v66;
  v27 = v67;

  v28 = [v26 tuHandlesForPhoneNumbers];
  type metadata accessor for TUHandle();
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = specialized Array.count.getter(v29);
  if (!result)
  {

    v21 = v61;
    v22 = v63;
    v12 = v70;
    v10 = v58;
    goto LABEL_19;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1BFB22010](0, v29);
    v31 = v27;
    v32 = v26;
    goto LABEL_17;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = v27;
    v32 = v26;
    v33 = *(v29 + 32);
LABEL_17:
    v10 = v58;

    v34 = swift_allocObject();
    *(v34 + 16) = v25;
    *(v34 + 24) = v33;
    *(v34 + 32) = 0;
    *(v34 + 40) = v58;
    v76 = 0x2D746361746E6F43;
    *&v77 = 0xE800000000000000;
    v35 = v33;
    v36 = v25;
    v37 = v58;

    MEMORY[0x1BFB20B10](v65, v68);

    MEMORY[0x1BFB20B10](45, 0xE100000000000000);
    v73[0] = 0;
    v38 = String.init<A>(describing:)();
    MEMORY[0x1BFB20B10](v38);

    outlined consume of ClarityUIOutgoingCallAction?(v17, v16, v63, v61);
    v17 = v76;
    v16 = v77;

    v39 = closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)partial apply;
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)partial apply, v34);
    v22 = 0;
    v40 = 0;
    v20 = v34;
LABEL_21:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v42 = v41;
    v43 = *(v41 + 16);
    if (v43 >= *(v41 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = v55;
    }

    *(v42 + 16) = v43 + 1;
    v44 = v42 + 40 * v43;
    *(v44 + 32) = v17;
    *(v44 + 40) = v16;
    *(v44 + 48) = v40 & 1;
    v21 = v39;
    *(v44 + 56) = v39;
    *(v44 + 64) = v20;
    v23 = &selRef_fillRule;
    v12 = v70;
LABEL_25:
    if ([v12 isDirectFaceTimeVideoCallingCurrentlyAvailable])
    {
      v71 = v17;
      v62 = v21;
      v64 = v22;
      v45 = swift_allocObject();
      *(v45 + 16) = MEMORY[0x1E69E7CD0];
      v46 = swift_allocObject();
      *(v46 + 16) = v60;
      *(v46 + 24) = v45;

      v47 = [v10 v23[182]];

      _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D8527contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5Tf4ennnnn_nAA0C9UIContactV_TB5(v66, v67, v65, v68, 1, v10, v47, 1, &v76, partial apply for specialized closure #2 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:), v46);

      if (v77)
      {
        v69 = v77;
        v59 = v10;
        v48 = v76;
        v50 = v78;
        v49 = v79;
        v81[0] = v76;
        v81[1] = v77;
        outlined init with copy of String(v81, v73);
        outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v50, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v42 = v56;
        }

        v51 = *(v42 + 16);
        v52 = v69;
        if (v51 >= *(v42 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v52 = v69;
          v42 = v57;
        }

        *(v42 + 16) = v51 + 1;
        v53 = v42 + 40 * v51;
        *(v53 + 32) = v48;
        *(v53 + 40) = v52;
        *(v53 + 56) = v50;
        *(v53 + 64) = v49;
        if (v50)
        {
          outlined consume of ClarityUIOutgoingCallAction?(v71, v16, v64, v62);

          outlined destroy of String(v81);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v50);

          return v42;
        }

        swift_beginAccess();

        specialized Set.formUnion<A>(_:)(v54);

        outlined destroy of String(v81);

        outlined consume of ClarityUIOutgoingCallAction?(v71, v16, v64, v62);
      }

      else
      {
        outlined consume of ClarityUIOutgoingCallAction?(v71, v16, v64, v62);
      }

      return v42;
    }

    outlined consume of ClarityUIOutgoingCallAction?(v17, v16, v22, v21);

    return v42;
  }

  __break(1u);
  return result;
}

void outlined consume of ClarityUIOutgoingCallAction?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
  }
}

uint64_t partial apply for closure #2 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void))
{
  v3 = *(*(v2 + 16) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  return a2(a1, v2 + v4, *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined init with copy of ClarityUIOutgoingCallAction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27ClarityUIOutgoingCallActionVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ClarityUIOutgoingCallActionProvider()
{
  result = type metadata singleton initialization cache for ClarityUIOutgoingCallActionProvider;
  if (!type metadata singleton initialization cache for ClarityUIOutgoingCallActionProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D852LL7contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5Tf4ennnnn_nAA0C9UIContactV_TB5(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X5>, void *a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t (*a10)(void *), uint64_t a11)
{
  v16 = a1;
  v57 = a2;
  v59 = a4;

  v17 = [v16 tuHandlesForPhoneNumbers];
  type metadata accessor for TUHandle();
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = v18;
  if (a8)
  {
    v19 = [v16 tuHandlesForEmailAddresses];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v20);
    v18 = v66;
  }

  v58 = v16;
  v21 = specialized Array.count.getter(v18);
  v54 = 0;
  v22 = 0;
  v23 = v18 & 0xC000000000000001;
  v24 = v18 & 0xFFFFFFFFFFFFFF8;
  v61 = v18;
  v63 = v18 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v21 == v22)
    {

      if ((v54 & 1) == 0)
      {

        v45 = 0;
        v46 = 0;
        v47 = 0;
        v41 = 0;
        v42 = 0;
LABEL_29:
        *a9 = v45;
        a9[1] = v46;
        a9[2] = v47;
        a9[3] = v41;
        a9[4] = v42;
        return;
      }

      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = a5 & 1;
LABEL_28:
      v64 = 0x2D746361746E6F43;
      v65 = 0xE800000000000000;

      MEMORY[0x1BFB20B10](a3, v59);

      MEMORY[0x1BFB20B10](45, 0xE100000000000000);
      v51 = String.init<A>(describing:)();
      MEMORY[0x1BFB20B10](v51);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v41);
      v45 = v64;
      v46 = v65;
      v47 = v44;
      goto LABEL_29;
    }

    if (v23)
    {
      v25 = MEMORY[0x1BFB22010](v22, v18);
    }

    else
    {
      if (v22 >= *(v24 + 16))
      {
        goto LABEL_31;
      }

      v25 = *(v18 + 8 * v22 + 32);
    }

    v26 = v25;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (!a10)
    {
      goto LABEL_27;
    }

    v27 = a10(v26);
    if (v27 == 2)
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a10);

      goto LABEL_20;
    }

    if (v27)
    {
      if (v27 == 1)
      {
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a10);
LABEL_27:

        v42 = swift_allocObject();
        *(v42 + 16) = a7;
        *(v42 + 24) = v26;
        v48 = v26;
        v44 = a5 & 1;
        *(v42 + 32) = v44;
        *(v42 + 40) = a6;
        v43 = v48;
        v49 = a7;
        v50 = a6;

        v41 = closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)partial apply;
        goto LABEL_28;
      }

      if (one-time initialization token for clarityUI != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, &static Log.clarityUI);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        log = v29;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v64 = v32;
        *v31 = 136315138;
        type metadata accessor for FZHandleIDStatus(0);
        v33 = String.init<A>(describing:)();
        v35 = v23;
        v36 = a10;
        v37 = a11;
        v38 = v21;
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v64);

        *(v31 + 4) = v39;
        v21 = v38;
        a11 = v37;
        a10 = v36;
        v23 = v35;
        _os_log_impl(&dword_1BBC58000, log, v30, "Unhandled FaceTime availability status: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        v40 = v32;
        v18 = v61;
        MEMORY[0x1BFB23DF0](v40, -1, -1);
        MEMORY[0x1BFB23DF0](v31, -1, -1);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a10);
      }

      else
      {
        outlined consume of (@escaping @callee_guaranteed () -> ())?(a10);
      }

      v24 = v63;
LABEL_20:
      ++v22;
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed () -> ())?(a10);

      v54 = 1;
      ++v22;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t objectdestroy_22Tm()
{

  return swift_deallocObject();
}

uint64_t one-time initialization function for htmlFragmentAdditions()
{
  v0 = [objc_opt_self() conversationKit];
  v6._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC4F97A0;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v6);

  MEMORY[0x1BFB20B10](v4._countAndFlagsBits, v4._object);

  result = MEMORY[0x1BFB20B10](1047539516, 0xE400000000000000);
  static LinkShareItemHTMLTextGenerator.htmlFragmentAdditions = 4091964;
  unk_1EBCAE390 = 0xE300000000000000;
  return result;
}

uint64_t static LinkShareItemHTMLTextGenerator.htmlFragment(forLinkShareItem:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = v25 - v11;
  v13 = [a1 tuConversationLink];
  v14 = [v13 URL];

  if (!v14)
  {
    return 0;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v12, v8, v2);
  type metadata accessor for LPLinkHTMLTextGenerator();
  (*(v3 + 16))(v5, v12, v2);
  v15 = LPLinkHTMLTextGenerator.__allocating_init(url:)(v5);
  v16 = TULinkShareItem.linkMetadata.getter();
  [v15 setMetadata_];

  if (one-time initialization token for htmlFragmentAdditions != -1)
  {
    swift_once();
  }

  v18 = static LinkShareItemHTMLTextGenerator.htmlFragmentAdditions;
  v17 = unk_1EBCAE390;
  v19 = [v15 HTMLFragmentString];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v25[0] = v18;
  v25[1] = v17;

  MEMORY[0x1BFB20B10](v20, v22);

  v23 = v25[0];
  (*(v3 + 8))(v12, v2);
  return v23;
}

unint64_t type metadata accessor for LPLinkHTMLTextGenerator()
{
  result = lazy cache variable for type metadata for LPLinkHTMLTextGenerator;
  if (!lazy cache variable for type metadata for LPLinkHTMLTextGenerator)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LPLinkHTMLTextGenerator);
  }

  return result;
}

id LPLinkHTMLTextGenerator.__allocating_init(url:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL_];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t *OngoingTelephonyControlsView.Constants.statusTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_2_92();
    swift_once();
  }

  return &static OngoingTelephonyControlsView.Constants.statusTextColor;
}

uint64_t *OngoingTelephonyControlsView.Constants.durationTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for durationTextColor != -1)
  {
    OUTLINED_FUNCTION_5_69();
  }

  return &static OngoingTelephonyControlsView.Constants.durationTextColor;
}

char *OngoingTelephonyControlsView.init(recipe:controlsManager:menuHostViewController:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v78 = a4;
  v80 = a3;
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView] = 0;
  v11 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel;
  type metadata accessor for UILabel();
  v12 = objc_opt_self();
  v13 = [v12 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v83.value.super.isa = [objc_opt_self() whiteColor];
  UILabel.init(font:textColor:)(v14, v13, v83);
  v79 = v11;
  *&v4[v11] = v15;
  v16 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_secondaryLabel;
  v17 = [v12 monospacedDigitSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB980]];
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_2_92();
    swift_once();
  }

  v18 = static OngoingTelephonyControlsView.Constants.statusTextColor;
  v19 = static OngoingTelephonyControlsView.Constants.statusTextColor;
  v84.value.super.isa = v18;
  UILabel.init(font:textColor:)(v20, v17, v84);
  *&v4[v16] = v21;
  v75 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_context;
  v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_context] = 1;
  *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_cnkContentAlpha] = 0x3FF0000000000000;
  outlined init with copy of ConversationControlsRecipe(a1, &v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_recipe]);
  *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_controlsManager] = a2;
  swift_storeEnumTagMultiPayload();
  v22 = one-time initialization token for conversationKit;
  v23 = a2;
  v76 = a1;
  v77 = v16;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = xmmword_1EDDCCEE8;
  v74.super.isa = static LocalizationSource.conversationKit;
  v25 = *(&xmmword_1EDDCCEE8 + 1);
  v85._object = 0xE000000000000000;
  v26._object = 0x80000001BC4F3040;
  v26._countAndFlagsBits = 0xD000000000000015;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v85._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v27, v85);
  OUTLINED_FUNCTION_25_7();
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v30 = v29;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  v31 = v30;
  outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(v28._countAndFlagsBits, v28._object, v31);

  outlined destroy of ConversationControlsAction(v10, type metadata accessor for ConversationControlsAction);
  *&v5[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_changeRouteButton] = v31;
  static ConversationControlsAction.rejectCall(controlsManager:)(v23, v10);
  v86._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0x5F474E41485F5841;
  v32._object = 0xEA00000000005055;
  v33.value._countAndFlagsBits = v24;
  v33.value._object = v25;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v74, v34, v86);
  OUTLINED_FUNCTION_25_7();
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v37 = v36;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v82, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  v38 = v37;
  outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(v35._countAndFlagsBits, v35._object, v38);

  outlined destroy of ConversationControlsAction(v10, type metadata accessor for ConversationControlsAction);
  *&v5[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_hangUpButton] = v38;
  v39 = v76;
  [*&v5[v79] setAttributedText_];
  type metadata accessor for BrandedIconView();
  v40 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x2A0);
  v41 = v40();
  *&v5[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_brandedIconView] = BrandedIconView.__allocating_init(telephonyCall:)(v41, v42);
  v43 = type metadata accessor for DurationLabelController();
  v44 = v40();
  v46 = v45;
  ObjectType = swift_getObjectType();
  v48 = *&v5[v77];
  v49 = one-time initialization token for durationTextColor;
  swift_unknownObjectRetain();
  v50 = v48;
  if (v49 != -1)
  {
    OUTLINED_FUNCTION_5_69();
  }

  v51 = static OngoingTelephonyControlsView.Constants.durationTextColor;
  v82[0] = v44;
  v52 = *(v46 + 8);
  v53 = static OngoingTelephonyControlsView.Constants.durationTextColor;
  v54 = specialized DurationLabelController.__allocating_init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)(v82, v50, v51, 0, 0, 0, v43, ObjectType, v52);
  swift_unknownObjectRelease();
  *&v5[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_durationController] = v54;
  v55 = *(*v54 + 248);

  v55(v56);

  v57 = type metadata accessor for OngoingTelephonyControlsView();
  v81.receiver = v5;
  v81.super_class = v57;
  v58 = objc_msgSendSuper2(&v81, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  OngoingTelephonyControlsView.updateAvatarView()();
  v59 = OUTLINED_FUNCTION_26_4();
  [v59 v60];
  v61 = OUTLINED_FUNCTION_26_4();
  [v61 v62];
  v63 = OUTLINED_FUNCTION_26_4();
  [v63 v64];
  v65 = OUTLINED_FUNCTION_26_4();
  [v65 v66];
  v67 = *&v58[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_brandedIconView];
  if (v67)
  {
    v68 = v67;
    v69 = OUTLINED_FUNCTION_26_4();
    [v69 v70];
  }

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v39, v71);
  return v58;
}

id OngoingTelephonyControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void OngoingTelephonyControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel;
  type metadata accessor for UILabel();
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:16.67 weight:*MEMORY[0x1E69DB970]];
  v12.value.super.isa = [objc_opt_self() whiteColor];
  UILabel.init(font:textColor:)(v4, v3, v12);
  *(v0 + v1) = v5;
  v6 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_secondaryLabel;
  v7 = [v2 monospacedDigitSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB980]];
  if (one-time initialization token for statusTextColor != -1)
  {
    OUTLINED_FUNCTION_2_92();
    swift_once();
  }

  v8 = static OngoingTelephonyControlsView.Constants.statusTextColor;
  v9 = static OngoingTelephonyControlsView.Constants.statusTextColor;
  v13.value.super.isa = v8;
  UILabel.init(font:textColor:)(v10, v7, v13);
  *(v0 + v6) = v11;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_context) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_cnkContentAlpha) = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id OngoingTelephonyControlsView.cnkContentAlpha.didset()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView];
  if (v1)
  {
    v2 = v1;
    [v0 alpha];
    [v2 setAlpha_];
  }

  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_secondaryLabel];
  [v0 alpha];
  [v3 setAlpha_];
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel];
  [v0 alpha];
  [v4 setAlpha_];
  v5 = *&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_changeRouteButton];
  [v0 alpha];
  [v5 setAlpha_];
  v6 = *&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_hangUpButton];
  [v0 alpha];

  return [v6 setAlpha_];
}

double OngoingTelephonyControlsView.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_cnkContentAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

id OngoingTelephonyControlsView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_cnkContentAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return OngoingTelephonyControlsView.cnkContentAlpha.didset();
}

uint64_t (*OngoingTelephonyControlsView.cnkContentAlpha.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OngoingTelephonyControlsView.cnkContentAlpha.modify;
}

uint64_t key path setter for OngoingTelephonyControlsView.recipe : OngoingTelephonyControlsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xE8))(v6);
}

id OngoingTelephonyControlsView.recipe.didset()
{
  v1 = v0;
  swift_getObjectType();
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44[0] = v6;
    *v5 = 136446210;
    v7 = _typeName(_:qualified:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v44);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1BBC58000, v3, v4, "[%{public}s.recipe.didSet] Updating recipe on existing instance may not result in the expected experience.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v10 = &v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_recipe];
  swift_beginAccess();
  outlined init with copy of ConversationControlsType(v10, v44);
  v40 = 6;
  v41 = 0u;
  v42 = 0u;
  v43 = 7;
  v11 = static ConversationControlsType.== infix(_:_:)(v44, &v40);
  outlined destroy of ConversationControlsType(&v40);
  outlined destroy of ConversationControlsType(v44);
  if ((v11 & 1) == 0)
  {
    outlined init with copy of ConversationControlsType(v10, v44);
    v40 = 8;
    v41 = 0u;
    v42 = 0u;
    v43 = 7;
    v12 = static ConversationControlsType.== infix(_:_:)(v44, &v40);
    outlined destroy of ConversationControlsType(&v40);
    outlined destroy of ConversationControlsType(v44);
    if ((v12 & 1) == 0)
    {
      v13 = v0;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v40 = v17;
        *v16 = 136446466;
        v18 = _typeName(_:qualified:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v40);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        outlined init with copy of ConversationControlsType(v10, v44);
        v21 = specialized >> prefix<A>(_:)(v44);
        v23 = v22;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s15ConversationKit0A12ControlsTypeOSgMd);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v40);

        *(v16 + 14) = v24;
        _os_log_impl(&dword_1BBC58000, v14, v15, "[%{public}s.recipe.didSet] Applied invalid recipe type %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v17, -1, -1);
        MEMORY[0x1BFB23DF0](v16, -1, -1);
      }
    }
  }

  if (specialized Array.count.getter(*(v10 + 88)))
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44[0] = v39;
      *v27 = 136446210;
      v28 = _typeName(_:qualified:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v44);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1BBC58000, v25, v26, "[%{public}s.recipe.didSet] Ignoring recipe subtitles which is currently unsupported per design.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1BFB23DF0](v39, -1, -1);
      MEMORY[0x1BFB23DF0](v27, -1, -1);
    }
  }

  if (*(v10 + *(type metadata accessor for ConversationControlsRecipe() + 40)))
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v33 = 136446210;
      v35 = _typeName(_:qualified:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v44);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1BBC58000, v31, v32, "[%{public}s.recipe.didSet] Ignoring recipe subtitleLeadingBadge which is unsupported per design", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }
  }

  [*&v1[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel] setAttributedText_];
  OngoingTelephonyControlsView.updateAvatarView()();
  return [v1 setNeedsLayout];
}

uint64_t OngoingTelephonyControlsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t OngoingTelephonyControlsView.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  OngoingTelephonyControlsView.recipe.didset();
  OUTLINED_FUNCTION_1_11();
  return outlined destroy of ConversationControlsAction(a1, v4);
}

uint64_t (*OngoingTelephonyControlsView.recipe.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OngoingTelephonyControlsView.recipe.modify;
}

uint64_t OngoingTelephonyControlsView.cnkContentAlpha.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

Swift::Void __swiftcall OngoingTelephonyControlsView.layoutSubviews()()
{
  v4 = v0;
  swift_getObjectType();
  v152.receiver = v0;
  v152.super_class = type metadata accessor for OngoingTelephonyControlsView();
  objc_msgSendSuper2(&v152, sel_layoutSubviews);
  [v0 bounds];
  v5 = (CGRectGetHeight(v153) + -50.0) * 0.5;
  v136 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView;
  v6 = 50.0;
  [*&v0[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView] setFrame_];
  if (one-time initialization token for conversationControls != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_0_0();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v9))
  {
    OUTLINED_FUNCTION_30_1();
    v151 = OUTLINED_FUNCTION_16_8();
    *v1 = 136446466;
    v10 = OUTLINED_FUNCTION_18_35();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v151);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v149[0] = 0x4030000000000000;
    *&v149[1] = v5;
    v150 = vdupq_n_s64(0x4049000000000000uLL);
    type metadata accessor for CGRect(0);
    v12 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v151);
    OUTLINED_FUNCTION_17_2();
    *(v1 + 14) = &selRef_isRecordingAllowed;
    _os_log_impl(&dword_1BBC58000, v8, v9, "[%{public}s][layout] leadingFrame is %s", v1, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_24_8();
  CGRectGetWidth(v154);
  OUTLINED_FUNCTION_10_47();
  CGRectGetHeight(v155);
  v133 = *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_hangUpButton];
  v14 = OUTLINED_FUNCTION_21_29();
  [v15 v16];
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v18))
  {
    v19 = OUTLINED_FUNCTION_30_1();
    v151 = swift_slowAlloc();
    *v19 = 136446466;
    v20 = OUTLINED_FUNCTION_18_35();
    v28 = OUTLINED_FUNCTION_27_24(v20, v21, v22, v23, v24, v25, v26, v27, v130, v133, v136, *&v139, *&v142, v145);

    *(v19 + 4) = v28;
    *(v19 + 12) = 2080;
    OUTLINED_FUNCTION_24_25();
    v29 = String.init<A>(reflecting:)();
    v37 = OUTLINED_FUNCTION_27_24(v29, v30, v31, v32, v33, v34, v35, v36, v131, v134, v137, v140, v143, v146);

    *(v19 + 14) = v37;
    _os_log_impl(&dword_1BBC58000, v17, v18, "[%{public}s][layout] hangUpFrame is %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v156.origin.x = OUTLINED_FUNCTION_21_29();
  CGRectGetMinX(v156);
  OUTLINED_FUNCTION_10_47();
  v38 = (CGRectGetHeight(v157) + MaxY) * 0.5;
  v130 = *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_changeRouteButton];
  [v130 setFrame_];
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v40))
  {
    v41 = OUTLINED_FUNCTION_30_1();
    v151 = swift_slowAlloc();
    *v41 = 136446466;
    v42 = OUTLINED_FUNCTION_18_35();
    v50 = OUTLINED_FUNCTION_27_24(v42, v43, v44, v45, v46, v47, v48, v49, v130, v133, v136, *&v139, *&v142, v145);

    *(v41 + 4) = v50;
    *(v41 + 12) = 2080;
    OUTLINED_FUNCTION_24_25();
    v51 = String.init<A>(reflecting:)();
    v59 = OUTLINED_FUNCTION_27_24(v51, v52, v53, v54, v55, v56, v57, v58, v132, v135, v138, v141, v144, v147);

    *(v41 + 14) = v59;
    _os_log_impl(&dword_1BBC58000, v39, v40, "[%{public}s][layout] changeRouteFrame is %s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_26();
  }

  v158.origin.x = 16.0;
  v158.origin.y = v5;
  v158.size.width = v6;
  v142 = v6;
  v158.size.height = v6;
  MaxX = CGRectGetMaxX(v158);
  OUTLINED_FUNCTION_24_8();
  Width = CGRectGetWidth(v159);
  v145 = *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel];
  v62 = [v145 font];
  if (v62)
  {
    v63 = v62;
    v64 = MaxX + 9.0;
    v65 = Width + -136.0 - (MaxX + 9.0);
    [v62 lineHeight];
    v67 = v66;

    v68 = *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_brandedIconView];
    v69 = 14.0;
    if (!v68)
    {
      v69 = 0.0;
    }

    if (v69 <= 0.0)
    {
      v70 = 0.0;
    }

    else
    {
      v70 = v69 + 4.0;
    }

    OUTLINED_FUNCTION_24_8();
    Height = CGRectGetHeight(v160);
    v72 = (*(**&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_durationController] + 224))(v65 - v70, Height - v67);
    v74 = v73;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    v139 = v5;
    if (OUTLINED_FUNCTION_18_0(v76))
    {
      v77 = OUTLINED_FUNCTION_30_1();
      v78 = OUTLINED_FUNCTION_23();
      v149[0] = v78;
      *v77 = 136446466;
      v79 = OUTLINED_FUNCTION_18_35();
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v149);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2048;
      *(v77 + 14) = v70 + v72;
      _os_log_impl(&dword_1BBC58000, v75, v76, "[%{public}s][layout] textWidth: %f", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v78);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v82 = v64 + v70;
    OUTLINED_FUNCTION_24_8();
    v83 = (CGRectGetHeight(v161) - v74 - v67) * 0.5;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v85))
    {
      v86 = OUTLINED_FUNCTION_30_1();
      v149[0] = swift_slowAlloc();
      *v86 = 136446466;
      v87 = OUTLINED_FUNCTION_18_35();
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v149);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2080;
      OUTLINED_FUNCTION_4_77();
      v90 = CGRect.description.getter();
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v149);

      *(v86 + 14) = v92;
      _os_log_impl(&dword_1BBC58000, v84, v85, "[%{public}s][layout] secondaryFrame: %s", v86, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_27();
    }

    v93 = *&v4[OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_secondaryLabel];
    v94 = OUTLINED_FUNCTION_4_77();
    [v95 v96];
    rect = v83;
    if (v68)
    {
      v97 = v68;
      [v97 setBounds_];
      v162.origin.x = OUTLINED_FUNCTION_4_77();
      v98 = CGRectGetMinX(v162) + -4.0 + -7.0;
      [v93 center];
      v99 = v98;
      v83 = rect;
      [v97 setCenter_];
    }

    v163.size.width = v72;
    v100 = v82;
    v163.origin.x = v82;
    v163.origin.y = v83;
    v163.size.height = v74;
    v5 = v74;
    CGRectGetMaxY(v163);
    v6 = v64;
    if (v68)
    {
      [v68 frame];
      CGRectGetMaxY(v164);
    }

    v101 = OUTLINED_FUNCTION_22_30();
    [v102 v103];
    v165.origin.x = 16.0;
    v165.origin.y = v139;
    v165.size.width = v142;
    v165.size.height = v142;
    MaxY = CGRectGetMaxY(v165);
    v166.origin.x = OUTLINED_FUNCTION_22_30();
    v104 = CGRectGetMaxY(v166);
    v167.origin.x = v100;
    v167.origin.y = rect;
    v167.size.width = v72;
    v167.size.height = v74;
    MinY = CGRectGetMinY(v167);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v106))
    {
      MinY = v104 + MinY;
      MaxY = MaxY + 14.0;
      v107 = swift_slowAlloc();
      v108 = OUTLINED_FUNCTION_23();
      v149[0] = v108;
      *v107 = 136446978;
      v109 = OUTLINED_FUNCTION_18_35();
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v149);

      *(v107 + 4) = v111;
      *(v107 + 12) = 2048;
      *(v107 + 14) = MaxY;
      *(v107 + 22) = 2048;
      *(v107 + 24) = MinY;
      *(v107 + 32) = 2048;
      *(v107 + 34) = 0x4055000000000000;
      _os_log_impl(&dword_1BBC58000, v105, v106, "[%{public}s][layout] avatarMaxY: %f, textMaxY: %f, %f", v107, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v108);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_4_4();
    }

    if ([v4 effectiveUserInterfaceLayoutDirection] == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BB450;
      v113 = *&v4[v136];
      *(inited + 32) = v113;
      *(inited + 40) = v93;
      v1 = v130;
      *(inited + 48) = v145;
      *(inited + 56) = v130;
      *(inited + 64) = v133;
      *(inited + 72) = v68;
      v114 = MEMORY[0x1E69E7CC0];
      v149[0] = MEMORY[0x1E69E7CC0];
      v115 = v113;
      v116 = v93;
      v117 = v145;
      v118 = v130;
      v119 = v133;
      v120 = v68;
      for (i = 0; i != 6; ++i)
      {
        if (i > 5)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v122 = *(inited + 8 * i + 32);
        if (v122)
        {
          v123 = v122;
          MEMORY[0x1BFB20CC0]();
          v1 = *((v149[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v1 >= *((v149[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v114 = v149[0];
        }
      }

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v124 = specialized Array.count.getter(v114);
      for (j = 0; v124 != j; ++j)
      {
        if ((v114 & 0xC000000000000001) != 0)
        {
          v126 = MEMORY[0x1BFB22010](j, v114);
        }

        else
        {
          if (j >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v126 = *(v114 + 8 * j + 32);
        }

        v1 = v126;
        if (__OFADD__(j, 1))
        {
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_24_8();
        v127 = CGRectGetWidth(v168);
        OUTLINED_FUNCTION_5_53();
        v129 = v127 - v128;
        OUTLINED_FUNCTION_5_53();
        MinY = v129 - CGRectGetMinX(v169);
        OUTLINED_FUNCTION_5_53();
        MaxY = CGRectGetMinY(v170);
        OUTLINED_FUNCTION_5_53();
        [v1 setFrame_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

CGSize __swiftcall OngoingTelephonyControlsView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  swift_getObjectType();
  if (height <= 2.22507386e-308)
  {
    height = 1.79769313e308;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_30_1();
    v66 = OUTLINED_FUNCTION_16_8();
    *v2 = 136446466;
    v8 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_26_6(v8, v9, v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    *&v65 = width;
    *(&v65 + 1) = height;
    type metadata accessor for CGSize(0);
    v15 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_26_6(v15, v16, v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_17_2();
    *(v2 + 14) = &unk_1BC4BB000;
    OUTLINED_FUNCTION_23_3(&dword_1BBC58000, v22, v23, "[%{public}s][sizing] sizingThatFits %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_4_4();
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_30_1();
    v66 = OUTLINED_FUNCTION_16_8();
    *v2 = 136446466;
    v26 = _typeName(_:qualified:)();
    OUTLINED_FUNCTION_26_6(v26, v27, v28, v29, v30, v31, v32);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v65 = xmmword_1BC4BB460;
    type metadata accessor for CGSize(0);
    v33 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_26_6(v33, v34, v35, v36, v37, v38, v39);
    OUTLINED_FUNCTION_17_2();
    *(v2 + 14) = &unk_1BC4BB000;
    OUTLINED_FUNCTION_23_3(&dword_1BBC58000, v40, v41, "[%{public}s][sizing] actionsSize is  %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_4_4();
  }

  v42 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_brandedIconView))
  {
    v43 = 14.0;
  }

  else
  {
    v43 = 0.0;
  }

  if (v43 > 0.0)
  {
    v42 = v43 + 4.0;
  }

  v44 = width + -136.0 + -75.0 - v42;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_primaryLabel) sizeThatFits_];
  v46 = v45;
  v48 = v47;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_secondaryLabel) sizeThatFits_];
  if (v46 > v49)
  {
    v49 = v46;
  }

  if (v50 <= v43)
  {
    v50 = v43;
  }

  v51 = v48 + v50 + 17.0 + 17.0;
  if (v49 <= 156.0)
  {
    v49 = 156.0;
  }

  v52 = v49 + 75.0 + 136.0;
  specialized max<A>(_:_:_:_:)(MEMORY[0x1E69E7CC0], 78.0, v51, 84.0);
  v54 = v53;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v56))
  {
    v57 = OUTLINED_FUNCTION_23();
    v58 = OUTLINED_FUNCTION_23();
    *&v65 = v58;
    *v57 = 136446722;
    v59 = _typeName(_:qualified:)();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v65);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2048;
    *(v57 + 14) = v52;
    *(v57 + 22) = 2048;
    *(v57 + 24) = v54;
    _os_log_impl(&dword_1BBC58000, v55, v56, "[%{public}s][sizing] measuredWidth: %f, measuredHeight: %f", v57, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v58);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_27();
  }

  if (v52 >= width)
  {
    v62 = width;
  }

  else
  {
    v62 = v52;
  }

  if (v54 >= height)
  {
    v63 = height;
  }

  else
  {
    v63 = v54;
  }

  result.height = v63;
  result.width = v62;
  return result;
}

void OngoingTelephonyControlsView.updateAvatarView()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_23();
    v22 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[%{public}s] updateAvatarView", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  v13 = OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView;
  [*(v1 + OBJC_IVAR____TtC15ConversationKit28OngoingTelephonyControlsView_avatarView) removeFromSuperview];
  v14 = *(v1 + v13);
  *(v1 + v13) = 0;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))();
  v15 = *(v4 + 7);
  if (v15)
  {
    v16 = v15;
    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v4, v17);
    v18 = *(v1 + v13);
    *(v1 + v13) = v15;
    v19 = v16;

    [v1 addSubview_];
    [v1 setNeedsLayout];
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v4, v20);
  }
}

id OngoingTelephonyControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id OngoingTelephonyControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OngoingTelephonyControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for ControlsView.cnkContentAlpha.modify in conformance OngoingTelephonyControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for ControlsView.recipe.modify in conformance OngoingTelephonyControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t type metadata accessor for OngoingTelephonyControlsView()
{
  result = type metadata singleton initialization cache for OngoingTelephonyControlsView;
  if (!type metadata singleton initialization cache for OngoingTelephonyControlsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for OngoingTelephonyControlsView()
{
  result = type metadata accessor for ConversationControlsRecipe();
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

void ZoomButton.body.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ANtGGGMd);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  OUTLINED_FUNCTION_8_61();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v1 & 1;
  v12[2] = v3;
  v13 = v1 & 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ALtGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Image, _OpacityEffect>, ModifiedContent<Image, _OpacityEffect>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ALtGGMd);
  Button.init(action:label:)();
  v14 = 1;
  OUTLINED_FUNCTION_1_9();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v11, &_s7SwiftUI6ButtonVyAA6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA5ImageVAA14_OpacityEffectVG_ANtGGGMd);
  lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
  View.buttonStyle<A>(_:)();
  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ZoomButton.body.getter()
{
  static Animation.default.getter();
  withBridgedAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in ZoomButton.body.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v12[0];
  }

  v9 = (*(*a1 + 280))(v12);
  *v10 = !*v10;
  v9(v12, 0);
}

double closure #2 in ZoomButton.body.getter@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in closure #2 in ZoomButton.body.getter(a1, a2 & 1, v13);
  v9 = v13[0];
  result = *&v13[1];
  v11 = v13[2];
  v12 = v13[3];
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = result;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  return result;
}

uint64_t closure #1 in closure #2 in ZoomButton.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Image.init(systemName:)();

  v12 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v11 = (*(v7 + 8))(v9, v6);
    v12 = v23;
  }

  v14 = (*(*v12 + 264))(v11);

  v15 = Image.init(systemName:)();

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v16 = (*(v7 + 8))(v9, v6);
    a1 = v23;
  }

  if (v14)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = (*(*a1 + 264))(v16);

  *a3 = v10;
  if (v19)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  *(a3 + 8) = v18;
  *(a3 + 16) = v15;
  *(a3 + 24) = v21;
  return result;
}

void HomeButton.body.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v35 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd);
  OUTLINED_FUNCTION_1();
  v33 = v6;
  v34 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarfE0VQo_Md);
  OUTLINED_FUNCTION_1();
  v32 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;

  v23 = v3;
  if ((v1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v22 = (*(v17 + 8))(v21, v15);
    v23 = v37;
  }

  v25 = (*(*v23 + 864))(v22);

  v26 = 1;
  v27 = v35;
  if (v25)
  {
    OUTLINED_FUNCTION_8_61();
    v28 = swift_allocObject();
    *(v28 + 16) = v3;
    *(v28 + 24) = v1 & 1;

    Button.init(action:label:)();
    v36 = 1;
    OUTLINED_FUNCTION_1_9();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v29, v30);
    lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
    v31 = v34;
    View.buttonStyle<A>(_:)();
    (*(v33 + 8))(v9, v31);
    (*(v32 + 32))(v27, v14, v10);
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v27, v26, 1, v10);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in HomeButton.body.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v8 = (*(v5 + 8))(v7, v4);
    a1 = v11[1];
  }

  (*(*a1 + 872))(v8);
}

uint64_t closure #2 in HomeButton.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t ZoomButton.init()()
{
  type metadata accessor for ScreenSharingSpectatorViewModel();
  OUTLINED_FUNCTION_0_111();
  lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(v0, v1);
  return OUTLINED_FUNCTION_12_45();
}

void RemoteControlButton.body.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v78 = v4;
  type metadata accessor for AccessibilityTraits();
  OUTLINED_FUNCTION_1();
  v74 = v6;
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v73 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v70 - v21;
  v22 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v79 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v27 = v26 - v25;

  countAndFlagsBits = v3;
  if ((v1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    OUTLINED_FUNCTION_10_48();

    EnvironmentValues.init()();
    OUTLINED_FUNCTION_9_53();

    v31 = OUTLINED_FUNCTION_6_62();
    v28 = v32(v31);
    countAndFlagsBits = v80._countAndFlagsBits;
  }

  v33 = (*(*countAndFlagsBits + 752))(v28);

  if (RemoteControlRequirements.isComplete.getter(v33))
  {
    OUTLINED_FUNCTION_8_61();
    v34 = swift_allocObject();
    *(v34 + 16) = v3;
    *(v34 + 24) = v1 & 1;

    Button.init(action:label:)();

    v36 = v3;
    if ((v1 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v37 = static Log.runtimeIssuesLog.getter();
      OUTLINED_FUNCTION_10_48();

      EnvironmentValues.init()();
      OUTLINED_FUNCTION_9_53();

      v38 = OUTLINED_FUNCTION_6_62();
      v35 = v39(v38);
      v36 = v80._countAndFlagsBits;
    }

    (*(*v36 + 648))(&v80, v35);

    v40 = (v80._countAndFlagsBits >> 61) - 2 < 3;
    outlined consume of RemoteControlState(v80._countAndFlagsBits);
    LOBYTE(v80._countAndFlagsBits) = 1;
    BYTE1(v80._countAndFlagsBits) = v40;
    OUTLINED_FUNCTION_1_9();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v41, v42);
    lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
    View.buttonStyle<A>(_:)();
    (*(v11 + 8))(v14, v9);

    v44 = v3;
    if ((v1 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v45 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      OUTLINED_FUNCTION_9_53();

      v46 = OUTLINED_FUNCTION_6_62();
      v43 = v47(v46);
      v44 = v80._countAndFlagsBits;
    }

    v48 = (*(*v44 + 360))(v43);

    KeyPath = swift_getKeyPath();
    v50 = swift_allocObject();
    *(v50 + 16) = v48 & 1;
    v51 = &v17[*(v71 + 36)];
    *v51 = KeyPath;
    v51[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_0;
    v51[2] = v50;
    v52 = [objc_opt_self() conversationKit];
    v81._object = 0xE000000000000000;
    v53.value._countAndFlagsBits = 0x61737265766E6F43;
    v53.value._object = 0xEF74694B6E6F6974;
    v54._object = 0x80000001BC5030D0;
    v54._countAndFlagsBits = 0xD000000000000021;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    v81._countAndFlagsBits = 0;
    v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v53, v52, v55, v81);

    v80 = v56;
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);

    v58 = v73;
    if ((v1 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v59 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      OUTLINED_FUNCTION_9_53();

      v57 = (*(v79 + 8))(v27, v22);
      v3 = v80._countAndFlagsBits;
    }

    (*(*v3 + 648))(&v80, v57);

    v60 = (v80._countAndFlagsBits >> 61) - 2;
    outlined consume of RemoteControlState(v80._countAndFlagsBits);
    v61 = v74;
    if (v60 >= 3)
    {
      v80._countAndFlagsBits = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI19AccessibilityTraitsVGMd);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1BC4BA940;
      static AccessibilityTraits.isSelected.getter();
      v80._countAndFlagsBits = v62;
    }

    lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(&lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI19AccessibilityTraitsVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AccessibilityTraits] and conformance [A], &_sSay7SwiftUI19AccessibilityTraitsVGMd);
    v66 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v67 = v72;
    v68 = v76;
    v65 = v77;
    MEMORY[0x1BFB1E4A0](v58, v77);
    (*(v61 + 8))(v58, v66);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd);
    v69 = v67;
    v64 = v78;
    sub_1BBCEA1CC(v69, v78);
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v65 = v77;
    v64 = v78;
  }

  __swift_storeEnumTagSinglePayload(v64, v63, 1, v65);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RemoteControlButton.body.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v8 = (*(v5 + 8))(v7, v4);
    a1 = v11[1];
  }

  (*(*a1 + 880))(v8);
}

uint64_t closure #2 in RemoteControlButton.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t CompactScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_61();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_17_40(v3);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = partial apply for closure #1 in CompactScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 24) = v1;
  *(a1 + 32) = closure #2 in CompactScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 40) = 0;
  *(a1 + 48) = closure #2 in CompactScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 56) = 0;
  *(a1 + 64) = closure #2 in CompactScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 72) = 0;
}

uint64_t closure #2 in CompactScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ScreenSharingSpectatorViewModel();
  OUTLINED_FUNCTION_0_111();
  lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(v2, v3);
  result = OUTLINED_FUNCTION_11_51();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t RegularScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_61();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_17_40(v3);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = partial apply for closure #1 in RegularScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = closure #2 in RegularScreenSharingSpectatorToolbar.body.getter;
  *(a1 + 72) = 0;
}

uint64_t closure #1 in CompactScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    OUTLINED_FUNCTION_10_48();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v13 = (*(v8 + 8))(v12, v6);
    a1 = v20;
  }

  v15 = (*(*a1 + 792))(v13);
  v17 = v16;

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd) + 40);
  *(a3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v15;
  a3[1] = v17;
  return result;
}

uint64_t closure #2 in RegularScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ScreenSharingSpectatorViewModel();
  lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(&lazy protocol witness table cache variable for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel, type metadata accessor for ScreenSharingSpectatorViewModel);
  v2 = Environment.init<A>(_:)();
  v4 = v3;
  v5 = Environment.init<A>(_:)();
  v7 = v6;
  result = Environment.init<A>(_:)();
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = result;
  *(a1 + 40) = v9 & 1;
  return result;
}

void ScreenSharingSpectatorToolbar.horizontalSizeClass.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v32 = v31 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v23, &a9 - v34, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(v35, v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    OUTLINED_FUNCTION_10_48();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  OUTLINED_FUNCTION_30_0();
}

void *ScreenSharingSpectatorToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  result = ScreenSharingSpectatorToolbar.resolvedToolbarForSizeClass.getter(&v5);
  v3 = v6;
  v4 = v7;
  *a1 = v5;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  return result;
}

uint64_t ScreenSharingSpectatorToolbar.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for ScreenSharingSpectatorToolbar() + 20);
  type metadata accessor for ScreenSharingSpectatorViewModel();
  OUTLINED_FUNCTION_0_111();
  lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(v3, v4);
  result = OUTLINED_FUNCTION_12_45();
  *v2 = result;
  v2[8] = v6 & 1;
  return result;
}

uint64_t default argument 0 of ScreenSharingSpectatorToolbar.init(horizontalSizeClass:)@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ScreenSharingSpectatorToolbar.init(horizontalSizeClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of ZStack<TupleView<(ModifiedContent<_ShapeView<Rectangle, Color>, _AllowsHitTestingModifier>, ModifiedContent<StaticIf<Solarium, _GlassEffectContainer<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, TranslationTextView??)>>, _PaddingLayout>, _FlexFrameLayout>, PlatterBackgroundModifier>>, _AnimationModifier<Bool>>)>>(a1, a2, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd);
  v3 = a2 + *(type metadata accessor for ScreenSharingSpectatorToolbar() + 20);
  type metadata accessor for ScreenSharingSpectatorViewModel();
  OUTLINED_FUNCTION_0_111();
  lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(v4, v5);
  result = OUTLINED_FUNCTION_12_45();
  *v3 = result;
  *(v3 + 8) = v7 & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd);
    lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6VStackVyAA05TupleE0VyACyAA6HStackVyAMyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGSgSg_ACyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameV0VG_A_SgtGGG_15ConversationKit09ShareCardiG0VQo_AA01_no9TransformQ0VySbGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>??, ModifiedContent<Text, _FixedSizeLayout>)>>, _FlexFrameLayout>, Text?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAGyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGSgSg_AIyAA4TextVAA16_FixedSizeLayoutVGtGGAA010_FlexFrameS0VG_AWSgtGGGMd);
    lazy protocol witness table accessor for type ShareCardButtonStyle and conformance ShareCardButtonStyle();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA4TextVG_15ConversationKit011CallControljiG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
    type metadata accessor for CallControlTextButtonStyle(255);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type CallControlsTextButtonConfiguration and conformance CallControlsTextButtonConfiguration(&lazy protocol witness table cache variable for type CallControlTextButtonStyle and conformance CallControlTextButtonStyle, type metadata accessor for CallControlTextButtonStyle);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegularScreenSharingSpectatorToolbar and conformance RegularScreenSharingSpectatorToolbar()
{
  result = lazy protocol witness table cache variable for type RegularScreenSharingSpectatorToolbar and conformance RegularScreenSharingSpectatorToolbar;
  if (!lazy protocol witness table cache variable for type RegularScreenSharingSpectatorToolbar and conformance RegularScreenSharingSpectatorToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegularScreenSharingSpectatorToolbar and conformance RegularScreenSharingSpectatorToolbar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompactScreenSharingSpectatorToolbar and conformance CompactScreenSharingSpectatorToolbar()
{
  result = lazy protocol witness table cache variable for type CompactScreenSharingSpectatorToolbar and conformance CompactScreenSharingSpectatorToolbar;
  if (!lazy protocol witness table cache variable for type CompactScreenSharingSpectatorToolbar and conformance CompactScreenSharingSpectatorToolbar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompactScreenSharingSpectatorToolbar and conformance CompactScreenSharingSpectatorToolbar);
  }

  return result;
}

uint64_t type metadata accessor for ScreenSharingSpectatorToolbar()
{
  result = type metadata singleton initialization cache for ScreenSharingSpectatorToolbar;
  if (!type metadata singleton initialization cache for ScreenSharingSpectatorToolbar)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ScreenSharingSpectatorToolbar()
{
  type metadata accessor for Environment<UserInterfaceSizeClass?>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ScreenSharingSpectatorViewModel>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<ScreenSharingSpectatorViewModel>()
{
  if (!lazy cache variable for type metadata for Environment<ScreenSharingSpectatorViewModel>)
  {
    type metadata accessor for ScreenSharingSpectatorViewModel();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ScreenSharingSpectatorViewModel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarfE0VQo_SgMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd);
    lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type (<<opaque return type of View.buttonStyle<A>(_:)>>.0)? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGSgMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5ImageVG_15ConversationKit020ScreenSharingToolbarhG0VQo_AA32_EnvironmentKeyTransformModifierVySbGGAA023AccessibilityAttachmentR0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScreenSharingSpectatorViewModel and conformance ScreenSharingSpectatorViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<RegularScreenSharingSpectatorToolbar, CompactScreenSharingSpectatorToolbar> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<RegularScreenSharingSpectatorToolbar, CompactScreenSharingSpectatorToolbar> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<RegularScreenSharingSpectatorToolbar, CompactScreenSharingSpectatorToolbar> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy15ConversationKit36RegularScreenSharingSpectatorToolbarVAD07CompacthijK0VGMd);
    lazy protocol witness table accessor for type RegularScreenSharingSpectatorToolbar and conformance RegularScreenSharingSpectatorToolbar();
    lazy protocol witness table accessor for type CompactScreenSharingSpectatorToolbar and conformance CompactScreenSharingSpectatorToolbar();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<RegularScreenSharingSpectatorToolbar, CompactScreenSharingSpectatorToolbar> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t InCallControlsPTTOpenAppCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR____TtC15ConversationKit28InCallControlsPTTOpenAppCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  outlined init with copy of UIListContentConfiguration?(v1 + v10, v9);
  v11 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s5UIKit26UIListContentConfigurationVSgMd);
  closure #1 in InCallControlsPTTOpenAppCell.cellContentConfiguration.getter();
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of UIListContentConfiguration?(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t closure #1 in InCallControlsPTTOpenAppCell.cellContentConfiguration.getter()
{
  MEMORY[0x1BFB21750]();
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDCF8];
  v2 = [v0 preferredFontForTextStyle_];
  UIFont.caseSensitive()();

  v3 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v3(v10, 0);
  if (one-time initialization token for tableViewCellTitleLabel != -1)
  {
    swift_once();
  }

  v4 = static Colors.InCallControls.tableViewCellTitleLabel;
  v5 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v5(v10, 0);
  v6 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v6(v10, 0);
  v7 = [v0 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  InCallControlsPTTOpenAppCell.verticalInset(_:scaledToFont:)(isa, 18.5);
  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

id InCallControlsPTTOpenAppCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsPTTOpenAppCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsPTTOpenAppCell_appIconImageView) = 0;
  v1 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v1);
  v6 = type metadata accessor for InCallControlsPTTOpenAppCell();
  v2 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

uint64_t type metadata accessor for InCallControlsPTTOpenAppCell()
{
  result = type metadata singleton initialization cache for InCallControlsPTTOpenAppCell;
  if (!type metadata singleton initialization cache for InCallControlsPTTOpenAppCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void InCallControlsPTTOpenAppCell.configure(with:)(uint64_t *a1)
{
  v2 = v1;
  type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_1();
  v77 = v5;
  v78 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v76 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v66 - v10;
  type metadata accessor for UICellAccessory.Placement();
  OUTLINED_FUNCTION_1();
  v69 = v12;
  v70 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v71 = v14 - v13;
  type metadata accessor for UICellAccessory.CustomViewConfiguration();
  OUTLINED_FUNCTION_1();
  v74 = v16;
  v75 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v73 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v23 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v66 - v32;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v34 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
  MEMORY[0x1BFB216F0](v33);
  [v2 setAutomaticallyUpdatesBackgroundConfiguration_];
  InCallControlsPTTOpenAppCell.cellContentConfiguration.getter(v29);
  v35 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v36 = swift_allocObject();
  v68 = xmmword_1BC4BA940;
  *(v36 + 16) = xmmword_1BC4BA940;
  v38 = *a1;
  v37 = a1[1];
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v36 + 32) = v38;
  *(v36 + 40) = v37;
  v39 = one-time initialization token for conversationKit;

  if (v39 != -1)
  {
    swift_once();
  }

  v80._object = 0xE000000000000000;
  v40._object = 0x80000001BC503140;
  v40._countAndFlagsBits = 0xD00000000000001ELL;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v40, xmmword_1EDDCCEE8, static LocalizationSource.conversationKit, v41, v80);
  if (*(v36 + 16))
  {
    String.init(format:locale:arguments:)();
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s10Foundation6LocaleVSgMd);
  UIListContentConfiguration.text.setter();
  v79[3] = v23;
  v79[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
  (*(v25 + 16))(boxed_opaque_existential_1, v29, v23);
  MEMORY[0x1BFB216E0](v79);
  v43 = objc_opt_self();
  v44 = MEMORY[0x1BFB209B0](a1[2], a1[3]);
  v45 = [v43 _applicationIconImageForBundleIdentifier_format_];

  v46 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v47 = *&v2[OBJC_IVAR____TtC15ConversationKit28InCallControlsPTTOpenAppCell_appIconImageView];
  *&v2[OBJC_IVAR____TtC15ConversationKit28InCallControlsPTTOpenAppCell_appIconImageView] = v46;
  v48 = v46;

  if (v48)
  {
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48);
    v67 = v23;
    v50 = v71;
    v51 = (v71 + v49);
    v52 = *MEMORY[0x1E69DBF28];
    type metadata accessor for UICellAccessory.DisplayedState();
    OUTLINED_FUNCTION_7_0();
    (*(v53 + 104))(v50, v52);
    *v51 = OUTLINED_FUNCTION_14_0;
    v51[1] = 0;
    (*(v69 + 104))(v50, *MEMORY[0x1E69DBF60], v70);
    v54 = *MEMORY[0x1E69DBF30];
    v55 = type metadata accessor for UICellAccessory.LayoutDimension();
    OUTLINED_FUNCTION_7_0();
    v57 = v72;
    (*(v56 + 104))(v72, v54, v55);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
    v58 = v48;
    v59 = v73;
    UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
    v60 = v76;
    static UICellAccessory.customView(configuration:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
    v61 = v77;
    v62 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v68;
    v64 = v63 + v62;
    v65 = v78;
    (*(v61 + 16))(v64, v60, v78);
    UICollectionViewListCell.accessories.setter();
    [v2 setAccessibilityTraits_];

    (*(v61 + 8))(v60, v65);
    (*(v74 + 8))(v59, v75);
    (*(v25 + 8))(v29, v67);
  }

  else
  {
    (*(v25 + 8))(v29, v23);
  }
}

id InCallControlsPTTOpenAppCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsPTTOpenAppCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit28InCallControlsPTTOpenAppCell_appIconImageView) = 0;
  v1 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double InCallControlsPTTOpenAppCell.verticalInset(_:scaledToFont:)(void *a1, double a2)
{
  v3 = [a1 fontDescriptor];
  v4 = [v3 objectForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for UIFontTextStyle(0);
    if (swift_dynamicCast())
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      [v5 scaledValueForValue_];
      a2 = v6;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sypSgMd);
  }

  return a2;
}

id InCallControlsPTTOpenAppCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsPTTOpenAppCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for InCallControlsPTTOpenAppCell()
{
  type metadata accessor for UIListContentConfiguration?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of InCallControlsPTTOpenAppCell.configure(with:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = v3;
  v8 = *(a1 + 40);
  return v4(v6);
}

void type metadata accessor for UIListContentConfiguration?()
{
  if (!lazy cache variable for type metadata for UIListContentConfiguration?)
  {
    type metadata accessor for UIListContentConfiguration();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIListContentConfiguration?);
    }
  }
}

uint64_t outlined init with copy of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SystemApertureInCallWaveformTrailingView.__allocating_init(call:numBands:)(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 sharedInstance];
  v7 = [objc_opt_self() defaultCenter];
  v8 = objc_allocWithZone(type metadata accessor for AudioPowerSpectrumViewModel());
  AudioPowerSpectrumViewModel.init(call:callCenter:notificationCenter:numBands:)();
  v9 = (*(v2 + 232))();

  return v9;
}

id SystemApertureInCallWaveformTrailingView.backdropLayer.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___backdropLayer;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___backdropLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___backdropLayer);
  }

  else
  {
    v4 = closure #1 in SystemApertureInCallWaveformTrailingView.backdropLayer.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in SystemApertureInCallWaveformTrailingView.backdropLayer.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v1 = MEMORY[0x1BFB209B0](0x4C73756C70, 0xE500000000000000);
  [v0 setCompositingFilter_];

  LODWORD(v2) = 1057803469;
  [v0 setOpacity_];

  return v0;
}

id SystemApertureInCallWaveformTrailingView.localAudioView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_numBands);
    v6 = objc_allocWithZone(type metadata accessor for DeviceWaveformView());
    v7 = DeviceWaveformView.init(numBands:)(v5);
    v8 = [v7 layer];
    CATransform3DMakeScale(&v12, -1.0, 1.0, 1.0);
    [v8 setTransform_];

    v9 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id SystemApertureInCallWaveformTrailingView.remoteAudioView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_numBands);
    v6 = objc_allocWithZone(type metadata accessor for DeviceWaveformView());
    v7 = DeviceWaveformView.init(numBands:)(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id SystemApertureInCallWaveformTrailingView.init(viewModel:numBands:)(void *a1, uint64_t a2)
{
  swift_getObjectType();
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_cancellables] = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___backdropLayer] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel] = a1;
  v5 = a1;
  static WaveformConfigurations.framerateRange.getter();
  v6 = &v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_framerateRange];
  *v6 = v7;
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  *&v2[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_numBands] = a2;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for SystemApertureInCallWaveformTrailingView();
  v10 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  [v12 setClipsToBounds_];
  v14 = [v12 layer];
  [v14 setCornerCurve_];

  SystemApertureInCallWaveformTrailingView.configureSubviews()();
  SystemApertureInCallWaveformTrailingView.observeViewModel()();
  if (one-time initialization token for systemAperture != -1)
  {
    swift_once();
  }

  v29._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x46455641575F5841;
  v15._object = 0xEB000000004D524FLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, xmmword_1EDDCCED0, static LocalizationSource.systemAperture, v16, v29);
  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v17._countAndFlagsBits, v17._object, v12);

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, &static Logger.conversationControls);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136446210;
    v23 = _typeName(_:qualified:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1BBC58000, v19, v20, "[SystemAperture] %{public}s created", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  return v12;
}

id SystemApertureInCallWaveformTrailingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureInCallWaveformTrailingView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___backdropLayer) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id SystemApertureInCallWaveformTrailingView.__deallocating_deinit()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel];
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x248);
  v4 = v2;
  v3(0x74696E696564, 0xE600000000000000);

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[SystemAperture] %{public}s deinit", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v13 = type metadata accessor for SystemApertureInCallWaveformTrailingView();
  v16.receiver = v1;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

id SystemApertureInCallWaveformTrailingView.frame.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureInCallWaveformTrailingView();
  return objc_msgSendSuper2(&v2, sel_frame);
}

void SystemApertureInCallWaveformTrailingView.frame.setter()
{
  OUTLINED_FUNCTION_20_2();
  v1 = type metadata accessor for SystemApertureInCallWaveformTrailingView();
  v13.receiver = v0;
  v13.super_class = v1;
  objc_msgSendSuper2(&v13, sel_frame);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_18_1();
  objc_msgSendSuper2(v11, v12, v10, v0, v1);
  SystemApertureInCallWaveformTrailingView.frame.didset(v3, v5, v7, v9);
}

void SystemApertureInCallWaveformTrailingView.frame.didset(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  [v4 frame];
  v17.origin.x = v9;
  v17.origin.y = v10;
  v17.size.width = v11;
  v17.size.height = v12;
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  if (!CGRectEqualToRect(v15, v17))
  {
    v13 = [v4 layer];
    [v4 frame];
    [v13 setCornerRadius_];
  }
}

Swift::Void __swiftcall SystemApertureInCallWaveformTrailingView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SystemApertureInCallWaveformTrailingView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = SystemApertureInCallWaveformTrailingView.backdropLayer.getter();
  OUTLINED_FUNCTION_3_88(v1, sel_setFrame_);

  v2 = SystemApertureInCallWaveformTrailingView.localAudioView.getter();
  OUTLINED_FUNCTION_3_88(v2, sel_setFrame_);

  v3 = SystemApertureInCallWaveformTrailingView.remoteAudioView.getter();
  OUTLINED_FUNCTION_3_88(v3, sel_setFrame_);
}

CGSize __swiftcall SystemApertureInCallWaveformTrailingView.sizeThatFits(_:)(CGSize a1)
{
  swift_getObjectType();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1BBC58000, v2, v3, "[SystemAperture] %{public}s sizeThatFits", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v9 = 43.0;
  v10 = 19.0;
  result.height = v10;
  result.width = v9;
  return result;
}

uint64_t SystemApertureInCallWaveformTrailingView.shouldReplace(_:)(void *a1)
{
  type metadata accessor for SystemApertureInCallWaveformTrailingView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel);
    v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel);
    type metadata accessor for AudioPowerSpectrumViewModel();
    v6 = a1;
    v7 = v4;
    v8 = v5;
    v9 = static NSObject.== infix(_:_:)();

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

Swift::Void __swiftcall SystemApertureInCallWaveformTrailingView.start()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Starting waveform");
    OUTLINED_FUNCTION_27();
  }

  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel)) + 0x240))();
}

Swift::Void __swiftcall SystemApertureInCallWaveformTrailingView.stop()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Stopping waveform");
    OUTLINED_FUNCTION_27();
  }

  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel)) + 0x248))(0x2928706F7473, 0xE600000000000000);
}

void SystemApertureInCallWaveformTrailingView.configureSubviews()()
{
  v1 = v0;
  v2 = [v0 layer];
  [v2 setBorderWidth_];

  v3 = SystemApertureInCallWaveformTrailingView.remoteAudioView.getter();
  v4 = *&v1[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel];
  v5 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x160))();
  OUTLINED_FUNCTION_11_52();
  (*(v6 + 128))();

  v7 = OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView;
  v8 = [*&v1[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___remoteAudioView] layer];
  OUTLINED_FUNCTION_4_78();
  v10 = (*((*v5 & v9) + 0x1C0))();
  [v3 setCompositingFilter_];

  SystemApertureInCallWaveformTrailingView.localAudioView.getter();
  OUTLINED_FUNCTION_4_78();
  (*((*v5 & v11) + 0x178))();
  OUTLINED_FUNCTION_11_52();
  (*(v12 + 128))();

  v13 = OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView;
  v14 = [*&v1[OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView____lazy_storage___localAudioView] layer];
  OUTLINED_FUNCTION_4_78();
  v16 = (*((*v5 & v15) + 0x1A8))();
  [v3 setCompositingFilter_];

  [v1 addSubview_];
  v17 = (*((*v5 & *v4) + 0x190))([v1 addSubview_]) & 1;

  SystemApertureInCallWaveformTrailingView.configureFilter(_:)(v17);
}

void SystemApertureInCallWaveformTrailingView.configureFilter(_:)(char a1)
{
  if (a1)
  {
    v2 = [v1 layer];
    v3 = SystemApertureInCallWaveformTrailingView.backdropLayer.getter();
    [v2 addSublayer_];
  }

  else
  {
    v3 = SystemApertureInCallWaveformTrailingView.backdropLayer.getter();
    [v3 removeFromSuperlayer];
  }
}

uint64_t SystemApertureInCallWaveformTrailingView.observeViewModel()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_1();
  v58 = v2;
  type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v61 = v4;
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGMd);
  OUTLINED_FUNCTION_1();
  v50 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGANGMd);
  OUTLINED_FUNCTION_1();
  v55 = v19;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  v63 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGAPGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  v56 = v22;
  v57 = v23;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_1();
  v51 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGARGSo9NSRunLoopCGAUGMd);
  OUTLINED_FUNCTION_1();
  v59 = v26;
  v60 = v27;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_1();
  v52 = v29;
  v30 = *(v0 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_viewModel);
  (*((*MEMORY[0x1E69E7D40] & *v30) + 0x148))();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<[Float]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySfG_GMd);
  lazy protocol witness table accessor for type [Float] and conformance <A> [A]();
  OUTLINED_FUNCTION_14_33();
  v31 = *(v8 + 8);
  v32 = v31(v11, v6);
  (*((*MEMORY[0x1E69E7D40] & *v30) + 0x118))(v32);
  v33 = v49;
  OUTLINED_FUNCTION_14_33();
  v31(v11, v6);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<[Float]>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGMd);
  Publisher.combineLatest<A>(_:)();
  v34 = *(v50 + 8);
  v34(v33, v12);
  v34(v18, v12);
  v35 = v54;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v36 = objc_opt_self();
  v37 = [v36 mainRunLoop];
  v64 = v37;
  type metadata accessor for NSRunLoop.SchedulerOptions();
  v38 = v58;
  OUTLINED_FUNCTION_12_46();
  type metadata accessor for NSRunLoop();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<[Float]>.Publisher>, Publishers.RemoveDuplicates<Published<[Float]>.Publisher>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGANGMd);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v39 = v51;
  v40 = v53;
  v41 = v63;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v38);

  (*(v61 + 8))(v35, v62);
  (*(v55 + 8))(v41, v40);
  v42 = [v36 mainRunLoop];
  v64 = v42;
  OUTLINED_FUNCTION_12_46();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<[Float]>.Publisher>, Publishers.RemoveDuplicates<Published<[Float]>.Publisher>>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGAPGSo9NSRunLoopCGMd);
  v43 = v52;
  v44 = v56;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v38);

  (*(v57 + 8))(v39, v44);
  OUTLINED_FUNCTION_20();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for closure #1 in SystemApertureInCallWaveformTrailingView.observeViewModel();
  *(v46 + 24) = v45;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Debounce<Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<[Float]>.Publisher>, Publishers.RemoveDuplicates<Published<[Float]>.Publisher>>, NSRunLoop>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGARGSo9NSRunLoopCGAUGMd);
  v47 = v59;
  Publisher<>.sink(receiveValue:)();

  (*(v60 + 8))(v43, v47);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #1 in SystemApertureInCallWaveformTrailingView.observeViewModel()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SystemApertureInCallWaveformTrailingView.updatePowerLevels(remotePowerSpectrum:localPowerSpectrum:)();
  }
}

void SystemApertureInCallWaveformTrailingView.updatePowerLevels(remotePowerSpectrum:localPowerSpectrum:)()
{
  v1 = v0;
  v2 = SystemApertureInCallWaveformTrailingView.remoteAudioView.getter();
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))();

  OUTLINED_FUNCTION_2_93();
  v6 = *(v5 + 176);
  v8 = v7;

  v6(v9);

  OUTLINED_FUNCTION_2_93();
  v11 = *(v10 + 168);
  v13 = v12;
  v14 = v11();

  SystemApertureInCallWaveformTrailingView.generateMaxFrameRate(_:_:)(v4, v14);
  v16 = v15;

  v17 = SystemApertureInCallWaveformTrailingView.localAudioView.getter();
  v18 = (*((*v3 & *v17) + 0xA8))();

  OUTLINED_FUNCTION_2_93();
  v20 = *(v19 + 176);
  v22 = v21;

  v20(v23);

  OUTLINED_FUNCTION_2_93();
  v25 = *(v24 + 168);
  v27 = v26;
  v28 = v25();

  SystemApertureInCallWaveformTrailingView.generateMaxFrameRate(_:_:)(v18, v28);
  v30 = v29;

  if (v16 > v30)
  {
    v31 = v16;
  }

  else
  {
    v31 = v30;
  }

  v40 = CAFrameRateRange.init(minimum:maximum:preferred:)(*(v1 + OBJC_IVAR____TtC15ConversationKit40SystemApertureInCallWaveformTrailingView_framerateRange), v31, 0x100000000);
  minimum = v40.minimum;
  maximum = v40.maximum;
  preferred = v40.__preferred;
  v35 = objc_opt_self();
  OUTLINED_FUNCTION_20();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = minimum;
  *(v37 + 28) = maximum;
  *(v37 + 32) = preferred;
  v39[4] = partial apply for closure #1 in SystemApertureInCallWaveformTrailingView.updatePowerLevels(remotePowerSpectrum:localPowerSpectrum:);
  v39[5] = v37;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 1107296256;
  v39[2] = thunk for @escaping @callee_guaranteed () -> ();
  v39[3] = &block_descriptor_40;
  v38 = _Block_copy(v39);

  [v35 animateWithDuration:4 delay:v38 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  _Block_release(v38);
}

void closure #1 in SystemApertureInCallWaveformTrailingView.updatePowerLevels(remotePowerSpectrum:localPowerSpectrum:)(float a1, float a2, float a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #1 in CallControlsMenuViewController.updateDogingState(animated:);
    *(v10 + 24) = v9;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_22;
    v11 = _Block_copy(aBlock);
    v12 = v7;

    *&v13 = a1;
    *&v14 = a2;
    *&v15 = a3;
    [v8 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
    _Block_release(v11);
  }
}

uint64_t SystemApertureInCallWaveformTrailingView.generateMaxFrameRate(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 == *(a2 + 16) && v2)
  {
    v3 = (result + 32);
    v4 = (a2 + 32);
    v5 = 1 - v2;
    v6 = 0.0;
    while (1)
    {
      if (v5 == 1)
      {
        __break(1u);
        return result;
      }

      v7 = *v3;
      if (*v4 >= *v3)
      {
        v8 = *v3;
      }

      else
      {
        v8 = *v4;
      }

      if (v7 <= *v4)
      {
        v7 = *v4;
      }

      v9 = v7 - v8;
      if (v9 >= 0.25)
      {
        if (v6 < 0.25)
        {
          v6 = 0.25;
        }
      }

      else if (v9 >= 0.1)
      {
        if (v9 > v6)
        {
          v6 = v9;
        }
      }

      else if (v6 < 0.1)
      {
        v6 = 0.1;
        if (!v5)
        {
          return result;
        }

        goto LABEL_20;
      }

      if (!v5)
      {
        return result;
      }

LABEL_20:
      ++v5;
      ++v3;
      ++v4;
    }
  }

  return result;
}

id SystemApertureInCallWaveformTrailingView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

unint64_t lazy protocol witness table accessor for type [Float] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Float] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Float] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySfGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Float] and conformance <A> [A]);
  }

  return result;
}

uint64_t InCallControlsReportCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit24InCallControlsReportCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v9, v8, &_s5UIKit26UIListContentConfigurationVSgMd);
  v10 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s5UIKit26UIListContentConfigurationVSgMd);
  closure #1 in InCallControlsReportCell.cellContentConfiguration.getter();
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of Participant?(v5, v1 + v9, &_s5UIKit26UIListContentConfigurationVSgMd);
  return swift_endAccess();
}

uint64_t closure #1 in InCallControlsReportCell.cellContentConfiguration.getter()
{
  MEMORY[0x1BFB21750]();
  v0 = [objc_opt_self() conversationKit];
  v15._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC503410;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v15);

  UIListContentConfiguration.text.setter();
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DDCF8];
  v6 = [v4 preferredFontForTextStyle_];
  UIFont.caseSensitive()();

  v7 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v7(v14, 0);
  v8 = [objc_opt_self() systemRedColor];
  v9 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v9(v14, 0);
  v10 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v10(v14, 0);
  v11 = [v4 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  InCallControlsBlockCell.verticalInset(_:scaledToFont:)(isa, 18.5);
  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

id InCallControlsReportCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsReportCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_17_5(v2);
  v3 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_17_5(v3);
  v4 = OUTLINED_FUNCTION_18_1();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
  InCallControlsReportCell.configureContent()();

  return v7;
}

uint64_t InCallControlsReportCell.configureContent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-1] - v2;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v4 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  MEMORY[0x1BFB216F0](v3);
  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  v11[3] = type metadata accessor for UIListContentConfiguration();
  v11[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  InCallControlsReportCell.cellContentConfiguration.getter(boxed_opaque_existential_1);
  MEMORY[0x1BFB216E0](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
  v6 = *(type metadata accessor for UICellAccessory() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  InCallControlsReportCell.reportImageAccessory.getter(v8 + v7);
  return UICollectionViewListCell.accessories.setter();
}

id InCallControlsReportCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsReportCell.init(coder:)()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v0);
  v1 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t InCallControlsReportCell.reportImageAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit24InCallControlsReportCell____lazy_storage___reportImageAccessory;
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v9, v8, &_s5UIKit15UICellAccessoryVSgMd);
  v10 = type metadata accessor for UICellAccessory();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s5UIKit15UICellAccessoryVSgMd);
  closure #1 in InCallControlsReportCell.reportImageAccessory.getter(a1);
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of Participant?(v5, v1 + v9, &_s5UIKit15UICellAccessoryVSgMd);
  return swift_endAccess();
}

uint64_t closure #1 in InCallControlsReportCell.reportImageAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIImage();
  v12 = @nonobjc UIImage.__allocating_init(systemName:)();
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v14 = [objc_opt_self() systemRedColor];
  [v13 setTintColor_];

  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
  v16 = *MEMORY[0x1E69DBF28];
  v17 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  *v15 = OUTLINED_FUNCTION_14_0;
  v15[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBF60], v4);
  v18 = type metadata accessor for UICellAccessory.LayoutDimension();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v18);
  v19 = v13;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();

  return (*(v9 + 8))(v11, v8);
}

id InCallControlsReportCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InCallControlsReportCell()
{
  result = type metadata singleton initialization cache for InCallControlsReportCell;
  if (!type metadata singleton initialization cache for InCallControlsReportCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InCallControlsReportCell()
{
  type metadata accessor for UIListContentConfiguration?(319, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIListContentConfiguration?(319, &lazy cache variable for type metadata for UICellAccessory?, MEMORY[0x1E69DBF68]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed GCPhysicalInputElement, @guaranteed GCPressedStateInput, @unowned Bool) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void GameControllerManager.addControl(_:event:when:)()
{
  OUTLINED_FUNCTION_287();
  if (v5)
  {
    v6 = v0;
    v7 = v4;
    v8 = v3;
    v9 = v2;
    v10 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controls;
    swift_beginAccess();
    v31 = v10;
    v11 = specialized Dictionary.subscript.getter(v7, *(v6 + v10));
    swift_endAccess();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v13 = specialized Array.count.getter(v12);

    for (i = 0; v13 != i; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x1BFB22010](i, v12);
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v1 = *(v12 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v16 = Strong, Strong, v16 == v9))
      {
        v17 = *(v1 + 24);

        if (v17 == v8)
        {
          swift_bridgeObjectRelease_n();
          return;
        }
      }

      else
      {
      }
    }

    v1 = v7;
    GameControllerManager.nextControl(forButton:)(v7);
    v13 = v18;
    type metadata accessor for GameControllerManager.WeakControl();
    swift_allocObject();
    v9 = v9;
    GameControllerManager.WeakControl.init(_:event:)(v9, v8);
    MEMORY[0x1BFB20CC0]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

LABEL_30:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_19:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v19 = v31;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v6 + v31);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v1, isUniquelyReferenced_nonNull_native, v21, v22, v23, v24, v25, v30, v31);
    *(v6 + v19) = v32;
    swift_endAccess();
    if (*(v6 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus) == 1)
    {
      if (v13)
      {
        v26 = swift_dynamicCastObjCProtocolConditional();
        if (v26)
        {
          [v26 didResignFirstResponderForGameControllerButton_];
        }
      }

      v27 = swift_dynamicCastObjCProtocolConditional();
      if (v27)
      {
        v28 = v27;
        v29 = v9;
        [v28 didBecomeFirstResponderForGameControllerButton_];
      }
    }
  }
}

uint64_t GameControllerSymbolDescribers.sfSymbol(forButton:)(int a1)
{
  if (a1)
  {
    if (a1 == 2)
    {
      v2 = v1 + 4;
    }

    else
    {
      if (a1 != 1)
      {
        return 0;
      }

      v2 = v1 + 2;
    }
  }

  else
  {
    v2 = v1;
  }

  v3 = *v2;

  return v3;
}

id GameControllerManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static GameControllerManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  v1 = static GameControllerManager.shared;

  return v1;
}

id GameControllerManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonService;
  *&v0[v9] = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonInvalidatable] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonServiceAvailabilityObservation] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hidEventObserver] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerConnectedSink] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerDisconnectedSink] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerDidBecomeCurrentSink] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerDidStopBeingCurrentSink] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus] = 0;
  v10 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controls;
  type metadata accessor for CNKGameControllerButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit21GameControllerManagerC11WeakControl33_5FD9E534FCA3327AE0AE348C3E444B19LLCGMd);
  lazy protocol witness table accessor for type CNKGameControllerButton and conformance CNKGameControllerButton(&lazy protocol witness table cache variable for type CNKGameControllerButton and conformance CNKGameControllerButton, type metadata accessor for CNKGameControllerButton);
  *&v0[v10] = Dictionary.init(dictionaryLiteral:)();
  v11 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v12 = [v11 gameControllerSystemButton];

  v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive] = v12;
  v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasController] = 0;
  v31.receiver = v0;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, sel_init);
  if (*(v13 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E698E3B8]) init];
    v15 = [objc_opt_self() keyboardFocusEnvironment];
    [v14 setDeferringEnvironment_];

    v16 = v13;
    [v14 addObserver_];
    v17 = *&v16[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hidEventObserver];
    *&v16[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hidEventObserver] = v14;
    v30 = v14;

    v18 = objc_opt_self();
    v19 = [v18 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type CNKGameControllerButton and conformance CNKGameControllerButton(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
    v20 = Publisher<>.sink(receiveValue:)();

    v21 = *(v4 + 8);
    v21(v8, v2);
    *&v16[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerDidBecomeCurrentSink] = v20;

    v22 = [v18 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v23 = Publisher<>.sink(receiveValue:)();

    v21(v8, v2);
    *&v16[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controllerDidStopBeingCurrentSink] = v23;

    swift_getKeyPath();
    OUTLINED_FUNCTION_20();
    *(swift_allocObject() + 16) = v16;
    v24 = v16;
    v25 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v26 = *&v24[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonServiceAvailabilityObservation];
    *&v24[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonServiceAvailabilityObservation] = v25;

    v27 = [objc_opt_self() current];
    if (v27)
    {
      v28 = v27;
      GameControllerManager.configureButtonHandlers(forController:)(v27);
    }

    GameControllerManager.updateControllerState()();
  }

  return v13;
}

uint64_t GameControllerManager.configureButtonHandlers(forController:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v24 - v8;
  v10 = [a1 input];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput);
  GCDevicePhysicalInputState.buttons.getter();

  if (one-time initialization token for acceptButton != -1)
  {
    swift_once();
  }

  v11 = GCPhysicalInputElementCollection.subscript.getter();
  v12 = *(v3 + 8);
  v12(v9, v2);
  v13 = &selRef_isRecordingAllowed;
  if (v11)
  {
    v14 = [v11 pressedInput];
    swift_unknownObjectRelease();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = partial apply for closure #1 in GameControllerManager.configureButtonHandlers(forController:);
    v30 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed (@guaranteed GCPhysicalInputElement, @guaranteed GCPressedStateInput, @unowned Bool) -> ();
    v28 = &block_descriptor_44_2;
    v16 = _Block_copy(&aBlock);

    [v14 setPressedDidChangeHandler_];
    _Block_release(v16);
    swift_unknownObjectRelease();
    v13 = 0x1FC56A000;
  }

  v17 = v13;
  v18 = [a1 input];
  GCDevicePhysicalInputState.buttons.getter();

  if (one-time initialization token for declineButton != -1)
  {
    swift_once();
  }

  v19 = GCPhysicalInputElementCollection.subscript.getter();
  result = (v12)(v5, v2);
  if (v19)
  {
    v21 = [v19 v17 + 3445];
    swift_unknownObjectRelease();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = partial apply for closure #2 in GameControllerManager.configureButtonHandlers(forController:);
    v30 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed (@guaranteed GCPhysicalInputElement, @guaranteed GCPressedStateInput, @unowned Bool) -> ();
    v28 = &block_descriptor_40;
    v23 = _Block_copy(&aBlock);

    [v21 setPressedDidChangeHandler_];
    _Block_release(v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

void GameControllerManager.updateControllerState()()
{
  v1 = v0;
  if (one-time initialization token for conversationControlsGaming != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationControlsGaming);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "GameControllerManager: updateControllerState", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = specialized Array.count.getter(v7);
  if (v8)
  {
    v9 = v8;
    if (v8 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v9; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB22010](i, v7);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong gameControllerDidChangeContext];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  GameControllerManager.updateButtonHandlers()();
  v12 = [objc_opt_self() current];
  v13 = v12;
  if (v12)
  {
  }

  *(v1 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasController) = v13 != 0;
}

void closure #1 in GameControllerManager.init()(uint64_t a1, uint64_t a2, void (*a3)())
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    Notification.object.getter();
    if (v8)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController);
      if (swift_dynamicCast())
      {
        a3();
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v7, &_sypSgMd);
    }

    GameControllerManager.updateControllerState()();
  }
}

uint64_t GameControllerManager.clearButtonHandlers(forController:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14GameController32GCPhysicalInputElementCollectionVySo08GCButtonE0_pGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v18 - v8;
  v10 = [a1 input];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCControllerLiveInput);
  GCDevicePhysicalInputState.buttons.getter();

  if (one-time initialization token for acceptButton != -1)
  {
    swift_once();
  }

  v11 = GCPhysicalInputElementCollection.subscript.getter();
  v12 = *(v3 + 8);
  v12(v9, v2);
  if (v11)
  {
    v13 = [v11 pressedInput];
    swift_unknownObjectRelease();
    [v13 setPressedDidChangeHandler_];
    swift_unknownObjectRelease();
  }

  v14 = [a1 input];
  GCDevicePhysicalInputState.buttons.getter();

  if (one-time initialization token for declineButton != -1)
  {
    swift_once();
  }

  v15 = GCPhysicalInputElementCollection.subscript.getter();
  result = (v12)(v5, v2);
  if (v15)
  {
    v17 = [v15 pressedInput];
    swift_unknownObjectRelease();
    [v17 setPressedDidChangeHandler_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id key path getter for GameControllerManager.systemButtonService : GameControllerManager@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 systemButtonService];
  *a2 = result;
  return result;
}

void closure #3 in GameControllerManager.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24NSKeyValueObservedChangeVySbGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  if (one-time initialization token for conversationControlsGaming != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationControlsGaming);
  v13 = *(v6 + 16);
  v13(v11, a2, v5);
  v13(v8, a2, v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    v33 = v30[0];
    *v16 = 136315394;
    NSKeyValueObservedChange.oldValue.getter();
    v17 = 1702195828;
    if ((v32 & 1) == 0)
    {
      v17 = 0x65736C6166;
    }

    v18 = 0xE500000000000000;
    if (v32)
    {
      v18 = 0xE400000000000000;
    }

    if (v32 == 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17;
    }

    if (v32 == 2)
    {
      v20 = 0xE000000000000000;
    }

    else
    {
      v20 = v18;
    }

    v30[1] = a3;
    v21 = *(v6 + 8);
    v21(v11, v5);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v33);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    NSKeyValueObservedChange.newValue.getter();
    v23 = 1702195828;
    if ((v31 & 1) == 0)
    {
      v23 = 0x65736C6166;
    }

    v24 = 0xE400000000000000;
    if ((v31 & 1) == 0)
    {
      v24 = 0xE500000000000000;
    }

    if (v31 == 2)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    if (v31 == 2)
    {
      v26 = 0xE000000000000000;
    }

    else
    {
      v26 = v24;
    }

    v21(v8, v5);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v33);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_1BBC58000, v14, v15, "GameControllerManager: system button isAvailable changed from %s to: %s", v16, 0x16u);
    v28 = v30[0];
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    MEMORY[0x1BFB23DF0](v16, -1, -1);
  }

  else
  {

    v29 = *(v6 + 8);
    v29(v8, v5);
    v29(v11, v5);
  }

  GameControllerManager.updateControllerState()();
}

void GameControllerManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hidEventObserver];
  if (v2)
  {
    [v2 removeObserver_];
  }

  v3 = [objc_opt_self() controllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for GCController);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array.count.getter(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      v9.receiver = v0;
      v9.super_class = ObjectType;
      objc_msgSendSuper2(&v9, sel_dealloc);
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB22010](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    GameControllerManager.clearButtonHandlers(forController:)(v7);
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t one-time initialization function for acceptButton()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GameControllerManager.acceptButton = result;
  unk_1EBCAE570 = v1;
  return result;
}

uint64_t one-time initialization function for declineButton()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GameControllerManager.declineButton = result;
  unk_1EBCAE580 = v1;
  return result;
}

void GameControllerManager.observerDeliveryPolicyDidChange(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    v18 = [a1 canReceiveEvents];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v19 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v18;
    aBlock[4] = partial apply for closure #1 in GameControllerManager.observerDeliveryPolicyDidChange(_:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_41;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type CNKGameControllerButton and conformance CNKGameControllerButton(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v17, v10, v21);
    _Block_release(v21);

    (*(v6 + 8))(v10, v4);
    (*(v13 + 8))(v17, v11);
  }
}

void closure #1 in GameControllerManager.observerDeliveryPolicyDidChange(_:)(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus) = a2;
  if (*(a1 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasController) == 1)
  {
    v3 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
    swift_beginAccess();
    v4 = *(a1 + v3);
    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {

      while (!__OFSUB__(i--, 1))
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB22010](i, v4);
        }

        else
        {
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_19;
          }

          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong gameControllerDidChangeContext];

          swift_unknownObjectRelease();
          if (!i)
          {
            goto LABEL_15;
          }
        }

        else
        {

          if (!i)
          {
LABEL_15:

            goto LABEL_16;
          }
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_16:
    GameControllerManager.updateControls(forButton:)(1);
    GameControllerManager.updateControls(forButton:)(2);
  }
}

void GameControllerManager.performAction(forButton:)(uint64_t a1)
{
  GameControllerManager.nextControl(forButton:)(a1);
  if (v1)
  {
    v3 = v1;
    [v1 sendActionsForControlEvents_];
  }
}

void closure #1 in GameControllerManager.configureButtonHandlers(forController:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, const char *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a3)
    {
      if (one-time initialization token for conversationControlsGaming != -1)
      {
        OUTLINED_FUNCTION_4_79();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.conversationControlsGaming);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1BBC58000, v12, v13, a5, v14, 2u);
        MEMORY[0x1BFB23DF0](v14, -1, -1);
      }

      GameControllerManager.performAction(forButton:)(a6);
    }
  }
}

void GameControllerManager.beginConsumingSystemButtonPresses()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonInvalidatable;
  if (!*&v0[OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonInvalidatable])
  {
    v2 = [v0 systemButtonService];
    v3 = MEMORY[0x1BFB209B0](0xD000000000000010, 0x80000001BC503780);
    v4 = [v2 beginConsumingPressesWithReason:v3 consumer:v0 priority:60];

    *&v0[v1] = v4;

    swift_unknownObjectRelease();
  }
}

Swift::Bool __swiftcall GameControllerManager.focus(hasKeyboardFocus:)(Swift::Bool hasKeyboardFocus)
{
  OUTLINED_FUNCTION_287();
  if (!v4)
  {
    LOBYTE(v12) = 0;
    return v12;
  }

  v5 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
  if (v3)
  {
    OUTLINED_FUNCTION_19_1();
    v12 = specialized Array.count.getter(*(v1 + v5));
    if (!v12)
    {
      return v12;
    }

    result = OUTLINED_FUNCTION_2_94();
    while (1)
    {
      v7 = __OFSUB__(v12--, 1);
      if (v7)
      {
        break;
      }

      if (v2)
      {
        v8 = OUTLINED_FUNCTION_38_2();
        MEMORY[0x1BFB22010](v8);
      }

      else
      {
        if (v12 < 0)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_13_44();
        if (v9)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_16_40();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = [Strong gameControllerDidRequestDismissal];

        result = swift_unknownObjectRelease();
        if (v11)
        {
          goto LABEL_32;
        }

        if (!v12)
        {
          goto LABEL_33;
        }
      }

      else
      {

        if (!v12)
        {
          goto LABEL_33;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_1();
    v12 = specialized Array.count.getter(*(v1 + v5));
    if (!v12)
    {
      return v12;
    }

    result = OUTLINED_FUNCTION_2_94();
    while (1)
    {
      v7 = __OFSUB__(v12--, 1);
      if (v7)
      {
        break;
      }

      if (v2)
      {
        v13 = OUTLINED_FUNCTION_38_2();
        MEMORY[0x1BFB22010](v13);
      }

      else
      {
        if (v12 < 0)
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_13_44();
        if (v9)
        {
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_16_40();
      }

      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = [v14 gameControllerDidRequestActivation];

        result = swift_unknownObjectRelease();
        if (v15)
        {
LABEL_32:
          LOBYTE(v12) = 1;
LABEL_33:

          return v12;
        }
      }

      else
      {
      }

      if (!v12)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

Swift::Void __swiftcall GameControllerManager.resignFocus()()
{
  OUTLINED_FUNCTION_287();
  if (v2)
  {
    OUTLINED_FUNCTION_287();
    if (v2)
    {
      OUTLINED_FUNCTION_287();
      if (v2)
      {
        v3 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
        OUTLINED_FUNCTION_19_1();
        v4 = specialized Array.count.getter(*(v0 + v3));
        if (v4)
        {
          v5 = v4;
          OUTLINED_FUNCTION_2_94();
          while (!__OFSUB__(v5--, 1))
          {
            if (v1)
            {
              v7 = OUTLINED_FUNCTION_38_2();
              MEMORY[0x1BFB22010](v7);
            }

            else
            {
              if (v5 < 0)
              {
                goto LABEL_23;
              }

              OUTLINED_FUNCTION_13_44();
              if (v8)
              {
                goto LABEL_24;
              }

              OUTLINED_FUNCTION_16_40();
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v10 = [Strong gameControllerDidRequestFocus_];

              swift_unknownObjectRelease();
              if ((v10 & 1) != 0 || !v5)
              {
LABEL_20:

                return;
              }
            }

            else
            {

              if (!v5)
              {
                goto LABEL_20;
              }
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
        }
      }
    }
  }
}

Swift::Bool __swiftcall GameControllerManager.consumePressEventForGCSystemButton()()
{
  OUTLINED_FUNCTION_287();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  if (one-time initialization token for conversationControlsGaming != -1)
  {
    OUTLINED_FUNCTION_4_79();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationControlsGaming);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v5, "GameControllerManager: system button pressed", v6, 2u);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus);

  return GameControllerManager.focus(hasKeyboardFocus:)(v7);
}

void *GameControllerManager.stopConsumingSystemButtonPresses()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonInvalidatable;
  result = *(v0 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_systemButtonInvalidatable);
  if (result)
  {
    [result invalidate];
    *(v0 + v1) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t GameControllerManager.WeakControl.init(_:event:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(v2 + 24) = a2;
  return v2;
}

uint64_t GameControllerManager.WeakControl.__deallocating_deinit()
{
  MEMORY[0x1BFB23F10](v0 + 16);

  return swift_deallocClassInstance();
}

void GameControllerManager.nextControl(forButton:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controls;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  HIDWORD(v35) = a1;
  v8 = *(*(v5 + 56) + 8 * v6);
  v37 = v8;
  swift_endAccess();
  v9 = specialized Array.count.getter(v8);

  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {
      v10 = specialized Array.count.getter(v8);
      goto LABEL_18;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB22010](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
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
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_60;
    }
  }

  if (__OFADD__(v10, 1))
  {
    goto LABEL_74;
  }

  if (v10 + 1 == specialized Array.count.getter(v8))
  {
LABEL_18:
    v13 = specialized Array.count.getter(v8);
    v14 = v13 - v10;
    if (v13 >= v10)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        if (specialized Array.count.getter(v8) >= v13)
        {
          v12 = __OFSUB__(0, v14);
          v15 = -v14;
          if (!v12)
          {
            v16 = specialized Array.count.getter(v8);
            v12 = __OFADD__(v16, v15);
            v17 = v16 + v15;
            if (!v12)
            {
              specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v17, 1);
              specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
              v18 = specialized BidirectionalCollection.last.getter(v37);
              swift_beginAccess();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, HIDWORD(v35), isUniquelyReferenced_nonNull_native, v20, v21, v22, v23, v24, v35, *(v2 + v4));
              *(v2 + v4) = v36;
              swift_endAccess();
              if (v18)
              {
                swift_unknownObjectWeakLoadStrong();
                goto LABEL_25;
              }

              return;
            }

LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
            return;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v25 = v10 + 5;
  while (1)
  {
    v26 = v25 - 4;
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB22010](v25 - 4, v8);
    }

    else
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (v26 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }
    }

    v27 = swift_unknownObjectWeakLoadStrong();

    if (!v27)
    {
      goto LABEL_50;
    }

    if (v26 != v10)
    {
      break;
    }

LABEL_49:
    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_64;
    }

LABEL_50:
    v12 = __OFADD__(v26, 1);
    v33 = v25 - 3;
    if (v12)
    {
      goto LABEL_63;
    }

    if (v8 >> 62)
    {
      v34 = __CocoaSet.count.getter();
    }

    else
    {
      v34 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v25;
    if (v33 == v34)
    {
      goto LABEL_18;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1BFB22010](v10, v8);
    v29 = MEMORY[0x1BFB22010](v25 - 4, v8);
  }

  else
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

    v30 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= v30)
    {
      goto LABEL_72;
    }

    if (v26 >= v30)
    {
      goto LABEL_73;
    }

    v28 = *(v8 + 8 * v10 + 32);
    v29 = *(v8 + 8 * v25);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v31 = (v8 >> 62) & 1;
  }

  else
  {
    LODWORD(v31) = 0;
  }

  v32 = v8 & 0xFFFFFFFFFFFFFF8;
  *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v29;

  if ((v8 & 0x8000000000000000) == 0 && !v31)
  {
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_47;
  }

  v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
  v32 = v8 & 0xFFFFFFFFFFFFFF8;
  if ((v26 & 0x8000000000000000) == 0)
  {
LABEL_47:
    if (v26 >= *(v32 + 16))
    {
      goto LABEL_65;
    }

    *(v32 + 8 * v25) = v28;

    v37 = v8;
    goto LABEL_49;
  }

LABEL_58:
  __break(1u);
LABEL_25:
}

void GameControllerManager.queryFirstResponder(_:)(void *a1)
{
  v23 = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_287();
  if (v3)
  {
    v4 = v1;
    v5 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_controls;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v6 = *(v4 + v5);
    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 64);
    v19 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus;
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    while (v9)
    {
LABEL_11:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = *(*(v6 + 48) + ((v11 << 8) | (4 * v13)));
      GameControllerManager.nextControl(forButton:)(v14);
      if (v15)
      {
        v16 = v15;
        if (v15 == a1)
        {
          if (*(v4 + v19) == 1)
          {
            v21 = &unk_1F3B515E8;
            v17 = swift_dynamicCastObjCProtocolConditional();
            if (v17)
            {
              [v17 didBecomeFirstResponderForGameControllerButton_];
            }

            specialized Set._Variant.insert(_:)(v20, v14);
          }

          else
          {
            v22 = &unk_1F3B515E8;
            v18 = swift_dynamicCastObjCProtocolConditional();
            if (v18)
            {
              [v18 didResignFirstResponderForGameControllerButton_];
            }
          }
        }
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 64 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void GameControllerManager.updateControls(forButton:)(uint64_t a1)
{
  GameControllerManager.nextControl(forButton:)(a1);
  if (v3)
  {
    v4 = v3;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      if (*(v1 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus))
      {
        v6 = &selRef_didBecomeFirstResponderForGameControllerButton_;
      }

      else
      {
        v6 = &selRef_didResignFirstResponderForGameControllerButton_;
      }

      [v5 *v6];
    }
  }
}

uint64_t GameControllerManager.WeakResponder.__deallocating_deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  return swift_deallocClassInstance();
}

void GameControllerManager.hasResponder.getter()
{
  v2 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v13 = *(v0 + v2);
  v3 = specialized Array.count.getter(v13);
  v4 = OUTLINED_FUNCTION_2_94();
  while (1)
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    if (__OFSUB__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (v1)
    {
      v8 = OUTLINED_FUNCTION_38_2();
      MEMORY[0x1BFB22010](v8);
    }

    else
    {
      if (v3 < 0)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_13_44();
      if (v6)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_16_40();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v4 = swift_unknownObjectRelease();
      break;
    }
  }

  MEMORY[0x1EEE9AC00](v4);
  v12[2] = &v13;
  v10 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_15ConversationKit21GameControllerManagerC13WeakResponder33_5FD9E534FCA3327AE0AE348C3E444B19LLCTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v12, v3, v9);

  if (v10)
  {
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      swift_unknownObjectRelease();
    }
  }
}

void GameControllerManager.addResponder(_:)(uint64_t a1)
{
  swift_getObjectType();

  specialized GameControllerManager.addResponder(_:)(a1, v1);
}

void GameControllerManager.updateButtonHandlers()()
{
  GameControllerManager.hasResponder.getter();
  if (v1)
  {
    GameControllerManager.gameControllerContext()(v4);
    outlined destroy of GameControllerContext(v4);
    if (v4[0] && (v2 = [v0 systemButtonService], v3 = objc_msgSend(v2, sel_isAvailable), v2, v3))
    {
      GameControllerManager.beginConsumingSystemButtonPresses()();
    }

    else
    {
      GameControllerManager.stopConsumingSystemButtonPresses()();
    }
  }

  else
  {

    GameControllerManager.stopConsumingSystemButtonPresses()();
  }
}

void GameControllerManager.removeResponder(_:)(uint64_t a1)
{
  swift_getObjectType();

  specialized GameControllerManager.removeResponder(_:)(a1, v1);
}

uint64_t closure #1 in GameControllerManager.removeResponder(_:)(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == a2;
  }

  return result;
}

uint64_t GameControllerManager.gameControllerContext()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_287();
  if (!v8)
  {
    OUTLINED_FUNCTION_9_54();
    object = 1;
    goto LABEL_13;
  }

  v9 = objc_opt_self();
  v4 = &selRef_displayString;
  v10 = [v9 current];
  if (!v10)
  {
    object = 1;
LABEL_11:
    OUTLINED_FUNCTION_3_0();
    outlined consume of GameControllerSymbolDescribers?(v15, v16);
LABEL_12:
    OUTLINED_FUNCTION_9_54();
    goto LABEL_13;
  }

  countAndFlagsBits = &selRef_displayString;
  v2 = [v1 systemButtonService];
  v3 = [v2 isAvailable];

  if (!v3)
  {
    object = 1;
    goto LABEL_11;
  }

  v11 = [v1 systemButtonService];
  v28.service = [v9 current];
  v3 = &v24;
  v28.super.isa = v11;
  GameControllerSymbolDescribers.init(systemButtonService:controller:)(&v24, v28, v27);
  object = v24.symbolSystem.value._object;
  if (!v24.symbolSystem.value._object)
  {
    object = 1;
    OUTLINED_FUNCTION_3_0();
    outlined consume of GameControllerSymbolDescribers?(v22, v23);
    symbolAccept = v24.symbolAccept;
    v1 = &_sSSSgMd;
    v2 = &_sSSSgMR;
    outlined destroy of TapInteractionHandler?(&symbolAccept, &_sSSSgMd);
    symbolDecline = v24.symbolDecline;
    outlined destroy of TapInteractionHandler?(&symbolDecline, &_sSSSgMd);
    goto LABEL_12;
  }

  countAndFlagsBits = v24.symbolDecline.value._countAndFlagsBits;
  v6 = v24.symbolDecline.value._object;
  v3 = v24.symbolAccept.value._countAndFlagsBits;
  v4 = v24.symbolAccept.value._object;
  v2 = v24.symbolSystem.value._countAndFlagsBits;
  OUTLINED_FUNCTION_3_0();
  outlined consume of GameControllerSymbolDescribers?(v12, v13);
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_hasKeyboardFocus))
  {
    LODWORD(v1) = 2;
  }

  else
  {
    LODWORD(v1) = 1;
  }

LABEL_13:
  v17 = OUTLINED_FUNCTION_7_61();
  outlined copy of GameControllerSymbolDescribers?(v17, v18);
  v19 = OUTLINED_FUNCTION_7_61();
  result = outlined consume of GameControllerSymbolDescribers?(v19, v20);
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = object;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = countAndFlagsBits;
  *(a1 + 48) = v6;
  return result;
}

double GameControllerContext.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1BC4BB7D0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void __swiftcall GameControllerSymbolDescribers.init(systemButtonService:controller:)(ConversationKit::GameControllerSymbolDescribers *__return_ptr retstr, GCSystemButtonServiceRevlock systemButtonService, GCController_optional controller)
{
  service = systemButtonService.service;
  isa = systemButtonService.super.isa;
  v10 = outlined bridged method (pb) of @objc GCSystemButtonServiceRevlock.sfSymbolName.getter(systemButtonService.super.isa);
  v11 = v10;
  v13 = v12;
  if (service)
  {
    v24 = v10;
    v14 = service;
    v15 = [v14 extendedGamepad];
    if (v15)
    {
      v16 = v15;
      v3 = outlined bridged method (ob) of @objc GCControllerElement.sfSymbolsName.getter([v15 buttonA]);
      v4 = v17;
      v18 = [v16 buttonB];
      v19 = [v18 sfSymbolsName];

      if (v19)
      {
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v20;

LABEL_13:
        v11 = v24;
        goto LABEL_14;
      }

LABEL_9:

      v5 = 0;
      v6 = 0;
      goto LABEL_13;
    }

    v21 = [v14 microGamepad];
    if (v21)
    {
      v16 = v21;
      v3 = [v21 buttonA];
      v22 = [v3 sfSymbolsName];

      if (v22)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v23;

        goto LABEL_9;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_14_34();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_14_34();
LABEL_14:
  retstr->symbolSystem.value._countAndFlagsBits = v11;
  retstr->symbolSystem.value._object = v13;
  retstr->symbolAccept.value._countAndFlagsBits = v3;
  retstr->symbolAccept.value._object = v4;
  retstr->symbolDecline.value._countAndFlagsBits = v5;
  retstr->symbolDecline.value._object = v6;
}

uint64_t static GameControllerSymbolDescribers.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[2] == a2[2] && v7 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (v10)
  {
    if (v11)
    {
      v12 = a1[4] == a2[4] && v10 == v11;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

void GameControllerSymbolDescribers.hash(into:)()
{
  if (v0[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[3])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v0[5])
  {
    Hasher._combine(_:)(1u);
    OUTLINED_FUNCTION_38_2();

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int GameControllerSymbolDescribers.hashValue.getter()
{
  Hasher.init(_seed:)();
  GameControllerSymbolDescribers.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameControllerSymbolDescribers()
{
  Hasher.init(_seed:)();
  GameControllerSymbolDescribers.hash(into:)();
  return Hasher._finalize()();
}

BOOL static GameControllerContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v22[17] = v2;
  v22[18] = v3;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  if (v7 != 1)
  {
    if (v12 != 1)
    {
      v22[0] = *(a2 + 8);
      v22[1] = v12;
      v22[2] = v15;
      v22[3] = v14;
      v22[4] = v17;
      v22[5] = v16;
      v21[0] = v6;
      v21[1] = v7;
      v21[2] = v8;
      v21[3] = v9;
      v21[4] = v11;
      v21[5] = v10;
      v19 = static GameControllerSymbolDescribers.== infix(_:_:)(v21, v22);
      outlined init with copy of GameControllerContext(a2, v20);
      outlined init with copy of GameControllerContext(a1, v20);

      outlined destroy of GameControllerContext(a1);
      return (v19 & 1) != 0;
    }

LABEL_7:
    outlined init with copy of GameControllerContext(a2, v20);
    outlined init with copy of GameControllerContext(a1, v20);
    outlined consume of GameControllerSymbolDescribers?(v6, v7);
    outlined consume of GameControllerSymbolDescribers?(v13, v12);
    return 0;
  }

  if (v12 != 1)
  {
    goto LABEL_7;
  }

  outlined init with copy of GameControllerContext(a2, v20);
  return 1;
}

void GameControllerContext.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  if (*(v0 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    GameControllerSymbolDescribers.hash(into:)();
  }
}

Swift::Int GameControllerContext.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  if (*(v0 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    GameControllerSymbolDescribers.hash(into:)();
  }

  return Hasher._finalize()();
}

double default argument 1 of GameControllerContext.init(state:symbolDescriptors:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1BC4BB7D0;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

__n128 GameControllerContext.init(state:symbolDescriptors:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance GameControllerContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return static GameControllerContext.== infix(_:_:)(v5, v7);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameControllerContext()
{
  Hasher.init(_seed:)();
  GameControllerContext.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CNKGameControllerContext.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CNKGameControllerContext_value);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(v3 + 4);
  v10 = *(v3 + 5);
  v9 = *(v3 + 6);
  result = outlined copy of GameControllerSymbolDescribers?(v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v9;
  return result;
}

uint64_t CNKGameControllerContext.value.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___CNKGameControllerContext_value;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = *(a1 + 48);
  return outlined consume of GameControllerSymbolDescribers?(v4, v5);
}

char *CNKGameControllerContext.init(value:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = &v2[OBJC_IVAR___CNKGameControllerContext_value];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v6;
  *(v3 + 2) = *(a1 + 32);
  *(v3 + 6) = *(a1 + 48);
  v7 = v2;
  outlined consume of GameControllerSymbolDescribers?(v4, v5);

  return v7;
}

uint64_t CNKGameControllerContext.state.getter()
{
  v1 = OBJC_IVAR___CNKGameControllerContext_value;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t CNKGameControllerContext.sfSymbol(forButton:)(int a1)
{
  v3 = v1 + OBJC_IVAR___CNKGameControllerContext_value;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v3 + 16) != 1 && (!a1 || a1 == 2 || a1 == 1))
  {
  }

  return OUTLINED_FUNCTION_38_2();
}

id CNKGameControllerManager.value.getter()
{
  v1 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void CNKGameControllerManager.value.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_6_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *CNKGameControllerManager.init(value:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_6_0();
  v4 = *&v2[v3];
  *&v2[v3] = a1;
  v5 = v2;

  return v5;
}

char *static CNKGameControllerManager.shared()()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  v1 = static GameControllerManager.shared;
  v2 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_6_0();
  v3 = *&v0[v2];
  *&v0[v2] = v1;
  v4 = v1;

  return v0;
}

void CNKGameControllerManager.addControl(_:event:when:)()
{
  v1 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  GameControllerManager.addControl(_:event:when:)();
}

void CNKGameControllerManager.addResponder(_:)(uint64_t a1, void (*a2)(uint64_t, id, uint64_t))
{
  v5 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v2 + v5);
  ObjectType = swift_getObjectType();
  v8 = v6;
  a2(a1, v8, ObjectType);
}

void @objc CNKGameControllerManager.addResponder(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall CNKGameControllerManager.focus()()
{
  v1 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  GameControllerManager.focus(hasKeyboardFocus:)(0);
}

void __swiftcall CNKGameControllerManager.gameControllerContext()(CNKGameControllerContext *__return_ptr retstr)
{
  type metadata accessor for CNKGameControllerContext(v1);
  v3 = OBJC_IVAR___CNKGameControllerManager_value;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *(v2 + v3);
  GameControllerManager.gameControllerContext()(v5);

  CNKGameControllerContext.init(value:)(v5);
}

uint64_t specialized closure #1 in BidirectionalCollection.last(where:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v4)
  {
    return MEMORY[0x1BFB22010](a1, a2);
  }

  else
  {
  }
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_15ConversationKit21GameControllerManagerC13WeakResponder33_5FD9E534FCA3327AE0AE348C3E444B19LLCTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc GCSystemButtonServiceRevlock.sfSymbolName.getter(void *a1)
{
  v1 = [a1 sfSymbolName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc GCControllerElement.sfSymbolsName.getter(void *a1)
{
  v2 = [a1 sfSymbolsName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t lazy protocol witness table accessor for type CNKGameControllerButton and conformance CNKGameControllerButton(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in BidirectionalCollection.last(where:)(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void specialized GameControllerManager.addResponder(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    v4 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
    swift_beginAccess();
    v5 = *(a2 + v4);
    v6 = specialized Array.count.getter(v5);

    for (i = 0; v6 != i; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB22010](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          return;
        }
      }
    }

    GameControllerManager.hasResponder.getter();
    v10 = v9;
    type metadata accessor for GameControllerManager.WeakResponder();
    v11 = swift_allocObject();
    v12 = swift_unknownObjectRetain();
    specialized GameControllerManager.WeakResponder.init(_:)(v12, v11);
    v13 = swift_beginAccess();
    MEMORY[0x1BFB20CC0](v13);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*(a2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    if ((v10 & 1) == 0)
    {
      GameControllerManager.updateButtonHandlers()();
    }
  }
}

{
  if (*(a2 + OBJC_IVAR____TtC15ConversationKit21GameControllerManager_isActive) == 1)
  {
    OUTLINED_FUNCTION_55();
    v4 = OBJC_IVAR____TtC15ConversationKit21GameControllerManager_responders;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v5 = *(v2 + v4);
    v6 = specialized Array.count.getter(v5);

    for (i = 0; v6 != i; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB22010](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == v3)
        {

          return;
        }
      }
    }

    GameControllerManager.hasResponder.getter();
    v10 = v9;
    type metadata accessor for GameControllerManager.WeakResponder();
    OUTLINED_FUNCTION_20();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_275(v11);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v12 = OUTLINED_FUNCTION_30_2();
    MEMORY[0x1BFB20CC0](v12);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10));
    OUTLINED_FUNCTION_316();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    if ((v10 & 1) == 0)
    {
      GameControllerManager.updateButtonHandlers()();
    }
  }
}

uint64_t outlined init with copy of GameControllerSymbolDescribers?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30GameControllerSymbolDescribersVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of GameControllerSymbolDescribers?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30GameControllerSymbolDescribersVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GameControllerSymbolDescribers and conformance GameControllerSymbolDescribers()
{
  result = lazy protocol witness table cache variable for type GameControllerSymbolDescribers and conformance GameControllerSymbolDescribers;
  if (!lazy protocol witness table cache variable for type GameControllerSymbolDescribers and conformance GameControllerSymbolDescribers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerSymbolDescribers and conformance GameControllerSymbolDescribers);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GameControllerContext and conformance GameControllerContext()
{
  result = lazy protocol witness table cache variable for type GameControllerContext and conformance GameControllerContext;
  if (!lazy protocol witness table cache variable for type GameControllerContext and conformance GameControllerContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerContext and conformance GameControllerContext);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameControllerSymbolDescribers(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GameControllerSymbolDescribers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit30GameControllerSymbolDescribersVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for GameControllerContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 56))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GameControllerContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized GameControllerManager.WeakResponder.init(_:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return a2;
}

uint64_t TimeToWaitForCallService.init(timeToWaitForCall:defaultTimeToWaitForCall:randomRange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t TimeToWaitForCallService.timeToWait(for:)()
{
  v1 = (*v0)(&v6);
  if (v7 != 1)
  {
    return v6;
  }

  specialized Collection.randomElement<A>(using:)(v1, *(v0 + 32), *(v0 + 40));
  if (v3)
  {
    v2 = 0;
  }

  _ss8DurationV7secondsyABxSzRzlFZSi_Tt0g5(v2);
  v4 = static Duration.+ infix(_:_:)();
  if (static Duration.< infix(_:_:)())
  {
    return 1000000000000000000;
  }

  else
  {
    return v4;
  }
}

void specialized Collection.randomElement<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 == -1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = specialized RandomNumberGenerator.next<A>(upperBound:)(v4);
  specialized ClosedRange<>.index(_:offsetBy:)(a2, 0, v7, a2, a3);
  if (v8)
  {
LABEL_11:
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for TimeToWaitForCall(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeToWaitForCall(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for TimeToWaitForCall(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for TimeToWaitForCall(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

unint64_t specialized Collection.randomElement<A>(using:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

LABEL_3:
  result = specialized Set.count.getter(a2);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v4 = specialized RandomNumberGenerator.next<A>(upperBound:)(result);
    v5 = specialized Set.startIndex.getter(a2);
    v7 = v6;
    v9 = v8;
    v10 = specialized Collection.index(_:offsetBy:)(v5, v6, v8 & 1, v4, a2);
    v12 = v11;
    v14 = v13;
    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v5, v7, v9 & 1);
    specialized Set.subscript.getter(v10, v12, v14 & 1, a2);
    v16 = v15;
    outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v10, v12, v14 & 1);
    return v16;
  }

  __break(1u);
  return result;
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1BFB23E10](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1BFB23E10](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection.index(_:offsetBy:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    goto LABEL_29;
  }

  v6 = result;
  v23 = result;
  v24 = a2;
  v7 = a3 & 1;
  v25 = v7;
  if (!a4)
  {
    outlined copy of Set<A>.Index._Variant<A>(result, a2, v7);
    return v6;
  }

  v9 = a5 & 0xC000000000000001;
  result = outlined copy of Set<A>.Index._Variant<A>(result, a2, v7);
  v10 = 0;
  while (1)
  {
    if (v9)
    {
      if (v25 != 1)
      {
        goto LABEL_30;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo25TUConversationParticipantC_GMd);
      v15 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v15(v22, 0);
      goto LABEL_22;
    }

    if (v25)
    {
      goto LABEL_31;
    }

    result = v23;
    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    v11 = 1 << *(a5 + 32);
    if (v23 >= v11)
    {
      break;
    }

    v12 = v23 >> 6;
    v13 = *(a5 + 56 + 8 * (v23 >> 6));
    if (((v13 >> v23) & 1) == 0)
    {
      goto LABEL_27;
    }

    if (*(a5 + 36) != v24)
    {
      goto LABEL_28;
    }

    v14 = v13 & (-2 << (v23 & 0x3F));
    if (v14)
    {
      v11 = __clz(__rbit64(v14)) | v23 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v12 << 6;
      v17 = v12 + 1;
      v18 = (a5 + 64 + 8 * v12);
      while (v17 < (v11 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v23, v24, 0);
          v11 = __clz(__rbit64(v19)) + v16;
          goto LABEL_21;
        }
      }

      result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v23, v24, 0);
    }

LABEL_21:
    v21 = *(a5 + 36);
    v23 = v11;
    v24 = v21;
    v25 = 0;
LABEL_22:
    if (++v10 >= a4)
    {
      return v23;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined copy of Set<A>.Index._Variant<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t specialized ClosedRange<>.index(_:offsetBy:)(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        return specialized ClosedRange<>.index(_:offsetBy:)(a5, 0, a3 + 1);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = a5 - result;
    if (__OFSUB__(a5, result))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v5 >= a3)
    {
      v6 = __OFADD__(result, a3);
      result += a3;
      if (v6)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (result < a4)
      {
LABEL_17:
        __break(1u);
      }
    }

    else
    {
      if (v5 + 1 != a3)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallControlsContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CallControlsContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t LargeMultiwayControllerLayout.localParticipantViewRegularWidth.getter()
{
  if (*(v0 + 96))
  {

    LocalParticipantViewConstraintManager.regularWidth.getter();
  }

  return result;
}

uint64_t LargeMultiwayControllerLayout.__allocating_init(containingView:participantListView:participantListState:rosterCellLayoutGuide:gridView:participantGridState:controlsView:controlsState:callControlsViewController:bannerView:bannerState:bannerLayoutGuide:bannerDodgingLayoutGuide:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsView:effectsBrowserView:effectsBrowserContainerView:deviceOrientation:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:topCornerButtonsStackView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:isLocalReactionActive:usesPaddingInsteadOfSafeArea:)(void *a1, void *a2, char a3, void *a4, void *a5, char a6, void *a7, unint64_t a8, void *a9, uint64_t a10, void *a11, unsigned __int8 *a12, void *a13, void *a14, void *a15, unsigned __int8 a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, unint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, unsigned __int8 *a30, void *a31, uint64_t a32, void *a33, uint64_t a34, char a35, char a36)
{
  v39 = swift_allocObject();
  LargeMultiwayControllerLayout.init(containingView:participantListView:participantListState:rosterCellLayoutGuide:gridView:participantGridState:controlsView:controlsState:callControlsViewController:bannerView:bannerState:bannerLayoutGuide:bannerDodgingLayoutGuide:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsView:effectsBrowserView:effectsBrowserContainerView:deviceOrientation:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:topCornerButtonsStackView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:isLocalReactionActive:usesPaddingInsteadOfSafeArea:)(a1, a2, a3 & 1, a4, a5, a6 & 1, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, v41, a33, v42, a35, a36);
  return v39;
}

void *LargeMultiwayControllerLayout.init(containingView:participantListView:participantListState:rosterCellLayoutGuide:gridView:participantGridState:controlsView:controlsState:callControlsViewController:bannerView:bannerState:bannerLayoutGuide:bannerDodgingLayoutGuide:localParticipantView:localParticipantState:localParticipantAspectRatio:localParticipantButtonShelfView:localParticipantControlsView:effectsView:effectsBrowserView:effectsBrowserContainerView:deviceOrientation:participantLabelsView:bottomControlsView:oneToOneShutterButton:changeLayoutButton:topCornerButtonsStackView:captionsView:captionsState:reactionsView:reactionsState:reactionPickerTipView:reactionPickerTipState:isLocalReactionActive:usesPaddingInsteadOfSafeArea:)(void *a1, void *a2, char a3, void *a4, void *a5, char a6, void *a7, unint64_t a8, void *a9, uint64_t a10, void *a11, unsigned __int8 *a12, void *a13, void *a14, void *a15, unsigned __int8 a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, unint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, unsigned __int8 *a30, void *a31, uint64_t a32, void *a33, uint64_t a34, char a35, char a36)
{
  v261 = *a12;
  v36[4] = 0;
  v237 = v36 + 4;
  v40 = MEMORY[0x1E69E7CC0];
  v248 = *a30;
  v36[5] = 0;
  v36[6] = v40;
  v36[10] = 0;
  v276 = (v36 + 10);
  v36[11] = 0;
  v260 = v36 + 11;
  v36[12] = 0;
  v36[2] = a1;
  v277 = a1;
  [(UIView *)v277 frame];
  v36[7] = v41;
  v36[8] = v42;
  v36[9] = a23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BC4CD550;
  *(v43 + 32) = a2;
  *(v43 + 40) = a5;
  v268 = a5;
  v258 = a7;
  *(v43 + 48) = a7;
  *(v43 + 56) = a15;
  *(v43 + 64) = a18;
  *(v43 + 72) = a19;
  *(v43 + 80) = a27;
  *(v43 + 88) = a28;
  *(v43 + 96) = a31;
  v44 = a15;
  v266 = a31;
  v45 = &off_1E7FE9000;
  v271 = v44;
  v251 = a2;
  v46 = v44;
  if (a2)
  {
    v47 = a2;
    v48 = v268;
    v49 = a7;
    v50 = a7;
    v51 = a18;
    v52 = a19;
    v53 = a27;
    v54 = a28;
    [v47 setTranslatesAutoresizingMaskIntoConstraints_];
    v55 = v268;
    v45 = &off_1E7FE9000;
  }

  else
  {
    v56 = v268;
    v49 = a7;
    v57 = a7;
    v58 = a18;
    v59 = a19;
    v60 = a27;
    v61 = a28;
    v55 = v268;
  }

  [v55 v45[473]];
  [v49 v45[473]];
  [v44 v45[473]];
  if (a18)
  {
    [a18 v45[473]];
  }

  [a19 v45[473]];
  if (a27)
  {
    [a27 v45[473]];
  }

  if (a28)
  {
    [a28 v45[473]];
  }

  if (a31)
  {
    [v266 v45[473]];
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v62 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [(UIView *)v277 addLayoutGuide:v62];
  v263 = v36;
  if (a36)
  {
    v63 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
    UILayoutGuide.addConstraintsToFill(_:insets:)(v277, *MEMORY[0x1E69DC5C0]);
  }

  else
  {
    v63 = [(UIView *)v277 safeAreaLayoutGuide];
  }

  v64 = v63;
  v65 = v62;
  v66 = 0.0;
  v67 = 0.0;
  if (static Platform.current.getter())
  {
    Layout.MultiwayFaceTime.init()(v289);
    v67 = v290;
  }

  if (static Platform.current.getter())
  {
    Layout.MultiwayFaceTime.init()(v291);
    v68 = v291[0];
    Layout.MultiwayFaceTime.init()(v292);
    v66 = v68 + v293;
  }

  v69 = [v65 topAnchor];
  v70 = [(UIView *)v277 topAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:v66];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v256 = v65;
  if (Features.isICUIRedesignEnabled.getter())
  {
    v72 = objc_opt_self();
    v73 = [v72 currentDevice];
    v74 = [v73 userInterfaceIdiom];

    if (v74)
    {
      v75 = [v72 &selRef_localizedShortName + 2];
      v76 = [v75 &selRef_isAvailable];

      if (v76 != 1)
      {
        v77 = [v65 topAnchor];
        v78 = [(UIView *)v277 topAnchor];
        v79 = [v77 constraintEqualToAnchor:v78 constant:8.0];

        v71 = v79;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1BC4BA7F0;
  *(v80 + 32) = v71;
  v253 = v71;
  v81 = [v65 bottomAnchor];
  v82 = [(UILayoutGuide *)v64 bottomAnchor];
  v83 = OUTLINED_FUNCTION_205();
  v85 = [v83 v84];

  *(v80 + 40) = v85;
  v86 = [v65 trailingAnchor];
  v270 = v64;
  v87 = [(UILayoutGuide *)v64 trailingAnchor];
  if (Features.isICUIRedesignEnabled.getter())
  {
    v88 = 0.0;
  }

  else
  {
    v88 = -v67;
  }

  v89 = objc_opt_self();
  v90 = [v86 constraintEqualToAnchor:v87 constant:v88];

  *(v80 + 48) = v90;
  v91 = [v65 bottomAnchor];
  v92 = [a4 bottomAnchor];
  v93 = OUTLINED_FUNCTION_205();
  v95 = [v93 v94];

  *(v80 + 56) = v95;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v265 = v89;
  [v89 activateConstraints_];

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    v97 = [v65 trailingAnchor];
    v98 = [a4 trailingAnchor];
    v99 = OUTLINED_FUNCTION_205();
    v101 = [v99 v100];

    [v101 setActive_];
  }

  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1BC4BAC30;
  v103 = [v65 leadingAnchor];
  v104 = [(UIView *)v270 leadingAnchor];

  Features.isICUIRedesignEnabled.getter();
  v105 = OUTLINED_FUNCTION_16_0();
  v107 = [v105 v106];

  *(v102 + 32) = v107;
  v108 = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints_];

  v109 = *v276;
  *v276 = a24;
  v250 = a24;

  if (a25)
  {
    v110 = a25;
    v111 = static Platform.current.getter();
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_1BC4BA930;
    v113 = [v110 bottomAnchor];
    v114 = v270;
    v115 = [(UIView *)v270 bottomAnchor];
    v116 = OUTLINED_FUNCTION_16_0();
    v118 = [v116 v117];
    if (v111)
    {
      v119 = &selRef_centerXAnchor;
      v114 = v277;
    }

    else
    {
      v119 = &selRef_trailingAnchor;
    }

    v120 = v118;

    *(v112 + 32) = v120;
    v121 = [v110 *v119];
    v122 = [v114 *v119];
    v123 = OUTLINED_FUNCTION_16_0();
    v125 = [v123 v124];

    *(v112 + 40) = v125;
    v126 = Array._bridgeToObjectiveC()().super.isa;

    [v89 activateConstraints_];
  }

  v127 = a9;
  if (!a26)
  {
    goto LABEL_48;
  }

  v128 = a26;
  v129 = [v128 trailingAnchor];
  v130 = [(UIView *)v277 safeAreaLayoutGuide];
  v131 = [(UILayoutGuide *)v130 trailingAnchor];

  v132 = [v129 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  v295[0] = 1144750080;
  v294[0] = 1065353216;
  lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v133) = v297[0];
  [v132 setPriority_];
  v134 = [v128 trailingAnchor];
  v135 = [v268 trailingAnchor];
  Layout.MultiwayFaceTime.init()(v294);
  v136 = OUTLINED_FUNCTION_205();
  v138 = [v136 v137];

  if (Features.isICUIRedesignEnabled.getter())
  {
    v139 = [objc_opt_self() currentDevice];
    v140 = [v139 userInterfaceIdiom];

    if (v140 == 1)
    {
      v141 = [v128 trailingAnchor];
      v142 = [(UIView *)v277 trailingAnchor];
      v143 = OUTLINED_FUNCTION_205();
      v145 = [v143 v144];

      v138 = v145;
    }
  }

  v146 = [v128 centerYAnchor];
  v147 = [(UIView *)v277 centerYAnchor];
  v148 = [v146 constraintEqualToAnchor_];

  if (Features.isICUIRedesignEnabled.getter())
  {
    v149 = objc_opt_self();
    v150 = [v149 currentDevice];
    v151 = [v150 userInterfaceIdiom];

    if (!v151)
    {
      swift_beginAccess();
      if (static AmbientState.isPresented == 1 && (Features.isICUIRedesignEnabled.getter() & 1) != 0)
      {
        v152 = [v128 topAnchor];
        v153 = [(UIView *)v277 topAnchor];
        Layout.MultiwayFaceTime.init()(v295);
        v154 = [v152 constraintEqualToAnchor:v153 constant:v296];
LABEL_46:
        v157 = v154;

        v148 = v157;
        goto LABEL_47;
      }
    }

    v155 = [v149 currentDevice];
    v156 = [v155 userInterfaceIdiom];

    if (v156 == 1)
    {
      v152 = [v128 topAnchor];
      v153 = [(UIView *)v277 topAnchor];
      v154 = [v152 constraintEqualToAnchor:v153 constant:v66];
      goto LABEL_46;
    }
  }

LABEL_47:
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1BC4BA920;
  *(v158 + 32) = v138;
  *(v158 + 40) = v132;
  *(v158 + 48) = v148;
  v159 = v138;
  v160 = v132;
  v161 = v148;
  v162 = [v128 widthAnchor];
  Layout.MultiwayFaceTime.init()(v297);
  v163 = [v162 constraintEqualToConstant_];

  *(v158 + 56) = v163;
  v164 = [v128 heightAnchor];
  v165 = [v128 widthAnchor];
  v166 = [v164 constraintEqualToAnchor_];

  *(v158 + 64) = v166;
  v167 = Array._bridgeToObjectiveC()().super.isa;

  [v265 activateConstraints_];

  v127 = a9;
LABEL_48:
  if (v127)
  {
    v168 = v127;
    if (static Platform.current.getter() == 3)
    {
      v169 = a26;
      v170 = a26;
    }

    else
    {
      v169 = 0;
    }

    ObjectType = swift_getObjectType();
    v172 = v277;
    v171 = (*(a10 + 160))(v277, v169, v271, a36 & 1, ObjectType);

    v174 = v171;
  }

  else
  {
    v171 = 0;
    v172 = v277;
  }

  v288[0] = v248;
  v244 = type metadata accessor for GridViewConstraintManager();
  swift_allocObject();
  v249 = a28;
  v175 = v256;
  v176 = a4;
  v177 = a13;
  v178 = v172;
  v179 = v268;
  v257 = a27;
  v278 = GridViewConstraintManager.init(containingGuide:containingView:gridView:rosterCellLayoutGuide:changeLayoutButton:topCornerButtonsStackView:captionsState:bannerLayoutGuide:)(v175, v178, v179, v176, a27, a28, v288, v177);
  v247 = v171;
  if (v171)
  {
    v180 = v171;
  }

  else
  {
    v180 = v175;
  }

  v288[0] = v261;
  v240 = type metadata accessor for LocalParticipantViewConstraintManager();
  swift_allocObject();
  v246 = a22;
  v181 = v178;
  v182 = v271;
  v183 = v179;
  v184 = v258;
  v185 = v176;
  v272 = v177;
  v274 = v182;
  v186 = LocalParticipantViewConstraintManager.init(containingGuide:rosterCellLayoutGuide:containingView:localPIPView:controlsView:effectsBrowserContainerView:localState:bannerState:controlsState:gridView:aspectRatio:deviceOrientation:bannerLayoutGuide:)(v180, v185, v181, v182, v184, a22, a16, v288, a8, v183, a17, a23, v272);
  v263[12] = v186;

  if (a9)
  {
    v187 = swift_getObjectType();
    v188 = *(a10 + 144);
    v189 = a9;

    v188(v190, &protocol witness table for LocalParticipantViewConstraintManager, v187, a10);
  }

  v275 = v186;
  v236 = type metadata accessor for InCallControlsViewConstraintManager();
  swift_allocObject();
  v191 = v181;
  v192 = v184;
  v193 = v175;
  v264 = InCallControlsViewConstraintManager.init(containingGuide:containingView:controlsView:type:)(v193, v191, v192, 1, 2);
  if (static Platform.current.getter())
  {
    goto LABEL_60;
  }

  v195 = [objc_opt_self() currentDevice];
  v196 = [v195 userInterfaceIdiom];

  if (v196)
  {
    goto LABEL_62;
  }

  swift_beginAccess();
  if (static AmbientState.isPresented != 1)
  {
    v194 = 2;
    goto LABEL_67;
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
LABEL_60:
    v194 = 1;
  }

  else
  {
LABEL_62:
    v194 = 2;
  }

LABEL_67:
  v239 = type metadata accessor for ParticipantListViewConstraintManager();
  swift_allocObject();
  v197 = v251;
  v198 = v183;
  v199 = v192;
  v200 = v193;
  v201 = v185;
  v202 = v272;
  v252 = v197;
  v259 = v199;
  v273 = ParticipantListViewConstraintManager.init(containingGuide:rosterView:controlsView:type:bannerLayoutGuide:rosterCellLayoutGuide:gridView:)(v200, v197, v199, v194, v202, v201, v198);
  v238 = type metadata accessor for CaptionsViewConstraintManager();
  swift_allocObject();
  v203 = v191;
  v204 = v198;
  v205 = v200;
  v206 = v201;
  v207 = a29;
  v208 = a11;
  v243 = v204;
  v245 = v207;
  v269 = CaptionsViewConstraintManager.init(containingGuide:rosterCellLayoutGuide:containingView:captionsView:bannerView:gridView:)(v205, v206, v203, v207, v208, v204);
  v288[0] = 0;
  v209 = type metadata accessor for InCallBannerViewConstraintManager();
  swift_allocObject();
  v210 = v203;
  v211 = v205;
  v212 = v202;
  v213 = v208;
  v242 = a14;
  v241 = v213;
  v214 = InCallBannerViewConstraintManager.init(layoutIdiom:containingGuide:containingView:visibleGuide:bannerView:bannerDodgingGuide:)(v288, v211, v210, v212, v213, v242);
  OUTLINED_FUNCTION_3_5();
  *v260 = v214;

  if (a20 && a21)
  {
    v215 = a20;
    v216 = a21;
    v217 = _s15ConversationKit20ViewControllerLayoutPAAE25effectsConstraintManagers4with11layoutIdiom08controlsC0016localParticipantC00fC00f7BrowserC0SayAA0cG7Manager_pGSo6UIViewC_AA08MultiwaycD0C0eK0OA2NSgA2NtFZAA05LargerdE0C_Tt5B5Tm(v210, 0, v259, a15, v215, v216);

    *v237 = v217;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21ViewConstraintManager_pGMd);
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_1BC4BAA20;
  *(v218 + 56) = v244;
  *(v218 + 64) = &protocol witness table for GridViewConstraintManager;
  *(v218 + 32) = v278;
  *(v218 + 96) = v240;
  *(v218 + 104) = &protocol witness table for LocalParticipantViewConstraintManager;
  *(v218 + 72) = v275;
  v287 = v218;
  if (!a9)
  {

LABEL_76:
    v223 = OUTLINED_FUNCTION_0_112();
    *(v223 + 16) = xmmword_1BC4BA940;
    *(v223 + 56) = v236;
    *(v223 + 64) = &protocol witness table for InCallControlsViewConstraintManager;
    *(v223 + 32) = v264;

    specialized Array.append<A>(contentsOf:)(v223);
    goto LABEL_77;
  }

  v219 = OUTLINED_FUNCTION_0_112();
  *(v219 + 16) = xmmword_1BC4BA940;
  *(v219 + 56) = swift_getObjectType();
  *(v219 + 64) = *(a10 + 8);
  *(v219 + 32) = a9;
  v220 = a9;

  specialized Array.append<A>(contentsOf:)(v219);
  if (Features.isICUIRedesignEnabled.getter())
  {
    v221 = [objc_opt_self() currentDevice];
    v222 = [v221 userInterfaceIdiom];

    if (v222 == 1)
    {
      goto LABEL_76;
    }
  }

LABEL_77:
  v224 = *v260;
  if (*v260)
  {
    v225 = OUTLINED_FUNCTION_0_112();
    *(v225 + 16) = xmmword_1BC4BA940;
    *(v225 + 56) = v209;
    *(v225 + 64) = &protocol witness table for InCallBannerViewConstraintManager;
    *(v225 + 32) = v224;

    specialized Array.append<A>(contentsOf:)(v225);
  }

  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_1BC4BAA20;
  *(v226 + 56) = v239;
  *(v226 + 64) = &protocol witness table for ParticipantListViewConstraintManager;
  *(v226 + 32) = v273;
  *(v226 + 96) = v238;
  *(v226 + 104) = &protocol witness table for CaptionsViewConstraintManager;
  *(v226 + 72) = v269;

  specialized Array.append<A>(contentsOf:)(v226);
  if (a31)
  {
    v227 = type metadata accessor for ReactionsViewConstraintManager();
    swift_allocObject();
    v228 = ReactionsViewConstraintManager.init(localParticipantView:reactionsView:)(v274, v266);
    v229 = OUTLINED_FUNCTION_0_112();
    *(v229 + 16) = xmmword_1BC4BA940;
    *(v229 + 56) = v227;
    *(v229 + 64) = &protocol witness table for ReactionsViewConstraintManager;
    *(v229 + 32) = v228;
    specialized Array.append<A>(contentsOf:)(v229);
  }

  if (a33)
  {
    v230 = type metadata accessor for ReactionPickerTipViewConstraintManager();
    swift_allocObject();
    v231 = ReactionPickerTipViewConstraintManager.init(containingGuide:localParticipantView:reactionPickerTipView:)(v211, v274, a33);
    v232 = OUTLINED_FUNCTION_0_112();
    *(v232 + 16) = xmmword_1BC4BA940;
    *(v232 + 56) = v230;
    *(v232 + 64) = &protocol witness table for ReactionPickerTipViewConstraintManager;
    *(v232 + 32) = v231;
    specialized Array.append<A>(contentsOf:)(v232);
  }

  else
  {
  }

  if (a18)
  {
    v279[0] = 0;
    v233 = a18;
    v234 = static ViewControllerLayout.buttonShelfConstraintManagers(with:localParticipantView:localParticipantButtonShelfView:localParticipantControlsView:layoutIdiom:)(v210, v274, v233, a19, v279);

    v263[5] = v234;
  }

  v263[3] = v287;
  v279[0] = a3 & 1;
  v280 = a8;
  v281 = v261;
  v282 = a16;
  v283 = a6 & 1;
  v284 = 0;
  v285 = 0;
  v286 = a35 & 1;
  LargeMultiwayControllerLayout.updateLayoutWith(_:)();

  return v263;
}

uint64_t _s15ConversationKit20ViewControllerLayoutPAAE25effectsConstraintManagers4with11layoutIdiom08controlsC0016localParticipantC00fC00f7BrowserC0SayAA0cG7Manager_pGSo6UIViewC_AA08MultiwaycD0C0eK0OA2NSgA2NtFZAA05LargerdE0C_Tt5B5Tm(void *a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [a1 addLayoutGuide_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BC4BA7F0;
  v11 = [v8 topAnchor];
  v12 = [a1 safeAreaLayoutGuide];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v10 + 32) = v14;
  v15 = [v8 bottomAnchor];
  v16 = OUTLINED_FUNCTION_3_89();
  v17 = [v16 bottomAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v10 + 40) = v18;
  v19 = [v8 leadingAnchor];
  v20 = OUTLINED_FUNCTION_3_89();
  v21 = [v20 leadingAnchor];

  v22 = [v14 constraintEqualToAnchor_];
  *(v10 + 48) = v22;
  v23 = [v8 trailingAnchor];
  v24 = OUTLINED_FUNCTION_3_89();
  v25 = [v24 trailingAnchor];

  v26 = [v14 constraintEqualToAnchor_];
  *(v10 + 56) = v26;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit21ViewConstraintManager_pGMd);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BC4BAA20;
  v29 = type metadata accessor for EffectsViewConstraintManager();
  swift_allocObject();
  v30 = a4;
  v31 = a5;
  v32 = v8;
  v33 = EffectsViewConstraintManager.init(containingGuide:localParticipantView:effectsView:)(v32, a4, v31);
  *(v28 + 56) = v29;
  *(v28 + 64) = &protocol witness table for EffectsViewConstraintManager;
  *(v28 + 32) = v33;
  v43 = a2 & 1;
  v34 = type metadata accessor for EffectsBrowserViewConstraintManager();
  swift_allocObject();
  v35 = v32;
  v36 = v30;
  v37 = EffectsBrowserViewConstraintManager.init(layoutIdiom:containingGuide:effectsBrowserView:controlsView:localParticipantView:)(&v43, v35, a6, a3, a4);
  *(v28 + 96) = v34;
  *(v28 + 104) = &protocol witness table for EffectsBrowserViewConstraintManager;
  *(v28 + 72) = v37;

  return v28;
}

void LargeMultiwayControllerLayout.updateLayoutWith(_:)()
{
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_3_5();
  type metadata accessor for NSLayoutConstraint();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 deactivateConstraints_];

  OUTLINED_FUNCTION_1_97();
  *(v0 + 6) = _s15ConversationKit20ViewControllerLayoutPAAE11constraints4with11layoutState4size17deviceOrientationSaySo18NSLayoutConstraintCGSayAA0cN7Manager_pGSg_AA08Multiwayc11ConstraintsD0C07OveralleI0VSo6CGSizeVSo09CNKDeviceL0VtFZAA05LargepdE0C_Tt3B5Tm(v3, v4, v5, v6, v7, v8, v9);

  v10 = v0[7];
  v11 = v0[8];
  v12 = *(v0 + 9);

  OUTLINED_FUNCTION_1_97();
  v17 = _s15ConversationKit20ViewControllerLayoutPAAE11constraints4with11layoutState4size17deviceOrientationSaySo18NSLayoutConstraintCGSayAA0cN7Manager_pGSg_AA08Multiwayc11ConstraintsD0C07OveralleI0VSo6CGSizeVSo09CNKDeviceL0VtFZAA05LargepdE0C_Tt3B5Tm(v13, v14, v15, v16, v12, v10, v11);

  OUTLINED_FUNCTION_5_71();
  specialized Array.append<A>(contentsOf:)(v17);
  swift_endAccess();
  v18 = v0[7];
  v19 = v0[8];
  v20 = *(v0 + 9);

  OUTLINED_FUNCTION_1_97();
  v25 = _s15ConversationKit20ViewControllerLayoutPAAE11constraints4with11layoutState4size17deviceOrientationSaySo18NSLayoutConstraintCGSayAA0cN7Manager_pGSg_AA08Multiwayc11ConstraintsD0C07OveralleI0VSo6CGSizeVSo09CNKDeviceL0VtFZAA05LargepdE0C_Tt3B5Tm(v21, v22, v23, v24, v20, v18, v19);

  OUTLINED_FUNCTION_5_71();
  specialized Array.append<A>(contentsOf:)(v25);
  swift_endAccess();

  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints_];
}

uint64_t _s15ConversationKit20ViewControllerLayoutPAAE11constraints4with11layoutState4size17deviceOrientationSaySo18NSLayoutConstraintCGSayAA0cN7Manager_pGSg_AA08Multiwayc11ConstraintsD0C07OveralleI0VSo6CGSizeVSo09CNKDeviceL0VtFZAA05LargepdE0C_Tt3B5Tm(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
    return v7;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v57 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    result = v57;
    v15 = a1 + 32;
    do
    {
      v16 = result;
      outlined init with copy of IDSLookupManager(v15, v54);
      v17 = v55;
      v18 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      v49[0] = a2;
      v50 = a3;
      v53 = BYTE6(a4);
      v52 = WORD2(a4);
      v51 = a4;
      v19 = (*(v18 + 8))(v49, a5, v17, v18, a6, a7);
      __swift_destroy_boxed_opaque_existential_1(v54);
      result = v16;
      v57 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        result = v57;
      }

      *(result + 16) = v22;
      *(result + 8 * v21 + 32) = v19;
      v15 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
    v22 = *(MEMORY[0x1E69E7CC0] + 16);
    result = MEMORY[0x1E69E7CC0];
  }

  v23 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v46 = result;
  v48 = result + 32;
  v44 = v22;
  while (1)
  {
    if (v23 == v22)
    {

      return v7;
    }

    if (v23 >= *(result + 16))
    {
      break;
    }

    v24 = *(v48 + 8 * v23);
    if (v24 >> 62)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v7 >> 62;
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = result + v25;
    if (__OFADD__(result, v25))
    {
      goto LABEL_45;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v26)
      {
LABEL_22:
        __CocoaSet.count.getter();
      }

LABEL_23:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = result;
      v28 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v26)
    {
      goto LABEL_22;
    }

    v28 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v27 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_23;
    }

LABEL_24:
    ++v23;
    v29 = *(v28 + 16);
    v30 = (*(v28 + 24) >> 1) - v29;
    v31 = v28 + 8 * v29;
    if (v24 >> 62)
    {
      v33 = __CocoaSet.count.getter();
      if (v33)
      {
        v34 = v33;
        result = __CocoaSet.count.getter();
        if (v30 < result)
        {
          goto LABEL_49;
        }

        if (v34 < 1)
        {
          goto LABEL_50;
        }

        v43 = result;
        v35 = v31 + 32;
        lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A]();
        for (i = 0; i != v34; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
          v37 = specialized protocol witness for Collection.subscript.read in conformance [A](v54, i, v24);
          v39 = *v38;
          v37(v54, 0);
          *(v35 + 8 * i) = v39;
        }

        v32 = v43;
        goto LABEL_34;
      }

LABEL_38:

      v22 = v44;
      result = v46;
      if (v25 > 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_38;
      }

      if (v30 < v32)
      {
        goto LABEL_48;
      }

      type metadata accessor for NSLayoutConstraint();
      swift_arrayInitWithCopy();
LABEL_34:

      v22 = v44;
      result = v46;
      if (v32 < v25)
      {
        goto LABEL_46;
      }

      if (v32 > 0)
      {
        v40 = *(v28 + 16);
        v41 = __OFADD__(v40, v32);
        v42 = v40 + v32;
        if (v41)
        {
          goto LABEL_47;
        }

        *(v28 + 16) = v42;
      }
    }
  }

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
  __break(1u);
  return result;
}

Swift::Void __swiftcall LargeMultiwayControllerLayout.addEffectsConstraints(with:controlsView:localParticipantView:effectsView:effectsBrowserView:)(UIView *with, UIView *controlsView, UIView_optional *localParticipantView, UIView *effectsView, UIView *effectsBrowserView)
{
  *(v5 + 32) = _s15ConversationKit20ViewControllerLayoutPAAE25effectsConstraintManagers4with11layoutIdiom08controlsC0016localParticipantC00fC00f7BrowserC0SayAA0cG7Manager_pGSo6UIViewC_AA08MultiwaycD0C0eK0OA2NSgA2NtFZAA05LargerdE0C_Tt5B5Tm(with, 0, controlsView, localParticipantView, effectsView, effectsBrowserView);
}

Swift::Void __swiftcall LargeMultiwayControllerLayout.update(with:)(CGSize with)
{
  v2 = *(v1 + 96);
  if (v2)
  {
    *(v2 + 312) = with.width;
    *(v2 + 320) = with.height;
    *(v2 + 328) = 0;
  }
}

void LargeMultiwayControllerLayout.update(for:with:deviceOrientation:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a3;
  *(v6 + 64) = a4;
  *(v6 + 72) = a6;
  LargeMultiwayControllerLayout.updateLayoutWith(_:)();
}

uint64_t LargeMultiwayControllerLayout.update(localParticipantAspectRatio:layoutState:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v14[0] = *a2;
  *(v14 + 15) = *(a2 + 15);
  v4 = v2[3];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      outlined init with copy of IDSLookupManager(v6, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ViewConstraintManager_pMd);
      type metadata accessor for LocalParticipantViewConstraintManager();
      result = swift_dynamicCast();
      if (result)
      {
        v7 = v2[9];
        *v13 = v14[0];
        *&v13[15] = *(v14 + 15);
        LocalParticipantViewConstraintManager.update(aspectRatio:deviceOrientation:layoutState:)(v3, v7, v13);
      }

      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v8 = v2[5];
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + 32;

      do
      {
        outlined init with copy of IDSLookupManager(v10, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ViewConstraintManager_pMd);
        type metadata accessor for LocalParticipantControlsViewConstraintManager();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_3_5();
          v11 = *(v3 + 16);
          *(v12 + 16) = *v3;
          *(v12 + 32) = v11;
          *(v12 + 48) = *(v3 + 32);
        }

        v10 += 40;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

Swift::Void __swiftcall LargeMultiwayControllerLayout.update(remoteParticipantAspectRatio:)(CGSize remoteParticipantAspectRatio)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    height = remoteParticipantAspectRatio.height;
    width = remoteParticipantAspectRatio.width;
    v6 = v2 + 32;
    do
    {
      outlined init with copy of IDSLookupManager(v6, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ViewConstraintManager_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37CaptionsViewConstraintManagerProtocol_pMd);
      if (swift_dynamicCast())
      {
        outlined init with take of TapInteractionHandler(v9, v12);
        v7 = v13;
        v8 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v8 + 24))(v7, v8, width, height);
        __swift_destroy_boxed_opaque_existential_1(v12);
      }

      else
      {
        v10 = 0;
        memset(v9, 0, sizeof(v9));
        outlined destroy of CaptionsViewConstraintManagerProtocol?(v9);
      }

      v6 += 40;
      --v3;
    }

    while (v3);
  }
}

Swift::Void __swiftcall LargeMultiwayControllerLayout.update(isDisplayedInBanner:containingView:)(Swift::Bool isDisplayedInBanner, UIView *containingView)
{
  v3 = *(v2 + 80);
  if (v3)
  {
    v7 = v3;
    v6 = static Platform.current.getter() == 0;
    [v7 setFrame_];
  }
}

double _s15ConversationKit20ViewControllerLayoutPAAE017participantLabelsC5Frame19isDisplayedInBanner0ijK7Ambient010containingC00fgC0So6CGRectVSb_SbSo6UIViewCALtFZAA013SmallMultiwaydE0C_Tt3g5Tm(char a1, char a2, id a3, void *a4)
{
  if (a1)
  {
    [a3 bounds];
    v9 = v8;
  }

  else
  {
    if (a2)
    {
      v10 = [a3 safeAreaLayoutGuide];
    }

    else
    {
      v10 = [a3 readableContentGuide];
    }

    v11 = v10;
    [v11 layoutFrame];
    v9 = v12;
  }

  [a4 systemLayoutSizeFittingSize_];
  if (a2)
  {
    [a3 safeAreaInsets];
    v14 = v13;
    if ((a1 & 1) == 0)
    {
      return v14;
    }
  }

  else
  {
    [a3 bounds];
    v14 = floor((v15 - v9) * 0.5);
    if ((a1 & 1) == 0)
    {
      v16 = [objc_opt_self() mainScreen];
      [v16 bounds];

      [a3 safeAreaInsets];
      return v14;
    }
  }

  [a3 bounds];
  return v14;
}

Swift::Void __swiftcall LargeMultiwayControllerLayout.update(localParticipantCorner:)(ConversationKit::MultiwayViewConstraintsController::MultiwayCorner_optional localParticipantCorner)
{
  v2 = *(v1 + 96);
  if (v2)
  {
    OUTLINED_FUNCTION_3_5();
    v2[297].value = localParticipantCorner.value;
  }
}

uint64_t LargeMultiwayControllerLayout.deinit()
{

  return v0;
}

uint64_t LargeMultiwayControllerLayout.__deallocating_deinit()
{
  LargeMultiwayControllerLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of CaptionsViewConstraintManagerProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit37CaptionsViewConstraintManagerProtocol_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo18NSLayoutConstraintCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NSLayoutConstraint] and conformance [A]);
  }

  return result;
}

ConversationKit::SpamFlowController::Flow __swiftcall SpamFlowController.determineFlow()()
{
  v1 = v0;
  if (one-time initialization token for spam != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.spam);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "determine SpamFlow", v5, 2u);
    OUTLINED_FUNCTION_27();
  }

  v6 = v1[5];
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
  OUTLINED_FUNCTION_2_7();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_0_113(v11, v37);
  v13(v12);
  LOBYTE(v7) = (*(v7 + 40))(v6, v7);
  (*(v9 + 8))(v3, v6);
  if ((v7 & 1) == 0)
  {
    return 5;
  }

  outlined init with copy of IDSLookupManager((v1 + 2), v39);
  v14 = SpamFlowController.KnownCallers.init(spamCall:)(v39);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v14;
    _os_log_impl(&dword_1BBC58000, v15, v16, "determineFlow knownCallers %ld", v17, 0xCu);
    OUTLINED_FUNCTION_27();
  }

  v19 = v1[5];
  v18 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
  OUTLINED_FUNCTION_2_7();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = OUTLINED_FUNCTION_0_113(v23, v38);
  v25(v24);
  v26 = (*(v18 + 32))(v19, v18);
  (*(v21 + 8))(v15, v19);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v26 & 1;
    _os_log_impl(&dword_1BBC58000, v27, v28, "determineFlow oneOnOneUnknown %{BOOL}d", v29, 8u);
    OUTLINED_FUNCTION_27();
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  if (v26)
  {
    v33 = ConversationKit_SpamFlowController_Flow_reportAndBlock;
    if (v32)
    {
      v34 = "determineFlow 1-1 report and block ";
LABEL_23:
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BBC58000, v30, v31, v34, v35, 2u);
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    switch(v14)
    {
      case 0u:
        v33 = ConversationKit_SpamFlowController_Flow_groupBlockSome;
        if (v32)
        {
          v34 = "determineFlow groupBlockSome";
          goto LABEL_23;
        }

        break;
      case 2u:
        v33 = ConversationKit_SpamFlowController_Flow_groupIntiatorReportAndBlock;
        if (v32)
        {
          v34 = "determineFlow groupIntiatorReportAndBlock";
          goto LABEL_23;
        }

        break;
      case 3u:
        v33 = ConversationKit_SpamFlowController_Flow_knownContact;
        if (v32)
        {
          v34 = "determineFlow knownContact ";
          goto LABEL_23;
        }

        break;
      default:
        v33 = ConversationKit_SpamFlowController_Flow_groupBlockAll;
        if (v32)
        {
          v34 = "determineFlow groupBlockAll";
          goto LABEL_23;
        }

        break;
    }
  }

  return v33;
}

ConversationKit::SpamFlowController::Flow_optional __swiftcall SpamFlowController.Flow.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 6)
  {
    LOBYTE(rawValue) = 6;
  }

  return rawValue;
}

ConversationKit::SpamFlowController::Flow_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SpamFlowController.Flow@<W0>(Swift::Int *a1@<X0>, ConversationKit::SpamFlowController::Flow_optional *a2@<X8>)
{
  result.value = SpamFlowController.Flow.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SpamFlowController.Flow@<X0>(uint64_t *a1@<X8>)
{
  result = SpamFlowController.Flow.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t SpamFlowController.KnownCallers.init(spamCall:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 24))(v2, v3))
  {
    v4 = 2;
  }

  else
  {
    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    if ((*(v6 + 8))(v5, v6))
    {
      v4 = 1;
    }

    else
    {
      v7 = a1[3];
      v8 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v7);
      if ((*(v8 + 16))(v7, v8))
      {
        v4 = 0;
      }

      else
      {
        v4 = 3;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t SpamFlowController.__allocating_init(spamCall:)(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_2_7();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t SpamFlowController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized SpamFlowController.__allocating_init(spamCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = specialized SpamFlowController.init(spamCall:)(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t specialized SpamFlowController.init(spamCall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  outlined init with take of TapInteractionHandler(&v9, a2 + 16);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SpamFlowController.Flow and conformance SpamFlowController.Flow()
{
  result = lazy protocol witness table cache variable for type SpamFlowController.Flow and conformance SpamFlowController.Flow;
  if (!lazy protocol witness table cache variable for type SpamFlowController.Flow and conformance SpamFlowController.Flow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpamFlowController.Flow and conformance SpamFlowController.Flow);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpamFlowController.Flow(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpamFlowController.Flow(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

id PushToTalkLeavePillButton.init(viewModel:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit19PushToTalkViewModelC0H11ButtonStateO_GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19[-v5 - 8];
  *(v1 + OBJC_IVAR____TtC15ConversationKit25PushToTalkLeavePillButton_cancellables) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC15ConversationKit25PushToTalkLeavePillButton_viewModel) = a1;
  v7 = objc_opt_self();

  v8 = [v7 conversationKit];
  v22._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x657661654CLL;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v9._object = 0xE500000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v22);

  v20 = &type metadata for SymbolImageDescribers.ConversationControls;
  v21 = &protocol witness table for SymbolImageDescribers.ConversationControls;
  v19[0] = 16;
  if (one-time initialization token for pttLeaveButtonBanner != -1)
  {
    swift_once();
  }

  v13 = static Colors.InCallControls.pttLeaveButtonBanner;

  v14 = PillButton.init(title:symbol:stateConfiguration:context:)(v12._countAndFlagsBits, v12._object, v19, v13, 1);
  v15 = *(*a1 + 136);
  v16 = v14;
  v15();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type Published<PushToTalkViewModel.TalkButtonState>.Publisher and conformance Published<A>.Publisher();
  Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void closure #1 in PushToTalkLeavePillButton.init(viewModel:)(_BYTE *a1)
{
  if ((*a1 & 0xFE) == 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v2 = Strong;
    [Strong setEnabled_];
  }

  else
  {
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      goto LABEL_7;
    }

    v2 = v3;
    [v3 setEnabled_];
  }

LABEL_7:
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsUpdateConfiguration];
  }
}

id PushToTalkLeavePillButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkLeavePillButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit25PushToTalkLeavePillButton_cancellables) = MEMORY[0x1E69E7CD0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t PushToTalkLeavePillButton.__ivar_destroyer()
{
}

id PushToTalkLeavePillButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkLeavePillButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path getter for CaptionsViewDragController.dragEnabled : CaptionsViewDragController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

id CaptionsViewDragController.dragEnabled.setter(char a1)
{
  OUTLINED_FUNCTION_6_0();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return CaptionsViewDragController.dragEnabled.didset(v3);
}

id CaptionsViewDragController.dragEnabled.didset(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    return [*(v1 + 72) setEnabled_];
  }

  return result;
}

void (*CaptionsViewDragController.dragEnabled.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_4_0();
  *(v3 + 32) = *(v1 + 16);
  return CaptionsViewDragController.dragEnabled.modify;
}

void CaptionsViewDragController.dragEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  CaptionsViewDragController.dragEnabled.setter(*(*a1 + 32));

  free(v1);
}

uint64_t key path getter for CaptionsViewDragController.delegate : CaptionsViewDragController@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CaptionsViewDragController.delegate : CaptionsViewDragController(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CaptionsViewDragController.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CaptionsViewDragController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return CaptionsViewDragController.delegate.modify;
}

void CaptionsViewDragController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
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

  free(v3);
}

uint64_t CaptionsViewDragController.isDragging.setter(char a1)
{
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + 64) = a1;
  return result;
}

uint64_t CaptionsViewDragController.__allocating_init(captionsView:)(void *a1)
{
  v2 = swift_allocObject();
  CaptionsViewDragController.init(captionsView:)(a1);
  return v2;
}

uint64_t CaptionsViewDragController.init(captionsView:)(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  swift_unknownObjectWeakAssign();
  [*(v1 + 72) addTarget:v1 action:sel_handlePanGestureRecognizer_];
  [*(v1 + 72) setEnabled_];
  [a1 addGestureRecognizer_];

  return v1;
}

Swift::Void __swiftcall CaptionsViewDragController.handlePanGestureRecognizer(_:)(UIPanGestureRecognizer *a1)
{
  switch([(UIPanGestureRecognizer *)a1 state])
  {
    case 0uLL:
      return;
    case 1uLL:
      Strong = swift_unknownObjectWeakLoadStrong();
      [(UIPanGestureRecognizer *)a1 locationInView:Strong];

      v12 = OUTLINED_FUNCTION_3_90();
      CaptionsViewDragController.handleDragDidBegin(with:)(__PAIR128__(v13, *&v12));
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        goto LABEL_14;
      }

      v15 = 0;
      goto LABEL_17;
    case 2uLL:
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
LABEL_14:
        v14 = v6;
        v15 = [v6 superview];
      }

      else
      {
        v15 = 0;
      }

LABEL_17:
      [(UIPanGestureRecognizer *)a1 locationInView:v15];

      v16 = OUTLINED_FUNCTION_3_90();

      CaptionsViewDragController.handleDragDidMove(to:)(__PAIR128__(v17, *&v16));
      break;
    case 3uLL:
    case 4uLL:
    case 5uLL:
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;
        v18 = [v2 superview];

        if (v18)
        {
          [(UIPanGestureRecognizer *)a1 velocityInView:v18];
          CaptionsViewDragController.handleDragDidEnd(with:)(__PAIR128__(v5, v4));
        }
      }

      break;
    default:
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1BC4BA940;
      [(UIPanGestureRecognizer *)a1 state];
      type metadata accessor for UIGestureRecognizerState(0);
      v8 = String.init<A>(reflecting:)();
      v10 = v9;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      os_log(_:dso:log:type:_:)();

      break;
  }
}

Swift::Void __swiftcall CaptionsViewDragController.handleDragDidBegin(with:)(CGPoint with)
{
  v4 = OUTLINED_FUNCTION_4_80();
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_4_0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      *(v1 + 48) = v3;
      *(v1 + 56) = v2;
      swift_beginAccess();
      *(v1 + 64) = 1;
      OUTLINED_FUNCTION_8_62();
      OUTLINED_FUNCTION_8_62();
      swift_getObjectType();
      v6 = OUTLINED_FUNCTION_3_90();
      v7(v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CaptionsViewDragController.handleDragDidMove(to:)(CGPoint to)
{
  v2 = OUTLINED_FUNCTION_4_80();
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_4_0();
    if (*(v1 + 64) == 1 && (v4 = [v3 superview]) != 0)
    {
      v5 = v4;
      OUTLINED_FUNCTION_4_5();
      if (swift_unknownObjectWeakLoadStrong())
      {
        [v5 frame];
        CGRectGetWidth(v11);
        [v3 frame];
        CGRectGetWidth(v12);
        [objc_msgSend(v5 safeAreaLayoutGuide)];
        OUTLINED_FUNCTION_7_62();
        v13.origin.x = OUTLINED_FUNCTION_5_72();
        CGRectGetMinY(v13);
        [objc_msgSend(v5 safeAreaLayoutGuide)];
        OUTLINED_FUNCTION_7_62();
        v14.origin.x = OUTLINED_FUNCTION_5_72();
        CGRectGetMaxY(v14);
        [v3 frame];
        CGRectGetHeight(v15);
        [v3 frame];
        v6 = OUTLINED_FUNCTION_3_90();
        [v7 v8];
        [v3 center];
        [v3 center];
        swift_getObjectType();
        v9 = OUTLINED_FUNCTION_3_90();
        v10(v9);
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      v5 = v3;
    }
  }

  OUTLINED_FUNCTION_6_63();
  *(v1 + 64) = 0;
}

Swift::Void __swiftcall CaptionsViewDragController.handleDragDidEnd(with:)(CGPoint with)
{
  v4 = OUTLINED_FUNCTION_4_80();
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_4_0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v1 + 32);
      OUTLINED_FUNCTION_6_0();
      if (*(v1 + 64))
      {
        *(v1 + 64) = 0;
        OUTLINED_FUNCTION_8_62();
        v8 = v3 * 0.3 + v7;
        OUTLINED_FUNCTION_8_62();
        v10 = v2 * 0.3 + v9;
        ObjectType = swift_getObjectType();
        (*(v6 + 24))(v1, ObjectType, v6, v8, v10);

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  CaptionsViewDragController.dragEnabled.setter(0);
  OUTLINED_FUNCTION_6_63();
  *(v1 + 64) = 0;
}

uint64_t CaptionsViewDragController.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 24);
  MEMORY[0x1BFB23F10](v0 + 40);

  return v0;
}

uint64_t CaptionsViewDragController.__deallocating_deinit()
{
  CaptionsViewDragController.deinit();

  return swift_deallocClassInstance();
}