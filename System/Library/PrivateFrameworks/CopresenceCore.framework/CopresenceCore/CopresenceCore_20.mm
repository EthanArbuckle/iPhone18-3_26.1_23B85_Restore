void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(a1, a2);
}

{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

Swift::Int ActivitySessionErrors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t ActivitySessionManager.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ActivitySessionManager._activitySessions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ActivitySessionManager.activitySessions.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v9[1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivitySessionManager.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ActivitySessionManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySessionManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return ActivitySessionManager.delegate.modify;
}

void ActivitySessionManager.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

id ActivitySessionManager.applicationLauncher.getter()
{
  v1 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ActivitySessionManager.applicationLauncher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  swift_beginAccess();

  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (v5 || (v6 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v7 = NSClassFromString(v6), v6, v7))
  {
    *(v1 + v3) = a1;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void (*ActivitySessionManager.applicationLauncher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return ActivitySessionManager.applicationLauncher.modify;
}

void ActivitySessionManager.applicationLauncher.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*(*a1 + 32) + *(*a1 + 40));
  if ((a2 & 1) == 0)
  {

    v10 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v11 = NSClassFromString(v10);

    if (v11 || (v12 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v13 = NSClassFromString(v12), v12, v13))
    {
      *(*(v2 + 32) + *(v2 + 40)) = v3;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v5 = v3;

  v6 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v7 = NSClassFromString(v6);

  if (!v7)
  {
    v8 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v9 = NSClassFromString(v8);

    if (!v9)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  *(*(v2 + 32) + *(v2 + 40)) = v5;

LABEL_8:
  swift_endAccess();

  free(v2);
}

uint64_t ActivitySessionManager.handedOff.getter()
{
  v1 = OBJC_IVAR___CPActivitySessionManager_handedOff;
  swift_beginAccess();
  return *(v0 + v1);
}

void ActivitySessionManager.handedOff.setter(char a1)
{
  v3 = OBJC_IVAR___CPActivitySessionManager_handedOff;
  swift_beginAccess();
  *(v1 + v3) = a1;
  ActivitySessionManager.handedOff.didset();
}

void ActivitySessionManager.handedOff.didset()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32[2] = v37;
    if ((v37 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
      Set.Iterator.init(_cocoa:)();
      v9 = v38;
      v34 = v37;
      v10 = v39;
      v11 = v40;
      v12 = v41;
    }

    else
    {
      v13 = -1 << *(v37 + 32);
      v9 = v37 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v37 + 56);
      v11 = 0;
    }

    v32[1] = v10;
    v16 = (v10 + 64) >> 6;
    v17 = v34;
    v33 = v1;
    while (1)
    {
      if (v17 < 0)
      {
        v23 = __CocoaSet.Iterator.next()();
        if (!v23 || (v35 = v23, type metadata accessor for ActivitySession(0), swift_dynamicCast(), v22 = v36, v20 = v11, v21 = v12, !v36))
        {
LABEL_27:
          outlined consume of Set<String>.Iterator._Variant();

          return;
        }
      }

      else
      {
        v18 = v11;
        v19 = v12;
        v20 = v11;
        if (!v12)
        {
          while (1)
          {
            v20 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v20 >= v16)
            {
              goto LABEL_27;
            }

            v19 = *(v9 + 8 * v20);
            ++v18;
            if (v19)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          break;
        }

LABEL_15:
        v21 = (v19 - 1) & v19;
        v22 = *(*(v17 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
        if (!v22)
        {
          goto LABEL_27;
        }
      }

      v24 = MEMORY[0x1E69E7D40];
      if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))())
      {
        v25 = *((*v24 & *v22) + 0x2F8);
        (v25)(&v36);
        v26 = v36;
        outlined consume of ActivitySession.State(v36);
        if (v26 >> 62 != 1)
        {
          v27 = swift_allocObject();
          v25();
          v36 = v27 | 0x4000000000000000;
          (*((*MEMORY[0x1E69E7D40] & *v22) + 0x300))(&v36);
        }

        v11 = v20;
        v12 = v21;
        v17 = v34;
      }

      else
      {
        (*((*v24 & *v22) + 0x2F8))(&v36);
        v28 = v36;
        if (v36 >> 62 == 1)
        {
          v29 = *((v36 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          outlined copy of ActivitySession.State(v29);
          outlined consume of ActivitySession.State(v28);
          v35 = 0x8000000000000008;
          v36 = v29;
          outlined copy of ActivitySession.State(v29);
          v30 = v29;
          if (static ActivitySession.State.== infix(_:_:)(&v36, &v35))
          {
            outlined consume of ActivitySession.State(v29);
            v30 = 0x8000000000000000;
          }

          v36 = v30;
          v31 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x300);
          outlined copy of ActivitySession.State(v30);
          v31(&v36);

          outlined consume of ActivitySession.State(v30);
          outlined consume of ActivitySession.State(v29);
          v11 = v20;
          v12 = v21;
          v1 = v33;
          v17 = v34;
        }

        else
        {
          outlined consume of ActivitySession.State(v36);

          v11 = v20;
          v12 = v21;
        }
      }
    }
  }

  __break(1u);
}

void (*ActivitySessionManager.handedOff.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ActivitySessionManager.handedOff.modify;
}

void ActivitySessionManager.handedOff.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    ActivitySessionManager.handedOff.didset();
  }
}

Class @objc ActivitySessionManager.tuSystemActivitySessions.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t ActivitySessionManager.tuActivitySessions.getter(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v11 = a1(v13[1]);

    v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo29TUConversationActivitySessionC_SayAEGTt0g5Tf4g_n(v11);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64_optional __swiftcall ActivitySessionManager.localParticipantAlias(for:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))();
  if (v4)
  {
    if (object)
    {
      object = MEMORY[0x1B270FF70](countAndFlagsBits, object);
    }

    v5 = [v4 activitySessionManager:v1 localParticipantAliasForBundleIdentifier:object];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 == 0;
  v7 = v5;
  result.value = v7;
  result.is_nil = v6;
  return result;
}

id ActivitySessionManager.localParticipantCluster.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 activitySessionManagerRequestedLocalParticipantCluster_];
  swift_unknownObjectRelease();
  return v2;
}

void ActivitySessionManager.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1, uint64_t a2, void *a3, char a4, void (*a5)(void), uint64_t a6)
{
  v13 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x120))();
  if (v13)
  {
    v14 = v13;
    if (a3)
    {
      a3 = MEMORY[0x1B270FF70](a2, a3);
    }

    v16[4] = a5;
    v16[5] = a6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed TUConversationParticipant?) -> ();
    v16[3] = &block_descriptor_29;
    v15 = _Block_copy(v16);

    [v14 activitySessionManager:v6 participantWithIdentifier:a1 bundleIdentifier:a3 includeLocalParticipant:a4 & 1 completionHandler:v15];
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    a5();
  }
}

char *specialized thunk for @escaping @callee_guaranteed (@guaranteed TUConversationActivitySession, @guaranteed ActivitySessionManager) -> (@owned ActivitySession)@<X0>(id *a1@<X0>, id *a2@<X1>, char **a3@<X8>)
{
  result = _s14CopresenceCore15ActivitySessionC08activityD07managerACSo014TUConversationcD0C_AA0cD15ManagerProtocol_ptcfCTf4nen_nAA0cdH0C_Tt1g5(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t key path setter for ActivitySessionManager.activitySessionCreation : ActivitySessionManager(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A0);

  return v6(thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationActivitySession, @in_guaranteed ActivitySessionManager) -> (@out ActivitySession)partial apply, v5);
}

uint64_t (*ActivitySessionManager.activitySessionCreation.getter())()
{
  v1 = (v0 + OBJC_IVAR___CPActivitySessionManager__activitySessionCreation);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationActivitySession, @in_guaranteed ActivitySessionManager) -> (@out ActivitySession);
}

void (*ActivitySessionManager.activitySessionCreation.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySessionManager__activitySessionCreation;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v4 + 24) = thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationActivitySession, @in_guaranteed ActivitySessionManager) -> (@out ActivitySession)partial apply;
  *(v4 + 32) = v9;

  return ActivitySessionManager.activitySessionCreation.modify;
}

uint64_t ActivitySessionManager.protectedStorage.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, &v8, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  if (v9)
  {
    return outlined init with take of ContiguousBytes(&v8, a1);
  }

  outlined destroy of NSObject?(&v8, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
  v5 = *MEMORY[0x1E69D8DD0];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSUserDefaults.classProtectedStorage(suiteName:)(v6, v7, a1);

  outlined init with copy of UserNotificationCenter(a1, &v8);
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(&v8, v1 + v3);
  return swift_endAccess();
}

uint64_t ActivitySessionManager.protectedStorage.setter(__int128 *a1)
{
  outlined init with take of ContiguousBytes(a1, v4);
  v2 = OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v4, v1 + v2);
  return swift_endAccess();
}

void (*ActivitySessionManager.protectedStorage.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  ActivitySessionManager.protectedStorage.getter(v3);
  return ActivitySessionManager.protectedStorage.modify;
}

void ActivitySessionManager.protectedStorage.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of UserNotificationCenter(*a1, (v2 + 5));
    v4 = OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v4);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of ContiguousBytes(*a1, (v2 + 5));
    v5 = OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v5);
    swift_endAccess();
  }

  free(v2);
}

uint64_t ActivitySessionManager.__allocating_init(id:groupUUID:activities:applicationController:delegate:queue:systemStateObserver:sceneObservationManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a7;
  v36 = a8;
  v39 = a5;
  v40 = a6;
  v37 = a3;
  v38 = a4;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  v19 = objc_allocWithZone(v8);
  ObjectType = swift_getObjectType();
  v21 = v12[2];
  v42 = a1;
  v21(v18, a1, v11);
  v41 = a2;
  v22 = a2;
  v23 = v35;
  v21(v16, v22, v11);
  v24 = [objc_allocWithZone(CPFeatureFlags) init];
  v25 = one-time initialization token for shared;
  swift_unknownObjectRetain();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = static CPAudioRoutePolicyManager.shared;
  v27 = objc_allocWithZone(CPSharedConversationServerBag);
  v28 = v26;
  v29 = [v27 init];
  v30 = (*(ObjectType + 456))(v18, v16, v37, v38, v39, v24, v40, v23, v28, v29, v36, 0, 1);
  swift_unknownObjectRelease();
  v31 = v12[1];
  v31(v41, v11);
  v31(v42, v11);
  v32 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x30);
  v33 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x34);
  swift_deallocPartialClassInstance();
  return v30;
}

uint64_t ActivitySessionManager.init(id:groupUUID:activities:applicationController:delegate:queue:systemStateObserver:sceneObservationManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v35 = a7;
  v36 = a8;
  v39 = a5;
  v40 = a6;
  v37 = a3;
  v38 = a4;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  ObjectType = swift_getObjectType();
  v21 = v13[2];
  v42 = a1;
  v21(v19, a1, v12);
  v41 = a2;
  v22 = a2;
  v23 = v35;
  v21(v17, v22, v12);
  v24 = [objc_allocWithZone(CPFeatureFlags) init];
  v25 = one-time initialization token for shared;
  swift_unknownObjectRetain();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = static CPAudioRoutePolicyManager.shared;
  v27 = objc_allocWithZone(CPSharedConversationServerBag);
  v28 = v26;
  v29 = [v27 init];
  v30 = (*(ObjectType + 456))(v19, v17, v37, v38, v39, v24, v40, v23, v28, v29, v36, 0, 1);
  swift_unknownObjectRelease();
  v31 = v13[1];
  v31(v41, v12);
  v31(v42, v12);
  v32 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x30);
  v33 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x34);
  swift_deallocPartialClassInstance();
  return v30;
}

char *ActivitySessionManager.__allocating_init(id:groupUUID:activities:applicationController:delegate:featureFlags:queue:systemStateObserver:audioRoutePolicyManager:serverBag:sceneObservationManager:topicsObserverCacheEvictionTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v14 = v13;
  v62 = a8;
  v63 = a5;
  v64 = a6;
  v52 = a4;
  v53 = a9;
  v65 = a11;
  v59 = a12;
  LODWORD(v56) = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMd, &_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v51 - v21;

  v23 = objc_allocWithZone(v14);
  v24 = OBJC_IVAR___CPActivitySessionManager___activitySessions;
  v67 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore15ActivitySessionCGMd, &_sShy14CopresenceCore15ActivitySessionCGMR);
  Published.init(initialValue:)();
  (*(v19 + 32))(&v23[v24], v22, v18);
  swift_unknownObjectWeakInit();
  v23[OBJC_IVAR___CPActivitySessionManager_handedOff] = 0;
  v25 = &v23[OBJC_IVAR___CPActivitySessionManager__activitySessionCreation];
  *v25 = specialized thunk for @escaping @callee_guaranteed (@guaranteed TUConversationActivitySession, @guaranteed ActivitySessionManager) -> (@owned ActivitySession);
  v25[1] = 0;
  v26 = &v23[OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  *&v23[OBJC_IVAR___CPActivitySessionManager_topicsObserver] = 0;
  *&v23[OBJC_IVAR___CPActivitySessionManager_topicsObserverSubscription] = 0;
  v27 = &v23[OBJC_IVAR___CPActivitySessionManager__topicsObserverGenerator];
  *v27 = specialized thunk for @escaping @callee_guaranteed (@guaranteed ActivitySessionManager, @in_guaranteed UUID, @unowned UInt64) -> (@owned PubSubTopicsObserver);
  v27[1] = 0;
  v28 = OBJC_IVAR___CPActivitySessionManager_id;
  v29 = type metadata accessor for UUID();
  v57 = *(v29 - 8);
  v30 = *(v57 + 16);
  v61 = a1;
  v30(&v23[v28], a1, v29);
  v60 = a2;
  v58 = v29;
  v30(&v23[OBJC_IVAR___CPActivitySessionManager_groupUUID], a2, v29);
  v31 = v62;
  *&v23[OBJC_IVAR___CPActivitySessionManager_queue] = a7;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v32 = v52;
  *&v23[OBJC_IVAR___CPActivitySessionManager_applicationController] = v52;
  *&v23[OBJC_IVAR___CPActivitySessionManager_featureFlags] = v64;
  *&v23[OBJC_IVAR___CPActivitySessionManager_systemStateObserver] = v31;
  *&v23[OBJC_IVAR___CPActivitySessionManager_audioRoutePolicyManager] = v53;
  *&v23[OBJC_IVAR___CPActivitySessionManager_serverBag] = a10;
  v33 = 50;
  if ((v56 & 1) == 0)
  {
    v33 = v59;
  }

  *&v23[OBJC_IVAR___CPActivitySessionManager_topicsObserverCacheEvictionTimeout] = v33;
  *&v23[OBJC_IVAR___CPActivitySessionManager_sceneObservationManager] = v65;
  v34 = objc_allocWithZone(CPApplicationLauncher);
  swift_unknownObjectRetain();
  v55 = a7;
  v56 = v32;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v59 = a10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v35 = [v34 initWithSpatialApplicationManager_];
  v36 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  swift_beginAccess();
  *&v23[v36] = v35;
  v66.receiver = v23;
  v66.super_class = v54;
  v37 = objc_msgSendSuper2(&v66, sel_init);
  v38 = *&v37[OBJC_IVAR___CPActivitySessionManager_applicationController];
  v39 = *&v38[OBJC_IVAR___CPApplicationController_lock];
  v40 = *(v39 + 16);
  v41 = v37;
  v42 = v38;
  os_unfair_lock_lock(v40);
  [*&v42[OBJC_IVAR___CPApplicationController_observers] addObject_];
  os_unfair_lock_unlock(*(v39 + 16));

  v43 = *&v41[OBJC_IVAR___CPActivitySessionManager_systemStateObserver];
  if (v43)
  {
    [v43 addObserver:v41 withQueue:*&v41[OBJC_IVAR___CPActivitySessionManager_queue]];
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Log.default);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1AEB26000, v45, v46, "Unable to add observer to systemStateObserver as it is nil", v47, 2u);
      MEMORY[0x1B27120C0](v47, -1, -1);
    }
  }

  [*&v41[OBJC_IVAR___CPActivitySessionManager_audioRoutePolicyManager] addObserver:v41 withQueue:*&v41[OBJC_IVAR___CPActivitySessionManager_queue]];
  ActivitySessionManager.createStaticActivities()();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v48 = v58;
  v49 = *(v57 + 8);
  v49(v60, v58);
  v49(v61, v48);
  return v41;
}

