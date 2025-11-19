uint64_t protocol witness for ConversationManagerClientProtocol.stopAdvertisingGroupActivity(_:) in conformance ConversationManagerClient(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](protocol witness for ConversationManagerClientProtocol.stopAdvertisingGroupActivity(_:) in conformance ConversationManagerClient, 0, 0);
}

uint64_t protocol witness for ConversationManagerClientProtocol.stopAdvertisingGroupActivity(_:) in conformance ConversationManagerClient()
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

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000020, 0x80000001AEE31770, closure #1 in ConversationManagerClient.stopAdvertisingGroupActivity(_:)partial apply, v1, v4);
}

uint64_t protocol witness for ActivitySessionContainerProvider.topicCategory(groupUUID:name:) in conformance ConversationManagerClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = *v3;
  (*(v8 + 16))(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v8 + 32))(v12 + v11, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v13 = (v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = v10;

  v20[1] = Future.init(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<PubSubClient.TopicCategory, Never> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMd, &_s7Combine6FutureCy14CopresenceCore12PubSubClientC13TopicCategoryOs5NeverOGMR);
  v18 = Publisher.eraseToAnyPublisher()();

  return v18;
}

Swift::Void __swiftcall ConversationManagerClient.updateConversationContainers(conversationContainersByGroupUUID:)(Swift::OpaquePointer conversationContainersByGroupUUID)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[direct field offset for XPCClient.queue];
  v12 = swift_allocObject();
  v12[2]._rawValue = v1;
  v12[3]._rawValue = conversationContainersByGroupUUID._rawValue;
  aBlock[4] = partial apply for closure #1 in ConversationManagerClient.updateConversationContainers(conversationContainersByGroupUUID:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_101;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t closure #1 in ConversationManagerClient.updateConversationContainers(conversationContainersByGroupUUID:)(uint64_t a1)
{
  v1 = *(a1 + direct field offset for ConversationManagerClient.publishers);

  CurrentValueSubject.send(_:)();
}

void ConversationManagerClient.requestEndpoint(with:activitySessionUUID:activity:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v40 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.client);
  (*(v10 + 16))(v13, a3, v9);

  v15 = Logger.logObject.getter();
  v16 = a2;
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v15, v17);
  v37 = a3;
  v38 = v16;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = a5;
    v41 = v35;
    *v19 = 136315394;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v16, &v41);
    *(v19 + 12) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v10 + 8))(v13, v9);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v41);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1AEB26000, v15, v17, "Requesting endpoint for identifier=%s activitySessionUUID=%s", v19, 0x16u);
    v24 = v35;
    swift_arrayDestroy();
    a5 = v36;
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  else
  {

    v25 = (*(v10 + 8))(v13, v9);
  }

  v26 = (*((*MEMORY[0x1E69E7D40] & *v39) + 0x148))(v25);
  if (*(v26 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v38), (v28 & 1) != 0))
  {
    v29 = (*(v26 + 56) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v33 = (*(v31 + 16))(v37, a4, ObjectType, v31);
    a5();
    swift_unknownObjectRelease();
  }

  else
  {

    (a5)(0);
  }
}

uint64_t specialized EntitlementValueProviding.isEntitledToUsePublicAPI.getter()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x1B270FF70](0xD000000000000021, 0x80000001AEE2ED20);
    v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

    if (v3)
    {
      swift_getObjectType();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if ((swift_dynamicCast() & 1) == 0 || (v4 = v13, v13 == 2))
  {
    v4 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1B270FF70](0xD00000000000001ELL, 0x80000001AEE2ED00);
    v8 = SecTaskCopyValueForEntitlement(v6, v7, 0);

    if (v8)
    {
      swift_getObjectType();
    }
  }

  v9 = swift_dynamicCast();
  v10 = v13;
  if (!v9)
  {
    v10 = 2;
  }

  if (v4 & 1) != 0 || v10 != 2 && (v10)
  {
    return 1;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  return *v12;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  specialized Set.subscript.getter(a1, a2, a3, a4, type metadata accessor for AddressableMember);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
}

{
  specialized Set.subscript.getter(a1, a2, a3, a4, type metadata accessor for ActivitySession);
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B27109F0](a1, a2, v11);
      type metadata accessor for NSObject(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for NSObject(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v19;
    v12 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B27109F0](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v17;
    v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

_OWORD *specialized Dictionary.subscript.getter(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 16 * a2);

    swift_unknownObjectRetain();
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  return closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(v2, v3, v4);
}

uint64_t objectdestroy_73Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in ConversationManagerClient.includeMetricsReport(_:conversationUUID:)(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v9[2] = *(v2 + 24);
  v9[3] = v7;
  return specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(a1, v9, a2, 0, &block_descriptor_223, &_s14CopresenceCore26ConversationManagerXPCHost_pMd, &_s14CopresenceCore26ConversationManagerXPCHost_pMR);
}

uint64_t dispatch thunk of ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ConversationManagerClientProtocol.advertiseGroupActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ConversationManagerClientProtocol.stopAdvertisingGroupActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v11(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for ConversationManagerClient.Publishers(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ConversationManagerClient.Publishers(uint64_t result, int a2, int a3)
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

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void specialized ConversationManagerClient.requestEndpoint(with:activitySessionUUID:activity:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v41 = a4;
  v42 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.client);
  (*(v11 + 16))(v14, a3, v10);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v40 = a3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v38 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = a6;
    v22 = v21;
    v43 = v21;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, a2, &v43);
    *(v20 + 12) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v11 + 8))(v14, v10);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v43);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_1AEB26000, v16, v17, "Requesting endpoint for identifier=%s activitySessionUUID=%s", v20, 0x16u);
    swift_arrayDestroy();
    v27 = v22;
    a6 = v39;
    MEMORY[0x1B27120C0](v27, -1, -1);
    v28 = v20;
    a5 = v38;
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  else
  {

    v29 = (*(v11 + 8))(v14, v10);
  }

  v30 = (*((*MEMORY[0x1E69E7D40] & *a5) + 0x148))(v29);
  if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v42, a2), (v32 & 1) != 0))
  {
    v33 = (*(v30 + 56) + 16 * v31);
    v34 = *v33;
    v35 = v33[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v37 = (*(v35 + 16))(v40, v41, ObjectType, v35);
    (*(a6 + 16))(a6, v37);
    swift_unknownObjectRelease();
  }

  else
  {

    (*(a6 + 16))(a6, 0);
  }
}

uint64_t objectdestroy_44Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(a1, a2, v7, v2 + v6, v9, v10);
}

void partial apply for closure #1 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v4 setDownlinkMuted:v2 forRemoteParticipantsInConversationWithUUID:isa];
}

void partial apply for closure #2 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  closure #2 in closure #1 in ConversationManagerClient.setDownlinkMuted(_:forRemoteParticipantsInConversationWithUUID:)(a1, v4, v5);
}

void partial apply for closure #1 in closure #1 in ConversationManagerClient.kickMember(_:conversationUUID:)(void **a1, SEL *a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v6 *a2];
}

uint64_t partial apply for closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR) - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(v5, v6, v0 + v2, v7);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR) - 8) + 80);
  v4 = *(v1 + 16);

  return closure #2 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in ConversationManagerClient.createActivitySession(with:onConversationWithUUID:)()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

void partial apply for closure #1 in closure #1 in ConversationManagerClient.addRemoteMembers(_:toConversationWithUUID:)(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  closure #1 in closure #1 in ConversationManagerClient.addRemoteMembers(_:toConversationWithUUID:)(a1);
}

void partial apply for closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  closure #1 in closure #1 in ConversationManagerClient.topicCategory(groupUUID:name:)(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t objectdestroy_198Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationManagerClient.stopAdvertisingGroupActivity(_:)(const char *a1, void (*a2)(uint64_t *))
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  return closure #1 in closure #1 in ConversationManagerClient.advertiseGroupActivity(_:)(*(v2 + 16), v2 + v6, v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80)), a1, a2);
}

uint64_t objectdestroy_171Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

void partial apply for closure #1 in closure #1 in ConversationManagerClient.includeMetricsReport(_:conversationUUID:)(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  closure #1 in closure #1 in ConversationManagerClient.includeMetricsReport(_:conversationUUID:)(a1);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_97Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t one-time initialization function for latencyLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static SharePlayLatencyLogger.latencyLogger);
  __swift_project_value_buffer(v0, static SharePlayLatencyLogger.latencyLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for isEnabled()
{
  result = _TUIsInternalInstall();
  static SharePlayLatencyLogger.isEnabled = result;
  return result;
}

uint64_t one-time initialization function for signposter(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t, unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD00000000000001ELL, 0x80000001AEE31D40, 0xD000000000000016, 0x80000001AEE0AD40);
}

unint64_t SharePlayLatencyLogger.Event.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v5 = 0xD000000000000014;
    if (v1 == 10)
    {
      v5 = 0xD000000000000021;
    }

    if (v1 == 9)
    {
      v5 = 0xD000000000000023;
    }

    v6 = 0xD000000000000017;
    v7 = 0xD00000000000001CLL;
    if (v1 != 7)
    {
      v7 = 0xD00000000000001ELL;
    }

    if (v1 != 6)
    {
      v6 = v7;
    }

    if (*v0 <= 8u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x5F6E6F6973736573;
    v3 = 0xD00000000000002DLL;
    if (v1 == 4)
    {
      v3 = 0xD000000000000023;
    }

    if (v1 == 3)
    {
      v3 = 0xD000000000000014;
    }

    if (v1 != 1)
    {
      v2 = 0xD000000000000017;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000017;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

const char *SharePlayLatencyLogger.Event.signpostName.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = "shareplay_latency_activity_authorization_notification";
    v8 = "shareplay_latency_launch_authorization_notification";
    if (v1 != 10)
    {
      v8 = "shareplay_latency_replace_notification";
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = "shareplay_latency_fetch_latest_containers";
    v10 = "shareplay_latency_send_containers_to_observers";
    if (v1 != 7)
    {
      v10 = "shareplay_latency_received_notification_response";
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = "shareplay_latency_activity_initialization";
    v3 = "shareplay_latency_app_received_session";
    v4 = "shareplay_latency_observer_requested_container_update";
    if (v1 != 4)
    {
      v4 = "shareplay_latency_container_provider_requested_container_update";
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = "shareplay_latency_session_join";
    if (v1 != 1)
    {
      v5 = "shareplay_latency_received_remote_session";
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t SharePlayLatencyLogger.Event.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD000000000000013;
      if (a1 == 10)
      {
        v6 = 0xD00000000000001FLL;
      }

      if (a1 == 9)
      {
        return 0xD000000000000021;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      v5 = 0xD000000000000019;
      if (a1 != 7)
      {
        v5 = 0xD00000000000001CLL;
      }

      if (a1 == 6)
      {
        return 0xD000000000000015;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v1 = 0x4A6E6F6973736573;
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000020;
    if (a1 != 4)
    {
      v3 = 0xD000000000000029;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0xD000000000000015;
    }

    if (!a1)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SharePlayLatencyLogger.Event.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SharePlayLatencyLogger.Event.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys(uint64_t a1)
{
  LatestContainersCodingKeys = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, LatestContainersCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys(uint64_t a1)
{
  LatestContainersCodingKeys = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, LatestContainersCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharePlayLatencyLogger.Event.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO29ReplaceNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO29ReplaceNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO41LaunchAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO41LaunchAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO43ActivityAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO43ActivityAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO38ReceivedNotificationResponseCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO38ReceivedNotificationResponseCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO35SendContainersToObserversCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO35SendContainersToObserversCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31FetchLatestContainersCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31FetchLatestContainersCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v57 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO0c17ProviderRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO0c17ProviderRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v70 = *(v71 - 8);
  v21 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v57 - v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO017ObserverRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO017ObserverRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v67 = *(v68 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v57 - v24;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO28AppReceivedSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO28AppReceivedSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v64 = *(v65 - 8);
  v25 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v57 - v26;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31ReceivedRemoteSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31ReceivedRemoteSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v61 = *(v62 - 8);
  v27 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v57 - v28;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO21SessionJoinCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO21SessionJoinCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v58 = *(v59 - 8);
  v29 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v31 = &v57 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO32ActivityInitializationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO32ActivityInitializationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v57 = *(v32 - 8);
  v33 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v57 - v34;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO10CodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO10CodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v36 = *(v91 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v39 = &v57 - v38;
  v40 = *v1;
  v41 = a1;
  v43 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(v41, v43);
  lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys();
  v90 = v39;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v44 = (v36 + 8);
  if (v40 > 5)
  {
    if (v40 > 8)
    {
      if (v40 == 9)
      {
        v101 = 9;
        lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys();
        v48 = v81;
        v50 = v90;
        v49 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v52 = v82;
        v51 = v83;
      }

      else if (v40 == 10)
      {
        v102 = 10;
        lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys();
        v48 = v84;
        v50 = v90;
        v49 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v52 = v85;
        v51 = v86;
      }

      else
      {
        v103 = 11;
        lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys();
        v48 = v87;
        v50 = v90;
        v49 = v91;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v52 = v88;
        v51 = v89;
      }
    }

    else if (v40 == 6)
    {
      v98 = 6;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys();
      v48 = v72;
      v50 = v90;
      v49 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v52 = v73;
      v51 = v74;
    }

    else if (v40 == 7)
    {
      v99 = 7;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys();
      v48 = v75;
      v50 = v90;
      v49 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v52 = v76;
      v51 = v77;
    }

    else
    {
      v100 = 8;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys();
      v48 = v78;
      v50 = v90;
      v49 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v52 = v79;
      v51 = v80;
    }

    (*(v52 + 8))(v48, v51);
  }

  else if (v40 > 2)
  {
    if (v40 == 3)
    {
      v95 = 3;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys();
      v54 = v63;
      v50 = v90;
      v49 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v64 + 8))(v54, v65);
    }

    else if (v40 == 4)
    {
      v96 = 4;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys();
      v53 = v66;
      v50 = v90;
      v49 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v67 + 8))(v53, v68);
    }

    else
    {
      v97 = 5;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys();
      v56 = v69;
      v50 = v90;
      v49 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v70 + 8))(v56, v71);
    }
  }

  else if (v40)
  {
    if (v40 == 1)
    {
      v93 = 1;
      lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys();
      v45 = v90;
      v46 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v58 + 8))(v31, v59);
      return (*v44)(v45, v46);
    }

    v94 = 2;
    lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys();
    v55 = v60;
    v50 = v90;
    v49 = v91;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v61 + 8))(v55, v62);
  }

  else
  {
    v92 = 0;
    lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys();
    v50 = v90;
    v49 = v91;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v57 + 8))(v35, v32);
  }

  return (*v44)(v50, v49);
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys);
  }

  return result;
}

Swift::Int SharePlayLatencyLogger.Event.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t SharePlayLatencyLogger.Event.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO29ReplaceNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO29ReplaceNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v104 = &v69[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO41LaunchAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO41LaunchAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v69[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO43ActivityAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO43ActivityAuthorizationNotificationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v92 = *(v9 - 8);
  v93 = v9;
  v10 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v69[-v11];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO38ReceivedNotificationResponseCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO38ReceivedNotificationResponseCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v90 = *(v91 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v102 = &v69[-v13];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO35SendContainersToObserversCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO35SendContainersToObserversCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v88 = *(v89 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v101 = &v69[-v15];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31FetchLatestContainersCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31FetchLatestContainersCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v86 = *(v87 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v107 = &v69[-v17];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO0c17ProviderRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO0c17ProviderRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v84 = *(v85 - 8);
  v18 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v99 = &v69[-v19];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO017ObserverRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO017ObserverRequestedC16UpdateCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v82 = *(v83 - 8);
  v20 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v98 = &v69[-v21];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO28AppReceivedSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO28AppReceivedSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v81 = *(v80 - 8);
  v22 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v106 = &v69[-v23];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31ReceivedRemoteSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO31ReceivedRemoteSessionCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v79 = *(v78 - 8);
  v24 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v105 = &v69[-v25];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO21SessionJoinCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO21SessionJoinCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v76 = *(v77 - 8);
  v26 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v28 = &v69[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO32ActivityInitializationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO32ActivityInitializationCodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v75 = *(v29 - 8);
  v30 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v69[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO10CodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore22SharePlayLatencyLoggerV5EventO10CodingKeys33_0D82DAE90424A913F6E039A729B5EF2CLLOGMR);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v69[-v36];
  v38 = a1[3];
  v39 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.CodingKeys and conformance SharePlayLatencyLogger.Event.CodingKeys();
  v40 = v109;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v40)
  {
    v71 = v29;
    v72 = v28;
    v41 = v105;
    v42 = v106;
    v109 = v34;
    v44 = v107;
    v43 = v108;
    v74 = v33;
    v73 = v37;
    v45 = KeyedDecodingContainer.allKeys.getter();
    if (*(v45 + 16) == 1)
    {
      v46 = *(v45 + 32);
      if (v46 != 12)
      {
        v70 = *(v45 + 32);
        if (v46 > 5)
        {
          if (v46 > 8)
          {
            v57 = v109;
            v58 = v74;
            v59 = v73;
            if (v46 == 9)
            {
              v120 = 9;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityAuthorizationNotificationCodingKeys();
              v65 = v100;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v92 + 8))(v65, v93);
            }

            else if (v46 == 10)
            {
              v121 = 10;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.LaunchAuthorizationNotificationCodingKeys();
              v62 = v103;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v94 + 8))(v62, v95);
            }

            else
            {
              v122 = 11;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys and conformance SharePlayLatencyLogger.Event.ReplaceNotificationCodingKeys();
              v68 = v104;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v96 + 8))(v68, v97);
            }
          }

          else
          {
            v57 = v109;
            v58 = v74;
            v59 = v73;
            if (v46 == 6)
            {
              v117 = 6;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys and conformance SharePlayLatencyLogger.Event.FetchLatestContainersCodingKeys();
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v86 + 8))(v44, v87);
            }

            else if (v46 == 7)
            {
              v118 = 7;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys and conformance SharePlayLatencyLogger.Event.SendContainersToObserversCodingKeys();
              v60 = v101;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v88 + 8))(v60, v89);
            }

            else
            {
              v119 = 8;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedNotificationResponseCodingKeys();
              v66 = v102;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v90 + 8))(v66, v91);
            }
          }
        }

        else
        {
          if (v46 <= 2)
          {
            if (v46)
            {
              if (v46 == 1)
              {
                v112 = 1;
                lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.SessionJoinCodingKeys and conformance SharePlayLatencyLogger.Event.SessionJoinCodingKeys();
                v47 = v72;
                v48 = v74;
                v49 = v73;
                KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
                (*(v76 + 8))(v47, v77);
              }

              else
              {
                v113 = 2;
                lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys and conformance SharePlayLatencyLogger.Event.ReceivedRemoteSessionCodingKeys();
                v48 = v74;
                v49 = v73;
                KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
                (*(v79 + 8))(v41, v78);
              }

              (*(v109 + 8))(v49, v48);
            }

            else
            {
              v111 = 0;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys and conformance SharePlayLatencyLogger.Event.ActivityInitializationCodingKeys();
              v63 = v74;
              v64 = v73;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v75 + 8))(v32, v71);
              (*(v109 + 8))(v64, v63);
            }

            goto LABEL_32;
          }

          v57 = v109;
          if (v46 == 3)
          {
            v114 = 3;
            lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys and conformance SharePlayLatencyLogger.Event.AppReceivedSessionCodingKeys();
            v58 = v74;
            v59 = v73;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v81 + 8))(v42, v80);
          }

          else
          {
            v58 = v74;
            v59 = v73;
            if (v46 == 4)
            {
              v115 = 4;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ObserverRequestedContainerUpdateCodingKeys();
              v61 = v98;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v82 + 8))(v61, v83);
            }

            else
            {
              v116 = 5;
              lazy protocol witness table accessor for type SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys and conformance SharePlayLatencyLogger.Event.ContainerProviderRequestedContainerUpdateCodingKeys();
              v67 = v99;
              KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              (*(v84 + 8))(v67, v85);
            }
          }
        }

        (*(v57 + 8))(v59, v58);
