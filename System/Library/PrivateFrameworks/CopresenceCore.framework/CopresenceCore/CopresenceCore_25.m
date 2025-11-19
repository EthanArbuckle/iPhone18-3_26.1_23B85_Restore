uint64_t RBSProcessStateUpdate.bundleIdentifier.getter()
{
  v1 = [v0 process];
  v2 = [v1 bundle];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 identifier];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t protocol witness for ProcessStateUpdate.bundleIdentifier.getter in conformance RBSProcessStateUpdate()
{
  v1 = [*v0 process];
  v2 = [v1 bundle];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 identifier];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

id protocol witness for ProcessStateUpdate.state.getter in conformance RBSProcessStateUpdate()
{
  v1 = [*v0 state];

  return v1;
}

id protocol witness for ProcessStateUpdate.previousState.getter in conformance RBSProcessStateUpdate()
{
  v1 = [*v0 previousState];

  return v1;
}

uint64_t RunningBoardAppVisibilityMonitor._nearbyOption.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t RunningBoardAppVisibilityMonitor._nearbyOption.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v10 = *v5;
  v5[8] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v5[9] = 0;
  v5[10] = v11;
  v5[11] = 0;
  v5[2] = a1;
  outlined init with copy of UserNotificationCenter(a2, (v5 + 3));
  swift_beginAccess();
  v5[8] = a3;
  v5[9] = a4;
  v12 = *(v10 + 232);
  v13 = a1;
  v12();
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:);
  *(v14 + 24) = v5;
  aBlock[4] = partial apply for closure #2 in ActivitySession.postEvent(event:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitorConfiguring) -> ();
  aBlock[3] = &block_descriptor_39;
  v15 = _Block_copy(aBlock);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v17 = [ObjCClassFromMetadata monitorWithConfiguration_];
  _Block_release(v15);

  __swift_destroy_boxed_opaque_existential_1Tm(v8);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v19 = v5[11];
    v5[11] = v17;

    return v5;
  }

  return result;
}

void closure #1 in RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7630]) init];
  [v2 setValues_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AEE07B20;
  v4 = *MEMORY[0x1E699F9D0];
  *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v3 + 40) = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setEndowmentNamespaces_];

  [a1 setStateDescriptor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AEE07B40;
  *(v7 + 32) = [objc_opt_self() predicateMatchingProcessTypeApplication];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSProcessPredicate, 0x1E69C7610);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates_];

  v9 = swift_allocObject();
  swift_weakInit();
  v11[4] = partial apply for closure #1 in closure #1 in RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:);
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitor, @guaranteed RBSProcessHandle, @guaranteed RBSProcessStateUpdate) -> ();
  v11[3] = &block_descriptor_14;
  v10 = _Block_copy(v11);

  [a1 setUpdateHandler_];
  _Block_release(v10);
}

uint64_t closure #1 in closure #1 in RunningBoardAppVisibilityMonitor.init(appPolicyManager:applicationController:nearbyOption:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v8[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSProcessStateUpdate, 0x1E69C7638);
    v8[4] = &protocol witness table for RBSProcessStateUpdate;
    v8[0] = a3;
    v6 = *(*v5 + 216);
    v7 = a3;
    v6(v8);

    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitorConfiguring) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t RunningBoardAppVisibilityMonitor.deinit()
{
  (*(*v0 + 208))();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return v0;
}

uint64_t RunningBoardAppVisibilityMonitor.__deallocating_deinit()
{
  (*(*v0 + 208))();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall RunningBoardAppVisibilityMonitor.invalidate()()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    [v1 invalidate];
  }

  else
  {
    __break(1u);
  }
}

void RunningBoardAppVisibilityMonitor.handleProcessStateUpdate(_:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v81 = v6;
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = (*(v8 + 8))(v7, v8);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = *(*v1 + 240);

      v14 = v13(v11, v12);

      if ((v14 & 1) == 0)
      {
        if (one-time initialization token for default != -1)
        {
LABEL_70:
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Log.default);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v88[0] = v38;
          *v37 = 136315138;

          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v88);

          *(v37 + 4) = v39;
          _os_log_impl(&dword_1AEB26000, v35, v36, "RunningBoardAppVisibilityMonitor: Ignoring visibility update for bundle identifier: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
          MEMORY[0x1B27120C0](v38, -1, -1);
          MEMORY[0x1B27120C0](v37, -1, -1);

LABEL_68:
          return;
        }

LABEL_45:

        return;
      }

      v15 = a1[3];
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v15);
      v17 = (*(v16 + 24))(v15, v16);
      if (v17)
      {
        v18 = v17;
        if ([v17 taskState] == 4)
        {
          v19 = [v18 endowmentNamespaces];
          if (v19)
          {
            v20 = v19;
            v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            v22 = *MEMORY[0x1E699F9D0];
            v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = specialized Set.contains(_:)(v23, v24, v21);

            goto LABEL_23;
          }
        }
      }

      v25 = 0;
LABEL_23:
      if ([v81 taskState] == 4 && (v41 = objc_msgSend(v81, sel_endowmentNamespaces)) != 0)
      {
        v42 = v41;
        v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = *MEMORY[0x1E699F9D0];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = specialized Set.contains(_:)(v45, v46, v43);

        if ((v25 ^ v47))
        {
          if (v47)
          {
            swift_beginAccess();
            v48 = v2[10];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v2[10] = v48;
            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_28:
              v51 = *(v48 + 2);
              v50 = *(v48 + 3);
              if (v51 >= v50 >> 1)
              {
                v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v48);
              }

              *(v48 + 2) = v51 + 1;
              v52 = &v48[16 * v51];
              *(v52 + 4) = v11;
              *(v52 + 5) = v12;
              v2[10] = v48;
              swift_endAccess();
LABEL_67:

              v78 = specialized AppVisibilityMonitor.applicationType(forBundleIdentifier:)(v11, v12);

              v79 = *(*v2 + 248);

              v79(v11, v12, v78);
              swift_bridgeObjectRelease_n();
              goto LABEL_68;
            }

LABEL_75:
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
            v2[10] = v48;
            goto LABEL_28;
          }

LABEL_32:
          swift_beginAccess();
          v48 = v2[10];
          v53 = *(v48 + 2);
          if (v53)
          {
            v54 = 0;
            v55 = 0;
            while (1)
            {
              v56 = *&v48[v54 + 32] == v11 && v12 == *&v48[v54 + 40];
              if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              ++v55;
              v54 += 16;
              if (v53 == v55)
              {
                goto LABEL_40;
              }
            }

            v57 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }

            v64 = *(v48 + 2);
            while (v57 != v64)
            {
              if (v57 >= v64)
              {
                __break(1u);
                goto LABEL_70;
              }

              v65 = *&v48[v54 + 48];
              v66 = *&v48[v54 + 56];
              if (v65 != v11 || v12 != v66)
              {
                v68 = *&v48[v54 + 48];
                v69 = *&v48[v54 + 56];
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  if (v57 != v55)
                  {
                    if (v55 >= v64)
                    {
                      goto LABEL_72;
                    }

                    v70 = &v48[16 * v55 + 32];
                    v71 = *(v70 + 1);
                    v80 = *v70;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
                    }

                    v72 = &v48[16 * v55];
                    v73 = *(v72 + 5);
                    *(v72 + 4) = v65;
                    *(v72 + 5) = v66;

                    if (v57 >= *(v48 + 2))
                    {
                      goto LABEL_73;
                    }

                    v74 = &v48[v54];
                    v75 = *&v48[v54 + 56];
                    *(v74 + 6) = v80;
                    *(v74 + 7) = v71;

                    v2[10] = v48;
                  }

                  ++v55;
                }
              }

              ++v57;
              v64 = *(v48 + 2);
              v54 += 16;
            }
          }

          else
          {
LABEL_40:
            v57 = *(v48 + 2);
            v55 = v53;
          }

          if (v57 >= v55)
          {
            specialized Array.replaceSubrange<A>(_:with:)(v55, v57);
            swift_endAccess();
            v58 = v2[10];
            v61 = *(v58 + 16);
            v59 = v58 + 16;
            v60 = v61;
            if (v61)
            {
              v62 = (v59 + 16 * v60);
              v11 = *v62;
              v63 = v62[1];
            }

            else
            {
              v76 = *MEMORY[0x1E69D8DC0];
              v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v63 = v77;
            }

            v12 = v63;
            goto LABEL_67;
          }

          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }
      }

      else if (v25)
      {
        goto LABEL_32;
      }

      goto LABEL_45;
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.default);
  outlined init with copy of UserNotificationCenter(a1, v88);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v87 = v30;
    *v29 = 136315138;
    outlined init with copy of UserNotificationCenter(v88, v86);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v86, &v84, &_s14CopresenceCore18ProcessStateUpdate_pSgMd, &_s14CopresenceCore18ProcessStateUpdate_pSgMR);
    if (v85)
    {
      outlined init with take of ContiguousBytes(&v84, v83);
      outlined init with copy of UserNotificationCenter(v83, v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18ProcessStateUpdate_pMd, &_s14CopresenceCore18ProcessStateUpdate_pMR);
      v31 = String.init<A>(reflecting:)();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    outlined destroy of NSObject?(v86, &_s14CopresenceCore18ProcessStateUpdate_pSgMd, &_s14CopresenceCore18ProcessStateUpdate_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v87);

    *(v29 + 4) = v40;
    _os_log_impl(&dword_1AEB26000, v27, v28, "RunningBoardAppVisibilityMonitor: Skipping process state update since it's missing necessary contents: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v88);
  }
}

uint64_t specialized AppVisibilityMonitor.shouldHandleAppVisibilityUpdate(forBundleIdentifier:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void *))
{
  v6 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v7 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  if (!v7)
  {
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
      v12 = swift_slowAlloc();
      v30[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v30);
      _os_log_impl(&dword_1AEB26000, v9, v10, "AppVisibilityMonitor: Unable to get application record for bundle identifier: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    goto LABEL_7;
  }

  v15 = v7;
  v16 = [v7 appTags];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30[0] = 0x6E6564646968;
  v30[1] = 0xE600000000000000;
  MEMORY[0x1EEE9AC00](v18);
  v29[2] = v30;
  LOBYTE(v16) = specialized Sequence.contains(where:)(a3, v29, v17);

  if (v16)
  {

LABEL_7:
    v13 = 0;
    return v13 & 1;
  }

  v19 = [v15 compatibilityObject];
  v20 = [v19 bundleType];

  if (!v20)
  {
    v27 = *MEMORY[0x1E6963570];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_18;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = *MEMORY[0x1E6963570];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v23)
  {
LABEL_18:

    v13 = 1;
    return v13 & 1;
  }

  if (v21 == v25 && v23 == v26)
  {

    v13 = 0;
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = v28 ^ 1;
  }

  return v13 & 1;
}

uint64_t static GroupActivityAssociation.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static GroupActivityAssociation.supportsSecureCoding = a1;
  return result;
}

uint64_t GroupActivityAssociation.associationID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8);

  return v1;
}

uint64_t GroupActivityAssociation.sceneID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8);

  return v1;
}

id GroupActivityAssociation.__allocating_init(sceneID:associationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id GroupActivityAssociation.init(sceneID:associationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

Swift::Void __swiftcall GroupActivityAssociation.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID), *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8));
  v4 = MEMORY[0x1B270FF70](0x4449656E656373, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID), *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8));
  v6 = MEMORY[0x1B270FF70](0x746169636F737361, 0xED000044496E6F69);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id GroupActivityAssociation.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for NSString();
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = &v2[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID];
      *v9 = v8;
      v9[1] = v10;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = &v2[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID];
      *v14 = v11;
      v14[1] = v13;
      v17.receiver = v2;
      v17.super_class = ObjectType;
      v15 = objc_msgSendSuper2(&v17, sel_init);

      return v15;
    }
  }

  else
  {

    a1 = v7;
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t GroupActivityAssociation.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(56);
  MEMORY[0x1B2710020](0xD000000000000022, 0x80000001AEE38090);
  MEMORY[0x1B2710020](*(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID), *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8));
  MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE380C0);
  MEMORY[0x1B2710020](*(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID), *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8));
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

uint64_t GroupActivityAssociation.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v8);
  if (!v9)
  {
    outlined destroy of Any?(v8);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v5 = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID) == *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID] && *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8) == *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_14;
  }

  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID) == *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID] && *(v1 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8) == *&v7[OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8])
  {

    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int GroupActivityAssociation.hash.getter()
{
  Hasher.init()();
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_associationID + 8);
  String.hash(into:)();
  v3 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID);
  v4 = *(v0 + OBJC_IVAR____TtC14CopresenceCore24GroupActivityAssociation_sceneID + 8);
  String.hash(into:)();
  return Hasher.finalize()();
}

id GroupActivityAssociation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GroupActivityAssociation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static NSBundle.copresenceCore.getter()
{
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

id CPDisplayCloneStateObserver.isCloned.getter()
{
  result = *(v0 + OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_display);
  if (result)
  {
    return [result isCloned];
  }

  return result;
}

uint64_t CPDisplayCloneStateObserver.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t CPDisplayCloneStateObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CPDisplayCloneStateObserver.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_delegate;
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

id CPDisplayCloneStateObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CPDisplayCloneStateObserver.init()()
{
  *&v0[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_observation] = 0;
  *&v0[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Initializing CPDisplayCloneStateObserver", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v5 = [objc_opt_self() mainDisplay];
  *&v0[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_display] = v5;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for CPDisplayCloneStateObserver();
  v6 = objc_msgSendSuper2(&v16, sel_init);
  v7 = v6;
  v8 = *&v6[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_display];
  if (v8)
  {
    v15 = *&v6[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_display];
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = v8;
    v10 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v11 = *&v7[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_observation];
    *&v7[OBJC_IVAR____TtC14CopresenceCore27CPDisplayCloneStateObserver_observation] = v10;
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1AEB26000, v11, v12, "No display available. isCloned will be false", v13, 2u);
      MEMORY[0x1B27120C0](v13, -1, -1);
    }
  }

  return v7;
}

void closure #1 in CPDisplayCloneStateObserver.init()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.default);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = MEMORY[0x1E69E7D40];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = (*((*v7 & *v3) + 0x68))() & 1;

      _os_log_impl(&dword_1AEB26000, v4, v5, "Display cloned state changed to: %{BOOL}d", v8, 8u);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    else
    {
    }

    if ((*((*v7 & *v3) + 0x88))())
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      v12 = (*((*v7 & *v3) + 0x68))();
      (*(v10 + 8))(v12 & 1, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }
}

id CPDisplayCloneStateObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPDisplayCloneStateObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for CPDisplayCloneStateObserverProtocol.delegate.modify in conformance CPDisplayCloneStateObserver(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

BOOL specialized static BundleIdentiferMap.areEquivalentBundleIDs(bundleID:otherBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      return 1;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (v9)
    {
      return 1;
    }

    v24 = a1;
    v25 = a2;
    MEMORY[0x1EEE9AC00](v9);
    v23 = &v24;
    v10 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v22, &outlined read-only object #0 of one-time initialization function for appleTVBundleIDs);
    if (v10 & 1) != 0 && (v24 = a3, v25 = a4, MEMORY[0x1EEE9AC00](v10), v23 = &v24, v10 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for appleTVBundleIDs), (v10))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.default);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_31;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Found equivalent apple tv BundleID";
    }

    else
    {
      v24 = a1;
      v25 = a2;
      MEMORY[0x1EEE9AC00](v10);
      v23 = &v24;
      v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for musicBundleIDs);
      if (v16 & 1) != 0 && (v24 = a3, v25 = a4, MEMORY[0x1EEE9AC00](v16), v23 = &v24, v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for musicBundleIDs), (v16))
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Log.default);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_31;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Found equivalent music BundleID";
      }

      else
      {
        v24 = a1;
        v25 = a2;
        MEMORY[0x1EEE9AC00](v16);
        v23 = &v24;
        v18 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for notesBundleIDs);
        if (v18 & 1) != 0 && (v24 = a3, v25 = a4, MEMORY[0x1EEE9AC00](v18), v23 = &v24, v18 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for notesBundleIDs), (v18))
        {
          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          __swift_project_value_buffer(v19, static Log.default);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v12, v13))
          {
            goto LABEL_31;
          }

          v14 = swift_slowAlloc();
          *v14 = 0;
          v15 = "Found equivalent notes BundleID";
        }

        else
        {
          v24 = a1;
          v25 = a2;
          MEMORY[0x1EEE9AC00](v18);
          v23 = &v24;
          v20 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for translationBundleIDs);
          if ((v20 & 1) == 0)
          {
            return 0;
          }

          v24 = a3;
          v25 = a4;
          MEMORY[0x1EEE9AC00](v20);
          v23 = &v24;
          if ((specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v22, &outlined read-only object #0 of one-time initialization function for translationBundleIDs) & 1) == 0)
          {
            return 0;
          }

          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v21 = type metadata accessor for Logger();
          __swift_project_value_buffer(v21, static Log.default);
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v12, v13))
          {
            goto LABEL_31;
          }

          v14 = swift_slowAlloc();
          *v14 = 0;
          v15 = "Found equivalent translation BundleID";
        }
      }
    }

    _os_log_impl(&dword_1AEB26000, v12, v13, v15, v14, 2u);
    MEMORY[0x1B27120C0](v14, -1, -1);
LABEL_31:

    return 1;
  }

  return result;
}

uint64_t PresenceController.__allocating_init(activityID:personalPresenceController:)(char *a1, uint64_t a2)
{
  v2 = specialized PresenceController.__allocating_init(activityID:personalPresenceController:)(a1, a2);

  return v2;
}

uint64_t PresenceController.members.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v2 + 40))(ObjectType, v2);
}

uint64_t PresenceController.members.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a1, ObjectType, v4);
}

uint64_t (*PresenceController.members.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[1] = *(v1 + 16);
  a1[2] = v3;
  a1[3] = swift_getObjectType();
  *a1 = (*(v3 + 40))();
  return PresenceController.members.modify;
}

uint64_t PresenceController.members.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(v2 + 48);
  v6 = *a1;
  v5 = a1[1];
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v3, v2);
  }

  v7 = *a1;

  v4(v8, v3, v2);
}

uint64_t key path setter for PresenceController.presentDevices : PresenceController(uint64_t *a1, uint64_t a2)
{
  v2 = *(*a2 + 32);
  v4 = *a1;

  CurrentValueSubject.send(_:)();
}

uint64_t PresenceController.presentDevices.getter()
{
  v1 = *(v0 + 32);

  CurrentValueSubject.value.getter();

  return v3;
}

uint64_t PresenceController.cancellables.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t PresenceController.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void *PresenceController.__allocating_init<A>(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = specialized PresenceController.init<A>(dataSource:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

void *PresenceController.init<A>(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized PresenceController.init<A>(dataSource:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t closure #1 in PresenceController.init<A>(dataSource:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[7] = *a1;
  v10[2] = a2;
  v10[3] = a3;
  v10[5] = a2;
  swift_getExtendedExistentialTypeMetadata();
  v5 = type metadata accessor for Array();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13PresentDevice_pMd, &_s14CopresenceCore13PresentDevice_pMR);
  WitnessTable = swift_getWitnessTable();
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in closure #1 in PresenceController.init<A>(dataSource:), v10, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  *a4 = result;
  return result;
}

uint64_t closure #1 in closure #1 in PresenceController.init<A>(dataSource:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 3);
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
  *(a2 + 24) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
}

uint64_t closure #2 in PresenceController.init<A>(dataSource:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 32);

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t PresenceController.assertPresence()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceController.assertPresence(), 0, 0);
}

{
  v1 = *(v0 + 16);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = PersonalPresenceDataSource.assertPresence(using:);

  return PresenceDataSource.assertPresence()(ObjectType, v2);
}

uint64_t PresenceController.releasePresence()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceController.releasePresence(), 0, 0);
}

{
  v1 = *(v0 + 16);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 72);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = PersonalPresenceDataSource.releasePresence();

  return v9(ObjectType, v2);
}

void *PresenceController.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t PresenceController.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

void *specialized PresenceController.init<A>(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v28 = a3;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for Array();
  type metadata accessor for AnyPublisher();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14CopresenceCore13PresentDevice_pGMd, &_sSay14CopresenceCore13PresentDevice_pGMR);
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for Publishers.Map();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v28 = MEMORY[0x1E69E7CC0];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = CurrentValueSubject.init(_:)();
  v22 = v4;
  v4[4] = v14;
  v4[5] = MEMORY[0x1E69E7CD0];
  ObjectType = swift_getObjectType();
  v4[2] = a1;
  v4[3] = a2;
  v16 = *(a2 + 24);
  swift_unknownObjectRetain();
  v28 = v16(ObjectType, a2);
  v17 = swift_allocObject();
  v18 = v26;
  *(v17 + 16) = v25;
  *(v17 + 24) = v18;
  Publisher.map<A>(_:)();

  swift_allocObject();
  v19 = v22;
  swift_weakInit();
  swift_getWitnessTable();
  Publisher<>.sink(receiveValue:)();

  (*(v27 + 8))(v10, v7);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v19;
}

uint64_t specialized PresenceController.__allocating_init(activityID:personalPresenceController:)(char *a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.service);
  v39 = v4[2];
  v39(v10, a1, v3);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = a1;
    v15 = v14;
    v35 = swift_slowAlloc();
    v42 = v35;
    *v15 = 136315138;
    lazy protocol witness table accessor for type PersonalPresenceDataSource and conformance PersonalPresenceDataSource(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v8;
    v18 = v17;
    v38 = v3;
    v19 = v4[1];
    v19(v10, v38);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v42);
    v8 = v36;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v12, v13, "Creating multiplexed presence controller for me-to-me session with identifier: %s", v15, 0xCu);
    v21 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1B27120C0](v21, -1, -1);
    v22 = v15;
    a1 = v37;
    MEMORY[0x1B27120C0](v22, -1, -1);

    v23 = v19;
    v3 = v38;
  }

  else
  {

    v23 = v4[1];
    v23(v10, v3);
  }

  v39(v8, a1, v3);
  v24 = type metadata accessor for PersonalPresenceDataSource(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = v3;
  v28 = v40;

  v29 = specialized PersonalPresenceDataSource.init(activityID:personalPresenceController:)(v8, v28);

  v30 = lazy protocol witness table accessor for type PersonalPresenceDataSource and conformance PersonalPresenceDataSource(&lazy protocol witness table cache variable for type PersonalPresenceDataSource and conformance PersonalPresenceDataSource, type metadata accessor for PersonalPresenceDataSource);
  v31 = *(v41 + 184);
  v32 = lazy protocol witness table accessor for type EmptyPresenceContext and conformance EmptyPresenceContext();
  v33 = v31(v29, v30, &type metadata for EmptyPresenceContext, v32);
  v23(a1, v27);
  return v33;
}

uint64_t dispatch thunk of PresenceController.assertPresence()()
{
  v2 = *(*v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t dispatch thunk of PresenceController.releasePresence()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t partial apply for closure #1 in closure #1 in PresenceController.init<A>(dataSource:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in closure #1 in PresenceController.init<A>(dataSource:)(a1, a2);
}

uint64_t lazy protocol witness table accessor for type PersonalPresenceDataSource and conformance PersonalPresenceDataSource(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, SEL *a2)
{
  v2 = a1;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    Set.Iterator.init(_cocoa:)();
    v2 = v19;
    v3 = v20;
    v5 = v21;
    v4 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v10 = v4;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80), swift_dynamicCast(), v14 = v18, v4 = v10, v6 = v11, !v18))
      {
LABEL_21:
        outlined consume of Set<String>.Iterator._Variant();
        return;
      }

      goto LABEL_17;
    }

    v12 = v10;
    v13 = v11;
    v4 = v10;
    if (!v11)
    {
      break;
    }

LABEL_13:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_17:
    v15 = [v14 *a2];

    v10 = v4;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x1B2710150]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v13 = *(v3 + 8 * v4);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id closure #1 in variable initialization expression of static CPApplicationPolicyManager.shared()
{
  v0 = [objc_allocWithZone(CPSharedConversationServerBag) init];
  v5 = [v0 backgroundAppPolicyHandleExpiryDays] * 24.0 * 60.0 * 60.0;
  LOBYTE(v6) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v2 = objc_allocWithZone(type metadata accessor for CPApplicationPolicyManager());
  v3 = CPApplicationPolicyManager.init(config:contactStore:featureFlags:)(&v5, v1, 0);

  return v3;
}

id static CPApplicationPolicyManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static CPApplicationPolicyManager.shared;

  return v1;
}

uint64_t CPApplicationPolicyManager.authorizedBundleIdentifiers.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v1 + 16));
  closure #1 in CPApplicationPolicyManager.authorizedBundleIdentifiers.getter(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

uint64_t closure #1 in CPApplicationPolicyManager.authorizedBundleIdentifiers.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v42 = a1;
  v3 = (a1 + OBJC_IVAR___CPApplicationPolicyManager_storage);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v7 = (*(v5 + 56))(v6, v6, v4, v5);
  v8 = specialized Dictionary.compactMapValues<A>(_:)(v7);
  v43 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
  result = static _DictionaryStorage.copy(original:)();
  v10 = result;
  v11 = 0;
  v13 = v8 + 64;
  v12 = *(v8 + 64);
  v50 = v8;
  v14 = 1 << *(v8 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v45 = result + 64;
  v46 = result;
  if ((v15 & v12) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v11 << 6);
      v22 = (*(v50 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(*(v50 + 56) + 40 * v21 + 24);
      v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);

      result = [v26 initWithBool_];
      v10 = v46;
      *(v45 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (v10[6] + 16 * v21);
      *v27 = v24;
      v27[1] = v23;
      *(v10[7] + 8 * v21) = result;
      v28 = v10[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v10[2] = v30;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_5:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v11 >= v17)
      {
        break;
      }

      v20 = *(v13 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    result = [*(v42 + OBJC_IVAR___CPApplicationPolicyManager_featureFlags) appProtectionEnabled];
    if (result)
    {
      (*((*MEMORY[0x1E69E7D40] & *v42) + 0xD8))(v47);
      v31 = v48;
      if (v48)
      {
        v32 = v49;
        v33 = __swift_project_boxed_opaque_existential_1(v47, v48);
        v34 = *(v31 - 8);
        v35 = *(v34 + 64);
        MEMORY[0x1EEE9AC00](v33);
        v37 = &v42 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v34 + 16))(v37);
        outlined destroy of NSObject?(v47, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
        v38 = (*(v32 + 32))(v31, v32);
        v39 = (*(v34 + 8))(v37, v31);
        MEMORY[0x1EEE9AC00](v39);
        v41[2] = v38;
        v40 = specialized _NativeDictionary.filter(_:)(v10, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory(), v41, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));

        v10 = v40;
      }

      else
      {
        result = outlined destroy of NSObject?(v47, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
      }
    }

    *v44 = v10;
  }

  return result;
}

uint64_t CPApplicationPolicyManager.autoSharePlayEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + OBJC_IVAR___CPApplicationPolicyManager_storage + 24);
  v3 = *(v0 + OBJC_IVAR___CPApplicationPolicyManager_storage + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___CPApplicationPolicyManager_storage), v2);
  (*(v3 + 40))(&v5, MEMORY[0x1E69E6370], 0xD00000000000001FLL, 0x80000001AEE33020, MEMORY[0x1E69E6370], v2, v3);
  LOBYTE(v2) = (v5 == 2) | v5;
  os_unfair_lock_unlock(*(v1 + 16));
  return v2 & 1;
}

void CPApplicationPolicyManager.autoSharePlayEnabled.setter(char a1)
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
    v13 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v5, v6, "[CPAppPolicyManager] set auto-SharePlay enabled %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v12 + 16));
  closure #1 in CPApplicationPolicyManager.autoSharePlayEnabled.setter(v2, a1 & 1);
  os_unfair_lock_unlock(*(v12 + 16));
}

uint64_t closure #1 in CPApplicationPolicyManager.autoSharePlayEnabled.setter(void *a1, char a2)
{
  v3 = a1;
  v4 = (a1 + OBJC_IVAR___CPApplicationPolicyManager_storage);
  v5 = v4[3];
  v6 = v4[4];
  v36 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v38 = MEMORY[0x1E69E6370];
  v37[0] = a2;
  (*(v6 + 8))(v37, 0xD00000000000001FLL, 0x80000001AEE33020, v5, v6);
  result = outlined destroy of NSObject?(v37, &_sypSgMd, &_sypSgMR);
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
LABEL_19:
      swift_once();
    }

    v33 = v3;
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AEB26000, v9, v10, "[CPAppPolicyManager] Disabling auto-SharePlay for all previously allowed apps", v11, 2u);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v12 = v36[3];
    v13 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v12);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v15 = (*(v13 + 56))(v14, v14, v12, v13);
    v16 = specialized Dictionary.compactMapValues<A>(_:)(v15);

    v34 = 0;
    v35 = v16;
    v17 = 0;
    v3 = 0;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v16 + 64;
    v21 = v19 & *(v16 + 64);
    v22 = (v18 + 63) >> 6;
    if (v21)
    {
      while (1)
      {
        v23 = v3;
LABEL_13:

        v24 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v25 = (*(v35 + 48) + ((v23 << 10) | (16 * v24)));
        v26 = *v25;
        v17 = v25[1];
        v28 = v36[3];
        v27 = v36[4];
        __swift_project_boxed_opaque_existential_1(v36, v28);
        v39 = *(v27 + 24);
        swift_bridgeObjectRetain_n();
        v34 = v26;
        v39(v26, v17, v28, v27);

        if (!v21)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v23 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v23 >= v22)
      {
        break;
      }

      v21 = *(v20 + 8 * v23);
      v3 = (v3 + 1);
      if (v21)
      {
        v3 = v23;
        goto LABEL_13;
      }
    }

    if (v17)
    {
      v29 = (*((*MEMORY[0x1E69E7D40] & *v33) + 0xC0))(result);
      v30 = swift_allocObject();
      v30[2] = v33;
      v30[3] = v34;
      v30[4] = v17;
      v31 = *(*v29 + 152);
      v32 = v33;
      v31(partial apply for closure #1 in closure #1 in CPApplicationPolicyManager.autoSharePlayEnabled.setter, v30);
    }
  }

  return result;
}

void (*CPApplicationPolicyManager.autoSharePlayEnabled.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(v1 + OBJC_IVAR___CPApplicationPolicyManager_storage + 24);
  v5 = *(v1 + OBJC_IVAR___CPApplicationPolicyManager_storage + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___CPApplicationPolicyManager_storage), v4);
  (*(v5 + 40))(MEMORY[0x1E69E6370], 0xD00000000000001FLL, 0x80000001AEE33020, MEMORY[0x1E69E6370], v4, v5);
  v6 = (*(a1 + 9) == 2) | *(a1 + 9);
  os_unfair_lock_unlock(*(v3 + 16));
  *(a1 + 8) = v6 & 1;
  return CPApplicationPolicyManager.autoSharePlayEnabled.modify;
}

Swift::Int CPApplicationPolicyManager.InputError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

double CPApplicationPolicyManager.config.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR___CPApplicationPolicyManager_config);
  *a1 = result;
  return result;
}

uint64_t CPApplicationPolicyManager.delegates.getter()
{
  v1 = OBJC_IVAR___CPApplicationPolicyManager_delegates;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t CPApplicationPolicyManager.delegates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPApplicationPolicyManager_delegates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CPApplicationPolicyManager.protectedAppsObserver.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPApplicationPolicyManager_protectedAppsObserver;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, a1, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
}

uint64_t CPApplicationPolicyManager.protectedAppsObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPApplicationPolicyManager_protectedAppsObserver;
  swift_beginAccess();
  outlined assign with take of ProtectedAppsObserverProtocol?(a1, v1 + v3);
  return swift_endAccess();
}

id closure #1 in variable initialization expression of CPApplicationPolicyManager.contactsDataSourceCreationBlock(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695CE18]);

  return [v2 initWithConfiguration_];
}

uint64_t key path setter for CPApplicationPolicyManager.contactsDataSourceCreationBlock : CPApplicationPolicyManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF8);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNContactStoreConfiguration) -> (@out TUContactsDataSource), v5);
}

uint64_t CPApplicationPolicyManager.contactsDataSourceCreationBlock.getter()
{
  v1 = (v0 + OBJC_IVAR___CPApplicationPolicyManager_contactsDataSourceCreationBlock);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t CPApplicationPolicyManager.contactsDataSourceCreationBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CPApplicationPolicyManager_contactsDataSourceCreationBlock);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id CPApplicationPolicyManager.init(config:contactStore:featureFlags:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v57 = a3;
  v54 = a2;
  v55 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v53 = *(v55 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = *a1;
  v56 = *(a1 + 8);
  v14 = OBJC_IVAR___CPApplicationPolicyManager_lock;
  v52 = type metadata accessor for Lock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *v16 = 0;
  *&v3[v14] = v15;
  v51 = OBJC_IVAR___CPApplicationPolicyManager_queue;
  v50[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  *&v59[0] = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v17 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v53 + 104))(v8, *MEMORY[0x1E69E8090], v55);
  *&v3[v51] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = OBJC_IVAR___CPApplicationPolicyManager_delegates;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16DelegatesManagerCySo019CPApplicationPolicyD8Delegate_pGMd, &_s14CopresenceCore16DelegatesManagerCySo019CPApplicationPolicyD8Delegate_pGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x1E69E7CC0];
  v20 = swift_allocObject();
  v21 = swift_slowAlloc();
  *(v20 + 16) = v21;
  *v21 = 0;
  *(v19 + 24) = v20;
  *&v4[v18] = v19;
  v22 = &v4[OBJC_IVAR___CPApplicationPolicyManager_protectedAppsObserver];
  v23 = type metadata accessor for ProtectedAppsObserver();
  v24 = [objc_allocWithZone(v23) init];
  *(v22 + 3) = v23;
  *(v22 + 4) = &protocol witness table for ProtectedAppsObserver;
  *v22 = v24;
  v25 = &v4[OBJC_IVAR___CPApplicationPolicyManager_contactsDataSourceCreationBlock];
  *v25 = closure #1 in variable initialization expression of CPApplicationPolicyManager.contactsDataSourceCreationBlock;
  v25[1] = 0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
  *&v59[0] = 0;
  *(&v59[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v26 = *MEMORY[0x1E69D8DD0];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *&v59[0] = v27;
  *(&v59[0] + 1) = v29;
  MEMORY[0x1B2710020](0xD000000000000015, 0x80000001AEE38200);
  static NSUserDefaults.classProtectedStorage(suiteName:)(*&v59[0], *(&v59[0] + 1), v59);

  outlined init with take of ContiguousBytes(v59, &v4[OBJC_IVAR___CPApplicationPolicyManager_storage]);
  v30 = 2592000.0;
  if (!v56)
  {
    v30 = v13;
  }

  *&v4[OBJC_IVAR___CPApplicationPolicyManager_config] = v30;
  if (v17)
  {
    v31 = v17;
  }

  else
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  }

  *&v4[OBJC_IVAR___CPApplicationPolicyManager_contactStore] = v31;
  v32 = v57;
  if (v57)
  {
    swift_unknownObjectRetain();
    v33 = v32;
  }

  else
  {
    v34 = objc_allocWithZone(CPFeatureFlags);
    swift_unknownObjectRetain();
    v33 = [v34 init];
  }

  *&v4[OBJC_IVAR___CPApplicationPolicyManager_featureFlags] = v33;
  v35 = type metadata accessor for CPApplicationPolicyManager();
  v58.receiver = v4;
  v58.super_class = v35;
  swift_unknownObjectRetain();
  v36 = objc_msgSendSuper2(&v58, sel_init);
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 defaultCenter];
  [v39 addObserver:v38 selector:sel_handleCNContactStoreDidChangeNotification_ name:*MEMORY[0x1E695C3D8] object:0];

  if (v32)
  {
    if ([swift_unknownObjectRetain() appProtectionEnabled])
    {
      v40 = v38 + OBJC_IVAR___CPApplicationPolicyManager_protectedAppsObserver;
      swift_beginAccess();
      v41 = *(v40 + 24);
      if (v41)
      {
        v42 = *(v40 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v40, *(v40 + 24));
        v43 = *(v42 + 16);
        v44 = v38;
        v43(v38, &protocol witness table for CPApplicationPolicyManager, v41, v42);
      }

      swift_endAccess();
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Log.default);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1AEB26000, v46, v47, "[CPAppPolicyManager] Init", v48, 2u);
    MEMORY[0x1B27120C0](v48, -1, -1);
  }

  CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v38;
}

id CPApplicationPolicyManager.__deallocating_deinit()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1AEB26000, v4, v5, "[CPAppPolicyManager] Deinit", v6, 2u);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for CPApplicationPolicyManager();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t CPApplicationPolicyManager.applicationInfo(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR___CPApplicationPolicyManager_storage + 24);
  v8 = *(v3 + OBJC_IVAR___CPApplicationPolicyManager_storage + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR___CPApplicationPolicyManager_storage), v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  (*(v8 + 40))(&v16, v9, a1, a2, v9, v7, v8);
  result = v16;
  if (!v16)
  {
    v15 = 0;
    v14 = 0;
    v11 = 0;
LABEL_6:
    v13 = 0;
    v12 = 0;
    goto LABEL_7;
  }

  result = specialized CPAppPolicy.AuthorizedBundles.init(dictionary:)(v16, &v16);
  v11 = v18;
  if (!v18)
  {
    v15 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v13 = v19;
  v12 = v20;
  v15 = v16;
  v14 = v17;
  v21[0] = v17;
  v21[1] = v18;

  outlined destroy of String(v21);
  v22 = v12;
  result = outlined destroy of NSObject?(&v22, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
LABEL_7:
  *a3 = v15;
  a3[1] = v14;
  a3[2] = v11;
  a3[3] = v13;
  a3[4] = v12;
  return result;
}

uint64_t CPApplicationPolicyManager.persist(_:authorizationChanged:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___CPApplicationPolicyManager_storage + 24);
  v7 = *(v2 + OBJC_IVAR___CPApplicationPolicyManager_storage + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR___CPApplicationPolicyManager_storage), v6);
  v8 = CPAppPolicy.AuthorizedBundles.dictionaryRepresentation.getter();
  v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v16[0] = v8;
  (*(v7 + 8))(v16, *(a1 + 8), *(a1 + 16), v6, v7);
  result = outlined destroy of NSObject?(v16, &_sypSgMd, &_sypSgMR);
  if (a2)
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xC0))(result);
    v16[0] = *(a1 + 32);
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    v12 = *(a1 + 16);
    *(v11 + 24) = *a1;
    *(v11 + 40) = v12;
    *(v11 + 56) = *(a1 + 32);
    v13 = *(*v10 + 152);
    v14 = v3;

    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v15, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
    v13(partial apply for closure #1 in CPApplicationPolicyManager.persist(_:authorizationChanged:), v11);
  }

  return result;
}

void CPApplicationPolicyManager.updateAllowedHandles(_:for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v101 = a1;
  v105 = type metadata accessor for Date();
  v103 = *(v105 - 8);
  v7 = *(v103 + 64);
  v8 = MEMORY[0x1EEE9AC00](v105);
  v104 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v89 - v13;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x110))(v106, a2, a3);
  v15 = v107;
  if (v107)
  {
    v16 = v109;
    v110 = v109;
    if ((v108 & 1) == 0)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      __swift_project_value_buffer(v84, static Log.default);

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v111[0] = v88;
        *v87 = 136315138;
        *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v111);
        _os_log_impl(&dword_1AEB26000, v85, v86, "[CPAppPolicyManager] Not updating authorized handles list since the application %s isn't authorized", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        MEMORY[0x1B27120C0](v88, -1, -1);
        MEMORY[0x1B27120C0](v87, -1, -1);
      }

      outlined destroy of NSObject?(&v110, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);

      return;
    }

    v92 = v106[1];
    v93 = LOBYTE(v106[0]);
    v90 = a2;
    v94 = v107;
  }

  else
  {

    v93 = 2;
    v16 = MEMORY[0x1E69E7CC8];
    v90 = a2;
    v92 = a2;
    v94 = a3;
  }

  MEMORY[0x1EEE9AC00](v16);
  *(&v89 - 2) = v3;

  v17 = specialized _NativeDictionary.filter(_:)(v97, partial apply for closure #1 in CPApplicationPolicyManager.expiredHandles(from:), (&v89 - 4), specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  v18 = *(v17 + 16);
  v91 = v15;
  v98 = v14;
  v99 = v17;
  if (v18)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.default);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v111[0] = v23;
      *v22 = 136315138;
      v24 = Dictionary.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v111);
      v17 = v99;

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1AEB26000, v20, v21, "[CPAppPolicyManager] Pruning expired handles:%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1B27120C0](v23, -1, -1);
      MEMORY[0x1B27120C0](v22, -1, -1);
    }
  }

  v95 = a3;
  v96 = v4;
  v27 = 0;
  v28 = v17 + 64;
  v29 = 1 << *(v17 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v17 + 64);
  v32 = (v29 + 63) >> 6;
  v33 = (v103 + 56);
  v102 = (v103 + 32);
  v34 = v97;
  v35 = v105;
  while (v31)
  {
LABEL_21:
    v39 = (*(v17 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v31)))));
    v40 = *v39;
    v41 = v39[1];

    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
    LOBYTE(v40) = v43;

    if (v40)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111[0] = v34;
      v37 = v98;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v34 = v111[0];
      }

      v45 = *(v34[6] + 16 * v42 + 8);

      v35 = v105;
      (*(v103 + 32))(v37, v34[7] + *(v103 + 72) * v42, v105);
      specialized _NativeDictionary._delete(at:)(v42, v34);
      v36 = 0;
    }

    else
    {
      v36 = 1;
      v35 = v105;
      v37 = v98;
    }

    v17 = v99;
    v31 &= v31 - 1;
    (*v33)(v37, v36, 1, v35);
    outlined destroy of NSObject?(v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  while (1)
  {
    v38 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v38 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v38);
    ++v27;
    if (v31)
    {
      v27 = v38;
      goto LABEL_21;
    }
  }

  v46 = v101 + 56;
  v47 = 1 << *(v101 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v101 + 56);
  v27 = (v47 + 63) >> 6;
  v99 = v103 + 40;

  v50 = 0;
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_31:
  while (1)
  {
    v28 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      v70 = v97;
      if (v91)
      {

        v71 = _sSD4KeysV2eeoiySbAByxq__G_ADtFZSS_10Foundation4DateVTt1g5(v70, v34);

        if (v71)
        {
          v28 = v34;
          v72 = v95;
          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v73 = type metadata accessor for Logger();
          __swift_project_value_buffer(v73, static Log.default);

          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v111[0] = v77;
            *v76 = 136315138;
            *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v72, v111);
            _os_log_impl(&dword_1AEB26000, v74, v75, "[CPAppPolicyManager] Authorized handles for %s did not change, skipping update to clients", v76, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v77);
            MEMORY[0x1B27120C0](v77, -1, -1);
            MEMORY[0x1B27120C0](v76, -1, -1);
          }

          v78 = 0;
          goto LABEL_55;
        }
      }

      v28 = v34;
      v27 = v95;
      if (one-time initialization token for default != -1)
      {
        goto LABEL_65;
      }

      goto LABEL_52;
    }

    v49 = *(v46 + 8 * v28);
    ++v50;
    if (v49)
    {
      while (1)
      {
        v52 = (*(v101 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v49)))));
        v54 = *v52;
        v53 = v52[1];

        v55 = v100;
        Date.init()();
        v56 = *v102;
        (*v102)(v104, v55, v35);
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v111[0] = v34;
        v58 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v53);
        v60 = v34[2];
        v61 = (v59 & 1) == 0;
        v62 = __OFADD__(v60, v61);
        v63 = v60 + v61;
        if (v62)
        {
          goto LABEL_63;
        }

        v64 = v59;
        if (v34[3] >= v63)
        {
          if ((v57 & 1) == 0)
          {
            v69 = v58;
            specialized _NativeDictionary.copy()();
            v58 = v69;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, v57);
          v58 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v53);
          if ((v64 & 1) != (v65 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }
        }

        v49 &= v49 - 1;
        if (v64)
        {
          v51 = v58;

          v34 = v111[0];
          v35 = v105;
          (*(v103 + 40))(*(v111[0] + 56) + *(v103 + 72) * v51, v104, v105);
          v50 = v28;
          if (!v49)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v34 = v111[0];
          *(v111[0] + 8 * (v58 >> 6) + 64) |= 1 << v58;
          v66 = (v34[6] + 16 * v58);
          *v66 = v54;
          v66[1] = v53;
          v35 = v105;
          v56((v34[7] + *(v103 + 72) * v58), v104, v105);
          v67 = v34[2];
          v62 = __OFADD__(v67, 1);
          v68 = v67 + 1;
          if (v62)
          {
            goto LABEL_64;
          }

          v34[2] = v68;
          v50 = v28;
          if (!v49)
          {
            goto LABEL_31;
          }
        }

LABEL_30:
        v28 = v50;
      }
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  swift_once();
LABEL_52:
  v79 = type metadata accessor for Logger();
  __swift_project_value_buffer(v79, static Log.default);

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v111[0] = v83;
    *v82 = 136315138;
    *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v27, v111);
    _os_log_impl(&dword_1AEB26000, v80, v81, "[CPAppPolicyManager] Authorized handles for %s changed, sending update to clients", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x1B27120C0](v83, -1, -1);
    MEMORY[0x1B27120C0](v82, -1, -1);
  }

  v78 = 1;
LABEL_55:
  LOBYTE(v111[0]) = v93;
  v111[1] = v92;
  v111[2] = v94;
  v112 = 1;
  v113 = v28;

  CPApplicationPolicyManager.persist(_:authorizationChanged:)(v111, v78);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

BOOL closure #1 in CPApplicationPolicyManager.expiredHandles(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = type metadata accessor for DateInterval();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v13, a3, v6);
  v19 = *(a4 + OBJC_IVAR___CPApplicationPolicyManager_config);
  DateInterval.init(start:duration:)();
  Date.init()();
  DateInterval.end.getter();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  LOBYTE(a4) = dispatch thunk of static Comparable.< infix(_:_:)();
  v20 = *(v7 + 8);
  v20(v11, v6);
  v20(v13, v6);
  (*(v15 + 8))(v18, v14);
  return (a4 & 1) == 0;
}

uint64_t CPApplicationPolicyManager.fetchAndStoreContactIdentifiers(for:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR___CPApplicationPolicyManager_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = partial apply for closure #1 in CPApplicationPolicyManager.fetchAndStoreContactIdentifiers(for:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_40;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in CPApplicationPolicyManager.fetchAndStoreContactIdentifiers(for:)(void *a1, void *a2)
{
  v168[5] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 1);
  v165 = v4;
  v166 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v154 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v154 - v17;
  v19 = [objc_opt_self() tu:a1 contactStoreConfigurationForConversation:?];
  v20 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xF0);
  v164 = a2;
  v21 = v20();
  v22 = v21(v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AEE07B40;
  *(v23 + 32) = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation, 0x1E69D8B20);
  v24 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  v26 = Array._bridgeToObjectiveC()().super.isa;
  v168[0] = 0;
  v27 = [v22 tu:isa contactsByRemoteConversationMemberForConversations:v26 keyDescriptors:v168 error:?];

  v28 = v168[0];
  if (!v27)
  {
    v163 = v16;
    v164 = v18;
    v162 = v9;
    v119 = v11;
    v120 = v168[0];
    v121 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    __swift_project_value_buffer(v122, static Log.default);
    v123 = v24;
    v124 = v121;
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();

    v127 = os_log_type_enabled(v125, v126);
    v128 = v164;
    if (v127)
    {
      v129 = v119;
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v168[0] = v131;
      *v130 = 136315394;
      v132 = [v123 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v133 = v165;
      v134 = v166;
      (*(v166 + 56))(v128, 0, 1, v165);
      v135 = v163;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v128, v163, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v134 + 48))(v135, 1, v133) == 1)
      {
        v136 = 0xE300000000000000;
        v137 = 7104878;
      }

      else
      {
        (*(v134 + 32))(v129, v135, v133);
        (*(v134 + 16))(v162, v129, v133);
        v138 = String.init<A>(reflecting:)();
        v139 = v129;
        v137 = v138;
        v136 = v140;
        (*(v134 + 8))(v139, v133);
      }

      outlined destroy of NSObject?(v128, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v136, v168);

      *(v130 + 4) = v141;
      *(v130 + 12) = 2080;
      v167 = v121;
      v142 = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v143 = String.init<A>(reflecting:)();
      v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v144, v168);

      *(v130 + 14) = v145;
      _os_log_impl(&dword_1AEB26000, v125, v126, "[CPAppPolicyManager] Failed to fetch Contacts for converation with UUID %s, error: %s", v130, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v131, -1, -1);
      MEMORY[0x1B27120C0](v130, -1, -1);
    }

    else
    {
    }

    goto LABEL_71;
  }

  v162 = v22;
  v163 = v19;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9CNContactCGMd, &_sSaySo9CNContactCGMR);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v28;

  v31 = v29;
  v32 = 0;
  isUniquelyReferenced_nonNull_native = 0;
  v34 = (v29 + 64);
  v35 = 1 << *(v29 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v29 + 64);
  v38 = (v35 + 63) >> 6;
  v39 = MEMORY[0x1E69E7CC8];
  v40 = &selRef_audioToken;
LABEL_5:
  if (v37)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v41 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (v41 >= v38)
    {
      break;
    }

    v37 = v34[v41];
    ++v32;
    if (v37)
    {
      v32 = v41;
LABEL_10:
      v42 = (v32 << 9) | (8 * __clz(__rbit64(v37)));
      v43 = *(*(v31 + 48) + v42);
      v44 = *(*(v31 + 56) + v42);
      if (v44 >> 62)
      {
        v82 = *(*(v31 + 56) + v42);
        v83 = v31;
        v84 = __CocoaSet.count.getter();
        v31 = v83;
        v45 = v84;
        v44 = v82;
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 &= v37 - 1;
      if (v45)
      {
        v155 = v38;
        v156 = v34;
        v165 = isUniquelyReferenced_nonNull_native;
        v157 = v31;
        if (v45 < 1)
        {
          __break(1u);
        }

        v160 = v44 & 0xC000000000000001;
        v46 = v44;
        v161 = v43;

        v47 = v46;
        v48 = 0;
        v158 = v45;
        v159 = v46;
        while (1)
        {
          v166 = v48;
          if (v160)
          {
            v51 = MEMORY[0x1B2710B10]();
          }

          else
          {
            v51 = *(v47 + 8 * v48 + 32);
          }

          v52 = v51;
          v53 = [v51 v40[38]];
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          if (*(v39 + 16))
          {
            v57 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
            v59 = v58;

            v60 = MEMORY[0x1E69E7CC0];
            if (v59)
            {
              v61 = *(*(v39 + 56) + 8 * v57);
            }
          }

          else
          {

            v60 = MEMORY[0x1E69E7CC0];
          }

          v168[0] = v60;
          v62 = [v161 handle];
          MEMORY[0x1B2710150]();
          if (*((v168[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v168[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v81 = *((v168[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v63 = v168[0];
          v64 = v52;
          v65 = [v52 v40[38]];
          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v167 = v39;
          v70 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v68);
          v71 = v39;
          v72 = *(v39 + 16);
          v73 = (v69 & 1) == 0;
          v74 = v72 + v73;
          if (__OFADD__(v72, v73))
          {
            goto LABEL_74;
          }

          v39 = v69;
          if (*(v71 + 24) >= v74)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              isUniquelyReferenced_nonNull_native = v167;
              if ((v69 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              isUniquelyReferenced_nonNull_native = v167;
              if ((v39 & 1) == 0)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v74, isUniquelyReferenced_nonNull_native);
            v75 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v68);
            if ((v39 & 1) != (v76 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v70 = v75;
            isUniquelyReferenced_nonNull_native = v167;
            if ((v39 & 1) == 0)
            {
LABEL_33:
              *(isUniquelyReferenced_nonNull_native + 8 * (v70 >> 6) + 64) |= 1 << v70;
              v77 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v70);
              *v77 = v66;
              v77[1] = v68;
              *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v70) = v63;
              v78 = *(isUniquelyReferenced_nonNull_native + 16);
              v79 = __OFADD__(v78, 1);
              v80 = v78 + 1;
              if (v79)
              {
                goto LABEL_75;
              }

              v39 = isUniquelyReferenced_nonNull_native;
              *(isUniquelyReferenced_nonNull_native + 16) = v80;

              goto LABEL_16;
            }
          }

          v49 = *(isUniquelyReferenced_nonNull_native + 56);
          v50 = *(v49 + 8 * v70);
          *(v49 + 8 * v70) = v63;

          v39 = isUniquelyReferenced_nonNull_native;
LABEL_16:
          v48 = v166 + 1;
          v47 = v159;
          v40 = &selRef_audioToken;
          if (v158 == (v166 + 1))
          {

            v34 = v156;
            v31 = v157;
            isUniquelyReferenced_nonNull_native = v165;
            v38 = v155;
            goto LABEL_5;
          }
        }
      }

      goto LABEL_5;
    }
  }

  if (one-time initialization token for default == -1)
  {
    goto LABEL_40;
  }

LABEL_76:
  swift_once();
LABEL_40:
  v85 = type metadata accessor for Logger();
  v155 = __swift_project_value_buffer(v85, static Log.default);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v168[0] = v89;
    *v88 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
    v90 = Dictionary.description.getter();
    v92 = v91;

    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v168);

    *(v88 + 4) = v93;
    _os_log_impl(&dword_1AEB26000, v86, v87, "[CPAppPolicyManager] Updating CPAppPolicy.ContactHandles with %s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v89);
    MEMORY[0x1B27120C0](v89, -1, -1);
    MEMORY[0x1B27120C0](v88, -1, -1);
  }

  v94 = v39 + 64;
  v95 = 1 << *(v39 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  v97 = v39;
  v39 = v96 & *(v39 + 64);
  v158 = (v164 + OBJC_IVAR___CPApplicationPolicyManager_storage);
  v159 = OBJC_IVAR___CPApplicationPolicyManager_lock;
  v98 = (v95 + 63) >> 6;
  v161 = v97;

  v99 = 0;
  v100 = v163;
  v157 = v98;
  v160 = v94;
  while (1)
  {
    if (!v39)
    {
      while (1)
      {
        v107 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          goto LABEL_73;
        }

        if (v107 >= v98)
        {
          goto LABEL_58;
        }

        v39 = *(v94 + 8 * v107);
        ++v99;
        if (v39)
        {
          v99 = v107;
          break;
        }
      }
    }

    v108 = __clz(__rbit64(v39)) | (v99 << 6);
    v109 = (*(v161 + 6) + 16 * v108);
    v110 = *v109;
    v111 = v109[1];
    v112 = *(*(v161 + 7) + 8 * v108);
    swift_bridgeObjectRetain_n();

    v113 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v112);

    v114 = specialized CPApplicationPolicyManager.hashedHandles(from:)(v113);
    v165 = isUniquelyReferenced_nonNull_native;
    if (isUniquelyReferenced_nonNull_native)
    {

      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v168[0] = v149;
        *v148 = 136315138;
        v167 = v112;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
        v150 = String.init<A>(reflecting:)();
        v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v151, v168);

        *(v148 + 4) = v152;
        _os_log_impl(&dword_1AEB26000, v146, v147, "[CPAppPolicyManager] Error getting normalized handles from %s", v148, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v149);
        MEMORY[0x1B27120C0](v149, -1, -1);
        MEMORY[0x1B27120C0](v148, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      goto LABEL_71;
    }

    v115 = v114;
    v166 = v110;

    v116 = *(v115 + 16);
    if (!v116)
    {

      v101 = MEMORY[0x1E69E7CC0];
      goto LABEL_46;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v101 = swift_allocObject();
    v117 = _swift_stdlib_malloc_size(v101);
    v118 = v117 - 32;
    if (v117 < 32)
    {
      v118 = v117 - 17;
    }

    v101[2] = v116;
    v101[3] = 2 * (v118 >> 4);
    v156 = specialized Sequence._copySequenceContents(initializing:)(v168, v101 + 4, v116, v115);
    v100 = v168[1];

    outlined consume of Set<String>.Iterator._Variant();
    if (v156 != v116)
    {
      break;
    }

LABEL_46:
    v39 &= v39 - 1;
    v102 = *(v164 + v159);
    os_unfair_lock_lock(*(v102 + 16));
    v103 = v158[3];
    v104 = v158[4];
    __swift_project_boxed_opaque_existential_1(v158, v103);
    v105 = v166;
    v106 = CPAppPolicy.ContactHandles.dictionaryRepresentation.getter(v166, v111, v101);

    v168[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v168[0] = v106;
    (*(v104 + 8))(v168, v105, v111, v103, v104);

    outlined destroy of NSObject?(v168, &_sypSgMd, &_sypSgMR);
    os_unfair_lock_unlock(*(v102 + 16));
    v100 = v163;
    isUniquelyReferenced_nonNull_native = v165;
    v94 = v160;
    v98 = v157;
  }

  __break(1u);
LABEL_58:

  swift_unknownObjectRelease();

LABEL_71:
  v153 = *MEMORY[0x1E69E9840];
}

uint64_t CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()()
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
  v14[1] = *&v0[OBJC_IVAR___CPApplicationPolicyManager_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_47_1;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

void closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()(char *a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&a1[OBJC_IVAR___CPApplicationPolicyManager_lock];
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *&a1[OBJC_IVAR___CPApplicationPolicyManager_storage + 24];
  v8 = *&a1[OBJC_IVAR___CPApplicationPolicyManager_storage + 32];
  v82 = &a1[OBJC_IVAR___CPApplicationPolicyManager_storage];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR___CPApplicationPolicyManager_storage], v7);
  v9 = *(v8 + 40);
  v83 = "CPAppPolicy.AutoSharePlayToggle";
  v9(&v91, MEMORY[0x1E6969080], 0xD000000000000026, 0x80000001AEE33040, MEMORY[0x1E6969080], v7, v8);
  v84 = v6;
  os_unfair_lock_unlock(*(v6 + 16));
  v10 = *(&v91 + 1);
  v11 = v91;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Log.default);
  outlined copy of Data?(v11, v10);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  outlined consume of Data?(v11, v10);
  v16 = os_log_type_enabled(v14, v15);
  v17 = v10 >> 60;
  v86 = v11;
  v87 = v10;
  v85 = v13;
  if (v16)
  {
    v18 = 7104878;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v90[0] = v20;
    *v19 = 136315138;
    if (v17 <= 0xE && (isa = Data._bridgeToObjectiveC()().super.isa, v22 = [(objc_class *)isa tu_URLSafeBase64EncodedString], isa, v22))
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      *&v91 = v23;
      *(&v91 + 1) = v25;
      v18 = String.init<A>(reflecting:)();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v27, v90);

    *(v19 + 4) = v28;
    _os_log_impl(&dword_1AEB26000, v14, v15, "[CPAppPolicyManager] Read CPAppPolicy.ContactsChangeHistoryToken: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);

    v11 = v86;
    v10 = v87;
  }

  else
  {
  }

  v29 = *&a1[OBJC_IVAR___CPApplicationPolicyManager_contactStore];
  v30 = [objc_allocWithZone(MEMORY[0x1E695CD40]) init];
  if (v17 <= 0xE)
  {
    outlined copy of Data._Representation(v11, v10);
    v31 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v11, v10);
  }

  else
  {
    v31 = 0;
  }

  [v30 setStartingToken_];

  *&v91 = 0;
  v32 = [v29 tu:v30 enumeratorForChangeHistoryFetchRequest:&v91 error:?];
  if (v32)
  {
    v33 = v32;
    v79 = v30;
    v34 = v91;
    v35 = [v33 currentHistoryToken];
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    v40 = type metadata accessor for ChangeHistoryProcessor();
    v41 = objc_allocWithZone(v40);
    v42 = &v41[OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted];
    *v42 = partial apply for closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory();
    v42[1] = v39;
    v89.receiver = v41;
    v89.super_class = v40;
    v43 = a1;
    v44 = objc_msgSendSuper2(&v89, sel_init);
    v78 = v33;
    v45 = [v33 value];
    NSEnumerator.makeIterator()();

    NSFastEnumerationIterator.next()();
    while (v92)
    {
      outlined init with take of Any(&v91, v90);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNChangeHistoryEvent, 0x1E695CD38);
      if (swift_dynamicCast())
      {
        v46 = v88;
        [v88 acceptEventVisitor_];
      }

      NSFastEnumerationIterator.next()();
    }

    (*(v80 + 8))(v5, v81);
    outlined copy of Data._Representation(v36, v38);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    outlined consume of Data._Representation(v36, v38);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v90[0] = v50;
      *v49 = 136315138;
      v51 = Data._bridgeToObjectiveC()().super.isa;
      v52 = [(objc_class *)v51 tu_URLSafeBase64EncodedString];

      if (v52)
      {
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        *&v91 = v53;
        *(&v91 + 1) = v55;
        v56 = String.init<A>(reflecting:)();
        v58 = v57;
      }

      else
      {
        v56 = 7104878;
        v58 = 0xE300000000000000;
      }

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v90);

      *(v49 + 4) = v70;
      _os_log_impl(&dword_1AEB26000, v47, v48, "[CPAppPolicyManager] Writing CPAppPolicy.ContactsChangeHistoryToken:%s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1B27120C0](v50, -1, -1);
      MEMORY[0x1B27120C0](v49, -1, -1);
    }

    v71 = v82;
    v72 = MEMORY[0x1E6969080];
    v73 = v84;
    os_unfair_lock_lock(*(v84 + 16));
    v74 = *(v71 + 3);
    v75 = *(v71 + 4);
    __swift_project_boxed_opaque_existential_1(v71, v74);
    v92 = v72;
    *&v91 = v36;
    *(&v91 + 1) = v38;
    v76 = *(v75 + 8);
    outlined copy of Data._Representation(v36, v38);
    v76(&v91, 0xD000000000000026, v83 | 0x8000000000000000, v74, v75);
    outlined destroy of NSObject?(&v91, &_sypSgMd, &_sypSgMR);
    os_unfair_lock_unlock(*(v73 + 16));
    outlined consume of Data?(v86, v87);

    outlined consume of Data._Representation(v36, v38);
  }

  else
  {
    v59 = v91;
    v60 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data?(v11, v10);

    v61 = v60;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v91 = v65;
      *v64 = 136315138;
      *&v90[0] = v60;
      v66 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v67 = String.init<A>(reflecting:)();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v91);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_1AEB26000, v62, v63, "[CPAppPolicyManager] Failed to fetch contacts error: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1B27120C0](v65, -1, -1);
      MEMORY[0x1B27120C0](v64, -1, -1);
    }

    else
    {
    }
  }

  v77 = *MEMORY[0x1E69E9840];
}

void closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v13);
    _os_log_impl(&dword_1AEB26000, v7, v8, "[CPAppPolicyManager] Received deleted contactIdentifier: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v11 = *(a3 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v11 + 16));
  closure #1 in closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()(a3, a1, a2);
  v12 = *(v11 + 16);

  os_unfair_lock_unlock(v12);
}

uint64_t closure #1 in closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = (a1 + OBJC_IVAR___CPApplicationPolicyManager_storage);
  v8 = v7[3];
  v9 = v7[4];
  v64 = v7;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v11 = *(v9 + 40);
  v58 = v10;
  v11(v66, v10, a2, a3, v10, v8, v9);
  result = v66[0];
  if (v66[0])
  {
    result = specialized CPAppPolicy.ContactHandles.init(dictionary:)(v66[0]);
    if (v13)
    {
      v15 = v13;
      v16 = v14;
      v69 = result;
      if (one-time initialization token for default != -1)
      {
LABEL_20:
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.default);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      v20 = os_log_type_enabled(v18, v19);
      v57 = v16;
      v53 = a2;
      v54 = a3;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v66[0] = v22;
        *v21 = 136315138;

        v23 = v19;
        v24 = CPAppPolicy.ContactHandles.description.getter(v69, v15, v16);
        v26 = v25;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v66);

        *(v21 + 4) = v27;
        _os_log_impl(&dword_1AEB26000, v18, v23, "[CPAppPolicyManager] Contact deleted, removing %s and associated handles from AuthorizedBundles", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1B27120C0](v22, -1, -1);
        MEMORY[0x1B27120C0](v21, -1, -1);
      }

      v28 = v64[3];
      v29 = v64[4];
      __swift_project_boxed_opaque_existential_1(v64, v28);
      v30 = (*(v29 + 56))(v58, v58, v28, v29);
      v31 = v4;
      v4 = specialized Dictionary.compactMapValues<A>(_:)(v30);
      v69 = v31;

      v32 = 0;
      v33 = *(v4 + 64);
      v55 = v4 + 64;
      v56 = v4;
      v34 = 1 << *(v4 + 32);
      v35 = -1;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      a3 = v35 & v33;
      v36 = (v34 + 63) >> 6;
      if ((v35 & v33) != 0)
      {
        do
        {
          v37 = v32;
          a2 = v57;
LABEL_15:
          v38 = __clz(__rbit64(a3));
          a3 &= a3 - 1;
          v39 = v38 | (v37 << 6);
          v40 = *(v56 + 56);
          v41 = (*(v56 + 48) + 16 * v39);
          v42 = *v41;
          v62 = v41[1];
          v63 = v42;
          v43 = (v40 + 40 * v39);
          v61 = *v43;
          v44 = *(v43 + 2);
          v60 = *(v43 + 1);
          v59 = v43[24];
          v45 = *(v43 + 4);
          MEMORY[0x1EEE9AC00](v62);
          v52[2] = a2;

          v47 = v69;
          v16 = specialized _NativeDictionary.filter(_:)(v46, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory(), v52, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
          v69 = v47;

          v48 = v64[3];
          v4 = v64[4];
          v15 = __swift_project_boxed_opaque_existential_1(v64, v48);
          LOBYTE(v66[0]) = v61;
          v66[1] = v60;
          v66[2] = v44;
          v67 = v59;
          v68 = v16;
          v49 = CPAppPolicy.AuthorizedBundles.dictionaryRepresentation.getter();

          v65[3] = v58;
          v65[0] = v49;
          (*(v4 + 8))(v65, v63, v62, v48, v4);

          outlined destroy of NSObject?(v65, &_sypSgMd, &_sypSgMR);
        }

        while (a3);
      }

      a2 = v57;
      while (1)
      {
        v37 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_20;
        }

        if (v37 >= v36)
        {
          break;
        }

        a3 = *(v55 + 8 * v37);
        ++v32;
        if (a3)
        {
          v32 = v37;
          goto LABEL_15;
        }
      }

      v50 = v64[3];
      v51 = v64[4];
      __swift_project_boxed_opaque_existential_1(v64, v50);
      return (*(v51 + 24))(v53, v54, v50, v51);
    }
  }

  return result;
}

id ChangeHistoryProcessor.__allocating_init(onContactDeleted:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Bool __swiftcall CPApplicationPolicyManager.isAuthorized(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))())
  {
    v5 = (*((*v4 & *v1) + 0x98))();
    if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = v8;
    }

    else
    {
      v8 = 0;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v11.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    if (v8)
    {
      v10 = static NSObject.== infix(_:_:)();

      v11.super.super.isa = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t CPApplicationPolicyManager.addDelegate(_:queue:)(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC0))();
  (*(*v5 + 160))(a1, a2);
}

void CPApplicationPolicyManager.shouldAutoLaunchApp(for:on:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))())
  {
    v7 = [a1 bundleIdentifier];
    if (!v7)
    {
      if (one-time initialization token for default != -1)
      {
LABEL_90:
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Log.default);
      v28 = a1;
      v23 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v23, v29))
      {
        goto LABEL_24;
      }

      v25 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v116 = v28;
      v117[0] = v30;
      *v25 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v31 = v28;
      v32 = String.init<A>(reflecting:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v117);

      *(v25 + 4) = v34;
      v35 = "[CPAppPolicyManager] Unable to auto-launch app for activity with missing bundle identifier: %s";
LABEL_22:
      _os_log_impl(&dword_1AEB26000, v23, v29, v35, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1B27120C0](v30, -1, -1);
      goto LABEL_23;
    }

    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if ((*((*v6 & *v2) + 0xA0))())
    {
      if (specialized CPApplicationPolicyManager.doesActivityTypeSupportAutoLaunch(activity:)(a1))
      {
        v109 = v9;
        v110 = v11;
        v112 = a1;
        v12 = [a2 mergedRemoteMembers];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
        v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        specialized Sequence.compactMap<A>(_:)(v13, &selRef_handle);
        v15 = v14;

        v113 = v15;
        v116 = v15;
        v111 = a2;
        v16 = [a2 lightweightMembers];
        v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v17 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v17 = v117[0];
          v18 = v117[1];
          v19 = v117[2];
          v20 = v117[3];
          v21 = v117[4];
        }

        else
        {
          v43 = -1 << *(v17 + 32);
          v18 = v17 + 56;
          v19 = ~v43;
          v44 = -v43;
          if (v44 < 64)
          {
            v45 = ~(-1 << v44);
          }

          else
          {
            v45 = -1;
          }

          v21 = v45 & *(v17 + 56);

          v20 = 0;
        }

        while (1)
        {
          if (v17 < 0)
          {
            v50 = __CocoaSet.Iterator.next()();
            if (!v50)
            {
              goto LABEL_39;
            }

            v114 = v50;
            swift_dynamicCast();
            v46 = v115;
            if (!v115)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v48 = v20;
            v49 = v21;
            if (!v21)
            {
              while (1)
              {
                v20 = v48 + 1;
                if (__OFADD__(v48, 1))
                {
                  break;
                }

                if (v20 >= ((v19 + 64) >> 6))
                {
                  goto LABEL_39;
                }

                v49 = *(v18 + 8 * v20);
                ++v48;
                if (v49)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

LABEL_29:
            v21 = (v49 - 1) & v49;
            v46 = *(*(v17 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v49)))));
            if (!v46)
            {
LABEL_39:
              outlined consume of Set<String>.Iterator._Variant();

              v51 = [v111 lightweightMembers];
              v52 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

              specialized Sequence.compactMap<A>(_:)(v52, &selRef_handle);
              v54 = v53;

              v114 = v113;
              specialized Array.append<A>(contentsOf:)(v54);
              v55 = v113;
              v115 = v113;
              v56 = [v111 localMember];
              if (v56)
              {
                v57 = v56;
                v58 = [v56 handle];
                MEMORY[0x1B2710150]();
                v59 = v112;
                if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v108 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v55 = v115;
              }

              else
              {
                v59 = v112;
              }

              v60 = [v59 originator];
              v61 = v55 >> 62;
              if (v60)
              {
                v62 = v60;
                if (v61)
                {
                  v63 = __CocoaSet.count.getter();
                }

                else
                {
                  v63 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v64 = 0;
                while (v63 != v64)
                {
                  if ((v55 & 0xC000000000000001) != 0)
                  {
                    v65 = MEMORY[0x1B2710B10](v64, v55);
                  }

                  else
                  {
                    if (v64 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_86;
                    }

                    v65 = *(v55 + 8 * v64 + 32);
                  }

                  v66 = v65;
                  if (__OFADD__(v64, 1))
                  {
                    goto LABEL_85;
                  }

                  v67 = [v65 isEquivalentToHandle_];

                  ++v64;
                  if (v67)
                  {

                    v59 = v112;
                    v61 = v55 >> 62;
                    goto LABEL_60;
                  }
                }

                if (one-time initialization token for default != -1)
                {
                  swift_once();
                }

                v68 = type metadata accessor for Logger();
                __swift_project_value_buffer(v68, static Log.default);
                v69 = v62;
                v23 = Logger.logObject.getter();
                v70 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v23, v70))
                {
                  v71 = swift_slowAlloc();
                  v72 = swift_slowAlloc();
                  v73 = swift_slowAlloc();
                  v114 = v73;
                  *v71 = 138412546;
                  *(v71 + 4) = v69;
                  *v72 = v62;
                  *(v71 + 12) = 2080;
                  v74 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
                  v75 = v69;

                  v77 = MEMORY[0x1B2710180](v76, v74);
                  v79 = v78;

                  v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v114);

                  *(v71 + 14) = v80;
                  _os_log_impl(&dword_1AEB26000, v23, v70, "[CPAppPolicyManager] Activity originator %@ can't be found in the conversation's members %s. Not allowing BG launch", v71, 0x16u);
                  outlined destroy of NSObject?(v72, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  MEMORY[0x1B27120C0](v72, -1, -1);
                  __swift_destroy_boxed_opaque_existential_1Tm(v73);
                  MEMORY[0x1B27120C0](v73, -1, -1);
                  MEMORY[0x1B27120C0](v71, -1, -1);

                  return;
                }
              }

              else
              {
LABEL_60:
                v81 = [v59 trustedFromHandle];
                if (!v81)
                {
LABEL_76:
                  v100 = [v111 lightweightMembers];
                  v101 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

                  specialized Sequence.compactMap<A>(_:)(v101, &selRef_lightweightPrimary);
                  v103 = v102;

                  specialized Array.append<A>(contentsOf:)(v103);
                  v104 = *(v3 + OBJC_IVAR___CPApplicationPolicyManager_lock);
                  os_unfair_lock_lock(*(v104 + 16));
                  specialized closure #7 in CPApplicationPolicyManager.shouldAutoLaunchApp(for:on:)(v3, v109, v110, &v116, v59, &v114);

                  os_unfair_lock_unlock(*(v104 + 16));

                  return;
                }

                v82 = v81;
                if (v61)
                {
                  v83 = __CocoaSet.count.getter();
                }

                else
                {
                  v83 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                a1 = (v55 & 0xC000000000000001);

                v84 = 0;
                while (v83 != v84)
                {
                  if (a1)
                  {
                    v85 = MEMORY[0x1B2710B10](v84, v55);
                  }

                  else
                  {
                    if (v84 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_89;
                    }

                    v85 = *(v55 + 8 * v84 + 32);
                  }

                  v86 = v85;
                  if (__OFADD__(v84, 1))
                  {
                    __break(1u);
LABEL_89:
                    __break(1u);
                    goto LABEL_90;
                  }

                  v87 = [v85 isEquivalentToHandle_];

                  ++v84;
                  if (v87)
                  {

                    v59 = v112;
                    goto LABEL_76;
                  }
                }

                if (one-time initialization token for default != -1)
                {
                  swift_once();
                }

                v88 = type metadata accessor for Logger();
                __swift_project_value_buffer(v88, static Log.default);
                v89 = v82;
                v23 = Logger.logObject.getter();
                v90 = static os_log_type_t.fault.getter();

                if (os_log_type_enabled(v23, v90))
                {
                  v91 = swift_slowAlloc();
                  v92 = swift_slowAlloc();
                  v93 = swift_slowAlloc();
                  v114 = v93;
                  *v91 = 138412546;
                  *(v91 + 4) = v89;
                  *v92 = v82;
                  *(v91 + 12) = 2080;
                  v94 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);

                  v95 = v89;
                  v96 = MEMORY[0x1B2710180](v55, v94);
                  v98 = v97;

                  v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v114);

                  *(v91 + 14) = v99;
                  _os_log_impl(&dword_1AEB26000, v23, v90, "[CPAppPolicyManager] Activity's trusted fromHandle %@ can't be found in the conversation's members %s. Not allowing BG launch", v91, 0x16u);
                  outlined destroy of NSObject?(v92, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  MEMORY[0x1B27120C0](v92, -1, -1);
                  __swift_destroy_boxed_opaque_existential_1Tm(v93);
                  MEMORY[0x1B27120C0](v93, -1, -1);
                  MEMORY[0x1B27120C0](v91, -1, -1);

                  return;
                }
              }

              goto LABEL_24;
            }
          }

          v47 = [v46 isValidated];

          if ((v47 & 1) == 0)
          {

            outlined consume of Set<String>.Iterator._Variant();

            if (one-time initialization token for default != -1)
            {
              swift_once();
            }

            v105 = type metadata accessor for Logger();
            __swift_project_value_buffer(v105, static Log.default);
            v23 = Logger.logObject.getter();
            v106 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v23, v106))
            {
              v107 = swift_slowAlloc();
              *v107 = 0;
              _os_log_impl(&dword_1AEB26000, v23, v106, "[CPAppPolicyManager] Conversation contains non-validated lightweight member. Not allowing BG launch", v107, 2u);
              MEMORY[0x1B27120C0](v107, -1, -1);
            }

            goto LABEL_24;
          }
        }
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Log.default);
      v38 = a1;
      v23 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v23, v29))
      {
        goto LABEL_24;
      }

      v25 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v116 = v38;
      v117[0] = v30;
      *v25 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v39 = v38;
      v40 = String.init<A>(reflecting:)();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v117);

      *(v25 + 4) = v42;
      v35 = "[CPAppPolicyManager] Auto-launch not supported for activity: %s";
      goto LABEL_22;
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Log.default);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_24;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "[CPAppPolicyManager] Not allowing auto-launch because auto-SharePlay is disabled";
LABEL_17:
    _os_log_impl(&dword_1AEB26000, v23, v24, v26, v25, 2u);
LABEL_23:
    MEMORY[0x1B27120C0](v25, -1, -1);
    goto LABEL_24;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_87:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.default);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "[CPAppPolicyManager] Not allowing auto-launch for unsupported platform";
    goto LABEL_17;
  }

LABEL_24:
}

void specialized closure #7 in CPApplicationPolicyManager.shouldAutoLaunchApp(for:on:)(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, _BYTE *a6@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))(&v70, a2, a3);
  v13 = v72;
  if (!v72)
  {
    *a6 = 0;
    return;
  }

  v65 = a6;
  v14 = v71;
  v15 = v74;
  if ((v73 & 1) == 0)
  {
    v69[0] = v71;
    v69[1] = v72;
    outlined destroy of String(v69);
    v67[0] = v15;
    outlined destroy of NSObject?(v67, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.default);

    v21 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v21, v30))
    {
      goto LABEL_15;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v75 = v32;
    *v31 = 136315138;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v75);
    _os_log_impl(&dword_1AEB26000, v21, v30, "[CPAppPolicyManager] Application %s is not authorized", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1B27120C0](v32, -1, -1);
    v28 = v31;
    goto LABEL_14;
  }

  swift_beginAccess();
  v16 = *a4;

  v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v17);

  v19 = specialized CPApplicationPolicyManager.hashedHandles(from:)(v18);
  if (v6)
  {

    v75 = v14;
    v76 = v13;
    outlined destroy of String(&v75);
    v77 = v15;
    outlined destroy of NSObject?(&v77, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);

LABEL_5:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.default);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_15;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v68 = v24;
    *v23 = 136315138;
    swift_beginAccess();
    v66 = *a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v68);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1AEB26000, v21, v22, "[CPAppPolicyManager] Error getting normalized handles from handles: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1B27120C0](v24, -1, -1);
    v28 = v23;
LABEL_14:
    MEMORY[0x1B27120C0](v28, -1, -1);
LABEL_15:

    *v65 = 0;
    return;
  }

  v33 = v19;

  if (!*(v33 + 16))
  {
    v75 = v14;
    v76 = v13;
    outlined destroy of String(&v75);
    v77 = v15;
    outlined destroy of NSObject?(&v77, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);

    goto LABEL_5;
  }

  v75 = v15;
  MEMORY[0x1EEE9AC00](v34);
  v58[2] = a1;
  v35 = specialized _NativeDictionary.filter(_:)(v15, closure #1 in CPApplicationPolicyManager.expiredHandles(from:)partial apply, v58, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = __swift_project_value_buffer(v36, static Log.default);

  v64 = v37;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  v63 = v39;
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v60 = v40;
    v61 = swift_slowAlloc();
    v67[0] = v61;
    *v40 = 136315138;
    type metadata accessor for Date();
    v41 = Dictionary.description.getter();
    v62 = v35;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v67);
    v59 = v38;
    v44 = v43;
    v35 = v62;

    v45 = v60;
    *(v60 + 1) = v44;
    v46 = v38;
    v47 = v45;
    _os_log_impl(&dword_1AEB26000, v46, v63, "[CPAppPolicyManager] Expired handles: %s", v45, 0xCu);
    v48 = v61;
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1B27120C0](v48, -1, -1);
    MEMORY[0x1B27120C0](v47, -1, -1);
  }

  else
  {
  }

  v50 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS10Foundation4DateV_GTt0g5(v49);
  v67[0] = v14;
  v67[1] = v13;
  outlined destroy of String(v67);
  outlined destroy of NSObject?(&v75, &_sSDySS10Foundation4DateVGMd, &_sSDySS10Foundation4DateVGMR);
  v77 = v50;
  specialized Set._subtract<A>(_:)(v35);

  v51 = specialized Set.isSubset(of:)(v77, v33);

  v52 = a5;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 67109378;
    *(v55 + 4) = v51 & 1;
    *(v55 + 8) = 2112;
    *(v55 + 10) = v52;
    *v56 = v52;
    v57 = v52;
    _os_log_impl(&dword_1AEB26000, v53, v54, "[CPAppPolicyManager] Application allowed to auto-launch: %{BOOL}d for activity: %@", v55, 0x12u);
    outlined destroy of NSObject?(v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v56, -1, -1);
    MEMORY[0x1B27120C0](v55, -1, -1);
  }

  *v65 = v51 & 1;
}

uint64_t specialized Set.isSubset(of:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

void CPApplicationPolicyManager.updateAllowedHandles(for:)(void *a1)
{
  v2 = v1;
  v3 = [a1 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
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

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      outlined consume of Set<String>.Iterator._Variant();

      return;
    }

    while (1)
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x170))(v16, a1);

      v7 = v14;
      v8 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v16 = v18;
        v14 = v7;
        v15 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void CPApplicationPolicyManager.updateAllowedHandles(for:on:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))() & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.default);
    osloga = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(osloga, v19))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "[CPAppPolicyManager] Ignoring update to allowed handles for unsupported platform";
    goto LABEL_22;
  }

  v7 = [a1 activity];
  v8 = [v7 bundleIdentifier];

  if (!v8)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.default);
    v23 = a1;
    osloga = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(osloga, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      v27 = v23;
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v51);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1AEB26000, osloga, v24, "[CPAppPolicyManager] Unable to update allowed handles for activity with missing bundle identifier: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);

      return;
    }

    goto LABEL_23;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (((*((*v6 & *v3) + 0xA0))() & 1) == 0)
  {

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.default);
    osloga = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(osloga, v19))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "[CPAppPolicyManager] Ignoring update to allowed handles since auto-SharePlay is disabled";
    goto LABEL_22;
  }

  if ([a1 isPermittedToJoin])
  {
    v12 = [a2 mergedRemoteMembers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Sequence.compactMap<A>(_:)(v13, &selRef_handle);
    v15 = v14;

    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v16);

    oslog = specialized CPApplicationPolicyManager.hashedHandles(from:)(v17);

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.default);

    v34 = a1;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v51 = v48;
      *v37 = 136315394;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      v38 = v34;
      v39 = String.init<A>(reflecting:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v51);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v42 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      v43 = MEMORY[0x1B2710180](v15, v42);
      v45 = v44;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v51);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_1AEB26000, v35, v36, "[CPAppPolicyManager] Updating allowed handles for activity: %s with handles: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v48, -1, -1);
      MEMORY[0x1B27120C0](v37, -1, -1);
    }

    else
    {
    }

    CPApplicationPolicyManager.fetchAndStoreContactIdentifiers(for:)(a2);
    v47 = *(v3 + OBJC_IVAR___CPApplicationPolicyManager_lock);
    os_unfair_lock_lock(*(v47 + 16));
    CPApplicationPolicyManager.updateAllowedHandles(_:for:)(oslog, v9, v11);

    os_unfair_lock_unlock(*(v47 + 16));
    return;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Log.default);
  osloga = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(osloga, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "[CPAppPolicyManager] Ignoring update to allowed handles since activity session is not permitted to be joined.";
LABEL_22:
    _os_log_impl(&dword_1AEB26000, osloga, v19, v21, v20, 2u);
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

LABEL_23:
}

Swift::Void __swiftcall CPApplicationPolicyManager.setAuthorization(_:for:)(Swift::Bool _, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 67109378;
    *(v10 + 4) = _;
    *(v10 + 8) = 2080;
    *(v10 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v21);
    _os_log_impl(&dword_1AEB26000, v8, v9, "[CPAppPolicyManager] Setting authorization: %{BOOL}d for bundleID: %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0xA0))())
  {
    v12 = *(v3 + OBJC_IVAR___CPApplicationPolicyManager_lock);
    os_unfair_lock_lock(*(v12 + 16));
    closure #1 in CPApplicationPolicyManager.setAuthorization(_:for:)(v3, countAndFlagsBits, object, _);
    v13 = *(v12 + 16);

    os_unfair_lock_unlock(v13);
  }

  else
  {

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[1] = object;
      v22 = v16;
      *v15 = 136315138;
      v21[0] = countAndFlagsBits;

      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1AEB26000, oslog, v14, "[CPAppPolicyManager] Not setting authorization for %s as auto-SharePlay is disabled", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    else
    {
    }
  }
}

void closure #1 in CPApplicationPolicyManager.setAuthorization(_:for:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a3;
  v6 = a2;
  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))(v29, a2, a3);
  if (!v30)
  {

    v10 = 2;
    v9 = MEMORY[0x1E69E7CC8];
    goto LABEL_5;
  }

  v9 = v32;
  if ((v31 & 1) != (a4 & 1))
  {
    v6 = v29[1];
    v10 = v29[0];
    v5 = v30;
LABEL_5:
    LOBYTE(v33) = v10;
    *(&v33 + 1) = v6;
    *&v34 = v5;
    BYTE8(v34) = a4 & 1;
    v35 = v9;
    v11 = *(a1 + OBJC_IVAR___CPApplicationPolicyManager_storage + 24);
    v12 = *(a1 + OBJC_IVAR___CPApplicationPolicyManager_storage + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR___CPApplicationPolicyManager_storage), v11);

    v13 = CPAppPolicy.AuthorizedBundles.dictionaryRepresentation.getter();
    v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v28[0] = v13;
    (*(v12 + 8))(v28, v6, v5, v11, v12);

    v14 = outlined destroy of NSObject?(v28, &_sypSgMd, &_sypSgMR);
    v15 = (*((*v8 & *a1) + 0xC0))(v14);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    v17 = v34;
    *(v16 + 24) = v33;
    *(v16 + 40) = v17;
    *(v16 + 56) = v35;
    v18 = *(*v15 + 152);
    v19 = a1;
    v18(closure #1 in CPApplicationPolicyManager.persist(_:authorizationChanged:)partial apply, v16);

    return;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.default);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v23 = 136315138;
    *&v33 = v6;
    *(&v33 + 1) = v5;

    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v28);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1AEB26000, v21, v22, "[CPAppPolicyManager] Not updating authorization for %s. Value did not change.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }
}

Swift::Void __swiftcall CPApplicationPolicyManager.removeAuthorization(for:)(Swift::OpaquePointer a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v4 = [v3 expanseEnabled];

  if (v4)
  {
    oslog = *(v1 + OBJC_IVAR___CPApplicationPolicyManager_lock);
    os_unfair_lock_lock(oslog[2].isa);
    v5 = *(a1._rawValue + 2);
    if (v5)
    {
      v6 = (v1 + OBJC_IVAR___CPApplicationPolicyManager_storage);
      v7 = (a1._rawValue + 40);
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;
        v10 = v6[3];
        v11 = v6[4];
        __swift_project_boxed_opaque_existential_1(v6, v10);
        v12 = *(v11 + 24);

        v12(v9, v8, v10, v11);

        v7 += 2;
        --v5;
      }

      while (v5);
    }

    isa = oslog[2].isa;

    os_unfair_lock_unlock(isa);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.default);
    osloga = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(osloga, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1AEB26000, osloga, v15, "[CPAppPolicyManager] removeAuthorization called with ff disabled", v16, 2u);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }
  }
}

Swift::Void __swiftcall CPApplicationPolicyManager.handleApplicationUninstalledNotification(_:)(NSNotification a1)
{
  v2 = v1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = a1.super.isa;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315138;
    *&v23 = v5;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNotification, 0x1E696AD80);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "[CPAppPolicyManager] handleApplicationUninstalledNotification %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v14 = [(objc_class *)v5 userInfo];
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v18 & 1) == 0))
  {

    outlined destroy of AnyHashable(v22);
LABEL_12:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_13;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, &v23);
  outlined destroy of AnyHashable(v22);

  if (!*(&v24 + 1))
  {
LABEL_13:
    outlined destroy of NSObject?(&v23, &_sypSgMd, &_sypSgMR);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (swift_dynamicCast())
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x180))(v22[0]);

    return;
  }

LABEL_14:
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1AEB26000, v19, v20, "[CPAppPolicyManager] could not get list of bundleIDs while handing app uninstalled enotification", v21, 2u);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }
}

Swift::Void __swiftcall CPApplicationPolicyManager.handleCNContactStoreDidChangeNotification(_:)(NSNotification a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = a1.super.isa;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNotification, 0x1E696AD80);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v4, v5, "[CPAppPolicyManager] handleCNContactStoreDidChangeNotification %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()();
}

Swift::Void __swiftcall CPApplicationPolicyManager.appProtectionsChanged(bundleIDs:)(Swift::OpaquePointer bundleIDs)
{
  v2 = *(bundleIDs._rawValue + 2);
  if (v2)
  {
    v3 = v1;
    v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
    v4 = (bundleIDs._rawValue + 40);
    v13 = xmmword_1AEE07B20;
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      v14(&v15, v7);
      if (v16)
      {
        outlined init with take of ContiguousBytes(&v15, v17);
        v9 = v18;
        v8 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        v10 = (*(v8 + 32))(v9, v8);
        *&v15 = v6;
        *(&v15 + 1) = v5;
        MEMORY[0x1EEE9AC00](v10);
        v12[2] = &v15;
        LOBYTE(v8) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v12, v10);

        if (v8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v11 = swift_allocObject();
          *(v11 + 16) = v13;
          *(v11 + 32) = v6;
          *(v11 + 40) = v5;
          (*((*MEMORY[0x1E69E7D40] & *v3) + 0x180))();

          __swift_destroy_boxed_opaque_existential_1Tm(v17);
          goto LABEL_5;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }

      else
      {
        outlined destroy of NSObject?(&v15, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
      }

      (*((*MEMORY[0x1E69E7D40] & *v3) + 0x178))(1, v6, v5);

LABEL_5:
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t ChangeHistoryProcessor.onContactDeleted.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted + 8);

  return v1;
}

Swift::Void __swiftcall ChangeHistoryProcessor.visit(_:)(CNChangeHistoryDeleteContactEvent a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted);
  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted + 8);
  v4 = [(objc_class *)a1.super.super.isa contactIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3(v5, v7);
}

id ChangeHistoryProcessor.init(onContactDeleted:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14CopresenceCore22ChangeHistoryProcessor_onContactDeleted];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ChangeHistoryProcessor();
  return objc_msgSendSuper2(&v5, sel_init);
}

id ChangeHistoryProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChangeHistoryProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChangeHistoryProcessor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CPApplicationPolicyManager.clearBackgroundAccessForAllApps()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  v18 = *(v0 + OBJC_IVAR___CPApplicationPolicyManager_lock);
  os_unfair_lock_lock(*(v18 + 16));
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v19 = (v0 + OBJC_IVAR___CPApplicationPolicyManager_storage);
  v20 = v1;
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v8 << 6);
      v11 = (*(v20 + 48) + 16 * v10);
      v12 = v11[1];
      v22 = *v11;
      v13 = *(*(v20 + 56) + 8 * v10);
      v14 = v19[3];
      v15 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v14);
      v21 = *(v15 + 24);

      v16 = v13;
      v21(v22, v12, v14, v15);

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v17 = *(v18 + 16);

  os_unfair_lock_unlock(v17);
}

uint64_t _sSD4KeysV2eeoiySbAByxq__G_ADtFZSS_10Foundation4DateVTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_10:
    if (*(a2 + 16))
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a1 + 48) + ((v9 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
      LOBYTE(v14) = v15;

      if (v14)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n07_sSSSo8i17CSbIgggd_SSABSbs5T13_pIegnndzo_TRSSAISbIgggd_Tf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2710B10](a2, a3);
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
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B2710B10](a2, a3);
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

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2710B10](a2, a3);
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
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v22, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v27 = a2;
  v36 = a4;
  v28 = a1;
  v35 = type metadata accessor for Date();
  v5 = *(*(v35 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v35);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v7;
  v9 = 0;
  v37 = a3;
  v10 = *(a3 + 64);
  v29 = 0;
  v30 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v31 = v7 + 8;
  v32 = v7 + 16;
  v15 = v33;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v38 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v9 << 6);
    v20 = (v37[6] + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v24 = v34;
    v23 = v35;
    v25 = v19;
    (*(v34 + 16))(v15, v37[7] + *(v34 + 72) * v19, v35);

    LOBYTE(v21) = v36(v21, v22, v15);
    (*(v24 + 8))(v15, v23);

    v13 = v38;
    if (v21)
    {
      *(v28 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v28, v27, v29, v37);
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v28, v27, v29, v37);
    }

    v18 = *(v30 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v17 = swift_slowAlloc();
  v18 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n07_sSSSo8i17CSbIgggd_SSABSbs5T13_pIegnndzo_TRSSAISbIgggd_Tf1nnc_nTm(v17, v11, v9, a2, a3, a5);
  result = MEMORY[0x1B27120C0](v17, -1, -1);
  if (!v5)
  {
    result = v18;
  }

LABEL_4:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized CPApplicationPolicyManager.doesActivityTypeSupportAutoLaunch(activity:)(void *a1)
{
  v2 = [a1 metadata];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 context];

    v5 = [v4 typedIdentifier];
    v6 = *MEMORY[0x1E69D8F40];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v13 = *MEMORY[0x1E69D8F70];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        if (v14 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v16 != v17)
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v19 & 1;
        }
      }
    }

    return 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.default);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v27 = v22;
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v31);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1AEB26000, v23, v24, "[CPAppPolicyManager] Missing activity identifier or invalid activity-type found for %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    return 0;
  }
}

uint64_t specialized CPApplicationPolicyManager.hashedHandles(from:)(uint64_t a1)
{
  v3 = type metadata accessor for SHA256Digest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v82 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v64 - v10;
  v76 = type metadata accessor for String.Encoding();
  v12 = *(v76 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharableObjectIdentifier();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized Sequence.compactMap<A>(_:)(a1);
  v20 = v19;
  v21 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *(a1 + 16);
  }

  if (v22 != *(v20 + 16))
  {

    lazy protocol witness table accessor for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError();
    swift_allocError();
    swift_willThrow();
    return v20;
  }

  if (!v22)
  {

    v25 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v25);

    return v20;
  }

  v88 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
  v24 = 0;
  v25 = v88;
  v72 = (v12 + 8);
  v73 = v20 + 32;
  v71 = (v4 + 16);
  v66 = (v4 + 8);
  v84 = xmmword_1AEE07B20;
  v69 = v11;
  v70 = v3;
  v81 = v18;
  v68 = v20;
  v67 = v22;
  while (v24 < *(v20 + 16))
  {
    v79 = v24;
    v80 = v25;
    v26 = (v73 + 16 * v24);
    v27 = *v26;
    v28 = v26[1];

    SHA256.init()();
    v86 = v27;
    v87 = v28;
    v78 = v28;
    v29 = v75;
    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v30 = StringProtocol.data(using:allowLossyConversion:)();
    v32 = v31;
    result = (*v72)(v29, v76);
    if (v32 >> 60 == 15)
    {
      goto LABEL_43;
    }

    outlined copy of Data._Representation(v30, v32);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v30, v32);
    v77 = v21;
    outlined consume of Data?(v30, v32);
    outlined consume of Data?(v30, v32);
    SHA256.finalize()();
    v33 = *v71;
    v34 = v82;
    (*v71)(v82, v11, v3);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0]);
    v35 = dispatch thunk of Sequence.underestimatedCount.getter();
    v85 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 & ~(v35 >> 63), 0);
    v36 = v85;
    v33(v74, v34, v3);
    result = dispatch thunk of Sequence.makeIterator()();
    if (v35 < 0)
    {
      goto LABEL_42;
    }

    v37 = v87;
    if (v35)
    {
      v38 = v86;
      v83 = *(v86 + 16);
      v39 = v87;
      while (v83 != v39)
      {
        if (v37 < 0)
        {
          goto LABEL_37;
        }

        if (v39 >= *(v38 + 16))
        {
          goto LABEL_38;
        }

        v40 = *(v38 + 32 + v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v41 = swift_allocObject();
        *(v41 + 16) = v84;
        *(v41 + 56) = MEMORY[0x1E69E7508];
        *(v41 + 64) = MEMORY[0x1E69E7558];
        *(v41 + 32) = v40;
        result = String.init(format:_:)();
        v85 = v36;
        v44 = *(v36 + 16);
        v43 = *(v36 + 24);
        if (v44 >= v43 >> 1)
        {
          v65 = result;
          v46 = v42;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
          v42 = v46;
          result = v65;
          v36 = v85;
        }

        *(v36 + 16) = v44 + 1;
        v45 = v36 + 16 * v44;
        *(v45 + 32) = result;
        *(v45 + 40) = v42;
        ++v39;
        if (!--v35)
        {
          v87 = v39;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v39 = v87;
LABEL_20:
    v47 = v86;
    v48 = *(v86 + 16);
    if (v39 != v48)
    {
      v56 = v39;
      while ((v39 & 0x8000000000000000) == 0)
      {
        if (v56 >= *(v47 + 16))
        {
          goto LABEL_40;
        }

        v57 = *(v47 + 32 + v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v58 = swift_allocObject();
        *(v58 + 16) = v84;
        *(v58 + 56) = MEMORY[0x1E69E7508];
        *(v58 + 64) = MEMORY[0x1E69E7558];
        *(v58 + 32) = v57;
        result = String.init(format:_:)();
        v85 = v36;
        v61 = *(v36 + 16);
        v60 = *(v36 + 24);
        if (v61 >= v60 >> 1)
        {
          v83 = result;
          v63 = v59;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
          v59 = v63;
          result = v83;
          v36 = v85;
        }

        ++v56;
        *(v36 + 16) = v61 + 1;
        v62 = v36 + 16 * v61;
        *(v62 + 32) = result;
        *(v62 + 40) = v59;
        if (v48 == v56)
        {
          goto LABEL_21;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      break;
    }

LABEL_21:

    v86 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v49 = BidirectionalCollection<>.joined(separator:)();
    v51 = v50;

    v52 = *v66;
    v3 = v70;
    (*v66)(v82, v70);
    v11 = v69;
    v52(v69, v3);
    result = outlined destroy of SharableObjectIdentifier(v81);
    v25 = v80;
    v88 = v80;
    v54 = *(v80 + 16);
    v53 = *(v80 + 24);
    if (v54 >= v53 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
      v25 = v88;
    }

    v24 = v79 + 1;
    *(v25 + 16) = v54 + 1;
    v55 = v25 + 16 * v54;
    *(v55 + 32) = v49;
    *(v55 + 40) = v51;
    v21 = v77;
    v20 = v68;
    if (v24 == v67)
    {

      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError()
{
  result = lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError;
  if (!lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError;
  if (!lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CPApplicationPolicyManager.InputError and conformance CPApplicationPolicyManager.InputError);
  }

  return result;
}

uint64_t dispatch thunk of ChangeHistoryProcessor.visit(_:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNContactStoreConfiguration) -> (@out TUContactsDataSource)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNContactStoreConfiguration) -> (@owned TUContactsDataSource)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void partial apply for closure #1 in CPApplicationPolicyManager.persist(_:authorizationChanged:)(void *a1)
{
  v3 = v1[2];
  v4 = MEMORY[0x1B270FF70](v1[4], v1[5]);
  [a1 applicationPolicyManager:v3 authorizationChangedForBundleIdentifier:v4];
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL partial apply for closure #1 in closure #1 in closure #2 in closure #1 in CPApplicationPolicyManager.fetchAndProcessContactChangeHistory()(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v5[2] = v6;
  return (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v5, v3) & 1) == 0;
}

void partial apply for closure #1 in closure #1 in CPApplicationPolicyManager.autoSharePlayEnabled.setter(void *a1)
{
  v3 = v1[2];
  v4 = MEMORY[0x1B270FF70](v1[3], v1[4]);
  [a1 applicationPolicyManager:v3 authorizationChangedForBundleIdentifier:v4];
}

uint64_t OperationManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  OperationManager.init()();
  return v3;
}

uint64_t OperationManager.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v29 = &v25 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMd, &_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v25 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMd, &_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMR);
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v28);
  v15 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pMd, &_s14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pMR);
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8650], v3);
  v26 = v11;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v7, v3);
  v18 = v27;
  (*(v8 + 16))(v30 + OBJC_IVAR____TtC14CopresenceCore16OperationManager_queueContinuation, v11, v27);
  v19 = type metadata accessor for TaskPriority();
  v20 = v29;
  (*(*(v19 - 8) + 56))(v29, 1, 1, v19);
  v21 = v28;
  (*(v12 + 16))(v15, v17, v28);
  v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v12 + 32))(v23 + v22, v15, v21);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in OperationManager.init(), v23);

  (*(v8 + 8))(v26, v18);
  (*(v12 + 8))(v17, v21);
  return v30;
}

uint64_t closure #1 in OperationManager.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS8IteratorVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in OperationManager.init(), 0, 0);
}

uint64_t partial apply for closure #1 in OperationManager.init()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMd, &_sScSy14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in OperationManager.init()(a1, v6, v7, v1 + v5);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (a2)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v7[9] = v8;
  v7[10] = v10;

  return MEMORY[0x1EEE6DFA0](_s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTY0_, v8, v10);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTY0_()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 56);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTQ1_;
  v5 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, v6, v7, 0xD000000000000015, 0x80000001AEE383C0, _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFyScCyxs5Error_pGXEfU_TA, v1, v5);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTQ1_()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[9];
    v5 = v3[10];

    return MEMORY[0x1EEE6DFA0](_s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTY2_, v4, v5);
  }

  else
  {
    v6 = v3[11];

    v7 = v3[1];

    return v7();
  }
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFTY2_()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbKYAYTctYaKlFyScCyxs5Error_pGXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = type metadata accessor for CheckedContinuation();
  v9 = type metadata accessor for Optional();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMd, &_sScS12ContinuationV11YieldResultOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v22 = OBJC_IVAR____TtC14CopresenceCore16OperationManager_queueContinuation;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a3;
  v18[4] = a4;
  v19 = *(v8 - 8);
  (*(v19 + 16))(v12, v23, v8);
  (*(v19 + 56))(v12, 0, 1, v8);
  v25[3] = type metadata accessor for OperationManager.Operation();
  v25[4] = &protocol witness table for OperationManager.Operation<A, B>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  _s14CopresenceCore16OperationManagerC0C033_53D0A0FB5E0A41085D46C72FE7DB1DF1LLV4body12continuationAFy_xq_GxyYaYbq_YKc_ScCyxq_GSgtcfC(&async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error), v18, v12, boxed_opaque_existential_1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error);

  return v10(a1);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error)()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t _s14CopresenceCore16OperationManagerC0C033_53D0A0FB5E0A41085D46C72FE7DB1DF1LLV4body12continuationAFy_xq_GxyYaYbq_YKc_ScCyxq_GSgtcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for OperationManager.Operation() + 44);
  type metadata accessor for CheckedContinuation();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (a2)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  return MEMORY[0x1EEE6DFA0](_s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFTY0_, v8, v10);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFTY0_()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 56);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFTQ1_;
  v5 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v8, v6, v7, 0xD000000000000015, 0x80000001AEE383C0, _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFyScCyxs5NeverOGXEfU_TA, v1, v5);
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFTQ1_()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s14CopresenceCore16OperationManagerC7perform9isolation_xScA_pSgYi_xyYaYbYAYTctYalFyScCyxs5NeverOGXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = a2;
  v9 = type metadata accessor for CheckedContinuation();
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMd, &_sScS12ContinuationV11YieldResultOy14CopresenceCore16OperationManagerC0F8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p__GMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v23 - v17;
  v23[1] = OBJC_IVAR____TtC14CopresenceCore16OperationManager_queueContinuation;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a3;
  v19[4] = a4;
  v20 = *(v9 - 8);
  (*(v20 + 16))(v13, a1, v9);
  (*(v20 + 56))(v13, 0, 1, v9);
  v24[3] = type metadata accessor for OperationManager.Operation();
  v24[4] = &protocol witness table for OperationManager.Operation<A, B>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  _s14CopresenceCore16OperationManagerC0C033_53D0A0FB5E0A41085D46C72FE7DB1DF1LLV4body12continuationAFy_xq_GxyYaYbq_YKc_ScCyxq_GSgtcfC(&async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A), v19, v13, boxed_opaque_existential_1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v15 + 8))(v18, v14);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A);

  return v7(a1);
}

uint64_t OperationManager.deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore16OperationManager_queueContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OperationManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore16OperationManager_queueContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMd, &_sScS12ContinuationVy14CopresenceCore16OperationManagerC0D8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_p_GMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OperationManager()
{
  result = type metadata singleton initialization cache for OperationManager;
  if (!type metadata singleton initialization cache for OperationManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for OperationManager()
{
  type metadata accessor for AsyncStream<OperationManager.OperationProtocol>.Continuation();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncStream<OperationManager.OperationProtocol>.Continuation()
{
  if (!lazy cache variable for type metadata for AsyncStream<OperationManager.OperationProtocol>.Continuation)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pMd, &_s14CopresenceCore16OperationManagerC0C8Protocol33_53D0A0FB5E0A41085D46C72FE7DB1DF1LL_pMR);
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<OperationManager.OperationProtocol>.Continuation);
    }
  }
}

unint64_t type metadata completion function for OperationManager.Operation(void *a1)
{
  result = type metadata accessor for ()();
  if (v3 <= 0x3F)
  {
    v4 = a1[2];
    v5 = a1[3];
    v6 = a1[4];
    type metadata accessor for CheckedContinuation();
    result = type metadata accessor for Optional();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(a1, v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A, @error @owned Error)(a1, v7, v8, v6, a2);
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.__deallocating_deinit()
{
  MEMORY[0x1B27120C0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t BackgroundApplicationLaunchBehavior.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for BackgroundApplicationLaunchBehavior.AssertionStore();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t BackgroundApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), 0, 0);
}

uint64_t BackgroundApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)()
{
  v1 = (*(**(v0 + 32) + 88))();
  *(v0 + 40) = v1;

  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.revokeBackgroundAuthorization(for:), v1, 0);
}

{
  object = v0[2]._object;
  BackgroundApplicationLaunchBehavior.AssertionStore.revokeBackgroundAuthorization(for:)(v0[1]);

  v2 = v0->_object;

  return v2();
}

uint64_t BackgroundApplicationLaunchBehavior.init()()
{
  type metadata accessor for BackgroundApplicationLaunchBehavior.AssertionStore();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t BackgroundApplicationLaunchBehavior.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t BackgroundApplicationLaunchBehavior.assertionStore.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t BackgroundApplicationLaunchBehavior.assertionStore.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:), 0, 0);
}

uint64_t BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:)()
{
  v1 = [*(v0 + 32) activity];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = *(v0 + 48);
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;

    *(v0 + 64) = v6;
    v7 = v3[3];
    v8 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v7);
    v9 = *(v8 + 8);
    v17 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:);
    v13 = *(v0 + 32);
    v12 = *(v0 + 40);

    return v17(v13, v12, v7, v8);
  }

  else
  {
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(**(v3 + 56) + 160);
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v3 + 88) = v7;
    *v7 = v3;
    v7[1] = BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:);
    v9 = *(v3 + 56);
    v8 = *(v3 + 64);

    return v11(v4, v8);
  }
}

{
  if ((*(v0 + 96) & 1) == 0)
  {
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:)(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:), 0, 0);
}

unint64_t BackgroundApplicationLaunchBehavior.createProcessAssertion(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_opt_self();
  v7 = MEMORY[0x1B270FF70](a1, a2);
  v8 = [v6 processAssertionWithBundleIdentifier_];

  result = type metadata accessor for BKSProcessAssertion();
  a3[3] = result;
  a3[4] = &protocol witness table for BKSProcessAssertion;
  *a3 = v8;
  return result;
}

uint64_t BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:), 0, 0);
}

uint64_t BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:)()
{
  v1 = v0[9];
  v2 = (*(*v1 + 152))(v0[7], v0[8]);
  v0[10] = (*(*v1 + 88))(v2);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:);
  v4 = v0[7];
  v5 = v0[8];

  return BackgroundApplicationLaunchBehavior.AssertionStore.acquireBackgroundAssertion(_:bundleIdentifier:)((v0 + 2), v4, v5);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:)(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:), 0, 0);
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t BackgroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v12(a1, a2, a3);
}

uint64_t BackgroundApplicationLaunchBehavior.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:) in conformance BackgroundApplicationLaunchBehavior(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for ApplicationLaunchBehavior.revokeBackgroundAuthorization(for:) in conformance BackgroundApplicationLaunchBehavior(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2);
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.assertions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.assertions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.acquireBackgroundAssertion(_:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x1EEE6DFA0](BackgroundApplicationLaunchBehavior.AssertionStore.acquireBackgroundAssertion(_:bundleIdentifier:), v3, 0);
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.acquireBackgroundAssertion(_:bundleIdentifier:)()
{
  v24 = v0;
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    outlined init with copy of UserNotificationCenter(v0[10], (v0 + 2));
    swift_beginAccess();

    specialized Dictionary.subscript.setter((v0 + 2), v7, v6);
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = v0[12];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[11];
      v12 = v0[12];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v23);
      v16 = "Acquired assertion for %s";
LABEL_10:
      _os_log_impl(&dword_1AEB26000, v10, v11, v16, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1B27120C0](v15, -1, -1);
      MEMORY[0x1B27120C0](v14, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v17 = v0[12];
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.default);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v20 = v0[11];
      v19 = v0[12];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v23);
      v16 = "Failed to acquire assertion for %s";
      goto LABEL_10;
    }
  }

  v21 = v0[1];

  return v21(v4 & 1);
}

Swift::Void __swiftcall BackgroundApplicationLaunchBehavior.AssertionStore.revokeBackgroundAuthorization(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 112);
  if (*(v4 + 16))
  {

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v6)
    {
      outlined init with copy of UserNotificationCenter(*(v4 + 56) + 40 * v5, v19);

      outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v19, v21);
      v7 = v22;
      v8 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      (*(v8 + 16))(v7, v8);
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      swift_beginAccess();

      specialized Dictionary.subscript.setter(v19, countAndFlagsBits, object);
      swift_endAccess();
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Log.default);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v19[0] = v13;
        *v12 = 136315138;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v19);
        _os_log_impl(&dword_1AEB26000, v10, v11, "Removing process assertion for %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x1B27120C0](v13, -1, -1);
        MEMORY[0x1B27120C0](v12, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      return;
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.default);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v21);
    _os_log_impl(&dword_1AEB26000, v15, v16, "No existing process assertion for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1B27120C0](v18, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t BackgroundApplicationLaunchBehavior.AssertionStore.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

unint64_t type metadata accessor for BKSProcessAssertion()
{
  result = lazy cache variable for type metadata for BKSProcessAssertion;
  if (!lazy cache variable for type metadata for BKSProcessAssertion)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BKSProcessAssertion);
  }

  return result;
}

uint64_t dispatch thunk of BackgroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of BackgroundApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2);
}

uint64_t dispatch thunk of BackgroundApplicationLaunchBehavior.launchAndAcquireBackgroundAssertion(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of BackgroundApplicationLaunchBehavior.acquireBackgroundAssertion(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of BackgroundApplicationLaunchBehavior.AssertionStore.acquireBackgroundAssertion(_:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of ABCReporterProtocol.report(with:duration:);

  return v12(a1, a2, a3);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of ContiguousBytes?(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = specialized Data.InlineData.init(_:)(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = specialized Data.LargeSlice.init(_:)(v3, v4);
    }

    else
    {
      v6 = specialized Data.InlineSlice.init(_:)(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t UUID.data.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = UUID.uuid.getter();
  v3[1] = v0;
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v3, &v4);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t UUID.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(a2) != 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      lazy protocol witness table accessor for type Data and conformance Data();
      DataProtocol.copyBytes(to:)();
      UUID.init(uuid:)();
      outlined consume of Data._Representation(a1, a2);
      v11 = type metadata accessor for UUID();
      result = (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
      v13 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined consume of Data._Representation(a1, a2);
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v16 = *MEMORY[0x1E69E9840];

  return v15(a3, 1, 1, v14);
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_1AEE0C200;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1AEE0C200;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1B270E950]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B2710050](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t Histogram.__allocating_init(buckets:log:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return Histogram.init(buckets:log:)(a1, a2);
}

uint64_t Histogram.bucketCounts.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore9Histogram_bucketCounts;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t Histogram.bucketCounts.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore9Histogram_bucketCounts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t Histogram.init(buckets:log:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v81 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v81 - v17;
  v18 = v3 + OBJC_IVAR____TtC14CopresenceCore9Histogram_minValue;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v3 + OBJC_IVAR____TtC14CopresenceCore9Histogram_maxValue;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v3 + OBJC_IVAR____TtC14CopresenceCore9Histogram_totalCount) = 0;
  v87 = a1;

  specialized MutableCollection<>.sort(by:)(&v87);
  v20 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1, v87);

  if (v20)
  {
    v21 = *(a1 + 16);
    if (v21 < 2)
    {

      outlined init with copy of Logger?(a2, v13);
      v26 = type metadata accessor for Logger();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v13, 1, v26) == 1)
      {
        outlined destroy of Logger?(a2);
        outlined destroy of Logger?(v13);
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = a2;
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1AEB26000, v32, v33, "Bucket count must be greater than 1", v35, 2u);
          v36 = v35;
          a2 = v34;
          MEMORY[0x1B27120C0](v36, -1, -1);
        }

        outlined destroy of Logger?(a2);
        (*(v27 + 8))(v13, v26);
      }
    }

    else if (*(a1 + 32))
    {

      outlined init with copy of Logger?(a2, v16);
      v22 = type metadata accessor for Logger();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v16, 1, v22) == 1)
      {
        outlined destroy of Logger?(a2);
        outlined destroy of Logger?(v16);
      }

      else
      {
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = a2;
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_1AEB26000, v62, v63, "First bucket must be 0", v65, 2u);
          v66 = v65;
          a2 = v64;
          MEMORY[0x1B27120C0](v66, -1, -1);
        }

        outlined destroy of Logger?(a2);
        (*(v23 + 8))(v16, v22);
      }
    }

    else
    {
      v82 = v3;
      v83 = a2;
      v37 = 0;
      v38 = MEMORY[0x1E69E7CC8];
      v87 = MEMORY[0x1E69E7CC8];
      v85 = xmmword_1AEE07B20;
      v86 = v21;
      do
      {
        if (v37 >= *(a1 + 16))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);

          type metadata accessor for Histogram();
          v79 = *(*v82 + 48);
          v80 = *(*v82 + 52);
          result = swift_deallocPartialClassInstance();
          __break(1u);
          return result;
        }

        v39 = *(a1 + 8 * v37 + 32);
        v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
        v42 = *(v38 + 2);
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_44;
        }

        v45 = v40;
        if (*(v38 + 3) < v44)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, 1);
          v38 = v87;
          v46 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
          if ((v45 & 1) != (v47 & 1))
          {
            goto LABEL_46;
          }

          v41 = v46;
        }

        if (v45)
        {
          v48 = *(v38 + 7);
          v49 = *(v48 + 8 * v41);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v48 + 8 * v41) = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
            *(v48 + 8 * v41) = v49;
          }

          v52 = *(v49 + 2);
          v51 = *(v49 + 3);
          if (v52 >= v51 >> 1)
          {
            v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v49);
            *(v48 + 8 * v41) = v49;
          }

          *(v49 + 2) = v52 + 1;
          *&v49[8 * v52 + 32] = v39;
          v21 = v86;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
          v53 = swift_allocObject();
          *(v53 + 16) = v85;
          *(v53 + 32) = v39;
          *&v38[8 * (v41 >> 6) + 64] |= 1 << v41;
          *(*(v38 + 6) + 8 * v41) = v39;
          *(*(v38 + 7) + 8 * v41) = v53;
          v54 = *(v38 + 2);
          v55 = __OFADD__(v54, 1);
          v56 = v54 + 1;
          if (v55)
          {
            goto LABEL_45;
          }

          *(v38 + 2) = v56;
        }

        ++v37;
      }

      while (v21 != v37);
      v57 = specialized _NativeDictionary.filter(_:)(v38);

      v58 = v83;
      if (!*(v57 + 16))
      {
        v70 = v82;
        outlined init with copy of Logger?(v83, v82 + OBJC_IVAR____TtC14CopresenceCore9Histogram_log);
        *(v70 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets) = a1;
        v71 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v71 + 16) = v21;
        bzero((v71 + 32), 8 * v21);

        outlined destroy of Logger?(v58);
        result = v70;
        *(v70 + OBJC_IVAR____TtC14CopresenceCore9Histogram_bucketCounts) = v71;
        return result;
      }

      v59 = v84;
      outlined init with copy of Logger?(v58, v84);
      v60 = type metadata accessor for Logger();
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v59, 1, v60) == 1)
      {
        outlined destroy of Logger?(v58);

        outlined destroy of Logger?(v59);
        v3 = v82;
      }

      else
      {

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v87 = v75;
          *v74 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
          v76 = Dictionary.Keys.description.getter();
          v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v87);

          *(v74 + 4) = v78;
          _os_log_impl(&dword_1AEB26000, v72, v73, "Duplicates found, %s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          MEMORY[0x1B27120C0](v75, -1, -1);
          v59 = v84;
          MEMORY[0x1B27120C0](v74, -1, -1);
        }

        else
        {
        }

        outlined destroy of Logger?(v83);
        (*(v61 + 8))(v59, v60);
        v3 = v82;
      }
    }
  }

  else
  {

    outlined init with copy of Logger?(a2, v10);
    v24 = type metadata accessor for Logger();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v10, 1, v24) == 1)
    {
      outlined destroy of Logger?(a2);
      outlined destroy of Logger?(v10);
    }

    else
    {
      v28 = a2;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1AEB26000, v29, v30, "Buckets not sorted", v31, 2u);
        MEMORY[0x1B27120C0](v31, -1, -1);
      }

      outlined destroy of Logger?(v28);
      (*(v25 + 8))(v10, v24);
    }
  }

  type metadata accessor for Histogram();
  v67 = *(*v3 + 48);
  v68 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t Histogram.indexForValue(_:low:high:)(unint64_t result, int64_t a2, unint64_t a3)
{
  if (a3 < a2)
  {
    return 0;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *(v3 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  v5 = *(v4 + 16);
  if (v5 <= a3)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v4 + 32;
  if (*(v4 + 32 + 8 * a3) <= result)
  {
    return a3;
  }

  v7 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    goto LABEL_22;
  }

  if (v7 >= -1)
  {
    v8 = v7 / 2;
    if (v7 / 2 < v5)
    {
      v9 = *(v6 + 8 * v8);
      if (v9 == result)
      {
        return v7 / 2;
      }

      if (v7 < 2)
      {
        return Histogram.indexForValue(_:low:high:)();
      }

      v10 = *(v6 + 8 * (v8 - 1));
      if (v9 <= result || v10 > result)
      {
        return Histogram.indexForValue(_:low:high:)();
      }

      return v8 - 1;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t Histogram.totalCount.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore9Histogram_totalCount;
  swift_beginAccess();
  return *(v0 + v1);
}

Swift::Bool __swiftcall Histogram.recordValue(_:)(Swift::UInt64 a1)
{
  v3 = Histogram.indexForValue(_:low:high:)(a1, 0, *(*(v1 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets) + 16) - 1);
  v5 = v4;
  if ((v4 & 1) == 0)
  {
    v6 = v3;
    v7 = (*(*v1 + 144))(v26);
    v9 = v8;
    v10 = *v8;
    LOBYTE(v11) = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v10;
    if ((v11 & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = v11;
      *v9 = v11;
    }

    if (v6 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = *(v10 + 32 + 8 * v6);
      v13 = __CFADD__(v12, 1);
      v14 = v12 + 1;
      if (!v13)
      {
        *(v10 + 32 + 8 * v6) = v14;
        v7(v26, 0);
        v15 = OBJC_IVAR____TtC14CopresenceCore9Histogram_totalCount;
        v11 = swift_beginAccess();
        v16 = *(v1 + v15);
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (!v17)
        {
          *(v1 + v15) = v18;
          v19 = (*(*v1 + 184))(v11);
          if ((v20 & 1) != 0 || v19 > a1)
          {
            v21 = v1 + OBJC_IVAR____TtC14CopresenceCore9Histogram_minValue;
            v19 = swift_beginAccess();
            *v21 = a1;
            *(v21 + 8) = 0;
          }

          v22 = (*(*v1 + 208))(v19);
          if ((v23 & 1) != 0 || v22 < a1)
          {
            v24 = v1 + OBJC_IVAR____TtC14CopresenceCore9Histogram_maxValue;
            swift_beginAccess();
            *v24 = a1;
            *(v24 + 8) = 0;
          }

          goto LABEL_13;
        }

LABEL_16:
        __break(1u);
        return v11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_13:
  LOBYTE(v11) = (v5 & 1) == 0;
  return v11;
}

Swift::Void __swiftcall Histogram.clearCounts()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = v2;
    bzero((v4 + 32), 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  (*(*v0 + 136))(v4);
  v5 = OBJC_IVAR____TtC14CopresenceCore9Histogram_totalCount;
  swift_beginAccess();
  *(v0 + v5) = 0;
}

Swift::Void __swiftcall Histogram.clearMaxValue()()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_maxValue;
  swift_beginAccess();
  *v1 = 0;
  *(v1 + 8) = 1;
}

Swift::Void __swiftcall Histogram.clearMinValue()()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_minValue;
  swift_beginAccess();
  *v1 = 0;
  *(v1 + 8) = 1;
}

Swift::Void __swiftcall Histogram.reset()()
{
  (*(*v0 + 264))();
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_minValue;
  swift_beginAccess();
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_maxValue;
  swift_beginAccess();
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t Histogram.conciseDescription.getter()
{
  return Histogram.conciseDescription.getter();
}

{
  return (*(*v0 + 312))();
}

Swift::String __swiftcall Histogram.intervalDescription(omitEmptyBins:)(Swift::Bool omitEmptyBins)
{
  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_20:
    if (*(v6 + 2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v25 = BidirectionalCollection<>.joined(separator:)();
      v27 = v26;
    }

    else
    {

      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v13 = v25;
    v14 = v27;
    goto LABEL_28;
  }

  v4 = omitEmptyBins;
  v5 = (v2 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = 4;
  v30 = *(v1 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  while (1)
  {
    v11 = v7 - 4;
    v12 = *(v5 - 1);
    if (v4)
    {
      break;
    }

LABEL_10:
    if (v11 >= *(v2 + 16) - 1)
    {
      _StringGuts.grow(_:)(16);

      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v21);

      v22 = MEMORY[0x1B2710020](0x8FB8EFBE99E2202CLL, 0xAB00000000203A29);
      v13 = (*(*v31 + 128))(v22);
      if (v11 >= *(v13 + 16))
      {
        goto LABEL_25;
      }

      v23 = *(v13 + 8 * v7);

      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }
    }

    else
    {
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v16);

      v13 = MEMORY[0x1B2710020](8236, 0xE200000000000000);
      if ((v7 - 3) >= *(v2 + 16))
      {
        goto LABEL_26;
      }

      v32 = *v5;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v17);

      v18 = MEMORY[0x1B2710020](2112041, 0xE300000000000000);
      v13 = (*(*v31 + 128))(v18);
      if (v11 >= *(v13 + 16))
      {
        goto LABEL_27;
      }

      v19 = *(v13 + 8 * v7);

      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1B2710020](v20);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v4 = omitEmptyBins;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    v2 = v30;
    if (v9 >= v8 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[16 * v9];
    *(v10 + 4) = 91;
    *(v10 + 5) = 0xE100000000000000;
LABEL_6:
    ++v5;
    ++v7;
    if (!--v3)
    {
      goto LABEL_20;
    }
  }

  v13 = (*(*v31 + 128))();
  if (v11 < *(v13 + 16))
  {
    v15 = *(v13 + 8 * v7);

    if (!v15)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t Histogram.deinit()
{
  outlined destroy of Logger?(v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_log);
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);

  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_bucketCounts);

  return v0;
}

uint64_t Histogram.__deallocating_deinit()
{
  outlined destroy of Logger?(v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_log);
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);

  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore9Histogram_bucketCounts);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Logger?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Histogram()
{
  result = type metadata singleton initialization cache for Histogram;
  if (!type metadata singleton initialization cache for Histogram)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVys6UInt64VSayAIGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_s6I11V_SayAJGTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiJIsgnndzo_Tf1nc_n04_ss6i22VSayABGSbIgygd_AbCSbs5T112_pIegnndzo_TR050_s14CopresenceCore9HistogramC7buckets3logACSgSays6A34VG_2os6LoggerVSgtcfcSbAH_AItXEfU0_Tf3nnpf_nTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVys6UInt64VSayAIGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_s6I11V_SayAJGTG5AKxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiJIsgnndzo_Tf1nc_n04_ss6i22VSayABGSbIgygd_AbCSbs5T112_pIegnndzo_TR050_s14CopresenceCore9HistogramC7buckets3logACSgSays6A34VG_2os6LoggerVSgtcfcSbAH_AItXEfU0_Tf3nnpf_nTf1nnc_n(v9, v4, v2);
  result = MEMORY[0x1B27120C0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64VSayADGGMd, &_ss18_DictionaryStorageCys6UInt64VSayADGGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = MEMORY[0x1B27111C0](*(v9 + 40), v17);
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    v34 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = type metadata accessor for Date();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    Hasher.init(_seed:)();

    v54 = v28;
    String.hash(into:)();
    result = Hasher._finalize()();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized static Histogram.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  v3 = *(a2 + OBJC_IVAR____TtC14CopresenceCore9Histogram_buckets);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    v10 = (*(*result + 128))(result);
    v11 = (*(*a2 + 128))();
    v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v10, v11);

    if (v12)
    {
      v14 = (*(*v6 + 184))(v13);
      v16 = v15;
      result = (*(*a2 + 184))();
      if (v16)
      {
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v18 = result;
        result = 0;
        if ((v17 & 1) != 0 || v14 != v18)
        {
          return result;
        }
      }

      v19 = (*(*v6 + 208))(result);
      v21 = v20;
      result = (*(*a2 + 208))();
      if (v21)
      {
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v23 = result;
        result = 0;
        if ((v22 & 1) != 0 || v19 != v23)
        {
          return result;
        }
      }

      v24 = (*(*v6 + 232))(result);
      return v24 == (*(*a2 + 232))();
    }

    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t keypath_set_2Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

void type metadata completion function for Histogram()
{
  type metadata accessor for Logger?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Logger?()
{
  if (!lazy cache variable for type metadata for Logger?)
  {
    type metadata accessor for Logger();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Logger?);
    }
  }
}

uint64_t DarwinNotification.__allocating_init(name:queue:)(char a1, void *a2)
{
  if (a1)
  {
    v3 = 0xD000000000000056;
  }

  else
  {
    v3 = 0xD00000000000003ALL;
  }

  if (a1)
  {
    v4 = "nmanagerhost.shouldconnect";
  }

  else
  {
    v4 = "com.apple.facetime";
  }

  v5 = swift_allocObject();
  DarwinNotification.init(name:queue:)(v3, v4 | 0x8000000000000000, a2);
  return v5;
}

Swift::Void __swiftcall DarwinNotification.post()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = String.utf8CString.getter();
  notify_post((v3 + 32));
}

uint64_t DarwinNotification.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void (*DarwinNotification.state.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 48) = DarwinNotification.state.getter();
  return DarwinNotification.state.modify;
}

void DarwinNotification.state.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  swift_beginAccess();
  notify_set_state(*(v3 + 32), v2);

  free(v1);
}

uint64_t DarwinNotification.__allocating_init(name:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  DarwinNotification.init(name:queue:)(a1, a2, a3);
  return v6;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t DarwinNotification.deinit()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t DarwinNotification.__deallocating_deinit()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 32));
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in DarwinNotification.init(name:queue:)()
{
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();
  DarwinNotification.handleNotification()();
}

uint64_t AsyncBroadcastStream.State.init(generation:continuations:currentValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for AsyncBroadcastStream.State() + 32);
  v7 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

void *AsyncBroadcastStream.__allocating_init(initialValue:shouldYieldValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 80);
  v9 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  v14 = *(v8 - 8);
  (*(v14 + 16))(&v17 - v12, a1, v8);
  (*(v14 + 56))(v13, 0, 1, v8);
  swift_allocObject();
  v15 = specialized AsyncBroadcastStream.init(initialValue:shouldYieldValue:)(v13, a2, a3);

  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(a1, v8);
  return v15;
}

void *AsyncBroadcastStream.__allocating_init<>(initialValue:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = *(v5 - 8);
  (*(v11 + 16))(&v15 - v9, a1, v5);
  (*(v11 + 56))(v10, 0, 1, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a2;
  swift_allocObject();
  v13 = specialized AsyncBroadcastStream.init(initialValue:shouldYieldValue:)(v10, partial apply for closure #1 in AsyncBroadcastStream.init<>(initialValue:), v12);

  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(a1, v5);
  return v13;
}

void *AsyncBroadcastStream.__allocating_init(_:shouldYieldValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 80);
  v7 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(*(v6 - 8) + 56))(&v14 - v10, 1, 1, v6);
  swift_allocObject();
  v12 = specialized AsyncBroadcastStream.init(initialValue:shouldYieldValue:)(v11, a2, a3);

  (*(v8 + 8))(v11, v7);
  return v12;
}

void *AsyncBroadcastStream.__allocating_init<>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 80);
  v5 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  (*(*(v4 - 8) + 56))(&v13 - v8, 1, 1, v4);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a2;
  swift_allocObject();
  v11 = specialized AsyncBroadcastStream.init(initialValue:shouldYieldValue:)(v9, partial apply for closure #1 in AsyncBroadcastStream.init<>(_:), v10);

  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t AsyncBroadcastStream.deinit()
{
  AsyncBroadcastStream.finish()();
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

Swift::Void __swiftcall AsyncBroadcastStream.finish()()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for AsyncStream.Continuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - v5;
  v7 = v0[2];
  v20[4] = v1;
  type metadata accessor for AsyncBroadcastStream.State();
  type metadata accessor for Dictionary();
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  partial apply for closure #1 in AsyncBroadcastStream.finish()(v7 + v8, &v21);
  os_unfair_lock_unlock((v7 + v9));
  v10 = 0;
  v11 = v21;
  v13 = v21 + 64;
  v12 = *(v21 + 64);
  v14 = 1 << *(v21 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v20[1] = v3 + 16;
  if ((v15 & v12) != 0)
  {
    do
    {
      v18 = v10;
LABEL_9:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      (*(v3 + 16))(v6, *(v11 + 56) + *(v3 + 72) * (v19 | (v18 << 6)), v2);
      AsyncStream.Continuation.finish()();
      (*(v3 + 8))(v6, v2);
    }

    while (v16);
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v18);
    ++v10;
    if (v16)
    {
      v10 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t AsyncBroadcastStream.__deallocating_deinit()
{
  AsyncBroadcastStream.deinit();

  return swift_deallocClassInstance();
}

uint64_t AsyncBroadcastStream.sequence.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = *(*v1 + 80);
  v3 = v1;
  v4 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v59 = &v56 - v7;
  v70 = *(v2 - 8);
  v8 = *(v70 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v56 - v11;
  v12 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v65 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = TupleTypeMetadata2 - 8;
  v15 = *(*(TupleTypeMetadata2 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v56 - v17;
  v64 = *(v12 - 8);
  v19 = *(v64 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v56 - v22;
  v23 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - v26;
  v28 = type metadata accessor for AsyncStream.Continuation();
  v69 = *(v28 - 8);
  v29 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v56 - v30;
  v32 = type metadata accessor for AsyncStream();
  v67 = *(v32 - 8);
  v68 = v32;
  v33 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v56 - v34;
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8650], v23);
  v66 = v35;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v24 + 8))(v27, v23);
  v36 = *(v3 + 16);
  v72 = v2;
  v73 = v31;
  type metadata accessor for AsyncBroadcastStream.State();
  v37 = *(*v36 + *MEMORY[0x1E69E6B68] + 16);
  v38 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v36 + v38));
  partial apply for closure #1 in AsyncBroadcastStream.sequence.getter((v36 + v37), v18);
  v39 = (v36 + v38);
  v40 = v62;
  os_unfair_lock_unlock(v39);
  v41 = *v18;
  v42 = *(v14 + 56);
  v43 = v63;
  v44 = v64;
  v45 = &v18[v42];
  v46 = v28;
  v47 = v65;
  (*(v64 + 32))(v40, v45, v65);
  v48 = swift_allocObject();
  v49 = v44;
  swift_weakInit();
  v50 = swift_allocObject();
  v50[2] = v2;
  v50[3] = v48;
  v50[4] = v41;
  v51 = v70;
  AsyncStream.Continuation.onTermination.setter();
  (*(v44 + 16))(v43, v40, v47);
  if ((*(v51 + 48))(v43, 1, v2) == 1)
  {
    v52 = *(v44 + 8);
    v52(v40, v47);
    v52(v43, v47);
  }

  else
  {
    v53 = v58;
    (*(v51 + 32))(v58, v43, v2);
    (*(v51 + 16))(v57, v53, v2);
    v54 = v59;
    AsyncStream.Continuation.yield(_:)();
    (*(v60 + 8))(v54, v61);
    (*(v51 + 8))(v53, v2);
    (*(v49 + 8))(v40, v47);
  }

  (*(v67 + 32))(v71, v66, v68);
  return (*(v69 + 8))(v31, v46);
}

uint64_t closure #1 in AsyncBroadcastStream.sequence.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for AsyncStream.Continuation();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v17 - v10;
  v12 = *a1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a1;
    v13 = *(v6 - 8);
    (*(v13 + 16))(v11, a2, v6);
    (*(v13 + 56))(v11, 0, 1, v6);
    v17[3] = v12;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v14 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
    v15 = *(swift_getTupleTypeMetadata2() + 48);
    *a3 = v12;
    v16 = type metadata accessor for AsyncBroadcastStream.State();
    return (*(*(v14 - 8) + 16))(&a3[v15], &a1[*(v16 + 32)], v14);
  }

  return result;
}

uint64_t closure #2 in AsyncBroadcastStream.sequence.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    MEMORY[0x1EEE9AC00](v2);
    type metadata accessor for AsyncBroadcastStream.State();
    v3 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v1 + v4));
    partial apply for closure #1 in closure #2 in AsyncBroadcastStream.sequence.getter(v1 + v3);
    os_unfair_lock_unlock((v1 + v4));
  }

  return result;
}

uint64_t closure #1 in closure #2 in AsyncBroadcastStream.sequence.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AsyncStream.Continuation();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  v9[1] = a2;
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AsyncBroadcastStream.yield(_:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v31 - v6;
  v38 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - v9;
  v10 = type metadata accessor for AsyncStream.Continuation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v31 - v13;
  v14 = v1[2];
  v43 = v1;
  v44 = a1;
  v40 = v3;
  v41 = a1;
  type metadata accessor for AsyncBroadcastStream.State();
  v36 = v10;
  type metadata accessor for Dictionary.Values();
  type metadata accessor for Optional();
  v15 = *(*v14 + *MEMORY[0x1E69E6B68] + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v14 + v16));
  partial apply for closure #1 in AsyncBroadcastStream.yield(_:)(v14 + v15, &v45);
  os_unfair_lock_unlock((v14 + v16));
  result = v45;
  if (v45)
  {
    v18 = v45 + 64;
    v19 = 1 << *(v45 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v45 + 64);
    v22 = (v19 + 63) >> 6;
    v32 = (v4 + 16);
    v33 = v11 + 16;
    v34 = v11;
    v31 = v11 + 8;
    v23 = (v7 + 8);
    v42 = v45;

    v24 = 0;
    v25 = v34;
    for (i = v37; v21; result = (*v23)(i, v38))
    {
      v27 = v24;
LABEL_10:
      v28 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v29 = v35;
      v30 = v36;
      (*(v25 + 16))(v35, *(v42 + 56) + *(v25 + 72) * (v28 | (v27 << 6)), v36);
      (*v32)(v39, v41, v40);
      AsyncStream.Continuation.yield(_:)();
      (*(v25 + 8))(v29, v30);
    }

    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v27 >= v22)
      {
      }

      v21 = *(v18 + 8 * v27);
      ++v24;
      if (v21)
      {
        v24 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t closure #1 in AsyncBroadcastStream.yield(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24 = a3;
  v25 = a4;
  v6 = *(*a2 + 80);
  v7 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v24 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v24 - v15;
  v17 = *(type metadata accessor for AsyncBroadcastStream.State() + 32);
  (*(v8 + 16))(v12, a1 + v17, v7);
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    v18 = *(v8 + 8);
    v18(v12, v7);
    v19 = v24;
LABEL_5:
    v18((a1 + v17), v7);
    (*(v13 + 16))(a1 + v17, v19, v6);
    (*(v13 + 56))(a1 + v17, 0, 1, v6);
    v23 = *(a1 + 8);
    type metadata accessor for AsyncStream.Continuation();
    *v25 = v23;
  }

  (*(v13 + 32))(v16, v12, v6);
  v20 = a2[3];
  v21 = a2[4];
  v19 = v24;
  LOBYTE(v21) = v20(v16, v24);
  result = (*(v13 + 8))(v16, v6);
  if (v21)
  {
    v18 = *(v8 + 8);
    goto LABEL_5;
  }

  *v25 = 0;
  return result;
}

void closure #1 in AsyncBroadcastStream.finish()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for AsyncStream.Continuation();
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(0);
  *a2 = v3;
}

uint64_t AsyncBroadcastStream<>.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = v2[2];
  v20 = v4;
  v21 = a1;
  type metadata accessor for AsyncBroadcastStream.State();
  v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v15));
  partial apply for closure #1 in AsyncBroadcastStream<>.value.getter(v13 + v14, v12);
  os_unfair_lock_unlock((v13 + v15));
  (*(v6 + 16))(v10, v12, v5);
  v16 = *(v4 - 8);
  if ((*(v16 + 48))(v10, 1, v4) == 1)
  {
    swift_getAssociatedTypeWitness();
    static Array._allocateUninitialized(_:)();
    dispatch thunk of ExpressibleByArrayLiteral.init(arrayLiteral:)();
    return (*(v6 + 8))(v12, v5);
  }

  else
  {
    (*(v6 + 8))(v12, v5);
    return (*(v16 + 32))(v19, v10, v4);
  }
}

{
  v19 = a2;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = v2[2];
  v20 = v4;
  v21 = a1;
  type metadata accessor for AsyncBroadcastStream.State();
  v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v15));
  partial apply for closure #1 in AsyncBroadcastStream<>.value.getter(v13 + v14, v12);
  os_unfair_lock_unlock((v13 + v15));
  (*(v6 + 16))(v10, v12, v5);
  v16 = *(v4 - 8);
  if ((*(v16 + 48))(v10, 1, v4) == 1)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    static Array._allocateUninitialized(_:)();
    dispatch thunk of ExpressibleByDictionaryLiteral.init(dictionaryLiteral:)();
    return (*(v6 + 8))(v12, v5);
  }

  else
  {
    (*(v6 + 8))(v12, v5);
    return (*(v16 + 32))(v19, v10, v4);
  }
}

uint64_t AsyncBroadcastStream<>.yield<A>(modifyingCurrentValue:)(void (*a1)(char *))
{
  return AsyncBroadcastStream<>.yield<A>(modifyingCurrentValue:)(a1);
}

{
  return AsyncBroadcastStream<>.yield<A>(modifyingCurrentValue:)(a1);
}

{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v9(v8);
  a1(v7);
  AsyncBroadcastStream.yield(_:)(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t AsyncBroadcastStream.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18[-v10];
  v12 = v1[2];
  v19 = v3;
  type metadata accessor for AsyncBroadcastStream.State();
  v13 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  partial apply for closure #1 in AsyncBroadcastStream.value.getter(v12 + v13, v11);
  os_unfair_lock_unlock((v12 + v14));
  (*(v5 + 32))(v9, v11, v4);
  v15 = *(v3 - 8);
  v16 = 1;
  if ((*(v15 + 48))(v9, 1, v3) != 1)
  {
    (*(v15 + 32))(a1, v9, v3);
    v16 = 0;
  }

  return (*(v15 + 56))(a1, v16, 1, v3);
}

uint64_t closure #1 in AsyncBroadcastStream.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AsyncBroadcastStream.State() + 32);
  v5 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t specialized OSAllocatedUnfairLock.init(uncheckedState:)()
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  return static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
}

void *specialized AsyncBroadcastStream.init(initialValue:shouldYieldValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v6 = *(*v3 + 80);
  v7 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for AsyncBroadcastStream.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v3[3] = a2;
  v3[4] = a3;
  (*(v8 + 16))(v11, v21, v7);
  type metadata accessor for AsyncStream.Continuation();

  v17 = Dictionary.init()();
  AsyncBroadcastStream.State.init(generation:continuations:currentValue:)(0, v17, v11, v16);
  v18 = specialized OSAllocatedUnfairLock.init(uncheckedState:)();
  (*(v13 + 8))(v16, v12);
  v3[2] = v18;
  return v3;
}

BOOL partial apply for closure #1 in AsyncBroadcastStream.init<>(initialValue:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t partial apply for closure #2 in AsyncBroadcastStream.sequence.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  return closure #2 in AsyncBroadcastStream.sequence.getter();
}

uint64_t partial apply for closure #1 in AsyncBroadcastStream<>.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return partial apply for closure #1 in AsyncBroadcastStream<>.value.getter(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for AsyncBroadcastStream.State() + 32);
  v7 = type metadata accessor for AsyncBroadcastStream.CurrentValue();
  return (*(*(v7 - 8) + 16))(a2, a1 + v6, v7);
}

{
  return partial apply for closure #1 in AsyncBroadcastStream<>.value.getter(a1, a2);
}

uint64_t type metadata completion function for AsyncBroadcastStream.State(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for AsyncStream.Continuation();
  result = type metadata accessor for Dictionary();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for AsyncBroadcastStream.CurrentValue();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncBroadcastStream.State(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for AsyncBroadcastStream.State(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v23 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v27 = *(v7 + 56);
      v28 = a2 + 1;

      v27((v21 + v11 + 8) & ~v11, v28);
    }

    else
    {
      if (v12 <= 3)
      {
        v24 = ~(-1 << (8 * v12));
      }

      else
      {
        v24 = -1;
      }

      if (v12)
      {
        v25 = v24 & (~v9 + a2);
        if (v12 <= 3)
        {
          v26 = v12;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v12);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *v21 = v22;
  }
}

uint64_t partial apply for closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t PeoplePickerHostConnection.delegate.getter()
{
  v1 = v0 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t PeoplePickerHostConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PeoplePickerHostConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for PeoplePickerHostConnection.delegate;
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

Swift::Void __swiftcall PeoplePickerHostConnection.handleHostConnectionInvalidated()()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1AEB26000, v3, v4, "handleHostConnectionInvalidated: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v8 = &v2[direct field offset for PeoplePickerHostConnection.delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

char *PeoplePickerHostConnection.__allocating_init(connection:queue:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[direct field offset for PeoplePickerHostConnection.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  return specialized XPCHostConnection.init(connection:queue:)(a1, a2);
}

char *PeoplePickerHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  *(v2 + direct field offset for PeoplePickerHostConnection.delegate + 8) = 0;
  swift_unknownObjectWeakInit();

  return specialized XPCHostConnection.init(connection:queue:)(a1, a2);
}

id PeoplePickerHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PeoplePickerHostConnection.shareSheetSessionHasRecipients(sessionID:reply:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v7 = v3 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 32))(a1, a2, ObjectType, v8);
    a3(v10 & 1);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.host);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000001AEE385F0, &v17);
      _os_log_impl(&dword_1AEB26000, v13, v14, "%s: People picker host connection delegate is unexpectedly nil", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    return (a3)(0);
  }
}

uint64_t PeoplePickerHostConnection.checkIn(_:reply:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return a2(1);
}

uint64_t PeoplePickerHostConnection.updateActivity(_:)(uint64_t a1)
{
  v3 = v1 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall PeoplePickerHostConnection.dismissViewController()()
{
  v1 = v0 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t type metadata accessor for PeoplePickerHostConnection()
{
  result = type metadata singleton initialization cache for PeoplePickerHostConnection;
  if (!type metadata singleton initialization cache for PeoplePickerHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized PeoplePickerHostConnection.shareSheetSessionHasRecipients(sessionID:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 32))(a1, a2, ObjectType, v8);
    (*(a4 + 16))(a4, v10 & 1);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.host);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x80000001AEE385F0, &v17);
      _os_log_impl(&dword_1AEB26000, v13, v14, "%s: People picker host connection delegate is unexpectedly nil", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    return (*(a4 + 16))(a4, 0);
  }
}

uint64_t specialized PeoplePickerHostConnection.checkIn(_:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + direct field offset for PeoplePickerHostConnection.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return (*(a3 + 16))(a3, 1);
}

uint64_t AttachmentLedger_SubscribeResponse.InitializeAck.otherParticipants.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    v9 = v4[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      goto LABEL_19;
    }

    v13 = v8;
    if (v4[3] < v12)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, isUniquelyReferenced_nonNull_native);
      v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v13)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v17 = v7;
    specialized _NativeDictionary.copy()();
    v7 = v17;
    if (v13)
    {
LABEL_3:
      *(v4[7] + 8 * v7) = v5;
      goto LABEL_4;
    }

LABEL_12:
    v4[(v7 >> 6) + 8] |= 1 << v7;
    *(v4[6] + 8 * v7) = v5;
    *(v4[7] + 8 * v7) = v5;
    v15 = v4[2];
    v11 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v11)
    {
      goto LABEL_20;
    }

    v4[2] = v16;
LABEL_4:
    if (v2 == ++v3)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.uploadStatus.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v32 - v17);
  if (*(v1 + 24) != 1)
  {
    goto LABEL_4;
  }

  v19 = *(v1 + 16);
  if (v19 <= 1)
  {
    if (!v19)
    {
LABEL_4:
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v20 = 1;
      return swift_willThrow();
    }

    *a1 = 0;
    a1[1] = 0;
    v24 = 0xF000000000000000;
    goto LABEL_11;
  }

  if (v19 != 2)
  {
    *a1 = 0;
    a1[1] = 0;
    v24 = 0xB000000000000000;
LABEL_11:
    a1[2] = v24;
    return result;
  }

  v33 = a1;
  v32 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0) + 28);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v32, v9, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v21 = *(v11 + 48);
  v22 = v21(v9, 1, v10);
  v34 = v21;
  if (v22 == 1)
  {
    *v18 = 0;
    v18[1] = 0;
    v18[2] = 0xC000000000000000;
    v23 = v18 + *(v10 + 24);
    UnknownStorage.init()();
    if (v21(v9, 1, v10) != 1)
    {
      outlined destroy of NSObject?(v9, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v9, v18, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  v25 = *v18;
  _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v18, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v32, v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v26 = v34;
  v27 = v34(v7, 1, v10);
  v28 = v33;
  if (v27 == 1)
  {
    *v15 = 0;
    v15[1] = 0;
    v15[2] = 0xC000000000000000;
    v29 = v15 + *(v10 + 24);
    UnknownStorage.init()();
    if (v26(v7, 1, v10) != 1)
    {
      outlined destroy of NSObject?(v7, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v7, v15, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  v30 = v15[1];
  v31 = v15[2];
  outlined copy of Data._Representation(v30, v31);
  result = _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v15, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  *v28 = v25;
  v28[1] = v30;
  v28[2] = v31;
  return result;
}

uint64_t AttachmentLedger_AttachmentMetadata.uploadStatus.getter@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - v7;
  v9 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = v64[8];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v54 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v61 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v54 - v19;
  v21 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v24);
  v29 = &v54 - v28;
  if (*(v1 + 32) != 1)
  {
    goto LABEL_4;
  }

  v30 = *(v1 + 24);
  if (v30 <= 1)
  {
    if (!v30)
    {
LABEL_4:
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v31 = 1;
      return swift_willThrow();
    }

    v35 = v66;
    *v66 = 0;
    v35[1] = 0;
    v36 = 0xF000000000000000;
    goto LABEL_11;
  }

  if (v30 != 2)
  {
    v35 = v66;
    *v66 = 0;
    v35[1] = 0;
    v36 = 0xB000000000000000;
LABEL_11:
    v35[2] = v36;
    return result;
  }

  v56 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v56, v20, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v60 = *(v22 + 48);
  v32 = v60(v20, 1, v21);
  v58 = v22 + 48;
  if (v32 == 1)
  {
    *v29 = 0;
    *(v29 + 1) = 0xE000000000000000;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0xE000000000000000;
    *(v29 + 2) = xmmword_1AEE0C200;
    *(v29 + 3) = xmmword_1AEE0C200;
    v33 = &v29[v21[8]];
    UnknownStorage.init()();
    v34 = v21[9];
    v57 = v2;
    v59 = v64[7];
    v59(&v29[v34], 1, 1, v65);
    v59(&v29[v21[10]], 1, 1, v65);
    if (v60(v20, 1, v21) != 1)
    {
      outlined destroy of NSObject?(v20, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v20, v29, type metadata accessor for AttachmentLedger_MMCSMetadata);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v29[v21[10]], v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v37 = v65;
  v38 = v64 + 6;
  v59 = v64[6];
  v39 = (v59)(v8, 1, v65);
  v57 = v38;
  if (v39 == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xC000000000000000;
    v40 = v14 + *(v37 + 24);
    UnknownStorage.init()();
    _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v29, type metadata accessor for AttachmentLedger_MMCSMetadata);
    v41 = v59;
    if ((v59)(v8, 1, v37) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v29, type metadata accessor for AttachmentLedger_MMCSMetadata);
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v8, v14, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    v41 = v59;
  }

  v55 = *v14;
  _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v14, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v42 = v61;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v56, v61, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v43 = v60;
  if (v60(v42, 1, v21) == 1)
  {
    *v26 = 0;
    *(v26 + 1) = 0xE000000000000000;
    *(v26 + 2) = 0;
    *(v26 + 3) = 0xE000000000000000;
    *(v26 + 2) = xmmword_1AEE0C200;
    *(v26 + 3) = xmmword_1AEE0C200;
    v44 = &v26[v21[8]];
    UnknownStorage.init()();
    v45 = v65;
    v46 = v64[7];
    v46(&v26[v21[9]], 1, 1, v65);
    v46(&v26[v21[10]], 1, 1, v45);
    v47 = v43(v42, 1, v21);
    v41 = v59;
    v49 = v62;
    v48 = v63;
    if (v47 != 1)
    {
      outlined destroy of NSObject?(v42, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v42, v26, type metadata accessor for AttachmentLedger_MMCSMetadata);
    v49 = v62;
    v48 = v63;
    v45 = v65;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v26[v21[10]], v48, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  if (v41(v48, 1, v45) == 1)
  {
    *v49 = 0;
    v49[1] = 0;
    v49[2] = 0xC000000000000000;
    v50 = v49 + *(v45 + 24);
    UnknownStorage.init()();
    _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v26, type metadata accessor for AttachmentLedger_MMCSMetadata);
    if (v41(v48, 1, v45) != 1)
    {
      outlined destroy of NSObject?(v48, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v26, type metadata accessor for AttachmentLedger_MMCSMetadata);
    outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(v48, v49, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  }

  v51 = v49[1];
  v52 = v49[2];
  outlined copy of Data._Representation(v51, v52);
  result = _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(v49, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  v53 = v66;
  *v66 = v55;
  v53[1] = v51;
  v53[2] = v52;
  return result;
}

uint64_t _s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AttachmentLedger_MMCSMetadata.BlobData(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed PresenceSessionConnectionInfo?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t BackgroundSessionManagerXPCClient.prewarm()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManagerXPCClient.prewarm(), 0, 0);
}

uint64_t BackgroundSessionManagerXPCClient.prewarm()()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = BackgroundSessionManagerXPCClient.prewarm();
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0x286D726177657270, 0xE900000000000029, partial apply for closure #1 in BackgroundSessionManagerXPCClient.prewarm(), v1, v4);
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

    v4 = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void closure #1 in BackgroundSessionManagerXPCClient.prewarm()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.prewarm();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_38_0;
  v11 = _Block_copy(aBlock);

  [a2 prewarmWithCompletion_];
  _Block_release(v11);
}

void closure #1 in closure #1 in BackgroundSessionManagerXPCClient.prewarm()(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.default);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Failed to prewarm xpc connection: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.default);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1AEB26000, oslog, v14, "Successfully prewarmed xpc connection", v15, 2u);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }
  }
}

uint64_t BackgroundSessionManagerXPCClient.begin(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManagerXPCClient.begin(request:), 0, 0);
}

uint64_t BackgroundSessionManagerXPCClient.begin(request:)()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = BackgroundSessionManagerXPCClient.begin(request:);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0x6572286E69676562, 0xEF293A7473657571, partial apply for closure #1 in BackgroundSessionManagerXPCClient.begin(request:), v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = BackgroundSessionManagerXPCClient.begin(request:);
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void closure #1 in BackgroundSessionManagerXPCClient.begin(request:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.begin(request:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_32_2;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  [a2 beginWithRequest:v14 completion:v13];
  _Block_release(v13);
}

uint64_t closure #1 in closure #1 in BackgroundSessionManagerXPCClient.begin(request:)(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);
    v6 = a1;
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315394;
      type metadata accessor for BackgroundSessionCreationRequest();
      v12 = v7;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v31);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v16 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v31);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1AEB26000, v8, v9, "Failed to begin activity: %s with error %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    v31 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.default);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      type metadata accessor for BackgroundSessionCreationRequest();
      v27 = v22;
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v31);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1AEB26000, v23, v24, "Successfully began activity: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t BackgroundSessionManagerXPCClient.leave(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManagerXPCClient.leave(identifier:), 0, 0);
}

uint64_t BackgroundSessionManagerXPCClient.leave(identifier:)()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = BackgroundSessionManagerXPCClient.leave(identifier:);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000012, 0x80000001AEE38670, partial apply for closure #1 in BackgroundSessionManagerXPCClient.leave(identifier:), v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = BackgroundSessionManagerXPCClient.leave(identifier:);
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = ConversationManagerClient.stopAdvertisingGroupActivity(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void closure #1 in BackgroundSessionManagerXPCClient.leave(identifier:)(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v10 + 16))(v12, a3, v9);
  v13 = v4;
  (*(v5 + 16))(v8, v20, v4);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v5 + 80) + v14) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v12, v9);
  (*(v5 + 32))(v16 + v15, v8, v13);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.leave(identifier:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_26_2;
  v17 = _Block_copy(aBlock);

  v18 = isa;
  [v22 leaveWithIdentifier:isa completion:v17];
  _Block_release(v17);
}

uint64_t BackgroundSessionManagerXPCClient.updateMembers(identifier:members:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManagerXPCClient.updateMembers(identifier:members:), 0, 0);
}

uint64_t BackgroundSessionManagerXPCClient.updateMembers(identifier:members:)()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = BackgroundSessionManagerXPCClient.updateMembers(identifier:members:);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000022, 0x80000001AEE38690, partial apply for closure #1 in BackgroundSessionManagerXPCClient.updateMembers(identifier:members:), v1, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = BackgroundSessionManagerXPCClient.updateMembers(identifier:members:);
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = SKPresenceDataSource.releasePresence();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void closure #1 in BackgroundSessionManagerXPCClient.updateMembers(identifier:members:)(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v20 = a4;
  v21 = a1;
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v20 = Set._bridgeToObjectiveC()().super.isa;
  (*(v11 + 16))(v13, a3, v10);
  (*(v6 + 16))(v9, v21, v5);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v14, v13, v10);
  (*(v6 + 32))(v16 + v15, v9, v5);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.updateMembers(identifier:members:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_20_1;
  v17 = _Block_copy(aBlock);

  v18 = isa;
  v19 = v20;
  [v23 updateMembersWithIdentifier:isa members:v20 completion:v17];
  _Block_release(v17);
}

uint64_t closure #1 in closure #1 in BackgroundSessionManagerXPCClient.leave(identifier:)(void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  if (a1)
  {
    v18 = a1;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.default);
    (*(v11 + 16))(v15, a2, v10);
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = a4;
      v25 = v24;
      v48 = v24;
      *v23 = 136315394;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = a3;
      v28 = v27;
      (*(v11 + 8))(v15, v10);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v48);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      v47 = a1;
      v30 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v31 = String.init<A>(reflecting:)();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v48);

      *(v23 + 14) = v33;
      _os_log_impl(&dword_1AEB26000, v21, v22, v45, v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v25, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }

    v48 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.default);
    (*(v11 + 16))(v17, a2, v10);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = a3;
      v39 = v38;
      v48 = v38;
      *v37 = 136315138;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v11 + 8))(v17, v10);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v48);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_1AEB26000, v35, v36, a5, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1B27120C0](v39, -1, -1);
      MEMORY[0x1B27120C0](v37, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t BackgroundSessionManagerXPCClient.createPresenceSession(with:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManagerXPCClient.createPresenceSession(with:), 0, 0);
}

uint64_t BackgroundSessionManagerXPCClient.createPresenceSession(with:)()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for PresenceSessionConnectionInfo();
  *v4 = v0;
  v4[1] = BackgroundSessionManagerXPCClient.createPresenceSession(with:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x80000001AEE386C0, partial apply for closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:), v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = BackgroundSessionManagerXPCClient.updateMembers(identifier:members:);
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = BackgroundSessionManagerXPCClient.createPresenceSession(with:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:)(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed PresenceSessionConnectionInfo?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_42;
  v13 = _Block_copy(aBlock);
  v14 = a3;

  [a2 createPresenceSessionWith:v14 completion:v13];
  _Block_release(v13);
}

void closure #1 in closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:)(void *a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);
    v7 = a2;
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v36 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2080;
      v14 = a2;
      v15 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Failed to create presence session with request: %@ with error: %s", v11, 0x16u);
      outlined destroy of NSObject?(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B27120C0](v13, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v36 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.default);
    v21 = a1;
    v22 = a3;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v25 = 138412546;
      *(v25 + 4) = v22;
      *v26 = v22;
      *(v25 + 12) = 2080;
      if (a1)
      {
        type metadata accessor for PresenceSessionConnectionInfo();
        v28 = v22;
        v29 = v21;
        v30 = String.init<A>(reflecting:)();
        v32 = v31;
      }

      else
      {
        v33 = v22;
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v36);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_1AEB26000, v23, v24, "Successfully created presence session with request: %@, connectionInfo: %s", v25, 0x16u);
      outlined destroy of NSObject?(v26);
      MEMORY[0x1B27120C0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

    if (a1)
    {
      v36 = v21;
      v35 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      __break(1u);
    }
  }
}

id closure #1 in variable initialization expression of static BackgroundSessionManagerInterface.hostObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(inited + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_updateMembersWithIdentifier_members_completion_ argumentIndex:1 ofReply:0];

  return v0;
}

id closure #1 in variable initialization expression of static BackgroundSessionManagerInterface.clientObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(inited + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_updateWithActivitySessions_ argumentIndex:0 ofReply:0];

  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AEE07B10;
  *(v6 + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(v6 + 40) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  specialized _arrayForceCast<A, B>(_:)(v6);
  swift_setDeallocating();
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v10 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v10 forSelector:sel_sessionDidReceiveUpdatedUnknownParticipantListWithSessionID_unknownParticipants_ argumentIndex:1 ofReply:0];

  return v0;
}

void partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:)(void *a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR) - 8) + 80);
  v6 = *(v2 + 16);

  closure #1 in closure #1 in BackgroundSessionManagerXPCClient.createPresenceSession(with:)(a1, a2, v6);
}

uint64_t objectdestroy_16Tm_1()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
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

uint64_t partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.updateMembers(identifier:members:)(void *a1, const char *a2, const char *a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  return closure #1 in closure #1 in BackgroundSessionManagerXPCClient.leave(identifier:)(a1, v3 + v8, v3 + ((v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

uint64_t objectdestroyTm_6(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.begin(request:)(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);
  v4 = *(v1 + 16);

  return closure #1 in closure #1 in BackgroundSessionManagerXPCClient.begin(request:)(a1, v4);
}

void partial apply for closure #1 in closure #1 in BackgroundSessionManagerXPCClient.prewarm()(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);

  closure #1 in closure #1 in BackgroundSessionManagerXPCClient.prewarm()(a1);
}

Swift::Int TopicDecryptionError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError()
{
  result = lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError;
  if (!lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError;
  if (!lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicDecryptionError and conformance TopicDecryptionError);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000027;
    }

    else
    {
      v3 = 0xD00000000000002CLL;
    }

    if (v2 == 2)
    {
      v4 = "rsationmanagerhost";
    }

    else
    {
      v4 = "lay.GroupSessionService";
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000032;
    }

    else
    {
      v3 = 0xD00000000000002CLL;
    }

    if (v2)
    {
      v4 = "ence.conversationmanagerhost";
    }

    else
    {
      v4 = "stablishing";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000027;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (a2 == 2)
    {
      v6 = "rsationmanagerhost";
    }

    else
    {
      v6 = "lay.GroupSessionService";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000032;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (a2)
    {
      v6 = "ence.conversationmanagerhost";
    }

    else
    {
      v6 = "stablishing";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7368801;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x6D6574737973;
  }

  else if (a1 == 3)
  {
    v3 = 0x68536E6565726373;
    v4 = 0xEB00000000657261;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x636E795374736166;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7368801;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x68536E6565726373;
    v6 = 0xEB00000000657261;
    if (a2 != 3)
    {
      v5 = 0x636E795374736166;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D6574737973;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

void PubSubClient.TopicCategory.init(activity:)(void *a1@<X0>, char *a2@<X8>)
{
  if (a1)
  {
    if ([a1 isSystemActivity])
    {

      v4 = 2;
    }

    else
    {
      v5 = [a1 isScreenSharingActivity];

      if (v5)
      {
        v4 = 3;
      }

      else
      {
        v4 = 1;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

Swift::Int PubSubClientError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

CopresenceCore::PubSubClient::TopicCategory_optional __swiftcall PubSubClient.TopicCategory.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PubSubClient.TopicCategory.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t PubSubClient.TopicCategory.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6D6574737973;
  v4 = 0x68536E6565726373;
  if (v1 != 3)
  {
    v4 = 0x636E795374736166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7368801;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PubSubClient.TopicCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PubSubClient.TopicCategory()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PubSubClient.TopicCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PubSubClient.TopicCategory(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x6D6574737973;
  v7 = 0xEB00000000657261;
  v8 = 0x68536E6565726373;
  if (v2 != 3)
  {
    v8 = 0x636E795374736166;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7368801;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t PubSubClient.reporterTag.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PubSubClient.__allocating_init(serviceProvider:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:topicReporter:topicReporterTag:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CD0];
  *(v12 + 96) = MEMORY[0x1E69E7CC8];
  *(v12 + 104) = v13;
  outlined init with take of ContiguousBytes(a1, v12 + 16);
  *(v12 + 56) = a6;
  *(v12 + 64) = a2;
  *(v12 + 72) = a3;
  *(v12 + 80) = a4;
  *(v12 + 88) = a5;
  return v12;
}

uint64_t PubSubClient.init(serviceProvider:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:topicReporter:topicReporterTag:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = MEMORY[0x1E69E7CD0];
  *(v6 + 96) = MEMORY[0x1E69E7CC8];
  *(v6 + 104) = v12;
  outlined init with take of ContiguousBytes(a1, v6 + 16);
  *(v6 + 56) = a6;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  return v6;
}

uint64_t PubSubClient.__allocating_init(pluginClient:createTopicMaxAttempts:createTopicRpcRetryIntervalSeconds:topicReporter:topicReporterTag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = type metadata accessor for PluginPubSubServiceProvider();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v16[3] = v13;
  v16[4] = &protocol witness table for PluginPubSubServiceProvider;
  v16[0] = v14;
  return (*(v6 + 184))(v16, a2, a3, a4, a5, a6);
}

uint64_t *PubSubClient.deinit()
{
  swift_beginAccess();
  v1 = v0[13];
  v0[13] = MEMORY[0x1E69E7CD0];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  return v0;
}

uint64_t PubSubClient.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = v0[13];
  v0[13] = MEMORY[0x1E69E7CD0];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall PubSubClient.close()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 24))(v1, v2);
}

uint64_t PubSubClient.updateVirtualParticipant(_:localParticipantID:)(void *a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 32))([a1 identifier], a2, v5, v6);
}

uint64_t PubSubClient.localParticipantID.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = a8;
  v63 = a6;
  v64 = a4;
  TopicRequest = type metadata accessor for CP_CreateTopicRequest(0);
  v58 = *(TopicRequest - 8);
  v17 = *(v58 + 8);
  v18 = MEMORY[0x1EEE9AC00](TopicRequest);
  v59 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  swift_beginAccess();
  v21 = a1[12];
  v22 = *(v21 + 16);
  v65 = a5;
  v66 = a2;
  if (v22)
  {

    v23 = a2;
    v24 = a3;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23, a3);
    if (v26)
    {
      v27 = *(*(v21 + 56) + 8 * v25);

      v28 = *(v27 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
      OS_dispatch_queue.sync<A>(execute:)();
      if (LOBYTE(v67[0]) == 1)
      {

        v64(v29, 0);
      }
    }

    else
    {
    }
  }

  else
  {
    v24 = a3;
  }

  v56 = a11;
  v55 = a10;
  v54 = a9;
  v31 = swift_allocObject();
  v61 = v31;
  *(v31 + 16) = 0;
  MEMORY[0x1EEE9AC00](v31);
  *(&v54 - 4) = v66;
  *(&v54 - 3) = v24;
  v60 = v24;
  *(&v54 - 16) = v63;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type CP_CreateTopicRequest and conformance CP_CreateTopicRequest, type metadata accessor for CP_CreateTopicRequest);
  static Message.with(_:)();
  v32 = a1[5];
  v33 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v32);
  v57 = (*(v33 + 64))(v20, v32, v33);
  v68 = v57;
  v34 = v59;
  _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v20, v59, type metadata accessor for CP_CreateTopicRequest);
  outlined init with copy of UserNotificationCenter(v62, v67);
  v35 = (v58[80] + 64) & ~v58[80];
  v36 = (v17 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 73) & 0xFFFFFFFFFFFFFFF8;
  v58 = v20;
  v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v39[2] = v61;
  v39[3] = a1;
  v40 = v65;
  v39[4] = v64;
  v39[5] = v40;
  v41 = v60;
  v39[6] = v66;
  v39[7] = v41;
  outlined init with take of CP_CreateTopicRequest(v34, v39 + v35, type metadata accessor for CP_CreateTopicRequest);
  v42 = v39 + v36;
  v43 = *(a7 + 48);
  *(v42 + 2) = *(a7 + 32);
  *(v42 + 3) = v43;
  v42[64] = *(a7 + 64);
  v44 = *(a7 + 16);
  *v42 = *a7;
  *(v42 + 1) = v44;
  LOBYTE(v36) = v63;
  v42[65] = v63;
  outlined init with take of ContiguousBytes(v67, v39 + v37);
  v45 = (v39 + v38);
  v46 = v54;
  v47 = v55;
  *v45 = v54;
  v45[1] = v47;
  v48 = v56;
  *(v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8)) = v56;
  outlined init with copy of UserNotificationCenter(v62, v67);
  v49 = swift_allocObject();
  v50 = *(a7 + 48);
  *(v49 + 48) = *(a7 + 32);
  *(v49 + 64) = v50;
  *(v49 + 80) = *(a7 + 64);
  v51 = *(a7 + 16);
  *(v49 + 16) = *a7;
  *(v49 + 32) = v51;
  v52 = v60;
  *(v49 + 88) = v66;
  *(v49 + 96) = v52;
  *(v49 + 104) = v36;
  *(v49 + 112) = a1;
  outlined init with take of ContiguousBytes(v67, v49 + 120);
  *(v49 + 160) = v46;
  *(v49 + 168) = v47;
  v53 = v64;
  *(v49 + 176) = v48;
  *(v49 + 184) = v53;
  *(v49 + 192) = v65;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_CreateTopicResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMR);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  outlined destroy of CP_CreateTopicRequest(v58, type metadata accessor for CP_CreateTopicRequest);
}

uint64_t closure #1 in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 1;
  return result;
}

uint64_t closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t), void (*a5)(void *, uint64_t), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v196 = a8;
  v207 = a7;
  v204 = a6;
  v210 = a5;
  v209 = a4;
  v211 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v189 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v190 = (&v174 - v20);
  v188 = type metadata accessor for PluginConnectError();
  v187 = *(v188 - 8);
  v21 = *(v187 + 64);
  v22 = MEMORY[0x1EEE9AC00](v188);
  v185 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v186 = &v174 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v191 = &v174 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v174 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v203 = &v174 - v31;
  v202 = type metadata accessor for DispatchWorkItemFlags();
  v201 = *(v202 - 8);
  v32 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v198 = &v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for DispatchQoS();
  v199 = *(v200 - 8);
  v34 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v197 = &v174 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  TopicRequest = type metadata accessor for CP_CreateTopicRequest(0);
  v193 = *(TopicRequest - 8);
  v37 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v194 = v38;
  v195 = &v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for DispatchTime();
  v208 = *(v206 - 8);
  v39 = *(v208 + 64);
  v40 = MEMORY[0x1EEE9AC00](v206);
  v192 = &v174 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v205 = &v174 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v174 - v45;
  v47 = type metadata accessor for PluginRpcError();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v174 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v174 - v53;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v46, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    return outlined destroy of NSObject?(v46, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  }

  outlined init with take of CP_CreateTopicRequest(v46, v54, type metadata accessor for PluginRpcError);
  swift_beginAccess();
  v56 = v211;
  if (*(a2 + 16) == v211[8])
  {
    type metadata accessor for PubSubTopicError(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type PubSubTopicError and conformance PubSubTopicError, type metadata accessor for PubSubTopicError);
    v57 = swift_allocError();
    _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v54, v58, type metadata accessor for PluginRpcError);
    swift_storeEnumTagMultiPayload();
    v209(v57, 1);

    return outlined destroy of CP_CreateTopicRequest(v54, type metadata accessor for PluginRpcError);
  }

  v59 = a2;
  v60 = a12;
  v183 = a11;
  v184 = a9;
  _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v54, v52, type metadata accessor for PluginRpcError);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = *v52;
    v62 = *(v52 + 1);
    v63 = *(v52 + 3);
    if (v61 != 14)
    {
      type metadata accessor for PubSubTopicError(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type PubSubTopicError and conformance PubSubTopicError, type metadata accessor for PubSubTopicError);
      v87 = swift_allocError();
      _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v54, v88, type metadata accessor for PluginRpcError);
      swift_storeEnumTagMultiPayload();
      v209(v87, 1);

      return outlined destroy of CP_CreateTopicRequest(v54, type metadata accessor for PluginRpcError);
    }

    v182 = a10;
    v180 = a13;
    v181 = a14;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, log);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v207;
    if (v67)
    {
      v69 = v62;
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1AEB26000, v65, v66, "[CreateTopic] Failed, server bouncing", v70, 2u);
      v71 = v70;
      v62 = v69;
      v60 = a12;
      v68 = v207;
      MEMORY[0x1B27120C0](v71, -1, -1);
    }

    swift_beginAccess();
    v72 = *(v59 + 16);
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (!v73)
    {
      v191 = v62;
      *(v59 + 16) = v74;

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();

      v77 = os_log_type_enabled(v75, v76);
      v179 = v54;
      v178 = v60;
      v203 = v63;
      v177 = v59;
      if (v77)
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock = v79;
        *v78 = 134218498;
        *(v78 + 4) = v56[7];
        *(v78 + 12) = 2048;
        swift_beginAccess();
        *(v78 + 14) = *(v59 + 16);

        *(v78 + 22) = 2080;
        *(v78 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v68, &aBlock);
        _os_log_impl(&dword_1AEB26000, v75, v76, "[CreateTopic] Retrying stream in %f seconds, attempt=#%ld topic=%s", v78, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        MEMORY[0x1B27120C0](v79, -1, -1);
        MEMORY[0x1B27120C0](v78, -1, -1);
      }

      else
      {
      }

      v104 = v192;
      static DispatchTime.now()();
      v105 = v56[7];
      + infix(_:_:)();
      v106 = *(v208 + 8);
      v208 += 8;
      v190 = v106;
      (v106)(v104, v206);
      v107 = v56[5];
      v108 = v56[6];
      __swift_project_boxed_opaque_existential_1(v56 + 2, v107);
      v192 = (*(v108 + 8))(v107, v108);
      v109 = v195;
      _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v196, v195, type metadata accessor for CP_CreateTopicRequest);
      outlined init with copy of UserNotificationCenter(v183, &v219);
      v110 = (*(v193 + 80) + 24) & ~*(v193 + 80);
      v111 = (v194 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
      v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
      v113 = (v112 + 23) & 0xFFFFFFFFFFFFFFF8;
      v114 = (v113 + 23) & 0xFFFFFFFFFFFFFFF8;
      v115 = (v114 + 73) & 0xFFFFFFFFFFFFFFF8;
      v196 = (v115 + 47) & 0xFFFFFFFFFFFFFFF8;
      v194 = (v196 + 23) & 0xFFFFFFFFFFFFFFF8;
      v116 = swift_allocObject();
      *(v116 + 16) = v56;
      outlined init with take of CP_CreateTopicRequest(v109, v116 + v110, type metadata accessor for CP_CreateTopicRequest);
      *(v116 + v111) = v177;
      v117 = (v116 + v112);
      v118 = v210;
      *v117 = v209;
      v117[1] = v118;
      v119 = (v116 + v113);
      v120 = v207;
      *v119 = v204;
      v119[1] = v120;
      v121 = v116 + v114;
      v122 = v184;
      *(v121 + 64) = *(v184 + 64);
      v123 = v122[3];
      *(v121 + 32) = v122[2];
      *(v121 + 48) = v123;
      v124 = v122[1];
      *v121 = *v122;
      *(v121 + 16) = v124;
      *(v121 + 65) = v182;
      outlined init with take of ContiguousBytes(&v219, v116 + v115);
      v125 = (v116 + v196);
      v126 = v180;
      *v125 = v178;
      v125[1] = v126;
      *(v116 + v194) = v181;
      v217 = closure #1 in retry #1 () in closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)partial apply;
      v218 = v116;
      aBlock = MEMORY[0x1E69E9820];
      v214 = 1107296256;
      v215 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v216 = &block_descriptor_47_2;
      v127 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      v128 = v197;
      static DispatchQoS.unspecified.getter();
      v212 = MEMORY[0x1E69E7CC0];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v129 = v198;
      v130 = v202;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v131 = v205;
      v132 = v192;
      MEMORY[0x1B2710670](v205, v128, v129, v127);
      _Block_release(v127);

      (*(v201 + 8))(v129, v130);
      (*(v199 + 8))(v128, v200);
      (v190)(v131, v206);
LABEL_36:
      outlined destroy of CP_CreateTopicRequest(v179, type metadata accessor for PluginRpcError);
    }

    __break(1u);
    goto LABEL_38;
  }

  v182 = a10;
  v68 = v203;
  outlined init with take of CP_CreateTopicRequest(v52, v203, type metadata accessor for PluginConnectError);
  _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v68, v30, type metadata accessor for PluginConnectError);
  v80 = type metadata accessor for NWError();
  v81 = (*(*(v80 - 8) + 48))(v30, 3, v80);
  outlined destroy of CP_CreateTopicRequest(v30, type metadata accessor for PluginConnectError);
  if (v81 == 3)
  {
    if (one-time initialization token for log == -1)
    {
LABEL_17:
      v82 = type metadata accessor for Logger();
      __swift_project_value_buffer(v82, log);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1AEB26000, v83, v84, "[CreateTopic] Failed, service-provider client closed", v85, 2u);
        MEMORY[0x1B27120C0](v85, -1, -1);
      }

      lazy protocol witness table accessor for type PubSubClientError and conformance PubSubClientError();
      v86 = swift_allocError();
      v209(v86, 1);

      outlined destroy of CP_CreateTopicRequest(v68, type metadata accessor for PluginConnectError);
      return outlined destroy of CP_CreateTopicRequest(v54, type metadata accessor for PluginRpcError);
    }

LABEL_38:
    swift_once();
    goto LABEL_17;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  v90 = __swift_project_value_buffer(v89, log);
  v91 = v191;
  _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v68, v191, type metadata accessor for PluginConnectError);
  v176 = v90;
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();
  v94 = os_log_type_enabled(v92, v93);
  v95 = v207;
  v181 = a14;
  v180 = a13;
  if (v94)
  {
    v175 = v93;
    v96 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    aBlock = v174;
    *v96 = 136315138;
    v97 = v190;
    _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v91, v190, type metadata accessor for PluginConnectError);
    v98 = v187;
    v99 = v188;
    (*(v187 + 56))(v97, 0, 1, v188);
    v100 = v97;
    v101 = v189;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v100, v189, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
    if ((*(v98 + 48))(v101, 1, v99) == 1)
    {
      v102 = 0xE300000000000000;
      v103 = 7104878;
    }

    else
    {
      v133 = v186;
      outlined init with take of CP_CreateTopicRequest(v101, v186, type metadata accessor for PluginConnectError);
      _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v133, v185, type metadata accessor for PluginConnectError);
      v103 = String.init<A>(reflecting:)();
      v102 = v134;
      outlined destroy of CP_CreateTopicRequest(v133, type metadata accessor for PluginConnectError);
    }

    outlined destroy of NSObject?(v190, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
    outlined destroy of CP_CreateTopicRequest(v191, type metadata accessor for PluginConnectError);
    v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v102, &aBlock);

    *(v96 + 4) = v135;
    _os_log_impl(&dword_1AEB26000, v92, v175, "[CreateTopic] Failed with connection error, error=%s", v96, 0xCu);
    v136 = v174;
    __swift_destroy_boxed_opaque_existential_1Tm(v174);
    MEMORY[0x1B27120C0](v136, -1, -1);
    MEMORY[0x1B27120C0](v96, -1, -1);

    v95 = v207;
  }

  else
  {

    outlined destroy of CP_CreateTopicRequest(v91, type metadata accessor for PluginConnectError);
  }

  result = swift_beginAccess();
  v137 = *(v59 + 16);
  v73 = __OFADD__(v137, 1);
  v138 = v137 + 1;
  v139 = v204;
  if (!v73)
  {
    *(v59 + 16) = v138;

    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.default.getter();

    v142 = os_log_type_enabled(v140, v141);
    v179 = v54;
    v178 = a12;
    v177 = v59;
    if (v142)
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      aBlock = v144;
      *v143 = 134218498;
      *(v143 + 4) = v56[7];
      *(v143 + 12) = 2048;
      swift_beginAccess();
      *(v143 + 14) = *(v59 + 16);

      *(v143 + 22) = 2080;
      *(v143 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v95, &aBlock);
      _os_log_impl(&dword_1AEB26000, v140, v141, "[CreateTopic] Retrying stream in %f seconds, attempt=#%ld topic=%s", v143, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v144);
      MEMORY[0x1B27120C0](v144, -1, -1);
      MEMORY[0x1B27120C0](v143, -1, -1);
    }

    else
    {
    }

    v145 = v192;
    static DispatchTime.now()();
    v146 = v56[7];
    + infix(_:_:)();
    v147 = *(v208 + 8);
    v208 += 8;
    v191 = v147;
    (v147)(v145, v206);
    v148 = v56[5];
    v149 = v56[6];
    __swift_project_boxed_opaque_existential_1(v56 + 2, v148);
    v192 = (*(v149 + 8))(v148, v149);
    v150 = v195;
    _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v196, v195, type metadata accessor for CP_CreateTopicRequest);
    outlined init with copy of UserNotificationCenter(v183, &v219);
    v151 = (*(v193 + 80) + 24) & ~*(v193 + 80);
    v152 = (v194 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
    v153 = (v152 + 15) & 0xFFFFFFFFFFFFFFF8;
    v154 = (v153 + 23) & 0xFFFFFFFFFFFFFFF8;
    v155 = (v154 + 23) & 0xFFFFFFFFFFFFFFF8;
    v156 = (v155 + 73) & 0xFFFFFFFFFFFFFFF8;
    v196 = (v156 + 47) & 0xFFFFFFFFFFFFFFF8;
    v194 = (v196 + 23) & 0xFFFFFFFFFFFFFFF8;
    v157 = swift_allocObject();
    *(v157 + 16) = v56;
    outlined init with take of CP_CreateTopicRequest(v150, v157 + v151, type metadata accessor for CP_CreateTopicRequest);
    *(v157 + v152) = v177;
    v158 = (v157 + v153);
    v159 = v210;
    *v158 = v209;
    v158[1] = v159;
    v160 = (v157 + v154);
    v161 = v207;
    *v160 = v204;
    v160[1] = v161;
    v162 = v157 + v155;
    v163 = v184;
    *(v162 + 64) = *(v184 + 64);
    v164 = v163[3];
    *(v162 + 32) = v163[2];
    *(v162 + 48) = v164;
    v165 = v163[1];
    *v162 = *v163;
    *(v162 + 16) = v165;
    *(v162 + 65) = v182;
    outlined init with take of ContiguousBytes(&v219, v157 + v156);
    v166 = (v157 + v196);
    v167 = v180;
    *v166 = v178;
    v166[1] = v167;
    *(v157 + v194) = v181;
    v217 = partial apply for closure #1 in retry #1 () in closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:);
    v218 = v157;
    aBlock = MEMORY[0x1E69E9820];
    v214 = 1107296256;
    v215 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v216 = &block_descriptor_40_0;
    v168 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v169 = v197;
    static DispatchQoS.unspecified.getter();
    v212 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v170 = v198;
    v171 = v202;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v172 = v205;
    v173 = v192;
    MEMORY[0x1B2710670](v205, v169, v170, v168);
    _Block_release(v168);

    (*(v201 + 8))(v170, v171);
    (*(v199 + 8))(v169, v200);
    (v191)(v172, v206);
    outlined destroy of CP_CreateTopicRequest(v203, type metadata accessor for PluginConnectError);
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in retry #1 () in closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v44 = a7;
  v50 = a6;
  v51 = a4;
  v52 = a5;
  v53 = a3;
  v47 = a12;
  v48 = a13;
  v45 = a9;
  v46 = a11;
  v42 = a10;
  TopicRequest = type metadata accessor for CP_CreateTopicRequest(0);
  v17 = *(TopicRequest - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](TopicRequest - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[5];
  v21 = a1[6];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 2, v20);
  v49 = (*(v21 + 64))(a2, v20, v21);
  v55 = v49;
  _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(a2, v19, type metadata accessor for CP_CreateTopicRequest);
  outlined init with copy of UserNotificationCenter(a10, v54);
  v22 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 73) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v26[2] = v53;
  v26[3] = a1;
  v27 = v52;
  v26[4] = v51;
  v26[5] = v27;
  v28 = v44;
  v26[6] = v50;
  v26[7] = v28;
  outlined init with take of CP_CreateTopicRequest(v19, v26 + v22, type metadata accessor for CP_CreateTopicRequest);
  v29 = v26 + v23;
  v30 = *(a8 + 48);
  *(v29 + 2) = *(a8 + 32);
  *(v29 + 3) = v30;
  v29[64] = *(a8 + 64);
  v31 = *(a8 + 16);
  *v29 = *a8;
  *(v29 + 1) = v31;
  LOBYTE(v19) = v45;
  v29[65] = v45;
  outlined init with take of ContiguousBytes(v54, v26 + v24);
  v32 = (v26 + v25);
  v33 = v46;
  v34 = v47;
  *v32 = v46;
  v32[1] = v34;
  v35 = v48;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v48;
  outlined init with copy of UserNotificationCenter(v42, v54);
  v36 = swift_allocObject();
  v37 = *(a8 + 48);
  *(v36 + 48) = *(a8 + 32);
  *(v36 + 64) = v37;
  *(v36 + 80) = *(a8 + 64);
  v38 = *(a8 + 16);
  *(v36 + 16) = *a8;
  *(v36 + 32) = v38;
  *(v36 + 88) = v50;
  *(v36 + 96) = v28;
  *(v36 + 104) = v19;
  *(v36 + 112) = v43;
  outlined init with take of ContiguousBytes(v54, v36 + 120);
  *(v36 + 160) = v33;
  *(v36 + 168) = v34;
  v39 = v51;
  *(v36 + 176) = v35;
  *(v36 + 184) = v39;
  *(v36 + 192) = v52;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_CreateTopicResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore22CP_CreateTopicResponseVAD14PluginRpcErrorOGMR);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #2 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void *, uint64_t), uint64_t a12)
{
  v230 = a8;
  v194 = a7;
  v231 = a6;
  v190 = a5;
  v232 = a4;
  v233 = a3;
  v234 = a12;
  v235 = a11;
  v229 = a10;
  v205 = a9;
  v14 = *(a2 + 8);
  v226 = *a2;
  v225 = v14;
  v15 = *(a2 + 24);
  v224 = *(a2 + 16);
  v223 = v15;
  v16 = *(a2 + 32);
  v222 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v220 = *(v221 - 8);
  v19 = *(v220 + 64);
  v20 = MEMORY[0x1EEE9AC00](v221);
  v218 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v219 = &v182 - v22;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v213 = *(v214 - 8);
  v23 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v212 = &v182 - v24;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v216 = *(v217 - 8);
  v25 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v215 = &v182 - v26;
  v211 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v210 = *(v211 - 8);
  v27 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v209 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for OS_dispatch_queue.Attributes();
  v29 = *(*(v207 - 8) + 64);
  MEMORY[0x1EEE9AC00](v207);
  v208 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v206 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for UUID();
  v192 = *(v193 - 8);
  v34 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v191 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMd, &_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMR);
  v204 = *(v227 - 8);
  v36 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v203 = &v182 - v37;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64VAEGGMd, &_s7Combine9PublishedVySDys6UInt64VAEGGMR);
  v201 = *(v202 - 8);
  v38 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v200 = &v182 - v39;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v199 = *(v228 - 8);
  v40 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v228);
  v198 = &v182 - v41;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v196 = *(v197 - 8);
  v42 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v182 - v43;
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v45 = *(Topic - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x1EEE9AC00](Topic);
  v49 = &v182 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v182 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = (&v182 - v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v55 - 8);
  v59 = &v182 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v182 - v60;
  v62 = *a1;
  if (*(a1 + 8) != 1)
  {
    goto LABEL_41;
  }

  if (v62 <= 3)
  {
    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v62 = 3;
      }

      else
      {
        v62 = 4;
      }

      goto LABEL_41;
    }

    if (!v62)
    {
LABEL_41:
      v78 = *(a1 + 16);
      v77 = *(a1 + 24);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      __swift_project_value_buffer(v79, log);

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v236[0] = v83;
        *v82 = 134218242;
        *(v82 + 4) = v62;
        *(v82 + 12) = 2080;
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v77, v236);

        *(v82 + 14) = v84;
        _os_log_impl(&dword_1AEB26000, v80, v81, "[CreateTopic] Failed, unexpected response-status, code=%ld error=%s", v82, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x1B27120C0](v83, -1, -1);
        MEMORY[0x1B27120C0](v82, -1, -1);
      }

      else
      {
      }

      v85 = v235;
      type metadata accessor for PubSubTopicError(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type PubSubTopicError and conformance PubSubTopicError, type metadata accessor for PubSubTopicError);
      v86 = swift_allocError();
      *v87 = 0xD000000000000017;
      v87[1] = 0x80000001AEE304C0;
      swift_storeEnumTagMultiPayload();
      v85(v86, 1);

      return;
    }
  }

  else
  {
    if (v62 <= 5)
    {
      if (v62 == 4)
      {
        v62 = 5;
      }

      else
      {
        v62 = 6;
      }

      goto LABEL_41;
    }

    if (v62 == 6)
    {
      v62 = 7;
      goto LABEL_41;
    }

    if (v62 == 7)
    {
      v62 = 8;
      goto LABEL_41;
    }
  }

  v184 = *(a2 + 64);
  v63 = 0x10000;
  if ((v184 & 1) == 0)
  {
    v63 = v226;
  }

  v189 = v63;
  v64 = 1000;
  v65 = v225;
  if (v184)
  {
    v65 = 1000;
  }

  v188 = v65;
  if ((v184 & 1) == 0)
  {
    v64 = v224;
  }

  v187 = v64;
  v66 = 2;
  if ((v184 & 1) == 0)
  {
    v66 = v223;
  }

  v186 = v66;
  if (v184)
  {
    v67 = 1.0;
  }

  else
  {
    v67 = v16;
  }

  v68 = 3;
  if ((v184 & 1) == 0)
  {
    v68 = v222;
  }

  v185 = v68;
  if (v184)
  {
    v69 = 10.0;
  }

  else
  {
    v69 = v17;
  }

  if (v184)
  {
    v70 = 1.0;
  }

  else
  {
    v70 = v18;
  }

  v71 = *(type metadata accessor for CP_CreateTopicResponse(0) + 28);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v71, v61, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v183 = *(v45 + 48);
  v72 = v183(v61, 1, Topic);
  outlined destroy of NSObject?(v61, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  if (v72 == 1)
  {
    v73 = v194;
    v74 = v185;
  }

  else if (v184)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v71, v59, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
    v75 = v183;
    if (v183(v59, 1, Topic) == 1)
    {
      *(v54 + 28) = 0u;
      *v54 = 0u;
      v54[1] = 0u;
      v76 = v54 + *(Topic + 48);
      UnknownStorage.init()();
      if (v75(v59, 1, Topic) != 1)
      {
        outlined destroy of NSObject?(v59, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
      }
    }

    else
    {
      outlined init with take of CP_CreateTopicRequest(v59, v54, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, log);
    _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v54, v52, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    v89 = v232;

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v236[0] = v93;
      *v92 = 136315650;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
      v94 = Message.debugDescription.getter();
      v96 = v95;
      outlined destroy of CP_CreateTopicRequest(v52, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v236);

      *(v92 + 4) = v97;
      *(v92 + 12) = 2080;
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v233, v89, v236);
      v99 = v190;
      *(v92 + 14) = v98;
      v100 = 0xE700000000000000;
      v101 = 0x6E776F6E6B6E75;
      *(v92 + 22) = 2080;
      v102 = 0xE600000000000000;
      v103 = 0x6D6574737973;
      v104 = 0xEB00000000657261;
      v105 = 0x68536E6565726373;
      if (v99 != 3)
      {
        v105 = 0x636E795374736166;
        v104 = 0xE800000000000000;
      }

      if (v99 != 2)
      {
        v103 = v105;
        v102 = v104;
      }

      if (v99)
      {
        v101 = 7368801;
        v100 = 0xE300000000000000;
      }

      if (v99 <= 1)
      {
        v106 = v101;
      }

      else
      {
        v106 = v103;
      }

      if (v99 <= 1)
      {
        v107 = v100;
      }

      else
      {
        v107 = v102;
      }

      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v236);

      *(v92 + 24) = v108;
      _os_log_impl(&dword_1AEB26000, v90, v91, "[CreateTopic] Using server-specified topic-config, config=%s topic=%s, category=%s", v92, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v93, -1, -1);
      MEMORY[0x1B27120C0](v92, -1, -1);
    }

    else
    {

      outlined destroy of CP_CreateTopicRequest(v52, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    }

    v73 = v194;
    _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(v54, v49, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    PubSubTopic.Configuration.init(proto:)(v49, v236);
    outlined destroy of CP_CreateTopicRequest(v54, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
    v189 = v236[0];
    v188 = v236[1];
    v187 = v236[2];
    v186 = v236[3];
    v67 = *&v236[4];
    v74 = v236[5];
    v69 = *&v236[6];
    v70 = *&v236[7];
  }

  else
  {
    v189 = v226;
    v188 = v225;
    v187 = v224;
    v186 = v223;
    v67 = v16;
    v74 = v222;
    v69 = v17;
    v70 = v18;
    v73 = v194;
  }

  v109 = v231;
  outlined init with copy of UserNotificationCenter((v231 + 2), v236);
  outlined init with copy of UserNotificationCenter(v73, &v239);
  v110 = v109[9];
  v226 = v109[10];
  v111 = v109[11];
  v112 = type metadata accessor for PubSubTopic(0);
  v113 = *(v112 + 48);
  v114 = *(v112 + 52);
  v115 = swift_allocObject();
  *(v115 + 144) = 0;
  swift_unknownObjectWeakInit();
  v116 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
  v117 = type metadata accessor for Date();
  (*(*(v117 - 8) + 56))(v115 + v116, 1, 1, v117);
  v118 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v119 = MEMORY[0x1E69E7CC8];
  v238 = MEMORY[0x1E69E7CC8];
  swift_unknownObjectRetain();
  v120 = v232;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  v121 = v195;
  Published.init(initialValue:)();
  (*(v196 + 32))(v115 + v118, v121, v197);
  v122 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__queueState;
  v123 = MEMORY[0x1E69E7CC0];
  v238 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v124 = v198;
  Published.init(initialValue:)();
  (*(v199 + 32))(v115 + v122, v124, v228);
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata) = v119;
  v125 = v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason;
  *v125 = 0;
  *(v125 + 8) = -1;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = 0;
  v126 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscriberSeqNums;
  v238 = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64VABGMd, &_sSDys6UInt64VABGMR);
  v127 = v200;
  Published.init(initialValue:)();
  (*(v201 + 32))(v115 + v126, v127, v202);
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked) = v119;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue) = v119;
  v128 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__sendQueue;
  v238 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore11PubSubTopicC8SendItemCGMd, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMR);
  v129 = v203;
  Published.init(initialValue:)();
  (*(v204 + 32))(v115 + v128, v129, v227);
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue) = v123;
  v130 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
  v132 = *(v131 + 48);
  v133 = *(v131 + 52);
  swift_allocObject();
  *(v115 + v130) = PassthroughSubject.init()();
  v134 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
  v136 = *(v135 + 48);
  v137 = *(v135 + 52);
  swift_allocObject();
  *(v115 + v134) = PassthroughSubject.init()();
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable) = 0;
  v138 = MEMORY[0x1E69E7CD0];
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_upsertMetadataCancellables) = MEMORY[0x1E69E7CD0];
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable) = 0;
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorCancellables) = v138;
  *(v115 + 16) = v233;
  *(v115 + 24) = v120;
  v139 = v188;
  *(v115 + 32) = v189;
  *(v115 + 40) = v139;
  v140 = v186;
  *(v115 + 48) = v187;
  *(v115 + 56) = v140;
  *(v115 + 64) = v67;
  *(v115 + 72) = v74;
  *(v115 + 80) = v69;
  *(v115 + 88) = v70;
  outlined init with copy of UserNotificationCenter(v236, v115 + 96);
  outlined init with copy of UserNotificationCenter(&v239, v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  swift_beginAccess();
  *(v115 + 144) = v205;
  swift_unknownObjectWeakAssign();
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter) = v110;
  if (v111)
  {
    v141 = (v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v141 = v226;
    v141[1] = v111;

    v142 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v143 = v191;
    UUID.init()();
    v144 = UUID.uuidString.getter();
    v146 = v145;
    (*(v192 + 8))(v143, v193);
    v147 = (v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v147 = v144;
    v147[1] = v146;
    v142 = MEMORY[0x1E69E7CC0];
    if (v110)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v148 = type metadata accessor for Logger();
      __swift_project_value_buffer(v148, log);

      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v237[0] = v152;
        *v151 = 136315138;
        v153 = *v147;
        v154 = v147[1];

        v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, v237);

        *(v151 + 4) = v155;
        v120 = v232;
        _os_log_impl(&dword_1AEB26000, v149, v150, "PubSubTopic initialized with a reporter, but no tag. Assigning random tag=%s", v151, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v152);
        MEMORY[0x1B27120C0](v152, -1, -1);
        MEMORY[0x1B27120C0](v151, -1, -1);
      }
    }
  }

  v226 = v110;
  type metadata accessor for OS_dispatch_queue();
  strcpy(v237, "PubSubTopic.");
  BYTE5(v237[1]) = 0;
  HIWORD(v237[1]) = -5120;
  MEMORY[0x1B2710020](v233, v120);

  static DispatchQoS.unspecified.getter();
  v237[0] = v142;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v210 + 104))(v209, *MEMORY[0x1E69E8090], v211);
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) = 0;
  v156 = v235;
  v157 = v229;
  if (v229)
  {
    v158 = *(v115 + 120);
    v159 = *(v115 + 128);
    __swift_project_boxed_opaque_existential_1((v115 + 96), v158);
    v160 = (*(v159 + 16))(v158, v159);
    if (*(v157 + 16))
    {
      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v160);
      if (v162)
      {
        v163 = *(*(v157 + 56) + 8 * v161);
        *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = v163;
        *(v115 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v163;
      }
    }

    v164 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked;
    swift_beginAccess();
    v165 = *(v115 + v164);
    *(v115 + v164) = v157;

    v237[0] = v157;
    v166 = *(v115 + 120);
    v167 = *(v115 + 128);
    __swift_project_boxed_opaque_existential_1((v115 + 96), v166);
    v168 = (*(v167 + 16))(v166, v167);
    specialized Dictionary._Variant.removeValue(forKey:)(v168);
    v169 = v237[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v236[8] = v169;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  v170 = v212;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[PubSubTopic.SendItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v171 = v215;
  v172 = v214;
  Publisher.map<A>(_:)();
  (*(v213 + 8))(v170, v172);
  swift_beginAccess();
  v173 = v219;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[PubSubTopic.SendItem]>.Publisher, PubSubTopic.QueueState> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v174 = v217;
  Publisher<>.assign(to:)();
  (*(v216 + 8))(v171, v174);
  v175 = v220;
  v176 = v221;
  (*(v220 + 16))(v218, v173, v221);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v175 + 8))(v173, v176);
  PubSubTopic.bootstrap()();
  __swift_destroy_boxed_opaque_existential_1Tm(&v239);
  __swift_destroy_boxed_opaque_existential_1Tm(v236);
  swift_unknownObjectRelease();

  v177 = v231;
  swift_beginAccess();
  v178 = v232;

  v179 = v177[12];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v239 = v177[12];
  v177[12] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v115, v233, v178, isUniquelyReferenced_nonNull_native);

  v177[12] = v239;
  swift_endAccess();

  v156(v181, 0);
}

uint64_t PubSubClient.createTopic(name:topicConfig:category:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a4;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a5, v25, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v16 = swift_allocObject();
  v17 = *(a3 + 48);
  *(v16 + 80) = *(a3 + 32);
  *(v16 + 96) = v17;
  v18 = *(a3 + 16);
  *(v16 + 48) = *a3;
  *(v16 + 64) = v18;
  v19 = v25[0];
  *(v16 + 136) = v25[1];
  *(v16 + 16) = v8;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = v15;
  *(v16 + 112) = *(a3 + 64);
  v20 = v26;
  *(v16 + 120) = v19;
  *(v16 + 152) = v20;
  *(v16 + 160) = a6;
  *(v16 + 168) = a7;
  *(v16 + 176) = a8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore11PubSubTopicCs5Error_pGMR);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  swift_unknownObjectRetain();
  return Future.init(_:)();
}

uint64_t closure #1 in PubSubClient.createTopic(name:topicConfig:category:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42 = a5;
  v40 = a11;
  v39 = a10;
  v43 = a9;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v41 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v44 = *(v21 - 8);
  v45 = v21;
  v22 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a8, &aBlock, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  if (v50)
  {
    outlined init with take of ContiguousBytes(&aBlock, v54);
  }

  else
  {
    v26 = type metadata accessor for TransparentTopicCryptorProvider();
    v27 = swift_allocObject();
    v54[3] = v26;
    v54[4] = &protocol witness table for TransparentTopicCryptorProvider;
    v54[0] = v27;
  }

  if (a6 == 5)
  {
    v28 = 0;
  }

  else
  {
    v28 = a6;
  }

  v29 = a3[5];
  v30 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v29);
  v31 = (*(v30 + 8))(v29, v30);
  outlined init with copy of UserNotificationCenter(v54, v53);
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;
  *(v32 + 32) = v42;
  *(v32 + 40) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<PluginAttachmentLedgerTopic, Error>) -> ();
  *(v32 + 48) = v25;
  *(v32 + 56) = v28;
  v33 = *(a7 + 48);
  *(v32 + 96) = *(a7 + 32);
  *(v32 + 112) = v33;
  *(v32 + 128) = *(a7 + 64);
  v34 = *(a7 + 16);
  *(v32 + 64) = *a7;
  *(v32 + 80) = v34;
  outlined init with take of ContiguousBytes(v53, v32 + 136);
  v35 = v39;
  *(v32 + 176) = v43;
  *(v32 + 184) = v35;
  *(v32 + 192) = v40;
  v51 = partial apply for closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:);
  v52 = v32;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v49 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v50 = &block_descriptor_43;
  v36 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v47 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v37 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v24, v20, v36);
  _Block_release(v36);

  (*(v46 + 8))(v20, v37);
  (*(v44 + 8))(v24, v45);

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

unint64_t lazy protocol witness table accessor for type PubSubClientError and conformance PubSubClientError()
{
  result = lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError;
  if (!lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError;
  if (!lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubClientError and conformance PubSubClientError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PubSubClient.TopicCategory and conformance PubSubClient.TopicCategory()
{
  result = lazy protocol witness table cache variable for type PubSubClient.TopicCategory and conformance PubSubClient.TopicCategory;
  if (!lazy protocol witness table cache variable for type PubSubClient.TopicCategory and conformance PubSubClient.TopicCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubClient.TopicCategory and conformance PubSubClient.TopicCategory);
  }

  return result;
}

uint64_t outlined init with take of CP_CreateTopicRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s14CopresenceCore21CP_CreateTopicRequestVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CP_CreateTopicRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_36Tm()
{
  v1 = (type metadata accessor for CP_CreateTopicRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  v11 = (v0 + v3);
  v12 = *(v11 + 1);

  v13 = *(v11 + 2);

  v14 = *(v11 + 4);

  v15 = v1[10];
  v16 = type metadata accessor for UnknownStorage();
  (*(*(v16 - 8) + 8))(&v11[v15], v16);
  v17 = *(v0 + v4);

  v18 = *(v0 + v5 + 8);

  v19 = *(v0 + v6 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v7));
  v20 = *(v0 + v8);
  swift_unknownObjectRelease();
  v21 = *(v0 + v9);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v2 | 7);
}

uint64_t partial apply for closure #1 in retry #1 () in closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)()
{
  v1 = *(type metadata accessor for CP_CreateTopicRequest(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 73) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in retry #1 () in closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v5 + 8), v0 + v6, *(v0 + v6 + 65), v0 + v7, *(v0 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_28Tm()
{
  v1 = (type metadata accessor for CP_CreateTopicRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];

  v8 = v0[3];

  v9 = v0[5];

  v10 = v0[7];

  v11 = v0 + v3;
  v12 = *(v11 + 1);

  v13 = *(v11 + 2);

  v14 = *(v11 + 4);

  v15 = v1[10];
  v16 = type metadata accessor for UnknownStorage();
  (*(*(v16 - 8) + 8))(&v11[v15], v16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4));
  v17 = *(v0 + v5);
  swift_unknownObjectRelease();
  v18 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v2 | 7);
}

uint64_t partial apply for closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_CreateTopicRequest(0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 73) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in createTopicHelper #1 () in closure #1 in PubSubClient.getOrCreateTopic(promise:name:category:topicConfig:dataCryptorProvider:delegate:seqNumWatermark:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, v1 + v5, *(v1 + v5 + 65), v1 + v6, *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_31Tm_0()
{
  v1 = v0[12];

  v2 = v0[14];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  v3 = v0[20];
  swift_unknownObjectRelease();
  v4 = v0[22];

  v5 = v0[24];

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t TopicInfo.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PubSubTopicsObserver.__allocating_init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(uint64_t *a1, uint64_t a2, double a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = specialized PubSubTopicsObserver.__allocating_init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

uint64_t TopicInfo.description.getter()
{
  v1 = *(v0 + 2);
  if (v0[2])
  {
    v2 = *(v0 + 3);
    v5 = *v0;
    v8 = v5;
    v6 = v1;
    v7 = v2;
    outlined init with copy of String(&v8, v4);
  }

  else
  {
    v5 = *v0;
    v8 = v5;
    v9 = v1;
    v6 = v1;
    outlined init with copy of String(&v8, v4);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v9, v4, &_sShys6UInt64VGMd, &_sShys6UInt64VGMR);
  }

  return String.init<A>(describing:)();
}

uint64_t protocol witness for IDProviding.id.getter in conformance TopicInfo@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TopicInfo()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v0[4])
  {
    v4 = *v0;
    v6 = v0[1];
    v8 = v0[2];
    v10 = v0[3];
  }

  else
  {
    v5 = *v0;
    v7 = v0[1];
    v9 = v0[2];
  }

  return String.init<A>(describing:)();
}

uint64_t PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(uint64_t *a1, uint64_t a2, double a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = specialized PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(v12, a2, v3, v7, v8, a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v14;
}

uint64_t PubSubTopicsObserver.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = *(v2 + 80);
  (*(v6 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));

  PassthroughSubject.receive<A>(subscriber:)();

  if (!*(v2 + 88))
  {
    v8 = PubSubTopicsObserver.createListenTopicSubscription()();
    v9 = *(v2 + 88);
    *(v2 + 88) = v8;
  }

  return result;
}

uint64_t PubSubTopicsObserver.createListenTopicSubscription()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAH14PluginRpcErrorOGSayAH0I4InfoOGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAH14PluginRpcErrorOGSayAH0I4InfoOGGMR);
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v35 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v35 - v8;
  v10 = type metadata accessor for Publishers.PrefetchStrategy();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGGMR);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGMR);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = PassthroughSubject.init()();
  v24 = v0[9];
  v1[9] = v23;
  v25 = v23;
  v38 = v23;

  v42 = v25;
  (*(v11 + 104))(v14, *MEMORY[0x1E695BD28], v10);
  v26 = v35;
  (*(v6 + 104))(v9, *MEMORY[0x1E695BD40], v35);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<CP_TopicSubscribersRequest, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGMR);
  Publisher.buffer(size:prefetch:whenFull:)();
  (*(v6 + 8))(v9, v26);
  (*(v11 + 8))(v14, v10);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<PassthroughSubject<CP_TopicSubscribersRequest, Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore26CP_TopicSubscribersRequestVs5NeverOGGMR);
  v27 = v36;
  v28 = Publisher.eraseToAnyPublisher()();
  (*(v37 + 8))(v19, v27);
  v29 = v1[5];
  v30 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v29);
  v42 = (*(v30 + 88))(v28, v29, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAD14PluginRpcErrorOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore9TopicInfoOGMd, &_sSay14CopresenceCore9TopicInfoOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_TopicSubscribers, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAD14PluginRpcErrorOGMR);
  v31 = v39;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<CP_TopicSubscribers, PluginRpcError>, [TopicInfo]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAH14PluginRpcErrorOGSayAH0I4InfoOGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore19CP_TopicSubscribersVAH14PluginRpcErrorOGSayAH0I4InfoOGGMR);
  v32 = v40;
  v33 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v41 + 8))(v31, v32);
  return v33;
}

uint64_t closure #1 in PubSubTopicsObserver.createListenTopicSubscription()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a3;
  v5 = type metadata accessor for CP_TopicSubscribers.TerminateTopic(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v58 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = *(*a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v52 = a2;
  if (v15)
  {
    v50 = a1;
    v51 = v6;
    v63 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v18 = 0;
    v16 = v63;
    v54 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v55 = v15;
    v56 = v14;
    v57 = v10;
    while (v18 < *(v14 + 16))
    {
      v61 = v16;
      _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v54 + *(v10 + 72) * v18, v13, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
      v19 = *v13;
      v59 = v13[1];
      v60 = v19;
      v20 = v13[2];
      v21 = *(v20 + 16);

      v22 = MEMORY[0x1B27104E0](v21, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
      v23 = v22;
      v24 = *(v20 + 16);
      if (v24)
      {
        v25 = 0;
        v26 = v20 + 32;
        v27 = v22 + 56;
        do
        {
          while (1)
          {
            v28 = *(v26 + 8 * v25++);
            v29 = MEMORY[0x1B27111C0](*(v23 + 40), v28);
            v30 = -1 << *(v23 + 32);
            v31 = v29 & ~v30;
            if ((*(v27 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
            {
              break;
            }

LABEL_11:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v62 = v23;
            specialized _NativeSet.insertNew(_:at:isUnique:)(v28, v31, isUniquelyReferenced_nonNull_native);
            v23 = v62;
            if (v25 == v24)
            {
              goto LABEL_13;
            }

            v27 = v62 + 56;
          }

          v32 = ~v30;
          while (*(*(v23 + 48) + 8 * v31) != v28)
          {
            v31 = (v31 + 1) & v32;
            if (((*(v27 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_11;
            }
          }
        }

        while (v25 != v24);
      }

LABEL_13:
      result = outlined destroy of CP_TopicSubscribersRequest(v13, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo);
      v16 = v61;
      v63 = v61;
      v35 = *(v61 + 16);
      v34 = *(v61 + 24);
      v14 = v56;
      if (v35 >= v34 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v16 = v63;
      }

      ++v18;
      *(v16 + 16) = v35 + 1;
      v36 = v16 + 40 * v35;
      v37 = v59;
      *(v36 + 32) = v60;
      *(v36 + 40) = v37;
      *(v36 + 48) = v23;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      v10 = v57;
      if (v18 == v55)
      {
        a1 = v50;
        v6 = v51;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v38 = a1[1];
    v39 = *(v38 + 16);
    v40 = MEMORY[0x1E69E7CC0];
    if (v39)
    {
      v61 = v16;
      v63 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
      v40 = v63;
      v41 = v38 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v42 = *(v6 + 72);
      do
      {
        v43 = v58;
        _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v41, v58, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
        v44 = *v43;
        v45 = v43[1];

        outlined destroy of CP_TopicSubscribersRequest(v43, type metadata accessor for CP_TopicSubscribers.TerminateTopic);
        v46 = swift_allocObject();
        swift_weakInit();
        v63 = v40;
        v48 = *(v40 + 16);
        v47 = *(v40 + 24);
        if (v48 >= v47 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
          v40 = v63;
        }

        *(v40 + 16) = v48 + 1;
        v49 = v40 + 40 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v45;
        *(v49 + 48) = partial apply for closure #1 in closure #2 in closure #1 in PubSubTopicsObserver.createListenTopicSubscription();
        *(v49 + 56) = v46;
        *(v49 + 64) = 1;
        v41 += v42;
        --v39;
      }

      while (v39);
      v16 = v61;
    }

    v63 = v16;
    result = specialized Array.append<A>(contentsOf:)(v40);
    *v53 = v63;
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in PubSubTopicsObserver.createListenTopicSubscription()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CP_TopicSubscribersRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    MEMORY[0x1EEE9AC00](result);
    *(&v15 - 4) = a1;
    *(&v15 - 3) = a2;
    *(&v15 - 2) = a3;
    *(&v15 - 1) = a4;
    lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest);
    static Message.with(_:)();
    if (*(v13 + 72))
    {
      v14 = *(v13 + 72);

      PassthroughSubject.send(_:)();
    }

    return outlined destroy of CP_TopicSubscribersRequest(v11, type metadata accessor for CP_TopicSubscribersRequest);
  }

  return result;
}

uint64_t closure #2 in PubSubTopicsObserver.createListenTopicSubscription()(uint64_t a1)
{
  v2 = type metadata accessor for PluginRpcError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18[-v12];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    if (*(result + 72))
    {
      v18[7] = 1;

      PassthroughSubject.send(completion:)();

      v16 = *(v15 + 72);
    }

    *(v15 + 72) = 0;

    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v13, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    if ((*(v3 + 48))(v13, 1, v2) == 1)
    {
      v17 = *(v15 + 80);
      (*(v3 + 56))(v11, 1, 1, v2);

      PassthroughSubject.send(completion:)();

      return outlined destroy of NSObject?(v11, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    }

    else
    {
      _s14CopresenceCore14PluginRpcErrorOWObTm_1(v13, v6, type metadata accessor for PluginRpcError);
      PubSubTopicsObserver.handleSubscriptionError(_:)(v6);

      return outlined destroy of CP_TopicSubscribersRequest(v6, type metadata accessor for PluginRpcError);
    }
  }

  return result;
}

uint64_t closure #3 in PubSubTopicsObserver.createListenTopicSubscription()(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 96) = 0;
    v3 = *(result + 80);

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t closure #1 in PubSubTopicsObserver.complete(topicInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16[-v12];
  type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  static Message.with(_:)();
  v14 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  return outlined assign with take of CP_TopicSubscribersRequest.OneOf_Operation?(v13, a1);
}

uint64_t PubSubTopicsObserver.handleSubscriptionError(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v110 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v104 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v112 = &v104 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v108 = (&v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v104 - v17;
  v109 = type metadata accessor for PluginConnectError();
  v107 = *(v109 - 8);
  v18 = *(v107 + 64);
  v19 = MEMORY[0x1EEE9AC00](v109);
  v105 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v106 = &v104 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v104 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v104 - v26;
  v28 = type metadata accessor for PluginRpcError();
  v113 = *(v28 - 8);
  v29 = *(v113 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v104 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v104 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = (&v104 - v39);
  v41 = v2[12];
  v114 = v2;
  if (v41 >= v2[7])
  {
    v111 = a1;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, log);
    v51 = v111;
    _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v111, v38, type metadata accessor for PluginRpcError);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      LODWORD(v109) = v53;
      v54 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v115[0] = v108;
      *v54 = 136315138;
      _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v38, v9, type metadata accessor for PluginRpcError);
      v55 = v113;
      (*(v113 + 56))(v9, 0, 1, v28);
      v56 = v110;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v9, v110, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
      if ((*(v55 + 48))(v56, 1, v28) == 1)
      {
        v57 = 7104878;
        v58 = 0xE300000000000000;
      }

      else
      {
        _s14CopresenceCore14PluginRpcErrorOWObTm_1(v56, v35, type metadata accessor for PluginRpcError);
        _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v35, v32, type metadata accessor for PluginRpcError);
        v57 = String.init<A>(reflecting:)();
        v58 = v86;
        outlined destroy of CP_TopicSubscribersRequest(v35, type metadata accessor for PluginRpcError);
      }

      v87 = v109;
      outlined destroy of NSObject?(v9, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
      outlined destroy of CP_TopicSubscribersRequest(v38, type metadata accessor for PluginRpcError);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, v115);

      *(v54 + 4) = v88;
      _os_log_impl(&dword_1AEB26000, v52, v87, "[ListenTopicSubscribers] Retries exhausted, error=%s", v54, 0xCu);
      v89 = v108;
      __swift_destroy_boxed_opaque_existential_1Tm(v108);
      MEMORY[0x1B27120C0](v89, -1, -1);
      MEMORY[0x1B27120C0](v54, -1, -1);

      v51 = v111;
    }

    else
    {

      outlined destroy of CP_TopicSubscribersRequest(v38, type metadata accessor for PluginRpcError);
    }

    v90 = v114;
    v91 = v114[10];
    v92 = v51;
    v93 = v112;
    _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v92, v112, type metadata accessor for PluginRpcError);
    (*(v113 + 56))(v93, 0, 1, v28);

    PassthroughSubject.send(completion:)();

    outlined destroy of NSObject?(v93, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMd, &_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMR);
    v95 = *(v94 + 48);
    v96 = *(v94 + 52);
    swift_allocObject();
    v97 = PassthroughSubject.init()();
    v98 = v90[10];
    v90[10] = v97;

    v99 = v90[11];
    v90[11] = 0;
  }

  else
  {
    _s14CopresenceCore14PluginRpcErrorOWOcTm_1(a1, &v104 - v39, type metadata accessor for PluginRpcError);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = *v40;
      v43 = v40[1];
      v44 = v40[3];
      if (v42 == 14)
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, log);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_1AEB26000, v46, v47, "[ListenTopicSubscribers] Failed, server bouncing", v48, 2u);
          MEMORY[0x1B27120C0](v48, -1, -1);
        }

        retry #1 () in PubSubTopicsObserver.handleSubscriptionError(_:)(v114);
      }

      else
      {
        v72 = v40[2];
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        __swift_project_value_buffer(v73, log);
        v74 = v43;

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = a1;
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v115[3] = v44;
          v116 = v79;
          *v78 = 136315138;
          LOBYTE(v115[0]) = v42;
          v115[1] = v43;
          v115[2] = v72;
          v80 = v43;

          v81 = String.init<A>(reflecting:)();
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v116);

          *(v78 + 4) = v83;
          _os_log_impl(&dword_1AEB26000, v75, v76, "[ListenTopicSuscribers] Failed, unexpected status=%s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          MEMORY[0x1B27120C0](v79, -1, -1);
          a1 = v77;
          MEMORY[0x1B27120C0](v78, -1, -1);
        }

        v84 = v114[10];
        v85 = v112;
        _s14CopresenceCore14PluginRpcErrorOWOcTm_1(a1, v112, type metadata accessor for PluginRpcError);
        (*(v113 + 56))(v85, 0, 1, v28);

        PassthroughSubject.send(completion:)();

        return outlined destroy of NSObject?(v85, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
      }
    }

    else
    {
      _s14CopresenceCore14PluginRpcErrorOWObTm_1(v40, v27, type metadata accessor for PluginConnectError);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      __swift_project_value_buffer(v59, log);
      _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v27, v25, type metadata accessor for PluginConnectError);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v115[0] = v63;
        *v62 = 136315138;
        v64 = v111;
        _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v25, v111, type metadata accessor for PluginConnectError);
        v65 = v107;
        v66 = v109;
        (*(v107 + 56))(v64, 0, 1, v109);
        v67 = v64;
        v68 = v66;
        v69 = v108;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v67, v108, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
        if ((*(v65 + 48))(v69, 1, v68) == 1)
        {
          v70 = 7104878;
          v71 = 0xE300000000000000;
        }

        else
        {
          v100 = v69;
          v101 = v106;
          _s14CopresenceCore14PluginRpcErrorOWObTm_1(v100, v106, type metadata accessor for PluginConnectError);
          _s14CopresenceCore14PluginRpcErrorOWOcTm_1(v101, v105, type metadata accessor for PluginConnectError);
          v70 = String.init<A>(reflecting:)();
          v71 = v102;
          outlined destroy of CP_TopicSubscribersRequest(v101, type metadata accessor for PluginConnectError);
        }

        outlined destroy of NSObject?(v111, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
        outlined destroy of CP_TopicSubscribersRequest(v25, type metadata accessor for PluginConnectError);
        v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v115);

        *(v62 + 4) = v103;
        _os_log_impl(&dword_1AEB26000, v60, v61, "[ListenTopicSubscribers] Failed with connection error, error=%s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x1B27120C0](v63, -1, -1);
        MEMORY[0x1B27120C0](v62, -1, -1);
      }

      else
      {

        outlined destroy of CP_TopicSubscribersRequest(v25, type metadata accessor for PluginConnectError);
      }

      retry #1 () in PubSubTopicsObserver.handleSubscriptionError(_:)(v114);
      return outlined destroy of CP_TopicSubscribersRequest(v27, type metadata accessor for PluginConnectError);
    }
  }
}

uint64_t retry #1 () in PubSubTopicsObserver.handleSubscriptionError(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = a1[12];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v40 = &v38 - v19;
    v45 = v2;
    v46 = v18;
    v44 = v3;
    a1[12] = v22;
    if (one-time initialization token for log == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v43 = v7;
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, log);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v41 = v8;
  v42 = v6;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = a1[8];
    *(v27 + 12) = 2048;
    *(v27 + 14) = a1[12];

    _os_log_impl(&dword_1AEB26000, v24, v25, "[ListenTopicSubscribers] Retrying stream in %f seconds, attempt=#%ld", v27, 0x16u);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  else
  {
  }

  static DispatchTime.now()();
  v28 = a1[8];
  v29 = v40;
  + infix(_:_:)();
  v39 = *(v13 + 8);
  v39(v17, v46);
  v30 = a1[5];
  v31 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v30);
  v32 = (*(v31 + 8))(v30, v31);
  v33 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in retry #1 () in PubSubTopicsObserver.handleSubscriptionError(_:);
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_44;
  v34 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v47 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v35 = v42;
  v36 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2710670](v29, v11, v35, v34);
  _Block_release(v34);

  (*(v44 + 8))(v35, v36);
  (*(v41 + 8))(v11, v43);
  v39(v29, v46);
}

uint64_t closure #1 in retry #1 () in PubSubTopicsObserver.handleSubscriptionError(_:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = PubSubTopicsObserver.createListenTopicSubscription()();
    v3 = *(v1 + 88);
    *(v1 + 88) = v2;
  }

  return result;
}

Swift::Void __swiftcall PubSubTopicsObserver.requestTopicTermination(topic:)(Swift::String topic)
{
  v2 = v1;
  object = topic._object;
  countAndFlagsBits = topic._countAndFlagsBits;
  v5 = type metadata accessor for CP_TopicSubscribersRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, log);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v16);
    _os_log_impl(&dword_1AEB26000, v10, v11, "[ListenTopicSubscribers] Requesting topic termination, topic=%s, reason=.initiatorLeft", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v14);
  v16[-2] = countAndFlagsBits;
  v16[-1] = object;
  lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest);
  static Message.with(_:)();
  if (*(v2 + 72))
  {
    v15 = *(v2 + 72);

    PassthroughSubject.send(_:)();
  }

  outlined destroy of CP_TopicSubscribersRequest(v8, type metadata accessor for CP_TopicSubscribersRequest);
}

uint64_t closure #1 in PubSubTopicsObserver.requestTopicTermination(topic:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  v13 = a2;
  v14 = a3;
  lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  static Message.with(_:)();
  v10 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return outlined assign with take of CP_TopicSubscribersRequest.OneOf_Operation?(v9, a1);
}

uint64_t *PubSubTopicsObserver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  return v0;
}

uint64_t PubSubTopicsObserver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t specialized PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v17[3] = a4;
  v17[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *(a3 + 72) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMd, &_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMR);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = PassthroughSubject.init()();
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = v15;
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v17, a3 + 16);
  *(a3 + 56) = a2;
  *(a3 + 64) = a6;
  return a3;
}

uint64_t specialized PubSubTopicsObserver.__allocating_init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PubSubTopicsObserver();
  v15 = swift_allocObject();
  (*(v11 + 16))(v14, a1, a5);
  return specialized PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(v14, a2, v15, a5, a6, a3);
}

uint64_t _s14CopresenceCore14PluginRpcErrorOWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in PubSubTopicsObserver.requestTopicTermination(topic:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 8);

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  *(a1 + 24) = 1;
  return result;
}

uint64_t outlined assign with take of CP_TopicSubscribersRequest.OneOf_Operation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s14CopresenceCore14PluginRpcErrorOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CP_TopicSubscribersRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Dictionary.unwrappedValue(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v27 = *(a3 - 8);
  v28 = v6;
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  v29 = a1;
  v30 = a5;
  MEMORY[0x1B270FE60](a1, a2, a3, a4, a5);
  v20 = *(a4 - 8);
  if ((*(v20 + 48))(v19, 1, a4) != 1)
  {
    return (*(v20 + 32))(v26, v19, a4);
  }

  (*(v16 + 8))(v19, v15);
  (*(v27 + 16))(v14, v29, a3);
  v21 = String.init<A>(describing:)();
  v23 = v22;
  type metadata accessor for Dictionary.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *v24 = v21;
  *(v24 + 8) = v23;
  *(v24 + 16) = 0;
  return swift_willThrow();
}

uint64_t Dictionary.unwrappedValue<A>(for:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v54 = a6;
  v60 = *(a3 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v58 = v13;
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v50 - v16;
  v17 = type metadata accessor for Optional();
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - v20;
  v22 = *(a4 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v61 = &v50 - v27;
  v28 = a1;
  v29 = a2;
  v30 = a5;
  MEMORY[0x1B270FE60](a1, v29, a3, a4, a5);
  v31 = v22;
  v32 = a4;
  if ((*(v22 + 48))(v21, 1, a4) == 1)
  {
    (*(v55 + 8))(v21, v56);
    (*(v60 + 16))(v59, v28, a3);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    type metadata accessor for Dictionary.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v36 = v33;
    *(v36 + 8) = v35;
    *(v36 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v51 = a3;
    v38 = v59;
    v39 = v60;
    v55 = v28;
    v56 = v30;
    v40 = v61;
    (*(v31 + 32))(v61, v21, v32);
    (*(v31 + 16))(v26, v40, v32);
    v42 = v57;
    v41 = v58;
    v43 = swift_dynamicCast();
    v44 = *(*(v41 - 8) + 56);
    if (v43)
    {
      v45 = *(v41 - 8);
      v44(v42, 0, 1, v41);
      (*(v31 + 8))(v61, v32);
      return (*(v45 + 32))(v54, v42, v41);
    }

    else
    {
      v44(v42, 1, 1, v41);
      (*(v52 + 8))(v42, v53);
      (*(v39 + 16))(v38, v55, v51);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      type metadata accessor for Dictionary.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v49 = v46;
      *(v49 + 8) = v48;
      *(v49 + 16) = 1;
      swift_willThrow();
      return (*(v31 + 8))(v61, v32);
    }
  }
}

uint64_t type metadata instantiation function for Dictionary.Errors()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CPSystemStateObserver.carplayObserver.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPSystemStateObserver_carplayObserver);
  v2 = *(v0 + OBJC_IVAR___CPSystemStateObserver_carplayObserver + 8);
  return swift_unknownObjectRetain();
}

uint64_t CPSystemStateObserver.displayCloneStateObserver.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver);
  v2 = *(v0 + OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver + 8);
  return swift_unknownObjectRetain();
}

uint64_t CPSystemStateObserver.managedConfigObserver.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPSystemStateObserver_managedConfigObserver);
  v2 = *(v0 + OBJC_IVAR___CPSystemStateObserver_managedConfigObserver + 8);
  return swift_unknownObjectRetain();
}

void *CPSystemStateObserver.conversationManager.getter()
{
  v1 = OBJC_IVAR___CPSystemStateObserver_conversationManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CPSystemStateObserver.conversationManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPSystemStateObserver_conversationManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CPSystemStateObserver.observers.getter()
{
  v1 = OBJC_IVAR___CPSystemStateObserver_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t CPSystemStateObserver.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPSystemStateObserver_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CPSystemStateObserver.carPlayConnected.didset()
{
  os_unfair_lock_assert_owner(*(*&v0[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v11 = v2[OBJC_IVAR___CPSystemStateObserver_carPlayConnected];
    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v3, v4, "CPSystemStateObserver carPlayConnected change to %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  return CPSystemStateObserver.recomputeAllowedStates()();
}

uint64_t CPSystemStateObserver.screeningConversationUUIDs.didset(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner(*(*&v1[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  v4 = OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs;
  v5 = *&v1[OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs];

  LOBYTE(a1) = _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5(a1, v5);

  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.default);
    v8 = v2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v16 = *&v2[v4];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4UUIDVGMd, &_sShy10Foundation4UUIDVGMR);
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1AEB26000, v9, v10, "CPSystemStateObserver screeningConversationUUIDs changed to %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    return CPSystemStateObserver.recomputeAllowedStates()();
  }

  return result;
}

uint64_t CPSystemStateObserver.screenTimeAllowed.didset(uint64_t (*a1)(void), const char *a2)
{
  os_unfair_lock_assert_owner(*(*&v2[OBJC_IVAR___CPSystemStateObserver_lock] + 16));
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    a1();
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v7, v8, a2, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  return CPSystemStateObserver.recomputeAllowedStates()();
}

uint64_t closure #1 in CPSystemStateObserver._allowScreenSharing.didset(void *a1, uint64_t a2, SEL *a3, uint64_t (*a4)(uint64_t))
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    v9 = swift_unknownObjectRetain();
    [a1 *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc CPSystemStateObserver.allowSharePlay.getter(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *&a1[OBJC_IVAR___CPSystemStateObserver_lock];
  v5 = *(v4 + 16);
  v6 = a1;
  os_unfair_lock_lock(v5);
  LOBYTE(a3) = a3();
  os_unfair_lock_unlock(*(v4 + 16));

  return a3 & 1;
}

uint64_t CPSystemStateObserver.allowSharePlay.getter(uint64_t (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v3 + 16));
  LOBYTE(a1) = a1();
  os_unfair_lock_unlock(*(v3 + 16));
  return a1 & 1;
}

uint64_t CPSystemStateObserver.init(queue:)(void *a1)
{
  objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  v2 = a1;
  v3 = CPCarPlayObserver.init(queue:)(v2);
  v4 = [objc_allocWithZone(type metadata accessor for CPManagedConfigurationObserver()) init];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static CPAudioRoutePolicyManager.shared;
  v6 = [objc_allocWithZone(type metadata accessor for CPDisplayCloneStateObserver()) init];
  ObjectType = swift_getObjectType();
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v14 = TULockdownModeEnabled();
  v12 = (*(ObjectType + 520))(v2, v8, &protocol witness table for CPCarPlayObserver, v9, &protocol witness table for CPManagedConfigurationObserver, v10, v11, &protocol witness table for CPDisplayCloneStateObserver, v14);

  swift_deallocPartialClassInstance();
  return v12;
}

char *CPSystemStateObserver.__allocating_init(queue:carplayObserver:managedConfigObserver:audioRoutePolicyManager:displayCloneStateObserver:isLockdownModeEnabled:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  v15 = objc_allocWithZone(v9);
  *&v15[OBJC_IVAR___CPSystemStateObserver_conversationManager] = 0;
  v16 = OBJC_IVAR___CPSystemStateObserver_lock;
  type metadata accessor for Lock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *&v15[v16] = v17;
  v19 = OBJC_IVAR___CPSystemStateObserver_observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16DelegatesManagerCySo021CPSystemStateObserverG0_pGMd, &_s14CopresenceCore16DelegatesManagerCySo021CPSystemStateObserverG0_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  v21 = swift_allocObject();
  v22 = swift_slowAlloc();
  *(v21 + 16) = v22;
  *v22 = 0;
  *(v20 + 24) = v21;
  *&v15[v19] = v20;
  *&v15[OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs] = MEMORY[0x1E69E7CD0];
  v15[OBJC_IVAR___CPSystemStateObserver____lazy_storage___screenTimeAllowed] = 2;
  v15[OBJC_IVAR___CPSystemStateObserver____lazy_storage___isDisplayCloned] = 2;
  v15[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowSharePlay] = 2;
  v15[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharing] = 2;
  v15[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharingInitiation] = 2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.default);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1AEB26000, v24, v25, "CPSystemStateObserver init", v26, 2u);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  v27 = &v15[OBJC_IVAR___CPSystemStateObserver_carplayObserver];
  *v27 = a2;
  v27[1] = a3;
  v28 = &v15[OBJC_IVAR___CPSystemStateObserver_managedConfigObserver];
  *v28 = a4;
  v28[1] = a5;
  v15[OBJC_IVAR___CPSystemStateObserver_carPlayConnected] = 0;
  *&v15[OBJC_IVAR___CPSystemStateObserver_audioRoutePolicyManager] = a6;
  v29 = &v15[OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver];
  *v29 = a7;
  v29[1] = a8;
  v15[OBJC_IVAR___CPSystemStateObserver_isLockdownModeEnabled] = a9 & 1;
  v58.receiver = v15;
  v58.super_class = v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v30 = objc_msgSendSuper2(&v58, sel_init);
  v32 = *&v30[OBJC_IVAR___CPSystemStateObserver_carplayObserver];
  v31 = *&v30[OBJC_IVAR___CPSystemStateObserver_carplayObserver + 8];
  ObjectType = swift_getObjectType();
  v34 = *(v31 + 24);
  v35 = v30;
  swift_unknownObjectRetain();
  v34(v30, &protocol witness table for CPSystemStateObserver, ObjectType, v31);
  swift_unknownObjectRelease();
  v36 = *&v35[OBJC_IVAR___CPSystemStateObserver_managedConfigObserver];
  v37 = *&v35[OBJC_IVAR___CPSystemStateObserver_managedConfigObserver + 8];
  v38 = swift_getObjectType();
  v39 = *(v37 + 24);
  v40 = v35;
  swift_unknownObjectRetain();
  v39(v30, &protocol witness table for CPSystemStateObserver, v38, v37);
  swift_unknownObjectRelease();
  [*&v40[OBJC_IVAR___CPSystemStateObserver_audioRoutePolicyManager] addObserver:v40 withQueue:a1];
  v41 = *&v40[OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver];
  v42 = *&v40[OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver + 8];
  v43 = swift_getObjectType();
  v44 = *(v42 + 24);
  swift_unknownObjectRetain();
  v44(v30, &protocol witness table for CPSystemStateObserver, v43, v42);
  swift_unknownObjectRelease();
  v45 = [objc_opt_self() defaultCenter];
  v46 = *MEMORY[0x1E69D8F80];
  v47 = swift_allocObject();
  *(v47 + 16) = v40;
  *(v47 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CPSystemStateObserver.init(queue:carplayObserver:managedConfigObserver:audioRoutePolicyManager:displayCloneStateObserver:isLockdownModeEnabled:);
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_45;
  v48 = _Block_copy(aBlock);
  v49 = v40;
  v50 = a1;

  v51 = [v45 addObserverForName:v46 object:0 queue:0 usingBlock:v48];
  _Block_release(v48);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v49;
}

char *CPSystemStateObserver.init(queue:carplayObserver:managedConfigObserver:audioRoutePolicyManager:displayCloneStateObserver:isLockdownModeEnabled:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = v9;
  *&v9[OBJC_IVAR___CPSystemStateObserver_conversationManager] = 0;
  v16 = OBJC_IVAR___CPSystemStateObserver_lock;
  type metadata accessor for Lock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *&v10[v16] = v17;
  v19 = OBJC_IVAR___CPSystemStateObserver_observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16DelegatesManagerCySo021CPSystemStateObserverG0_pGMd, &_s14CopresenceCore16DelegatesManagerCySo021CPSystemStateObserverG0_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  v21 = swift_allocObject();
  v22 = swift_slowAlloc();
  *(v21 + 16) = v22;
  *v22 = 0;
  *&v10[v19] = v20;
  *&v10[OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs] = MEMORY[0x1E69E7CD0];
  v10[OBJC_IVAR___CPSystemStateObserver____lazy_storage___screenTimeAllowed] = 2;
  v10[OBJC_IVAR___CPSystemStateObserver____lazy_storage___isDisplayCloned] = 2;
  v10[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowSharePlay] = 2;
  *(v20 + 24) = v21;
  v10[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharing] = 2;
  v10[OBJC_IVAR___CPSystemStateObserver____lazy_storage____allowScreenSharingInitiation] = 2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.default);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1AEB26000, v24, v25, "CPSystemStateObserver init", v26, 2u);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  v27 = &v10[OBJC_IVAR___CPSystemStateObserver_carplayObserver];
  *v27 = a2;
  v27[1] = a3;
  v28 = &v10[OBJC_IVAR___CPSystemStateObserver_managedConfigObserver];
  *v28 = a4;
  v28[1] = a5;
  v10[OBJC_IVAR___CPSystemStateObserver_carPlayConnected] = 0;
  *&v10[OBJC_IVAR___CPSystemStateObserver_audioRoutePolicyManager] = a6;
  v29 = &v10[OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver];
  *v29 = a7;
  v29[1] = a8;
  v10[OBJC_IVAR___CPSystemStateObserver_isLockdownModeEnabled] = a9 & 1;
  v57.receiver = v10;
  v57.super_class = type metadata accessor for CPSystemStateObserver();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v30 = objc_msgSendSuper2(&v57, sel_init);
  v32 = *&v30[OBJC_IVAR___CPSystemStateObserver_carplayObserver];
  v31 = *&v30[OBJC_IVAR___CPSystemStateObserver_carplayObserver + 8];
  ObjectType = swift_getObjectType();
  v34 = *(v31 + 24);
  v35 = v30;
  swift_unknownObjectRetain();
  v34(v30, &protocol witness table for CPSystemStateObserver, ObjectType, v31);
  swift_unknownObjectRelease();
  v37 = *&v35[OBJC_IVAR___CPSystemStateObserver_managedConfigObserver];
  v36 = *&v35[OBJC_IVAR___CPSystemStateObserver_managedConfigObserver + 8];
  v38 = swift_getObjectType();
  v39 = *(v36 + 24);
  v40 = v35;
  swift_unknownObjectRetain();
  v39(v30, &protocol witness table for CPSystemStateObserver, v38, v36);
  swift_unknownObjectRelease();
  [*&v40[OBJC_IVAR___CPSystemStateObserver_audioRoutePolicyManager] addObserver:v40 withQueue:a1];
  v42 = *&v40[OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver];
  v41 = *&v40[OBJC_IVAR___CPSystemStateObserver_displayCloneStateObserver + 8];
  v43 = swift_getObjectType();
  v44 = *(v41 + 24);
  swift_unknownObjectRetain();
  v44(v30, &protocol witness table for CPSystemStateObserver, v43, v41);
  swift_unknownObjectRelease();
  v45 = [objc_opt_self() defaultCenter];
  v46 = *MEMORY[0x1E69D8F80];
  v47 = swift_allocObject();
  *(v47 + 16) = v40;
  *(v47 + 24) = a1;
  aBlock[4] = closure #1 in CPSystemStateObserver.init(queue:carplayObserver:managedConfigObserver:audioRoutePolicyManager:displayCloneStateObserver:isLockdownModeEnabled:)partial apply;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_7;
  v48 = _Block_copy(aBlock);
  v49 = v40;
  v50 = a1;

  v51 = [v45 addObserverForName:v46 object:0 queue:0 usingBlock:v48];
  _Block_release(v48);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v49;
}

void closure #1 in CPSystemStateObserver.init(queue:carplayObserver:managedConfigObserver:audioRoutePolicyManager:displayCloneStateObserver:isLockdownModeEnabled:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1AEB26000, v6, v7, "CPSystemStateObserver added a conversation manager from notification", v8, 2u);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69D8B78]) init];
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0xD0))(v9);
  v12 = (*((*v10 & *a2) + 0xC8))(v11);
  if (v12)
  {
    v13 = v12;
    [v12 addDelegate:a2 queue:a3];
    [v13 registerWithCompletionHandler_];
  }
}

uint64_t CPSystemStateObserver.addObserver(_:queue:)(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))();
  (*(*v5 + 160))(a1, a2);
}

id CPSystemStateObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CPSystemStateObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPSystemStateObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CPSystemStateObserver.carPlayDidConnect()(const char *a1, char a2)
{
  v5 = v2;
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
    *v9 = 0;
    _os_log_impl(&dword_1AEB26000, v7, v8, a1, v9, 2u);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v10 + 16));
  *(v5 + OBJC_IVAR___CPSystemStateObserver_carPlayConnected) = a2;
  CPSystemStateObserver.carPlayConnected.didset();
  v11 = *(v10 + 16);

  os_unfair_lock_unlock(v11);
}

uint64_t closure #1 in CPSystemStateObserver.conversationManager(_:screeningChangedFor:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = [a1 isScreening];
  v17 = [a1 UUID];
  v18 = (v9 + 8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16)
  {
    v19 = OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs;
    v24 = *(a2 + OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs);

    specialized Set._Variant.insert(_:)(v15, v13);
    (*v18)(v15, v8);
    v20 = *(a2 + v19);
    *(a2 + v19) = v24;
  }

  else
  {
    v21 = OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs;
    v24 = *(a2 + OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs);

    specialized Set._Variant.remove(_:)(v15, v7);
    (*v18)(v15, v8);
    outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v20 = *(a2 + v21);
    *(a2 + v21) = v24;
  }

  CPSystemStateObserver.screeningConversationUUIDs.didset(v20);
}

id closure #1 in CPSystemStateObserver.conversationManager(_:stateChangedFor:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  result = [a1 state];
  if (result == 4)
  {
    v14 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs;
    v18 = *(a2 + OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs);

    specialized Set._Variant.remove(_:)(v8, v12);
    (*(v5 + 8))(v8, v4);
    outlined destroy of NSObject?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v16 = *(a2 + v15);
    *(a2 + v15) = v18;
    CPSystemStateObserver.screeningConversationUUIDs.didset(v16);
  }

  return result;
}

void CPSystemStateObserver.allowedStateChanged(allowed:)(char a1, const char *a2, void *a3, uint64_t (*a4)(void), const char *a5)
{
  v10 = v5;
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
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&dword_1AEB26000, v13, v14, a2, v15, 8u);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  v16 = *(v10 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v16 + 16));
  *(v10 + *a3) = a1 & 1;
  CPSystemStateObserver.screenTimeAllowed.didset(a4, a5);
  v17 = *(v16 + 16);

  os_unfair_lock_unlock(v17);
}

void specialized CPSystemStateObserver.conversationManager(_:screeningChangedFor:)(void *a1, void (*a2)(id, uint64_t))
{
  v4 = v2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1AEB26000, v8, v9, "CPSystemStateObserver We got a callback from our conversation manager %@", v10, 0xCu);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  v13 = *(v4 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v13 + 16));
  a2(v7, v4);
  v14 = *(v13 + 16);

  os_unfair_lock_unlock(v14);
}

void specialized CPSystemStateObserver.conversationManager(_:removedActiveConversation:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1AEB26000, v15, v16, "CPSystemStateObserver We got a callback from our conversation manager %@", v17, 0xCu);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v18, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  v20 = *(v2 + OBJC_IVAR___CPSystemStateObserver_lock);
  os_unfair_lock_lock(*(v20 + 16));
  v21 = [v14 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs;
  v25 = *(v2 + OBJC_IVAR___CPSystemStateObserver_screeningConversationUUIDs);

  specialized Set._Variant.remove(_:)(v8, v12);
  (*(v5 + 8))(v8, v4);
  outlined destroy of NSObject?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = *(v2 + v22);
  *(v2 + v22) = v25;
  CPSystemStateObserver.screeningConversationUUIDs.didset(v23);

  os_unfair_lock_unlock(*(v20 + 16));
}

id partial apply for closure #1 in CPSystemStateObserver._allowSharePlay.didset(void *a1)
{
  v3 = *(v1 + 16);
  v4 = CPSystemStateObserver._allowSharePlay.getter() & 1;

  return [a1 systemStateObserver:v3 sharePlayAllowedStateChanged:v4];
}

uint64_t dispatch thunk of ApplicationLaunchProviding.launchApp(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ApplicationLaunchBehavior.revokeBackgroundAuthorization(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v13(a1, a2, a3, a4);
}

id GroupSessionDataCryptorProvider.dataCryptor.willset(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v56[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v56[-v13];
  v60 = a1;
  result = [a1 encryptionKeyID];
  if (!result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v16 = result;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *(*v2 + 152);
  v17();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  LOBYTE(v16) = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v5 + 8);
  v62 = v5 + 8;
  v18 = (v61)(v12, v4);
  if ((v16 & 1) == 0)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, log);
    (*(v5 + 16))(v9, v14, v4);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v59 = v14;
      v23 = v4;
      v24 = v22;
      v58 = swift_slowAlloc();
      v63 = v58;
      *v24 = 136315650;
      v57 = v21;
      v17();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v28 = v61;
      v61(v12, v23);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v63);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v28(v9, v23);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v63);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      *(v24 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v63);
      _os_log_impl(&dword_1AEB26000, v20, v57, "[DataCryptor] Local encryptionID rotated, invoking delegate, from=%s to=%s topic=%s", v24, 0x20u);
      v34 = v58;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v34, -1, -1);
      v35 = v24;
      v4 = v23;
      v14 = v59;
      MEMORY[0x1B27120C0](v35, -1, -1);
    }

    else
    {

      v18 = (v61)(v9, v4);
    }
  }

  v36 = (*(*v2 + 192))(v18);
  v37 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v36);

  result = [v60 decryptionKeyIDSet];
  if (!result)
  {
    goto LABEL_22;
  }

  v38 = result;
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v39);

  if (*(v37 + 16) <= *(v40 + 16) >> 3)
  {
    v63 = v40;

    specialized Set._subtract<A>(_:)(v37);
  }

  else
  {

    specialized _NativeSet.subtracting<A>(_:)(v37, v40);
  }

  if (*(v40 + 16) <= *(v37 + 16) >> 3)
  {
    v63 = v37;
    specialized Set._subtract<A>(_:)(v40);
  }

  else
  {
    specialized _NativeSet.subtracting<A>(_:)(v40, v37);
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, log);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63 = v60;
    *v44 = 136315650;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v45 = Set.description.getter();
    v59 = v14;
    v46 = v45;
    v48 = v47;

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v63);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;
    v50 = Set.description.getter();
    v52 = v51;

    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v63);

    *(v44 + 14) = v53;
    *(v44 + 22) = 2080;
    *(v44 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v63);
    _os_log_impl(&dword_1AEB26000, v42, v43, "[DataCryptor] Updated cryptor, added-encryptionIDs=%s removed-encryptionIDs=%s topic=%s", v44, 0x20u);
    v54 = v60;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v54, -1, -1);
    MEMORY[0x1B27120C0](v44, -1, -1);

    v55 = v59;
  }

  else
  {

    v55 = v14;
  }

  return (v61)(v55, v4);
}

void *GroupSessionDataCryptorProvider.__allocating_init(topic:dataCryptor:refreshEncryptionKeysHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = specialized GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  return v10;
}

void *GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = specialized GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  return v5;
}

uint64_t GroupSessionDataCryptorProvider.encryptionID.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 56);
  (*(v4 + 16))(v7, a1, v3);

  CurrentValueSubject.send(_:)();
  v9 = *(v4 + 8);
  v9(a1, v3);
  v9(v7, v3);
}

uint64_t GroupSessionDataCryptorProvider.decryptionIDSet.setter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  CurrentValueSubject.send(_:)();
}

uint64_t key path setter for GroupSessionDataCryptorProvider.encryptionID : GroupSessionDataCryptorProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 160))(v7);
}

uint64_t GroupSessionDataCryptorProvider.encryptionID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  CurrentValueSubject.value.getter();
}

void (*GroupSessionDataCryptorProvider.encryptionID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for UUID();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v5[4] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[6] = v9;
  swift_beginAccess();
  v5[7] = *(v1 + 56);

  CurrentValueSubject.value.getter();
  return GroupSessionDataCryptorProvider.encryptionID.modify;
}

void GroupSessionDataCryptorProvider.encryptionID.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 40), v4, v7);
    CurrentValueSubject.send(_:)();
    v8 = *(v6 + 8);
    v8(v5, v7);

    v8(v4, v7);
  }

  else
  {
    v9 = *(*a1 + 48);
    CurrentValueSubject.send(_:)();
    (*(v6 + 8))(v4, v7);
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t GroupSessionDataCryptorProvider.$encryptionID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t GroupSessionDataCryptorProvider.encryptionIDPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v9 - v5;
  v9[1] = (*(*v0 + 176))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<UUID, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMR);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<UUID, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGGMR);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t GroupSessionDataCryptorProvider.decryptionIDSet.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  CurrentValueSubject.value.getter();

  return v3;
}

void (*GroupSessionDataCryptorProvider.decryptionIDSet.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  *(v4 + 40) = *(v1 + 64);

  CurrentValueSubject.value.getter();
  return PluginAttachmentLedgerTopic.attachments.modify;
}

uint64_t GroupSessionDataCryptorProvider.$decryptionIDSet.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t GroupSessionDataCryptorProvider.decryptionIDSetPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v9 - v5;
  v9[1] = (*(*v0 + 216))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[UUID], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMR);
  lazy protocol witness table accessor for type [UUID] and conformance <A> [A]();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<[UUID], Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGGMR);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v6, v1);
  return v7;
}

BOOL GroupSessionDataCryptorProvider.validEncryptionID(data:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  outlined copy of Data._Representation(a1, a2);
  UUID.init(data:)(a1, a2, v7);
  v8 = type metadata accessor for UUID();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8) != 1;
  outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v9;
}

uint64_t GroupSessionDataCryptorProvider.encrypt(data:seqNum:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = v4[4];
  swift_unknownObjectRetain();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v25[0] = 0;
  v8 = [v6 encryptData:isa seqNum:a3 error:v25];
  swift_unknownObjectRelease();

  v9 = v25[0];
  if (v8)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = v9;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, log);
    v14 = v12;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315394;
      v19 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v25);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4[2], v4[3], v25);
      _os_log_impl(&dword_1AEB26000, v15, v16, "Encryption failure error=%s topic=%s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v18, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    else
    {
    }

    v10 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t GroupSessionDataCryptorProvider.decrypt(data:encryptionID:seqNum:)(uint64_t a1, NSObject *a2, NSObject *a3, void *a4)
{
  v178 = a2;
  v179 = a4;
  v181[1] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for UUID();
  v174 = *(v6 - 8);
  v175 = v6;
  v7 = *(v174 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v172 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v173 = &v167 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v171 = &v167 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v167 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v167 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v167 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v167 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v167 - v26;
  v176 = v4;
  v28 = *(v4 + 32);
  swift_unknownObjectRetain();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v178 = a3;
  v30 = UUID._bridgeToObjectiveC()().super.isa;
  v181[0] = 0;
  v31 = [v28 decryptData:isa keyID:v30 seqNum:v179 error:v181];
  swift_unknownObjectRelease();

  v32 = v181[0];
  if (!v31)
  {
    v167 = v27;
    v168 = v25;
    v169 = v22;
    v170 = v19;
    v177 = v16;
    v35 = v173;
    v34 = v174;
    v37 = v175;
    v36 = v176;
    v38 = v32;
    v39 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v181[0] = v39;
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v33 = v180;
      lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
      swift_allocError();
      *v41 = v33;
      swift_willThrow();
LABEL_64:

      goto LABEL_65;
    }

    v179 = _convertErrorToNSError(_:)();
    v33 = [v179 domain];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = *MEMORY[0x1E69A4770];
    if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v46)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        __swift_project_value_buffer(v71, log);
        v72 = v34;
        v73 = *(v34 + 16);
        v74 = v172;
        v75 = v37;
        v73(v172, v178, v37);
        v76 = v39;

        v77 = v179;
        v78 = Logger.logObject.getter();
        v79 = v39;
        v80 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v78, v80))
        {

          v97 = v72[1].isa;
          v33 = &v72[1];
          v97(v74, v37);
          lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
          swift_allocError();
          *v98 = 1;
          swift_willThrow();

          v39 = v79;
          goto LABEL_64;
        }

        v81 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v181[0] = v178;
        *v81 = 136315906;
        v82 = [v77 domain];
        LODWORD(v177) = v80;
        v39 = v79;
        v83 = v82;
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v179 = v77;
        v85 = v74;
        v86 = v84;
        v88 = v87;

        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v181);

        *(v81 + 4) = v89;
        *(v81 + 12) = 2080;
        swift_getErrorValue();
        v90 = Error.localizedDescription.getter();
        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v181);

        *(v81 + 14) = v92;
        *(v81 + 22) = 2080;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        (v72[1].isa)(v85, v75);
        v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, v181);

        *(v81 + 24) = v96;
        *(v81 + 32) = 2080;
        *(v81 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v176 + 16), *(v176 + 24), v181);
        _os_log_impl(&dword_1AEB26000, v78, v177, "[DataCryptor] Unexpected failure, domain=%s error=%s encryptionID=%s topic=%s", v81, 0x2Au);
        v33 = v178;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v33, -1, -1);
        MEMORY[0x1B27120C0](v81, -1, -1);

LABEL_63:
        lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
        swift_allocError();
        *v164 = 1;
        swift_willThrow();

        goto LABEL_64;
      }
    }

    v172 = v39;
    v47 = v179;
    v48 = [v179 code];
    if (v48 <= 2)
    {
      v49 = v36;
      if (!v48)
      {
        v99 = v47;
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v100 = type metadata accessor for Logger();
        __swift_project_value_buffer(v100, log);
        v101 = v167;
        (*(v34 + 16))(v167, v178, v37);

        v33 = Logger.logObject.getter();
        v102 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v33, v102))
        {
          v103 = v34;
          v104 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v181[0] = v178;
          *v104 = 136315394;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
          v105 = dispatch thunk of CustomStringConvertible.description.getter();
          v107 = v106;
          (*(v103 + 8))(v101, v37);
          v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, v181);
          v109 = v179;

          *(v104 + 4) = v108;
          *(v104 + 12) = 2080;
          *(v104 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v49 + 16), *(v49 + 24), v181);
          _os_log_impl(&dword_1AEB26000, v33, v102, "[DataCryptor] Unexpected failure, no-error set, encryptionID=%s topic=%s", v104, 0x16u);
          v110 = v178;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v110, -1, -1);
          MEMORY[0x1B27120C0](v104, -1, -1);
        }

        else
        {

          (*(v34 + 8))(v101, v37);
          v109 = v99;
        }

        v39 = v172;
        lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
        swift_allocError();
        *v160 = 1;
        swift_willThrow();

        goto LABEL_64;
      }

      v50 = v34;
      if (v48 == 1)
      {
        v138 = v37;
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v139 = type metadata accessor for Logger();
        __swift_project_value_buffer(v139, log);
        v140 = v168;
        (*(v50 + 16))(v168, v178, v37);

        v33 = Logger.logObject.getter();
        v141 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v33, v141))
        {
          v142 = v50;
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v181[0] = v144;
          *v143 = 136315394;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
          v145 = dispatch thunk of CustomStringConvertible.description.getter();
          v146 = v138;
          v148 = v147;
          (*(v142 + 8))(v140, v146);
          v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v148, v181);
          v47 = v179;

          *(v143 + 4) = v149;
          *(v143 + 12) = 2080;
          *(v143 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v49 + 16), *(v49 + 24), v181);
          _os_log_impl(&dword_1AEB26000, v33, v141, "[DataCryptor] Unknown keyID, encryptionID=%s topic=%s", v143, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v144, -1, -1);
          MEMORY[0x1B27120C0](v143, -1, -1);
        }

        else
        {

          (*(v50 + 8))(v140, v138);
        }

        lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
        swift_allocError();
        *v163 = 0;
        goto LABEL_60;
      }

      if (v48 == 2)
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, log);
        v52 = v169;
        (*(v34 + 16))(v169, v178, v37);

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v181[0] = v178;
          *v55 = 136315394;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          v58 = v57;
          (*(v34 + 8))(v52, v37);
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v181);

          *(v55 + 4) = v59;
          *(v55 + 12) = 2080;
          *(v55 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v49 + 16), *(v49 + 24), v181);
          _os_log_impl(&dword_1AEB26000, v53, v54, "[DataCryptor] CommonCryptorError, encryptionID=%s topic=%s", v55, 0x16u);
          v33 = v178;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v33, -1, -1);
          v60 = v55;
          v47 = v179;
          MEMORY[0x1B27120C0](v60, -1, -1);
        }

        else
        {

          (*(v34 + 8))(v52, v37);
        }

LABEL_56:
        lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
        swift_allocError();
        *v162 = 1;
LABEL_60:
        swift_willThrow();

        v39 = v172;
        goto LABEL_64;
      }

LABEL_37:
      v126 = v47;
      v127 = v48;
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v128 = type metadata accessor for Logger();
      __swift_project_value_buffer(v128, log);
      (*(v50 + 16))(v35, v178, v37);

      v33 = Logger.logObject.getter();
      v129 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v33, v129))
      {
        v130 = v50;
        v131 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v181[0] = v178;
        *v131 = 134218498;
        *(v131 + 4) = v127;
        *(v131 + 12) = 2080;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        v132 = dispatch thunk of CustomStringConvertible.description.getter();
        v134 = v133;
        (*(v130 + 8))(v35, v37);
        v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, v181);

        *(v131 + 14) = v135;
        *(v131 + 22) = 2080;
        v136 = v179;
        *(v131 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v49 + 16), *(v49 + 24), v181);
        _os_log_impl(&dword_1AEB26000, v33, v129, "[DataCryptor] Unexpected error-code, code=%ld encryptionID=%s topic=%s", v131, 0x20u);
        v137 = v178;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v137, -1, -1);
        MEMORY[0x1B27120C0](v131, -1, -1);
      }

      else
      {

        (*(v50 + 8))(v35, v37);
        v136 = v126;
      }

      v39 = v172;
      lazy protocol witness table accessor for type TopicDecryptionError and conformance TopicDecryptionError();
      swift_allocError();
      *v161 = 1;
      swift_willThrow();

      goto LABEL_64;
    }

    v49 = v36;
    if (v48 == 3)
    {
      v111 = v34;
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v112 = type metadata accessor for Logger();
      __swift_project_value_buffer(v112, log);
      v113 = *(v34 + 16);
      v114 = v170;
      v115 = v37;
      v113(v170, v178, v37);

      v33 = Logger.logObject.getter();
      v116 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v33, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v181[0] = v118;
        *v117 = 136315394;
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        v119 = dispatch thunk of CustomStringConvertible.description.getter();
        v120 = v115;
        v122 = v121;
        (*(v111 + 8))(v114, v120);
        v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v122, v181);
        v124 = v179;

        *(v117 + 4) = v123;
        *(v117 + 12) = 2080;
        *(v117 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v49 + 16), *(v49 + 24), v181);
        _os_log_impl(&dword_1AEB26000, v33, v116, "[DataCryptor] Authentication failed, encryptionID=%s topic=%s", v117, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v118, -1, -1);
        v125 = v117;
        v47 = v124;
        MEMORY[0x1B27120C0](v125, -1, -1);
      }

      else
      {

        (*(v111 + 8))(v114, v115);
      }

      goto LABEL_56;
    }

    v50 = v34;
    if (v48 == 4)
    {
      v150 = v178;
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v151 = type metadata accessor for Logger();
      __swift_project_value_buffer(v151, log);
      v152 = v177;
      (*(v34 + 16))(v177, v150, v37);

      v33 = Logger.logObject.getter();
      v153 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v33, v153))
      {

        (*(v34 + 8))(v152, v37);
        goto LABEL_62;
      }

      v64 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v181[0] = v154;
      *v64 = 136315394;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v155 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v152;
      v158 = v157;
      (*(v34 + 8))(v156, v37);
      v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v158, v181);

      *(v64 + 4) = v159;
      *(v64 + 12) = 2080;
      *(v64 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v49 + 16), *(v49 + 24), v181);
      _os_log_impl(&dword_1AEB26000, v33, v153, "[DataCryptor] Insufficient size, encryptionID=%s topic=%s", v64, 0x16u);
      swift_arrayDestroy();
      v70 = v154;
    }

    else
    {
      if (v48 != 6)
      {
        goto LABEL_37;
      }

      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, log);
      v62 = v171;
      (*(v34 + 16))(v171, v178, v37);

      v33 = Logger.logObject.getter();
      v63 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v33, v63))
      {

        (*(v34 + 8))(v62, v37);
        goto LABEL_62;
      }

      v64 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v181[0] = v178;
      *v64 = 136315394;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      (*(v34 + 8))(v62, v37);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v181);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      *(v64 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v49 + 16), *(v49 + 24), v181);
      _os_log_impl(&dword_1AEB26000, v33, v63, "[DataCryptor] Unknown version, encryptionID=%s topic=%s", v64, 0x16u);
      v69 = v178;
      swift_arrayDestroy();
      v70 = v69;
    }

    MEMORY[0x1B27120C0](v70, -1, -1);
    MEMORY[0x1B27120C0](v64, -1, -1);

LABEL_62:
    v39 = v172;
    goto LABEL_63;
  }

  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_65:
  v165 = *MEMORY[0x1E69E9840];
  return v33;
}

void GroupSessionDataCryptorProvider.refresh(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of Any(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CPDataCryptor_pMd, &_sSo13CPDataCryptor_pMR);
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, log);
    outlined init with copy of Any(a1, v35);

    v10 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v15))
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      return;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136315394;
    outlined init with copy of Any(v35, v33);
    outlined init with copy of Any?(v33, &v31);
    if (v32)
    {
      outlined init with take of Any(&v31, v30);
      outlined init with copy of Any(v30, v29);
      v18 = String.init<A>(reflecting:)();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    outlined destroy of NSObject?(v33, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v34);

    *(v16 + 4) = v27;
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v34);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v17, -1, -1);
    MEMORY[0x1B27120C0](v16, -1, -1);
    goto LABEL_19;
  }

  v8 = v33[0];
  if ([v33[0] isEqual_])
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, log);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), v35);
      _os_log_impl(&dword_1AEB26000, v10, v11, "[DataCryptor] Not refreshing cryptor since it's equal to the current cryptor, topic=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B27120C0](v13, -1, -1);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_19:

    return;
  }

  GroupSessionDataCryptorProvider.dataCryptor.willset(v8);
  v21 = *(v2 + 32);
  *(v2 + 32) = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v22 = [*(v2 + 32) encryptionKeyID];
  if (v22)
  {
    v23 = v22;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(*v2 + 160))(v7);
    v24 = [*(v2 + 32) decryptionKeyIDSet];
    if (v24)
    {
      v25 = v24;
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      (*(*v2 + 200))(v26);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall GroupSessionDataCryptorProvider.refreshEncryptionIDSet(participantIDs:)(Swift::OpaquePointer_optional participantIDs)
{
  v2 = v1;
  rawValue = participantIDs.value._rawValue;
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
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    if (rawValue)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v14);
    _os_log_impl(&dword_1AEB26000, v5, v6, "[DataCryptor] refresh-requested, participantIDs=%s topic=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v13 = *(v2 + 48);
  (*(v2 + 40))(rawValue);
}

void *GroupSessionDataCryptorProvider.deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return v0;
}

uint64_t GroupSessionDataCryptorProvider.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return swift_deallocClassInstance();
}

void *specialized GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a4;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v6[2] = a1;
  v22 = a2;
  v23 = a3;
  v6[3] = v22;
  v6[4] = a3;
  v6[5] = v38;
  v6[6] = a5;

  swift_unknownObjectRetain();

  result = [a3 encryptionKeyID];
  if (result)
  {
    v25 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v26 = v12[2];
    v26(v19, v21, v11);
    v26(v16, v19, v11);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation4UUIDVs5NeverOGMR);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = CurrentValueSubject.init(_:)();
    v31 = v12[1];
    v31(v19, v11);
    v31(v21, v11);
    v6[7] = v30;
    swift_endAccess();
    result = [v23 decryptionKeyIDSet];
    if (result)
    {
      v32 = result;

      v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v39 = v33;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay10Foundation4UUIDVGs5NeverOGMR);
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      v6[8] = CurrentValueSubject.init(_:)();
      swift_endAccess();
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [UUID] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UUID] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UUID] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UUID] and conformance <A> [A]);
  }

  return result;
}

uint64_t DisplayLayoutAppVisibilityMonitor.__allocating_init(appPolicyManager:applicationController:)(void *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  DisplayLayoutAppVisibilityMonitor.init(appPolicyManager:applicationController:)(a1, a2);
  return v4;
}

void *DisplayLayoutAppVisibilityMonitor.init(appPolicyManager:applicationController:)(void *a1, uint64_t *a2)
{
  v2[8] = MEMORY[0x1E69E7CD0];
  v2[9] = 0;
  v2[2] = a1;
  outlined init with copy of UserNotificationCenter(a2, (v2 + 3));
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 configurationForDefaultMainDisplayMonitor];
  v8 = swift_allocObject();
  swift_weakInit();
  v13[4] = partial apply for closure #1 in DisplayLayoutAppVisibilityMonitor.init(appPolicyManager:applicationController:);
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ();
  v13[3] = &block_descriptor_46;
  v9 = _Block_copy(v13);

  [v7 setTransitionHandler_];
  _Block_release(v9);
  v10 = [objc_opt_self() monitorWithConfiguration_];

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v11 = v2[9];
  v2[9] = v10;

  return v2;
}

uint64_t closure #1 in DisplayLayoutAppVisibilityMonitor.init(appPolicyManager:applicationController:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DisplayLayoutAppVisibilityMonitor.handleDisplayLayout(_:)(a2);
  }

  return result;
}

void DisplayLayoutAppVisibilityMonitor.handleDisplayLayout(_:)(void *a1)
{
  if (!a1)
  {
    if (one-time initialization token for default != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_26;
  }

  v2 = v1;
  v77 = a1;
  v3 = [v77 elements];
  type metadata accessor for FBSDisplayLayoutElement();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_34:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_35:
    v79 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_35;
  }

LABEL_4:
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v79 = MEMORY[0x1E69E7CC0];
  v9 = &selRef_audioToken;
  v76 = v2;
  do
  {
    v2 = v7;
    while (1)
    {
      if (v8)
      {
        v10 = MEMORY[0x1B2710B10](v2, v4);
      }

      else
      {
        if (v2 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v10 = *(v4 + 8 * v2 + 32);
      }

      v11 = v10;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      oslog = (v2 + 1);
      v12 = [v10 v9[6]];
      if (v12)
      {
        break;
      }

LABEL_14:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.default);
      v18 = v11;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = v4;
        v23 = v6;
        v24 = v8;
        v25 = v5;
        v26 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v18;
        *v26 = v18;
        v27 = v18;
        _os_log_impl(&dword_1AEB26000, v19, v20, "DisplayLayoutAppVisibilityMonitor: Ignoring visibility update for layout element: %@", v21, 0xCu);
        outlined destroy of NSObject?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v28 = v26;
        v5 = v25;
        v8 = v24;
        v6 = v23;
        v4 = v22;
        v9 = &selRef_audioToken;
        MEMORY[0x1B27120C0](v28, -1, -1);
        MEMORY[0x1B27120C0](v21, -1, -1);
      }

      ++v2;
      if (oslog == v6)
      {
        v2 = v76;
        goto LABEL_36;
      }
    }

    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if ((specialized AppVisibilityMonitor.shouldHandleAppVisibilityUpdate(forBundleIdentifier:)(v14, v16) & 1) == 0)
    {

      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
    }

    v7 = (v2 + 1);
    v30 = *(v79 + 2);
    v29 = *(v79 + 3);
    if (v30 >= v29 >> 1)
    {
      v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v79);
    }

    *(v79 + 2) = v30 + 1;
    v31 = &v79[16 * v30];
    *(v31 + 4) = v14;
    *(v31 + 5) = v16;
    v2 = v76;
  }

  while (oslog != v6);
LABEL_36:

  v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v79);

  v36 = *(v35 + 16);
  v37 = *(v2 + 64);
  v38 = *(v37 + 16);
  if (!v36)
  {
    if (!v38)
    {
      goto LABEL_41;
    }

    v41 = *MEMORY[0x1E69D8DC0];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_67:
    v71 = v42;
    v72 = v43;
    v73 = specialized AppVisibilityMonitor.applicationType(forBundleIdentifier:)();
    specialized AppVisibilityMonitor.handleAppVisibilityUpdate(forBundleIdentifier:applicationType:)(v71, v72, v73);
    goto LABEL_68;
  }

  if (v38 > v36 >> 3)
  {
    v39 = *(v2 + 64);

    v40 = specialized _NativeSet.subtracting<A>(_:)(v37, v35);

    goto LABEL_42;
  }

LABEL_41:

  specialized Set._subtract<A>(_:)(v37);

  v40 = v35;
LABEL_42:
  v44 = *(v2 + 64);
  if (*(v35 + 16) > *(v44 + 16) >> 3)
  {
    v45 = *(v2 + 64);

    v46 = specialized _NativeSet.subtracting<A>(_:)(v35, v44);
    if (*(v40 + 16))
    {
      goto LABEL_44;
    }

LABEL_64:
    v68 = v46;
    v69 = *(v46 + 16);

    if (v69)
    {
      v70 = *(v68 + 16);

      if (v70)
      {
        v42 = specialized Collection.first.getter(v35);
        if (v43)
        {
          goto LABEL_67;
        }
      }

LABEL_69:

      v74 = *(v2 + 64);
      *(v2 + 64) = v35;

      return;
    }

LABEL_68:

    goto LABEL_69;
  }

  v84 = *(v2 + 64);

  specialized Set._subtract<A>(_:)(v35);
  v46 = v84;
  if (!*(v40 + 16))
  {
    goto LABEL_64;
  }

LABEL_44:
  v75 = v35;

  v47 = v40 + 56;
  v48 = 1 << *(v40 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v40 + 56);
  v51 = (v48 + 63) >> 6;

  v52 = 0;
  v80 = v51;
  v81 = v40 + 56;
  v78 = v40;
  while (2)
  {
    if (v50)
    {
LABEL_55:
      v56 = (*(v40 + 48) + ((v52 << 10) | (16 * __clz(__rbit64(v50)))));
      v57 = *v56;
      v58 = v56[1];
      v59 = *(v2 + 48);
      v60 = *(v2 + 56);
      __swift_project_boxed_opaque_existential_1((v2 + 24), v59);
      v61 = v2;
      v62 = *(v60 + 8);

      if (v62(v57, v58, v59, v60))
      {
        v63 = (*((*MEMORY[0x1E69E7D40] & **(v61 + 16)) + 0x98))();
        v2 = v61;
        v40 = v78;
        if (*(v63 + 16))
        {
          v64 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
          if (v65)
          {
            v66 = *(*(v63 + 56) + 8 * v64);

            v67 = [v66 BOOLValue];

            v53 = v67;
          }

          else
          {

            v53 = 0;
          }

          v47 = v81;
          v54 = v57;
          goto LABEL_49;
        }

        v53 = 0;
      }

      else
      {
        v53 = 2;
        v2 = v61;
        v40 = v78;
      }

      v47 = v81;
      v54 = v57;
LABEL_49:
      v51 = v80;
      v50 &= v50 - 1;
      specialized AppVisibilityMonitor.handleAppVisibilityUpdate(forBundleIdentifier:applicationType:)(v54, v58, v53);

      continue;
    }

    break;
  }

  while (1)
  {
    v55 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v55 >= v51)
    {

      v35 = v75;
      goto LABEL_69;
    }

    v50 = *(v47 + 8 * v55);
    ++v52;
    if (v50)
    {
      v52 = v55;
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_73:
  swift_once();
LABEL_26:
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Log.default);
  osloga = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(osloga, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1AEB26000, osloga, v33, "DisplayLayoutAppVisibilityMonitor: Skipping since no display layout was provided", v34, 2u);
    MEMORY[0x1B27120C0](v34, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed FBSDisplayLayoutMonitor, @guaranteed FBSDisplayLayout?, @guaranteed FBSDisplayLayoutTransitionContext?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

void *DisplayLayoutAppVisibilityMonitor.deinit()
{
  result = *(v0 + 72);
  if (result)
  {
    [result invalidate];

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
    v2 = *(v0 + 64);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall DisplayLayoutAppVisibilityMonitor.invalidate()()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    [v1 invalidate];
  }

  else
  {
    __break(1u);
  }
}

void *DisplayLayoutAppVisibilityMonitor.__deallocating_deinit()
{
  result = *(v0 + 72);
  if (result)
  {
    [result invalidate];

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
    v2 = *(v0 + 64);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id protocol witness for AppVisibilityMonitor.invalidate() in conformance DisplayLayoutAppVisibilityMonitor()
{
  result = *(v0 + 72);
  if (result)
  {
    return [result invalidate];
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for FBSDisplayLayoutElement()
{
  result = lazy cache variable for type metadata for FBSDisplayLayoutElement;
  if (!lazy cache variable for type metadata for FBSDisplayLayoutElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FBSDisplayLayoutElement);
  }

  return result;
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AddressableMember();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);
    Set.Iterator.init(_cocoa:)();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
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

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      outlined consume of Set<String>.Iterator._Variant();
      return;
    }

    while (1)
    {
      v18 = specialized Set._Variant.remove(_:)(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AddressableMember();
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
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
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      specialized Set._Variant.remove(_:)(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 64;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v83 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x1E69E7CD0];
    goto LABEL_63;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AddressableMember();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);
    Set.Iterator.init(_cocoa:)();
    v5 = v78;
    v7 = v79;
    v8 = v80;
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
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

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v64 = v8;
  v14 = (v8 + 64) >> 6;
  v70 = (v4 + 56);
  v77 = v10;
  v67 = v5;
  v68 = v14;
  v66 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_62;
      }

      v71 = v22;
      type metadata accessor for AddressableMember();
      swift_dynamicCast();
      v20 = v72;
      v18 = v9;
      v2 = v10;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v73 = v5;
      v74 = v7;
      v75 = v64;
      v76 = v18;
      v77 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = v20;
    v24 = NSObject._rawHashValue(seed:)(*(v4 + 40));
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v66;
    v5 = v67;
    v14 = v68;
  }

  v3 = ~v25;
  v26 = type metadata accessor for AddressableMember();
  v27 = *(*(v4 + 48) + 8 * v7);
  v69 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v4 + 48) + 8 * v7);
  }

  v30 = *(v4 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v61;
  v3 = v68;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    MEMORY[0x1EEE9AC00](v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = *(v4 + 16);
    v63 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v66;
    v35 = v67;
LABEL_33:
    v65 = v5;
    while (v35 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_61;
      }

      v71 = v37;
      swift_dynamicCast();
      v38 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v70[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(*(v44 + 48) + 8 * v7);
          v50 = static NSObject.== infix(_:_:)();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v70[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v68;

        v51 = v63[v46];
        v63[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v66;
        v35 = v67;
        v5 = v65;
        if (!v52)
        {
          v5 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v4 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v66;
        v35 = v67;
        v3 = v68;
        v5 = v65;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v40;
      v18 = v40;
      v77 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = specialized _NativeSet.extractSubset(using:count:)(v63, v61, v5, v4, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMd, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMR);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v6;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v57, v61, v4, v7, &v73);
  v59 = v58;

  MEMORY[0x1B27120C0](v57, -1, -1);
  v4 = v59;
LABEL_62:
  outlined consume of Set<String>.Iterator._Variant();
LABEL_63:
  v53 = *MEMORY[0x1E69E9840];
  return v4;
}

{
  v98 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v69 - v10);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v69 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      outlined destroy of NSObject?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        outlined destroy of NSObject?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v68, v69, v84, v26, &v93);

  MEMORY[0x1B27120C0](v68, -1, -1);
LABEL_52:
  outlined consume of Set<String>.Iterator._Variant();
LABEL_54:
  v63 = *MEMORY[0x1E69E9840];
  return a2;
}

{
  v5 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v50 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x1B27120C0](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    outlined consume of Set<String>.Iterator._Variant();
    goto LABEL_53;
  }

  result = MEMORY[0x1B27120C0](v53, -1, -1);
  __break(1u);
  return result;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          type metadata accessor for AddressableMember();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            specialized _NativeSet.extractSubset(using:count:)(a1, a2, v30, a3, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMd, &_ss11_SetStorageCy14CopresenceCore17AddressableMemberCGMR);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for AddressableMember();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          outlined destroy of NSObject?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v48 = v64;

          return specialized _NativeSet.extractSubset(using:count:)(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return specialized _NativeSet.extractSubset(using:count:)(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for UUID();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &_ss11_SetStorageCy14CopresenceCore15ActivitySessionCGMd, &_ss11_SetStorageCy14CopresenceCore15ActivitySessionCGMR);
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = NSObject._rawHashValue(seed:)(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t StateMachine.Transition.init(from:to:event:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(*(a4 - 8) + 32);
  v11(a6, a1, a4);
  v12 = type metadata accessor for StateMachine.Transition();
  v11(a6 + *(v12 + 52), a2, a4);
  return (*(*(a5 - 8) + 32))(a6 + *(v12 + 56), a3, a5);
}

uint64_t StateMachine.Trigger.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for StateMachine.Trigger();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t static StateMachine.Trigger.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a5 + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v8 = *(type metadata accessor for StateMachine.Trigger() + 52);
    v9 = *(a6 + 8);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t StateMachine.Trigger.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  dispatch thunk of Hashable.hash(into:)();
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = v2 + *(a2 + 52);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int StateMachine.Trigger.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  StateMachine.Trigger.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t StateMachine._currentState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t StateMachine._currentState.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StateMachine<A, B>.Trigger(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  StateMachine.Trigger.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t *StateMachine.__allocating_init(initialState:transitions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  swift_allocObject();
  v8 = specialized StateMachine.init(initialState:transitions:)(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v8;
}

uint64_t *StateMachine.init(initialState:transitions:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = specialized StateMachine.init(initialState:transitions:)(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v5;
}

uint64_t closure #1 in StateMachine.init(initialState:transitions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v30 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v28[1] = v20;
  v28[2] = v21;
  v22 = v21;
  type metadata accessor for StateMachine.Trigger();
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  v23 = *(v14 + 16);
  v23(v17, a1, a2);
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = v22;
  v24 = type metadata accessor for StateMachine.Transition();
  v25 = v30;
  (*(v9 + 16))(v30, a1 + *(v24 + 56), a3);
  v26 = v31;
  StateMachine.Trigger.init(_:_:)(v17, v25, a2, a3, v31);
  return (v23)(v26 + v29, a1 + *(v24 + 52), a2);
}

void StateMachine.currentState.getter()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 128));
  v3 = *(v1 + 80);
  Lock.withLock<A>(_:)(partial apply for closure #1 in StateMachine.currentState.getter);
}

uint64_t StateMachine.execute(_:)(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 128));
  os_unfair_lock_lock(*(v3 + 16));
  closure #1 in StateMachine.execute(_:)(v1, a1, &v5);
  os_unfair_lock_unlock(*(v3 + 16));
  return v5;
}

uint64_t closure #1 in StateMachine.execute(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = *a1;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = type metadata accessor for Optional();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v35 - v10;
  v11 = *(v4 + 88);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v35 - v14;
  v39 = *(v5 + 96);
  *&v16 = v6;
  *(&v16 + 1) = v11;
  v45 = v16;
  v46 = v39;
  v17 = type metadata accessor for StateMachine.Trigger();
  v41 = *(v17 - 8);
  v18 = *(v41 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  v40 = *(v6 - 8);
  v22 = *(v40 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v36 = &v35 - v26;
  v27 = *(a1 + *(v4 + 120));
  StateMachine._currentState.getter(v25);
  (*(v12 + 16))(v15, v43, v11);
  v28 = v42;
  StateMachine.Trigger.init(_:_:)(v25, v15, v6, v11, v21);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B270FE60](v21, v27, v17, v6, WitnessTable);
  v30 = v17;
  v31 = v40;
  (*(v41 + 8))(v21, v30);
  if ((*(v31 + 48))(v28, 1, v6) == 1)
  {
    result = (*(v37 + 8))(v28, v38);
    v33 = 0;
  }

  else
  {
    v34 = v36;
    (*(v31 + 32))(v36, v28, v6);
    (*(v31 + 16))(v25, v34, v6);
    StateMachine._currentState.setter(v25);
    result = (*(v31 + 8))(v34, v6);
    v33 = 1;
  }

  *v44 = v33;
  return result;
}

uint64_t StateMachine.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  v1 = *(v0 + *(*v0 + 120));

  v2 = *(v0 + *(*v0 + 128));

  return v0;
}

uint64_t StateMachine.__deallocating_deinit()
{
  StateMachine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t *specialized StateMachine.init(initialState:transitions:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 128);
  type metadata accessor for Lock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *(v2 + v7) = v8;
  v10 = *(v6 + 80);
  (*(*(v10 - 8) + 16))(v3 + *(*v3 + 112), a1, v10);
  v23 = a2;
  v18 = v10;
  v19 = *(v6 + 88);
  v20 = *(v6 + 96);
  type metadata accessor for StateMachine.Transition();
  v11 = type metadata accessor for Array();
  v21 = __PAIR128__(v19, v10);
  v22 = v20;
  type metadata accessor for StateMachine.Trigger();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in StateMachine.init(initialState:transitions:), v17, v11, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v14);

  *&v21 = v15;
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *(v3 + *(*v3 + 120)) = Dictionary.init<A>(uniqueKeysWithValues:)();
  return v3;
}

uint64_t type metadata completion function for StateMachine(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for StateMachine.Transition(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachine.Transition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 64);
  v10 = *(v4 + 80);
  v11 = *(v7 + 80);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v9 + v10;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v15 = ((v9 + v11 + (v13 & ~v10)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((((a1 + v13) & ~v10) + v9 + v11) & ~v11, v8, v6);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v12 + (v21 | v19) + 1;
}

char *storeEnumTagSinglePayload for StateMachine.Transition(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v5 + 80);
  v12 = *(v8 + 80);
  if (v9 <= v6)
  {
    v13 = *(v5 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = ((v10 + v12 + ((v10 + v11) & ~v11)) & ~v12) + *(*(v7 - 8) + 64);
  v15 = a3 >= v13;
  v16 = a3 - v13;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v27 = *(v5 + 56);

    return v27();
  }

  else
  {
    v25 = *(v8 + 56);
    v26 = ((&result[v10 + v11] & ~v11) + v10 + v12) & ~v12;

    return v25(v26);
  }
}

uint64_t type metadata completion function for StateMachine.Trigger(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachine.Trigger(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *storeEnumTagSinglePayload for StateMachine.Trigger(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata() + 20);
  result = outlined consume of Data?(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata()
{
  result = type metadata singleton initialization cache for AttachmentLedgerMetadata_AttachmentMetadata;
  if (!type metadata singleton initialization cache for AttachmentLedgerMetadata_AttachmentMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata.getter()
{
  v1 = (v0 + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata() + 20));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  outlined copy of Data?(*v1, v2);
  return v3;
}

uint64_t key path setter for AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata : AttachmentLedgerMetadata_AttachmentMetadata(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata() + 20));
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(v2, v3);
  result = outlined consume of Data?(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t (*AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata() + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  outlined copy of Data?(v5, v6);
  return AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata.modify;
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.developerMetadata.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    outlined copy of Data._Representation(*a1, v2);
    outlined consume of Data?(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return outlined consume of Data._Representation(v4, v2);
  }

  else
  {
    result = outlined consume of Data?(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

Swift::Void __swiftcall AttachmentLedgerMetadata_AttachmentMetadata.clearDeveloperMetadata()()
{
  v1 = v0 + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata() + 20);
  outlined consume of Data?(*v1, *(v1 + 8));
  *v1 = xmmword_1AEE07B50;
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double AttachmentLedgerMetadata_AttachmentMetadata.init()@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata();
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_1AEE07B50;
  return result;
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap.unsafeMutableAddressor()
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v0, static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap);
}

uint64_t static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata() + 20);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t AttachmentLedgerMetadata_AttachmentMetadata.traverse<A>(visitor:)()
{
  result = closure #1 in AttachmentLedgerMetadata_AttachmentMetadata.traverse<A>(visitor:)(v0);
  if (!v1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in AttachmentLedgerMetadata_AttachmentMetadata.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata();
  v3 = a1 + *(result + 20);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    outlined copy of Data._Representation(*v3, *(v3 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v5, v4);
  }

  return result;
}

Swift::Int AttachmentLedgerMetadata_AttachmentMetadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata();
  lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double protocol witness for Message.init() in conformance AttachmentLedgerMetadata_AttachmentMetadata@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 20)) = xmmword_1AEE07B50;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance AttachmentLedgerMetadata_AttachmentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance AttachmentLedgerMetadata_AttachmentMetadata@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static AttachmentLedgerMetadata_AttachmentMetadata._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttachmentLedgerMetadata_AttachmentMetadata()
{
  lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttachmentLedgerMetadata_AttachmentMetadata(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t specialized static AttachmentLedgerMetadata_AttachmentMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata() + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      outlined copy of Data?(v6, v5);
      outlined copy of Data?(v9, v8);
      v11 = specialized static Data.== infix(_:_:)(v6, v5, v9, v8);
      outlined consume of Data?(v9, v8);
      outlined consume of Data?(v6, v5);
      if (v11)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v6, v5);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v6, v5);
  outlined copy of Data?(v9, v8);
  outlined consume of Data?(v6, v5);
LABEL_8:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void type metadata completion function for AttachmentLedgerMetadata_AttachmentMetadata()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Data?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Data?()
{
  if (!lazy cache variable for type metadata for Data?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Data?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata(unint64_t *a1, void (*a2)(uint64_t))
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

id ProtectedAppsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ProtectedAppsObserver.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore21ProtectedAppsObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t ProtectedAppsObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore21ProtectedAppsObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ProtectedAppsObserver.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore21ProtectedAppsObserver_delegate;
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

id ProtectedAppsObserver.init()()
{
  *&v0[OBJC_IVAR____TtC14CopresenceCore21ProtectedAppsObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProtectedAppsObserver();
  v1 = objc_msgSendSuper2(&v6, sel_init);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [objc_msgSend(v2 subjectMonitorRegistry)];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

char *ProtectedAppsObserver.hiddenApps.getter()
{
  v0 = [objc_opt_self() hiddenApplications];
  type metadata accessor for APApplication();
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v15;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B2710B10](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 bundleIdentifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v4);

    return v5;
  }

  __break(1u);
  return result;
}

id ProtectedAppsObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtectedAppsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for ProtectedAppsObserverProtocol.delegate.modify in conformance ProtectedAppsObserver(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x68))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ProtectedAppsObserver.appProtectionSubjectsChanged(_:for:)(unint64_t a1)
{
  v29 = MEMORY[0x1E69E7CC0];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_32:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = v5;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1B2710B10](v7, a1);
        }

        else
        {
          if (v7 >= *(v2 + 16))
          {
            goto LABEL_31;
          }

          v8 = *(a1 + 8 * v7 + 32);
        }

        v9 = v8;
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v7;
        if (v5 == v3)
        {
          goto LABEL_19;
        }
      }

      MEMORY[0x1B2710150]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v29;
    }

    while (v5 != v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  if (v6 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    if (v11)
    {
      goto LABEL_21;
    }

LABEL_34:

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_21:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    return result;
  }

  v13 = 0;
  v14 = v4;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1B2710B10](v13, v6);
    }

    else
    {
      v15 = *(v6 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = [v15 bundleIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
    }

    ++v13;
    *(v14 + 16) = v22 + 1;
    v23 = v14 + 16 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
  }

  while (v11 != v13);

LABEL_35:
  if ((*((*MEMORY[0x1E69E7D40] & *v28) + 0x58))(v24))
  {
    v26 = v25;
    ObjectType = swift_getObjectType();
    (*(v26 + 8))(v14, ObjectType, v26);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t SessionSuspensionController.__allocating_init(processIdentifier:suspensionTarget:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69C75F8]) init];
  type metadata accessor for SessionSuspensionController();
  v7 = swift_allocObject();

  return specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, a2, a3, v6, v7);
}

void thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitor, @guaranteed RBSProcessHandle, @guaranteed RBSProcessStateUpdate) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

Swift::Int SessionSuspensionController.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

uint64_t SessionSuspensionController.suspensionTarget.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 120);
  return result;
}

uint64_t SessionSuspensionController.suspensionTarget.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SessionSuspensionController.suspensionTarget.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return SessionSuspensionController.suspensionTarget.modify;
}

void SessionSuspensionController.suspensionTarget.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 120) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t SessionSuspensionController.processIdentifier.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t key path setter for SessionSuspensionController.suspensionAcquireTask : SessionSuspensionController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;

  SessionSuspensionController.suspensionAcquireTask.didset(v4);
}

void SessionSuspensionController.suspensionAcquireTask.didset(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 176))
  {
    v3 = one-time initialization token for suspensionController;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.suspensionController);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy7Combine14AnyCancellableCs5Error_pGMd, &_sScTy7Combine14AnyCancellableCs5Error_pGMR);
      v9 = String.init<A>(reflecting:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Tracking suspensionAcquireTask: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for suspensionController != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.suspensionController);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      if (a1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy7Combine14AnyCancellableCs5Error_pGMd, &_sScTy7Combine14AnyCancellableCs5Error_pGMR);
        v17 = String.init<A>(reflecting:)();
        v19 = v18;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v21);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1AEB26000, v13, v14, "No longer tracking suspensionAcquireTask: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }
  }
}

uint64_t SessionSuspensionController.suspensionAcquireTask.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
}

uint64_t SessionSuspensionController.suspensionAcquireTask.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;

  SessionSuspensionController.suspensionAcquireTask.didset(v3);
}

void (*SessionSuspensionController.suspensionAcquireTask.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v4 + 24) = *(v1 + 176);

  return SessionSuspensionController.suspensionAcquireTask.modify;
}

void SessionSuspensionController.suspensionAcquireTask.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(v5 + 176);
  *(v5 + 176) = *v4;

  v7 = v3[4];
  if (a2)
  {

    SessionSuspensionController.suspensionAcquireTask.didset(v6);

    v8 = *v4;
  }

  else
  {
    SessionSuspensionController.suspensionAcquireTask.didset(v6);
  }

  free(v3);
}

uint64_t key path setter for SessionSuspensionController.cancellables : SessionSuspensionController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;
}

uint64_t SessionSuspensionController.cancellables.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
}

uint64_t SessionSuspensionController.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t SessionSuspensionController.__allocating_init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = a5(a1, a2, a3, v16, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v18;
}

uint64_t closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14CopresenceCore25ProcessMonitorStateUpdateV_GMd, &_sScS8IteratorVy14CopresenceCore25ProcessMonitorStateUpdateV_GMR);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:), 0, 0);
}

uint64_t closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:);
  v6 = v0[9];
  v7 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 12, 0, 0, v7);
}

{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:), 0, 0);
}

{
  v1 = *(v0 + 96);
  if (v1 == 2 || (v2 = *(v0 + 48), Strong = swift_weakLoadStrong(), (*(v0 + 88) = Strong) == 0))
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v4 = Strong;
    if (v1)
    {
      if (one-time initialization token for suspensionController != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Log.suspensionController);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1AEB26000, v6, v7, "Received notification that application is running.", v8, 2u);
        MEMORY[0x1B27120C0](v8, -1, -1);
      }

      v9 = closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:);
    }

    else
    {
      if (one-time initialization token for suspensionController != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Log.suspensionController);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1AEB26000, v13, v14, "Received notification that application isn't running", v15, 2u);
        MEMORY[0x1B27120C0](v15, -1, -1);
      }

      v9 = closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:);
    }

    return MEMORY[0x1EEE6DFA0](v9, v4, 0);
  }
}

{
  v1 = *(v0 + 88);
  SessionSuspensionController.releaseAssertionIfNecessary()();

  return MEMORY[0x1EEE6DFA0](closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:), 0, 0);
}

{
  v1 = v0[11];

  v2 = *(MEMORY[0x1E69E8678] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:);
  v4 = v0[9];
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 12, 0, 0, v5);
}

{
  v1 = *(v0 + 88);
  SessionSuspensionController.acquireAssertionIfNecessary()();

  return MEMORY[0x1EEE6DFA0](closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:), 0, 0);
}

uint64_t *SessionSuspensionController.deinit()
{
  outlined init with copy of UserNotificationCenter((v0 + 17), v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  outlined destroy of weak ActivitySessionManagerProtocol?((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v3 = v0[22];

  v4 = v0[23];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SessionSuspensionController.__deallocating_deinit()
{
  outlined init with copy of UserNotificationCenter((v0 + 17), v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  outlined destroy of weak ActivitySessionManagerProtocol?((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v3 = v0[22];

  v4 = v0[23];

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

Swift::Void __swiftcall SessionSuspensionController.acquireAssertionIfNecessary()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28[-v4];
  if (one-time initialization token for suspensionController != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.suspensionController);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    swift_beginAccess();
    if (*(v0 + 176))
    {
      v30 = *(v0 + 176);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy7Combine14AnyCancellableCs5Error_pGMd, &_sScTy7Combine14AnyCancellableCs5Error_pGMR);
      v11 = String.init<A>(reflecting:)();
      v13 = v12;
    }

    else
    {
      v11 = 7104878;
      v13 = 0xE300000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v31);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Received request to acquire suspension, current suspensionAcquireTask: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  swift_beginAccess();
  if (*(v0 + 176))
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      if (*(v1 + 176))
      {
        v29 = *(v1 + 176);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy7Combine14AnyCancellableCs5Error_pGMd, &_sScTy7Combine14AnyCancellableCs5Error_pGMR);
        v19 = String.init<A>(reflecting:)();
        v21 = v20;
      }

      else
      {
        v19 = 7104878;
        v21 = 0xE300000000000000;
      }

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v30);

      *(v17 + 4) = v27;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Not re-requesting assertion since there's already a task trying to grab an assertion %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1B27120C0](v18, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }
  }

  else
  {
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    v23 = lazy protocol witness table accessor for type SessionSuspensionController and conformance SessionSuspensionController();
    v24 = swift_allocObject();
    v24[2] = v1;
    v24[3] = v23;
    v24[4] = v1;
    swift_retain_n();
    v25 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC7Combine14AnyCancellableC_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in SessionSuspensionController.acquireAssertionIfNecessary(), v24);
    v26 = *(v1 + 176);
    *(v1 + 176) = v25;

    SessionSuspensionController.suspensionAcquireTask.didset(v26);
  }
}

uint64_t closure #1 in SessionSuspensionController.acquireAssertionIfNecessary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in SessionSuspensionController.acquireAssertionIfNecessary(), a4, 0);
}

uint64_t closure #1 in SessionSuspensionController.acquireAssertionIfNecessary()()
{
  v23 = v0;
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = *(v0[8] + 120);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v21 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = closure #1 in SessionSuspensionController.acquireAssertionIfNecessary();

    return v21(ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors();
    v9 = swift_allocError();
    swift_willThrow();
    if (one-time initialization token for suspensionController != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.suspensionController);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v0[5] = v9;
      v16 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1AEB26000, v12, v13, "Failed to grab assertion, reason: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1B27120C0](v15, -1, -1);
      MEMORY[0x1B27120C0](v14, -1, -1);
    }

    swift_willThrow();
    v20 = v0[1];

    return v20();
  }
}

{
  v29 = v0;
  v1 = *(v0 + 96);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 72);

    swift_unknownObjectRelease();
    if (one-time initialization token for suspensionController != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.suspensionController);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28[0] = v9;
      *v8 = 136315138;
      *(v0 + 40) = v1;
      v10 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v28);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1AEB26000, v6, v7, "Failed to grab assertion, reason: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B27120C0](v9, -1, -1);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    swift_willThrow();
    v14 = *(v0 + 8);
  }

  else
  {
    if (one-time initialization token for suspensionController != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 88);
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.suspensionController);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 88);
      v20 = *(v0 + 72);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      *(v0 + 48) = v19;
      type metadata accessor for AnyCancellable();

      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1AEB26000, v17, v18, "New assertion: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1B27120C0](v22, -1, -1);
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    else
    {
      v26 = *(v0 + 72);
    }

    swift_unknownObjectRelease();
    **(v0 + 56) = *(v0 + 88);
    v14 = *(v0 + 8);
  }

  return v14();
}

{
  v16 = v0;
  v1 = v0[9];
  swift_unknownObjectRelease();
  v2 = v0[12];
  if (one-time initialization token for suspensionController != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.suspensionController);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v0[5] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Failed to grab assertion, reason: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t closure #1 in SessionSuspensionController.acquireAssertionIfNecessary()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v7 = *(v3 + 64);
  if (v1)
  {
    v8 = closure #1 in SessionSuspensionController.acquireAssertionIfNecessary();
  }

  else
  {
    v8 = closure #1 in SessionSuspensionController.acquireAssertionIfNecessary();
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

Swift::Void __swiftcall SessionSuspensionController.releaseAssertionIfNecessary()()
{
  v1 = v0;
  if (one-time initialization token for suspensionController != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.suspensionController);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    if (*(v1 + 176))
    {
      v15 = *(v1 + 176);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy7Combine14AnyCancellableCs5Error_pGMd, &_sScTy7Combine14AnyCancellableCs5Error_pGMR);
      v7 = String.init<A>(reflecting:)();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
      v7 = 7104878;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Received request to release assertion: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  swift_beginAccess();
  v11 = *(v1 + 176);
  if (v11)
  {
    v12 = type metadata accessor for AnyCancellable();

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B2710400](v11, v12, v13, MEMORY[0x1E69E7288]);

    v14 = *(v1 + 176);
  }

  else
  {
    v14 = 0;
  }

  *(v1 + 176) = 0;
  SessionSuspensionController.suspensionAcquireTask.didset(v14);
}

uint64_t protocol witness for SessionSuspensionControllerProtocol.init(processIdentifier:suspensionTarget:) in conformance SessionSuspensionController@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C75F8]) init];
  type metadata accessor for SessionSuspensionController();
  v9 = swift_allocObject();
  result = specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, a2, a3, v8, v9);
  *a4 = result;
  return result;
}

uint64_t RBSProcessMonitor.listenForUpdates(pid:)(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore25ProcessMonitorStateUpdateV__GMd, &_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore25ProcessMonitorStateUpdateV__GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMR);
  v8 = swift_allocBox();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMR);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v18 = v10;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8650], v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v8;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #2 in RBSProcessMonitor.listenForUpdates(pid:);
  *(v13 + 24) = v12;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RBSProcessMonitorConfiguring) -> ();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitorConfiguring) -> ();
  aBlock[3] = &block_descriptor_47;
  v14 = _Block_copy(aBlock);

  [v1 updateConfiguration_];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in RBSProcessMonitor.listenForUpdates(pid:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of AsyncStream<ProcessMonitorStateUpdate>.Continuation?(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMR);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void closure #2 in RBSProcessMonitor.listenForUpdates(pid:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() identifierWithPid_];
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AEE07B40;
    *(inited + 32) = v6;
    v8 = v6;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20RBSProcessIdentifierC_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    v9 = *(inited + 16);
    swift_arrayDestroy();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSProcessIdentifier, 0x1E69C75E0);
    lazy protocol witness table accessor for type RBSProcessIdentifier and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() predicateMatchingIdentifiers_];

    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AEE07B40;
    *(v12 + 32) = v11;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSProcessPredicate, 0x1E69C7610);
    v13 = v11;
    v14 = Array._bridgeToObjectiveC()().super.isa;

    [a1 setPredicates_];

    aBlock[4] = partial apply for closure #1 in closure #2 in RBSProcessMonitor.listenForUpdates(pid:);
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessMonitor, @guaranteed RBSProcessHandle, @guaranteed RBSProcessStateUpdate) -> ();
    aBlock[3] = &block_descriptor_28_0;
    v15 = _Block_copy(aBlock);

    [a1 setUpdateHandler_];
    _Block_release(v15);
    v16 = [objc_allocWithZone(MEMORY[0x1E69C7630]) init];
    [v16 setValues_];
    [a1 setStateDescriptor_];
  }
}

uint64_t closure #1 in closure #2 in RBSProcessMonitor.listenForUpdates(pid:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14CopresenceCore25ProcessMonitorStateUpdateV__GMd, &_sScS12ContinuationV11YieldResultOy14CopresenceCore25ProcessMonitorStateUpdateV__GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-v11];
  v13 = swift_projectBox();
  swift_beginAccess();
  outlined init with copy of AsyncStream<ProcessMonitorStateUpdate>.Continuation?(v13, v7);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GMR);
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v7, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17[7] = specialized ProcessMonitorStateUpdate.init(_:)(a3) & 1;
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v12, v8);
    return (*(v15 + 8))(v7, v14);
  }

  return result;
}

uint64_t specialized SessionSuspensionController.__allocating_init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(v12 + 32))(&v24 - v17, v19, v20);
  type metadata accessor for SessionSuspensionController();
  v21 = swift_allocObject();
  (*(v12 + 16))(v16, v18, a6);
  v22 = specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, a2, a3, v16, v21, a6, a7);
  (*(v12 + 8))(v18, a6);
  return v22;
}

uint64_t specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v31 - v11;
  v32 = &v31 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR);
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v33);
  v16 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - v17;
  v36[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for RBSProcessMonitor, 0x1E69C75F8);
  v36[4] = &protocol witness table for RBSProcessMonitor;
  v36[0] = a4;
  swift_defaultActor_initialize();
  *(a5 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 176) = 0;
  *(a5 + 184) = MEMORY[0x1E69E7CD0];
  *(a5 + 128) = a1;
  swift_beginAccess();
  *(a5 + 120) = a3;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v36, a5 + 136);
  v20 = *(a5 + 160);
  v19 = *(a5 + 168);
  __swift_project_boxed_opaque_existential_1((a5 + 136), v20);
  (*(v19 + 8))(a1, v20, v19);
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = v33;
  (*(v13 + 16))(v16, v18, v33);
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v13 + 32))(v25 + v24, v16, v23);
  *(v25 + ((v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v32, &closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)partial apply, v25);
  v26 = type metadata accessor for AnyCancellable();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  v29 = AnyCancellable.init(_:)();
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v35, v29);
  swift_endAccess();
  swift_unknownObjectRelease();

  (*(v13 + 8))(v18, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);

  return a5;
}

uint64_t specialized SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a3;
  v43 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v41 = &v38 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR);
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v42);
  v18 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - v19;
  v45[3] = a6;
  v45[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  swift_defaultActor_initialize();
  *(a5 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 176) = 0;
  *(a5 + 184) = MEMORY[0x1E69E7CD0];
  *(a5 + 128) = a1;
  swift_beginAccess();
  *(a5 + 120) = v39;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v45, a5 + 136);
  v22 = *(a5 + 160);
  v23 = *(a5 + 168);
  __swift_project_boxed_opaque_existential_1((a5 + 136), v22);
  v24 = *(v23 + 8);
  v25 = v20;
  v40 = v20;
  v24(a1, v22, v23);
  v26 = type metadata accessor for TaskPriority();
  v27 = v41;
  (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v25;
  v30 = v42;
  (*(v15 + 16))(v18, v29, v42);
  v31 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v15 + 32))(v32 + v31, v18, v30);
  *(v32 + ((v16 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v27, &async function pointer to partial apply for closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:), v32);
  v33 = type metadata accessor for AnyCancellable();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();

  v36 = AnyCancellable.init(_:)();
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v44, v36);
  swift_endAccess();
  swift_unknownObjectRelease();

  (*(v15 + 8))(v40, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);

  return a5;
}

unint64_t lazy protocol witness table accessor for type SessionSuspensionController and conformance SessionSuspensionController()
{
  result = lazy protocol witness table cache variable for type SessionSuspensionController and conformance SessionSuspensionController;
  if (!lazy protocol witness table cache variable for type SessionSuspensionController and conformance SessionSuspensionController)
  {
    type metadata accessor for SessionSuspensionController();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionSuspensionController and conformance SessionSuspensionController);
  }

  return result;
}

uint64_t partial apply for closure #1 in SessionSuspensionController.acquireAssertionIfNecessary()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in SessionSuspensionController.acquireAssertionIfNecessary()(a1, v4, v5, v6);
}

uint64_t specialized ProcessMonitorStateUpdate.init(_:)(void *a1)
{
  v2 = [a1 state];
  if (v2)
  {
    v3 = v2;
    if ([v2 taskState] == 4)
    {

      return 1;
    }

    v5 = [v3 taskState];

    if (v5 == 2)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors()
{
  result = lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors;
  if (!lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors;
  if (!lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionSuspensionController.Errors and conformance SessionSuspensionController.Errors);
  }

  return result;
}

uint64_t dispatch thunk of SessionSuspensionControllerTarget.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of ConversationManagerClientProtocol.createActivitySession(with:onConversationWithUUID:);

  return v9(a1, a2);
}

unint64_t lazy protocol witness table accessor for type RBSProcessIdentifier and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type RBSProcessIdentifier and conformance NSObject;
  if (!lazy protocol witness table cache variable for type RBSProcessIdentifier and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for RBSProcessIdentifier, 0x1E69C75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSProcessIdentifier and conformance NSObject);
  }

  return result;
}

uint64_t outlined init with copy of AsyncStream<ProcessMonitorStateUpdate>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AsyncStream<ProcessMonitorStateUpdate>.Continuation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMd, &_sScS12ContinuationVy14CopresenceCore25ProcessMonitorStateUpdateV_GSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_35Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)partial apply(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMd, &_sScSy14CopresenceCore25ProcessMonitorStateUpdateVGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in SessionSuspensionController.init(processIdentifier:suspensionTarget:processMonitor:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t OnceToken.called.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

void OnceToken.execute(callback:)(void (*a1)(void))
{
  v3 = v1[2];
  os_unfair_lock_lock(*(v3 + 16));
  if (((*(*v1 + 96))() & 1) == 0)
  {
    a1();
    (*(*v1 + 104))(1);
  }

  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t OnceToken.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t OnceToken.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t OnceToken.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for Lock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t OnceToken.init()()
{
  type metadata accessor for Lock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return v0;
}

uint64_t _s14CopresenceCore24SharableObjectIdentifierV10identifier6ofType4withxxm_SStAA21SecureHashTruncatableRzlFZ10Foundation4UUIDV_Tt0t2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[0] = a3;
  v5 = type metadata accessor for SHA256Digest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - v11;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SharableObjectIdentifier();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  v26[2] = a1;
  v26[3] = a2;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v22 = StringProtocol.data(using:allowLossyConversion:)();
  v24 = v23;
  result = (*(v14 + 8))(v17, v13);
  if (v24 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    outlined copy of Data._Representation(v22, v24);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v22, v24);
    outlined consume of Data?(v22, v24);
    outlined consume of Data?(v22, v24);
    SHA256.finalize()();
    (*(v6 + 16))(v10, v12, v5);
    UUID.init(digest:)(v10);
    (*(v6 + 8))(v12, v5);
    return outlined destroy of SharableObjectIdentifier(v21);
  }

  return result;
}

uint64_t static StaticActivityLoader.activitySessions(for:)()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1 = specialized Sequence.flatMap<A>(_:)(v0, _s14CopresenceCore20StaticActivityLoaderO16activitySessions3forSaySo014TUConversationD7SessionCG10Foundation4UUIDV_tFZAHSS_ShySSGtXEfU_TA_0);

  return v1;
}

uint64_t closure #1 in static StaticActivityLoader.activitySessions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a4;
  v5[3] = a1;
  v5[4] = a2;
  return specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in closure #1 in static StaticActivityLoader.activitySessions(for:), v5, a3);
}

void closure #1 in closure #1 in static StaticActivityLoader.activitySessions(for:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v108 = a3;
  v109 = a4;
  v113 = a5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v107 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v96 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v112 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v111 = &v96 - v24;
  v25 = *a1;
  v26 = a1[1];

  specialized tryLog<A>(_:_:function:line:)(&v114);
  if (v115 >> 60 == 15)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.default);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v114 = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v114);
      _os_log_impl(&dword_1AEB26000, v28, v29, "Failed to create data for static activity session with identifier=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1B27120C0](v31, -1, -1);
      MEMORY[0x1B27120C0](v30, -1, -1);
    }

LABEL_7:
    v32 = 0;
    goto LABEL_21;
  }

  v101 = v8;
  v102 = v7;
  v103 = v114;
  v104 = v115;
  v33 = objc_opt_self();
  v34 = MEMORY[0x1B270FF70](v25, v26);
  v35 = v25;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v37 = [v33 tu:v34 UUIDv5ForString:isa namespaceUUID:?];

  v105 = v35;
  if (!v37)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Log.default);
    (*(v17 + 16))(v21, a2, v16);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = v26;
      v64 = v17;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v114 = v66;
      *v65 = 136315394;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v63, &v114);
      *(v65 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v16;
      v70 = v69;
      (*(v64 + 8))(v21, v68);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v70, &v114);

      *(v65 + 14) = v71;
      _os_log_impl(&dword_1AEB26000, v61, v62, "Failed to generate UUID for static activity session with identifier=%s, groupUUID=%s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v66, -1, -1);
      MEMORY[0x1B27120C0](v65, -1, -1);
      outlined consume of Data?(v103, v104);
    }

    else
    {
      outlined consume of Data?(v103, v104);

      (*(v17 + 8))(v21, v16);
    }

    goto LABEL_7;
  }

  v99 = v17;
  v100 = v16;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v98 = v26;
  _s14CopresenceCore24SharableObjectIdentifierV10identifier6ofType4withxxm_SStAA21SecureHashTruncatableRzlFZ10Foundation4UUIDV_Tt0t2g5(v35, v26, v112);
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v38 = static GroupActivityDescription.generic;
  v40 = *(&xmmword_1EB5F5F00 + 1);
  v39 = xmmword_1EB5F5F00;
  v41 = xmmword_1EB5F5F10;
  v42 = xmmword_1EB5F5F20;
  v43 = objc_allocWithZone(MEMORY[0x1E69D8B30]);
  v44 = MEMORY[0x1B270FF70](v38, *(&v38 + 1));
  v45 = MEMORY[0x1B270FF70](v39, v40);
  v46 = MEMORY[0x1B270FF70](v41, *(&v41 + 1));
  v47 = MEMORY[0x1B270FF70](v42, *(&v42 + 1));
  v97 = [v43 initWithContextIdentifier:v44 actionDescription:v45 ongoingDescription:v46 completedDescription:v47];

  v48 = type metadata accessor for URL();
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v51 = v106;
  v50(v106, 1, 1, v48);
  v52 = v107;
  v50(v107, 1, 1, v48);
  v53 = [objc_allocWithZone(MEMORY[0x1E69D8B50]) initWithTargetContentIdentifier:0 shouldAssociateScene:0 preferredSceneSessionRole:0];
  v54 = *(v49 + 48);
  v56 = 0;
  if (v54(v51, 1, v48) != 1)
  {
    URL._bridgeToObjectiveC()(v55);
    v56 = v57;
    (*(v49 + 8))(v51, v48);
  }

  if (v54(v52, 1, v48) == 1)
  {
    v59 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v58);
    v59 = v72;
    (*(v49 + 8))(v52, v48);
  }

  v73 = v105;
  v74 = objc_allocWithZone(MEMORY[0x1E69D8B48]);
  LOBYTE(v95) = 0;
  v75 = v97;
  v76 = [v74 initWithContext:v97 linkMetadata:0 fallbackURL:v56 invitationURL:v59 supportsContinuationOnTV:0 title:0 subTitle:0 imageData:0 preferredBroadcastingAttributes:0 sceneAssociationBehavior:v53 supportsActivityPreviews:v95 lifetimePolicy:2];

  v77 = objc_allocWithZone(MEMORY[0x1E69D8B28]);
  v78 = v76;
  v79 = v103;
  v80 = v104;
  outlined copy of Data?(v103, v104);
  v81 = MEMORY[0x1B270FF70](v108, v109);
  v82 = Data._bridgeToObjectiveC()().super.isa;
  v83 = UUID._bridgeToObjectiveC()().super.isa;
  v84 = v98;
  v85 = MEMORY[0x1B270FF70](v73, v98);
  v107 = v78;
  v86 = [v77 initWithBundleIdentifier:v81 metadata:v78 applicationContext:v82 uuid:v83 activityIdentifier:v85];

  outlined consume of Data?(v79, v80);
  [v86 setSystemActivity_];
  v87 = MEMORY[0x1B270FF70](v105, v84);
  [v86 setStaticIdentifier_];

  v88 = v110;
  Date.init()();
  v89 = objc_allocWithZone(MEMORY[0x1E69D8B58]);
  v90 = v111;
  v91 = UUID._bridgeToObjectiveC()().super.isa;
  v92 = Date._bridgeToObjectiveC()().super.isa;
  v32 = [v89 initWithActivity:v86 uuid:v91 locallyInitiated:1 timestamp:v92 isFirstJoin:1];

  outlined consume of Data?(v79, v80);
  (*(v101 + 8))(v88, v102);
  v93 = v100;
  v94 = *(v99 + 8);
  v94(v112, v100);
  v94(v90, v93);
LABEL_21:
  *v113 = v32;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance StaticActivityLoader.StaticActivityPlaceholder@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14CopresenceCore20StaticActivityLoaderO0fG11Placeholder33_5C4F793782CBA13CE750D9974C6523A1LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy14CopresenceCore20StaticActivityLoaderO0fG11Placeholder33_5C4F793782CBA13CE750D9974C6523A1LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance StaticActivityLoader.StaticActivityPlaceholder(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14CopresenceCore20StaticActivityLoaderO0fG11Placeholder33_5C4F793782CBA13CE750D9974C6523A1LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy14CopresenceCore20StaticActivityLoaderO0fG11Placeholder33_5C4F793782CBA13CE750D9974C6523A1LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t _s14CopresenceCore20StaticActivityLoaderO16activitySessions3forSaySo014TUConversationD7SessionCG10Foundation4UUIDV_tFZAHSS_ShySSGtXEfU_TA_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *(v3 + 16);
  v5[3] = a1;
  v5[4] = a2;
  return specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in closure #1 in static StaticActivityLoader.activitySessions(for:), v5, a3);
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v40 = v6;
  v41 = result;
  v38 = v2;
  while (v5)
  {
LABEL_10:
    v11 = v5;
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(result + 56) + 8 * v12);

    v17 = a2(v15, v14, v16);

    v18 = v17 >> 62;
    v46 = v17;
    if (v17 >> 62)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v9 >> 62;
    v21 = v11;
    if (v9 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v46;
    v44 = v19;
    v23 = __OFADD__(result, v19);
    v24 = result + v19;
    if (v23)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v20)
      {
LABEL_22:
        __CocoaSet.count.getter();
      }

      else
      {
        v25 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v26 = *(v25 + 16);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v43 = result;
      v25 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v20)
    {
      goto LABEL_22;
    }

    v25 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v24 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v43 = v9;
LABEL_24:
    v27 = *(v25 + 16);
    v28 = *(v25 + 24);
    if (v18)
    {
      v30 = v25;
      result = __CocoaSet.count.getter();
      v25 = v30;
      v29 = result;
    }

    else
    {
      v29 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = (v21 - 1) & v21;
    if (v29)
    {
      if (((v28 >> 1) - v27) < v44)
      {
        goto LABEL_43;
      }

      v31 = v25 + 8 * v27 + 32;
      v39 = v25;
      if (v18)
      {
        if (v29 < 1)
        {
          goto LABEL_45;
        }

        lazy protocol witness table accessor for type [TUConversationActivitySession] and conformance [A]();
        for (i = 0; i != v29; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo29TUConversationActivitySessionCGMd, &_sSaySo29TUConversationActivitySessionCGMR);
          v33 = specialized protocol witness for Collection.subscript.read in conformance [A](v45, i, v22);
          v35 = *v34;
          (v33)(v45, 0);
          v22 = v46;
          *(v31 + 8 * i) = v35;
        }
      }

      else
      {
        type metadata accessor for TUConversationActivitySession();
        swift_arrayInitWithCopy();
      }

      v9 = v43;
      v6 = v40;
      result = v41;
      v2 = v38;
      if (v44 >= 1)
      {
        v36 = *(v39 + 16);
        v23 = __OFADD__(v36, v44);
        v37 = v36 + v44;
        if (v23)
        {
          goto LABEL_44;
        }

        *(v39 + 16) = v37;
      }
    }

    else
    {

      v9 = v43;
      v6 = v40;
      result = v41;
      if (v44 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

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
  return result;
}

unint64_t type metadata accessor for TUConversationActivitySession()
{
  result = lazy cache variable for type metadata for TUConversationActivitySession;
  if (!lazy cache variable for type metadata for TUConversationActivitySession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationActivitySession);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [TUConversationActivitySession] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TUConversationActivitySession] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TUConversationActivitySession] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo29TUConversationActivitySessionCGMd, &_sSaySo29TUConversationActivitySessionCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TUConversationActivitySession] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder.CodingKeys and conformance StaticActivityLoader.StaticActivityPlaceholder.CodingKeys);
  }

  return result;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t one-time initialization function for sharePlay()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.sharePlay);
  __swift_project_value_buffer(v0, static ImageResource.sharePlay);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return MEMORY[0x1B270EC50](0x616C506572616853, 0xE900000000000079, resourceBundle.super.isa);
}

uint64_t ImageResource.sharePlay.unsafeMutableAddressor()
{
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();

  return __swift_project_value_buffer(v0, static ImageResource.sharePlay);
}

uint64_t static ImageResource.sharePlay.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ImageResource();
  v3 = __swift_project_value_buffer(v2, static ImageResource.sharePlay);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x1EEDC3280](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularBytesField(value:)()
{
  return MEMORY[0x1EEE157A8]();
}

{
  return MEMORY[0x1EEE157B0]();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return MEMORY[0x1EEE15838]();
}

{
  return MEMORY[0x1EEE15848]();
}

uint64_t + infix(_:_:)()
{
  return MEMORY[0x1EEE6C938]();
}

{
  return MEMORY[0x1EEE6C940]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x1EEE68DA0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6AD38]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE70]();
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)()
{
  return MEMORY[0x1EEE6B098]();
}

{
  return MEMORY[0x1EEE6B0A0]();
}

{
  return MEMORY[0x1EEE6B0A8]();
}

{
  return MEMORY[0x1EEE6B0B0]();
}

{
  return MEMORY[0x1EEE6B0B8]();
}

{
  return MEMORY[0x1EEE6B0C0]();
}

{
  return MEMORY[0x1EEE6B0C8]();
}

{
  return MEMORY[0x1EEE6B0D0]();
}

{
  return MEMORY[0x1EEE6B0D8]();
}

{
  return MEMORY[0x1EEE6B0E0]();
}

{
  return MEMORY[0x1EEE6B0E8]();
}

{
  return MEMORY[0x1EEE6B0F0]();
}

{
  return MEMORY[0x1EEE6B0F8]();
}

{
  return MEMORY[0x1EEE6B100]();
}

{
  return MEMORY[0x1EEE6B108]();
}

{
  return MEMORY[0x1EEE6B110]();
}

{
  return MEMORY[0x1EEE6B118]();
}

uint64_t UnkeyedEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B120]();
}

{
  return MEMORY[0x1EEE6B128]();
}

uint64_t SingleValueEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B308]();
}

{
  return MEMORY[0x1EEE6B310]();
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6B3E0]();
}

{
  return MEMORY[0x1EEE6B3E8]();
}