char *ActivitySessionManager.init(id:groupUUID:activities:applicationController:delegate:featureFlags:queue:systemStateObserver:audioRoutePolicyManager:serverBag:sceneObservationManager:topicsObserverCacheEvictionTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v53 = a7;
  v54 = a4;
  v59 = a5;
  v60 = a6;
  v58 = a2;
  v61 = a10;
  v62 = a11;
  v56 = a12;
  LODWORD(v55) = a13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMd, &_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - v19;

  v21 = OBJC_IVAR___CPActivitySessionManager___activitySessions;
  v64 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore15ActivitySessionCGMd, &_sShy14CopresenceCore15ActivitySessionCGMR);
  Published.init(initialValue:)();
  (*(v17 + 32))(&v13[v21], v20, v16);
  swift_unknownObjectWeakInit();
  v13[OBJC_IVAR___CPActivitySessionManager_handedOff] = 0;
  v22 = &v13[OBJC_IVAR___CPActivitySessionManager__activitySessionCreation];
  *v22 = specialized thunk for @escaping @callee_guaranteed (@guaranteed TUConversationActivitySession, @guaranteed ActivitySessionManager) -> (@owned ActivitySession);
  v22[1] = 0;
  v23 = &v13[OBJC_IVAR___CPActivitySessionManager____lazy_storage___protectedStorage];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  *&v13[OBJC_IVAR___CPActivitySessionManager_topicsObserver] = 0;
  *&v13[OBJC_IVAR___CPActivitySessionManager_topicsObserverSubscription] = 0;
  v24 = &v13[OBJC_IVAR___CPActivitySessionManager__topicsObserverGenerator];
  *v24 = specialized thunk for @escaping @callee_guaranteed (@guaranteed ActivitySessionManager, @in_guaranteed UUID, @unowned UInt64) -> (@owned PubSubTopicsObserver);
  v24[1] = 0;
  v25 = OBJC_IVAR___CPActivitySessionManager_id;
  v26 = type metadata accessor for UUID();
  v51 = *(v26 - 8);
  v27 = *(v51 + 16);
  v57 = a1;
  v27(&v13[v25], a1, v26);
  v52 = v26;
  v27(&v13[OBJC_IVAR___CPActivitySessionManager_groupUUID], v58, v26);
  v28 = v53;
  *&v13[OBJC_IVAR___CPActivitySessionManager_queue] = v53;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v29 = v54;
  *&v13[OBJC_IVAR___CPActivitySessionManager_applicationController] = v54;
  v30 = v61;
  *&v13[OBJC_IVAR___CPActivitySessionManager_featureFlags] = v60;
  *&v13[OBJC_IVAR___CPActivitySessionManager_systemStateObserver] = a8;
  *&v13[OBJC_IVAR___CPActivitySessionManager_audioRoutePolicyManager] = a9;
  *&v13[OBJC_IVAR___CPActivitySessionManager_serverBag] = v30;
  v31 = 50;
  if ((v55 & 1) == 0)
  {
    v31 = v56;
  }

  *&v13[OBJC_IVAR___CPActivitySessionManager_topicsObserverCacheEvictionTimeout] = v31;
  *&v13[OBJC_IVAR___CPActivitySessionManager_sceneObservationManager] = v62;
  v32 = objc_allocWithZone(CPApplicationLauncher);
  v56 = a8;
  swift_unknownObjectRetain();
  v53 = v28;
  v54 = v29;
  swift_unknownObjectRetain();
  v55 = a9;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v33 = [v32 initWithSpatialApplicationManager_];
  v34 = OBJC_IVAR___CPActivitySessionManager__applicationLauncher;
  swift_beginAccess();
  *&v13[v34] = v33;
  v35 = type metadata accessor for ActivitySessionManager();
  v63.receiver = v13;
  v63.super_class = v35;
  v36 = objc_msgSendSuper2(&v63, sel_init);
  v37 = *&v36[OBJC_IVAR___CPActivitySessionManager_applicationController];
  v38 = *&v37[OBJC_IVAR___CPApplicationController_lock];
  v39 = *(v38 + 16);
  v40 = v36;
  v41 = v37;
  os_unfair_lock_lock(v39);
  [*&v41[OBJC_IVAR___CPApplicationController_observers] addObject_];
  os_unfair_lock_unlock(*(v38 + 16));

  v42 = *&v40[OBJC_IVAR___CPActivitySessionManager_systemStateObserver];
  if (v42)
  {
    [v42 addObserver:v40 withQueue:*&v40[OBJC_IVAR___CPActivitySessionManager_queue]];
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Log.default);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1AEB26000, v44, v45, "Unable to add observer to systemStateObserver as it is nil", v46, 2u);
      MEMORY[0x1B27120C0](v46, -1, -1);
    }
  }

  [*&v40[OBJC_IVAR___CPActivitySessionManager_audioRoutePolicyManager] addObserver:v40 withQueue:*&v40[OBJC_IVAR___CPActivitySessionManager_queue]];
  ActivitySessionManager.createStaticActivities()();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v47 = v52;
  v48 = *(v51 + 8);
  v48(v58, v52);
  v48(v57, v47);
  return v40;
}

void *ActivitySessionManager.createActivitySession(tuActivitySession:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for UUID();
  v9 = *(v210 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v210);
  v208 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v209 = &v190 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    goto LABEL_145;
  }

  v203 = v9;
  v201 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore15ActivitySessionCG_So014TUConversationF0Cs5NeverOTg504_s14d6Core22fg30ManagerC06createcD002tucD0AA0co23CSgSo014TUConversationcO18C_tFSo0hC0CAGXEfU_Tf1cn_n(v213);

  v22 = [a1 activity];
  v213 = v22;
  MEMORY[0x1EEE9AC00](v22);
  *(&v190 - 2) = &v213;
  v23 = v21;
  LOBYTE(v21) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v190 - 4), v21);

  if (v21)
  {

    return 0;
  }

  v24 = [a1 activity];
  v25 = [v24 bundleIdentifier];

  if (!v25)
  {

    if (one-time initialization token for default != -1)
    {
      goto LABEL_147;
    }

    goto LABEL_18;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = [*(v2 + OBJC_IVAR___CPActivitySessionManager_serverBag) blockedActivitySessionBundleIdentifiers];
  if (v29)
  {
    v30 = v29;
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = (v31 + 40);
    v33 = *(v31 + 16) + 1;
    while (--v33)
    {
      if (*(v32 - 1) != v26 || *v32 != v28)
      {
        v32 += 2;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Log.default);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v213 = v39;
        *v38 = 136315138;
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v213);

        *(v38 + 4) = v40;
        _os_log_impl(&dword_1AEB26000, v36, v37, "Failed to create activitySession, bundleIdentifier %s is blocked via server bag", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1B27120C0](v39, -1, -1);
        goto LABEL_20;
      }

      goto LABEL_56;
    }
  }

  v197 = v26;
  v191 = v5;
  v192 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v202 = v2;
  static Published.subscript.getter();

  v206 = a1;
  v200 = v28;
  v196 = v213;
  if ((v213 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    Set.Iterator.init(_cocoa:)();
    v44 = v212[2];
    v43 = v212[3];
    v46 = v212[4];
    v45 = v212[5];
    v47 = v212[6];
  }

  else
  {
    v48 = -1 << *(v213 + 32);
    v43 = (v213 + 56);
    v46 = ~v48;
    v49 = -v48;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v47 = (v50 & *(v213 + 56));

    v45 = 0;
    v44 = v51;
  }

  v195 = v46;
  v52 = (v46 + 64) >> 6;
  i = MEMORY[0x1E69E7D40];
  v204 = v23;
  v54 = v45;
  while (1)
  {
    if (v44 < 0)
    {
      v60 = __CocoaSet.Iterator.next()();
      if (!v60)
      {
        v207 = 0;
        v194 = 1;
        goto LABEL_51;
      }

      v211[0] = v60;
      type metadata accessor for ActivitySession(0);
      swift_dynamicCast();
      v59 = v213;
      v57 = v54;
      v58 = v47;
      if (!v213)
      {
LABEL_50:
        v207 = 0;
        v194 = 1;
        goto LABEL_51;
      }
    }

    else
    {
      v55 = v54;
      v56 = v47;
      v57 = v54;
      if (!v47)
      {
        while (1)
        {
          v57 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            break;
          }

          if (v57 >= v52)
          {
            goto LABEL_50;
          }

          v56 = v43[v57];
          ++v55;
          if (v56)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

LABEL_35:
      v58 = (v56 - 1) & v56;
      v59 = *(*(v44 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));
      if (!v59)
      {
        goto LABEL_50;
      }
    }

    v198 = v54;
    v199 = v47;
    v61 = v59;
    v62 = (*((*i & *v59) + 0x328))();
    v63 = [v62 bundleIdentifier];

    if (v63)
    {
      v207 = v61;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      if (v64 == v197 && v66 == v200)
      {

        v61 = v207;
      }

      else
      {
        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v61 = v207;
        if ((v68 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v70 = *((*i & *v61) + 0x2F8);
      v70(&v213, v69);
      v211[0] = 0x8000000000000000;
      v71 = static ActivitySession.State.== infix(_:_:)(&v213, v211);
      v72 = outlined consume of ActivitySession.State(v213);
      if (v71)
      {
        v194 = 0;
        i = MEMORY[0x1E69E7D40];
        goto LABEL_51;
      }

      v70(&v213, v72);
      v211[0] = 0x8000000000000008;
      v73 = static ActivitySession.State.== infix(_:_:)(&v213, v211);
      outlined consume of ActivitySession.State(v213);
      i = MEMORY[0x1E69E7D40];
      if (v73)
      {
        break;
      }
    }

LABEL_29:

    v54 = v57;
    v47 = v58;
  }

  v194 = 0;
LABEL_51:

  outlined consume of Set<String>.Iterator._Variant();

  v75 = (*(ObjectType + 360))(v74);
  v76 = v206;
  if ((v75 & 1) == 0)
  {
    v77 = [v206 activity];
    v78 = [v77 isSystemActivity];

    if ((v78 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v119 = v213;
      v210 = v213;
      if ((v213 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
        Set.Iterator.init(_cocoa:)();
        v119 = v213;
        v120 = v214;
        v121 = v215;
        v122 = v216;
        v123 = v217;
      }

      else
      {
        v125 = -1 << *(v213 + 32);
        v120 = v213 + 56;
        v121 = ~v125;
        v126 = -v125;
        if (v126 < 64)
        {
          v127 = ~(-1 << v126);
        }

        else
        {
          v127 = -1;
        }

        v123 = v127 & *(v213 + 56);

        v122 = 0;
      }

      v209 = v121;
      v128 = (v121 + 64) >> 6;
      if ((v119 & 0x8000000000000000) == 0)
      {
        goto LABEL_95;
      }

LABEL_92:
      v129 = __CocoaSet.Iterator.next()();
      if (v129)
      {
        v212[0] = v129;
        type metadata accessor for ActivitySession(0);
        v130 = swift_dynamicCast();
        v131 = v211[0];
        v132 = v122;
        v133 = v123;
        if (v211[0])
        {
          while (1)
          {
            v136 = (*((*MEMORY[0x1E69E7D40] & *v131) + 0x328))(v130);
            v137 = [v136 isSystemActivity];

            if (!v137)
            {
              break;
            }

            v122 = v132;
            v123 = v133;
            i = MEMORY[0x1E69E7D40];
            if ((v119 & 0x8000000000000000) != 0)
            {
              goto LABEL_92;
            }

LABEL_95:
            v134 = v122;
            v135 = v123;
            v132 = v122;
            if (!v123)
            {
              while (1)
              {
                v132 = v134 + 1;
                if (__OFADD__(v134, 1))
                {
                  break;
                }

                if (v132 >= v128)
                {
                  goto LABEL_103;
                }

                v135 = *(v120 + 8 * v132);
                ++v134;
                if (v135)
                {
                  goto LABEL_99;
                }
              }

LABEL_146:
              __break(1u);
LABEL_147:
              swift_once();
LABEL_18:
              v41 = type metadata accessor for Logger();
              __swift_project_value_buffer(v41, static Log.default);
              v36 = Logger.logObject.getter();
              v42 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v36, v42))
              {
                v38 = swift_slowAlloc();
                *v38 = 0;
                _os_log_impl(&dword_1AEB26000, v36, v42, "Failed to create activitySession, bundleIdentifier is nil", v38, 2u);
LABEL_20:
                MEMORY[0x1B27120C0](v38, -1, -1);
              }

LABEL_56:

              return 0;
            }

LABEL_99:
            v133 = (v135 - 1) & v135;
            v130 = *(*(v119 + 48) + ((v132 << 9) | (8 * __clz(__rbit64(v135)))));
            v131 = v130;
            if (!v130)
            {
              goto LABEL_140;
            }
          }

          outlined consume of Set<String>.Iterator._Variant();

          v76 = v206;
          v189 = shouldContinue #1 (with:) in ActivitySessionManager.createActivitySession(tuActivitySession:)(v131, v206, v197, v200);

          v102 = v202;
          i = MEMORY[0x1E69E7D40];
          if ((v189 & 1) == 0)
          {
            goto LABEL_142;
          }

LABEL_104:
          v138 = (*((*i & *v102) + 0x198))(v124);
          v84 = v138(v76, v102);

          v140 = *(v102 + OBJC_IVAR___CPActivitySessionManager_applicationController);
          v141 = *((*i & *v84) + 0x328);
          v142 = (v141)(v139);
          v143 = specialized CPApplicationControllerProtocol.isActivitySupported(_:)(v142);

          v144 = v141();
          [v144 setSupported_];
          v145 = (*((*i & *v84) + 0x330))(v144);
          v146 = (*((*i & *v102) + 0x150))(v145);
          if (v146)
          {
            v147 = swift_allocObject();
            (*((*i & *v84) + 0x2F8))();
            v211[0] = v147 | 0x4000000000000000;
            v146 = (*((*i & *v84) + 0x300))(v211);
          }

          if ((v194 & 1) == 0)
          {
            v211[0] = 0x8000000000000000;
            v146 = (*((*i & *v84) + 0x300))(v211);
          }

          v148 = (v141)(v146);
          v149 = [v148 bundleIdentifier];

          if (v149)
          {
            v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v152 = v151;

            v153 = *MEMORY[0x1E69D8DC8];
            v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (v152)
            {
              if (v150 == v154 && v152 == v155)
              {
              }

              else
              {
                v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v158 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
                if ((v157 & 1) == 0)
                {
                  goto LABEL_121;
                }
              }

              v211[0] = 0x8000000000000000;
              (*((*i & *v84) + 0x300))(v211);
LABEL_120:
              v158 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
LABEL_121:
              v160 = [v206 v158[500]];
              v161 = (*((*i & *v140) + 0x118))();

              if (v161)
              {
                v211[0] = 0x8000000000000000;
                (*((*i & *v84) + 0x300))(v211);
              }

              swift_getKeyPath();
              swift_getKeyPath();
              v162 = v84;
              v163 = static Published.subscript.modify();
              specialized Set._Variant.insert(_:)(v212, v162);

              v163(v211, 0);
              v164 = v202;

              ActivitySessionManager.logMetricsForSessionStart(_:)(v162);
              v165 = (*((*i & *v162) + 0x340))();
              if ((v165 & 1) == 0)
              {
                LOBYTE(v211[0]) = 2;
                v166 = v162;
                v167 = [v206 timestamp];
                v168 = v201;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                specialized static SharePlayLatencyLogger.logInterval(for:activityIdentifier:serverStartTime:)(v211, v168, v166);
                v165 = (*(v191 + 8))(v168, v192);
              }

              v169 = (v141)(v165);
              v170 = [v169 isSystemActivity];

              if ((v170 & 1) != 0 || (v171 = (*((*i & *v164) + 0x120))()) == 0)
              {
              }

              else
              {
                v172 = v171;
                if ([v171 respondsToSelector_])
                {
                  (*((*i & *v164) + 0x170))();
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
                  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
                  isa = Set._bridgeToObjectiveC()().super.isa;

                  [v172 activitySessionManager:v164 tuActivitySessionsDidChange:isa];
                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                }
              }

              return v84;
            }
          }

          else
          {
            v159 = *MEMORY[0x1E69D8DC8];
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          goto LABEL_120;
        }

LABEL_140:
        i = MEMORY[0x1E69E7D40];
      }

LABEL_103:
      outlined consume of Set<String>.Iterator._Variant();

      v102 = v202;
      v76 = v206;
      goto LABEL_104;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v79 = v213;
  v195 = v213;
  if ((v213 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    Set.Iterator.init(_cocoa:)();
    v79 = v213;
    v80 = v214;
    v81 = v215;
    v82 = v216;
    v83 = v217;
  }

  else
  {
    v86 = -1 << *(v213 + 32);
    v80 = v213 + 56;
    v81 = ~v86;
    v87 = -v86;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    else
    {
      v88 = -1;
    }

    v83 = v88 & *(v213 + 56);

    v82 = 0;
  }

  v193 = v81;
  v89 = (v81 + 64) >> 6;
  v196 = (v203 + 8);
  v204 = v80;
  v203 = v79;
  while (2)
  {
    if ((v79 & 0x8000000000000000) != 0)
    {
      v105 = __CocoaSet.Iterator.next()();
      i = MEMORY[0x1E69E7D40];
      if (!v105 || (v212[0] = v105, type metadata accessor for ActivitySession(0), swift_dynamicCast(), v104 = v211[0], v101 = v82, v103 = v83, !v211[0]))
      {
LABEL_85:
        v102 = v202;
LABEL_86:
        outlined consume of Set<String>.Iterator._Variant();

        goto LABEL_104;
      }
    }

    else
    {
      v99 = v82;
      v100 = v83;
      v101 = v82;
      v102 = v202;
      for (i = MEMORY[0x1E69E7D40]; !v100; ++v99)
      {
        v101 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          goto LABEL_144;
        }

        if (v101 >= v89)
        {
          goto LABEL_86;
        }

        v100 = *(v80 + 8 * v101);
      }

      v103 = (v100 - 1) & v100;
      v104 = *(*(v79 + 48) + ((v101 << 9) | (8 * __clz(__rbit64(v100)))));
      if (!v104)
      {
        goto LABEL_85;
      }
    }

    ObjectType = v103;
    v198 = v82;
    v199 = v83;
    v106 = *((*i & *v104) + 0x328);
    v107 = v106();
    v108 = [v107 activityIdentifier];

    v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v110;

    v112 = [v76 activity];
    v113 = [v112 activityIdentifier];

    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;

    if (v109 == v114 && v111 == v116)
    {

      v76 = v206;
    }

    else
    {
      v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v76 = v206;
      if ((v118 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v91 = (v106)(v90);
    v92 = [v91 UUID];

    v93 = v209;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v94 = [v76 activity];
    v95 = [v94 UUID];

    v96 = v208;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v94) = static UUID.== infix(_:_:)();
    v97 = *v196;
    v98 = v210;
    (*v196)(v96, v210);
    v97(v93, v98);
    if ((v94 & 1) == 0)
    {
LABEL_66:

      v82 = v101;
      v83 = ObjectType;
      v80 = v204;
      v79 = v203;
      continue;
    }

    break;
  }

  outlined consume of Set<String>.Iterator._Variant();

  v174 = shouldContinue #1 (with:) in ActivitySessionManager.createActivitySession(tuActivitySession:)(v104, v76, v197, v200);

  if (v174)
  {

    v102 = v202;
    i = MEMORY[0x1E69E7D40];
    goto LABEL_104;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v175 = type metadata accessor for Logger();
  __swift_project_value_buffer(v175, static Log.default);
  v176 = v76;
  v177 = Logger.logObject.getter();
  v178 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v211[0] = v180;
    *v179 = 136315138;
    v181 = [v176 activity];
    v182 = [v181 UUID];

    v183 = v209;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v184 = v210;
    v185 = dispatch thunk of CustomStringConvertible.description.getter();
    v187 = v186;
    v97(v183, v184);
    v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v187, v211);

    *(v179 + 4) = v188;
    _os_log_impl(&dword_1AEB26000, v177, v178, "Ignoring new activity session due to existing activity session with same identifier (%s)", v179, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v180);
    MEMORY[0x1B27120C0](v180, -1, -1);
    MEMORY[0x1B27120C0](v179, -1, -1);
  }

LABEL_142:
  return 0;
}

uint64_t shouldContinue #1 (with:) in ActivitySessionManager.createActivitySession(tuActivitySession:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v77 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v72 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v72 - v20;
  v22 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v15 + 8);
  v24(v19, v14);
  v25 = (v24)(v21, v14);
  if (v23)
  {
    v26 = MEMORY[0x1E69E7D40];
    v27 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x328))(v25);
    v28 = [v27 isStaticActivity];

    if (v28 && ((*((*v26 & *a1) + 0x2F8))(&v81), v80 = 0x8000000000000010, v29 = static ActivitySession.State.== infix(_:_:)(&v81, &v80), outlined consume of ActivitySession.State(v81), (v29 & 1) != 0))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Log.default);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1AEB26000, v31, v32, "Trying to create a new activity session with the same identifier as an already existing static activity session, ignoring the new session and permitting join on the existing one.", v33, 2u);
        MEMORY[0x1B27120C0](v33, -1, -1);
      }

      (*((*v26 & *a1) + 0x448))();
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Log.default);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1AEB26000, v48, v49, "Trying to create a new activity session with the same identifier as an already existing activity session, ignoring the new activity session.", v50, 2u);
        MEMORY[0x1B27120C0](v50, -1, -1);
      }
    }
  }

  else
  {
    v75 = a2;
    v34 = [a2 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = *MEMORY[0x1E69E7D40] & *a1;
    v36 = a1;
    v73 = *(v35 + 0x388);
    v74 = v35 + 904;
    v37 = v73();
    v38 = [v37 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = static Date.> infix(_:_:)();
    v40 = v78;
    v41 = *(v79 + 8);
    v79 += 8;
    v41(v11, v78);
    v41(v13, v40);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Log.default);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 67109120;
      *(v45 + 4) = v39 & 1;
      _os_log_impl(&dword_1AEB26000, v43, v44, "Comparison result: isNewer? %{BOOL}d", v45, 8u);
      MEMORY[0x1B27120C0](v45, -1, -1);
    }

    if (v39)
    {
      (*((*MEMORY[0x1E69E7D40] & *v36) + 0x4D0))(v76, v77);
      return 1;
    }

    v51 = v13;
    v52 = v75;
    v53 = v36;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v41;
      v57 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v81 = v77;
      *v57 = 136315394;
      LODWORD(v76) = v55;
      v58 = [v52 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v59 = v78;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      v56(v51, v59);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v81);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2080;
      v65 = (v73)(v64);
      v66 = [v65 timestamp];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v56(v51, v59);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v81);

      *(v57 + 14) = v70;
      _os_log_impl(&dword_1AEB26000, v54, v76, "Ignoring new activity session since it was made before (%s) the latest activity session (%s)", v57, 0x16u);
      v71 = v77;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v71, -1, -1);
      MEMORY[0x1B27120C0](v57, -1, -1);
    }
  }

  return 0;
}