LABEL_32:
        swift_unknownObjectRelease();
        *v43 = v70;
        return __swift_destroy_boxed_opaque_existential_1Tm(v110);
      }
    }

    v50 = type metadata accessor for DecodingError();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v52 = &type metadata for SharePlayLatencyLogger.Event;
    v54 = v74;
    v55 = v73;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    (*(v109 + 8))(v55, v54);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v110);
}

uint64_t SharePlayLatencyLogger.Interval.EnabledState.activityIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SharePlayLatencyLogger.Interval.EnabledState.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0) + 24);
  v4 = type metadata accessor for ContinuousClock.Instant();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SharePlayLatencyLogger.Interval.EnabledState.signpostState.getter()
{
  v1 = *(v0 + *(type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0) + 28));
}

uint64_t SharePlayLatencyLogger.Interval.EnabledState.signpostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0) + 32);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SharePlayLatencyLogger.Interval.EnabledState.init(event:activityIdentifier:startTime:signpostState:signpostID:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  v11 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v12 = v11[6];
  v13 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v13 - 8) + 32))(a7 + v12, a4, v13);
  *(a7 + v11[7]) = a5;
  v14 = v11[8];
  v15 = type metadata accessor for OSSignpostID();
  v16 = *(*(v15 - 8) + 32);

  return v16(a7 + v14, a6, v15);
}

uint64_t one-time initialization function for disabled()
{
  v0 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  __swift_allocate_value_buffer(v0, static SharePlayLatencyLogger.Interval.disabled);
  v1 = __swift_project_value_buffer(v0, static SharePlayLatencyLogger.Interval.disabled);
  v2 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t SharePlayLatencyLogger.Interval.disabled.unsafeMutableAddressor()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SharePlayLatencyLogger.Interval(0);

  return __swift_project_value_buffer(v0, static SharePlayLatencyLogger.Interval.disabled);
}

uint64_t static SharePlayLatencyLogger.Interval.disabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v3 = __swift_project_value_buffer(v2, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  return outlined init with copy of SharePlayLatencyLogger.Interval.State(v3, a1, type metadata accessor for SharePlayLatencyLogger.Interval);
}

uint64_t outlined init with copy of SharePlayLatencyLogger.Interval.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static SharePlayLatencyLogger.Interval.disabled.setter(uint64_t a1)
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v3 = __swift_project_value_buffer(v2, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  outlined assign with copy of SharePlayLatencyLogger.Interval(a1, v3);
  swift_endAccess();
  return outlined destroy of SharePlayLatencyLogger.Interval(a1, type metadata accessor for SharePlayLatencyLogger.Interval);
}

uint64_t outlined assign with copy of SharePlayLatencyLogger.Interval(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static SharePlayLatencyLogger.Interval.disabled.modify())()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  __swift_project_value_buffer(v0, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

uint64_t key path getter for static SharePlayLatencyLogger.Interval.disabled : SharePlayLatencyLogger.Interval.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v3 = __swift_project_value_buffer(v2, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  return outlined init with copy of SharePlayLatencyLogger.Interval.State(v3, a1, type metadata accessor for SharePlayLatencyLogger.Interval);
}

uint64_t key path setter for static SharePlayLatencyLogger.Interval.disabled : SharePlayLatencyLogger.Interval.Type(uint64_t a1)
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v3 = __swift_project_value_buffer(v2, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  outlined assign with copy of SharePlayLatencyLogger.Interval(a1, v3);
  return swift_endAccess();
}

uint64_t SharePlayLatencyLogger.Interval.init(for:activityIdentifier:startTime:signpostState:signpostID:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = *a1;
  *(v19 + 1) = a2;
  *(v19 + 2) = a3;
  v20 = *(v17 + 24);
  v21 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v21 - 8) + 32))(&v19[v20], a4, v21);
  *&v19[*(v14 + 28)] = a5;
  v22 = *(v14 + 32);
  v23 = type metadata accessor for OSSignpostID();
  (*(*(v23 - 8) + 32))(&v19[v22], a6, v23);
  outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(v19, a7);
  return (*(v15 + 56))(a7, 0, 1, v14);
}

uint64_t outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v7 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v19 = type metadata accessor for ContinuousClock.Instant();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    v59 = v22;
    v60 = v21;
    v58 = v24;
    swift_once();
    v24 = v58;
    v22 = v59;
    v21 = v60;
  }

  if ((static SharePlayLatencyLogger.isEnabled & 1) == 0)
  {
    goto LABEL_10;
  }

  v62 = v25;
  v59 = v22;
  v60 = v21;
  v55 = v13;
  v57 = a2;
  v58 = v24;
  static ContinuousClock.now.getter();
  v26 = one-time initialization token for signposter;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v27, static SharePlayLatencyLogger.signposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v65 = v62;
  v28 = SharePlayLatencyLogger.Event.signpostName.getter();
  v30 = v29;
  swift_bridgeObjectRetain_n();
  v31 = OSSignposter.logHandle.getter();
  v53 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  v56 = v12;
  v54 = v7;
  if ((result & 1) == 0)
  {
    swift_bridgeObjectRelease_n();

    v35 = v57;
    v36 = a3;
    v37 = v63;
LABEL_19:
    v46 = v55;
    v45 = v56;
    (*(v55 + 16))(v61, v18, v56);
    v47 = type metadata accessor for OSSignpostIntervalState();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    v50 = OSSignpostIntervalState.init(id:isOpen:)();
    *v11 = v62;
    *(v11 + 1) = v35;
    *(v11 + 2) = v36;
    v51 = v54;
    (*(v59 + 32))(&v11[*(v54 + 24)], v58, v60);
    *&v11[*(v51 + 28)] = v50;
    (*(v46 + 32))(&v11[*(v51 + 32)], v18, v45);
    outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(v11, v37);
    (*(v8 + 56))(v37, 0, 1, v51);
  }

  v52 = v8;
  if ((v30 & 1) == 0)
  {

    if (!v28)
    {
      __break(1u);
LABEL_10:
      if (one-time initialization token for disabled != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
      v34 = __swift_project_value_buffer(v33, static SharePlayLatencyLogger.Interval.disabled);
      swift_beginAccess();
      outlined init with copy of SharePlayLatencyLogger.Interval.State(v34, v63, type metadata accessor for SharePlayLatencyLogger.Interval);
    }

    goto LABEL_18;
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {

      v28 = v66;
LABEL_18:
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v66[0] = v39;
      *v38 = 136315394;
      v64 = v62;
      v40 = SharePlayLatencyLogger.Event.description.getter();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v66);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v35 = v57;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, a3, v66);

      *(v38 + 14) = v43;
      v44 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1AEB26000, v31, v53, v44, v28, "Begin interval %s for %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v39, -1, -1);
      MEMORY[0x1B27120C0](v38, -1, -1);

      v36 = a3;
      v37 = v63;
      v8 = v52;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v78 = v11;
  v79 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v68 - v17;
  v19 = type metadata accessor for ContinuousClock.Instant();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    v75 = v21;
    v67 = v22;
    swift_once();
    v22 = v67;
    v21 = v75;
  }

  if (static SharePlayLatencyLogger.isEnabled == 1)
  {
    v72 = v22;
    v74 = v24;
    v75 = v21;
    v25 = static ContinuousClock.now.getter();
    v76 = a2(v25);
    v27 = v26;
    if (one-time initialization token for signposter != -1)
    {
      swift_once();
    }

    v73 = v7;
    v28 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v28, static SharePlayLatencyLogger.signposter);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v29 = v79;
    v77 = v27;
    if (!v27)
    {
      v83 = v80;
      v38 = SharePlayLatencyLogger.Event.signpostName.getter();
      v40 = v39;
      v41 = OSSignposter.logHandle.getter();
      LODWORD(v71) = static os_signpost_type_t.begin.getter();
      result = OS_os_log.signpostsEnabled.getter();
      if (result)
      {
        v70 = a3;
        if (v40)
        {
          if (v38 >> 32)
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if ((v38 & 0xFFFFF800) == 0xD800)
          {
LABEL_40:
            __break(1u);
            return result;
          }

          if (v38 >> 16 > 0x10)
          {
            goto LABEL_38;
          }

          v69 = &v82;
        }

        else
        {
          if (!v38)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v69 = v38;
        }

        v43 = v74;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v84[0] = v58;
        *v57 = 136315138;
        v81 = v80;
        v59 = SharePlayLatencyLogger.Event.description.getter();
        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v84);

        *(v57 + 4) = v61;
        v62 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1AEB26000, v41, v71, v62, v69, "Begin interval %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v58);
        MEMORY[0x1B27120C0](v58, -1, -1);
        MEMORY[0x1B27120C0](v57, -1, -1);

        a3 = v70;
        v29 = v79;
      }

      else
      {

        v43 = v74;
      }

      v51 = v78;
      (*(v29 + 16))(v16, v18, v78);
      v63 = type metadata accessor for OSSignpostIntervalState();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      swift_allocObject();
      v55 = OSSignpostIntervalState.init(id:isOpen:)();
      v56 = v73;
      goto LABEL_32;
    }

    v71 = v16;
    v83 = v80;
    v30 = SharePlayLatencyLogger.Event.signpostName.getter();
    v32 = v31;
    swift_bridgeObjectRetain_n();
    v33 = OSSignposter.logHandle.getter();
    LODWORD(v69) = static os_signpost_type_t.begin.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if ((result & 1) == 0)
    {
      swift_bridgeObjectRelease_n();

      v42 = v71;
LABEL_25:
      v51 = v78;
      (*(v29 + 16))(v42, v18, v78);
      v52 = type metadata accessor for OSSignpostIntervalState();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      v55 = OSSignpostIntervalState.init(id:isOpen:)();
      v56 = v73;
      v43 = v74;
LABEL_32:
      *v10 = v80;
      v66 = v77;
      *(v10 + 1) = v76;
      *(v10 + 2) = v66;
      (*(v72 + 32))(&v10[v6[6]], v43, v75);
      *&v10[v6[7]] = v55;
      (*(v29 + 32))(&v10[v6[8]], v18, v51);
      outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(v10, a3);
      return (*(v56 + 56))(a3, 0, 1, v6);
    }

    v70 = a3;
    if (v32)
    {
      if (!(v30 >> 32))
      {
        if ((v30 & 0xFFFFF800) == 0xD800)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v30 >> 16 <= 0x10)
        {
          v35 = v77;

          v68 = v84;
          goto LABEL_24;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v35 = v77;

      if (v30)
      {
        v68 = v30;
LABEL_24:
        v42 = v71;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v84[0] = v45;
        *v44 = 136315394;
        v81 = v80;
        v46 = SharePlayLatencyLogger.Event.description.getter();
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v84);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v35, v84);

        *(v44 + 14) = v49;
        v50 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1AEB26000, v33, v69, v50, v68, "Begin interval %s for %s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v45, -1, -1);
        MEMORY[0x1B27120C0](v44, -1, -1);

        a3 = v70;
        v29 = v79;
        goto LABEL_25;
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v37 = __swift_project_value_buffer(v36, static SharePlayLatencyLogger.Interval.disabled);
  swift_beginAccess();
  return outlined init with copy of SharePlayLatencyLogger.Interval.State(v37, a3, type metadata accessor for SharePlayLatencyLogger.Interval);
}

uint64_t static SharePlayLatencyLogger.emitEvent(_:)(char *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    result = swift_once();
  }

  if (static SharePlayLatencyLogger.isEnabled == 1)
  {
    if (one-time initialization token for signposter != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v9, static SharePlayLatencyLogger.signposter);
    v17[15] = v8;
    v10 = SharePlayLatencyLogger.Event.signpostName.getter();
    v12 = v11;
    static OSSignpostID.exclusive.getter();
    v13 = OSSignposter.logHandle.getter();
    v14 = static os_signpost_type_t.event.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }

    if ((v12 & 1) == 0)
    {
      if (v10)
      {
LABEL_14:
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1AEB26000, v13, v14, v16, v10, "", v15, 2u);
        MEMORY[0x1B27120C0](v15, -1, -1);
LABEL_15:

        return (*(v3 + 8))(v7, v2);
      }

      __break(1u);
    }

    if (v10 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v10 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      if (v10 >> 16 <= 0x10)
      {
        v10 = v17;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

void static SharePlayLatencyLogger.logInterval(for:activityIdentifier:serverStartTime:)(unsigned __int8 *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    swift_once();
  }

  if (static SharePlayLatencyLogger.isEnabled == 1)
  {
    v20 = [objc_opt_self() sharedInstance];
    if (v20)
    {
      v36 = a2;
      v21 = a4;
      v22 = v20;
      v23 = [v20 currentServerTimeDate];

      if (v23)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v15 + 56))(v11, 0, 1, v14);
      }

      else
      {
        (*(v15 + 56))(v11, 1, 1, v14);
      }

      outlined init with take of Date?(v11, v13);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        v32 = (*(v15 + 32))(v18, v13, v14);
        v37[0] = v19;
        v33 = v36(v32);
        specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:startTime:endTime:)(v37, v33, v34, v21, v18);

        (*(v15 + 8))(v18, v14);
        return;
      }
    }

    else
    {
      (*(v15 + 56))(v13, 1, 1, v14);
    }

    outlined destroy of Date?(v13);
    if (one-time initialization token for internalLogger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static SharePlayLatencyLogger.internalLogger);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315138;
      v37[1] = v19;
      v29 = SharePlayLatencyLogger.Event.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v38);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1AEB26000, v25, v26, "Failed to get current server time when logging %s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B27120C0](v28, -1, -1);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }
  }
}