uint64_t specialized CPApplicationControllerProtocol.isActivitySupported(_:)(void *a1)
{
  v2 = [a1 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    LOBYTE(v3) = CPApplicationController.isBundleIdentifierSupported(_:)(v7);

    return v3 & 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v15 = v10;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v19);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1AEB26000, v11, v12, "Missing bundle identifier: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1B27120C0](v14, -1, -1);
      MEMORY[0x1B27120C0](v13, -1, -1);
    }

    return 0;
  }
}

void ActivitySessionManager.leaveActivitySession(activitySessionUUID:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v1[OBJC_IVAR___CPActivitySessionManager_queue];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = v48;
    MEMORY[0x1EEE9AC00](v18);
    *(&v47 - 2) = a1;
    specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.leaveActivitySession(activitySessionUUID:), (&v47 - 4), v19);
    v21 = v20;

    if (v21)
    {
      (*((*MEMORY[0x1E69E7D40] & *v21) + 0x438))(v22);
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Log.default);
      (*(v4 + 16))(v10, a1, v3);
      v34 = v1;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v48 = v38;
        *v37 = 136315394;
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        (*(v4 + 8))(v10, v3);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v48);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2080;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
        v43 = Set.description.getter();
        v45 = v44;

        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v48);

        *(v37 + 14) = v46;
        _os_log_impl(&dword_1AEB26000, v35, v36, "Couldn't find matching activitySession for %s activitySessions: %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v38, -1, -1);
        MEMORY[0x1B27120C0](v37, -1, -1);
      }

      else
      {

        (*(v4 + 8))(v10, v3);
      }
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.default);
    (*(v4 + 16))(v8, a1, v3);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48 = v27;
      *v26 = 136315138;
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v3;
      v31 = v30;
      (*(v4 + 8))(v8, v29);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, &v48);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_1AEB26000, v24, v25, "Could not leave activitySessionWithUUID:%s. Session may have already been left", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }
  }
}

void ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v53 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v4[OBJC_IVAR___CPActivitySessionManager_queue];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v54;
  MEMORY[0x1EEE9AC00](v19);
  *(&v51 - 2) = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:), (&v51 - 4), v20);
  v22 = v21;

  if (!v22)
  {
    v52 = a3;
    if (one-time initialization token for default == -1)
    {
LABEL_6:
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Log.default);
      (*(v8 + 16))(v11, a1, v7);
      v31 = v4;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v54 = v35;
        *v34 = 136315394;
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        (*(v8 + 8))(v11, v7);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v54);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2080;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
        v40 = Set.description.getter();
        v42 = v41;

        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v54);

        *(v34 + 14) = v43;
        _os_log_impl(&dword_1AEB26000, v32, v33, "Couldn't find matching activitySession for %s activitySessions: %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v35, -1, -1);
        MEMORY[0x1B27120C0](v34, -1, -1);
      }

      else
      {

        (*(v8 + 8))(v11, v7);
      }

      v52(0);
      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_6;
  }

  v24 = MEMORY[0x1E69E7D40];
  v25 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x328))(v23);
  v26 = [v25 bundleIdentifier];

  if (v26)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    (*((*v24 & *v22) + 0x488))(v27, v29, 1, a3, v53);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Log.default);
    v45 = v22;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = v22;
      v50 = v45;
      _os_log_impl(&dword_1AEB26000, v46, v47, "Unable to find bundleID for activitySession %@", v48, 0xCu);
      outlined destroy of NSObject?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v49, -1, -1);
      MEMORY[0x1B27120C0](v48, -1, -1);
    }

    a3(0);
  }
}

void ActivitySessionManager.removeActivitySession(activitySessionUUID:using:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v2[OBJC_IVAR___CPActivitySessionManager_queue];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v40;
  MEMORY[0x1EEE9AC00](v17);
  *(&v39 - 2) = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:), (&v39 - 4), v18);
  v20 = v19;

  if (v20)
  {
    v21 = MEMORY[0x1E69E7D40];
    v22 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x190);
    v23 = a2;
    v24 = v22(a2);
    (*((*v21 & *v20) + 0x440))(v24);

    return;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.default);
  (*(v6 + 16))(v9, a1, v5);
  v26 = v2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136315394;
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v6 + 8))(v9, v5);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v40);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    v35 = Set.description.getter();
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v40);

    *(v29 + 14) = v38;
    _os_log_impl(&dword_1AEB26000, v27, v28, "Couldn't find matching activitySession for %s activitySessions: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

void ActivitySessionManager.updateActivitySession(activitySessionUUID:activity:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v2[OBJC_IVAR___CPActivitySessionManager_queue];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v36;
  MEMORY[0x1EEE9AC00](v17);
  *(&v35 - 2) = a1;
  *(&v35 - 1) = a2;
  specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.updateActivitySession(activitySessionUUID:activity:), (&v35 - 4), v18);
  v20 = v19;

  if (v20)
  {
    ActivitySession.updateActivity(_:)(a2);

    return;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.default);
  (*(v6 + 16))(v9, a1, v5);
  v22 = v2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315394;
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v6 + 8))(v9, v5);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v36);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    v31 = Set.description.getter();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v36);

    *(v25 + 14) = v34;
    _os_log_impl(&dword_1AEB26000, v23, v24, "Couldn't find matching activitySession for %s activitySessions: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v26, -1, -1);
    MEMORY[0x1B27120C0](v25, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

BOOL closure #1 in ActivitySessionManager.updateActivitySession(activitySessionUUID:activity:)(void **a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x328))();
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v11 = [a3 bundleIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = specialized static BundleIdentiferMap.areEquivalentBundleIDs(bundleID:otherBundleID:)(v7, v9, v13, v15);

  return v16;
}

id ActivitySessionManager.updateNearbyClusters(localParticipantCluster:remoteParticipants:)(void *a1, unint64_t a2)
{
  v3 = v2;
  result = [*(v3 + OBJC_IVAR___CPActivitySessionManager_featureFlags) nearbyFaceTimeEnabled];
  if (result)
  {
    if (!a1 || [a1 type] != 1)
    {
      v7 = MEMORY[0x1E69E7CD0];
      goto LABEL_29;
    }

    v7 = swift_allocObject();
    v7[2] = a1;
    swift_getKeyPath();
    v47 = a1;

    v49[0] = MEMORY[0x1B27104E0](0, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
    v46 = v3;
    if ((a2 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      v7 = &lazy cache variable for type metadata for TUConversationParticipant;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      Set.Iterator.init(_cocoa:)();
      a2 = v48[1];
      v8 = v48[2];
      v9 = v48[3];
      v10 = v48[4];
      v11 = v48[5];
    }

    else
    {
      v10 = 0;
      v12 = -1 << *(a2 + 32);
      v8 = (a2 + 56);
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

      v11 = v14 & *(a2 + 56);
    }

    v15 = (v9 + 64) >> 6;
    v3 = v10;
    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v16 = v3;
    if (v11)
    {
      v17 = v3;
      goto LABEL_21;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {
        goto LABEL_28;
      }

      v11 = v8[v17];
      ++v16;
      if (v11)
      {
        v3 = v17;
LABEL_21:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v7 = *(*(a2 + 48) + ((v17 << 9) | (8 * v18)));
        if (!v7)
        {
          goto LABEL_28;
        }

        while (2)
        {
          v19 = [v7 cluster];
          if (!v19 || (v20 = v19, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantCluster, 0x1E69D8B98), v21 = v47, v22 = static NSObject.== infix(_:_:)(), v21, v20, (v22 & 1) == 0))
          {

            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

LABEL_12:
            if (__CocoaSet.Iterator.next()())
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
              swift_dynamicCast();
              v7 = v48[0];
              if (v48[0])
              {
                continue;
              }
            }

LABEL_28:

            outlined consume of Set<String>.Iterator._Variant();

            v7 = v49[0];

            v3 = v46;
LABEL_29:
            if (one-time initialization token for default == -1)
            {
              goto LABEL_30;
            }

            goto LABEL_54;
          }

          break;
        }

        v23 = [v7 identifier];

        specialized Set._Variant.insert(_:)(v48, v23);
        if ((a2 & 0x8000000000000000) != 0)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_54:
      swift_once();
LABEL_30:
      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.default);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v49[0] = v28;
        *v27 = 136446466;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000041, 0x80000001AEE36840, v49);
        *(v27 + 12) = 2080;
        v29 = Set.description.getter();
        v31 = v30;

        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v49);

        *(v27 + 14) = v32;
        _os_log_impl(&dword_1AEB26000, v25, v26, "%{public}s: Updated nearby participants %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v28, -1, -1);
        MEMORY[0x1B27120C0](v27, -1, -1);
      }

      else
      {
      }

      v33 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x118))();
      v3 = v33;
      if ((v33 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
        Set.Iterator.init(_cocoa:)();
        v3 = v49[0];
        v34 = v49[1];
        v35 = v49[2];
        v36 = v49[3];
        v37 = v49[4];
      }

      else
      {
        v36 = 0;
        v38 = -1 << *(v33 + 32);
        v34 = v33 + 56;
        v35 = ~v38;
        v39 = -v38;
        v40 = v39 < 64 ? ~(-1 << v39) : -1;
        v37 = v40 & *(v33 + 56);
      }

      if (v3 < 0)
      {
        break;
      }

      while (1)
      {
        v44 = v36;
        v45 = v37;
        v42 = v36;
        if (!v37)
        {
          break;
        }

LABEL_47:
        v43 = (v45 - 1) & v45;
        v41 = *(*(v3 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v45)))));
        if (!v41)
        {
          goto LABEL_50;
        }

LABEL_48:
        (*((*MEMORY[0x1E69E7D40] & *v41) + 0x530))(v7);

        v36 = v42;
        v37 = v43;
        if (v3 < 0)
        {
          goto LABEL_40;
        }
      }

      while (1)
      {
        v42 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        if (v42 >= ((v35 + 64) >> 6))
        {
          goto LABEL_50;
        }

        v45 = *(v34 + 8 * v42);
        ++v44;
        if (v45)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
    }

LABEL_40:
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ActivitySession(0);
      swift_dynamicCast();
      v41 = v48[0];
      v42 = v36;
      v43 = v37;
      if (v48[0])
      {
        goto LABEL_48;
      }
    }

LABEL_50:
    outlined consume of Set<String>.Iterator._Variant();
  }

  return result;
}

void ActivitySessionManager.setUsingAirplay(_:_:)(char a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v2[OBJC_IVAR___CPActivitySessionManager_queue];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v36;
  MEMORY[0x1EEE9AC00](v17);
  *(&v35 - 2) = a2;
  specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:), (&v35 - 4), v18);
  v20 = v19;

  if (v20)
  {
    (*((*MEMORY[0x1E69E7D40] & *v20) + 0x378))(a1 & 1);

    return;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.default);
  (*(v6 + 16))(v9, a2, v5);
  v22 = v2;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315394;
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v6 + 8))(v9, v5);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v36);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    v31 = Set.description.getter();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v36);

    *(v25 + 14) = v34;
    _os_log_impl(&dword_1AEB26000, v23, v24, "Couldn't find matching activitySession for %s activitySessions: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v26, -1, -1);
    MEMORY[0x1B27120C0](v25, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

Swift::Void __swiftcall ActivitySessionManager.refreshDataCryptors()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = v28;
    if ((v28 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
      Set.Iterator.init(_cocoa:)();
      v10 = v28;
      v9 = v29;
      v11 = v30;
      v12 = v31;
      v13 = v32;
    }

    else
    {
      v14 = -1 << *(v28 + 32);
      v9 = v28 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v28 + 56);

      v12 = 0;
      v10 = v8;
    }

    v26[0] = v11;
    v17 = (v11 + 64) >> 6;
    v18 = MEMORY[0x1E69E7D40];
    if (v10 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v19 = v12;
      v20 = v13;
      v21 = v12;
      if (!v13)
      {
        break;
      }

LABEL_13:
      v22 = (v20 - 1) & v20;
      v23 = *(*(v10 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
      v24 = v23;
      if (!v23)
      {
LABEL_19:
        outlined consume of Set<String>.Iterator._Variant();

        return;
      }

      while (1)
      {
        (*((*v18 & *v24) + 0x4B8))(v23);

        v12 = v21;
        v13 = v22;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v25 = __CocoaSet.Iterator.next()();
        if (v25)
        {
          v26[1] = v25;
          type metadata accessor for ActivitySession(0);
          v23 = swift_dynamicCast();
          v24 = v27;
          v21 = v12;
          v22 = v13;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v9 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall ActivitySessionManager.refreshActivitySessionActiveParticipants()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = v28;
    if ((v28 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
      Set.Iterator.init(_cocoa:)();
      v10 = v28;
      v9 = v29;
      v11 = v30;
      v12 = v31;
      v13 = v32;
    }

    else
    {
      v14 = -1 << *(v28 + 32);
      v9 = v28 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v28 + 56);

      v12 = 0;
      v10 = v8;
    }

    v26[0] = v11;
    v17 = (v11 + 64) >> 6;
    v18 = MEMORY[0x1E69E7D40];
    if (v10 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v19 = v12;
      v20 = v13;
      v21 = v12;
      if (!v13)
      {
        break;
      }

LABEL_13:
      v22 = (v20 - 1) & v20;
      v23 = *(*(v10 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
      v24 = v23;
      if (!v23)
      {
LABEL_19:
        outlined consume of Set<String>.Iterator._Variant();

        return;
      }

      while (1)
      {
        (*((*v18 & *v24) + 0x4E8))(v23);

        v12 = v21;
        v13 = v22;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v25 = __CocoaSet.Iterator.next()();
        if (v25)
        {
          v26[1] = v25;
          type metadata accessor for ActivitySession(0);
          v23 = swift_dynamicCast();
          v24 = v27;
          v21 = v12;
          v22 = v13;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v9 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall ActivitySessionManager.resetSessions()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v0;
    static Published.subscript.getter();

    v8 = v31;
    if ((v31 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
      Set.Iterator.init(_cocoa:)();
      v10 = v31;
      v9 = v32;
      v11 = v33;
      v12 = v34;
      v13 = v35;
    }

    else
    {
      v14 = -1 << *(v31 + 32);
      v9 = v31 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v31 + 56);

      v12 = 0;
      v10 = v8;
    }

    v27[1] = v11;
    v17 = (v11 + 64) >> 6;
    if (v10 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = v12;
      v19 = v13;
      v20 = v12;
      if (!v13)
      {
        break;
      }

LABEL_13:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v22)
      {
LABEL_19:
        outlined consume of Set<String>.Iterator._Variant();

        v24 = v28;
        v25 = *(v28 + OBJC_IVAR___CPActivitySessionManager_topicsObserver);
        *(v28 + OBJC_IVAR___CPActivitySessionManager_topicsObserver) = 0;

        v26 = *(v24 + OBJC_IVAR___CPActivitySessionManager_topicsObserverSubscription);
        *(v24 + OBJC_IVAR___CPActivitySessionManager_topicsObserverSubscription) = 0;

        return;
      }

      while (1)
      {
        [v22 resetSession];

        v12 = v20;
        v13 = v21;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v23 = __CocoaSet.Iterator.next()();
        if (v23)
        {
          v29 = v23;
          type metadata accessor for ActivitySession(0);
          swift_dynamicCast();
          v22 = v30;
          v20 = v12;
          v21 = v13;
          if (v30)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_19;
      }

      v19 = *(v9 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall ActivitySessionManager.resetNonScreenSharingSessions()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_28:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Resetting non screensharing sessions", v12, 2u);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v34;
  v32[2] = v34;
  if ((v34 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    Set.Iterator.init(_cocoa:)();
    v13 = v34;
    v14 = v35;
    v15 = v36;
    v16 = v37;
    v17 = v38;
  }

  else
  {
    v18 = -1 << *(v34 + 32);
    v14 = v34 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v34 + 56);

    v16 = 0;
  }

  v32[1] = v15;
  while ((v13 & 0x8000000000000000) == 0)
  {
    v21 = v16;
    v22 = v17;
    v23 = v16;
    if (!v17)
    {
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= ((v15 + 64) >> 6))
        {
          goto LABEL_25;
        }

        v22 = *(v14 + 8 * v23);
        ++v21;
        if (v22)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_18:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_25;
    }

LABEL_22:
    v27 = *((*MEMORY[0x1E69E7D40] & *v25) + 0x328);
    v28 = v27();
    v29 = [v28 isScreenSharingActivity];

    if ((v29 & 1) == 0)
    {
      v30 = v27();
      v31 = [v30 isSystemActivity];

      if ((v31 & 1) == 0)
      {
        [v25 resetSession];
      }
    }

    v16 = v23;
    v17 = v24;
  }

  v26 = __CocoaSet.Iterator.next()();
  if (v26)
  {
    v32[3] = v26;
    type metadata accessor for ActivitySession(0);
    swift_dynamicCast();
    v25 = v33;
    v23 = v16;
    v24 = v17;
    if (v33)
    {
      goto LABEL_22;
    }
  }

LABEL_25:
  outlined consume of Set<String>.Iterator._Variant();
}

Swift::Void __swiftcall ActivitySessionManager.removeScreenSharingSessions()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_27:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Removing screensharing sessions", v12, 2u);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v35;
  if ((v35 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    Set.Iterator.init(_cocoa:)();
    v15 = v35;
    v14 = v36;
    v16 = v37;
    v17 = v38;
    v18 = v39;
  }

  else
  {
    v19 = -1 << *(v35 + 32);
    v14 = v35 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v35 + 56);

    v17 = 0;
    v15 = v13;
  }

  v33[0] = v16;
  v22 = (v16 + 64) >> 6;
  v23 = MEMORY[0x1E69E7D40];
  while ((v15 & 0x8000000000000000) == 0)
  {
    v24 = v17;
    v25 = v18;
    v26 = v17;
    if (!v18)
    {
      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v26 >= v22)
        {
          goto LABEL_24;
        }

        v25 = *(v14 + 8 * v26);
        ++v24;
        if (v25)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_18:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    v29 = v28;
    if (!v28)
    {
      goto LABEL_24;
    }

LABEL_22:
    v31 = (*((*v23 & *v29) + 0x328))(v28);
    v32 = [v31 isScreenSharingActivity];

    if (v32)
    {
      (*((*v23 & *v29) + 0x440))();
    }

    v17 = v26;
    v18 = v27;
  }

  v30 = __CocoaSet.Iterator.next()();
  if (v30)
  {
    v33[1] = v30;
    type metadata accessor for ActivitySession(0);
    v28 = swift_dynamicCast();
    v29 = v34;
    v26 = v17;
    v27 = v18;
    if (v34)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  outlined consume of Set<String>.Iterator._Variant();
}

Swift::Void __swiftcall ActivitySessionManager.removeLocalScreenSharingSessions()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_28:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Removing local screensharing sessions", v12, 2u);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v35;
  if ((v35 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    Set.Iterator.init(_cocoa:)();
    v15 = v35;
    v14 = v36;
    v16 = v37;
    v17 = v38;
    v18 = v39;
  }

  else
  {
    v19 = -1 << *(v35 + 32);
    v14 = v35 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v35 + 56);

    v17 = 0;
    v15 = v13;
  }

  v33[0] = v16;
  v22 = (v16 + 64) >> 6;
  v23 = MEMORY[0x1E69E7D40];
  while ((v15 & 0x8000000000000000) == 0)
  {
    v24 = v17;
    v25 = v18;
    v26 = v17;
    if (!v18)
    {
      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v26 >= v22)
        {
          goto LABEL_25;
        }

        v25 = *(v14 + 8 * v26);
        ++v24;
        if (v25)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_18:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    v29 = v28;
    if (!v28)
    {
      goto LABEL_25;
    }

LABEL_22:
    v31 = (*((*v23 & *v29) + 0x328))(v28);
    v32 = [v31 isScreenSharingActivity];

    if (v32 && ((*((*v23 & *v29) + 0x340))() & 1) != 0)
    {
      (*((*v23 & *v29) + 0x440))();
    }

    v17 = v26;
    v18 = v27;
  }

  v30 = __CocoaSet.Iterator.next()();
  if (v30)
  {
    v33[1] = v30;
    type metadata accessor for ActivitySession(0);
    v28 = swift_dynamicCast();
    v29 = v34;
    v26 = v17;
    v27 = v18;
    if (v34)
    {
      goto LABEL_22;
    }
  }

LABEL_25:
  outlined consume of Set<String>.Iterator._Variant();
}

Swift::Void __swiftcall ActivitySessionManager.resetSceneAssociations(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = v40;
    v36 = v40;
    if ((v40 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
      Set.Iterator.init(_cocoa:)();
      v12 = v40;
      v13 = v41;
      v14 = v42;
      v15 = v43;
      v16 = v44;
    }

    else
    {
      v17 = -1 << *(v40 + 32);
      v13 = v40 + 56;
      v14 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v40 + 56);

      v15 = 0;
    }

    v37 = countAndFlagsBits;
    v20 = object;
    v35 = v14;
    v21 = (v14 + 64) >> 6;
    while (1)
    {
      if (v12 < 0)
      {
        v27 = __CocoaSet.Iterator.next()();
        if (!v27 || (v38 = v27, type metadata accessor for ActivitySession(0), v24 = swift_dynamicCast(), (v26 = v39) == 0))
        {
LABEL_29:
          outlined consume of Set<String>.Iterator._Variant();

          return;
        }
      }

      else
      {
        v22 = v15;
        v23 = v16;
        if (!v16)
        {
          while (1)
          {
            v15 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v15 >= v21)
            {
              goto LABEL_29;
            }

            v23 = *(v13 + 8 * v15);
            ++v22;
            if (v23)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          break;
        }

LABEL_15:
        v16 = (v23 - 1) & v23;
        v24 = *(*(v12 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v23)))));
        v26 = v24;
        if (!v24)
        {
          goto LABEL_29;
        }
      }

      v28 = (*((*MEMORY[0x1E69E7D40] & *v26) + 0x328))(v24, v25);
      v29 = [v28 bundleIdentifier];

      if (!v29)
      {
        goto LABEL_9;
      }

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      if (v30 == v37 && v32 == v20)
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      if (*(v26 + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator))
      {
        ActivitySession.SceneAssociationCoordinator.disassociateAllScenes()();
      }

      else
      {
LABEL_9:
      }
    }
  }

  __break(1u);
}

id ActivitySessionManager.supportsEndOnlyForMe.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 activitySessionManagerShouldSupportEndOnlyForMe_];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t ActivitySessionManager.sessionIsJoinable(session:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = MEMORY[0x1E69E7D40];
    v13 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x120))(result);
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    v15 = (*((*v12 & *a1) + 0x388))();
    v16 = [v14 activitySessionManager:v2 activitySessionIsJoinable:v15];
    swift_unknownObjectRelease();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *ActivitySessionManager.session(session:receivedEvent:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x120))(result);
    if (result)
    {
      [result activitySessionManager:v2 receivedActivitySessionEvent:a2];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ActivitySessionManager.session(session:fetchDataCryptorForTopic:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v17 = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v18 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x120))(v17);
    if (v18)
    {
      v19 = v18;
      v20 = MEMORY[0x1B270FF70](a2, a3);
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      aBlock[4] = partial apply for closure #1 in ActivitySessionManager.session(session:fetchDataCryptorForTopic:completion:);
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Any) -> ();
      aBlock[3] = &block_descriptor_32_0;
      v22 = _Block_copy(aBlock);

      [v19 activitySessionManager:v5 fetchDataCryptorForTopic:v20 completionHandler:v22];
      swift_unknownObjectRelease();
      _Block_release(v22);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in ActivitySessionManager.session(session:fetchDataCryptorForTopic:completion:)(uint64_t a1, void (*a2)())
{
  outlined init with copy of Any(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CPDataCryptor_pMd, &_sSo13CPDataCryptor_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Any) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t ActivitySessionManager.session(session:requestEncryptionKeysForParticipants:topicName:)(uint64_t a1, Class isa, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (one-time initialization token for default == -1)
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
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.default);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315394;
    if (isa)
    {
      v21 = MEMORY[0x1B2710180](isa, MEMORY[0x1E69E76D8]);
      v23 = v22;
    }

    else
    {
      v23 = 0xE500000000000000;
      v21 = 0x3E6C696E3CLL;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v29);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v29);
    _os_log_impl(&dword_1AEB26000, v17, v18, "Requesting encryption keys for participants=%s topicName=%s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x120))();
  if (result)
  {
    v26 = result;
    if (isa)
    {
      specialized _arrayForceCast<A, B>(_:)(isa);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v27 = MEMORY[0x1B270FF70](a3, a4);
    [v26 activitySessionManager:v5 requestEncryptionKeysForParticipants:isa topicName:v27];

    return swift_unknownObjectRelease();
  }

  return result;
}

void ActivitySessionManager.sessionChanged(session:)(void *a1, const char *a2, SEL *a3)
{
  v6 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v6 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (one-time initialization token for default == -1)
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
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_1AEB26000, v17, v18, a2, v19, 0xCu);
    outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = specialized Set.contains(_:)(v16, v37[1]);

  if (v22)
  {
    v24 = MEMORY[0x1E69E7D40];
    v25 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x120);
    v26 = (v25)(v23);
    if (v26)
    {
      v27 = v26;
      v28 = (*((*v24 & *v16) + 0x388))();
      [v27 *a3];

      v26 = swift_unknownObjectRelease();
    }

    v32 = (*((*v24 & *v16) + 0x328))(v26);
    v33 = [v32 isSystemActivity];

    if ((v33 & 1) == 0)
    {
      v34 = v25();
      if (v34)
      {
        v35 = v34;
        if ([v34 respondsToSelector_])
        {
          (*((*v24 & *v6) + 0x170))();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
          lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
          isa = Set._bridgeToObjectiveC()().super.isa;

          [v35 activitySessionManager:v6 tuActivitySessionsDidChange:isa];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1AEB26000, v29, v30, "Ignoring activity session update since it's not yet tracked", v31, 2u);
      MEMORY[0x1B27120C0](v31, -1, -1);
    }
  }
}

void ActivitySessionManager.session(session:stateChanged:)(void *a1, unint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a2;
  v12 = *(v3 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v10 = v12;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v12)
  {
    if (one-time initialization token for default == -1)
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
  v93 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v93, static Log.default);
  v15 = a1;
  outlined copy of ActivitySession.State(v11);
  v95 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of ActivitySession.State(v11);

  v18 = os_log_type_enabled(v16, v17);
  v19 = MEMORY[0x1E69E7D40];
  if (v18)
  {
    v92 = v3;
    v20 = 0xEB00000000646574;
    v21 = v11;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v96[0] = v24;
    *v22 = 136315650;
    v94 = v21;
    if (v21 >> 62)
    {
      if (v21 >> 62 == 1)
      {
        v25 = 0x664F6465646E6148;
        v26 = 0xE900000000000066;
      }

      else
      {
        v27 = 0xE600000000000000;
        v28 = 0x64656E696F4ALL;
        if (v94 != 0x8000000000000008)
        {
          v28 = 1952867660;
          v27 = 0xE400000000000000;
        }

        if (v94 == 0x8000000000000000)
        {
          v25 = 0x676E6974696157;
        }

        else
        {
          v25 = v28;
        }

        if (v94 == 0x8000000000000000)
        {
          v26 = 0xE700000000000000;
        }

        else
        {
          v26 = v27;
        }
      }
    }

    else
    {
      v25 = 0x6164696C61766E49;
      v26 = 0xEB00000000646574;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v96);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    (*((*v19 & *v15) + 0x2F8))(&v97, v30);
    if (v97 >> 62)
    {
      if (v97 >> 62 == 1)
      {
        v31 = 0x664F6465646E6148;
        v20 = 0xE900000000000066;
      }

      else
      {
        v32 = 0xE600000000000000;
        v33 = 0x64656E696F4ALL;
        if (v97 != 0x8000000000000008)
        {
          v33 = 1952867660;
          v32 = 0xE400000000000000;
        }

        if (v97 == 0x8000000000000000)
        {
          v31 = 0x676E6974696157;
        }

        else
        {
          v31 = v33;
        }

        if (v97 == 0x8000000000000000)
        {
          v20 = 0xE700000000000000;
        }

        else
        {
          v20 = v32;
        }
      }
    }

    else
    {
      v31 = 0x6164696C61766E49;
    }

    outlined consume of ActivitySession.State(v97);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v20, v96);

    *(v22 + 14) = v34;
    *(v22 + 22) = 2112;
    *(v22 + 24) = v15;
    *v23 = v15;
    v35 = v15;
    _os_log_impl(&dword_1AEB26000, v16, v17, "ActivitySessionManager state changed from %s to %s on activity session: %@", v22, 0x20u);
    outlined destroy of NSObject?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v23, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);

    v3 = v92;
    v11 = v94;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36 = specialized Set.contains(_:)(v15, v96[0]);

  if ((v36 & 1) == 0)
  {
    v56 = Logger.logObject.getter();
    LOBYTE(v57) = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v56, v57))
    {
LABEL_44:

      return;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "Ignoring activity session update since it's not yet tracked";
LABEL_43:
    _os_log_impl(&dword_1AEB26000, v56, v57, v59, v58, 2u);
    MEMORY[0x1B27120C0](v58, -1, -1);
    goto LABEL_44;
  }

  v38 = *((*v19 & *v15) + 0x2F8);
  v39 = (*v19 & *v15) + 760;
  v38(v96, v37);
  v40 = v96[0];
  if (v96[0] >> 62)
  {
    v60 = outlined consume of ActivitySession.State(v96[0]);
    v61 = (*((*v19 & *v3) + 0x120))(v60);
    if (v61)
    {
      v62 = v61;
      v63 = (*((*v19 & *v15) + 0x388))();
      if (v11 >> 62)
      {
        if (v11 >> 62 == 1)
        {
          v64 = 4;
        }

        else
        {
          v70 = 1;
          if (v11 != 0x8000000000000008)
          {
            v70 = 5;
          }

          if (v11 == 0x8000000000000000)
          {
            v64 = 0;
          }

          else
          {
            v64 = v70;
          }
        }
      }

      else
      {
        v64 = 2;
      }

      [v62 activitySessionManager:v3 activitySessionStateChanged:v63 oldState:v64];
      swift_unknownObjectRelease();
    }

    goto LABEL_70;
  }

  v91 = v39;
  v92 = v38;
  v94 = v11;
  v41 = *(v96[0] + 24);

  outlined consume of ActivitySession.State(v40);
  v42 = v15;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v15;
    v47 = v42;
    _os_log_impl(&dword_1AEB26000, v43, v44, "ActivitySessionManager session was invalidated: %@", v45, 0xCu);
    outlined destroy of NSObject?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v46, -1, -1);
    MEMORY[0x1B27120C0](v45, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v48 = static Published.subscript.modify();
  v49 = specialized Set._Variant.remove(_:)(v42);
  v48(v96, 0);

  if (!v49)
  {

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v56, v57))
    {
      goto LABEL_44;
    }

    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "ActivitySession not found -- not notifying delegate";
    goto LABEL_43;
  }

  v50 = (*((*v19 & *v42) + 0x328))();
  v51 = [v50 metadata];

  [v51 removeImageDiskFile];
  v52 = *((*v19 & *v3) + 0x120);
  v53 = v52();
  if (v53)
  {
    v54 = v53;
    v55 = (*((*v19 & *v42) + 0x388))();

    if (!v41)
    {
    }

    [v54 activitySessionManager:v3 activitySessionRemoved:v55 userOriginated:v41 == 0];

    swift_unknownObjectRelease();
  }

  if (v41)
  {

    v38 = v92;
  }

  else
  {

    v66 = (v52)(v65);
    v38 = v92;
    if (v66)
    {
      v67 = v66;
      v68 = (*((*v19 & *v42) + 0x388))();
      if (v94 >> 62)
      {
        if (v94 >> 62 == 1)
        {
          v69 = 4;
        }

        else if (v94 == 0x8000000000000000)
        {
          v69 = 0;
        }

        else if (v94 == 0x8000000000000008)
        {
          v69 = 1;
        }

        else
        {
          v69 = 5;
        }
      }

      else
      {
        v69 = 2;
      }

      [v67 activitySessionManager:v3 activitySessionStateChanged:v68 oldState:v69];
      swift_unknownObjectRelease();
    }
  }

  ActivitySessionManager.logMetricsForSessionEnd(_:)(v42);
LABEL_70:
  v71 = *((*v19 & *v15) + 0x328);
  v72 = v71();
  v73 = [v72 isSystemActivity];

  if ((v73 & 1) == 0)
  {
    v74 = (*((*v19 & *v3) + 0x120))();
    if (v74)
    {
      v75 = v74;
      if ([v74 respondsToSelector_])
      {
        (*((*v19 & *v3) + 0x170))();
        v92 = v38;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
        lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
        isa = Set._bridgeToObjectiveC()().super.isa;

        [v75 activitySessionManager:v3 tuActivitySessionsDidChange:isa];
        swift_unknownObjectRelease();

        v38 = v92;
        v19 = MEMORY[0x1E69E7D40];
      }

      else
      {
        v74 = swift_unknownObjectRelease();
      }
    }
  }

  v77 = (v71)(v74);
  v78 = [v77 isScreenSharingActivity];

  if (v78)
  {
    if ((*((*v19 & *v15) + 0x340))())
    {
      (v38)(v96);
      v97 = 0x8000000000000008;
      v79 = static ActivitySession.State.== infix(_:_:)(v96, &v97);
      v80 = outlined consume of ActivitySession.State(v96[0]);
      if ((v79 & 1) == 0)
      {
        v38(v96, v80);
        v97 = 0x8000000000000000;
        v81 = static ActivitySession.State.== infix(_:_:)(v96, &v97);
        outlined consume of ActivitySession.State(v96[0]);
        if ((v81 & 1) == 0)
        {
          v82 = v19;
          if (one-time initialization token for host != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v93, static Log.host);
          v83 = v15;
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v96[0] = v87;
            *v86 = 136315138;
            v97 = v71();
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
            v88 = String.init<A>(reflecting:)();
            v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v96);

            *(v86 + 4) = v90;
            _os_log_impl(&dword_1AEB26000, v84, v85, "Invalidating session because activity is ScreenSharing: %s", v86, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v87);
            MEMORY[0x1B27120C0](v87, -1, -1);
            MEMORY[0x1B27120C0](v86, -1, -1);
          }

          (*((*v82 & *v83) + 0x440))();
        }
      }
    }
  }
}

uint64_t ActivitySessionManager.sessionUnjoined(session:startDate:endDate:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for default == -1)
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
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.default);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v12;
    v29 = v16;
    *v15 = 136315138;
    type metadata accessor for ActivitySession(0);
    v17 = v12;
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v29);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v13, v14, "ActivitySessionManager revoking background authorization for unjoined session: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v21 = MEMORY[0x1E69E7D40];
  v22 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x138))();
  [v22 revokeBackgroundAuthorizationForSession_];

  result = (*((*v21 & *v2) + 0x120))();
  if (result)
  {
    v24 = result;
    v25 = (*((*v21 & *v12) + 0x388))();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v27 = Date._bridgeToObjectiveC()().super.isa;
    [v24 activitySessionManager:v2 sessionUnjoined:v25 startDate:isa endDate:v27];

    return swift_unknownObjectRelease();
  }

  return result;
}