uint64_t static SharePlayLatencyLogger.logInterval(for:activityIdentifier:localStartTime:)(unsigned __int8 *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    result = swift_once();
  }

  if (static SharePlayLatencyLogger.isEnabled == 1)
  {
    v14 = Date.init()();
    v18 = v13;
    v15 = a2(v14);
    specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:startTime:endTime:)(&v18, v15, v16, a4, v12);

    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t specialized SharePlayLatencyLogger.Event.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001AEE31B90 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4A6E6F6973736573 && a2 == 0xEB000000006E696FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AEE31BB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001AEE31BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001AEE31BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001AEE31C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001AEE31C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001AEE31C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001AEE31C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001AEE31CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001AEE31CE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001AEE31D00 == a2)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t specialized static SharePlayLatencyLogger.endInterval(_:)(uint64_t a1)
{
  v149 = type metadata accessor for CharacterSet();
  v148 = *(v149 - 8);
  v2 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for OSSignpostError();
  v143 = *(v144 - 8);
  v4 = *(v143 + 8);
  v5 = MEMORY[0x1EEE9AC00](v144);
  v7 = (&v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v139 - v8;
  v10 = type metadata accessor for OSSignpostID();
  v154 = *(v10 - 8);
  v155 = v10;
  v11 = *(v154 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v141 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v151 = &v139 - v14;
  v15 = type metadata accessor for ContinuousClock.Instant();
  v156 = *(v15 - 8);
  v157 = v15;
  v16 = *(v156 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v140 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v152 = &v139 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v139 - v21;
  v23 = type metadata accessor for SharePlayLatencyLogger.Interval.State(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v145 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v139 = &v139 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v150 = &v139 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v146 = &v139 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v139 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v139 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v139 - v44;
  outlined init with copy of SharePlayLatencyLogger.Interval.State(a1, v26, type metadata accessor for SharePlayLatencyLogger.Interval.State);
  v46 = *(v28 + 48);
  v158 = v27;
  result = v46(v26, 1, v27);
  if (result != 1)
  {
    outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(v26, v45);
    v142 = v22;
    static ContinuousClock.now.getter();
    v48 = *(v45 + 2);
    v153 = v45;
    if (!v48)
    {
      goto LABEL_9;
    }

    v49 = *(v45 + 1);
    if (one-time initialization token for signposter != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v50, static SharePlayLatencyLogger.signposter);
    LOBYTE(v164) = *v45;
    v145 = SharePlayLatencyLogger.Event.signpostName.getter();
    v40 = v51;
    v52 = *&v45[*(v158 + 28)];
    outlined init with copy of SharePlayLatencyLogger.Interval.State(v45, v43, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);

    v7 = OSSignposter.logHandle.getter();
    v53 = v151;
    OSSignpostIntervalState.signpostID.getter();
    v54 = static os_signpost_type_t.end.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }

    LODWORD(v141) = v54;
    if ((v40 & 1) == 0)
    {

      v55 = v144;
      v45 = v143;
      if (!v145)
      {
        __break(1u);
LABEL_9:
        if (one-time initialization token for signposter != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v56, static SharePlayLatencyLogger.signposter);
        LOBYTE(v164) = *v45;
        v43 = SharePlayLatencyLogger.Event.signpostName.getter();
        v53 = v57;
        v58 = *&v45[*(v158 + 28)];
        outlined init with copy of SharePlayLatencyLogger.Interval.State(v45, v40, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        v48 = OSSignposter.logHandle.getter();
        v59 = v141;
        OSSignpostIntervalState.signpostID.getter();
        v49 = static os_signpost_type_t.end.getter();
        result = OS_os_log.signpostsEnabled.getter();
        if ((result & 1) == 0)
        {

          (*(v154 + 8))(v59, v155);
          outlined destroy of SharePlayLatencyLogger.Interval(v40, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
LABEL_38:
          v114 = v156;
          v113 = v157;
          v115 = v142;
          v116 = v140;
          v117 = v139;
          if (one-time initialization token for latencyLogger != -1)
          {
            swift_once();
          }

          v118 = type metadata accessor for Logger();
          __swift_project_value_buffer(v118, static SharePlayLatencyLogger.latencyLogger);
          v119 = v153;
          outlined init with copy of SharePlayLatencyLogger.Interval.State(v153, v117, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
          (*(v114 + 16))(v116, v115, v113);
          v120 = v119;
          v121 = v145;
          outlined init with copy of SharePlayLatencyLogger.Interval.State(v120, v145, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
          getEnumTag for RTCReporterCategory();
          getEnumTag for RTCReporterCategory();
          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            v166[0] = v125;
            *v124 = 136315650;
            LOBYTE(v164) = *v117;
            v126 = SharePlayLatencyLogger.Event.description.getter();
            v127 = v117;
            v129 = v128;
            outlined destroy of SharePlayLatencyLogger.Interval(v127, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v129, v166);

            *(v124 + 4) = v130;
            *(v124 + 12) = 1040;
            *(v124 + 14) = 0;
            *(v124 + 18) = 2048;
            v131 = v145;
            v132 = (v145 + *(v158 + 24));
            ContinuousClock.Instant.duration(to:)();
            v133 = Duration.components.getter() * 1000.0;
            Duration.components.getter();
            v135 = v134;
            outlined destroy of SharePlayLatencyLogger.Interval(v131, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            v136 = *(v114 + 8);
            v137 = v157;
            v136(v116, v157);
            *(v124 + 20) = v133 + v135 / 1.0e15;
            _os_log_impl(&dword_1AEB26000, v122, v123, "shareplay_%s=%.*f", v124, 0x1Cu);
            __swift_destroy_boxed_opaque_existential_1Tm(v125);
            MEMORY[0x1B27120C0](v125, -1, -1);
            MEMORY[0x1B27120C0](v124, -1, -1);

            v136(v142, v137);
          }

          else
          {

            outlined destroy of SharePlayLatencyLogger.Interval(v121, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            v138 = *(v114 + 8);
            v138(v116, v113);
            outlined destroy of SharePlayLatencyLogger.Interval(v117, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            v138(v115, v113);
          }

          return outlined destroy of SharePlayLatencyLogger.Interval(v153, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        }

        if ((v53 & 1) == 0)
        {
          v60 = v144;
          v61 = v143;
          if (!v43)
          {
            __break(1u);
LABEL_15:

            (*(v154 + 8))(v53, v155);
            outlined destroy of SharePlayLatencyLogger.Interval(v43, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            goto LABEL_25;
          }

          goto LABEL_34;
        }

        v60 = v144;
        v61 = v143;
        if (!HIDWORD(v43))
        {
          if ((v43 & 0xFFFFF800) == 0xD800)
          {
LABEL_50:
            __break(1u);
            return result;
          }

          if (v43 >> 16 <= 0x10)
          {
            v43 = &v159;
LABEL_34:

            checkForErrorAndConsumeState(state:)();

            if ((v61[11])(v7, v60) == *MEMORY[0x1E69E93E8])
            {
              v103 = 0;
              v104 = 0;
              v105 = "[Error] Interval already ended";
            }

            else
            {
              v61[1](v7, v60);
              v105 = "End interval %s";
              v104 = 2;
              v103 = 1;
            }

            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v166[0] = v107;
            *v106 = v104;
            *(v106 + 1) = v103;
            *(v106 + 2) = 2080;
            LOBYTE(v162) = *v40;
            v108 = SharePlayLatencyLogger.Event.description.getter();
            v110 = v109;
            outlined destroy of SharePlayLatencyLogger.Interval(v40, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
            v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v110, v166);

            *(v106 + 4) = v111;
            v112 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&dword_1AEB26000, v48, v49, v112, v43, v105, v106, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v107);
            MEMORY[0x1B27120C0](v107, -1, -1);
            MEMORY[0x1B27120C0](v106, -1, -1);

            (*(v154 + 8))(v59, v155);
            goto LABEL_38;
          }

          goto LABEL_48;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

LABEL_21:

      checkForErrorAndConsumeState(state:)();

      v62 = (*(v45 + 11))(v9, v55) == *MEMORY[0x1E69E93E8];
      v140 = v49;
      if (v62)
      {
        v64 = 0;
        v63 = "[Error] Interval already ended";
      }

      else
      {
        (*(v45 + 1))(v9, v55);
        v63 = "End interval %s for %s";
        v64 = 2;
      }

      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v166[0] = v66;
      *v65 = v64;
      *(v65 + 1) = v64;
      *(v65 + 2) = 2080;
      LOBYTE(v162) = *v43;
      v67 = SharePlayLatencyLogger.Event.description.getter();
      v69 = v68;
      outlined destroy of SharePlayLatencyLogger.Interval(v43, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v166);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v49 = v140;
      *(v65 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v48, v166);
      v71 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1AEB26000, v7, v141, v71, v145, v63, v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v66, -1, -1);
      MEMORY[0x1B27120C0](v65, -1, -1);

      (*(v154 + 8))(v53, v155);
LABEL_25:
      v164 = v49;
      v165 = v48;
      v162 = 45;
      v163 = 0xE100000000000000;
      v160 = 95;
      v161 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      lazy protocol witness table accessor for type String and conformance String();
      RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
      v164 = v166[0];
      v165 = v166[1];
      v72 = v147;
      static CharacterSet.whitespacesAndNewlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v155 = StringProtocol.trimmingCharacters(in:)();
      v74 = v73;
      (*(v148 + 8))(v72, v149);

      v76 = v156;
      v75 = v157;
      v77 = v142;
      v78 = v152;
      v79 = v146;
      if (one-time initialization token for latencyLogger != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      __swift_project_value_buffer(v80, static SharePlayLatencyLogger.latencyLogger);
      v81 = v153;
      outlined init with copy of SharePlayLatencyLogger.Interval.State(v153, v79, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
      (*(v76 + 16))(v78, v77, v75);
      v82 = v81;
      v83 = v150;
      outlined init with copy of SharePlayLatencyLogger.Interval.State(v82, v150, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);

      getEnumTag for RTCReporterCategory();
      getEnumTag for RTCReporterCategory();
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v166[0] = v154;
        *v86 = 136315906;
        LOBYTE(v164) = *v79;
        v87 = SharePlayLatencyLogger.Event.description.getter();
        v88 = v83;
        v89 = v76;
        v91 = v90;
        outlined destroy of SharePlayLatencyLogger.Interval(v79, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v91, v166);

        *(v86 + 4) = v92;
        *(v86 + 12) = 2080;
        v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v74, v166);

        *(v86 + 14) = v93;
        *(v86 + 22) = 1040;
        *(v86 + 24) = 0;
        *(v86 + 28) = 2048;
        v94 = v88 + *(v158 + 24);
        v95 = v152;
        ContinuousClock.Instant.duration(to:)();
        v96 = Duration.components.getter() * 1000.0;
        Duration.components.getter();
        v98 = v97;
        outlined destroy of SharePlayLatencyLogger.Interval(v88, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        v99 = *(v89 + 8);
        v100 = v157;
        v99(v95, v157);
        *(v86 + 30) = v96 + v98 / 1.0e15;
        _os_log_impl(&dword_1AEB26000, v84, v85, "shareplay_%s_%s=%.*f", v86, 0x26u);
        v101 = v154;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v101, -1, -1);
        MEMORY[0x1B27120C0](v86, -1, -1);

        v99(v142, v100);
      }

      else
      {

        outlined destroy of SharePlayLatencyLogger.Interval(v83, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        v102 = *(v76 + 8);
        v102(v78, v75);
        outlined destroy of SharePlayLatencyLogger.Interval(v79, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
        v102(v77, v75);
      }

      return outlined destroy of SharePlayLatencyLogger.Interval(v153, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
    }

    v55 = v144;
    v45 = v143;
    if (HIDWORD(v145))
    {
      __break(1u);
    }

    else
    {
      if ((v145 & 0xFFFFF800) == 0xD800)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v145 >> 16 <= 0x10)
      {

        v145 = v166;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  return result;
}

uint64_t specialized static SharePlayLatencyLogger.emitEvent(_:in:message:)(const char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v41 = a3;
  v6 = type metadata accessor for OSSignpostID();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39[-v11];
  v13 = type metadata accessor for SharePlayLatencyLogger.Interval.State(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a1) = *a1;
  outlined init with copy of SharePlayLatencyLogger.Interval.State(a2, v16, type metadata accessor for SharePlayLatencyLogger.Interval.State);
  result = (*(v18 + 48))(v16, 1, v17);
  if (result != 1)
  {
    outlined init with take of SharePlayLatencyLogger.Interval.EnabledState(v16, v21);
    v24 = 0x1EB5F5000uLL;
    if (!a4)
    {
      goto LABEL_9;
    }

    v25 = v6;
    if (one-time initialization token for signposter != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v26, static SharePlayLatencyLogger.signposter);
    v44 = a1;
    a1 = SharePlayLatencyLogger.Event.signpostName.getter();
    v28 = v27;
    v6 = v42;
    (*(v42 + 16))(v12, &v21[*(v17 + 32)], v25);

    v10 = OSSignposter.logHandle.getter();
    v17 = static os_signpost_type_t.event.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }

    v40 = v17;
    if ((v28 & 1) == 0)
    {

      if (!a1)
      {
        __break(1u);
LABEL_9:
        v25 = v6;
        if (*(v24 + 4016) != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v29, static SharePlayLatencyLogger.signposter);
        LOBYTE(v43) = a1;
        v30 = SharePlayLatencyLogger.Event.signpostName.getter();
        v32 = v31;
        v6 = v42;
        (*(v42 + 16))(v10, &v21[*(v17 + 32)], v25);
        v12 = OSSignposter.logHandle.getter();
        v33 = static os_signpost_type_t.event.getter();
        result = OS_os_log.signpostsEnabled.getter();
        if ((result & 1) == 0)
        {
          goto LABEL_27;
        }

        if ((v32 & 1) == 0)
        {
          if (!v30)
          {
            __break(1u);
LABEL_15:

LABEL_21:

            (*(v6 + 8))(v12, v25);
            return outlined destroy of SharePlayLatencyLogger.Interval(v21, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
          }

          goto LABEL_26;
        }

        if (!(v30 >> 32))
        {
          if ((v30 & 0xFFFFF800) == 0xD800)
          {
LABEL_35:
            __break(1u);
            return result;
          }

          if (v30 >> 16 <= 0x10)
          {
            v30 = &v45;
LABEL_26:
            v37 = swift_slowAlloc();
            *v37 = 0;
            v38 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&dword_1AEB26000, v12, v33, v38, v30, "", v37, 2u);
            MEMORY[0x1B27120C0](v37, -1, -1);
LABEL_27:

            (*(v6 + 8))(v10, v25);
            return outlined destroy of SharePlayLatencyLogger.Interval(v21, type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState);
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_20:
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, a4, &v43);
      v36 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1AEB26000, v10, v40, v36, a1, "%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1B27120C0](v35, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
      goto LABEL_21;
    }

    if (a1 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (a1 >> 16 <= 0x10)
      {

        a1 = &v43;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  return result;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:startTime:endTime:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a5;
  v63 = a2;
  v8 = type metadata accessor for Date();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v67 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v58[-v12];
  v13 = type metadata accessor for CharacterSet();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = type metadata accessor for OSSignpostID();
  v17 = *(v62 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v20 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *a1;
  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v22, static SharePlayLatencyLogger.signposter);
  v61 = v21;
  LOBYTE(v75) = v21;
  v23 = SharePlayLatencyLogger.Event.signpostName.getter();
  v25 = v24;

  static OSSignpostID.exclusive.getter();
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.event.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_7;
  }

  v60 = a4;
  v59 = v27;
  if (v25)
  {
    if (v23 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v23 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
        return;
      }

      if (v23 >> 16 <= 0x10)
      {

        v23 = v77;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v23)
  {
LABEL_12:
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v77[0] = v30;
    *v29 = 136315394;
    LOBYTE(v73) = v61;
    v31 = SharePlayLatencyLogger.Event.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v77);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v28 = v63;
    *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, a3, v77);
    v34 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEB26000, v26, v59, v34, v23, "Event %s for %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);

    (*(v17 + 8))(v20, v62);
    a4 = v60;
    goto LABEL_13;
  }

  __break(1u);
LABEL_7:

  (*(v17 + 8))(v20, v62);
  v28 = v63;
LABEL_13:
  v75 = v28;
  v76 = a3;
  v73 = 45;
  v74 = 0xE100000000000000;
  v71 = 95;
  v72 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
  v75 = v77[0];
  v76 = v77[1];
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v63 = StringProtocol.trimmingCharacters(in:)();
  v36 = v35;
  (*(v64 + 8))(v16, v65);

  v37 = v69;
  if (one-time initialization token for latencyLogger != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static SharePlayLatencyLogger.latencyLogger);
  v39 = *(v37 + 16);
  v40 = v68;
  v41 = a4;
  v42 = v70;
  v39(v68, v41, v70);
  v43 = v67;
  v39(v67, v66, v42);

  getEnumTag for RTCReporterCategory();
  getEnumTag for RTCReporterCategory();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v77[0] = v47;
    *v46 = 136315906;
    LOBYTE(v75) = v61;
    v48 = SharePlayLatencyLogger.Event.description.getter();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v77);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v36, v77);

    *(v46 + 14) = v51;
    *(v46 + 22) = 1040;
    *(v46 + 24) = 0;
    *(v46 + 28) = 2048;
    Date.distance(to:)();
    v53 = v52;
    v54 = *(v37 + 8);
    v55 = v70;
    v54(v43, v70);
    v54(v40, v55);
    *(v46 + 30) = v53 * 1000.0;
    _os_log_impl(&dword_1AEB26000, v44, v45, "shareplay_%s_%s=%.*f", v46, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v47, -1, -1);
    MEMORY[0x1B27120C0](v46, -1, -1);
  }

  else
  {

    v56 = *(v37 + 8);
    v57 = v70;
    v56(v43, v70);
    v56(v40, v57);
  }
}

unint64_t lazy protocol witness table accessor for type SharePlayLatencyLogger.Event and conformance SharePlayLatencyLogger.Event()
{
  result = lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event and conformance SharePlayLatencyLogger.Event;
  if (!lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event and conformance SharePlayLatencyLogger.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayLatencyLogger.Event and conformance SharePlayLatencyLogger.Event);
  }

  return result;
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for SharePlayLatencyLogger.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharePlayLatencyLogger.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:serverStartTime:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36[-v11];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a1;
  if (one-time initialization token for isEnabled != -1)
  {
    swift_once();
  }

  if (static SharePlayLatencyLogger.isEnabled == 1)
  {
    v19 = [objc_opt_self() sharedInstance];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 currentServerTimeDate];

      if (v21)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v14 + 56))(v10, 0, 1, v13);
      }

      else
      {
        (*(v14 + 56))(v10, 1, 1, v13);
      }

      outlined init with take of Date?(v10, v12);
      if ((*(v14 + 48))(v12, 1, v13) != 1)
      {
        v30 = (*(v14 + 32))(v17, v12, v13);
        v37[0] = v18;
        v31 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x328))(v30);
        v32 = [v31 activityIdentifier];

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:startTime:endTime:)(v37, v33, v35, a2, v17);

        (*(v14 + 8))(v17, v13);
        return;
      }
    }

    else
    {
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    outlined destroy of Date?(v12);
    if (one-time initialization token for internalLogger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static SharePlayLatencyLogger.internalLogger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      v37[1] = v18;
      v27 = SharePlayLatencyLogger.Event.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v38);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1AEB26000, v23, v24, "Failed to get current server time when logging %s.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }
  }
}

uint64_t outlined destroy of SharePlayLatencyLogger.Interval(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PowerLogReporter.streamPayload.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t PowerLogReporter.streamPayload.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PowerLogReporter.streamID.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of Any?(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PowerLogReporter.category.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t PowerLogReporter.category.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t PowerLogReporter.subsystem.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t PowerLogReporter.subsystem.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t PowerLogReporter.__allocating_init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PowerLogReporter.init(subsystem:category:)(a1, a2, a3, a4);
  return v8;
}

uint64_t PowerLogReporter.init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v4 + 56) = a3;
  *(v4 + 16) = v9;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;
  *(v4 + 64) = a4;

  v10 = MEMORY[0x1B270FF70](a1, a2);

  swift_beginAccess();
  v11 = *(v4 + 56);
  v12 = *(v4 + 64);

  v13 = MEMORY[0x1B270FF70](v11, v12);

  v14 = PPSCreateTelemetryIdentifier();

  if (v14)
  {
    v15 = MEMORY[0x1E69E6B70];
  }

  else
  {
    v15 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v14;
  v17[3] = v15;
  swift_beginAccess();
  outlined assign with take of Any?(v17, v4 + 24);
  swift_endAccess();
  return v4;
}

Swift::OpaquePointer_optional __swiftcall PowerLogReporter.report(withStreamPayload:)(Swift::OpaquePointer withStreamPayload)
{
  (*(*v1 + 136))(&v13, withStreamPayload._rawValue);
  if (v14)
  {
    outlined init with take of Any(&v13, v15);
    outlined init with copy of Any(v15, &v13);
    v2 = swift_dynamicCast();
    v3 = *(*v1 + 112);
    v4 = (v3)(v2);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    PPSSendTelemetry();

    v6 = v3();
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    outlined destroy of Any?(&v13);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Could not unwrap streamID of current activity", v11, 2u);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v6 = 0;
  }

  v12 = v6;
  result.value._rawValue = v12;
  result.is_nil = v7;
  return result;
}

void *PowerLogReporter.deinit()
{
  v1 = v0[2];

  outlined destroy of Any?((v0 + 3));
  v2 = v0[8];

  v3 = v0[10];

  return v0;
}

uint64_t PowerLogReporter.__deallocating_deinit()
{
  v1 = v0[2];

  outlined destroy of Any?((v0 + 3));
  v2 = v0[8];

  v3 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for PowerReportingProcotol.streamID.modify in conformance PowerLogReporter(uint64_t *a1))()
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
  *(v3 + 32) = (*(**v1 + 152))();
  return protocol witness for PresenceDataSource.members.modify in conformance PersonalPresenceDataSource;
}

uint64_t (*protocol witness for PowerReportingProcotol.category.modify in conformance PowerLogReporter(uint64_t *a1))()
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
  *(v3 + 32) = (*(**v1 + 176))();
  return protocol witness for PresenceDataSource.members.modify in conformance PersonalPresenceDataSource;
}

uint64_t (*protocol witness for PowerReportingProcotol.subsystem.modify in conformance PowerLogReporter(uint64_t *a1))()
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
  *(v3 + 32) = (*(**v1 + 200))();
  return protocol witness for PresenceDataSource.members.modify in conformance PersonalPresenceDataSource;
}

uint64_t (*protocol witness for PowerReportingProcotol.streamPayload.modify in conformance PowerLogReporter(uint64_t *a1))()
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
  *(v3 + 32) = (*(**v1 + 128))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t protocol witness for PowerReportingProcotol.init(subsystem:category:) in conformance PowerLogReporter@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 208))();
  *a1 = result;
  return result;
}

uint64_t DatagramClient.doCreateChannelGroup(topic:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (*(v2 + 48))
  {
    v6 = *(v2 + 40);
    v30 = destructiveProjectEnumData for ActivitySession.Errors;
    v31 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_protocol_options) -> ();
    v29 = &block_descriptor_13_0;
    v9 = _Block_copy(&aBlock);
    v30 = destructiveProjectEnumData for ActivitySession.Errors;
    v31 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_protocol_options) -> ();
    v29 = &block_descriptor_16_0;
    v10 = _Block_copy(&aBlock);

    outlined copy of Data?(v5, v6);
    secure_udp = nw_parameters_create_secure_udp(v9, v10);
    _Block_release(v10);
    _Block_release(v9);
    v12 = nw_parameters_copy_default_protocol_stack(secure_udp);
    nw_protocol_stack_clear_application_protocols(v12);
    v13 = objc_opt_self();
    [v13 augmentConnectionGroupNetworkParameters_];
    v14 = MEMORY[0x1B270FF70](v3, v4);

    v15 = MEMORY[0x1B270FF70](a1, a2);
    if (v6 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v5;
    }

    if (v6 >> 60 == 15)
    {
      v17 = 0xC000000000000000;
    }

    else
    {
      v17 = v6;
    }

    outlined copy of Data?(v5, v6);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v16, v17);
    v19 = [v13 createGroupDescriptorForSessionIDAlias:v14 topic:v15 salt:isa];

    nw_connection_group_create(v19, secure_udp);
    v30 = closure #3 in DatagramClient.doCreateChannelGroup(topic:);
    v31 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_endpoint, @unowned nw_group_membership_changed_type_t, @unowned Bool) -> (@unowned Bool);
    v29 = &block_descriptor_19_0;
    v20 = _Block_copy(&aBlock);
    nw_connection_group_set_membership_changed_handler();
    _Block_release(v20);
    type metadata accessor for NWConnectionGroup();
    v21 = NWConnectionGroup.__allocating_init(_:)();
    outlined consume of Data?(v5, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v21;
  }

  else
  {
    v23 = type metadata accessor for NWConnectionGroup();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();

    return NWConnectionGroup.init(with:using:)();
  }
}