void ActivitySessionManager.sessionCapabilitiesUpdated(session:)(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
LABEL_4:
    v10 = type metadata accessor for Logger();
    v11 = __swift_project_value_buffer(v10, static Log.default);
    v12 = a1;
    v56 = v11;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = MEMORY[0x1E69E7D40];
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v59 = v12;
      v60 = v18;
      *v17 = 136315394;
      type metadata accessor for ActivitySession(0);
      v19 = v12;
      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v60);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2048;
      (*((*v16 & *v19) + 0x2C0))(&v59, v23);

      *(v17 + 14) = v59;
      _os_log_impl(&dword_1AEB26000, v13, v14, "ActivitySessionManager capabilities on session: %s updated to: %ld", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1B27120C0](v18, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    else
    {
    }

    (*((*v16 & *v12) + 0x2C0))(&v60);
    v29 = v54;
    v30 = MEMORY[0x1E69E7CC0];
    if (v60)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      v31 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v30);
      }

      *(v30 + 2) = v31;
      v34 = &v30[16 * v33];
      *(v34 + 4) = 0xD000000000000010;
      *(v34 + 5) = 0x80000001AEE2EFD0;
    }

    else
    {
      v31 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v31)
      {
LABEL_29:

        return;
      }
    }

    v35 = *((*v16 & *v29) + 0x120);
    v57 = (*v16 & *v29) + 288;
    v58 = v35;
    v52[1] = v30;
    v36 = (v30 + 40);
    *&v28 = 136315394;
    v53 = v28;
    do
    {
      v39 = *(v36 - 1);
      v40 = *v36;

      v41 = v29;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v60 = v45;
        *v44 = v53;
        v46 = v58();
        v55 = v39;
        if (v46)
        {
          v59 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32CPActivitySessionManagerDelegate_pMd, &_sSo32CPActivitySessionManagerDelegate_pMR);
          v47 = String.init<A>(reflecting:)();
          v49 = v48;
        }

        else
        {
          v49 = 0xE300000000000000;
          v47 = 7104878;
        }

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v60);

        *(v44 + 4) = v50;
        *(v44 + 12) = 2080;
        v39 = v55;
        *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v40, &v60);
        _os_log_impl(&dword_1AEB26000, v42, v43, "Asking delegate %s to register plugin: %s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v45, -1, -1);
        MEMORY[0x1B27120C0](v44, -1, -1);

        v29 = v54;
      }

      else
      {
      }

      v51 = v58();
      if (v51)
      {
        v37 = v51;
        v38 = MEMORY[0x1B270FF70](v39, v40);

        [v37 activitySessionManager:v41 shouldRegisterPlugin:v38];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v36 += 2;
      --v31;
    }

    while (v31);
    goto LABEL_29;
  }

  if ([*(v1 + OBJC_IVAR___CPActivitySessionManager_featureFlags) sharePlayInFaceTimeCanvasEnabled])
  {
    v54 = v1;
    if (one-time initialization token for default == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.default);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1AEB26000, v25, v26, "Not updating capabilities due to FeatureFlag being disabled.", v27, 2u);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }
}

Swift::Void __swiftcall ActivitySessionManager.updateVirtualParticipantId(_:)(Swift::UInt64 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14CopresenceCore15ActivitySessionCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14CopresenceCore15ActivitySessionCG_GMR);
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGAJ14PluginRpcErrorOGAJ20PubSubTopicsObserverCGMd, &_s7Combine10PublishersO7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGAJ14PluginRpcErrorOGAJ20PubSubTopicsObserverCGMR);
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v45 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMR);
  v15 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v17 = v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAF9TopicInfoOGs5NeverOGAF14PluginRpcErrorOGAF20PubSubTopicsObserverCGGAC0M0Vy_AA9PublishedV9PublisherVyShyAF15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGA15_GMd, &_s7Combine10PublishersO9ReceiveOnVy_AC14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAF9TopicInfoOGs5NeverOGAF14PluginRpcErrorOGAF20PubSubTopicsObserverCGGAC0M0Vy_AA9PublishedV9PublisherVyShyAF15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGA15_GMR);
  v55 = *(v18 - 8);
  v56 = v18;
  v19 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v54 = v45 - v20;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *&v2[OBJC_IVAR___CPActivitySessionManager_queue];
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21);
  v49 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {
    if (a1 && [*&v2[OBJC_IVAR___CPActivitySessionManager_featureFlags] expanseTopicStateEnabled])
    {
      v27 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D8))();
      v28 = v27(v2, &v2[OBJC_IVAR___CPActivitySessionManager_groupUUID], a1);

      v29 = *&v2[OBJC_IVAR___CPActivitySessionManager_topicsObserver];
      *&v2[OBJC_IVAR___CPActivitySessionManager_topicsObserver] = v28;

      v57 = v28;
      v45[1] = static Subscribers.Demand.unlimited.getter();
      type metadata accessor for PubSubTopicsObserver();
      v47 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGMR);
      v46 = v7;
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type PubSubTopicsObserver and conformance PubSubTopicsObserver, type metadata accessor for PubSubTopicsObserver);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Sequence<[TopicInfo], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGMR);
      Publisher.flatMap<A>(maxPublishers:_:)();

      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.SetFailureType<Publishers.Sequence<[TopicInfo], Never>, PluginRpcError>, PubSubTopicsObserver> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGAJ14PluginRpcErrorOGAJ20PubSubTopicsObserverCGMd, &_s7Combine10PublishersO7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGAJ14PluginRpcErrorOGAJ20PubSubTopicsObserverCGMR);
      Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
      (*(v48 + 8))(v14, v11);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMd, &_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMR);
      v30 = v50;
      Published.projectedValue.getter();
      swift_endAccess();
      v31 = v53;
      v32 = *(v53 + 84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<Set<ActivitySession>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy14CopresenceCore15ActivitySessionCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14CopresenceCore15ActivitySessionCG_GMR);
      v33 = v52;
      Publisher.map<A>(_:)();
      (*(v51 + 8))(v30, v33);
      v34 = &v17[*(v31 + 92)];
      MEMORY[0x1B27106A0](*&v2[OBJC_IVAR___CPActivitySessionManager_topicsObserverCacheEvictionTimeout]);
      v35 = v49;
      *&v17[*(v31 + 88)] = v49;
      v57 = v35;
      v36 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v37 = v46;
      (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.WaitUntilAvailable<Publishers.HandleEvents<Publishers.FlatMap<Publishers.SetFailureType<Publishers.Sequence<[TopicInfo], Never>, PluginRpcError>, PubSubTopicsObserver>>, Publishers.Map<Published<Set<ActivitySession>>.Publisher, [String]>, OS_dispatch_queue> and conformance Publishers.WaitUntilAvailable<A, B, C>, &_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMR);
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      v38 = v35;
      v39 = v54;
      Publisher.receive<A>(on:options:)();
      outlined destroy of NSObject?(v37, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

      outlined destroy of NSObject?(v17, &_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMR);
      *(swift_allocObject() + 16) = v47;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.WaitUntilAvailable<Publishers.HandleEvents<Publishers.FlatMap<Publishers.SetFailureType<Publishers.Sequence<[TopicInfo], Never>, PluginRpcError>, PubSubTopicsObserver>>, Publishers.Map<Published<Set<ActivitySession>>.Publisher, [String]>, OS_dispatch_queue>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAF9TopicInfoOGs5NeverOGAF14PluginRpcErrorOGAF20PubSubTopicsObserverCGGAC0M0Vy_AA9PublishedV9PublisherVyShyAF15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGA15_GMd, &_s7Combine10PublishersO9ReceiveOnVy_AC14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAF9TopicInfoOGs5NeverOGAF14PluginRpcErrorOGAF20PubSubTopicsObserverCGGAC0M0Vy_AA9PublishedV9PublisherVyShyAF15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGA15_GMR);
      v40 = v56;
      v41 = Publisher.sink(receiveCompletion:receiveValue:)();

      (*(v55 + 8))(v39, v40);
      v42 = &OBJC_IVAR___CPActivitySessionManager_topicsObserverSubscription;
    }

    else
    {
      v41 = 0;
      v42 = &OBJC_IVAR___CPActivitySessionManager_topicsObserver;
    }

    v43 = *v42;
    v44 = *&v2[v43];
    *&v2[v43] = v41;
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path getter for Sequence.publisher : [TopicInfo](uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore9TopicInfoOGMd, &_sSay14CopresenceCore9TopicInfoOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [TopicInfo] and conformance [A], &_sSay14CopresenceCore9TopicInfoOGMd, &_sSay14CopresenceCore9TopicInfoOGMR);
  return Sequence.publisher.getter();
}

uint64_t specialized implicit closure #2 in ActivitySessionManager.updateVirtualParticipantId(_:)(uint64_t *a1)
{
  swift_getKeyPath();
  v3 = *a1;

  swift_getAtKeyPath();
}

void closure #1 in ActivitySessionManager.updateVirtualParticipantId(_:)(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  outlined copy of TopicInfo(v2, v1, v3, v4, v5);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined consume of TopicInfo(v2, v1, v3, v4, v5);
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;

    if (v5)
    {
    }

    else
    {
    }

    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, oslog, v7, "Received topic info: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
  }
}

void closure #3 in ActivitySessionManager.updateVirtualParticipantId(_:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v42 - v8;
  v10 = type metadata accessor for PluginRpcError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v45 = &v42 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v42 - v24;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v42 - v24, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v26 = *(v11 + 48);
  if (v26(v25, 1, v10) == 1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.default);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v46;
      _os_log_impl(&dword_1AEB26000, v28, v29, "Stopped observing topics for virtualParticipantId=%llu", v30, 0xCu);
      MEMORY[0x1B27120C0](v30, -1, -1);
    }
  }

  else
  {
    _s14CopresenceCore14PluginRpcErrorOWObTm_0(v25, v21, type metadata accessor for PluginRpcError);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.default);
    _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v21, v19, type metadata accessor for PluginRpcError);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v43 = v33;
      v34 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v34 = 134218242;
      *(v34 + 4) = v46;
      *(v34 + 12) = 2080;
      _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v19, v9, type metadata accessor for PluginRpcError);
      (*(v11 + 56))(v9, 0, 1, v10);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v9, v7, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
      if (v26(v7, 1, v10) == 1)
      {
        v35 = 0xE300000000000000;
        v36 = 7104878;
      }

      else
      {
        v38 = v45;
        _s14CopresenceCore14PluginRpcErrorOWObTm_0(v7, v45, type metadata accessor for PluginRpcError);
        _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v38, v44, type metadata accessor for PluginRpcError);
        v36 = String.init<A>(reflecting:)();
        v35 = v39;
        _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v38, type metadata accessor for PluginRpcError);
      }

      outlined destroy of NSObject?(v9, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
      _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v19, type metadata accessor for PluginRpcError);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v47);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_1AEB26000, v32, v43, "Failed to observe topics for virtualParticipantId=%llu, error=%s", v34, 0x16u);
      v41 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1B27120C0](v41, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);

      v37 = v21;
    }

    else
    {

      _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v19, type metadata accessor for PluginRpcError);
      v37 = v21;
    }

    _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v37, type metadata accessor for PluginRpcError);
  }
}

void closure #4 in ActivitySessionManager.updateVirtualParticipantId(_:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  v74 = *a1;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  LOBYTE(v4) = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_25:
    if (one-time initialization token for default == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

  v6 = Strong;
  v70 = v4;
  v71 = v3;
  v72 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = v81;
  v73 = v1;
  if ((v81 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    Set.Iterator.init(_cocoa:)();
    v4 = v81;
    v7 = v82;
    v8 = v83;
    v9 = v84;
    v1 = v85;
  }

  else
  {
    v10 = -1 << *(v81 + 32);
    v7 = v81 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v1 = v12 & *(v81 + 56);

    v9 = 0;
  }

  v2 = (v8 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v13 = v9;
  v14 = v1;
  v15 = v9;
  if (!v1)
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v2)
      {
        goto LABEL_24;
      }

      v14 = *(v7 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
LABEL_26:
    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.default);
    outlined copy of TopicInfo(v74, v1, v3, v2, v4);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    outlined consume of TopicInfo(v74, v1, v3, v2, v4);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v80 = v28;
      *v27 = 136315138;
      if (v4)
      {
        v76 = v74;
        v77 = v1;
        v78 = v3;
        v79 = v2;
      }

      else
      {
        v76 = v74;
        v77 = v1;
        v78 = v3;
      }

      v29 = String.init<A>(describing:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v80);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1AEB26000, v25, v26, "Dropping topic update for unrecognized activity session: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B27120C0](v28, -1, -1);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }

    goto LABEL_31;
  }

LABEL_13:
  v16 = (v14 - 1) & v14;
  v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  if (!v17)
  {
LABEL_24:
    outlined consume of Set<String>.Iterator._Variant();

    v2 = v72;
    v1 = v73;
    v3 = v71;
    LOBYTE(v4) = v70;
    goto LABEL_25;
  }

  while (1)
  {
    v75 = v17;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    v3 = v73;

    if (v19 == v74 && v21 == v73)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_33;
    }

    v9 = v15;
    v1 = v16;
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v18 = __CocoaSet.Iterator.next()();
    if (v18)
    {
      v80 = v18;
      type metadata accessor for ActivitySession(0);
      swift_dynamicCast();
      v17 = v76;
      v15 = v9;
      v16 = v1;
      if (v76)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

LABEL_33:
  outlined consume of Set<String>.Iterator._Variant();

  if ((v70 & 1) == 0)
  {
    v25 = v75;
    (*((*MEMORY[0x1E69E7D40] & v75->isa) + 0x428))(v71, 0);
    goto LABEL_31;
  }

  v32 = v75;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.default);
  v34 = v75;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v79 = v72;
    v80 = v39;
    *v37 = 138412546;
    *(v37 + 4) = v34;
    *v38 = v75;
    *(v37 + 12) = 2080;
    v76 = v74;
    v77 = v73;
    v78 = v71;
    v40 = v34;

    v41 = String.init<A>(reflecting:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v80);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_1AEB26000, v35, v36, "Terminating activitySession %@ from topicTermination signal %s", v37, 0x16u);
    outlined destroy of NSObject?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v44 = v38;
    v32 = v75;
    MEMORY[0x1B27120C0](v44, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1B27120C0](v39, -1, -1);
    MEMORY[0x1B27120C0](v37, -1, -1);
  }

  v45 = MEMORY[0x1E69E7D40];
  v46 = (*((*MEMORY[0x1E69E7D40] & v34->isa) + 0x328))();
  v47 = [v46 isStaticActivity];

  if (v47)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v48 = v34;
    v25 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v79 = v72;
      v80 = v52;
      *v50 = 136315394;
      v76 = v74;
      v77 = v73;
      v78 = v71;
      v53 = String.init<A>(reflecting:)();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v80);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2112;
      *(v50 + 14) = v48;
      *v51 = v32;
      v56 = v48;
      _os_log_impl(&dword_1AEB26000, v25, v49, "Ignoring topicTermination signal %s for static activitySession %@", v50, 0x16u);
      outlined destroy of NSObject?(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v51, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1B27120C0](v52, -1, -1);
      MEMORY[0x1B27120C0](v50, -1, -1);

      return;
    }

LABEL_31:

    return;
  }

  v57 = (*((*v45 & v34->isa) + 0x440))();
  (*((*v45 & v34->isa) + 0x2F8))(&v76, v57);
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  v80 = v58;
  v59 = static ActivitySession.State.== infix(_:_:)(&v76, &v80);
  outlined consume of ActivitySession.State(v80);
  outlined consume of ActivitySession.State(v76);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = v61;
  if (v59)
  {
    v63 = v34;

    if (os_log_type_enabled(v60, v62))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v76 = v65;
      *v64 = 136315138;
      v66 = v74;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, &v76);
      _os_log_impl(&dword_1AEB26000, v60, v62, "Successfully terminated topic %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1B27120C0](v65, -1, -1);
      MEMORY[0x1B27120C0](v64, -1, -1);
    }

    else
    {

      v66 = v74;
    }

    v71(v66, v73);
  }

  else
  {
    if (os_log_type_enabled(v60, v61))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v76 = v68;
      *v67 = 136315138;

      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, &v76);

      *(v67 + 4) = v69;
      _os_log_impl(&dword_1AEB26000, v60, v62, "Couldn't terminate topic %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x1B27120C0](v68, -1, -1);
      MEMORY[0x1B27120C0](v67, -1, -1);
    }

    else
    {
    }
  }
}

void ActivitySessionManager.logMetricsForSessionStart(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  v13 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *a1) + 0x340))(v12) & 1) == 0)
  {
    return;
  }

  v14 = (*((*v13 & *v2) + 0x120))();
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = *((*v13 & *a1) + 0x328);
  v17 = v16();
  v18 = [v17 metadata];

  if (!v18 || (v19 = [v18 context], v18, !v19))
  {
    swift_unknownObjectRelease();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B30;
  *(inited + 32) = 0x7079745F6C6C6163;
  v46 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  v21 = [v15 activitySessionManagerRequestedCallTypeStringForLogging_];
  if (!v21)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = MEMORY[0x1B270FF70](v22);
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 48) = v23;
  strcpy((inited + 56), "activity_type");
  *(inited + 70) = -4864;
  v24 = [v19 analyticsIdentifier];
  if (!v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = MEMORY[0x1B270FF70](v25);
  }

  v47 = v19;
  v26 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 72) = v26;
  *(inited + 80) = 0x695F656C646E7562;
  *(inited + 88) = 0xE900000000000064;
  v27 = v16();
  v28 = [v27 bundleIdentifier];

  if (!v28)
  {
    __break(1u);
    return;
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 96) = v29;
  *(inited + 104) = 0xD000000000000013;
  *(inited + 112) = 0x80000001AEE36BE0;
  v30 = v16();
  v31 = [v30 metadata];

  if (v31)
  {
    v32 = [v31 supportsContinuationOnTV];
  }

  else
  {
    v32 = 0;
  }

  v11 = "com.apple.facetime.groupsession";
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  if (one-time initialization token for default != -1)
  {
    goto LABEL_21;
  }

LABEL_16:
  v33 = v11 - 32;
  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Log.default);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315394;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v33 | 0x8000000000000000, aBlock);
    *(v37 + 12) = 2080;
    v48 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd, &_sSDySSSo8NSObjectCGMR);
    v39 = String.init<A>(reflecting:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, aBlock);

    *(v37 + 14) = v41;
    _os_log_impl(&dword_1AEB26000, v35, v36, "Logged analytics event for session: %s %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v38, -1, -1);
    MEMORY[0x1B27120C0](v37, -1, -1);
  }

  v42 = v47;
  v43 = MEMORY[0x1B270FF70](0xD00000000000001FLL, v33 | 0x8000000000000000);
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  aBlock[4] = partial apply for closure #1 in ActivitySession.logDurationMetric(_:);
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_137;
  v45 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v45);
  swift_unknownObjectRelease();
}

void ActivitySessionManager.logMetricsForSessionEnd(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v13 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *a1) + 0x340))(v12) & 1) == 0)
  {
    return;
  }

  v14 = (*((*v13 & *v2) + 0x120))();
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = *((*v13 & *a1) + 0x328);
  v17 = v16();
  v18 = [v17 metadata];

  if (!v18 || (v19 = [v18 context], v18, !v19))
  {
    swift_unknownObjectRelease();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B30;
  *(inited + 32) = 0x7079745F6C6C6163;
  v49 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  v21 = [v15 activitySessionManagerRequestedCallTypeStringForLogging_];
  if (!v21)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = MEMORY[0x1B270FF70](v22);
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 48) = v23;
  strcpy((inited + 56), "activity_type");
  *(inited + 70) = -4864;
  v24 = [v19 analyticsIdentifier];
  if (!v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = MEMORY[0x1B270FF70](v25);
  }

  v50 = v19;
  v26 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 72) = v26;
  *(inited + 80) = 0x695F656C646E7562;
  *(inited + 88) = 0xE900000000000064;
  v27 = v16();
  v28 = [v27 bundleIdentifier];

  if (!v28)
  {
    __break(1u);

    _OBJC_LABEL_PROTOCOL___SKPresenceDelegate = aBlock[0];

    __break(1u);
    return;
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 96) = v29;
  *(inited + 104) = 0xD000000000000013;
  *(inited + 112) = 0x80000001AEE36BE0;
  v30 = v16();
  v31 = [v30 metadata];

  if (v31)
  {
    v32 = [v31 supportsContinuationOnTV];
  }

  else
  {
    v32 = 0;
  }

  v2 = swift_allocObject();
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  v34 = swift_arrayDestroy();
  v2[2] = v33;
  v35 = (*((*v13 & *a1) + 0x2D8))(v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v33;
  v2[2] = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v35, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, aBlock);

  v11 = v50;
  v8 = "com.apple.facetime.groupsession.end";
  v2[2] = aBlock[0];

  if (one-time initialization token for default != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v37 = v8 - 32;
  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Log.default);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136315394;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, v37 | 0x8000000000000000, aBlock);
    *(v41 + 12) = 2080;
    swift_beginAccess();
    v51 = v2[2];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd, &_sSDySSSo8NSObjectCGMR);
    v43 = String.init<A>(reflecting:)();
    v45 = v44;

    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, aBlock);

    *(v41 + 14) = v46;
    _os_log_impl(&dword_1AEB26000, v39, v40, "Logged analytics event for session: %s %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v42, -1, -1);
    MEMORY[0x1B27120C0](v41, -1, -1);
  }

  else
  {
  }

  v47 = MEMORY[0x1B270FF70](0xD000000000000023, v37 | 0x8000000000000000);
  aBlock[4] = DelegatesManager.delegates.getter;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_131;
  v48 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v48);
  swift_unknownObjectRelease();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed ActivitySessionManager, @in_guaranteed UUID, @unowned UInt64) -> (@owned PubSubTopicsObserver)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = closure #1 in variable initialization expression of ActivitySessionManager._topicsObserverGenerator(*a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t key path setter for ActivitySessionManager.topicsObserverGenerator : ActivitySessionManager(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2E0);

  return v6(thunk for @escaping @callee_guaranteed (@in_guaranteed ActivitySessionManager, @in_guaranteed UUID, @in_guaranteed UInt64) -> (@out PubSubTopicsObserver)partial apply, v5);
}

uint64_t (*ActivitySessionManager.topicsObserverGenerator.getter())()
{
  v1 = (v0 + OBJC_IVAR___CPActivitySessionManager__topicsObserverGenerator);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ActivitySessionManager, @in_guaranteed UUID, @in_guaranteed UInt64) -> (@out PubSubTopicsObserver);
}

void ActivitySessionManager.activitySessionCreation.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = (v5 + *a4);
  swift_beginAccess();
  v12 = v11[1];

  v13 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v14 = NSClassFromString(v13);

  if (v14 || (v15 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v16 = NSClassFromString(v15), v15, v16))
  {
    *v11 = a5;
    v11[1] = v10;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void (*ActivitySessionManager.topicsObserverGenerator.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CPActivitySessionManager__topicsObserverGenerator;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v4 + 24) = thunk for @escaping @callee_guaranteed (@in_guaranteed ActivitySessionManager, @in_guaranteed UUID, @in_guaranteed UInt64) -> (@out PubSubTopicsObserver)partial apply;
  *(v4 + 32) = v9;

  return ActivitySessionManager.topicsObserverGenerator.modify;
}

void ActivitySessionManager.activitySessionCreation.modify(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  v9 = *(*a1 + 40) + *(*a1 + 48);
  if ((a2 & 1) == 0)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v7;
    *(v20 + 24) = v8;
    v21 = *(v9 + 8);

    v22 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v23 = NSClassFromString(v22);

    if (v23 || (v24 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v25 = NSClassFromString(v24), v24, v25))
    {
      v26 = (v6[5] + v6[6]);
      *v26 = a4;
      v26[1] = v20;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v8;
  v12 = *(v9 + 8);

  v13 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v14 = NSClassFromString(v13);

  if (!v14)
  {
    v15 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v16 = NSClassFromString(v15);

    if (!v16)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v17 = (v6[5] + v6[6]);
  *v17 = a6;
  v17[1] = v11;
  v18 = v6[4];

LABEL_8:
  swift_endAccess();

  free(v6);
}

uint64_t closure #1 in variable initialization expression of ActivitySessionManager._topicsObserverGenerator(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PluginClient.Configuration(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v19)
  {
    closure #1 in closure #1 in variable initialization expression of ActivitySessionManager._topicsObserverGenerator(a3, a1, v11);
    _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v11, v9, type metadata accessor for PluginClient.Configuration);
    v21 = type metadata accessor for PluginClient(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = PluginClient.init(config:queue:reporter:reporterTag:)(v9, v18, 0, 0, 0);
    type metadata accessor for PluginPubSubServiceProvider();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v26 = *(a1 + OBJC_IVAR___CPActivitySessionManager_serverBag);

    v27 = [v26 qrPluginMaxRpcStreamAttempts];
    v28 = [v26 qrPluginRpcStreamRetryIntervalMillis] / 1000.0;
    type metadata accessor for PubSubTopicsObserver();
    v29 = swift_allocObject();
    v30 = specialized PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(v25, v27, v29, v28);

    _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v11, type metadata accessor for PluginClient.Configuration);
    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of ActivitySessionManager._topicsObserverGenerator@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = type metadata accessor for PluginClient.Configuration(0);
  v6 = *(v5 - 8);
  v62 = (v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PluginEndpoint();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v13;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v55 - v14;
  *v15 = UUID.uuidString.getter();
  *(v15 + 1) = v16;
  *(v15 + 2) = a1;
  *(v15 + 24) = xmmword_1AEE07B50;
  *(v15 + 5) = 0;
  swift_storeEnumTagMultiPayload();
  v17 = *(a2 + OBJC_IVAR___CPActivitySessionManager_serverBag);
  v18 = [v17 qrPluginConnectionRetryIntervalMillis] / 1000.0;
  v60 = type metadata accessor for PluginEndpoint;
  _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v15, v13, type metadata accessor for PluginEndpoint);
  v58 = [v17 qrPluginMaxConnectionAttempts];
  v19 = (*MEMORY[0x1E69E7D40] & *a2) + 432;
  v64 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x1B0);
  v64(v70);
  v55[1] = v19;
  v20 = v71;
  v21 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v22 = objc_opt_self();
  v23 = [v22 serverCertValidationEnabledUserDefaultsKey];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  (*(v21 + 32))(v66, MEMORY[0x1E69E6370], v24, v26, MEMORY[0x1E69E6370], MEMORY[0x1E69E6390], MEMORY[0x1E69E6378], v20, v21);

  v57 = (LOBYTE(v66[0]) == 2) | LOBYTE(v66[0]);
  v27 = __swift_destroy_boxed_opaque_existential_1Tm(v70);
  (v64)(v70, v27);
  v28 = v71;
  v29 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v30 = [v22 serverCertHostnameUserDefaultsKey];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = MEMORY[0x1E69E6158];
  (*(v29 + 32))(v69, MEMORY[0x1E69E6158], v31, v33, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v28, v29);

  v36 = v69[1];
  v56 = v69[0];
  (v64)(v66, v35);
  v37 = v67;
  v38 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v39 = [v22 serverCertLeafMarkerOIDUserDefaultsKey];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  (*(v38 + 32))(v65, v34, v40, v42, v34, MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v37, v38);

  v43 = v65[0];
  v44 = v65[1];
  v45 = v59;
  v47 = v60;
  v46 = v61;
  _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v59, v61, v60);
  v48 = v62;
  *(v46 + v62[7]) = v58;
  *(v46 + v48[8]) = v18;
  v49 = v48;
  *(v46 + v48[9]) = v57 & 1;
  v50 = 0x80000001AEE36C20;
  v51 = v56;
  if (v36)
  {
    v50 = v36;
  }

  else
  {
    v51 = 0xD000000000000015;
  }

  v52 = (v46 + v48[10]);
  *v52 = v51;
  v52[1] = v50;
  if (!v44)
  {
    v43 = 0xD00000000000001BLL;
    v44 = 0x80000001AEE36C40;
  }

  _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v45, v47);
  _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v15, v47);
  v53 = (v46 + v49[11]);
  *v53 = v43;
  v53[1] = v44;
  _s14CopresenceCore14PluginRpcErrorOWObTm_0(v46, v63, type metadata accessor for PluginClient.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  return __swift_destroy_boxed_opaque_existential_1Tm(v70);
}

uint64_t ActivitySessionManager.requestForegroundPresentationFor(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = MEMORY[0x1E69E7D40];
    result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x120))(result);
    if (result)
    {
      v13 = result;
      v14 = (*((*v12 & *a1) + 0x388))();
      [v13 activitySessionManager:v2 requestForegroundPresentationForActivity:v14];

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivitySessionManager.associatedSceneChanged(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for default == -1)
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
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.default);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1AEB26000, v13, v14, "ActivitySessionManager: associated scene changed for %@", v15, 0xCu);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v18 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x120))();
  if (result)
  {
    v20 = result;
    v21 = (*((*v18 & *v12) + 0x388))();
    [v20 activitySessionManager:v2 activitySessionAssociatedSceneChanged:v21];

    return swift_unknownObjectRelease();
  }

  return result;
}

void ActivitySessionManager.sendResource(atURL:to:metadata:activitySessionUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x120))();
  if (v12)
  {
    v13 = v12;
    v18 = a1;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v15 = Data._bridgeToObjectiveC()().super.isa;
    v16 = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = a6;
    aBlock[5] = a7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_59_1;
    v17 = _Block_copy(aBlock);

    [v13 activitySessionManager:v8 sendResourceAtURL:v18 toParticipants:isa metadata:v15 activitySessionUUID:v16 completion:v17];
    swift_unknownObjectRelease();
    _Block_release(v17);
  }
}

void ActivitySessionManager.session(session:requestedEndpointWith:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v6 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v19 = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v20 = MEMORY[0x1E69E7D40];
    v21 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x120))(v19);
    if (v21)
    {
      v22 = v21;
      v23 = MEMORY[0x1B270FF70](a2, a3);
      v24 = (*((*v20 & *a1) + 0x388))();
      aBlock[4] = a4;
      aBlock[5] = a5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed TUConversationParticipant?) -> ();
      aBlock[3] = &block_descriptor_62_0;
      v25 = _Block_copy(aBlock);

      [v22 activitySessionManager:v6 requestedEndpointWithIdentifier:v23 activitySession:v24 completion:v25];
      swift_unknownObjectRelease();
      _Block_release(v25);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ActivitySessionManager.requestTopicTermination(withTopicName:)(Swift::String withTopicName)
{
  object = withTopicName._object;
  countAndFlagsBits = withTopicName._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR___CPActivitySessionManager_topicsObserver);
  if (v4)
  {
    v5 = *(*v4 + 272);

    v5(countAndFlagsBits, object);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v11);
      _os_log_impl(&dword_1AEB26000, oslog, v7, "ActivitySessionManager: requestTopicTermination withTopicName: %s couldn't reference topicObserver", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B27120C0](v9, -1, -1);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }
  }
}

void ActivitySessionManager.updateExternalParticipants(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for default != -1)
  {
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
    v15 = v8;
    *v7 = 136315138;
    type metadata accessor for TUExternalParticipant();
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUExternalParticipant and conformance NSObject, MEMORY[0x1E69D8A28]);
    v9 = Set.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v5, v6, "ActivitySessionManager: updating external participants %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x118))();
  v14 = specialized Collection.first.getter(v13);

  if (v14)
  {
    (*((*v12 & *v14) + 0x270))(a1);
  }
}

uint64_t ActivitySessionManager.createStaticActivities()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR___CPActivitySessionManager_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in ActivitySessionManager.createStaticActivities();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_143;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t closure #1 in ActivitySessionManager.createStaticActivities()(void *a1)
{
  v64 = type metadata accessor for UUID();
  v2 = *(v64 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v64);
  v63 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v50 - v6;
  v56 = a1;
  v7 = a1 + OBJC_IVAR___CPActivitySessionManager_groupUUID;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v67 = v7;
  v9 = specialized Sequence.flatMap<A>(_:)(v8, partial apply for closure #1 in static StaticActivityLoader.activitySessions(for:));

  v11 = v9;
  if (v9 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v11 = v48)
  {
    v13 = 0;
    v55 = v11 & 0xC000000000000001;
    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    v51 = v11 + 32;
    v61 = (v2 + 8);
    *&v10 = 136315138;
    v50 = v10;
    v54 = v11;
    v53 = i;
    while (1)
    {
      if (v55)
      {
        v14 = MEMORY[0x1B2710B10](v13);
      }

      else
      {
        if (v13 >= *(v52 + 16))
        {
          goto LABEL_38;
        }

        v14 = *(v51 + 8 * v13);
      }

      v15 = v14;
      v16 = __OFADD__(v13, 1);
      v17 = v13 + 1;
      if (v16)
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v18 = v69[0];
      v58 = v69[0];
      v59 = v17;
      v66 = v15;
      if ((v69[0] & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
        Set.Iterator.init(_cocoa:)();
        v18 = v69[2];
        v19 = v69[3];
        v2 = v69[4];
        v20 = v69[5];
        v21 = v69[6];
      }

      else
      {
        v22 = -1 << *(v69[0] + 32);
        v19 = v69[0] + 56;
        v2 = ~v22;
        v23 = -v22;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        else
        {
          v24 = -1;
        }

        v21 = v24 & *(v69[0] + 56);

        v20 = 0;
      }

      v57 = v2;
      v60 = (v2 + 64) >> 6;
      v65 = v19;
      while (1)
      {
        if (v18 < 0)
        {
          v36 = __CocoaSet.Iterator.next()();
          if (!v36)
          {
            break;
          }

          v68 = v36;
          type metadata accessor for ActivitySession(0);
          swift_dynamicCast();
          v25 = v69[0];
          v2 = v21;
          if (!v69[0])
          {
            break;
          }

          goto LABEL_20;
        }

        v34 = v20;
        v35 = v21;
        if (!v21)
        {
          while (1)
          {
            v20 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if (v20 >= v60)
            {
              goto LABEL_29;
            }

            v35 = *(v19 + 8 * v20);
            ++v34;
            if (v35)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_37;
        }

LABEL_19:
        v2 = (v35 - 1) & v35;
        v25 = *(*(v18 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v35)))));
        if (!v25)
        {
          break;
        }

LABEL_20:
        v26 = [v25 UUID];
        v27 = v62;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = [v66 UUID];
        v29 = v63;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v28) = static UUID.== infix(_:_:)();
        isa = v61->isa;
        v31 = v29;
        v32 = v64;
        (v61->isa)(v31, v64);
        v33 = v32;
        v21 = v2;
        isa(v27, v33);
        v19 = v65;
        if (v28)
        {

          outlined consume of Set<String>.Iterator._Variant();

          goto LABEL_6;
        }
      }

LABEL_29:
      outlined consume of Set<String>.Iterator._Variant();

      v37 = v66;
      v38 = (*((*MEMORY[0x1E69E7D40] & *v56) + 0x1D0))(v66);
      if (v38)
      {
        v2 = v38;

LABEL_5:
        goto LABEL_6;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Log.default);
      v40 = v37;
      v2 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v2, v41))
      {

        goto LABEL_5;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v68 = v40;
      v69[0] = v43;
      *v42 = v50;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      v44 = v40;
      v45 = String.init<A>(reflecting:)();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v69);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1AEB26000, v2, v41, "ActivitySessionManager: Failed to create static activity session: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1B27120C0](v43, -1, -1);
      MEMORY[0x1B27120C0](v42, -1, -1);

LABEL_6:
      v11 = v54;
      v13 = v59;
      if (v59 == v53)
      {
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v48 = v11;
    i = __CocoaSet.count.getter();
  }
}

id ActivitySessionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySessionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Identifiable.id.getter in conformance ActivitySessionManager@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___CPActivitySessionManager_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t ActivitySessionManager.applicationController(_:bundleIdentifierChanged:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&v3[OBJC_IVAR___CPActivitySessionManager_queue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = v3;
  aBlock[4] = partial apply for closure #1 in ActivitySessionManager.applicationController(_:bundleIdentifierChanged:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_68_0;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  v19 = v3;
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v22);
}