uint64_t closure #3 in DatagramClient.doCreateChannelGroup(topic:)()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, log);
  swift_unknownObjectRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315650;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14OS_nw_endpoint_pMd, &_sSo14OS_nw_endpoint_pMR);
    v5 = String.init<A>(reflecting:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v15);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    type metadata accessor for nw_group_membership_changed_type_t(0);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v3 + 14) = v10;
    *(v3 + 22) = 2080;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v3 + 24) = v13;
    _os_log_impl(&dword_1AEB26000, v1, v2, "Set the membership change handler %s %s %s", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v4, -1, -1);
    MEMORY[0x1B27120C0](v3, -1, -1);
  }

  return 0;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_nw_endpoint, @unowned nw_group_membership_changed_type_t, @unowned Bool) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  v8 = swift_unknownObjectRetain();
  LOBYTE(a4) = v7(v8, a3, a4);

  swift_unknownObjectRelease();
  return a4 & 1;
}

uint64_t closure #1 in DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    ObjectType = swift_getObjectType();

    return specialized DatagramClient.createChannelGroup(channelStream:attempt:promise:)(a2, v6, a5, a6, v11, ObjectType, a3);
  }

  return result;
}

uint64_t DatagramClient.createChannelGroup(channelStream:attempt:promise:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return specialized DatagramClient.createChannelGroup(channelStream:attempt:promise:)(a1, a3, a4, a5, v5, ObjectType, a2);
}

uint64_t closure #1 in DatagramClient.createChannelGroup(channelStream:attempt:promise:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v182 = a8;
  v181 = a7;
  v192 = a1;
  v193 = a6;
  v183 = a5;
  v190 = a3;
  v191 = a4;
  v10 = type metadata accessor for DatagramChannelConnectError();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v180 = (&v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v174 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v175 = (&v159 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v168 = &v159 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v173 = &v159 - v21;
  v187 = type metadata accessor for NWError();
  v185 = *(v187 - 8);
  v22 = *(v185 + 64);
  v23 = MEMORY[0x1EEE9AC00](v187);
  v188 = (&v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v184 = &v159 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v169 = (&v159 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v170 = &v159 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v176 = &v159 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v178 = &v159 - v33;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
  v34 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v167 = (&v159 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network17NWConnectionGroupC5StateOSgMd, &_s7Network17NWConnectionGroupC5StateOSgMR);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v40 = &v159 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v159 - v41;
  v43 = type metadata accessor for NWConnectionGroup.State();
  v189 = *(v43 - 8);
  v44 = *(v189 + 64);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v186 = &v159 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v159 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v159 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v159 - v53;
  v55 = type metadata accessor for DispatchPredicate();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v59 = (&v159 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v179 = result;
  v61 = *(result + 80);
  *v59 = v61;
  (*(v56 + 104))(v59, *MEMORY[0x1E69E8020], v55);
  v62 = v61;
  LOBYTE(v61) = _dispatchPreconditionTest(_:)();
  (*(v56 + 8))(v59, v55);
  if (v61)
  {
    v162 = v52;
    v163 = v49;
    ObjectType = swift_getObjectType();
    v64 = *(v191 + 16);
    v171 = ObjectType;
    v164 = v64();
    if (one-time initialization token for log == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v172 = a9;
  v65 = type metadata accessor for Logger();
  v66 = __swift_project_value_buffer(v65, log);
  v67 = v189;
  v68 = *(v189 + 16);
  v68(v54, v192, v43);

  v177 = v66;
  v69 = Logger.logObject.getter();
  LODWORD(v66) = static os_log_type_t.default.getter();

  v165 = v66;
  v70 = v66;
  v71 = v69;
  if (!os_log_type_enabled(v69, v70))
  {

    v76 = *(v67 + 8);
    v76(v54, v43);
    goto LABEL_18;
  }

  v72 = swift_slowAlloc();
  v160 = swift_slowAlloc();
  v194 = v160;
  *v72 = 136315650;
  v68(v42, v54, v43);
  (*(v67 + 56))(v42, 0, 1, v43);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v42, v40, &_s7Network17NWConnectionGroupC5StateOSgMd, &_s7Network17NWConnectionGroupC5StateOSgMR);
  v73 = (*(v67 + 48))(v40, 1, v43);
  v161 = v68;
  if (v73 == 1)
  {
    v74 = 7104878;
    v75 = 0xE300000000000000;
  }

  else
  {
    v77 = v162;
    (*(v67 + 32))(v162, v40, v43);
    v68(v163, v77, v43);
    v74 = String.init<A>(reflecting:)();
    v75 = v78;
    (*(v67 + 8))(v77, v43);
  }

  outlined destroy of NSObject?(v42, &_s7Network17NWConnectionGroupC5StateOSgMd, &_s7Network17NWConnectionGroupC5StateOSgMR);
  v76 = *(v67 + 8);
  v76(v54, v43);
  v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v194);

  *(v72 + 4) = v79;
  *(v72 + 12) = 2080;
  if (v164 > 1u)
  {
    v68 = v161;
    if (v164 != 2)
    {
      v80 = 0xE600000000000000;
      v81 = 0x6465736F6C63;
      goto LABEL_17;
    }

    v80 = 0xEB00000000646568;
LABEL_16:
    v81 = 0x73696C6261747365;
    goto LABEL_17;
  }

  v68 = v161;
  if (v164)
  {
    v80 = 0xEC000000676E6968;
    goto LABEL_16;
  }

  v80 = 0xE700000000000000;
  v81 = 0x6C616974696E69;
LABEL_17:
  v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v80, &v194);

  *(v72 + 14) = v82;
  *(v72 + 22) = 2080;
  *(v72 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v193, &v194);
  _os_log_impl(&dword_1AEB26000, v71, v165, "NWConnectionGroup changed state, state=%s channel-state=%s, topic=%s", v72, 0x20u);
  v83 = v160;
  swift_arrayDestroy();
  MEMORY[0x1B27120C0](v83, -1, -1);
  MEMORY[0x1B27120C0](v72, -1, -1);

  v67 = v189;
LABEL_18:
  v84 = v186;
  v68(v186, v192, v43);
  v85 = (*(v67 + 88))(v84, v43);
  v87 = v187;
  v86 = v188;
  if (v85 == *MEMORY[0x1E6977CE8])
  {
    v192 = a10;
    (*(v67 + 96))(v84, v43);
    v88 = v184;
    v89 = v185;
    v90 = *(v185 + 32);
    v90(v184, v84, v87);
    v91 = *(v89 + 16);
    v91(v86, v88, v87);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v92, v93))
    {
      LODWORD(v189) = v93;
      v94 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v194 = v186;
      *v94 = 136315394;
      v95 = v175;
      v91(v175, v86, v87);
      (*(v89 + 56))(v95, 0, 1, v87);
      v96 = v174;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v95, v174, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      if ((*(v89 + 48))(v96, 1, v87) == 1)
      {
        v97 = 7104878;
        v98 = 0xE300000000000000;
      }

      else
      {
        v128 = v96;
        v129 = v170;
        v90(v170, v128, v87);
        v91(v169, v129, v87);
        v97 = String.init<A>(reflecting:)();
        v98 = v130;
        (*(v89 + 8))(v129, v87);
      }

      outlined destroy of NSObject?(v95, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v122 = *(v89 + 8);
      v122(v188, v87);
      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &v194);

      *(v94 + 4) = v131;
      *(v94 + 12) = 2080;
      *(v94 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v193, &v194);
      _os_log_impl(&dword_1AEB26000, v92, v189, "NWConnectionGroup in waiting state, error: %s, topic=%s", v94, 0x16u);
      v132 = v186;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v132, -1, -1);
      MEMORY[0x1B27120C0](v94, -1, -1);
    }

    else
    {

      v122 = *(v89 + 8);
      v122(v86, v87);
    }

    v133 = v180;
    v134 = v184;
    v91(v180, v184, v87);
    (*(v89 + 56))(v133, 0, 2, v87);
    specialized DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:)(v133, v190, v181, v182, v172, v179, v171, v191);
    outlined destroy of DatagramChannelConnectError(v133, type metadata accessor for DatagramChannelConnectError);
    NWConnectionGroup.cancel()();

    return (v122)(v134, v87);
  }

  v99 = v185;
  if (v85 == *MEMORY[0x1E6977CE0])
  {
    v192 = a10;
    (*(v67 + 96))(v84, v43);
    v100 = v178;
    v189 = *(v99 + 32);
    (v189)(v178, v84, v87);
    v101 = *(v99 + 16);
    v102 = v176;
    v101(v176, v100, v87);

    v103 = v179;

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v104, v105))
    {
      LODWORD(v186) = v105;
      v188 = v104;
      v106 = v87;
      v107 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v199 = v184;
      *v107 = 136315650;
      v108 = *(v103 + 24);
      v109 = *(v103 + 32);
      v110 = *(v103 + 40);
      v111 = *(v103 + 48);
      v194 = *(v103 + 16);
      v195 = v108;
      v196 = v109;
      v197 = v110;
      v198 = v111;
      outlined copy of DatagramEndpoint(v194, v108, v109, v110, v111);
      v112 = DatagramEndpoint.description.getter();
      v114 = v113;
      outlined consume of DatagramEndpoint(v194, v195, v196, v197, v198);
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &v199);

      *(v107 + 4) = v115;
      *(v107 + 12) = 2080;
      v116 = v173;
      v101(v173, v102, v106);
      (*(v99 + 56))(v116, 0, 1, v106);
      v117 = v116;
      v118 = v168;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v117, v168, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      if ((*(v99 + 48))(v118, 1, v106) == 1)
      {
        v119 = v101;
        v120 = 7104878;
        v121 = 0xE300000000000000;
      }

      else
      {
        v142 = v170;
        (v189)(v170, v118, v106);
        v119 = v101;
        v101(v169, v142, v106);
        v120 = String.init<A>(reflecting:)();
        v121 = v143;
        v144 = v142;
        v102 = v176;
        (*(v99 + 8))(v144, v106);
      }

      outlined destroy of NSObject?(v173, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
      v135 = *(v99 + 8);
      v135(v102, v106);
      v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v121, &v199);

      *(v107 + 14) = v145;
      *(v107 + 22) = 2080;
      *(v107 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v193, &v199);
      v146 = v188;
      _os_log_impl(&dword_1AEB26000, v188, v186, "NWConnectionGroup to %s failed, error: %s, topic=%s", v107, 0x20u);
      v147 = v184;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v147, -1, -1);
      MEMORY[0x1B27120C0](v107, -1, -1);

      v87 = v106;
    }

    else
    {
      v119 = v101;

      v135 = *(v99 + 8);
      v135(v102, v87);
    }

    v148 = v180;
    v149 = v178;
    v119(v180, v178, v87);
    (*(v99 + 56))(v148, 0, 2, v87);
    specialized DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:)(v148, v190, v181, v182, v172, v179, v171, v191);
    outlined destroy of DatagramChannelConnectError(v148, type metadata accessor for DatagramChannelConnectError);
    NWConnectionGroup.cancel()();

    return (v135)(v149, v87);
  }

  if (v85 == *MEMORY[0x1E6977CD8])
  {
    v123 = v193;

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v194 = v127;
      *v126 = 136315138;
      *(v126 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v123, &v194);
      _os_log_impl(&dword_1AEB26000, v124, v125, "NWConnectionGroup waiting to be started, topic=%s", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v127);
      MEMORY[0x1B27120C0](v127, -1, -1);
      MEMORY[0x1B27120C0](v126, -1, -1);
    }
  }

  v136 = v193;
  if (v85 == *MEMORY[0x1E6977CD0])
  {

    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v194 = v140;
      *v139 = 134218242;
      *(v139 + 4) = v181;
      *(v139 + 12) = 2080;
      *(v139 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v136, &v194);
      _os_log_impl(&dword_1AEB26000, v137, v138, "NWConnectionGroup in ready state, channel attempt #%ld succeeded, topic=%s", v139, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v140);
      MEMORY[0x1B27120C0](v140, -1, -1);
      MEMORY[0x1B27120C0](v139, -1, -1);
    }

    (*(v191 + 24))(2, v171);
    v141 = v167;
    *v167 = a10;
    swift_storeEnumTagMultiPayload();