void closure #1 in ActivitySessionManager.applicationController(_:bundleIdentifierChanged:)(int a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v4 = CPApplicationController.isBundleIdentifierSupported(_:)(a2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = specialized Set._Variant.filter(_:)(v22, countAndFlagsBits, object);

  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
    Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
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

    v9 = v12 & *(v5 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v14 = MEMORY[0x1E69E7D40];
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v8;
    v16 = v9;
    v17 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
LABEL_18:
      outlined consume of Set<String>.Iterator._Variant();

      return;
    }

    while (1)
    {
      v20 = (*((*v14 & *v19) + 0x328))();
      [v20 setSupported_];
      (*((*v14 & *v19) + 0x330))(v20);

      v8 = v17;
      v9 = v18;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ActivitySession(0);
        swift_dynamicCast();
        v19 = v21;
        v17 = v8;
        v18 = v9;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      goto LABEL_18;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void @objc ActivitySessionManager.systemStateObserver(_:sharePlayAllowedStateChanged:)(void *a1, uint64_t a2, uint64_t a3, char a4, const char *a5)
{
  swift_unknownObjectRetain();
  v8 = a1;
  specialized ActivitySessionManager.systemStateObserver(_:sharePlayAllowedStateChanged:)(a4, a5);
  swift_unknownObjectRelease();
}

uint64_t ActivitySession.allowsSceneAssociation.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2F8);
  v2(&v12);
  v11 = 0x8000000000000008;
  v3 = static ActivitySession.State.== infix(_:_:)(&v12, &v11);
  v4 = outlined consume of ActivitySession.State(v12);
  if (v3)
  {
    return 1;
  }

  (v2)(&v12, v4);
  v11 = 0x8000000000000000;
  v6 = static ActivitySession.State.== infix(_:_:)(&v12, &v11);
  v7 = outlined consume of ActivitySession.State(v12);
  if ((v6 & 1) != 0 && (v7 = (*((*v1 & *v0) + 0x1C0))(v7), v8))
  {

    return 1;
  }

  else
  {
    v9 = (*((*v1 & *v0) + 0x328))(v7);
    v10 = [v9 isScreenSharingActivity];

    return v10;
  }
}

uint64_t key path getter for ActivitySessionManager._activitySessions : ActivitySessionManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for ActivitySessionManager._activitySessions : ActivitySessionManager(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy14CopresenceCore15ActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_14i6Core15kL5C_TG5AKxSbs5Error_pRi_zRi0_zlyAJIsgndzo_Tf1nc_n04_s14i6Core22kL106ManagerC21applicationController_23bundleIdentifierChangedyAA013CPApplicationG0C_SStFyyYbcfU_SbAA0cD0CXEfU_SSTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t specialized PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v14 = type metadata accessor for PluginPubSubServiceProvider();
  v15 = &protocol witness table for PluginPubSubServiceProvider;
  *&v13 = a1;
  *(a3 + 72) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMd, &_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMR);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = v11;
  outlined init with take of ContiguousBytes(&v13, a3 + 16);
  *(a3 + 56) = a2;
  *(a3 + 64) = a4;
  return a3;
}

uint64_t type metadata accessor for ActivitySessionManager()
{
  result = type metadata singleton initialization cache for ActivitySessionManager;
  if (!type metadata singleton initialization cache for ActivitySessionManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type ActivitySession and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in ActivitySessionManager.leaveActivitySession(activitySessionUUID:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return static UUID.== infix(_:_:)() & 1;
}

void specialized ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:)(uint64_t a1, char *a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = swift_allocObject();
  *(v52 + 16) = a3;
  v16 = *&a2[OBJC_IVAR___CPActivitySessionManager_queue];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  _Block_copy(a3);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v53;
  MEMORY[0x1EEE9AC00](v18);
  *(&v50 - 2) = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:), (&v50 - 4), v19);
  v21 = v20;

  if (!v21)
  {
    if (one-time initialization token for default == -1)
    {
LABEL_6:
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Log.default);
      (*(v7 + 16))(v10, a1, v6);
      v30 = a2;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53 = v51;
        *v33 = 136315394;
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        (*(v7 + 8))(v10, v6);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v53);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2080;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
        v38 = Set.description.getter();
        v40 = v39;

        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v53);

        *(v33 + 14) = v41;
        _os_log_impl(&dword_1AEB26000, v31, v32, "Couldn't find matching activitySession for %s activitySessions: %s", v33, 0x16u);
        v42 = v51;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v42, -1, -1);
        MEMORY[0x1B27120C0](v33, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v10, v6);
      }

      a3[2](a3, 0);

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_6;
  }

  v23 = MEMORY[0x1E69E7D40];
  v24 = (*((*MEMORY[0x1E69E7D40] & *v21) + 0x328))(v22);
  v25 = [v24 bundleIdentifier];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    (*((*v23 & *v21) + 0x488))(v26, v28, 1, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v52);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Log.default);
    v44 = v21;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v44;
      *v48 = v21;
      v49 = v44;
      _os_log_impl(&dword_1AEB26000, v45, v46, "Unable to find bundleID for activitySession %@", v47, 0xCu);
      outlined destroy of NSObject?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v48, -1, -1);
      MEMORY[0x1B27120C0](v47, -1, -1);
    }

    a3[2](a3, 0);
  }
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v5 = a3;
  v30 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(*(v5 + 48) + 8 * v15);
    v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x328);
    v18 = v16;
    v19 = v17(v18);
    v20 = [v19 bundleIdentifier];

    if (v20)
    {
      v31 = v15;
      v21 = v5;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (v22 == a4 && v24 == a5)
      {

        v5 = v21;
LABEL_20:
        *(a1 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_23:

          specialized _NativeSet.extractSubset(using:count:)(a1, v28, v30, v5);
          return;
        }
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v21;
        if (v26)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_23;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = (8 * v9);
  v42 = a3;

  if (v8 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v36 = v9;
    v37 = v4;
    v41 = a2;
    v35[1] = v35;
    MEMORY[0x1EEE9AC00](v11);
    v38 = v35 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v10);
    v39 = 0;
    v12 = 0;
    v13 = v6 + 56;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v4 = v15 & *(v6 + 56);
    v9 = (v14 + 63) >> 6;
    while (v4)
    {
      v16 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_13:
      v19 = v16 | (v12 << 6);
      v20 = *(*(v6 + 48) + 8 * v19);
      v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x328);
      v10 = v20;
      v22 = v21();
      a2 = [v22 bundleIdentifier];

      if (a2)
      {
        v40 = v19;
        v23 = v6;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (v24 == v41 && v26 == v42)
        {

          v6 = v23;
LABEL_21:
          *&v38[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
          if (__OFADD__(v39++, 1))
          {
            __break(1u);
LABEL_24:
            v29 = specialized _NativeSet.extractSubset(using:count:)(v38, v36, v39, v6);

            goto LABEL_25;
          }
        }

        else
        {
          a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v6 = v23;
          if (a2)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_24;
      }

      v18 = *(v13 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v4 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v32 = a2;
  v33 = swift_slowAlloc();
  v34 = v42;

  v29 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy14CopresenceCore15ActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_14i6Core15kL5C_TG5AKxSbs5Error_pRi_zRi0_zlyAJIsgndzo_Tf1nc_n04_s14i6Core22kL106ManagerC21applicationController_23bundleIdentifierChangedyAA013CPApplicationG0C_SStFyyYbcfU_SbAA0cD0CXEfU_SSTf1nnc_n(v33, v9, v6, v32, v34);

  MEMORY[0x1B27120C0](v33, -1, -1);

LABEL_25:
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2, a3);
  }

  v5 = MEMORY[0x1E69E7CD0];
  v27 = MEMORY[0x1E69E7CD0];

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for ActivitySession(0);
    v6 = MEMORY[0x1E69E7D40];
    do
    {
      v7 = swift_dynamicCast();
      v8 = (*((*v6 & *v26) + 0x328))(v7);
      v9 = [v8 bundleIdentifier];

      if (v9)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        if (v10 == a2 && v12 == a3)
        {

LABEL_14:
          v15 = *(v5 + 16);
          if (*(v5 + 24) <= v15)
          {
            specialized _NativeSet.resize(capacity:)(v15 + 1);
          }

          v5 = v27;
          result = NSObject._rawHashValue(seed:)(*(v27 + 40));
          v17 = v27 + 56;
          v18 = -1 << *(v27 + 32);
          v19 = result & ~v18;
          v20 = v19 >> 6;
          if (((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6))) != 0)
          {
            v21 = __clz(__rbit64((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = 0;
            v23 = (63 - v18) >> 6;
            do
            {
              if (++v20 == v23 && (v22 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v24 = v20 == v23;
              if (v20 == v23)
              {
                v20 = 0;
              }

              v22 |= v24;
              v25 = *(v17 + 8 * v20);
            }

            while (v25 == -1);
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          }

          *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
          *(*(v27 + 48) + 8 * v21) = v26;
          ++*(v27 + 16);
          continue;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {
          goto LABEL_14;
        }
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return v5;
}

void specialized ActivitySessionManager.systemStateObserver(_:sharePlayAllowedStateChanged:)(char a1, const char *a2)
{
  v4 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v4 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_30:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40[0] = v17;
    *v16 = 136315138;
    LOBYTE(v39) = a1 & 1;
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v40);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v14, v15, a2, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B27120C0](v17, -1, -1);
    MEMORY[0x1B27120C0](v16, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v21 = v40[0];
    if ((v40[0] & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession);
      Set.Iterator.init(_cocoa:)();
      v21 = v40[0];
      a2 = v40[1];
      v22 = v40[2];
      v23 = v40[3];
      v24 = v40[4];
    }

    else
    {
      v23 = 0;
      v25 = -1 << *(v40[0] + 32);
      a2 = (v40[0] + 56);
      v22 = ~v25;
      v26 = -v25;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v24 = v27 & *(v40[0] + 56);
    }

    a1 = 0;
    v38[1] = v22;
    v28 = (v22 + 64) >> 6;
    v29 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if (v21 < 0)
      {
        v35 = __CocoaSet.Iterator.next()();
        if (!v35 || (v38[2] = v35, type metadata accessor for ActivitySession(0), swift_dynamicCast(), v34 = v39, v32 = v23, v33 = v24, !v39))
        {
LABEL_26:
          outlined consume of Set<String>.Iterator._Variant();
          return;
        }
      }

      else
      {
        v30 = v23;
        v31 = v24;
        v32 = v23;
        if (!v24)
        {
          while (1)
          {
            v32 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v32 >= v28)
            {
              goto LABEL_26;
            }

            v31 = *&a2[8 * v32];
            ++v30;
            if (v31)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_19:
        v33 = (v31 - 1) & v31;
        v34 = *(*(v21 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
        if (!v34)
        {
          goto LABEL_26;
        }
      }

      v36 = (*((*v29 & *v34) + 0x408))();
      if (!v36 || (v37 = v36[direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction], v36, (v37 & 1) == 0))
      {
        (*((*v29 & *v34) + 0x438))();
      }

      v23 = v32;
      v24 = v33;
    }
  }
}

void type metadata completion function for ActivitySessionManager()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<Set<ActivitySession>>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<Set<ActivitySession>>()
{
  if (!lazy cache variable for type metadata for Published<Set<ActivitySession>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy14CopresenceCore15ActivitySessionCGMd, &_sShy14CopresenceCore15ActivitySessionCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Set<ActivitySession>>);
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ActivitySessionManager, @in_guaranteed UUID, @in_guaranteed UInt64) -> (@out PubSubTopicsObserver)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8 = a3;
  v9 = a1;
  v4(&v7, &v9, a2, &v8);
  return v7;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed ActivitySessionManager, @in_guaranteed UUID, @unowned UInt64) -> (@owned PubSubTopicsObserver)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  result = v6(*a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationActivitySession, @in_guaranteed ActivitySessionManager) -> (@out ActivitySession)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a2;
  v8 = a1;
  v3(&v6, &v8, &v7);
  return v6;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUConversationActivitySession, @guaranteed ActivitySessionManager) -> (@owned ActivitySession)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t outlined copy of TopicInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of TopicInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  else
  {
  }
}

uint64_t _s14CopresenceCore14PluginRpcErrorOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14CopresenceCore14PluginRpcErrorOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14CopresenceCore14PluginRpcErrorOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AnyCancellable.init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return MEMORY[0x1EEDB5C30](destructiveProjectEnumData for ActivitySession.Errors, v2);
}

uint64_t CPCarPlayObserver.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t CPCarPlayObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CPCarPlayObserver.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

id CPCarPlayObserver.init(queue:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_isAttemptingCarplaySession] = 0;
  *&v1[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_queue] = a1;
  v4 = one-time initialization token for default;
  v5 = a1;
  if (v4 != -1)
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
    *v9 = 0;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Initializing CPCarPlayObserver", v9, 2u);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E6993960]) init];
  *&v2[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_sessionStatus] = v10;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CPCarPlayObserver();
  v11 = v10;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 addSessionObserver_];

  return v12;
}

uint64_t CPCarPlayObserver.isCarplaySessionConnected.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *&v0[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v8 = [*&v0[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_sessionStatus] currentSession];
  v1 = v8;
  if (v8)
  {
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315394;
    v24[7] = v1 != 0;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v24[6] = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x98))(v18) & 1;
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v25);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1AEB26000, v11, v12, "CPCarPlayObserver hasCurrentSession %s isAttemptingConnection %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  if (v1)
  {
    v22 = 1;
  }

  else
  {
    v22 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x98))();
  }

  return v22 & 1;
}

uint64_t CPCarPlayObserver.isAttemptingCarplaySession.didset(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v11 = OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_isAttemptingCarplaySession;
  result = swift_beginAccess();
  if (*(v1 + v11) != (a1 & 1))
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))(result);
    v13 = v12;
    if (a1)
    {
      if (!result)
      {
        return result;
      }

      ObjectType = swift_getObjectType();
      (*(v13 + 32))(ObjectType, v13);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v15 = swift_getObjectType();
      (*(v13 + 24))(v15, v13);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CPCarPlayObserver.isAttemptingCarplaySession.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_isAttemptingCarplaySession;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CPCarPlayObserver.isAttemptingCarplaySession.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_isAttemptingCarplaySession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return CPCarPlayObserver.isAttemptingCarplaySession.didset(v4);
}

void (*CPCarPlayObserver.isAttemptingCarplaySession.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_isAttemptingCarplaySession;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return CPCarPlayObserver.isAttemptingCarplaySession.modify;
}

void CPCarPlayObserver.isAttemptingCarplaySession.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  CPCarPlayObserver.isAttemptingCarplaySession.didset(v5);

  free(v1);
}

id CPCarPlayObserver.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_sessionStatus] removeSessionObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPCarPlayObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CPCarPlayObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*protocol witness for CPCarPlayObserverProtocol.delegate.modify in conformance CPCarPlayObserver(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t closure #1 in CPCarPlayObserver.sessionDidConnect(_:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA0))(0);
  result = (*((*v2 & *a1) + 0x70))(v3);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CPCarPlayObserver.sessionDidConnect(_:)(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v39 = a4;
  v37 = a2;
  v7 = v5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.default);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v10;
    v24 = v23;
    v42 = v19;
    aBlock[0] = v23;
    *v22 = 136315138;
    type metadata accessor for CARSession();
    v35 = v17;
    v25 = v19;
    v26 = String.init<A>(reflecting:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, aBlock);
    v17 = v35;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1AEB26000, v20, v21, v37, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v29 = v24;
    v10 = v36;
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  v30 = *&v7[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_queue];
  v31 = swift_allocObject();
  *(v31 + 16) = v7;
  aBlock[4] = v39;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a5;
  v32 = _Block_copy(aBlock);
  v33 = v7;
  static DispatchQoS.unspecified.getter();
  v42 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v17, v13, v32);
  _Block_release(v32);
  (*(v10 + 8))(v13, v9);
  (*(v40 + 8))(v17, v41);
}

uint64_t closure #1 in CPCarPlayObserver.sessionDidDisconnect(_:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA0))(0);
  result = (*((*v2 & *a1) + 0x70))(v3);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CPCarPlayObserver.startedConnectionAttempt(on:)(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a3;
  v44 = a4;
  v42 = a2;
  v7 = v5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.default);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v41 = v10;
    v39 = v23;
    v46 = a1;
    aBlock[0] = v23;
    *v22 = 136315138;
    type metadata accessor for CARTransportType(0);
    v24 = String.init<A>(reflecting:)();
    v26 = v17;
    v27 = v13;
    v28 = v9;
    v29 = v7;
    v30 = a5;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

    *(v22 + 4) = v31;
    a5 = v30;
    v7 = v29;
    v9 = v28;
    v13 = v27;
    v17 = v26;
    _os_log_impl(&dword_1AEB26000, v19, v20, v42, v22, 0xCu);
    v32 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v10 = v41;
    MEMORY[0x1B27120C0](v32, -1, -1);
    v33 = v22;
    v14 = v40;
    MEMORY[0x1B27120C0](v33, -1, -1);
  }

  v34 = *&v7[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_queue];
  v35 = swift_allocObject();
  *(v35 + 16) = v7;
  aBlock[4] = v44;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a5;
  v36 = _Block_copy(aBlock);
  v37 = v7;
  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v17, v13, v36);
  _Block_release(v36);
  (*(v10 + 8))(v13, v9);
  (*(v45 + 8))(v17, v14);
}

unint64_t type metadata accessor for CARSession()
{
  result = lazy cache variable for type metadata for CARSession;
  if (!lazy cache variable for type metadata for CARSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CARSession);
  }

  return result;
}

uint64_t partial apply for closure #1 in CPCarPlayObserver.startedConnectionAttempt(on:)()
{
  return partial apply for closure #1 in CPCarPlayObserver.startedConnectionAttempt(on:)();
}

{
  return (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0xA0))();
}