LABEL_46:
    v182(v141);

    return outlined destroy of NSObject?(v141, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
  }

  v150 = *MEMORY[0x1E6977CF0];
  v151 = v85;

  v152 = Logger.logObject.getter();
  if (v151 == v150)
  {
    v153 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v194 = v155;
      *v154 = 136315138;
      *(v154 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v136, &v194);
      _os_log_impl(&dword_1AEB26000, v152, v153, "NWConnectionGroup in cancelled state, topic=%s", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v155);
      MEMORY[0x1B27120C0](v155, -1, -1);
      MEMORY[0x1B27120C0](v154, -1, -1);
    }

    v141 = v167;
    (*(v99 + 56))(v167, 2, 2, v187);
    swift_storeEnumTagMultiPayload();
    goto LABEL_46;
  }

  v156 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v152, v156))
  {
    v157 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v194 = v158;
    *v157 = 136315138;
    *(v157 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v136, &v194);
    _os_log_impl(&dword_1AEB26000, v152, v156, "NWConnectionGroup in unknown state, topic=%s", v157, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v158);
    MEMORY[0x1B27120C0](v158, -1, -1);
    MEMORY[0x1B27120C0](v157, -1, -1);
  }

  return (v76)(v186, v43);
}

uint64_t specialized DatagramClient.createChannelGroup(channelStream:attempt:promise:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v82 = a2;
  v13 = type metadata accessor for DatagramChannelConnectError();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v77 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a5 + 80);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v79 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v23 = *(v17 + 8);
  v22 = v17 + 8;
  v23(v20, v16);
  if (v21)
  {
    v80 = a3;
    v81 = a4;
    v22 = (*(a7 + 8))(a6, a7);
    a3 = v24;
    v78 = (*(a7 + 16))(a6, a7);
    if (one-time initialization token for log == -1)
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
  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, log);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v73 = v26;
    v74 = v22;
    v75 = a1;
    v76 = a6;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v88 = v30;
    *v29 = 136315906;
    v31 = *(a5 + 24);
    v32 = *(a5 + 32);
    v33 = *(a5 + 40);
    v34 = *(a5 + 48);
    v83 = *(a5 + 16);
    v84 = v31;
    v85 = v32;
    v86 = v33;
    v87 = v34;
    outlined copy of DatagramEndpoint(v83, v31, v32, v33, v34);
    v35 = DatagramEndpoint.description.getter();
    v37 = v36;
    outlined consume of DatagramEndpoint(v83, v84, v85, v86, v87);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v88);

    *(v29 + 4) = v38;
    v39 = v78;
    v40 = 0xE700000000000000;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v82;
    *(v29 + 22) = 2080;
    v41 = 0x6C616974696E69;
    v42 = 0xEB00000000646568;
    v43 = 0x73696C6261747365;
    if (v39 != 2)
    {
      v43 = 0x6465736F6C63;
      v42 = 0xE600000000000000;
    }

    if (v39)
    {
      v41 = 0x73696C6261747365;
      v40 = 0xEC000000676E6968;
    }

    if (v39 <= 1)
    {
      v44 = v41;
    }

    else
    {
      v44 = v43;
    }

    if (v39 <= 1)
    {
      v45 = v40;
    }

    else
    {
      v45 = v42;
    }

    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v88);

    *(v29 + 24) = v46;
    *(v29 + 32) = 2080;
    v22 = v74;
    *(v29 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, a3, &v88);
    _os_log_impl(&dword_1AEB26000, v27, v28, "Creating datagram-channel to endpoint=%s, attempt=%ld channel-state=%s, topic=%s", v29, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);

    a1 = v75;
    a6 = v76;
  }

  else
  {
  }

  v47 = DatagramClient.doCreateChannelGroup(topic:)(v22, a3);
  if (v47)
  {
    v48 = v47;
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    v50[2] = v49;
    v50[3] = a1;
    v50[4] = a7;
    v50[5] = v22;
    v52 = v81;
    v51 = v82;
    v50[6] = a3;
    v50[7] = v51;
    v50[8] = v80;
    v50[9] = v52;
    v50[10] = v48;

    swift_unknownObjectRetain();

    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(partial apply for closure #1 in DatagramClient.createChannelGroup(channelStream:attempt:promise:));
    NWConnectionGroup.stateUpdateHandler.setter();

    v53 = swift_allocObject();
    *(v53 + 16) = a1;
    *(v53 + 24) = a7;
    swift_unknownObjectRetain();
    NWConnectionGroup.setReceiveHandler(maximumMessageSize:rejectOversizedMessages:handler:)();

    (*(a7 + 24))(1, a6, a7);
    NWConnectionGroup.start(queue:)();
  }

  else
  {

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v76 = a6;
      v79 = v58;
      v88 = v58;
      *v57 = 136315394;
      v59 = *(a5 + 24);
      v60 = *(a5 + 32);
      v61 = *(a5 + 40);
      v62 = *(a5 + 48);
      v83 = *(a5 + 16);
      v84 = v59;
      v85 = v60;
      v86 = v61;
      v87 = v62;
      outlined copy of DatagramEndpoint(v83, v59, v60, v61, v62);
      v63 = DatagramEndpoint.description.getter();
      v64 = v22;
      v65 = a1;
      v67 = v66;
      outlined consume of DatagramEndpoint(v83, v84, v85, v86, v87);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v67, &v88);
      a1 = v65;

      *(v57 + 4) = v68;
      *(v57 + 12) = 2080;
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, a3, &v88);

      *(v57 + 14) = v69;
      _os_log_impl(&dword_1AEB26000, v55, v56, "Failed to create NWConnectionGroup for datagram-channel to %s, topic=%s", v57, 0x16u);
      v70 = v79;
      swift_arrayDestroy();
      a6 = v76;
      MEMORY[0x1B27120C0](v70, -1, -1);
      MEMORY[0x1B27120C0](v57, -1, -1);
    }

    else
    {
    }

    v71 = type metadata accessor for NWError();
    v72 = v77;
    (*(*(v71 - 8) + 56))(v77, 1, 2, v71);
    specialized DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:)(v72, a1, v82, v80, v81, a5, a6, a7);
    return outlined destroy of DatagramChannelConnectError(v72, type metadata accessor for DatagramChannelConnectError);
  }
}

void specialized DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:)(void (*a1)(char *, uint64_t), uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v182 = a4;
  v183 = a5;
  v187 = a3;
  v188 = a1;
  v169 = type metadata accessor for DatagramChannelError(0);
  v12 = *(*(v169 - 8) + 64);
  MEMORY[0x1EEE9AC00](v169);
  v170 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for NWError();
  v167 = *(v168 - 8);
  v14 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v154 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v178 = *(v16 - 8);
  v179 = v16;
  v17 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v176 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for DispatchQoS();
  v175 = *(v177 - 8);
  v19 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v174 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for DispatchTime();
  v172 = *(v173 - 8);
  v21 = *(v172 + 64);
  v22 = MEMORY[0x1EEE9AC00](v173);
  v166 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v171 = &v153 - v24;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
  v25 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v162 = &v153 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v155 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v158 = &v153 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v156 = &v153 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v159 = &v153 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v153 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v153 - v40;
  v185 = type metadata accessor for DatagramChannelConnectError();
  v181 = *(v185 - 8);
  v42 = *(v181 + 64);
  v43 = MEMORY[0x1EEE9AC00](v185);
  v160 = &v153 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v164 = &v153 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v165 = &v153 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v153 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v157 = &v153 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v180 = &v153 - v54;
  v55 = type metadata accessor for DispatchPredicate();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v59 = (&v153 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = a6;
  v60 = *(a6 + 80);
  *v59 = v60;
  (*(v56 + 104))(v59, *MEMORY[0x1E69E8020], v55);
  v163 = v60;
  v61 = _dispatchPreconditionTest(_:)();
  v63 = *(v56 + 8);
  v62 = v56 + 8;
  v63(v59, v55);
  if ((v61 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v184 = (*(a8 + 8))(a7, a8);
  v62 = v64;
  v65 = (*(a8 + 16))(a7, a8);
  v61 = a2;
  if (v65 < 2)
  {
    v158 = a8;
    if (one-time initialization token for log == -1)
    {
LABEL_4:
      v66 = type metadata accessor for Logger();
      v67 = __swift_project_value_buffer(v66, log);
      outlined init with copy of DatagramChannelConnectError(v188, v51);

      v180 = v67;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      v70 = v62;
      if (os_log_type_enabled(v68, v69))
      {
        v170 = v61;
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        aBlock = v72;
        *v71 = 134218498;
        *(v71 + 4) = v187;
        *(v71 + 12) = 2080;
        outlined init with copy of DatagramChannelConnectError(v51, v41);
        v73 = v181;
        v74 = v185;
        (*(v181 + 56))(v41, 0, 1, v185);
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v41, v39, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
        if ((*(v73 + 48))(v39, 1, v74) == 1)
        {
          v75 = 7104878;
          v76 = 0xE300000000000000;
        }

        else
        {
          v117 = v165;
          outlined init with take of DatagramChannelConnectError(v39, v165);
          outlined init with copy of DatagramChannelConnectError(v117, v164);
          v75 = String.init<A>(reflecting:)();
          v76 = v118;
          outlined destroy of DatagramChannelConnectError(v117, type metadata accessor for DatagramChannelConnectError);
        }

        outlined destroy of NSObject?(v41, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
        outlined destroy of DatagramChannelConnectError(v51, type metadata accessor for DatagramChannelConnectError);
        v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &aBlock);

        *(v71 + 14) = v119;
        *(v71 + 22) = 2080;
        *(v71 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v70, &aBlock);
        _os_log_impl(&dword_1AEB26000, v68, v69, "Establishing channel attempt #%ld failed: %s, topic=%s", v71, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v72, -1, -1);
        MEMORY[0x1B27120C0](v71, -1, -1);

        v61 = v170;
      }

      else
      {

        outlined destroy of DatagramChannelConnectError(v51, type metadata accessor for DatagramChannelConnectError);
      }

      v120 = v186;
      if (*(v186 + 64) == v187)
      {

        v121 = v162;
        outlined init with copy of DatagramChannelConnectError(v188, v162);
        swift_storeEnumTagMultiPayload();
        v182(v121);
        outlined destroy of NSObject?(v121, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMd, &_ss6ResultOy7Network17NWConnectionGroupC14CopresenceCore27DatagramChannelConnectErrorOGMR);
      }

      else
      {

        v122 = v70;

        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          aBlock = v126;
          *v125 = 134218242;
          *(v125 + 4) = *(v120 + 72);
          *(v125 + 12) = 2080;
          v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v122, &aBlock);

          *(v125 + 14) = v127;
          _os_log_impl(&dword_1AEB26000, v123, v124, "Will retry establishing channel in %f seconds, topic=%s", v125, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v126);
          MEMORY[0x1B27120C0](v126, -1, -1);
          MEMORY[0x1B27120C0](v125, -1, -1);
        }

        else
        {
        }

        v128 = v166;
        static DispatchTime.now()();
        v129 = *(v120 + 72);
        v130 = v171;
        + infix(_:_:)();
        v188 = *(v172 + 8);
        v131 = v173;
        v188(v128, v173);
        v132 = swift_allocObject();
        v132[2] = v120;
        v132[3] = v61;
        v133 = v187;
        v132[4] = v158;
        v132[5] = v133;
        v134 = v183;
        v132[6] = v182;
        v132[7] = v134;
        v193 = partial apply for closure #1 in DatagramClient.handleChannelConnectError(error:channelStream:attempt:promise:);
        v194 = v132;
        aBlock = MEMORY[0x1E69E9820];
        v190 = 1107296256;
        v191 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v192 = &block_descriptor_4;
        v135 = _Block_copy(&aBlock);

        swift_unknownObjectRetain();

        v136 = v174;
        static DispatchQoS.unspecified.getter();
        v195 = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v137 = v176;
        v138 = v179;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x1B2710670](v130, v136, v137, v135);
        _Block_release(v135);
        (*(v178 + 8))(v137, v138);
        (*(v175 + 8))(v136, v177);
        v188(v130, v131);
      }

      return;
    }

LABEL_37:
    swift_once();
    goto LABEL_4;
  }

  if (v65 == 2)
  {
    v77 = a7;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, log);
    v79 = v180;
    outlined init with copy of DatagramChannelConnectError(v188, v180);
    v80 = v186;

    v81 = v62;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v187 = v81;
      v158 = a8;
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v195 = v85;
      *v84 = 136315650;
      v86 = *(v80 + 24);
      v87 = *(v80 + 32);
      v88 = *(v80 + 40);
      v89 = *(v80 + 48);
      aBlock = *(v80 + 16);
      v190 = v86;
      v191 = v87;
      v192 = v88;
      LOBYTE(v193) = v89;
      outlined copy of DatagramEndpoint(aBlock, v86, v87, v88, v89);
      v90 = DatagramEndpoint.description.getter();
      v92 = v91;
      outlined consume of DatagramEndpoint(aBlock, v190, v191, v192, v193);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v195);

      *(v84 + 4) = v93;
      *(v84 + 12) = 2080;
      v94 = v79;
      v95 = v159;
      outlined init with copy of DatagramChannelConnectError(v94, v159);
      v96 = v181;
      v97 = v185;
      (*(v181 + 56))(v95, 0, 1, v185);
      v98 = v95;
      v99 = v156;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v98, v156, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
      if ((*(v96 + 48))(v99, 1, v97) == 1)
      {
        v100 = 7104878;
        v101 = 0xE300000000000000;
      }

      else
      {
        v139 = v165;
        outlined init with take of DatagramChannelConnectError(v99, v165);
        outlined init with copy of DatagramChannelConnectError(v139, v164);
        v100 = String.init<A>(reflecting:)();
        v101 = v140;
        outlined destroy of DatagramChannelConnectError(v139, type metadata accessor for DatagramChannelConnectError);
      }

      outlined destroy of NSObject?(v159, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
      outlined destroy of DatagramChannelConnectError(v180, type metadata accessor for DatagramChannelConnectError);
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v195);

      *(v84 + 14) = v141;
      *(v84 + 22) = 2080;
      v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v187, &v195);

      *(v84 + 24) = v142;
      _os_log_impl(&dword_1AEB26000, v82, v83, "DatagramClient %s disconnected due to network failure: %s, topic=%s", v84, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v85, -1, -1);
      MEMORY[0x1B27120C0](v84, -1, -1);

      a8 = v158;
    }

    else
    {

      outlined destroy of DatagramChannelConnectError(v79, type metadata accessor for DatagramChannelConnectError);
    }

    v143 = v167;
    v144 = v160;
    outlined init with copy of DatagramChannelConnectError(v188, v160);
    v145 = v168;
    if ((*(v143 + 48))(v144, 2, v168))
    {
      outlined destroy of DatagramChannelConnectError(v144, type metadata accessor for DatagramChannelConnectError);
      v146 = v170;
      swift_storeEnumTagMultiPayload();
      (*(a8 + 64))(v146, v77, a8);
      outlined destroy of DatagramChannelConnectError(v146, type metadata accessor for DatagramChannelError);
    }

    else
    {
      v147 = v154;
      (*(v143 + 32))(v154, v144, v145);
      v148 = v170;
      (*(v143 + 16))(v170, v147, v145);
      swift_storeEnumTagMultiPayload();
      (*(a8 + 64))(v148, v77, a8);
      outlined destroy of DatagramChannelConnectError(v148, type metadata accessor for DatagramChannelError);
      (*(v143 + 8))(v147, v145);
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    __swift_project_value_buffer(v102, log);
    v103 = v157;
    outlined init with copy of DatagramChannelConnectError(v188, v157);

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    v106 = os_log_type_enabled(v104, v105);
    v107 = v185;
    if (v106)
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      aBlock = v109;
      *v108 = 136315394;
      v110 = v158;
      outlined init with copy of DatagramChannelConnectError(v103, v158);
      v111 = v181;
      (*(v181 + 56))(v110, 0, 1, v107);
      v112 = v110;
      v113 = v155;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v112, v155, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
      v114 = v62;
      if ((*(v111 + 48))(v113, 1, v107) == 1)
      {
        v115 = 7104878;
        v116 = 0xE300000000000000;
      }

      else
      {
        v149 = v165;
        outlined init with take of DatagramChannelConnectError(v113, v165);
        outlined init with copy of DatagramChannelConnectError(v149, v164);
        v115 = String.init<A>(reflecting:)();
        v116 = v150;
        outlined destroy of DatagramChannelConnectError(v149, type metadata accessor for DatagramChannelConnectError);
      }

      outlined destroy of NSObject?(v158, &_s14CopresenceCore27DatagramChannelConnectErrorOSgMd, _s14CopresenceCore27DatagramChannelConnectErrorOSgMR);
      outlined destroy of DatagramChannelConnectError(v103, type metadata accessor for DatagramChannelConnectError);
      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, &aBlock);

      *(v108 + 4) = v151;
      *(v108 + 12) = 2080;
      v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v114, &aBlock);

      *(v108 + 14) = v152;
      _os_log_impl(&dword_1AEB26000, v104, v105, "DatagramClient channel is in closed state, but channel-group got an unexpected failure: %s, topic=%s", v108, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v109, -1, -1);
      MEMORY[0x1B27120C0](v108, -1, -1);
    }

    else
    {

      outlined destroy of DatagramChannelConnectError(v103, type metadata accessor for DatagramChannelConnectError);
    }
  }
}