uint64_t BackgroundSession.__allocating_init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v85 = a1;
  v86 = a6;
  v80 = a2;
  v81 = a5;
  v77 = a8;
  v78 = a12;
  v83 = a9;
  v84 = a11;
  v82 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v67 = &v66 - v18;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v75 = *(v19 - 8);
  v76 = v19;
  v20 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for OS_dispatch_queue.Attributes();
  v22 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v71 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v12 + 48);
  v33 = *(v12 + 52);
  v34 = swift_allocObject();
  swift_defaultActor_initialize();
  v35 = (v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter);
  v35[3] = &type metadata for FastSyncAnalyticsReporter;
  v35[4] = &protocol witness table for FastSyncAnalyticsReporter;
  *v35 = 0;
  v36 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter;
  type metadata accessor for ABCReporter();
  v37 = swift_allocObject();
  v37[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v37[3] = 0x636E795374736146;
  v37[4] = 0xE800000000000000;
  v37[5] = 0x6E6F6973736553;
  v37[6] = 0xE700000000000000;
  *(v34 + v36) = v37;
  v38 = v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v39 = v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0;
  v40 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v89 = 0xC000000000000000;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMR);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  *(v34 + v40) = CurrentValueSubject.init(_:)();
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session) = 0;
  v44 = MEMORY[0x1E69E7CD0];
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions) = MEMORY[0x1E69E7CD0];
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_cancellables) = v44;
  v45 = v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  *(v45 + 32) = 0;
  v46 = v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController;
  *v46 = 0u;
  *(v46 + 16) = 0u;
  *(v46 + 32) = 0;
  v47 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_applicationLauncher;
  *(v34 + v47) = [objc_allocWithZone(CPApplicationLauncher) initWithSpatialApplicationManager_];
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sceneObservationManager) = 0;
  (*(v28 + 16))(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id, v85, v27);
  v49 = v80;
  v48 = v81;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) = v80;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members) = a3;
  v50 = (v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember);
  *v50 = a4;
  v50[1] = v48;
  outlined init with copy of UserNotificationCenter(v86, v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_service);
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag) = a7;
  swift_beginAccess();
  *(v38 + 8) = v82;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v81 = a4;
  swift_unknownObjectRetain();
  v82 = a7;
  swift_unknownObjectRetain();
  v51 = v49;
  v79 = a3;

  outlined assign with copy of IDSGroupSessionProviderProtocol?(v84, v45);
  swift_endAccess();
  v68 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v87 = 0;
  v88 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v87 = 0xD000000000000012;
  v88 = 0x80000001AEE342B0;
  v70 = v51;
  v52 = [v51 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v53 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v53);

  v54 = *(v28 + 8);
  v80 = v27;
  v69 = v54;
  v54(v31, v27);
  static DispatchQoS.unspecified.getter();
  v87 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v55 = v77;
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v75 + 104))(v74, *MEMORY[0x1E69E8090], v76);
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v56 = v78;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) = v78;
  *(v34 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) = v55;
  v57 = v56;

  if ([v57 fastSyncPresenceSeparationEnabled])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    (*(*v55 + 112))(v79);
    v58 = type metadata accessor for TaskPriority();
    v59 = v67;
    (*(*(v58 - 8) + 56))(v67, 1, 1, v58);
    v60 = swift_allocObject();
    swift_weakInit();
    v61 = swift_allocObject();
    v61[2] = 0;
    v61[3] = 0;
    v61[4] = v55;
    v61[5] = v60;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v59, &async function pointer to partial apply for closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:), v61);
    v62 = type metadata accessor for AnyCancellable();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();

    AnyCancellable.init(_:)();
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  outlined destroy of NSObject?(v84, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v86);
  v69(v85, v80);
  return v34;
}

BOOL BackgroundSession.State.canBeReplaced.getter(unint64_t a1)
{
  if ((a1 >> 62) < 2)
  {
    return 0;
  }

  return a1 >> 62 == 2 || __ROR8__(a1 + 0x4000000000000000, 3) >= 5uLL;
}

Swift::Int BackgroundSession.BackgroundSessionError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t BackgroundSession.State.containerState.getter(unint64_t a1)
{
  if ((a1 >> 62) < 2)
  {
    return 2;
  }

  if (a1 >> 62 == 2)
  {
    return 4;
  }

  return *(&unk_1AEE19CF0 + ((a1 + 0x4000000000000000) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t BackgroundSession.State.hash(into:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      MEMORY[0x1B27111E0](1);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v6 = MEMORY[0x1E69E7288];
      v7 = MEMORY[0x1E69E7CA8] + 8;
      v8 = a1;
      v9 = a2;
LABEL_8:

      return MEMORY[0x1EEE6DA08](v8, v9, v7, v5, v6);
    }

    v10 = 5;
LABEL_7:
    MEMORY[0x1B27111E0](v10);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = MEMORY[0x1E69E7288];
    v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v7 = MEMORY[0x1E69E7CA8] + 8;
    v8 = a1;
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    v10 = 8;
    goto LABEL_7;
  }

  v11 = __ROR8__(a2 + 0x4000000000000000, 3);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v12 = 4;
    }

    else if (v11 == 4)
    {
      v12 = 6;
    }

    else
    {
      v12 = 7;
    }
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = 0;
  }

  return MEMORY[0x1B27111E0](v12);
}

Swift::Int BackgroundSession.State.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  BackgroundSession.State.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundSession.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  BackgroundSession.State.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundSession.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  BackgroundSession.State.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t BackgroundSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for BackgroundSession.reporter : BackgroundSession(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of UserNotificationCenter(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v4));
  outlined init with take of ContiguousBytes(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t BackgroundSession.reporter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
  swift_beginAccess();
  return outlined init with copy of UserNotificationCenter(v1 + v3, a1);
}

uint64_t BackgroundSession.reporter.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  outlined init with take of ContiguousBytes(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t BackgroundSession.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t BackgroundSession.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BackgroundSession.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

uint64_t key path setter for BackgroundSession.protectedStorage : BackgroundSession(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of UserNotificationCenter(a1, v7);
  v3 = *a2;
  outlined init with take of ContiguousBytes(v7, v6);
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v6, v3 + v4, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  return swift_endAccess();
}

uint64_t BackgroundSession.protectedStorage.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, &v8, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  if (v9)
  {
    return outlined init with take of ContiguousBytes(&v8, a1);
  }

  outlined destroy of NSObject?(&v8, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
  v5 = *MEMORY[0x1E69D8DD0];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSUserDefaults.classProtectedStorage(suiteName:)(v6, v7, a1);

  outlined init with copy of UserNotificationCenter(a1, &v8);
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(&v8, v1 + v3, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  return swift_endAccess();
}

uint64_t BackgroundSession.protectedStorage.setter(__int128 *a1)
{
  outlined init with take of ContiguousBytes(a1, v4);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v4, v1 + v2, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  return swift_endAccess();
}

void (*BackgroundSession.protectedStorage.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  BackgroundSession.protectedStorage.getter(v3);
  return BackgroundSession.protectedStorage.modify;
}

void BackgroundSession.protectedStorage.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of UserNotificationCenter(*a1, (v2 + 5));
    v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?((v2 + 5), v3 + v4, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of ContiguousBytes(*a1, (v2 + 5));
    v5 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?((v2 + 5), v3 + v5, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
    swift_endAccess();
  }

  free(v2);
}

uint64_t key path getter for BackgroundSession.state : BackgroundSession@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

  CurrentValueSubject.value.getter();

  *a2 = v5;
  return result;
}

unint64_t key path setter for BackgroundSession.state : BackgroundSession(unint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

  outlined copy of BackgroundSession.State(v2);
  CurrentValueSubject.send(_:)();
  outlined consume of BackgroundSession.State(v2);

  return BackgroundSession.state.didset();
}

unint64_t BackgroundSession.state.didset()
{
  v1 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v0;
    v20[0] = v6;
    *v5 = 136315394;
    type metadata accessor for BackgroundSession(0);

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v20);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

    CurrentValueSubject.value.getter();

    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v20);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1AEB26000, v3, v4, "BackgroundSession %s state changed to %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v14 = v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v18 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

    CurrentValueSubject.value.getter();

    (*(v16 + 16))(v1, v19, ObjectType, v16);
    swift_unknownObjectRelease();
    return outlined consume of BackgroundSession.State(v19);
  }

  return result;
}

uint64_t BackgroundSession.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

  CurrentValueSubject.value.getter();

  return v3;
}

void *BackgroundSession.session.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void BackgroundSession.session.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v1, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

void *BackgroundSession.container.getter()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69D8B60]) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setUUID_];

  v4 = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setGroupUUID_];

  v5 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

  CurrentValueSubject.value.getter();

  if ((v76[0] >> 62) >= 2)
  {
    if (v76[0] >> 62 == 2)
    {
      outlined consume of BackgroundSession.State(v76[0]);
      v6 = 4;
    }

    else
    {
      v6 = *(&unk_1AEE19CF0 + ((v76[0] + 0x4000000000000000) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    outlined consume of BackgroundSession.State(v76[0]);
    v6 = 2;
  }

  [v2 setState_];
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo29TUConversationActivitySessionC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v7 = Set._bridgeToObjectiveC()().super.isa;

  [v2 setActivitySessions_];

  v8 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v69 = v2;
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AEE07B40;
    v11 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x388);
    v12 = v9;
    *(inited + 32) = v11();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo29TUConversationActivitySessionC_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    v13 = *(inited + 16);
    swift_arrayDestroy();
    v14 = Set._bridgeToObjectiveC()().super.isa;
    v2 = v69;

    [v69 setActivitySessions_];
  }

  v15 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, &v73, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  if (v74)
  {
    outlined init with take of ContiguousBytes(&v73, v76);
    v16 = v77;
    v17 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    [v2 setLocalParticipantIdentifier_];
    v18 = v77;
    v19 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v20 = (*(v19 + 48))(v18, v19);
    if (v20)
    {
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1AEE07B40;
      *(v22 + 32) = v21;
      v23 = v21;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo32TUConversationVirtualParticipantC_Tt0g5Tf4g_n(v22);
      swift_setDeallocating();
      v24 = *(v22 + 16);
      swift_arrayDestroy();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
      lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationVirtualParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
      v25 = Set._bridgeToObjectiveC()().super.isa;

      [v2 setVirtualParticipants_];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v76);
  }

  else
  {
    outlined destroy of NSObject?(&v73, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  }

  v26 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag);
  v68 = [v26 qrPluginConnectionRetryIntervalMillis];
  v67 = [v26 qrPluginMaxConnectionAttempts];
  v66 = [v26 qrPluginRpcStreamRetryIntervalMillis];
  v65 = [v26 qrPluginMaxRpcStreamAttempts];
  BackgroundSession.protectedStorage.getter(v76);
  v27 = v77;
  v28 = v78;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  v29 = objc_opt_self();
  v30 = [v29 serverCertValidationEnabledUserDefaultsKey];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  (*(v28 + 32))(&v73, MEMORY[0x1E69E6370], v31, v33, MEMORY[0x1E69E6370], MEMORY[0x1E69E6390], MEMORY[0x1E69E6378], v27, v28);

  v64 = v73;
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  BackgroundSession.protectedStorage.getter(v76);
  v34 = v77;
  v35 = v78;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  v36 = [v29 serverCertHostnameUserDefaultsKey];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = MEMORY[0x1E69E6158];
  (*(v35 + 32))(v72, MEMORY[0x1E69E6158], v37, v39, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v34, v35);

  v41 = v72[0];
  v42 = v72[1];
  BackgroundSession.protectedStorage.getter(&v73);
  v43 = v74;
  v44 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, v74);
  v45 = [v29 serverCertLeafMarkerOIDUserDefaultsKey];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  (*(v44 + 32))(&v70, v40, v46, v48, v40, MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v43, v44);

  v49 = v70;
  v50 = v71;
  if (!v42)
  {
    v51 = 0;
    v52 = v69;
    if (v71)
    {
      goto LABEL_16;
    }

LABEL_18:
    v53 = 0;
    goto LABEL_19;
  }

  v51 = MEMORY[0x1B270FF70](v41, v42);

  v52 = v69;
  if (!v50)
  {
    goto LABEL_18;
  }

LABEL_16:
  v53 = MEMORY[0x1B270FF70](v49, v50);

LABEL_19:
  v54 = [objc_allocWithZone(MEMORY[0x1E69D8BC8]) initWithConnectionRetryIntervalMillis:v68 connectionMaxAttempts:v67 rpcStreamRetryIntervalMillis:v66 rpcStreamMaxAttempts:v65 serverCertValidationEnabled:(v64 == 2) | (v64 & 1) serverCertHostnameOverride:v51 serverCertLeafMarkerOIDOverride:v53];

  __swift_destroy_boxed_opaque_existential_1Tm(&v73);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  [v52 setVirtualParticipantConfig_];

  v55 = [v26 unreliableMessengerEstablishChannelMaxAttempts];
  v56 = [v26 unreliableMessengerEstablishChannelRetryIntervalMillis];
  v57 = [v26 unreliableMessengerEgressMessagePayloadMaxSizeBytes];
  v58 = [v26 unreliableMessengerChannelStreamMaxQueueSize];
  v59 = [v26 unreliableMessengerChannelStreamMaxTries];
  v60 = [v26 unreliableMessengerChannelStreamRetryIntervalMillis];
  v61 = [v26 unreliableMessengerSeqNumBufferSize];
  v62 = [objc_allocWithZone(MEMORY[0x1E69D8BB8]) initWithEstablishChannelMaxAttempts:v55 establishChannelRetryIntervalMillis:v56 egressMessagePayloadMaxSizeBytes:v57 channelStreamMaxQueueSize:v58 channelStreamMaxTries:v59 channelStreamRetryIntervalMillis:v60 seqNumBufferSize:v61];
  [v52 setUnreliableMessengerConfig_];

  return v52;
}

void key path setter for BackgroundSession.members : BackgroundSession(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  BackgroundSession.members.didset();
}

void BackgroundSession.members.didset()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);

  v5 = [v4 bundleIdentifier];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
    swift_beginAccess();
    outlined init with copy of UserNotificationCenter(v1 + v7, v20);
    v8 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v9 = UUID.uuidString.getter();
    (*(v8 + 40))(v9);

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v10, v20, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  if (v21)
  {
    outlined init with copy of UserNotificationCenter(v20, v17);
    outlined destroy of NSObject?(v20, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v12 + 88))(v3, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    outlined destroy of NSObject?(v20, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  }

  if ([*(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled])
  {
  }

  else
  {
    (*(**(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 112))(v3);
  }

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.service);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Successfully updated members", v16, 2u);
    MEMORY[0x1B27120C0](v16, -1, -1);
  }
}

void BackgroundSession.members.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  BackgroundSession.members.didset();
}

void (*BackgroundSession.members.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return BackgroundSession.members.modify;
}

void BackgroundSession.members.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    BackgroundSession.members.didset();
  }
}

uint64_t key path setter for BackgroundSession.suspensionAssertions : BackgroundSession(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t BackgroundSession.localMember.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember + 8);
  return swift_unknownObjectRetain();
}

uint64_t key path setter for BackgroundSession.sessionProvider : BackgroundSession(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v6, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v6, v3 + v4, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  return swift_endAccess();
}

uint64_t BackgroundSession.sessionProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, a1, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
}

uint64_t BackgroundSession.sessionProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(a1, v1 + v3, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  return swift_endAccess();
}

uint64_t BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v13 = v12;
  v68 = a8;
  v78 = a2;
  v79 = a5;
  v84 = a11;
  v85 = a6;
  v77 = a12;
  v82 = a4;
  v83 = a9;
  v80 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = &v65 - v19;
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for OS_dispatch_queue.Attributes();
  v23 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v70 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = v29[8];
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v33 = (v12 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter);
  v33[3] = &type metadata for FastSyncAnalyticsReporter;
  v33[4] = &protocol witness table for FastSyncAnalyticsReporter;
  *v33 = 0;
  v34 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter;
  type metadata accessor for ABCReporter();
  v35 = swift_allocObject();
  v35[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v35[3] = 0x636E795374736146;
  v35[4] = 0xE800000000000000;
  v35[5] = 0x6E6F6973736553;
  v35[6] = 0xE700000000000000;
  *(v13 + v34) = v35;
  v36 = v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v37 = v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  *v37 = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0;
  v38 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v88 = 0xC000000000000000;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMR);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *(v13 + v38) = CurrentValueSubject.init(_:)();
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session) = 0;
  v42 = MEMORY[0x1E69E7CD0];
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions) = MEMORY[0x1E69E7CD0];
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_cancellables) = v42;
  v43 = v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0;
  v44 = v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController;
  *(v44 + 32) = 0;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v45 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_applicationLauncher;
  *(v13 + v45) = [objc_allocWithZone(CPApplicationLauncher) initWithSpatialApplicationManager_];
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sceneObservationManager) = 0;
  v46 = v29[2];
  v81 = a1;
  v46(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id, a1, v28);
  v48 = v78;
  v47 = v79;
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) = v78;
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members) = a3;
  v49 = (v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember);
  *v49 = v82;
  v49[1] = v47;
  outlined init with copy of UserNotificationCenter(v85, v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_service);
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag) = a7;
  swift_beginAccess();
  *(v36 + 8) = v80;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v80 = a7;
  swift_unknownObjectRetain();
  v50 = v48;
  v78 = a3;
  v51 = v68;

  outlined assign with copy of IDSGroupSessionProviderProtocol?(v84, v43);
  swift_endAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v86 = 0xD000000000000012;
  v87 = 0x80000001AEE342B0;
  v69 = v50;
  v52 = [v50 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v53 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v53);

  v54 = v29[1];
  v79 = v28;
  v72 = v29 + 1;
  v67 = v54;
  v54(v32, v28);
  static DispatchQoS.unspecified.getter();
  v86 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v75 + 104))(v74, *MEMORY[0x1E69E8090], v76);
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v55 = v77;
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) = v77;
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) = v51;
  v56 = v55;

  if ([v56 fastSyncPresenceSeparationEnabled])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    (*(*v51 + 112))(v78);
    v57 = type metadata accessor for TaskPriority();
    v58 = v66;
    (*(*(v57 - 8) + 56))(v66, 1, 1, v57);
    v59 = swift_allocObject();
    swift_weakInit();
    v60 = swift_allocObject();
    v60[2] = 0;
    v60[3] = 0;
    v60[4] = v51;
    v60[5] = v59;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v58, &closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)partial apply, v60);
    v61 = type metadata accessor for AnyCancellable();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();

    AnyCancellable.init(_:)();
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  outlined destroy of NSObject?(v84, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v85);
  v67(v81, v79);
  return v13;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGGMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR);
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:), 0, 0);
}

uint64_t closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v13 = *(v0 + 72);
  *(v0 + 40) = (*(**(v0 + 64) + 152))();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR);
  v6 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[PresentDevice], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR);
  MEMORY[0x1B270F520](v5, v6);

  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v7 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[PresentDevice], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR);
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:);
  v10 = *(v0 + 120);
  v11 = *(v0 + 104);

  return MEMORY[0x1EEE6D8C8](v0 + 48, v11, v7);
}

{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:);
  }

  else
  {
    v3 = closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  *(v0 + 144) = *(v0 + 48);
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:), 0, 0);
}

{
  if (v0[18])
  {
    v1 = v0[9];
    Strong = swift_weakLoadStrong();
    v0[19] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:), Strong, 0);
    }

    else
    {
      v5 = v0[18];

      v6 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[PresentDevice], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR);
      v7 = *(MEMORY[0x1E69E85A8] + 4);
      v8 = swift_task_alloc();
      v0[16] = v8;
      *v8 = v0;
      v8[1] = closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:);
      v9 = v0[15];
      v10 = v0[13];

      return MEMORY[0x1EEE6D8C8](v0 + 6, v10, v6);
    }
  }

  else
  {
    v3 = v0[12];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v4 = v0[1];

    return v4();
  }
}

{
  *(v0 + 56) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

{
  rawValue = v0[19]._rawValue;
  BackgroundSession.handlePresentDevicesChanged(_:)(v0[18]);

  v2 = v0[18]._rawValue;

  v3 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[PresentDevice], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[16]._rawValue = v5;
  *v5 = v0;
  v5[1] = closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:);
  v6 = v0[15]._rawValue;
  v7 = v0[13]._rawValue;

  return MEMORY[0x1EEE6D8C8](&v0[6], v7, v3);
}