uint64_t specialized static DatagramChannelConnectError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DatagramChannelConnectError();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore27DatagramChannelConnectErrorO_ACtMd, &_s14CopresenceCore27DatagramChannelConnectErrorO_ACtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of DatagramChannelConnectError(a1, &v24 - v16);
  outlined init with copy of DatagramChannelConnectError(a2, &v17[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    outlined init with copy of DatagramChannelConnectError(v17, v12);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = MEMORY[0x1B270FAF0](v12, v8);
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      outlined destroy of DatagramChannelConnectError(v17, type metadata accessor for DatagramChannelConnectError);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    outlined destroy of NSObject?(v17, &_s14CopresenceCore27DatagramChannelConnectErrorO_ACtMd, &_s14CopresenceCore27DatagramChannelConnectErrorO_ACtMR);
    v21 = 0;
    return v21 & 1;
  }

  outlined destroy of DatagramChannelConnectError(v17, type metadata accessor for DatagramChannelConnectError);
  v21 = 1;
  return v21 & 1;
}

uint64_t type metadata accessor for DatagramChannelConnectError()
{
  result = type metadata singleton initialization cache for DatagramChannelConnectError;
  if (!type metadata singleton initialization cache for DatagramChannelConnectError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DatagramChannelConnectError()
{
  v0 = type metadata accessor for NWError();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t outlined copy of DatagramEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {

    return outlined copy of Data?(a3, a4);
  }

  else
  {
    swift_unknownObjectRetain();
  }
}

uint64_t outlined consume of DatagramEndpoint(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {

    return outlined consume of Data?(a3, a4);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t partial apply for closure #2 in DatagramClient.createChannelGroup(channelStream:attempt:promise:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  return (*(v10 + 56))(a1, a2, a3, a4, ObjectType, v10);
}

uint64_t outlined init with copy of DatagramChannelConnectError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatagramChannelConnectError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DatagramChannelConnectError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatagramChannelConnectError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DatagramChannelConnectError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void static NSUserDefaults.classProtectedStorage(suiteName:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
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
    v23 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v23);
    _os_log_impl(&dword_1AEB26000, v7, v8, "Enabling file protection class for conversation persistence storage %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v11 = MEMORY[0x1B270FF70](a1, a2);
  v12 = *MEMORY[0x1E695E8B8];
  v13 = *MEMORY[0x1E695E8B0];
  v14 = v11;
  _CFPreferencesSetFileProtectionClass();
  v15 = *MEMORY[0x1E69D8DD0];
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v16 == a2)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      v19 = *MEMORY[0x1E695E898];
      _CFPreferencesSetBackupDisabled();
    }
  }

  v20 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v21 = MEMORY[0x1B270FF70](a1, a2);
  v22 = [v20 initWithSuiteName_];

  a3[3] = type metadata accessor for NSUserDefaults();
  a3[4] = &protocol witness table for NSUserDefaults;
  if (!v22)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  }

  *a3 = v22;
}

uint64_t NSUserDefaults.setCodable<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized tryLog<A>(_:_:function:line:)(partial apply for implicit closure #1 in NSUserDefaults.setCodable<A>(_:forKey:));
  if (v10 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = MEMORY[0x1B270FF70](a2, a3);
    [v3 setObject:isa forKey:v8];

    return outlined consume of Data?(v9, v10);
  }

  return result;
}

uint64_t implicit closure #1 in NSUserDefaults.setCodable<A>(_:forKey:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v1)
  {
    *a1 = v6;
    a1[1] = v8;
  }

  return result;
}

uint64_t NSUserDefaults.get<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v7 = v6;
  v60 = a5;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v68 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v64 = &v56 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v56 - v23;
  v25 = MEMORY[0x1B270FF70](a2, a3);
  v26 = [v7 valueForKey_];

  if (v26)
  {
    v58 = a1;
    v63 = a6;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with copy of Any(&v76, &v75);
    v27 = swift_dynamicCast();
    v28 = *(a4 - 8);
    v29 = *(v28 + 56);
    v66 = v28 + 56;
    v65 = v29;
    v29(v24, v27 ^ 1u, 1, a4);
    v61 = v14[2];
    v61(v22, v24, v13);
    v30 = *(v28 + 48);
    v31 = v30(v22, 1, a4);
    v57 = v14;
    v32 = v14[1];
    v62 = v14 + 1;
    v67 = v32;
    v32(v22, v13);
    v33 = v68;
    if (v31 == 1)
    {
      v56 = v24;
      outlined init with copy of Any(&v76, &v75);
      if (swift_dynamicCast())
      {
        v59 = v13;
        v34 = v73[0];
        v35 = v73[1];
        v36 = type metadata accessor for JSONDecoder();
        v37 = *(v36 + 48);
        v38 = *(v36 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        outlined consume of Data._Representation(v34, v35);

        v39 = v64;
        v65(v64, 0, 1, a4);
        v24 = v56;
        v13 = v59;
        (v57[5])(v56, v39, v59);
      }

      else
      {
        v24 = v56;
      }
    }

    v61(v33, v24, v13);
    if (v30(v33, 1, a4) == 1)
    {
      v59 = v13;
      v67(v33, v13);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Log.default);
      outlined init with copy of Any(&v76, &v75);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v74 = v46;
        *v45 = 136315394;
        outlined init with copy of Any(&v75, v73);
        outlined init with copy of Any?(v73, &v71);
        if (v72)
        {
          outlined init with take of Any(&v71, v70);
          outlined init with copy of Any(v70, v69);
          v47 = String.init<A>(reflecting:)();
          v49 = v48;
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
        }

        else
        {
          v49 = 0xE300000000000000;
          v47 = 7104878;
        }

        outlined destroy of Any?(v73);
        __swift_destroy_boxed_opaque_existential_1Tm(&v75);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v74);

        *(v45 + 4) = v51;
        *(v45 + 12) = 2080;
        v73[0] = v58;
        MetatypeMetadata = swift_getMetatypeMetadata();
        v53 = >> prefix<A>(_:)(v73, MetatypeMetadata);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v74);

        *(v45 + 14) = v55;
        _os_log_impl(&dword_1AEB26000, v43, v44, "Failed to cast value: %s to type: %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v46, -1, -1);
        MEMORY[0x1B27120C0](v45, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v75);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v76);
      v65(v63, 1, 1, a4);
      return (v67)(v24, v59);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v76);
      v50 = v63;
      (*(v28 + 32))(v63, v33, a4);
      v65(v50, 0, 1, a4);
      return (v67)(v24, v13);
    }
  }

  else
  {
    v40 = *(*(a4 - 8) + 56);

    return v40(a6, 1, 1, a4);
  }
}

uint64_t NSUserDefaults.getGenericType<A>(_:forKey:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v15 = MEMORY[0x1B270FF70](a1, a2);
  v16 = [v5 valueForKey_];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v22, v23);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v17 = swift_dynamicCast();
  v18 = *(*(a3 - 8) + 56);
  if (v17)
  {
    v19 = *(a3 - 8);
    v18(v14, 0, 1, a3);
    (*(v19 + 32))(a4, v14, a3);
    v20 = 0;
  }

  else
  {
    v20 = 1;
    v18(v14, 1, 1, a3);
    (*(v11 + 8))(v14, v10);
  }

  return (v18)(a4, v20, 1, a3);
}

uint64_t NSUserDefaults.getAll<A>(of:)()
{
  v1 = type metadata accessor for JSONDecoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v4 = [v0 dictionaryRepresentation];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = Dictionary.compactMapValues<A>(_:)();

  return v5;
}

uint64_t closure #1 in NSUserDefaults.getAll<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35[3] = a2;
  v35[4] = a5;
  v35[2] = a3;
  v46 = a1;
  v39 = type metadata accessor for Optional();
  v8 = *(v39 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v39);
  v37 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v41 = v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 56);
  v35[1] = v16 + 56;
  v17(a6, 1, 1, a4);
  v40 = v8[1];
  v18 = v39;
  v40(a6, v39);
  outlined init with copy of Any(v46, v45);
  v19 = swift_dynamicCast();
  v36 = v17;
  v17(v15, v19 ^ 1u, 1, a4);
  v20 = (v8 + 4);
  v21 = v8[4];
  v21(a6, v15, v18);
  v22 = v8[2];
  v23 = v41;
  v38 = a6;
  v22(v41, a6, v18);
  v24 = v23;
  v25 = (*(v16 + 48))(v23, 1, a4);
  v26 = v18;
  v27 = v40;
  LODWORD(v23) = v25;
  result = (v40)(v24, v26);
  if (v23 == 1)
  {
    outlined init with copy of Any(v46, v45);
    result = swift_dynamicCast();
    if (result)
    {
      v46 = v20;
      v29 = v43;
      v30 = v44;
      v31 = v37;
      v32 = v42;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v32)
      {

        outlined consume of Data._Representation(v29, v30);
        v33 = v38;
        v27(v38, v26);
        v34 = 1;
      }

      else
      {
        v42 = v29;
        v33 = v38;
        v27(v38, v26);
        outlined consume of Data._Representation(v42, v30);
        v34 = 0;
      }

      v36(v31, v34, 1, a4);
      return (v21)(v33, v31, v26);
    }
  }

  return result;
}

uint64_t NSUserDefaults.getAllOfGenericType<A>(of:)()
{
  v1 = [v0 dictionaryRepresentation];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = Dictionary.compactMapValues<A>(_:)();

  return v2;
}

uint64_t closure #1 in NSUserDefaults.getAllOfGenericType<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9];
  outlined init with copy of Any(a1, v16);
  v11 = swift_dynamicCast();
  v12 = *(*(a2 - 8) + 56);
  if (v11)
  {
    v13 = *(a2 - 8);
    v12(v10, 0, 1, a2);
    (*(v13 + 32))(a3, v10, a2);
    v14 = 0;
  }

  else
  {
    v14 = 1;
    v12(v10, 1, 1, a2);
    (*(v7 + 8))(v10, v6);
  }

  return v12(a3, v14, 1, a2);
}

Swift::Void __swiftcall NSUserDefaults.remove(key:)(Swift::String key)
{
  v2 = MEMORY[0x1B270FF70](key._countAndFlagsBits, key._object);
  [v1 removeObjectForKey_];
}

void @nonobjc NSUserDefaults.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any?(a1, v14);
  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1B270FF70](a2, a3);
  [v3 setObject:v12 forKey:v13];
  swift_unknownObjectRelease();
}

void protocol witness for ProtectedStorage.remove(key:) in conformance NSUserDefaults()
{
  v1 = *v0;
  v2 = MEMORY[0x1B270FF70]();
  [v1 removeObjectForKey_];
}

unint64_t type metadata accessor for NSUserDefaults()
{
  result = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserDefaults);
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in NSUserDefaults.setCodable<A>(_:forKey:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return implicit closure #1 in NSUserDefaults.setCodable<A>(_:forKey:)(a1);
}

uint64_t PresenceSessionCreationRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPPresenceSessionCreationRequest_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id PresenceSessionCreationRequest.__allocating_init(id:isCrossAccount:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___CPPresenceSessionCreationRequest_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  v5[OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id PresenceSessionCreationRequest.init(id:isCrossAccount:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR___CPPresenceSessionCreationRequest_id;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v2[OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for PresenceSessionCreationRequest();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for PresenceSessionCreationRequest()
{
  result = type metadata singleton initialization cache for PresenceSessionCreationRequest;
  if (!type metadata singleton initialization cache for PresenceSessionCreationRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PresenceSessionCreationRequest.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v7);
  if (!v8)
  {
    outlined destroy of Any?(v7);
    goto LABEL_7;
  }

  type metadata accessor for PresenceSessionCreationRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_7;
  }

  v2 = *(v1 + OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount);
  v3 = *(v6 + OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount);

  v4 = v2 ^ v3 ^ 1;
  return v4 & 1;
}

id PresenceSessionCreationRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  type metadata accessor for NSUUID();
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v16 && (v17 = v16, (*(v9 + 56))(v7, 1, 1, v8), lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID), dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)(), v17, (*(v9 + 48))(v7, 1, v8) != 1))
  {
    v21 = *(v9 + 32);
    v21(v13, v7, v8);
    v21(v15, v13, v8);
    (*(v9 + 16))(v1 + OBJC_IVAR___CPPresenceSessionCreationRequest_id, v15, v8);
    v22 = MEMORY[0x1B270FF70](0x4173736F72437369, 0xEE00746E756F6363);
    v23 = [a1 decodeBoolForKey_];

    (*(v9 + 8))(v15, v8);
    v2[OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount] = v23;
    v24 = type metadata accessor for PresenceSessionCreationRequest();
    v26.receiver = v2;
    v26.super_class = v24;
    v25 = objc_msgSendSuper2(&v26, sel_init);

    return v25;
  }

  else
  {

    type metadata accessor for PresenceSessionCreationRequest();
    v18 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v19 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t type metadata accessor for NSUUID()
{
  result = lazy cache variable for type metadata for NSUUID;
  if (!lazy cache variable for type metadata for NSUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUUID);
  }

  return result;
}

Swift::Void __swiftcall PresenceSessionCreationRequest.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x1B270FF70](25705, 0xE200000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = *(v2 + OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount);
  v7 = MEMORY[0x1B270FF70](0x4173736F72437369, 0xEE00746E756F6363);
  [(objc_class *)with.super.isa encodeBool:v6 forKey:v7];
}

uint64_t PresenceSessionCreationRequest.description.getter()
{
  swift_getObjectType();
  MEMORY[0x1B2710020](60, 0xE100000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](0x203A666C657320, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  MEMORY[0x1B2710020](1029990688, 0xE400000000000000);

  _StringGuts.grow(_:)(18);

  v5 = *(v0 + OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount);
  v3 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v3);

  MEMORY[0x1B2710020](0xD000000000000010, 0x80000001AEE32110);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id PresenceSessionCreationRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenceSessionCreationRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenceSessionCreationRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for PresenceSessionCreationRequest()
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

uint64_t specialized BinaryInteger.bit(at:)(uint64_t a1, unsigned int a2)
{
  if (a1 < -32)
  {
    return 0;
  }

  if (a1 > 32)
  {
    return 0;
  }

  if (a1 < 0)
  {
    v3 = a2 << -a1;
    if (a1 == -32)
    {
      LOBYTE(v3) = 0;
    }

    return v3 & 1;
  }

  else
  {
    if (a1 == 32)
    {
      return 0;
    }

    return (a2 >> a1) & 1;
  }
}

Swift::Bool __swiftcall BinaryInteger.bit(at:)(Swift::Int at)
{
  v3 = v2;
  v4 = v1;
  v6 = *(*(v2 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v35 - v10;
  v12 = *(v4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v35 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v35 - v20;
  v38 = at;
  v35[4] = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
  v35[1] = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v35[2] = v11;
  v35[3] = v6;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static BinaryInteger.& infix(_:_:)();
  v22 = *(v12 + 8);
  v22(v16, v4);
  v36 = v22;
  v37 = v12 + 8;
  v22(v19, v4);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v24 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v25 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v26 = v21;
    if (v24)
    {
      v27 = v36;
      if (v25 <= 64)
      {
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v28 = *(*(v3 + 32) + 8);
        v29 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v27(v19, v4);
        if ((v29 & 1) == 0)
        {
          v27(v26, v4);
          v31 = 0;
          return v31 & 1;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v27 = v36;
      if (v25 < 64)
      {
LABEL_10:
        v23 = dispatch thunk of BinaryInteger._lowWord.getter();
        v27(v26, v4);
        goto LABEL_11;
      }
    }

    v38 = 1;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v33 = *(*(v3 + 16) + 8);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27(v19, v4);
    v27(v26, v4);
    return v31 & 1;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    v23 = dispatch thunk of BinaryInteger._lowWord.getter();
    v36(v21, v4);
LABEL_11:
    v31 = v23 == 1;
    return v31 & 1;
  }

  v38 = 1;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v30 = *(*(v3 + 16) + 8);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = v36;
  v36(v19, v4);
  v32(v21, v4);
  return v31 & 1;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t specialized BinaryInteger.setBit(at:to:)(unint64_t result, char a2)
{
  v3 = 1 << result;
  if (a2)
  {
    if (result >= 0x20)
    {
      v3 = 0;
    }

    *v2 |= v3;
  }

  else
  {
    if (result < 0x20)
    {
      v4 = ~v3;
    }

    else
    {
      v4 = -1;
    }

    *v2 &= v4;
  }

  return result;
}

Swift::Void __swiftcall BinaryInteger.setBit(at:to:)(Swift::Int at, Swift::Bool to)
{
  v24 = at;
  v4 = v2;
  v6 = *(*(v3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v23 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v20 = (v10 + 8);
  if (to)
  {
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v25 = v24;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v21 = *v20;
    (*v20)(v17, v4);
    dispatch thunk of static BinaryInteger.|= infix(_:_:)();
    v21(v19, v4);
  }

  else
  {
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v25 = v24;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v22 = *v20;
    (*v20)(v14, v4);
    dispatch thunk of static BinaryInteger.~ prefix(_:)();
    v22(v17, v4);
    dispatch thunk of static BinaryInteger.&= infix(_:_:)();
    v22(v19, v4);
  }
}

uint64_t FixedBitArray.words.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t FixedBitArray.init(bitCapacity:)(unint64_t result)
{
  v1 = ceil(vcvtd_n_f64_s64(result, 5uLL));
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  if (v1 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v3 + 16) = v2;
  bzero((v3 + 32), 4 * v2);
  return v3;
}

uint64_t FixedBitArray.subscript.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2 >> 59;
  if (v2 >> 59)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = (16 * v2) & 0x7FFFFFFFFFFFFFE0;
  if (v2 <= a1)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = a1 + 31;
  if (a1 >= 0)
  {
    v2 = a1;
  }

  if (a1 < -31)
  {
    goto LABEL_13;
  }

  v3 = v2 >> 5;
  v2 = *(a2 + 16);
  if (v3 >= v2)
  {
LABEL_14:
    __break(1u);
    return (v3 << -v2) & 1;
  }

  LOBYTE(v2) = a1 - 32 * v3;
  v4 = a1 - 32 * v3 < 0;
  LODWORD(v3) = *(a2 + 4 * v3 + 32);
  if (!v4)
  {
    return (v3 >> v2) & 1;
  }

  return (v3 << -v2) & 1;
}

uint64_t key path getter for FixedBitArray.subscript(_:) : FixedBitArray@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 24);
  if (v5 >> 62)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >> 59)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *a2;
  if (*a2 >= ((16 * v5) & 0x7FFFFFFFFFFFFFE0))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6 + 31;
  if (v6 >= 0)
  {
    v7 = *a2;
  }

  if (v6 < -31)
  {
    goto LABEL_12;
  }

  v8 = v7 >> 5;
  if (v8 < *(v4 + 16))
  {
    result = specialized BinaryInteger.bit(at:)(v6 - 32 * v8, *(v4 + 4 * v8 + 32));
    *a3 = result & 1;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t FixedBitArray.subscript.setter(char a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(*v2 + 24);
  if (v7 >> 62)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 >> 59)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = a2;
  if (((16 * v7) & 0x7FFFFFFFFFFFFFE0) <= a2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = a1;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 + 31;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (v4 >= -31)
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_23:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v6 = result;
  if (v4 < -31)
  {
    goto LABEL_24;
  }

LABEL_9:
  v10 = v5 >> 5;
  if (v5 >> 5 >= *(v6 + 16))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v11 = v4 - 32 * v10;
  v12 = v6 + 32;
  if (v3)
  {
    if (v11 >= 0x20)
    {
      v13 = 0;
    }

    else
    {
      v13 = 1 << v11;
    }

    v14 = *(v12 + 4 * v10) | v13;
  }

  else
  {
    if (v11 < 0x20)
    {
      v15 = ~(1 << v11);
    }

    else
    {
      v15 = -1;
    }

    v14 = *(v12 + 4 * v10) & v15;
  }

  *(v12 + 4 * v10) = v14;
  *v2 = v6;
  return result;
}

Swift::tuple_word_Int_bit_Int __swiftcall FixedBitArray.index(for:)(Swift::Int a1)
{
  v2 = *(v1 + 24);
  if (v2 >> 62)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >> 59)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (((16 * v2) & 0x7FFFFFFFFFFFFFE0) <= a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 + 31;
  }

  v1 = a1 - (v3 & 0xFFFFFFFFFFFFFFE0);
  a1 = v3 >> 5;
LABEL_11:
  result.bit = v1;
  result.word = a1;
  return result;
}

uint64_t (*FixedBitArray.subscript.modify(uint64_t (*result)(uint64_t *a1, char a2), uint64_t a2))(uint64_t *a1, char a2)
{
  *result = a2;
  *(result + 1) = v2;
  v3 = *v2;
  *(result + 2) = *v2;
  v4 = *(v3 + 24);
  if (v4 >> 62)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >> 59)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((16 * v4) & 0x7FFFFFFFFFFFFFE0) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = a2 + 31;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  if (a2 < -31)
  {
    goto LABEL_14;
  }

  v6 = v5 >> 5;
  if (v5 >> 5 >= *(v3 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = a2 - (v5 & 0xFFFFFFFFFFFFFFE0);
  v8 = *(v3 + 4 * v6 + 32);
  v9 = v8 >> v7;
  v10 = v8 << -v7;
  if (v7 >= 0)
  {
    LOBYTE(v10) = v9;
  }

  *(result + 24) = v10 & 1;
  return FixedBitArray.subscript.modify;
}

uint64_t FixedBitArray.subscript.modify(uint64_t *a1, char a2)
{
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(v4 + 24);
  v7 = v6 >> 62;
  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v7)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v6 >> 59)
  {
    goto LABEL_26;
  }

  v2 = *a1;
  if (((16 * v6) & 0x7FFFFFFFFFFFFFE0) <= *a1)
  {
    goto LABEL_28;
  }

  v8 = a1[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v6 = v2 / 32;
    v7 = *(v4 + 16);
    if (v2 / 32 < v7)
    {
      break;
    }

    __break(1u);
LABEL_8:
    if (v7)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v6 >> 59)
    {
      goto LABEL_27;
    }

    v2 = *a1;
    if (((16 * v6) & 0x7FFFFFFFFFFFFFE0) > *a1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      v6 = v2 / 32;
      if (v2 / 32 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  v10 = v2 - 32 * v6;
  v11 = v4 + 32;
  if (v5)
  {
    if (v10 >= 0x20)
    {
      v12 = 0;
    }

    else
    {
      v12 = 1 << v10;
    }

    v13 = *(v11 + 4 * v6) | v12;
  }

  else
  {
    if (v10 < 0x20)
    {
      v14 = ~(1 << v10);
    }

    else
    {
      v14 = -1;
    }

    v13 = *(v11 + 4 * v6) & v14;
  }

  v15 = a1[1];
  *(v11 + 4 * v6) = v13;
  *v15 = v4;
  return result;
}

uint64_t FixedBitArray.endIndex.getter(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >> 62)
  {
    __break(1u);
  }

  else if (!(v1 >> 59))
  {
    return (16 * v1) & 0x7FFFFFFFFFFFFFE0;
  }

  __break(1u);
  return result;
}

unint64_t (*protocol witness for MutableCollection.subscript.modify in conformance FixedBitArray(unint64_t (*result)(uint64_t a1, char a2), uint64_t *a2))(uint64_t a1, char a2)
{
  v3 = *a2;
  *result = v2;
  *(result + 1) = v3;
  v4 = *v2;
  *(result + 2) = *v2;
  v5 = *(v4 + 24);
  if (v5 >> 62)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >> 59)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= ((16 * v5) & 0x7FFFFFFFFFFFFFE0))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v3 + 31;
  if (v3 >= 0)
  {
    v6 = v3;
  }

  if (v3 < -31)
  {
    goto LABEL_12;
  }

  v7 = v6 >> 5;
  if (v7 < *(v4 + 16))
  {
    *(result + 24) = specialized BinaryInteger.bit(at:)(v3 - 32 * v7, *(v4 + 4 * v7 + 32)) & 1;
    return protocol witness for MutableCollection.subscript.modify in conformance FixedBitArray;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t protocol witness for MutableCollection.subscript.modify in conformance FixedBitArray(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v4 + 3);
  v7 = v6 >> 62;
  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >> 59)
  {
    goto LABEL_20;
  }

  v2 = *(a1 + 8);
  if (v2 >= ((16 * v6) & 0x7FFFFFFFFFFFFFE0))
  {
    goto LABEL_22;
  }

  v8 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v6 = v2 / 32;
    v7 = *(v4 + 2);
    if (v2 / 32 < v7)
    {
      break;
    }

    __break(1u);
LABEL_8:
    if (v7)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v6 >> 59)
    {
      goto LABEL_21;
    }

    v2 = *(a1 + 8);
    if (v2 < ((16 * v6) & 0x7FFFFFFFFFFFFFE0))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      if (v2 / 32 >= *(v4 + 2))
      {
        __break(1u);
        return result;
      }

      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v10 = *a1;
  if (v2 <= 0)
  {
    v11 = -(-v2 & 0x1F);
  }

  else
  {
    v11 = v2 & 0x1F;
  }

  result = specialized BinaryInteger.setBit(at:to:)(v11, v5);
  *v10 = v4;
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance FixedBitArray(uint64_t *a1, uint64_t *a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], *a1, a1[1], a1[2]);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance FixedBitArray(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

void (*specialized MutableCollection<>.subscript.modify(void *a1, uint64_t a2, int64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  result = *v3;
  v10 = *(*v3 + 3);
  if (v10 >> 62)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >> 59)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((16 * v10) & 0xFFFFFFFFFFFFFFE0) >= a3)
  {
    *v8 = a2;
    v8[1] = a3;
    v8[2] = result;

    return MutableCollection<>.subscript.modifyspecialized ;
  }

LABEL_12:
  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[2];

    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v6, v8, v5, v3, v4, v7);
  }

  else
  {
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)((*a1)[5], v8, v5, v3, v4, v7);
  }

  v10 = v2[2];

  free(v2);
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance FixedBitArray@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *protocol witness for MutableCollection.swapAt(_:_:) in conformance FixedBitArray(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != *a2)
  {
    v5 = *v2;
    v6 = FixedBitArray.subscript.getter(*result, *v2);
    v7 = FixedBitArray.subscript.getter(v4, v5);
    FixedBitArray.subscript.setter(v7 & 1, v3);

    return FixedBitArray.subscript.setter(v6 & 1, v4);
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4 >> 62)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >> 59)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = (16 * v4) & 0xFFFFFFFFFFFFFFE0;
  if (v5 < result || v5 < a3)
  {
    goto LABEL_20;
  }

  v7 = a3 - result;
  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a2)
  {
    return 0;
  }

LABEL_15:
  v8 = __OFADD__(result, a2);
  result += a2;
  if (v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result > v5)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

void protocol witness for Collection.endIndex.getter in conformance FixedBitArray(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 24);
  if (v2 >> 62)
  {
    __break(1u);
  }

  else if (!(v2 >> 59))
  {
    *a1 = (16 * v2) & 0x7FFFFFFFFFFFFFE0;
    return;
  }

  __break(1u);
}

uint64_t protocol witness for Collection.subscript.getter in conformance FixedBitArray@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *v2;
  v5 = *(*v2 + 24);
  if (v5 >> 62)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v5 >> 59)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = *a1;
  if (*a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a1[1];
  if (((16 * v5) & 0xFFFFFFFFFFFFFFE0) >= v7)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance FixedBitArray(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  if (v2 >> 62)
  {
    __break(1u);
  }

  else if (!(v2 >> 59))
  {
    *a1 = 0;
    a1[1] = (16 * v2) & 0x7FFFFFFFFFFFFFE0;
    return;
  }

  __break(1u);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance FixedBitArray()
{
  v1 = *(*v0 + 24);
  if (v1 >> 62)
  {
    __break(1u);
  }

  else if (!(v1 >> 59))
  {
    return v1 < 2;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance FixedBitArray(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance FixedBitArray(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

unint64_t *protocol witness for Collection.index(after:) in conformance FixedBitArray@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(*v2 + 24);
  if (v3 >> 62)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 >> 59)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*result < ((16 * v3) & 0x7FFFFFFFFFFFFFE0))
  {
    *a2 = *result + 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t *protocol witness for Collection.formIndex(after:) in conformance FixedBitArray(unint64_t *result)
{
  v2 = *(*v1 + 24);
  if (v2 >> 62)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 >> 59)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*result < ((16 * v2) & 0x7FFFFFFFFFFFFFE0))
  {
    ++*result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance FixedBitArray@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(*v2 + 24);
  if (v4 >> 62)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 >> 59)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 < ((16 * v4) & 0x7FFFFFFFFFFFFFE0))
  {
    *a2 = v3;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance FixedBitArray(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(*v1 + 24);
  if (v3 >> 62)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v3 >> 59)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < ((16 * v3) & 0x7FFFFFFFFFFFFFE0))
  {
    *result = v2;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance FixedBitArray@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(*v3 + 24);
  if (v5 >> 62)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >> 59)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= ((16 * v5) & 0x7FFFFFFFFFFFFFE0))
  {
    *a3 = v4;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance FixedBitArray@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance FixedBitArray(unint64_t *result, unint64_t *a2)
{
  v3 = *(*v2 + 24);
  if (v3 >> 62)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >> 59)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *a2;
  v5 = (16 * v3) & 0x7FFFFFFFFFFFFFE0;
  if (*result <= v5 && v4 <= v5)
  {
    return (v4 - *result);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance FixedBitArray()
{
  v1 = *(*v0 + 24);
  if (v1 >> 62)
  {
    __break(1u);
  }

  else if (!(v1 >> 59))
  {
    return (16 * v1) & 0x7FFFFFFFFFFFFFE0;
  }

  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance FixedBitArray()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t SeqNumReceivedBuffer.parityFlag.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SeqNumReceivedBuffer.processedFlag.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void SeqNumReceivedBuffer.init(seqNumCapacity:)(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[2] = 0;
  v3 = ceil(vcvtd_n_f64_s64(a1, 5uLL));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (v4)
  {
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v4;
    bzero((v5 + 32), 4 * v4);
    *a2 = v5;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v6 + 16) = v4;
    bzero((v6 + 32), 4 * v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    *a2 = MEMORY[0x1E69E7CC0];
  }

  a2[1] = v6;
}

uint64_t SeqNumReceivedBuffer.capacity.getter()
{
  v1 = *(*(v0 + 8) + 24);
  if (v1 >> 62)
  {
    __break(1u);
  }

  else if (!(v1 >> 59))
  {
    return (16 * v1) & 0x7FFFFFFFFFFFFFE0;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall SeqNumReceivedBuffer.process(seqNum:)(Swift::UInt64 seqNum)
{
  v8 = v2[1];
  v7 = v2[2];
  if (v7 <= seqNum)
  {
    v7 = seqNum;
  }

  v2[2] = v7;
  v9 = *(v8 + 3);
  if (v9 >> 62)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v9 >> 59)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = (16 * v9) & 0xFFFFFFFFFFFFFFE0;
  if (!v10)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v1 = *v2;
  v11 = *(*v2 + 3);
  if (v11 >> 62)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v11 >> 59)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = seqNum / v10;
  v6 = seqNum % v10;
  if ((seqNum % v10) >= ((16 * v11) & 0x7FFFFFFFFFFFFFE0))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = v6 >> 5;
  if (v6 >> 5 >= *(v1 + 2))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v4 = 1 << v6;
  if (((v5 ^ ((*&v1[4 * v3 + 32] & (1 << v6)) != 0)) & 1) == 0)
  {
    if (v3 < *(v8 + 2))
    {
      if ((*&v8[4 * v3 + 32] & v4) == 0)
      {
        LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
        if (v15)
        {
LABEL_25:
          if (v3 >= *(v8 + 2))
          {
            __break(1u);
            return v15;
          }

          *&v8[4 * v3 + 32] |= v4;
          v2[1] = v8;
          goto LABEL_29;
        }

LABEL_45:
        v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        v8 = v15;
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
LABEL_13:
    if (v3 >= *(v8 + 2))
    {
      __break(1u);
    }

    else
    {
      *&v8[4 * v3 + 32] |= v4;
      v2[1] = v8;
      v12 = *(v1 + 3);
      if (!(v12 >> 62))
      {
        if (!(v12 >> 59))
        {
          if (v6 < ((16 * v12) & 0x7FFFFFFFFFFFFFE0))
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_18:
              if (v3 < *(v1 + 2))
              {
                v13 = v1 + 32;
                if (v5)
                {
                  v14 = *&v13[4 * v3] | v4;
                }

                else
                {
                  v14 = *&v13[4 * v3] & ~v4;
                }

                *&v13[4 * v3] = v14;
                *v2 = v1;
LABEL_29:
                LOBYTE(v15) = 1;
                return v15;
              }

              __break(1u);
              goto LABEL_45;
            }

LABEL_43:
            v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
            goto LABEL_18;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  if ((v5 & 1) != (((v7 / v10) & 1) == 0))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_23:
  LOBYTE(v15) = 0;
  return v15;
}

uint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = result;
  v6 = *result;
  v7 = *(*result + 24);
  if (v7 >> 62)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v7 >> 59)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a2 < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (((16 * v7) & 0xFFFFFFFFFFFFFFE0) < a3)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v10 = a4 == a5;
  v11 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v13 = 0;
    v30 = a2 - a3 + 1;
    v31 = a6 + 32;
    v14 = -a4;
    v15 = a4 - a5 + 1;
    v16 = a5;
    while (1)
    {
      v17 = a4 + v13;
      if (a4 + v13 >= a5)
      {
        break;
      }

      v18 = *(a6 + 24);
      if (v18 >> 62)
      {
        goto LABEL_37;
      }

      if (v18 >> 59)
      {
        goto LABEL_38;
      }

      if (v17 >= ((16 * v18) & 0x7FFFFFFFFFFFFFE0))
      {
        goto LABEL_39;
      }

      v19 = v17 + 31;
      if (v17 >= 0)
      {
        v19 = a4 + v13;
      }

      if (a4 < -31)
      {
        goto LABEL_40;
      }

      v20 = v19 >> 5;
      if (v19 >> 5 >= *(a6 + 16))
      {
        goto LABEL_41;
      }

      v21 = a4 + v13 - (v19 & 0xFFFFFFFFFFFFFFE0);
      v22 = *(v31 + 4 * v20);
      if ((v21 & 0x8000000000000000) != 0)
      {
        v23 = v22 << (v14 + 32 * v20);
      }

      else
      {
        v23 = v22 >> (a4 + v13 - 32 * v20);
      }

      v24 = a2 + v13;
      if (a2 + v13 >= ((16 * v7) & 0x7FFFFFFFFFFFFFE0))
      {
        goto LABEL_42;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        v6 = result;
      }

      v25 = v24 >> 5;
      if (v24 >> 5 >= *(v6 + 16))
      {
        goto LABEL_43;
      }

      v26 = v6 + 32;
      v27 = 1 << (a2 + v13);
      if (v23)
      {
        v28 = *(v26 + 4 * v25) | v27;
      }

      else
      {
        v28 = *(v26 + 4 * v25) & ~v27;
      }

      *(v26 + 4 * v25) = v28;
      *v32 = v6;
      v7 = *(v6 + 24);
      if (v7 >> 62)
      {
        goto LABEL_44;
      }

      if (v7 >> 59)
      {
        goto LABEL_45;
      }

      if (a4 < 0 || v24 >= ((16 * v7) & 0x7FFFFFFFFFFFFFE0))
      {
        goto LABEL_46;
      }

      v29 = v15 + v13;
      v11 = v30 + v13 == 0;
      v10 = v15 + v13 == 0;
      if (v30 + v13)
      {
        ++v13;
        LOBYTE(v14) = v14 - 1;
        a5 = v16;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_33;
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
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_33:
  if (!v11)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v10)
  {
LABEL_52:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FixedBitArray and conformance FixedBitArray()
{
  result = lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray;
  if (!lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray;
  if (!lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray;
  if (!lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray;
  if (!lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray;
  if (!lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FixedBitArray and conformance FixedBitArray);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<FixedBitArray> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy14CopresenceCore13FixedBitArrayVGMd, &_ss5SliceVy14CopresenceCore13FixedBitArrayVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized MutableCollection<>._partitionImpl(by:)(uint64_t result)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  if (v4 >> 62)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v4 >> 59)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v5 = (16 * v4) & 0x7FFFFFFFFFFFFFE0;
  if (v5)
  {
    v6 = result;
    v7 = 0;
LABEL_5:
    v8 = v3 + 32;
    while (1)
    {
      if (v7 >= ((16 * v4) & 0x7FFFFFFFFFFFFFE0))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >> 5 >= *(v3 + 16))
      {
        goto LABEL_31;
      }

      v14 = (*(v8 + 4 * (v7 >> 5)) >> v7) & 1;
      result = v6(&v14);
      if (v2)
      {
        return v7;
      }

      if (result)
      {
        break;
      }

      v4 = *(v3 + 24);
      if (v4 >> 62)
      {
        goto LABEL_32;
      }

      if (v4 >> 59)
      {
        goto LABEL_33;
      }

      if (v7 >= ((16 * v4) & 0x7FFFFFFFFFFFFFE0))
      {
        goto LABEL_34;
      }

      if (++v7 >= v5)
      {
        return v7;
      }
    }

    while (!__OFSUB__(v5--, 1))
    {
      v10 = *(v3 + 24);
      if (v10 >> 62)
      {
        goto LABEL_36;
      }

      if (v10 >> 59)
      {
        goto LABEL_37;
      }

      if (v5 >= ((16 * v10) & 0x7FFFFFFFFFFFFFE0))
      {
        goto LABEL_38;
      }

      if (v7 >= v5)
      {
        return v7;
      }

      if (v5 >> 5 >= *(v3 + 16))
      {
        goto LABEL_39;
      }

      v13 = (*(v8 + 4 * (v5 >> 5)) >> v5) & 1;
      result = v6(&v13);
      if ((result & 1) == 0)
      {
        v11 = FixedBitArray.subscript.getter(v7, v3);
        v12 = FixedBitArray.subscript.getter(v5, v3);
        FixedBitArray.subscript.setter(v12 & 1, v7);
        result = FixedBitArray.subscript.setter(v11 & 1, v5);
        v3 = *v1;
        v4 = *(*v1 + 24);
        if (v4 >> 62)
        {
          goto LABEL_42;
        }

        if (v4 >> 59)
        {
          goto LABEL_43;
        }

        if (v7 >= ((16 * v4) & 0x7FFFFFFFFFFFFFE0))
        {
          goto LABEL_44;
        }

        if (++v7 < v5)
        {
          goto LABEL_5;
        }

        return v7;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return 0;
}

uint64_t ApplicationLauncher.placementSceneIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t ApplicationLauncher.placementSceneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySS__GMd, &_sScS12ContinuationV11YieldResultOySS__GMR);
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  v18 = (v2 + OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifier);
  swift_beginAccess();
  v19 = v18[1];
  *v18 = a1;
  v18[1] = a2;

  if (a2)
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))(result);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return outlined destroy of NSObject?(v12, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
    }

    else
    {
      (*(v14 + 32))(v17, v12, v13);
      v24 = a1;
      v25 = a2;
      AsyncStream.Continuation.yield(_:)();
      (*(v22 + 8))(v8, v23);
      return (*(v14 + 8))(v17, v13);
    }
  }

  return result;
}

void (*ApplicationLauncher.placementSceneIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySS__GMd, &_sScS12ContinuationV11YieldResultOySS__GMR);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[8] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR) - 8) + 64);
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  v5[9] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
  v5[10] = v11;
  v12 = *(v11 - 8);
  v5[11] = v12;
  if (v3)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifier;
  v5[12] = v13;
  v5[13] = v14;
  swift_beginAccess();
  return ApplicationLauncher.placementSceneIdentifier.modify;
}

void ApplicationLauncher.placementSceneIdentifier.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 40);
    v5 = (v4 + *(v3 + 104));
    v6 = v5[1];
    if (v6)
    {
      v7 = *v5;
      v8 = *(v3 + 80);
      v9 = *(v3 + 88);
      v10 = *(v3 + 72);
      v11 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA0);

      v11(v12);
      if ((*(v9 + 48))(v10, 1, v8) == 1)
      {
        v13 = *(v3 + 72);

        outlined destroy of NSObject?(v13, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
      }

      else
      {
        v15 = *(v3 + 88);
        v14 = *(v3 + 96);
        v16 = *(v3 + 80);
        v18 = *(v3 + 56);
        v17 = *(v3 + 64);
        v19 = *(v3 + 48);
        (*(v15 + 32))(v14, *(v3 + 72), v16);
        *(v3 + 24) = v7;
        *(v3 + 32) = v6;
        AsyncStream.Continuation.yield(_:)();
        (*(v18 + 8))(v17, v19);
        (*(v15 + 8))(v14, v16);
      }
    }
  }

  v21 = *(v3 + 64);
  v20 = *(v3 + 72);
  free(*(v3 + 96));
  free(v20);
  free(v21);

  free(v3);
}

uint64_t key path setter for ApplicationLauncher.placementSceneIdentifierContinuation : ApplicationLauncher(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v9 - v6, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xA8))(v7);
}

uint64_t ApplicationLauncher.placementSceneIdentifierContinuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifierContinuation;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, a1, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
}

uint64_t ApplicationLauncher.placementSceneIdentifierContinuation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifierContinuation;
  swift_beginAccess();
  outlined assign with take of AsyncStream<String>.Continuation?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of AsyncStream<String>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id ApplicationLauncher.init(behaviors:featureFlags:spatialApplicationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR___CPApplicationLauncherSwift_pendingApplicationLaunches];
  *v7 = 0;
  *(v7 + 1) = MEMORY[0x1E69E7CC8];
  v8 = &v3[OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifierContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  *&v3[OBJC_IVAR___CPApplicationLauncherSwift_behaviors] = a1;
  *&v3[OBJC_IVAR___CPApplicationLauncherSwift_featureFlags] = a2;
  v11 = (a1 + 32);
  v12 = *(a1 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 2;
    v14 = *v11;
    type metadata accessor for PegasusApplicationLaunchBehavior();
    v15 = swift_dynamicCastClass();
    v11 = v13;
    if (v15)
    {
      v16 = v15;
      swift_unknownObjectRetain();
      v17 = v16;
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_6:
  *&v3[OBJC_IVAR___CPApplicationLauncherSwift_pegasusLaunchBehavior] = v17;
  *&v3[OBJC_IVAR___CPApplicationLauncherSwift_spatialApplicationManager] = a3;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for ApplicationLauncher();
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t type metadata accessor for ApplicationLauncher()
{
  result = type metadata singleton initialization cache for ApplicationLauncher;
  if (!type metadata singleton initialization cache for ApplicationLauncher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ApplicationLauncher.init(spatialApplicationManager:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for PegasusApplicationLaunchBehavior();
  v4 = swift_allocObject();
  type metadata accessor for PegasusApplicationLaunchBehavior.AuthorizationManager();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = MEMORY[0x1E69E7CC8];
  *(v5 + 112) = MEMORY[0x1E69E7CC8];
  *(v4 + 24) = v5;
  type metadata accessor for BackgroundApplicationLaunchBehavior.AssertionStore();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = v6;
  *(v4 + 16) = v7;
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = &v8[2 * v10];
  v11[4] = v4;
  v11[5] = &protocol witness table for BackgroundApplicationLaunchBehavior;
  type metadata accessor for BackgroundApplicationLaunchBehavior();
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = v6;
  *(v12 + 16) = v13;
  v15 = v8[2];
  v14 = v8[3];
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
  }

  v8[2] = v16;
  v17 = &v8[2 * v15];
  v17[4] = v12;
  v17[5] = &protocol witness table for BackgroundApplicationLaunchBehavior;
  type metadata accessor for ForegroundApplicationLaunchBehavior();
  v18 = swift_allocObject();
  v19 = v8[3];
  v20 = v15 + 2;
  if (v20 > (v19 >> 1))
  {
    v27 = v18;
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20, 1, v8);
    v18 = v27;
  }

  v8[2] = v20;
  v21 = &v8[2 * v16];
  v21[4] = v18;
  v21[5] = &protocol witness table for ForegroundApplicationLaunchBehavior;
  ObjectType = swift_getObjectType();
  v23 = (*(ObjectType + 184))(v8, [objc_allocWithZone(CPFeatureFlags) init], a1);
  v24 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v25 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v23;
}

void ApplicationLauncher.launchApplication(for:options:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = &v4[OBJC_IVAR___CPApplicationLauncherSwift_pendingApplicationLaunches];
  os_unfair_lock_lock(&v4[OBJC_IVAR___CPApplicationLauncherSwift_pendingApplicationLaunches]);
  _s14CopresenceCore19ApplicationLauncherC06launchC03for7options10completionySo27CPLaunchableActivitySession_p_So013CPApplicationD7OptionsVySb_s5Error_pSgtcSgtFSbSDy10Foundation4UUIDVSayySb_ALtcGGzYuYTXEfU_(v13 + 1, a1, a3, a4, &v18);
  os_unfair_lock_unlock(v13);
  if (v18 == 1)
  {
    static TaskPriority.userInitiated.getter();
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v4;
    v15[5] = a1;
    v15[6] = a2;
    v16 = v4;
    swift_unknownObjectRetain();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #2 in ApplicationLauncher.launchApplication(for:options:completion:), v15);
  }
}

uint64_t _s14CopresenceCore19ApplicationLauncherC06launchC03for7options10completionySo27CPLaunchableActivitySession_p_So013CPApplicationD7OptionsVySb_s5Error_pSgtcSgtFSbSDy10Foundation4UUIDVSayySb_ALtcGGzYuYTXEfU_@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v45 = a4;
  v47 = a3;
  v44 = a5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  v18 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = *a1;
  if (*(*a1 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    v23 = *(v8 + 8);

    v23(v17, v7);

    v25 = v47;
    if (v47)
    {
      v43 = v23;
      v26 = v45;

      v27 = [a2 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = specialized Dictionary.subscript.modify(v46);
      if (*v28)
      {
        v30 = v28;
        v31 = swift_allocObject();
        *(v31 + 16) = v47;
        *(v31 + 24) = v26;
        v32 = *v30;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v30 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
          *v30 = v32;
        }

        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
          *v30 = v32;
        }

        v32[2] = v35 + 1;
        v36 = &v32[2 * v35];
        v36[4] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()partial apply;
        v36[5] = v31;
        (v29)(v46, 0);
        v37 = v47;
      }

      else
      {
        (v29)(v46, 0);
        v37 = v47;
      }

      _sxRi_zRi0_zlyytIseghHr_SgWOe(v37);
      result = v43(v12, v7);
      v25 = 0;
    }
  }

  else
  {
    (*(v8 + 8))(v17, v7);
    v38 = [a2 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = v47;
    if (v47)
    {
      v40 = swift_allocObject();
      v41 = v45;
      *(v40 + 16) = v39;
      *(v40 + 24) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySb_s5Error_pSgtcGMd, &_ss23_ContiguousArrayStorageCyySb_s5Error_pSgtcGMR);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1AEE07B20;
      *(v42 + 32) = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
      *(v42 + 40) = v40;
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v39);
    result = specialized Dictionary.subscript.setter(v42, v15);
    v25 = 1;
  }

  *v44 = v25;
  return result;
}

void (*specialized Dictionary.subscript.modify(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for UUID();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = specialized Dictionary._Variant.subscript.modify(v4, v9);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t closure #2 in ApplicationLauncher.launchApplication(for:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v9 = type metadata accessor for UUID();
  v6[4] = v9;
  v10 = *(v9 - 8);
  v6[5] = v10;
  v11 = *(v10 + 64) + 15;
  v6[6] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[7] = v12;
  *v12 = v6;
  v12[1] = closure #2 in ApplicationLauncher.launchApplication(for:options:completion:);

  return ApplicationLauncher.launchApplication(for:options:)(a5, a6);
}

uint64_t closure #2 in ApplicationLauncher.launchApplication(for:options:completion:)()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = closure #2 in ApplicationLauncher.launchApplication(for:options:completion:);
  }

  else
  {
    v3 = closure #2 in ApplicationLauncher.launchApplication(for:options:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v18 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = (v0[2] + OBJC_IVAR___CPApplicationLauncherSwift_pendingApplicationLaunches);
  os_unfair_lock_lock(v5);
  v6 = [v3 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized Dictionary.removeValue(forKey:)(v1);
  (*(v2 + 8))(v1, v4);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock(v5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v16 = 1;
      v17 = 0;

      v12(&v16, &v17);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  v13 = v0[6];

  v14 = v0[1];

  return v14();
}

{
  v19 = v0;
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0[2] + OBJC_IVAR___CPApplicationLauncherSwift_pendingApplicationLaunches);
  os_unfair_lock_lock(v6);
  v7 = [v4 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = specialized Dictionary.removeValue(forKey:)(v2);
  (*(v3 + 8))(v2, v5);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock(v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v17 = v1 == 0;
      v18 = v1;

      v13(&v17, &v18);

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t ApplicationLauncher.launchApplication(for:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](ApplicationLauncher.launchApplication(for:options:), 0, 0);
}

uint64_t ApplicationLauncher.launchApplication(for:options:)()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR___CPApplicationLauncherSwift_behaviors);
  v26 = *(v1 + 16);
  if (v26)
  {
    v2 = 0;
    v3 = (v1 + 40);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v5 = v27[2];
      v4 = v27[3];
      v6 = *(v3 - 1);
      v27[6] = v6;
      v7 = *v3;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      swift_unknownObjectRetain();
      if (v9(v5, v4, ObjectType, v7))
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v2;
      v3 += 2;
      if (v26 == v2)
      {
        goto LABEL_6;
      }
    }

    v17 = v27[4];
    v18 = *(v17 + OBJC_IVAR___CPApplicationLauncherSwift_spatialApplicationManager);
    v19 = v27[2];
    if (v18)
    {
      type metadata accessor for ActivitySession(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        [v18 willLaunchAppWithActivitySession_];
        v17 = v27[4];
        v19 = v27[2];
      }
    }

    v21 = v27[5];
    v22 = v27[3];
    v23 = swift_task_alloc();
    v27[7] = v23;
    v23[2] = v6;
    v23[3] = v7;
    v23[4] = v19;
    v23[5] = v22;
    v23[6] = v17;
    v23[7] = v21;
    v24 = *(MEMORY[0x1E69E88A0] + 4);
    v25 = swift_task_alloc();
    v27[8] = v25;
    *v25 = v27;
    v25[1] = ApplicationLauncher.launchApplication(for:options:);

    return MEMORY[0x1EEE6DD58]();
  }

  else
  {
LABEL_6:
    if (one-time initialization token for default != -1)
    {
LABEL_19:
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.default);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1AEB26000, v11, v12, "Unable to launch application due to missing launch behavior", v13, 2u);
      MEMORY[0x1B27120C0](v13, -1, -1);
    }

    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = v27[1];

    return v15();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = ApplicationLauncher.launchApplication(for:options:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = ApplicationLauncher.launchApplication(for:options:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[6];
  v2 = v0[7];
  swift_unknownObjectRelease();

  v3 = v0[9];
  v4 = v0[1];

  return v4();
}

uint64_t closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in ApplicationLauncher.launchApplication(for:options:), 0, 0);
}

uint64_t closure #2 in ApplicationLauncher.launchApplication(for:options:)()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v16 = v0[6];
  v5 = v0[3];
  v17 = v0[2];
  v18 = v0[8];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v3;
  v8[6] = v4;
  v8[7] = v16;
  v8[8] = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v2;
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:), v8);
  outlined destroy of NSObject?(v1, &_sScPSgMd, &_sScPSgMR);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v4;
  v10[5] = v5;
  v10[6] = v3;
  v10[7] = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:), v10);
  outlined destroy of NSObject?(v1, &_sScPSgMd, &_sScPSgMR);
  v11 = *(MEMORY[0x1E69E8708] + 4);
  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
  *v12 = v0;
  v12[1] = closure #2 in ApplicationLauncher.launchApplication(for:options:);
  v14 = v0[2];

  return MEMORY[0x1EEE6DAC8](v0 + 12, 0, 0, v13);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = closure #2 in ApplicationLauncher.launchApplication(for:options:);
  }

  else
  {
    v3 = closure #2 in ApplicationLauncher.launchApplication(for:options:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = **(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  MEMORY[0x1B2710450](v2, MEMORY[0x1E69E7CA8] + 8, v3, MEMORY[0x1E69E7288]);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:), 0, 0);
}

uint64_t closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:)()
{
  v1 = v0[11];
  v2 = v0[7];
  v14 = v0[8];
  ObjectType = swift_getObjectType();
  v0[5] = type metadata accessor for ApplicationLauncher();
  v0[6] = &protocol witness table for ApplicationLauncher;
  v0[2] = v1;
  v4 = *(v14 + 16);
  v5 = v1;
  v13 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:);
  v9 = v0[9];
  v8 = v0[10];
  v11 = v0[7];
  v10 = v0[8];

  return (v13)(v9, v8, v0 + 2, ObjectType, v10);
}

{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v20 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v10, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}