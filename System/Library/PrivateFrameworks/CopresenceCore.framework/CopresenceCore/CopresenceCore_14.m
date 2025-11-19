uint64_t closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, int a9)
{
  v131 = a8;
  v130 = a7;
  v148 = a6;
  v141 = a5;
  v151 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v142 = &v130 - v14;
  v140 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v139 = *(v140 - 8);
  v15 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for OS_dispatch_queue.Attributes();
  v17 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v135 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v147 = v22;
  v149 = *(v22 - 8);
  v23 = v149;
  v24 = *(v149 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v134 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v130 - v27;
  v146 = &v130 - v27;
  v145 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))(a2, *(a1 + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue));
  v29 = *(a2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest);
  v30 = *(a2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles);
  v31 = objc_allocWithZone(MEMORY[0x1E69D8B28]);
  v32 = MEMORY[0x1B270FF70](a3, v151);
  v33 = [v31 initWithCreationRequest:v29 bundleIdentifier:v32 systemActivity:0 requiresParticipantTranslation:v30];

  v34 = *(v23 + 16);
  v150 = OBJC_IVAR___CPBackgroundSessionCreationRequest_id;
  v34(v28, a2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_id, v22);
  v151 = a2;
  v35 = *(a2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember + 8);
  v132 = *(a2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember);
  v144 = v35;
  outlined init with copy of UserNotificationCenter(v148, v157);
  v36 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xF0);
  v37 = v33;

  v36(v156, v38);
  v39 = [objc_allocWithZone(CPSharedConversationServerBag) init];
  v133 = [objc_allocWithZone(CPFeatureFlags) init];
  v40 = type metadata accessor for BackgroundSession(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v148 = v40;
  v43 = swift_allocObject();
  swift_defaultActor_initialize();
  v44 = (v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter);
  v44[3] = &type metadata for FastSyncAnalyticsReporter;
  v44[4] = &protocol witness table for FastSyncAnalyticsReporter;
  *v44 = 0;
  v45 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter;
  type metadata accessor for ABCReporter();
  v46 = swift_allocObject();
  v46[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v46[3] = 0x636E795374736146;
  v46[4] = 0xE800000000000000;
  v46[5] = 0x6E6F6973736553;
  *(v43 + v45) = v46;
  v46[6] = 0xE700000000000000;
  v47 = v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v48 = v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0;
  v49 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v155 = 0xC000000000000000;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMR);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  *(v43 + v49) = CurrentValueSubject.init(_:)();
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session) = 0;
  v53 = MEMORY[0x1E69E7CD0];
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions) = MEMORY[0x1E69E7CD0];
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_cancellables) = v53;
  v54 = v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v54 + 32) = 0;
  v55 = v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  *(v55 + 32) = 0;
  v56 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_applicationLauncher;
  *(v43 + v56) = [objc_allocWithZone(CPApplicationLauncher) initWithSpatialApplicationManager_];
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sceneObservationManager) = 0;
  v57 = v147;
  v34((v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id), v146, v147);
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) = v37;
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members) = v141;
  v58 = (v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember);
  v59 = v144;
  *v58 = v132;
  v58[1] = v59;
  outlined init with copy of UserNotificationCenter(v157, v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_service);
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag) = v39;
  swift_beginAccess();
  *(v47 + 8) = &protocol witness table for BackgroundSessionManager;
  v143 = a1;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v132 = v39;
  v60 = v37;

  outlined assign with copy of IDSGroupSessionProviderProtocol?(v156, v54);
  swift_endAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v153 = 0;
  v154 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v153 = 0xD000000000000012;
  v154 = 0x80000001AEE342B0;
  v144 = v60;
  v61 = [v60 UUID];
  v62 = v134;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v63 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v63);

  v64 = *(v149 + 8);
  v149 += 8;
  v134 = v64;
  (v64)(v62, v57);
  static DispatchQoS.unspecified.getter();
  v153 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v139 + 104))(v138, *MEMORY[0x1E69E8090], v140);
  v65 = v145;
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v66 = v133;
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) = v133;
  *(v43 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) = v65;

  v67 = v66;
  if ([v67 fastSyncPresenceSeparationEnabled])
  {
  }

  else
  {
    v68 = *(*v65 + 112);

    v68(v69);
    v70 = type metadata accessor for TaskPriority();
    v71 = v142;
    (*(*(v70 - 8) + 56))(v142, 1, 1, v70);
    v72 = swift_allocObject();
    swift_weakInit();
    v73 = swift_allocObject();
    v73[2] = 0;
    v73[3] = 0;
    v73[4] = v65;
    v73[5] = v72;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v71, &async function pointer to partial apply for closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:), v73);
    v74 = type metadata accessor for AnyCancellable();
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    swift_allocObject();

    AnyCancellable.init(_:)();
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  outlined destroy of NSObject?(v156, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v157);
  v77 = (v134)(v146, v147);
  v78 = (*((*MEMORY[0x1E69E7D40] & *v143) + 0xC0))(v77);
  v79 = v78;
  if ((v78 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession);
    Set.Iterator.init(_cocoa:)();
    v81 = v157[0];
    v80 = v157[1];
    v82 = v157[2];
    v83 = v157[3];
    v84 = v157[4];
  }

  else
  {
    v85 = -1 << *(v78 + 32);
    v80 = v78 + 56;
    v82 = ~v85;
    v86 = -v85;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    else
    {
      v87 = -1;
    }

    v84 = v87 & *(v78 + 56);

    v83 = 0;
    v81 = v79;
  }

  LODWORD(v147) = a9;
  v149 = v82;
  v88 = (v82 + 64) >> 6;
  if (v81 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v89 = v83;
  v90 = v84;
  v91 = v83;
  if (!v84)
  {
    while (1)
    {
      v91 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        break;
      }

      if (v91 >= v88)
      {
        goto LABEL_22;
      }

      v90 = *(v80 + 8 * v91);
      ++v89;
      if (v90)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_25;
  }

LABEL_15:
  v92 = (v90 - 1) & v90;
  v82 = *(*(v81 + 48) + ((v91 << 9) | (8 * __clz(__rbit64(v90)))));

  if (!v82)
  {
LABEL_22:
    outlined consume of Set<String>.Iterator._Variant();

LABEL_23:
    v94 = v143;
    v95 = *((*MEMORY[0x1E69E7D40] & *v143) + 0xD0);

    v96 = v95(v156);
    specialized Set._Variant.insert(_:)(&v152, v43);

    v96(v156, 0);
    v97 = type metadata accessor for TaskPriority();
    v98 = v142;
    (*(*(v97 - 8) + 56))(v142, 1, 1, v97);
    v99 = swift_allocObject();
    *(v99 + 16) = 0;
    *(v99 + 24) = 0;
    *(v99 + 32) = v43;
    *(v99 + 40) = v94;
    *(v99 + 48) = v147;
    v100 = v130;
    *(v99 + 56) = v144;
    *(v99 + 64) = v100;
    *(v99 + 72) = v131;

    v101 = v94;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v98, &async function pointer to partial apply for closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), v99);
  }

  while ((static UUID.== infix(_:_:)() & 1) == 0)
  {

    v83 = v91;
    v84 = v92;
    if ((v81 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v93 = __CocoaSet.Iterator.next()();
    if (v93)
    {
      v153 = v93;
      swift_dynamicCast();
      v82 = v156[0];
      v91 = v83;
      v92 = v84;
      if (v156[0])
      {
        continue;
      }
    }

    goto LABEL_22;
  }

  outlined consume of Set<String>.Iterator._Variant();

  if (one-time initialization token for service != -1)
  {
    goto LABEL_36;
  }

LABEL_25:
  v103 = type metadata accessor for Logger();
  __swift_project_value_buffer(v103, static Log.service);

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v156[0] = v107;
    *v106 = 136315138;
    v153 = v82;

    v108 = String.init<A>(reflecting:)();
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v156);

    *(v106 + 4) = v110;
    _os_log_impl(&dword_1AEB26000, v104, v105, "Found existing session: %s", v106, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    MEMORY[0x1B27120C0](v107, -1, -1);
    MEMORY[0x1B27120C0](v106, -1, -1);
  }

  v111 = v142;
  v112 = dispatch_semaphore_create(0);
  v113 = swift_allocObject();
  *(v113 + 16) = 0xF000000000000007;
  v114 = type metadata accessor for TaskPriority();
  (*(*(v114 - 8) + 56))(v111, 1, 1, v114);
  v115 = swift_allocObject();
  v115[2] = 0;
  v115[3] = 0;
  v115[4] = v112;
  v115[5] = partial apply for closure #2 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
  v115[6] = v113;
  v115[7] = v82;

  swift_retain_n();
  v116 = v112;
  v117 = v111;
  v118 = v116;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v117, &async function pointer to partial apply for closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), v115);

  OS_dispatch_semaphore.wait()();
  result = swift_beginAccess();
  v119 = *(v113 + 16);
  if ((~v119 & 0xF000000000000007) != 0)
  {
    if ((v119 >> 62) >= 2 && (v119 >> 62 == 2 || __ROR8__(v119 + 0x4000000000000000, 3) >= 5uLL))
    {
      outlined copy of BackgroundSession.State?(v119);
      outlined copy of BackgroundSession.State(v119);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.default.getter();
      outlined consume of BackgroundSession.State?(v119);
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v152 = v119;
        v156[0] = v151;
        *v124 = 136315138;
        outlined copy of BackgroundSession.State(v119);
        v125 = String.init<A>(reflecting:)();
        v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, v156);

        *(v124 + 4) = v127;
        _os_log_impl(&dword_1AEB26000, v122, v123, "Found session is in the %s state. Forcefully removing.", v124, 0xCu);
        v128 = v151;
        __swift_destroy_boxed_opaque_existential_1Tm(v151);
        MEMORY[0x1B27120C0](v128, -1, -1);
        MEMORY[0x1B27120C0](v124, -1, -1);
      }

      v129 = (*((*MEMORY[0x1E69E7D40] & *v143) + 0xD0))(v156);
      specialized Set._Variant.remove(_:)(v82);

      v129(v156, 0);

      outlined consume of BackgroundSession.State?(v119);

      goto LABEL_23;
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v120 = swift_allocError();
    *v121 = 4;
    outlined copy of BackgroundSession.State(v119);
    v130(v120);

    outlined consume of BackgroundSession.State?(v119);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t closure #2 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  outlined consume of BackgroundSession.State?(v4);
  return outlined copy of BackgroundSession.State(a1);
}

uint64_t closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x1EEE6DFA0](closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), a7, 0);
}

uint64_t closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)()
{
  v1 = *(v0[6] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

  CurrentValueSubject.value.getter();

  v0[7] = v0[2];

  return MEMORY[0x1EEE6DFA0](closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  (*(v0 + 32))(v1);
  outlined consume of BackgroundSession.State(v1);
  OS_dispatch_semaphore.signal()();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = a8;
  *(v8 + 280) = v10;
  *(v8 + 256) = a5;
  *(v8 + 264) = a7;
  *(v8 + 304) = a6;
  *(v8 + 248) = a4;
  return MEMORY[0x1EEE6DFA0](closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), 0, 0);
}

uint64_t closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256) + OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionSuspensionControllerProvider;
  v3 = *(v2 + 8);
  (*v2)(*(v0 + 304), v1, &protocol witness table for BackgroundSession);

  return MEMORY[0x1EEE6DFA0](closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:), v1, 0);
}

{
  v1 = *(v0 + 248);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v2, v0 + 104, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  v3 = *(v0 + 128);
  result = outlined destroy of NSObject?(v0 + 104, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    outlined init with take of ContiguousBytes((v0 + 64), v0 + 144);
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(v0 + 144, v1 + v2, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
    swift_endAccess();
    v5 = swift_task_alloc();
    *(v0 + 288) = v5;
    *v5 = v0;
    v5[1] = closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
    v6 = *(v0 + 248);

    return BackgroundSession.join()();
  }

  return result;
}

{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
  }

  else
  {
    v3 = closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v17 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 264);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v0 + 240) = v6;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
    v9 = v6;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Activity successfully begun: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v13 = *(v0 + 280);
  (*(v0 + 272))(0);
  v14 = *(v0 + 8);

  return v14();
}

{
  v28 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[37];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v0[29] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v27);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Activity failed to begin: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v13 = v0[31];
  v14 = v0[32];
  v15 = *&v14[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:);
  *(v17 + 24) = v16;
  v0[6] = _sIg_Ieg_TRTA_0;
  v0[7] = v17;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_128;
  v18 = _Block_copy(v0 + 2);
  v19 = v0[7];
  v20 = v14;

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v22 = v0[37];
    v24 = v0[34];
    v23 = v0[35];
    v25 = v22;
    v24(v22);

    v26 = v0[1];

    return v26();
  }

  return result;
}

uint64_t closure #1 in closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(void *a1, uint64_t a2)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xD0))(v5);
  specialized Set._Variant.remove(_:)(a2);

  return v3(v5, 0);
}

uint64_t BackgroundSessionManager.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v57 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v66 = &v51 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v51 - v22;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.service);
  v25 = *(v17 + 16);
  v56 = a1;
  v25(v23, a1, v16);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v54 = v27;
    v28 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock[0] = v52;
    v53 = v28;
    *v28 = 136315138;
    v25(v15, v23, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v15, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v17 + 48))(v13, 1, v16) == 1)
    {
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    else
    {
      v31 = *(v17 + 32);
      v51 = v25;
      v32 = v66;
      v31(v66, v13, v16);
      v51(v55, v32, v16);
      v30 = String.init<A>(reflecting:)();
      v29 = v33;
      v34 = v32;
      v25 = v51;
      (*(v17 + 8))(v34, v16);
    }

    outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v17 + 8))(v23, v16);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, aBlock);

    v36 = v53;
    *(v53 + 1) = v35;
    _os_log_impl(&dword_1AEB26000, v26, v54, "Request to leave identifier: %s", v36, 0xCu);
    v37 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v36, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v23, v16);
  }

  v38 = v58;
  v39 = *&v58[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v40 = v66;
  v25(v66, v56, v16);
  v41 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  (*(v17 + 32))(v42 + v41, v40, v16);
  v43 = (v42 + ((v18 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
  v44 = v59;
  *v43 = v57;
  v43[1] = v44;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.leave(identifier:completion:);
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_18_1;
  v45 = _Block_copy(aBlock);
  v46 = v38;

  v47 = v60;
  static DispatchQoS.unspecified.getter();
  v67 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v48 = v62;
  v49 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v47, v48, v45);
  _Block_release(v45);
  (*(v64 + 8))(v48, v49);
  (*(v61 + 8))(v47, v63);
}

void closure #1 in BackgroundSessionManager.leave(identifier:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v34 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))(v15);
  v36 = a2;
  v19 = specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in BackgroundSessionManager.leave(identifier:completion:), v35, v18);

  if (v19)
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = a3;
    v21[6] = a4;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:), v21);

    v22 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xD0))(v37);
    specialized Set._Variant.remove(_:)(v19);

    v22(v37, 0);
  }

  else
  {
    v34[1] = a4;
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.service);
    (*(v13 + 16))(v17, a2, v12);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37[0] = v27;
      *v26 = 136315138;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v13 + 8))(v17, v12);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1AEB26000, v24, v25, "Couldn't find session with identifier: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v17, v12);
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v32 = swift_allocError();
    *v33 = 5;
    a3();
  }
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:), 0, 0);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:)()
{
  v15 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v2, static Log.service);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[4] = v5;
    type metadata accessor for BackgroundSession(0);

    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Ending session %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:);
  v12 = v0[5];

  return BackgroundSession.leave(endState:)(0xC000000000000028);
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:);
  }

  else
  {
    v3 = closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v0 + 24) = v5;
    type metadata accessor for BackgroundSession(0);

    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Ended session %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v11 = *(v0 + 56);
  (*(v0 + 48))(0);
  v12 = *(v0 + 8);

  return v12();
}

{
  v18 = v0;
  v1 = v0[8];
  v2 = v0[5];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    type metadata accessor for BackgroundSession(0);

    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Error ending session: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v11 = v0[10];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v11;
  v13(v11);

  v15 = v0[1];

  return v15();
}

uint64_t BackgroundSessionManager.updateMembers(identifier:members:completion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v67 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  v9 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v60 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v63 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v77 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v60 - v23;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.service);
  v26 = *(v18 + 16);
  v66 = a1;
  v27 = a1;
  v28 = v26;
  v26(v24, v27, v17);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v68 = a2;

  v65 = v30;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v31 = 136315394;
    v28(v16, v24, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    v32 = v64;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v16, v64, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v33 = (*(v18 + 48))(v32, 1, v17);
    v62 = v28;
    if (v33 == 1)
    {
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v37 = *(v18 + 32);
      v60 = v29;
      v38 = v77;
      v37(v77, v32, v17);
      v28(v63, v38, v17);
      v35 = String.init<A>(reflecting:)();
      v34 = v39;
      v40 = v38;
      v29 = v60;
      (*(v18 + 8))(v40, v17);
    }

    outlined destroy of NSObject?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v18 + 8))(v24, v17);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, aBlock);

    *(v31 + 4) = v41;
    *(v31 + 12) = 2080;
    v36 = v68;
    v78 = v68;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14CopresenceCore17AddressableMemberCGMd, &_sShy14CopresenceCore17AddressableMemberCGMR);
    v42 = String.init<A>(reflecting:)();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, aBlock);

    *(v31 + 14) = v44;
    _os_log_impl(&dword_1AEB26000, v29, v65, "Request to update members on identifier: %s with members: %s", v31, 0x16u);
    v45 = v61;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v45, -1, -1);
    MEMORY[0x1B27120C0](v31, -1, -1);

    v28 = v62;
  }

  else
  {

    (*(v18 + 8))(v24, v17);
    v36 = v68;
  }

  v46 = v69;
  v68 = *&v69[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v47 = v77;
  v28(v77, v66, v17);
  v48 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v49 = (v19 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v46;
  (*(v18 + 32))(v51 + v48, v47, v17);
  v52 = (v51 + v49);
  v53 = v70;
  *v52 = v67;
  v52[1] = v53;
  *(v51 + v50) = v36;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:);
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_24_0;
  v54 = _Block_copy(aBlock);

  v55 = v46;

  v56 = v71;
  static DispatchQoS.unspecified.getter();
  v78 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v57 = v73;
  v58 = v76;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v56, v57, v54);
  _Block_release(v54);
  (*(v75 + 8))(v57, v58);
  (*(v72 + 8))(v56, v74);
}

void closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v37 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))(v16);
  v39 = a2;
  v20 = specialized Sequence.first(where:)(partial apply for closure #1 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:), v38, v19);

  if (v20)
  {
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    v22[5] = a5;
    v22[6] = v37;
    v22[7] = a4;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:), v22);
  }

  else
  {
    v23 = v14;
    v36 = a4;
    v24 = v37;
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.service);
    (*(v23 + 16))(v18, a2, v13);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315138;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v23 + 8))(v18, v13);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v40);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1AEB26000, v26, v27, "Couldn't find session with identifier: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v28, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v18, v13);
    }

    lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
    v34 = swift_allocError();
    *v35 = 5;
    v24(v34);
  }
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:), a4, 0);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)()
{
  v1 = *(v0 + 16);
  BackgroundSession.updateMembers(_:)(*(v0 + 24));

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 8);

  return v2();
}

CopresenceCore::BackgroundSessionManager::SessionUpdateState __swiftcall BackgroundSessionManager.SessionUpdateState.init(isRunning:hasUpdateRequest:)(Swift::Bool isRunning, Swift::Bool hasUpdateRequest)
{
  if (hasUpdateRequest)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | isRunning);
}

Swift::Void __swiftcall BackgroundSessionManager.sessionsDidUpdate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v0[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    v16 = &v0[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState];
    os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState]);
    v17 = v16[4];
    *(v16 + 2) = 257;
    os_unfair_lock_unlock(v16);
    if ((v17 & 1) == 0)
    {
      v18 = type metadata accessor for TaskPriority();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v7, 1, 1, v18);
      v20 = swift_allocObject();
      *(v20 + 16) = v0;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v7, v5, &_sScPSgMd, &_sScPSgMR);
      v21 = (*(v19 + 48))(v5, 1, v18);
      v22 = v14;
      v23 = v0;
      if (v21 == 1)
      {
        outlined destroy of NSObject?(v5, &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v19 + 8))(v5, v18);
      }

      v24 = _sSo17OS_dispatch_queueCABSch8DispatchWl();
      v25 = swift_allocObject();
      *(v25 + 16) = &async function pointer to partial apply for closure #2 in BackgroundSessionManager.sessionsDidUpdate();
      *(v25 + 24) = v20;
      v27[0] = 6;
      v27[1] = 0;
      v27[2] = v22;
      v27[3] = v24;
      v26 = v22;

      swift_task_create();
      outlined destroy of NSObject?(v7, &_sScPSgMd, &_sScPSgMR);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #2 in BackgroundSessionManager.sessionsDidUpdate()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return BackgroundSessionManager.processSessionUpdateRequest(isolation:)(0, 0);
}

uint64_t BackgroundSessionManager.processSessionUpdateRequest(isolation:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[6] = v4;
  v3[7] = v6;

  return MEMORY[0x1EEE6DFA0](BackgroundSessionManager.processSessionUpdateRequest(isolation:), v4, v6);
}

uint64_t BackgroundSessionManager.processSessionUpdateRequest(isolation:)()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState;
  v0[8] = OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_sessionUpdateState;
  v3 = v1 + v2;
  os_unfair_lock_lock((v1 + v2));
  v4 = *(v3 + 5);
  *(v3 + 5) = 0;
  v5 = v0[5];
  if (v4 == 1)
  {
    os_unfair_lock_unlock((v5 + v0[8]));
    v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo38TUConversationActivitySessionContainerCGMd, &_sSaySo38TUConversationActivitySessionContainerCGMR);
    v8 = swift_task_alloc();
    v0[9] = v8;
    *(v8 + 16) = v5;
    v9 = *(MEMORY[0x1E69E87D8] + 4);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = BackgroundSessionManager.processSessionUpdateRequest(isolation:);
    v11 = v0[3];
    v12 = v0[4];

    return MEMORY[0x1EEE6DBF8](v0 + 2, v6, v7, v11, v12, &async function pointer to partial apply for closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:), v8, v6);
  }

  else
  {
    v13 = v5 + v0[8];
    *(v13 + 4) = 0;
    os_unfair_lock_unlock(v13);
    v14 = v0[1];

    return v14();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](BackgroundSessionManager.processSessionUpdateRequest(isolation:), v5, v4);
}

{
  v1 = v0[2];
  if ((*((*MEMORY[0x1E69E7D40] & *v0[5]) + 0xA8))())
  {
    v3 = v2;
    v4 = v0[5];
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v4, v1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[5] + v0[8];
  os_unfair_lock_lock(v6);
  v7 = *(v6 + 5);
  *(v6 + 5) = 0;
  v8 = v0[5];
  v9 = v8 + v0[8];
  if (v7)
  {
    os_unfair_lock_unlock(v9);
    v10 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo38TUConversationActivitySessionContainerCGMd, &_sSaySo38TUConversationActivitySessionContainerCGMR);
    v12 = swift_task_alloc();
    v0[9] = v12;
    *(v12 + 16) = v8;
    v13 = *(MEMORY[0x1E69E87D8] + 4);
    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = BackgroundSessionManager.processSessionUpdateRequest(isolation:);
    v15 = v0[3];
    v16 = v0[4];

    return MEMORY[0x1EEE6DBF8](v0 + 2, v10, v11, v15, v16, &async function pointer to partial apply for closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:), v12, v10);
  }

  else
  {
    *(v9 + 4) = 0;
    os_unfair_lock_unlock(v9);
    v17 = v0[1];

    return v17();
  }
}

uint64_t closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMd, &_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMR);
  v3[23] = v5;
  v6 = *(v5 - 8);
  v3[24] = v6;
  v7 = *(v6 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:), 0, 0);
}

uint64_t closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0xC0))();
  v4 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for BackgroundSession(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession);
    v1 = Set.Iterator.init(_cocoa:)();
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
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

    v8 = v11 & *(v1 + 56);
  }

  v12 = (v6 + 64) >> 6;
  v45 = v5;
  v46 = v4;
  v44 = v12;
  while (v4 < 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20 || (*(v0 + 136) = v20, type metadata accessor for BackgroundSession(0), swift_dynamicCast(), v19 = *(v0 + 128), v17 = v7, v18 = v8, !v19))
    {
LABEL_27:
      v35 = *(v0 + 200);
      v36 = *(v0 + 152);
      outlined consume of Set<String>.Iterator._Variant();
      v37 = *v36;
      v38 = MEMORY[0x1E69E7CC0];
      *(v0 + 112) = MEMORY[0x1E69E7CC0];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
      TaskGroup.makeAsyncIterator()();
      *(v0 + 208) = v38;
      v39 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<TUConversationActivitySessionContainer>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMd, &_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMR);
      v40 = *(MEMORY[0x1E69E85A8] + 4);
      v41 = swift_task_alloc();
      *(v0 + 216) = v41;
      *v41 = v0;
      v41[1] = closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:);
      v42 = *(v0 + 200);
      v2 = *(v0 + 184);
      v1 = v0 + 120;
      v3 = v39;

      return MEMORY[0x1EEE6D8C8](v1, v2, v3);
    }

LABEL_19:
    v48 = v18;
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = type metadata accessor for TaskPriority();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v21, 1, 1, v23);
    v25 = swift_allocObject();
    v25[2] = 0;
    v26 = v25 + 2;
    v25[3] = 0;
    v25[4] = v19;
    v47 = v25;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v21, v22, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v22) = (*(v24 + 48))(v22, 1, v23);

    v27 = *(v0 + 168);
    if (v22 == 1)
    {
      outlined destroy of NSObject?(*(v0 + 168), &_sScPSgMd, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v24 + 8))(v27, v23);
    }

    if (*v26)
    {
      v28 = v47[3];
      v29 = *v26;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v31;
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = **(v0 + 152);
    v34 = swift_allocObject();
    *(v34 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:);
    *(v34 + 24) = v47;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);

    if (v32 | v30)
    {
      v13 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v30;
      *(v0 + 80) = v32;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v0 + 176);
    *(v0 + 88) = 1;
    *(v0 + 96) = v13;
    *(v0 + 104) = v33;
    swift_task_create();

    v1 = outlined destroy of NSObject?(v14, &_sScPSgMd, &_sScPSgMR);
    v7 = v17;
    v8 = v48;
    v5 = v45;
    v4 = v46;
    v12 = v44;
  }

  v15 = v7;
  v16 = v8;
  v17 = v7;
  if (v8)
  {
LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
      goto LABEL_27;
    }

    v16 = *(v5 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D8C8](v1, v2, v3);
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v11 = *v1;

  if (v0)
  {
    v5 = v2[25];
    v4 = v2[26];
    v8 = v2 + 23;
    v6 = v2[23];
    v7 = v8[1];

    (*(v7 + 8))(v5, v6);

    v9 = destructiveProjectEnumData for ActivitySession.Errors;
  }

  else
  {
    v9 = closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0 + 14;
    v3 = v1;
    MEMORY[0x1B2710150]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v0[26] = v0[14];
    v4 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type TaskGroup<TUConversationActivitySessionContainer>.Iterator and conformance TaskGroup<A>.Iterator, &_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMd, &_sScG8IteratorVySo38TUConversationActivitySessionContainerC_GMR);
    v5 = *(MEMORY[0x1E69E85A8] + 4);
    v6 = swift_task_alloc();
    v0[27] = v6;
    *v6 = v0;
    v6[1] = closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:);
    v7 = v0[25];
    v8 = v0[23];

    return MEMORY[0x1EEE6D8C8](v0 + 15, v8, v4);
  }

  else
  {
    v9 = v0[26];
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[18];
    (*(v0[24] + 8))(v0[25], v0[23]);
    *v12 = v9;

    v13 = v0[1];

    return v13();
  }
}

uint64_t closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:), a4, 0);
}

uint64_t closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = BackgroundSession.container.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t BackgroundSessionManager.updateShare(_:activityID:)()
{
  return MEMORY[0x1EEE6DFA0](BackgroundSessionManager.updateShare(_:activityID:), 0, 0);
}

{
  lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

id BackgroundSessionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundSessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundSessionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for BackgroundSessionManagerDataSource.delegate.modify in conformance BackgroundSessionManager(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0xB8))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t protocol witness for BackgroundSessionManagerDataSource.updateShare(_:activityID:) in conformance BackgroundSessionManager(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & **v2) + 0x158);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2);
}

uint64_t BackgroundSessionManager.backgroundSession(_:stateChanged:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.service);
  outlined copy of BackgroundSession.State(a2);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined consume of BackgroundSession.State(a2);

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v40 = a2;
    aBlock[0] = v19;
    *v18 = 136315394;
    outlined copy of BackgroundSession.State(a2);
    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);
    v35 = v13;
    v23 = v9;
    v24 = v3;
    v25 = v22;

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v40 = a1;
    type metadata accessor for BackgroundSession(0);

    v26 = String.init<A>(reflecting:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, aBlock);
    v3 = v24;
    v9 = v23;
    v13 = v35;

    *(v18 + 14) = v28;
    _os_log_impl(&dword_1AEB26000, v15, v16, "BackgroundSessionManager learned that state changed to %s on session: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v19, -1, -1);
    v29 = v18;
    v6 = v36;
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  v30 = *&v3[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v31 = swift_allocObject();
  v31[2] = v3;
  v31[3] = a2;
  v31[4] = a1;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.backgroundSession(_:stateChanged:);
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_39;
  v32 = _Block_copy(aBlock);
  outlined copy of BackgroundSession.State(a2);

  v33 = v3;
  static DispatchQoS.unspecified.getter();
  v40 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v9, v32);
  _Block_release(v32);
  (*(v39 + 8))(v9, v6);
  (*(v37 + 8))(v13, v38);
}

uint64_t closure #1 in BackgroundSessionManager.backgroundSession(_:stateChanged:)(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x148))();
  if (a2 >> 62 == 3 && __ROR8__(a2 + 0x4000000000000000, 3) >= 5uLL)
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.service);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      type metadata accessor for BackgroundSession(0);

      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Found that session: %s is invalid, removing session.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v16 = (*((*v6 & *a1) + 0xD0))(v17);
    specialized Set._Variant.remove(_:)(a3);

    return v16(v17, 0);
  }

  return result;
}

uint64_t BackgroundSessionManager.backgroundSession(_:didRejectKeyRecoveryRequest:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.service);
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    _os_log_impl(&dword_1AEB26000, v17, v18, "BackgroundSessionManager didRejectKeyRecoveryRequest from: %@", v20, 0xCu);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v21, -1, -1);
    v23 = v20;
    v7 = v29;
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  v24 = *&v3[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(v25 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.backgroundSession(_:didRejectKeyRecoveryRequest:);
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_45;
  v26 = _Block_copy(aBlock);
  v27 = v3;

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v10, v26);
  _Block_release(v26);
  (*(v7 + 8))(v10, v6);
  (*(v30 + 8))(v14, v31);
}

uint64_t closure #1 in BackgroundSessionManager.backgroundSession(_:didRejectKeyRecoveryRequest:)(void *a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, a2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t BackgroundSessionManager.backgroundSession(_:didReceiveUpdatedUnknownParticipantList:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.service);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = a1;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    type metadata accessor for AddressableMember();
    v29 = v13;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);
    v20 = Set.description.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);
    v13 = v29;

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1AEB26000, v15, v16, "BackgroundSessionManager didReceiveUpdatedUnknownParticipantList: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v23 = v19;
    a1 = v30;
    MEMORY[0x1B27120C0](v23, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  v24 = *&v3[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v25 = swift_allocObject();
  v25[2] = v3;
  v25[3] = a1;
  v25[4] = a2;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManager.backgroundSession(_:didReceiveUpdatedUnknownParticipantList:);
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_51_0;
  v26 = _Block_copy(aBlock);

  v27 = v3;

  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v9, v26);
  _Block_release(v26);
  (*(v33 + 8))(v9, v6);
  (*(v31 + 8))(v13, v32);
}

uint64_t closure #1 in BackgroundSessionManager.backgroundSession(_:didReceiveUpdatedUnknownParticipantList:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a1, a2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized closure #1 in PresenceController.init<A>(dataSource:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v23;
    v4 = a1 + 32;
    do
    {
      outlined init with copy of UserNotificationCenter(v4, v19);
      v5 = v20;
      v6 = v21;
      v7 = __swift_project_boxed_opaque_existential_1(v19, v20);
      v22[3] = v5;
      v22[4] = v6;
      v18 = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      v9 = *(v5 - 8);
      v10 = *(v9 + 16);
      v10(boxed_opaque_existential_1, v7, v5);
      v11 = __swift_destroy_boxed_opaque_existential_1Tm(v19);
      v23 = v2;
      v13 = *(v2 + 16);
      v12 = *(v2 + 24);
      if (v13 >= v12 >> 1)
      {
        v11 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      v14 = *(v9 + 64);
      MEMORY[0x1EEE9AC00](v11);
      v16 = &v19[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10(v16, boxed_opaque_existential_1, v5);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v13, v16, &v23, v5, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v2 = v23;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError()
{
  result = lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError;
  if (!lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError;
  if (!lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSessionManagerError and conformance BackgroundSessionManagerError);
  }

  return result;
}

uint64_t specialized closure #1 in PresenceController.init<A>(dataSource:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in PresenceController.init<A>(dataSource:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ContiguousBytes(&v12, v10 + 40 * a1 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo38TUConversationActivitySessionContainerC_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo38TUConversationActivitySessionContainerC_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo38TUConversationActivitySessionContainerC_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

void partial apply for closure #1 in BackgroundSessionManager.leave(identifier:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  closure #1 in BackgroundSessionManager.leave(identifier:completion:)(v3, v0 + v2, v5, v6);
}

void partial apply for closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(v5, v0 + v2, v8, v9, v7);
}

uint64_t partial apply for closure #2 in BackgroundSessionManager.sessionsDidUpdate()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in BackgroundSessionManager.sessionsDidUpdate()();
}

unint64_t _sSo17OS_dispatch_queueCABSch8DispatchWl()
{
  result = _sSo17OS_dispatch_queueCABSch8DispatchWL;
  if (!_sSo17OS_dispatch_queueCABSch8DispatchWL)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSo17OS_dispatch_queueCABSch8DispatchWL);
  }

  return result;
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed @async () -> (@out A)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

void *specialized PresenceController.init<A>(dataSource:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH20EmptyPresenceContextV0L0AhIPRts_XPGs5NeverOGSayAhI_pGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH20EmptyPresenceContextV0L0AhIPRts_XPGs5NeverOGSayAhI_pGGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SKPresenceDataSource<EmptyPresenceContext> and conformance SKPresenceDataSource<A>, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore20SKPresenceDataSourceCyAA20EmptyPresenceContextVGMR);
  v17 = MEMORY[0x1E69E7CC0];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  a2[4] = CurrentValueSubject.init(_:)();
  a2[5] = MEMORY[0x1E69E7CD0];
  a2[2] = a1;
  a2[3] = v9;
  v13 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC0);
  v14 = a1;
  v17 = v13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore13PresentDevice_pGMd, &_sSay14CopresenceCore13PresentDevice_pGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == EmptyPresenceContext>], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMd, &_s7Combine12AnyPublisherVySay14CopresenceCore13PresentDevice_pAD20EmptyPresenceContextV0J0AdEPRts_XPGs5NeverOGMR);
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[any PresentDevice<Self.PresentDevice.Context == EmptyPresenceContext>], Never>, [PresentDevice]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH20EmptyPresenceContextV0L0AhIPRts_XPGs5NeverOGSayAhI_pGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay14CopresenceCore13PresentDevice_pAH20EmptyPresenceContextV0L0AhIPRts_XPGs5NeverOGSayAhI_pGGMR);
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return a2;
}

uint64_t BackgroundSessionManager.sessions.didset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC14CopresenceCore24BackgroundSessionManager_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

unint64_t outlined copy of BackgroundSession.State(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

unint64_t outlined consume of BackgroundSession.State(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t dispatch thunk of BackgroundSessionManager.updateShare(_:activityID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x158);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2);
}

uint64_t getEnumTagSinglePayload for BackgroundSessionManager.SessionUpdateState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for BackgroundSessionManager.SessionUpdateState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t partial apply for closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in BackgroundSessionManager.processSessionUpdateRequest(isolation:)(a1, v4, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo38TUConversationActivitySessionContainerC_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSo38TUConversationActivitySessionContainerC_TG5(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in closure #1 in BackgroundSessionManager.updateMembers(identifier:members:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in closure #1 in BackgroundSessionManager.leave(identifier:completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined assign with copy of IDSGroupSessionProviderProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #4 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #3 in closure #2 in BackgroundSessionManager.begin(request:bundleIdentifier:processIdentifier:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t outlined consume of BackgroundSession.State?(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined consume of BackgroundSession.State(result);
  }

  return result;
}

unint64_t outlined copy of BackgroundSession.State?(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return outlined copy of BackgroundSession.State(result);
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGGMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in closure #1 in BackgroundSessionManager.createPresenceSession(with:bundleIdentifier:processIdentifier:completion:)(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t _s14CopresenceCore12XPCInterfacePAAE20isConnectionEntitledySbSo15NSXPCConnectionCFZAA21PeoplePickerInterfaceO_Tt0g5Tm()
{
  v0 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v0 == 2)
  {
    v0 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  v1 = v0;
  v2 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v1 & 1) != 0 || v2 != 2 && (v2)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v3)
  {
LABEL_9:
    v4 = 1;
  }

  else
  {
    v4 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v4 == 2)
    {
      v4 = v3[1];
    }
  }

  return v4 & 1;
}

uint64_t _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SSSgTt0B5()
{
  v1 = Entitlement.rawValue.getter();
  v2 = MEMORY[0x1B270FF70](v1);

  v3 = [v0 valueForEntitlement_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for XPCIdentity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for XPCIdentity(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for XPCIdentity(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = type metadata accessor for UUID();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  specialized Sequence.contains(where:)(a1, a2, a3, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60, &lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject);
  return v3 & 1;
}

{
  specialized Sequence.contains(where:)(a1, a2, a3, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58, &lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject);
  return v3 & 1;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v7 = v6;
  v8 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, a4, a5);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(a6, a4, a5);
    Set.Iterator.init(_cocoa:)();
    v8 = v29;
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
  }

  else
  {
    v16 = -1 << *(a3 + 32);
    v12 = a3 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a3 + 56);

    v14 = 0;
  }

  v28 = v8;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (v15)
  {
LABEL_12:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (v23)
    {
      do
      {
        v34 = v23;
        v24 = a1(&v34);

        if (v7)
        {
          break;
        }

        v8 = v28;
        if (v24)
        {
          break;
        }

        v14 = v21;
        v15 = v22;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for NSObject(0, a4, a5);
        swift_dynamicCast();
        v23 = v34;
        v21 = v14;
        v22 = v15;
      }

      while (v34);
    }

LABEL_20:
    outlined consume of Set<String>.Iterator._Variant();
  }

  else
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= ((v13 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v20 = *(v12 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B2710B10](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = __CocoaSet.count.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t XPCHostConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for XPCHostConnection.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t XPCHostConnection.bundleIdentifier.getter()
{
  v1 = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier);
  v2 = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier + 8);

  return v1;
}

id @objc XPCHostConnection.description.getter(void *a1)
{
  v1 = a1;
  v2 = XPCHostConnection.description.getter();
  v4 = v3;

  v5 = MEMORY[0x1B270FF70](v2, v4);

  return v5;
}

uint64_t XPCHostConnection.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(84);
  MEMORY[0x1B2710020](60, 0xE100000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE342D0);
  MEMORY[0x1B2710020](*(v0 + direct field offset for XPCHostConnection.bundleIdentifier), *(v0 + direct field offset for XPCHostConnection.bundleIdentifier + 8));
  MEMORY[0x1B2710020](0xD00000000000001ALL, 0x80000001AEE342F0);
  if (*(v0 + direct field offset for XPCHostConnection.isEntitledToUsePublicAPI))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + direct field offset for XPCHostConnection.isEntitledToUsePublicAPI))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v2, v3);

  MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE34310);
  if (*(v0 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v4, v5);

  MEMORY[0x1B2710020](62, 0xE100000000000000);
  return 0;
}

void closure #1 in XPCHostConnection.init(connection:queue:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.host);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_1AEB26000, v4, v5, "Connection interrupted for host connection: %@", v6, 0xCu);
      outlined destroy of NSObject?(v7);
      MEMORY[0x1B27120C0](v7, -1, -1);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }

    [*&v3[direct field offset for XPCHostConnection.connection] invalidate];
  }
}

void closure #2 in XPCHostConnection.init(connection:queue:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.host);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412546;
      *(v6 + 4) = v3;
      *v7 = v1;
      *(v6 + 12) = 2112;
      v8 = *(v3 + direct field offset for XPCHostConnection.queue);
      *(v6 + 14) = v8;
      v7[1] = v8;
      v9 = v3;
      v10 = v8;
      _os_log_impl(&dword_1AEB26000, v4, v5, "Connection invalidated for host connection: %@ on queue = %@", v6, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v7, -1, -1);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }

    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x140))();
  }
}

Swift::Void __swiftcall XPCHostConnection.destroyConnection()()
{
  v1 = *(v0 + direct field offset for XPCHostConnection.connection);
  [v1 setExportedObject_];
  [v1 setInvalidationHandler_];
  [v1 setInterruptionHandler_];

  [v1 invalidate];
}

void XPCHostConnection.withMessageCoalescing(byIdentifier:block:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks;
  swift_beginAccess();
  v11 = *&v5[v10];

  v12 = specialized Set.contains(_:)(a1, a2, v11);

  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v14 = direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
    swift_beginAccess();

    v15 = *&v5[v14];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *&v5[v14];
    *&v5[v14] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for thunk for @callee_guaranteed () -> (), v13, a1, a2, isUniquelyReferenced_nonNull_native);

    *&v5[v14] = v23;
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v23, a1, a2);
    swift_endAccess();

    a3(v17);
    v18 = *&v5[direct field offset for XPCHostConnection.connection];
    v19 = swift_allocObject();
    v19[2] = v5;
    v19[3] = a1;
    v19[4] = a2;
    aBlock[4] = partial apply for closure #1 in XPCHostConnection.withMessageCoalescing(byIdentifier:block:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_16_1;
    v20 = _Block_copy(aBlock);

    v21 = v5;

    [v18 scheduleSendBarrierBlock_];
    _Block_release(v20);
  }
}

uint64_t closure #1 in XPCHostConnection.withMessageCoalescing(byIdentifier:block:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(a2, a3);
  swift_endAccess();

  v6 = direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (*(v8 + 16))
  {

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v10)
    {
      v12 = *(*(v8 + 56) + 16 * v9);

      v11 = swift_allocObject();
      *(v11 + 16) = v12;
      swift_beginAccess();

      specialized Dictionary.subscript.setter(0, 0, a2, a3);
      swift_endAccess();
      (*((*MEMORY[0x1E69E7D40] & *a1) + 0x148))(a2, a3, partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v11);
    }

    else
    {
    }
  }

  return result;
}

void XPCHostConnection.scheduleInvalidation(_:)(uint64_t a1, uint64_t a2)
{
  if ((v2[direct field offset for XPCHostConnection.hasScheduledInvalidation] & 1) == 0)
  {
    v2[direct field offset for XPCHostConnection.hasScheduledInvalidation] = 1;
    v5 = *&v2[direct field offset for XPCHostConnection.connection];
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = a1;
    v6[4] = a2;
    v9[4] = partial apply for closure #1 in XPCHostConnection.scheduleInvalidation(_:);
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9[3] = &block_descriptor_25;
    v7 = _Block_copy(v9);
    v8 = v2;

    [v5 scheduleSendBarrierBlock_];
    _Block_release(v7);
  }
}

void closure #1 in XPCHostConnection.scheduleInvalidation(_:)(_BYTE *a1, uint64_t (*a2)(void))
{
  a1[direct field offset for XPCHostConnection.hasScheduledInvalidation] = 0;
  if (a2())
  {
    v3 = *&a1[direct field offset for XPCHostConnection.connection];

    [v3 invalidate];
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.host);
    v5 = a1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&dword_1AEB26000, oslog, v6, "No longer invalidating scheduled invalidation for client %@", v7, 0xCu);
      outlined destroy of NSObject?(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }
  }
}

id XPCHostConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void XPCHostConnection.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  specialized XPCHostConnection.init()();
}

void @objc XPCHostConnection.init()(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  specialized XPCHostConnection.init()();
}

id XPCHostConnection.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for XPCHostConnection();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t @objc XPCHostConnection.__ivar_destroyer(uint64_t a1)
{
  v2 = direct field offset for XPCHostConnection.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + direct field offset for XPCHostConnection.bundleIdentifier + 8);

  v5 = *(a1 + direct field offset for XPCHostConnection.definedSystemActivityIdentifiers);

  v6 = *(a1 + direct field offset for XPCHostConnection.definedAccessActivityIdentifiers);

  v7 = *(a1 + direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks);

  v8 = *(a1 + direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier);
}

uint64_t XPCHostConnection.isInCallUI.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  v2 = *MEMORY[0x1E69D8DA8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = TUPreferredFaceTimeBundleIdentifier();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v8 = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier + 8);
  v12[0] = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier);
  v12[1] = v8;
  v11[2] = v12;
  v9 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v11, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v9 & 1;
}

void partial apply for closure #1 in XPCHostConnection.init(connection:queue:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  closure #1 in XPCHostConnection.init(connection:queue:)();
}

void partial apply for closure #2 in XPCHostConnection.init(connection:queue:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  closure #2 in XPCHostConnection.init(connection:queue:)();
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t objectdestroy_12Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

Swift::Int ActivityAuthorizationError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

id ActivityAuthorizationManager.neighborhoodActivityConduit.getter()
{
  v1 = OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit;
  v2 = *(v0 + OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 neighborhoodActivityConduit];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id ActivityAuthorizationManager.__allocating_init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(void *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = a2[3];
  v12 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  ObjectType = swift_getObjectType();
  v16 = swift_getObjectType();
  v17 = specialized ActivityAuthorizationManager.__allocating_init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(a1, v14, a3, a4, a5, a6, v19, ObjectType, v13, v16, v12);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v17;
}

id ActivityAuthorizationManager.init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(void *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = a2[3];
  v12 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  ObjectType = swift_getObjectType();
  v20 = swift_getObjectType();
  v21 = specialized ActivityAuthorizationManager.init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(a1, v17, a3, a4, a5, a6, v23[1], ObjectType, v13, v20, v12);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v21;
}

id ActivityAuthorizationManager.__allocating_init(dataSource:queue:appPolicyManager:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  objc_allocWithZone(v3);
  swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = one-time initialization token for shared;
  v8 = static IMUserNotificationCenter.shared;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = static CPAudioRoutePolicyManager.shared;
  v10 = objc_allocWithZone(CPFeatureFlags);
  v11 = v9;
  v12 = [v10 init];
  v13 = objc_allocWithZone(v4);
  v23[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v23[4] = &protocol witness table for IMUserNotificationCenter;
  v23[0] = v8;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit] = 0;
  v14 = OBJC_IVAR___CPActivityAuthorizationManager_lock;
  type metadata accessor for Lock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *v16 = 0;
  *&v13[v14] = v15;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers] = MEMORY[0x1E69E7CD0];
  v13[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v23, &v13[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter]);
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_queue] = a2;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager] = a3;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] = v11;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_featureFlags] = v12;
  v22.receiver = v13;
  v22.super_class = v4;
  v17 = a2;
  v18 = a3;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  [a1 addObserver:v19 queue:v17];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v23);

  swift_deallocPartialClassInstance();
  return v19;
}

id ActivityAuthorizationManager.init(dataSource:queue:appPolicyManager:)(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = one-time initialization token for shared;
  v7 = static IMUserNotificationCenter.shared;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = static CPAudioRoutePolicyManager.shared;
  v9 = objc_allocWithZone(CPFeatureFlags);
  v10 = v8;
  v11 = [v9 init];
  v12 = objc_allocWithZone(ObjectType);
  v22[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v22[4] = &protocol witness table for IMUserNotificationCenter;
  v22[0] = v7;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit] = 0;
  v13 = OBJC_IVAR___CPActivityAuthorizationManager_lock;
  type metadata accessor for Lock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *&v12[v13] = v14;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers] = MEMORY[0x1E69E7CD0];
  v12[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v22, &v12[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter]);
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_queue] = a2;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager] = a3;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] = v10;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_featureFlags] = v11;
  v21.receiver = v12;
  v21.super_class = ObjectType;
  v16 = a2;
  v17 = a3;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  [a1 addObserver:v18 queue:v16];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  swift_deallocPartialClassInstance();
  return v18;
}

id ActivityAuthorizationManager.__allocating_init(dataSource:queue:)(void *a1, void *a2)
{
  v3 = v2;
  objc_allocWithZone(v2);
  swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = one-time initialization token for shared;
  v6 = static IMUserNotificationCenter.shared;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = one-time initialization token for shared;
  v8 = static CPApplicationPolicyManager.shared;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = static CPAudioRoutePolicyManager.shared;
  v10 = objc_allocWithZone(CPFeatureFlags);
  v11 = v9;
  v12 = [v10 init];
  v13 = objc_allocWithZone(v2);
  v23[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v23[4] = &protocol witness table for IMUserNotificationCenter;
  v23[0] = v6;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit] = 0;
  v14 = OBJC_IVAR___CPActivityAuthorizationManager_lock;
  type metadata accessor for Lock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *v16 = 0;
  *&v13[v14] = v15;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers] = MEMORY[0x1E69E7CD0];
  v13[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v23, &v13[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter]);
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_queue] = a2;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager] = v8;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] = v11;
  *&v13[OBJC_IVAR___CPActivityAuthorizationManager_featureFlags] = v12;
  v22.receiver = v13;
  v22.super_class = v3;
  v17 = v8;
  v18 = a2;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  [a1 addObserver:v19 queue:v18];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v23);

  swift_deallocPartialClassInstance();
  return v19;
}

id ActivityAuthorizationManager.init(dataSource:queue:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = one-time initialization token for shared;
  v5 = static IMUserNotificationCenter.shared;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = one-time initialization token for shared;
  v7 = static CPApplicationPolicyManager.shared;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = static CPAudioRoutePolicyManager.shared;
  v9 = objc_allocWithZone(CPFeatureFlags);
  v10 = v8;
  v11 = [v9 init];
  v12 = objc_allocWithZone(ObjectType);
  v22[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v22[4] = &protocol witness table for IMUserNotificationCenter;
  v22[0] = v5;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit] = 0;
  v13 = OBJC_IVAR___CPActivityAuthorizationManager_lock;
  type metadata accessor for Lock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *&v12[v13] = v14;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers] = MEMORY[0x1E69E7CD0];
  v12[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v22, &v12[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter]);
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_queue] = a2;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager] = v7;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] = v10;
  *&v12[OBJC_IVAR___CPActivityAuthorizationManager_featureFlags] = v11;
  v21.receiver = v12;
  v21.super_class = ObjectType;
  v16 = v7;
  v17 = a2;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  [a1 addObserver:v18 queue:v17];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  swift_deallocPartialClassInstance();
  return v18;
}

void ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v140 = a6;
  v138 = a3;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v7[OBJC_IVAR___CPActivityAuthorizationManager_queue];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v137 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE09B00;
  v21 = *MEMORY[0x1E69D8DD0];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v22;
  v23 = *MEMORY[0x1E69D8DA8];
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v24;
  v25 = *MEMORY[0x1E69D8DC8];
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v26;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v140(0, 0);
    return;
  }

  v139 = a1;
  v28 = [Strong activityAuthorizationStatePresentAlertIfIncapable_];
  v29 = [v28 isSharePlayCapable];
  if (!v29)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    if (one-time initialization token for host == -1)
    {
LABEL_12:
      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Log.host);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1AEB26000, v42, v43, "At least one of the active participants is on an older SharePlay protocol version. Not allowing SharePlay", v44, 2u);
        MEMORY[0x1B27120C0](v44, -1, -1);
      }

      v40 = 0;
      goto LABEL_15;
    }

LABEL_61:
    swift_once();
    goto LABEL_12;
  }

  v30 = a7;
  v142 = v139;
  v143 = a2;
  MEMORY[0x1EEE9AC00](v29);
  v128 = &v142;
  v31 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v129 - 4), inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v31)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.host);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 136315138;
      v141 = v36;
      v142 = v139;
      v143 = a2;

      v37 = String.init<A>(reflecting:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v141);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1AEB26000, v33, v34, "Bypassing user authorization for activity started from %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1B27120C0](v36, -1, -1);
      MEMORY[0x1B27120C0](v35, -1, -1);
    }

    v40 = 1;
LABEL_15:
    v140(v40, 0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v45 = [v28 activeConversation];
  if ([v28 hasActiveActivitySessionContainer])
  {
    v136 = v45;
    v46 = *&v7[OBJC_IVAR___CPActivityAuthorizationManager_lock];
    os_unfair_lock_lock(*(v46 + 16));
    swift_beginAccess();
    v47 = v7;
    specialized Set._Variant.remove(_:)(v139, a2);
    v49 = v48;
    swift_endAccess();
    v135 = v30;
    if (v49)
    {

      os_unfair_lock_unlock(*(v46 + 16));
      v50 = a4;
      if ((v138 & 1) == 0)
      {
        v140(1, 0);
LABEL_32:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      os_unfair_lock_unlock(*(v46 + 16));
      v50 = a4;
    }

    os_unfair_lock_lock(*(v46 + 16));
    v56 = v7[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest];
    v7[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 1;
    os_unfair_lock_unlock(*(v46 + 16));
    if (v56)
    {
      v57 = v139;
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Log.host);

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v142 = v62;
        *v61 = 136315138;
        *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, a2, &v142);
        _os_log_impl(&dword_1AEB26000, v59, v60, "Not allowing activation from %s because an authorization prompt is already being displayed", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x1B27120C0](v62, -1, -1);
        MEMORY[0x1B27120C0](v61, -1, -1);
      }

      lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError();
      v63 = swift_allocError();
      *v64 = 3;
      v140(0, v63);

      goto LABEL_32;
    }

    v134 = v28;
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v66 = swift_allocObject();
    v67 = v140;
    v66[2] = v65;
    v66[3] = v67;
    v133 = v66;
    v66[4] = v135;
    v68 = 2;
    swift_retain_n();

    v70 = v139;
    if (v136)
    {
      v71 = v136;
      v72 = TUConversation.hasLocalActivitySession(forBundleIdentifier:)(v70, a2);

      v68 = v72 & 1;
    }

    v73 = MEMORY[0x1E69E7D40];
    if (!v50)
    {
      goto LABEL_47;
    }

    (*((*MEMORY[0x1E69E7D40] & *v50) + 0x80))(&v142, v69);
    if (!v142)
    {
      goto LABEL_47;
    }

    if (v142 == 1)
    {
      goto LABEL_38;
    }

    if (v68 == 2)
    {
      v86 = swift_allocObject();
      v87 = v133;
      *(v86 + 16) = partial apply for closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:);
      *(v86 + 24) = v87;
      *(v86 + 32) = v7;
      *(v86 + 40) = v70;
      v88 = v136;
      *(v86 + 48) = a2;
      *(v86 + 56) = v88;
      v89 = v138 & 1;
      *(v86 + 64) = v138 & 1;
      *(v86 + 72) = v137;
      *(v86 + 80) = v50;
      swift_unknownObjectRetain();
      v90 = v88;
      v132 = v65;
      v91 = v70;
      v92 = v90;
      v93 = v50;

      v94 = v7;
      v95 = closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
      v96 = v91;
      v97 = a2;
      v98 = v88;
      v99 = v89;
      v100 = v50;
      v101 = v86;
LABEL_59:
      ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(v96, v97, v98, v99, v100, v95, v101);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    if ((v68 & 1) == 0)
    {
LABEL_38:
      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static Log.host);
      v75 = v50;

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      v140 = v75;

      v131 = v77;
      v78 = os_log_type_enabled(v76, v77);
      v132 = v65;
      if (v78)
      {
        v130 = v76;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v142 = v80;
        *v79 = 136315650;
        (*((*MEMORY[0x1E69E7D40] & *v140) + 0x80))(&v141);
        v81 = String.init<A>(reflecting:)();
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v142);

        *(v79 + 4) = v83;
        *(v79 + 12) = 2080;
        *(v79 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, a2, &v142);
        *(v79 + 22) = 2080;
        if (v68 == 2)
        {
          v84 = 0xE300000000000000;
          v85 = 7104878;
        }

        else
        {
          LOBYTE(v141) = v68;
          v85 = String.init<A>(reflecting:)();
          v84 = v120;
        }

        v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v84, &v142);

        *(v79 + 24) = v121;
        v122 = v130;
        _os_log_impl(&dword_1AEB26000, v130, v131, "Prompting to start activity due to override %s; bundleID %s has existing session? %s", v79, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v80, -1, -1);
        MEMORY[0x1B27120C0](v79, -1, -1);

        v70 = v139;
      }

      else
      {
      }

      v113 = swift_allocObject();
      v123 = v133;
      *(v113 + 16) = partial apply for closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:);
      *(v113 + 24) = v123;
      *(v113 + 32) = v47;
      *(v113 + 40) = v70;
      v124 = v136;
      *(v113 + 48) = a2;
      *(v113 + 56) = v124;
      v125 = v138 & 1;
      *(v113 + 64) = v138 & 1;
      *(v113 + 72) = v137;
      *(v113 + 80) = v50;
      swift_unknownObjectRetain();
      v126 = v70;
      v92 = v124;
      v127 = v140;

      v47;
      v95 = closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
      v96 = v126;
      v97 = a2;
      v98 = v124;
      v99 = v125;
      v100 = v50;
    }

    else
    {
LABEL_47:
      v102 = v7;
      if (((*((*v73 & **&v7[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager]) + 0x150))(v70, a2) & 1) != 0 && [*&v7[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] sharePlaySupported])
      {
        if (one-time initialization token for host != -1)
        {
          swift_once();
        }

        v103 = type metadata accessor for Logger();
        __swift_project_value_buffer(v103, static Log.host);

        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = v65;
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v142 = v108;
          *v107 = 136315138;
          *(v107 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, a2, &v142);
          _os_log_impl(&dword_1AEB26000, v104, v105, "Skipping confirmation prompt as sharing is enabled for: %s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v108);
          MEMORY[0x1B27120C0](v108, -1, -1);
          v109 = v107;
          v65 = v106;
          MEMORY[0x1B27120C0](v109, -1, -1);
        }

        v110 = v47;
        v111 = v135;

        v112 = v136;
        specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(v70, a2, v136, v138 & 1, v50, v110, v65, v140, v111);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }

      v113 = swift_allocObject();
      v114 = v133;
      *(v113 + 16) = partial apply for closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:);
      *(v113 + 24) = v114;
      *(v113 + 32) = v7;
      *(v113 + 40) = v70;
      v132 = v65;
      v115 = v50;
      v116 = v136;
      *(v113 + 48) = a2;
      *(v113 + 56) = v116;
      v117 = v138 & 1;
      *(v113 + 64) = v138 & 1;
      *(v113 + 72) = v137;
      *(v113 + 80) = v115;
      swift_unknownObjectRetain();
      v118 = v70;
      v92 = v116;
      v119 = v115;

      v102;
      v95 = partial apply for closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:);
      v96 = v118;
      v97 = a2;
      v98 = v116;
      v99 = v117;
      v100 = v115;
    }

    v101 = v113;
    goto LABEL_59;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Log.host);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v142 = v55;
    *v54 = 136315138;
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, a2, &v142);
    _os_log_impl(&dword_1AEB26000, v52, v53, "Not allowing activation from %s because there is no active conversation or call.", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x1B27120C0](v55, -1, -1);
    MEMORY[0x1B27120C0](v54, -1, -1);
  }

  v140(0, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR___CPActivityAuthorizationManager_lock);
    v9 = Strong;

    os_unfair_lock_lock(*(v8 + 16));
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v10[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
    }

    os_unfair_lock_unlock(*(v8 + 16));
  }

  return a4(a1 & 1, a2);
}

uint64_t ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(uint64_t a1, unint64_t a2, void *a3, int a4, unint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v92 = a7;
  v88 = a6;
  v82 = a5;
  LODWORD(v9) = a4;
  v95 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v90 = v15;
  v91 = &v77[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v77[-v16];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v93 = &v77[-v18];
  v85 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v81 = *(v85 - 1);
  v19 = *(v81 + 64);
  v20 = MEMORY[0x1EEE9AC00](v85);
  v87 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77[-v21];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.host);
  v24 = a3;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v86 = a2;
  v83 = a3;
  v80 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v78 = v9;
    v9 = v29;
    v30 = swift_slowAlloc();
    v79 = v19;
    v31 = v22;
    v32 = v8;
    v33 = v30;
    v96 = v30;
    *v28 = 136315394;
    *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, a2, &v96);
    *(v28 + 12) = 2112;
    *(v28 + 14) = v24;
    *v9 = a3;
    v34 = v24;
    _os_log_impl(&dword_1AEB26000, v25, v26, "Deferring activity authorization request to user for bundleIdentifier: %s on conversation: %@.", v28, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v35 = v9;
    LOBYTE(v9) = v78;
    MEMORY[0x1B27120C0](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v36 = v33;
    v8 = v32;
    v22 = v31;
    v19 = v79;
    MEMORY[0x1B27120C0](v36, -1, -1);
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  v37 = *&v8[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager];
  v38 = [v37 sharePlaySupported];
  v39 = v93;
  if ((v38 & 1) != 0 || (v40 = [v37 pickedRoute]) == 0)
  {
    v47 = v95;
    v49 = v86;
    v82 = specialized ActivityAuthorizationManager.authorizationRequestDisplayInformation(forApplicationWithBundleIdentifier:onNearbyDeviceHandle:preparing:overrides:)(v95, v86, 0, v9 & 1, v82);
  }

  else
  {
    v41 = v40;
    v42 = [v40 name];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v8;
    v46 = v45;

    v39 = v93;
    v47 = v95;
    v48 = v43;
    v49 = v86;
    v82 = specialized ActivityAuthorizationManager.unsupportedAudioRouteDisplayInformation(forApplicationWithBundleIdentifier:onNearbyDeviceHandle:preparing:routeName:)(v95, v86, v9 & 1, v48, v46);
    v8 = v44;
  }

  LOBYTE(v96) = 9;

  specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)(&v96, v47, v49);
  v96 = 0;
  v97 = 0xE000000000000000;
  if (v83)
  {
    v50 = [v80 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = type metadata accessor for UUID();
  (*(*(v52 - 8) + 56))(v39, v51, 1, v52);
  v53 = String.init<A>(describing:)();
  MEMORY[0x1B2710020](v53);

  MEMORY[0x1B2710020](46, 0xE100000000000000);
  MEMORY[0x1B2710020](v47, v49);
  v93 = v96;
  v84 = v97;
  v54 = v94;
  outlined init with copy of SharePlayLatencyLogger.Interval(v22, v94);
  v55 = v81 + 56;
  (*(v81 + 56))(v54, 0, 1, v85);
  v56 = v87;
  outlined init with copy of SharePlayLatencyLogger.Interval(v22, v87);
  v57 = (*(v55 + 24) + 16) & ~*(v55 + 24);
  v58 = (v19 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = v49;
  v61 = swift_allocObject();
  v85 = v22;
  v62 = v61;
  outlined init with take of SharePlayLatencyLogger.Interval(v56, v61 + v57);
  *(v62 + v58) = v8;
  v63 = (v62 + v59);
  *v63 = v47;
  v63[1] = v49;
  v64 = (v62 + ((v59 + 23) & 0xFFFFFFFFFFFFFFF8));
  v65 = v92;
  *v64 = v88;
  v64[1] = v65;
  v66 = *&v8[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
  v87 = *&v8[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
  v88 = __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v87);
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = v91;
  outlined init with copy of SharePlayLatencyLogger.Interval?(v54, v91);
  v69 = v8;
  v70 = (*(v89 + 80) + 24) & ~*(v89 + 80);
  v71 = (v90 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  *(v72 + 16) = v67;
  outlined init with take of SharePlayLatencyLogger.Interval?(v68, v72 + v70);
  v73 = (v72 + v71);
  *v73 = partial apply for closure #1 in ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:);
  v73[1] = v62;
  v74 = *(v66 + 8);

  v75 = v69;

  v74(v93, v84, v95, v60, v82, 1, closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)partial apply, v72, v87, v66);

  outlined destroy of NSObject?(v94, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  outlined destroy of SharePlayLatencyLogger.Interval(v85);
}

id TUConversation.hasLocalActivitySession(forBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.max(by:)(v7);
  v9 = v8;

  if (v9)
  {
    v10 = [v9 activity];
    v11 = [v10 bundleIdentifier];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v17 = [v9 isLocallyInitiated];
      goto LABEL_12;
    }

LABEL_8:
    v17 = 0;
LABEL_12:

    return v17;
  }

  return 0;
}

void ActivityAuthorizationManager.requestAuthorizationForApplicationLaunch(withActivity:completionHandler:)(void *a1, void *a2, uint64_t a3)
{
  v94 = a2;
  v95 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v89 = *(v5 - 8);
  v6 = *(v89 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v80 - v11;
  v13 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v14 = *(v13 - 8);
  v86 = v13;
  v87 = v14;
  v15 = *(v14 + 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v88 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v80 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v3[OBJC_IVAR___CPActivityAuthorizationManager_queue];
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v25 = [a1 bundleIdentifier];
  if (!v25)
  {
    if (one-time initialization token for host == -1)
    {
LABEL_13:
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Log.host);
      v39 = a1;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        *(v42 + 4) = v39;
        *v43 = v39;
        v44 = v39;
        _os_log_impl(&dword_1AEB26000, v40, v41, "Invalid bundleIdentifier for activity %@", v42, 0xCu);
        outlined destroy of NSObject?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27120C0](v43, -1, -1);
        MEMORY[0x1B27120C0](v42, -1, -1);
      }

      goto LABEL_17;
    }

LABEL_29:
    swift_once();
    goto LABEL_13;
  }

  v26 = v25;
  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_17:
    (v94)(0, 0);
    return;
  }

  v30 = Strong;
  v85 = a1;
  v31 = [Strong activityAuthorizationStatePresentAlertIfIncapable_];
  v32 = [v31 activeConversation];
  if ([v31 hasActiveActivitySessionContainer])
  {
    v84 = v30;
    v33 = v3;
    if (((*((*MEMORY[0x1E69E7D40] & **&v3[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager]) + 0x150))(v93, v28) & 1) != 0 && [*&v3[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] sharePlaySupported])
    {

      if (one-time initialization token for host != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Log.host);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1AEB26000, v35, v36, "Bypassing authorization since application is already authorized.", v37, 2u);
        MEMORY[0x1B27120C0](v37, -1, -1);
      }

      (v94)(1, 0);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v96) = 10;

      specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)(&v96, v93, v28);
      v96 = 0;
      v97 = 0xE000000000000000;
      v83 = v31;
      if (v32)
      {
        v53 = [v32 groupUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v55 = type metadata accessor for UUID();
      (*(*(v55 - 8) + 56))(v12, v54, 1, v55);
      v56 = String.init<A>(describing:)();
      MEMORY[0x1B2710020](v56);

      MEMORY[0x1B2710020](46, 0xE100000000000000);
      MEMORY[0x1B2710020](v93, v28);
      v81 = v97;
      v82 = v96;
      v57 = v33;
      v85 = specialized static ActivityAuthorizationManager.notificationDisplayInformation(audioRoutePolicyManager:activity:conversation:)(*&v33[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager], v85, v32);
      v58 = v91;
      v59 = v92;
      outlined init with copy of SharePlayLatencyLogger.Interval(v91, v92);
      v60 = v87 + 56;
      (*(v87 + 7))(v59, 0, 1, v86);
      v61 = v58;
      v62 = v88;
      outlined init with copy of SharePlayLatencyLogger.Interval(v61, v88);
      v63 = (v60[24] + 16) & ~v60[24];
      v87 = v32;
      v64 = (v15 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      outlined init with take of SharePlayLatencyLogger.Interval(v62, v66 + v63);
      *(v66 + v64) = v57;
      v67 = (v66 + v65);
      v68 = v94;
      *v67 = v93;
      v67[1] = v28;
      v69 = (v66 + ((v65 + 23) & 0xFFFFFFFFFFFFFFF8));
      v70 = v95;
      *v69 = v68;
      v69[1] = v70;
      v71 = *&v57[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
      v88 = *&v57[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
      v94 = __swift_project_boxed_opaque_existential_1(&v57[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v88);
      v72 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v73 = v90;
      outlined init with copy of SharePlayLatencyLogger.Interval?(v92, v90);
      v74 = (*(v89 + 80) + 24) & ~*(v89 + 80);
      v75 = (v6 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      *(v76 + 16) = v72;
      outlined init with take of SharePlayLatencyLogger.Interval?(v73, v76 + v74);
      v77 = (v76 + v75);
      *v77 = partial apply for closure #1 in ActivityAuthorizationManager.confirmActivityLaunchAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:withActivity:completionHandler:);
      v77[1] = v66;
      v78 = *(v71 + 8);

      v79 = v57;

      v78(v82, v81, v93, v28, v85, 1, partial apply for closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:), v76, v88, v71);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      outlined destroy of NSObject?(v92, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
      outlined destroy of SharePlayLatencyLogger.Interval(v91);
    }
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.host);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = v32;
      v50 = swift_slowAlloc();
      v96 = v50;
      *v48 = 136315138;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v28, &v96);

      *(v48 + 4) = v51;
      _os_log_impl(&dword_1AEB26000, v46, v47, "Not allowing activation from %s because there is no active conversation or call.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      v52 = v50;
      v32 = v49;
      MEMORY[0x1B27120C0](v52, -1, -1);
      MEMORY[0x1B27120C0](v48, -1, -1);
    }

    else
    {
    }

    (v94)(0, 0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void closure #1 in ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void *))
{
  specialized static SharePlayLatencyLogger.endInterval(_:)(a2);
  if (a1 == 2)
  {
    v12 = 0;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    [*(a3 + OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager) switchToSpeakerRouteIfNecessary];
    v11._countAndFlagsBits = a4;
    v11._object = a5;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v11);
    v12 = 1;
LABEL_5:
    a6(v12, 0);
    return;
  }

  lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError();
  v13 = swift_allocError();
  *v14 = 0;
  a6(0, v13);
}

Swift::Void __swiftcall ActivityAuthorizationManager.setAuthorization(_:for:)(Swift::Bool _, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.host);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 67109378;
    *(v10 + 4) = _;
    *(v10 + 8) = 2080;
    *(v10 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v12);
    _os_log_impl(&dword_1AEB26000, v8, v9, "Setting authorization: %{BOOL}d for identifier: %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  (*((*MEMORY[0x1E69E7D40] & **(v3 + OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager)) + 0x178))(_, countAndFlagsBits, object);
}

void closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, void (*a7)(uint64_t, void *))
{
  specialized static SharePlayLatencyLogger.endInterval(_:)(a2);
  if (a1)
  {
    lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError();
    v13 = swift_allocError();
    *v14 = 1;
    a7(0, v13);
  }

  else
  {
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v15);
    if (a6)
    {
      v16 = *(a3 + OBJC_IVAR___CPActivityAuthorizationManager_lock);
      os_unfair_lock_lock(*(v16 + 16));
      swift_beginAccess();

      specialized Set._Variant.insert(_:)(&v17, a4, a5);
      swift_endAccess();

      os_unfair_lock_unlock(*(v16 + 16));
    }

    a7(1, 0);
  }
}

void closure #1 in ActivityAuthorizationManager.confirmActivityLaunchAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:withActivity:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void *))
{
  specialized static SharePlayLatencyLogger.endInterval(_:)(a2);
  if (a1)
  {
    lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError();
    v11 = swift_allocError();
    *v12 = 0;
    a6(0, v11);
  }

  else
  {
    [*(a3 + OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager) switchToSpeakerRouteIfNecessary];
    v13._countAndFlagsBits = a4;
    v13._object = a5;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v13);
    a6(1, 0);
  }
}

void closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v28 - v13;
  v15 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    outlined init with copy of SharePlayLatencyLogger.Interval?(a3, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    }

    else
    {
      outlined init with take of SharePlayLatencyLogger.Interval(v14, v19);
      v31 = 8;
      aBlock = 0;
      v34 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      MEMORY[0x1B2710020](0xD000000000000020, 0x80000001AEE34810);
      v32 = a1;
      type metadata accessor for IMUserNotificationResponse(0);
      _print_unlocked<A, B>(_:_:)();
      specialized static SharePlayLatencyLogger.emitEvent(_:in:message:)(&v31, v19, aBlock, v34);

      outlined destroy of SharePlayLatencyLogger.Interval(v19);
    }

    static DispatchQoS.userInitiated.getter();
    v22 = swift_allocObject();
    v23 = v30;
    v22[2] = v29;
    v22[3] = v23;
    v22[4] = a1;
    v37 = partial apply for closure #1 in closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:);
    v38 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v36 = &block_descriptor_15;
    _Block_copy(&aBlock);
    v32 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = type metadata accessor for DispatchWorkItem();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    DispatchWorkItem.init(qos:flags:block:)();

    v27 = *&v21[OBJC_IVAR___CPActivityAuthorizationManager_queue];
    OS_dispatch_queue.async(execute:)();
  }
}

id ActivityAuthorizationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityAuthorizationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized Sequence.max(by:)(int64_t a1)
{
  v43 = type metadata accessor for Date();
  v3 = *(v43 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v43);
  v42 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = v37 - v7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v40 = v3;
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    a1 = v47;
    v8 = v48;
    v9 = v49;
    v10 = v50;
    v11 = v51;
    if (v47 < 0)
    {
      v35 = v49;
      v36 = __CocoaSet.Iterator.next()();
      if (v36)
      {
        v46 = v36;
        swift_dynamicCast();
        v45 = 0;
        v44 = v10;
        v13 = v11;
        v9 = v35;
        v19 = v52;
        v3 = v40;
        if (v52)
        {
          goto LABEL_15;
        }
      }

LABEL_31:
      outlined consume of Set<String>.Iterator._Variant();
      return;
    }

    v3 = v40;
    v44 = v50;
    if (v51)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v11 = v16 & *(a1 + 56);

    v10 = 0;
    v44 = 0;
    if (v11)
    {
LABEL_4:
      v12 = __clz(__rbit64(v11));
      v13 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  v17 = v10;
  do
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_34;
    }

    if (v10 >= ((v9 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v18 = *(v8 + 8 * v10);
    ++v17;
  }

  while (!v18);
  v12 = __clz(__rbit64(v18));
  v13 = (v18 - 1) & v18;
LABEL_14:
  v19 = *(*(a1 + 48) + 8 * (v12 | (v10 << 6)));
  v45 = 1;
  if (!v19)
  {
    goto LABEL_31;
  }

LABEL_15:
  v44 = a1;
  v37[0] = v9;
  v37[1] = v1;
  v20 = (v9 + 64) >> 6;
  v39 = v20;
  v40 = v3 + 1;
  v38 = v8;
  while (!v45)
  {
    v26 = __CocoaSet.Iterator.next()();
    if (!v26)
    {
      goto LABEL_31;
    }

    v46 = v26;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    swift_dynamicCast();
    v25 = v52;
    v23 = v10;
    v24 = v13;
    if (!v52)
    {
      goto LABEL_31;
    }

LABEL_25:
    v27 = v19;
    v28 = [v19 timestamp];
    v29 = v41;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = [v25 timestamp];
    v31 = v42;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v30) = static Date.< infix(_:_:)();
    v32 = *v40;
    v33 = v31;
    v34 = v43;
    (*v40)(v33, v43);
    v32(v29, v34);
    if (v30)
    {

      v19 = v25;
      v10 = v23;
      v13 = v24;
      v8 = v38;
      v20 = v39;
    }

    else
    {

      v10 = v23;
      v13 = v24;
      v8 = v38;
      v20 = v39;
      v19 = v27;
    }
  }

  v21 = v10;
  v22 = v13;
  v23 = v10;
  if (v13)
  {
LABEL_21:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v44 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_31;
    }

    v22 = *(v8 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

id specialized ActivityAuthorizationManager.init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  v28[3] = a9;
  v28[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a2, a9);
  swift_unknownObjectWeakInit();
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager____lazy_storage___neighborhoodActivityConduit] = 0;
  v20 = OBJC_IVAR___CPActivityAuthorizationManager_lock;
  type metadata accessor for Lock();
  v21 = swift_allocObject();
  v22 = swift_slowAlloc();
  *(v21 + 16) = v22;
  *v22 = 0;
  *&a7[v20] = v21;
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers] = MEMORY[0x1E69E7CD0];
  a7[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
  swift_unknownObjectWeakAssign();
  outlined init with copy of UserNotificationCenter(v28, &a7[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter]);
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager_queue] = a3;
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager] = a4;
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] = a5;
  *&a7[OBJC_IVAR___CPActivityAuthorizationManager_featureFlags] = a6;
  v27.receiver = a7;
  v27.super_class = ObjectType;
  v23 = a3;
  v24 = a4;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  [a1 addObserver:v25 queue:v23];
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v25;
}

id specialized ActivityAuthorizationManager.__allocating_init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = a6;
  v25 = a8;
  v23 = a5;
  v15 = *(a9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v19);
  (*(v15 + 16))(v18, a2, a9);
  return specialized ActivityAuthorizationManager.init(dataSource:notificationCenter:queue:appPolicyManager:audioRoutePolicyManager:featureFlags:)(a1, v18, a3, a4, v23, v24, v20, v25, a9, a10, a11);
}

unint64_t specialized ActivityAuthorizationManager.unsupportedAudioRouteDisplayInformation(forApplicationWithBundleIdentifier:onNearbyDeviceHandle:preparing:routeName:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ConversationManagerHost();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = objc_opt_self();
  v76 = ObjCClassFromMetadata;
  v10 = [v75 bundleForClass_];
  v78._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000025;
  v11._object = 0x80000001AEE34970;
  v12.value._countAndFlagsBits = 0x6E65736572706F43;
  v12.value._object = 0xEE0065726F436563;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v78._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v78);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AEE07B20;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v16 = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 64) = v16;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;

  v71 = String.init(format:_:)();
  v18 = v17;

  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v19 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  if (v19)
  {
    v73 = v19;
    v27 = [v19 localizedName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v29;

    v30 = [v75 bundleForClass_];
    v80._object = 0xE000000000000000;
    v31._countAndFlagsBits = 0xD000000000000029;
    v31._object = 0x80000001AEE349D0;
    v32.value._countAndFlagsBits = 0x6E65736572706F43;
    v32.value._object = 0xEE0065726F436563;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v80._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v80);

    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1AEE07B20;
    *(v34 + 56) = v15;
    *(v34 + 64) = v16;
    *(v34 + 32) = v28;
    *(v34 + 40) = v70;
    v24 = String.init(format:_:)();
    v26 = v35;
  }

  else
  {
    v20 = [v75 bundleForClass_];
    v79._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD000000000000026;
    v21._object = 0x80000001AEE349A0;
    v22.value._countAndFlagsBits = 0x6E65736572706F43;
    v22.value._object = 0xEE0065726F436563;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v79._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v79);

    v24 = String.init(format:_:)();
    v26 = v25;
    v73 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  v37 = *MEMORY[0x1E69A60A8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v15;
  *(inited + 40) = v38;
  *(inited + 48) = v71;
  *(inited + 56) = v18;
  v39 = *MEMORY[0x1E69A6088];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v40;
  *(inited + 120) = v15;
  *(inited + 96) = v24;
  *(inited + 104) = v26;
  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1AEE09B00;
  v42 = *MEMORY[0x1E69A6078];
  *(v41 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v41 + 40) = v43;
  v44 = [v75 bundleForClass_];
  v81._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0x4C45434E4143;
  v45._object = 0xE600000000000000;
  v46.value._countAndFlagsBits = 0x6E65736572706F43;
  v46.value._object = 0xEE0065726F436563;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v81._countAndFlagsBits = 0;
  v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v46, v44, v47, v81);

  *(v41 + 72) = v15;
  *(v41 + 48) = v48;
  v49 = *MEMORY[0x1E69A6068];
  *(v41 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v41 + 88) = v50;
  v51 = [v75 bundleForClass_];
  v82._object = 0xE000000000000000;
  v52._object = 0x80000001AEE34890;
  v52._countAndFlagsBits = 0xD000000000000011;
  v53.value._countAndFlagsBits = 0x6E65736572706F43;
  v53.value._object = 0xEE0065726F436563;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0;
  v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v82);

  *(v41 + 96) = v55;
  *(v41 + 120) = v15;
  *(v41 + 128) = 0xD000000000000022;
  *(v41 + 168) = MEMORY[0x1E69E6810];
  *(v41 + 136) = 0x80000001AEE2F710;
  *(v41 + 144) = 1;
  v56 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v72;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v56, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v77);

  v58 = v77;
  if (a3)
  {
    v59 = swift_initStackObject();
    *(v59 + 16) = xmmword_1AEE07B20;
    v60 = *MEMORY[0x1E69A6090];
    *(v59 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v59 + 40) = v61;
    v62 = [v75 bundleForClass_];
    v83._object = 0xE000000000000000;
    v63._countAndFlagsBits = 0x4F465F5452415453;
    v63._object = 0xEC000000454D5F52;
    v64.value._countAndFlagsBits = 0x6E65736572706F43;
    v64.value._object = 0xEE0065726F436563;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v83._countAndFlagsBits = 0;
    v66 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, v64, v62, v65, v83);

    *(v59 + 72) = v15;
    *(v59 + 48) = v66;
    v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v59);
    swift_setDeallocating();
    outlined destroy of NSObject?(v59 + 32, &_sSS_yptMd, &_sSS_yptMR);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v58;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v67, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v68, &v77);

    return v77;
  }

  else
  {
  }

  return v58;
}

unint64_t specialized ActivityAuthorizationManager.authorizationRequestDisplayInformation(forApplicationWithBundleIdentifier:onNearbyDeviceHandle:preparing:overrides:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v9 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  v10 = MEMORY[0x1E69E6158];
  v118 = v9;
  if (a5 && *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8))
  {
    v115 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_title);
    v116 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8);
  }

  else
  {
    if (v9)
    {
      v11 = [v9 localizedName];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      type metadata accessor for ConversationManagerHost();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      v120._object = 0xE000000000000000;
      v17._countAndFlagsBits = 0xD00000000000001DLL;
      v17._object = 0x80000001AEE34A90;
      v18.value._countAndFlagsBits = 0x6E65736572706F43;
      v18.value._object = 0xEE0065726F436563;
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      v120._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v120);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AEE07B20;
      *(v20 + 56) = v10;
      *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v20 + 32) = v12;
      *(v20 + 40) = v14;
    }

    else
    {
      type metadata accessor for ConversationManagerHost();
      v21 = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      v121._object = 0xE000000000000000;
      v23._countAndFlagsBits = 0xD00000000000001FLL;
      v23._object = 0x80000001AEE34A00;
      v24.value._countAndFlagsBits = 0x6E65736572706F43;
      v24.value._object = 0xEE0065726F436563;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v121._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v121);
    }

    v115 = String.init(format:_:)();
    v116 = v26;

    if (!a5)
    {
      goto LABEL_10;
    }
  }

  v27 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8);
  if (v27)
  {
    v113 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_message);

    v28 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
    v29 = 0x1E696A000;
    goto LABEL_18;
  }

LABEL_10:
  if (a3)
  {
    v30 = a3;
    v31 = [v30 name];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      type metadata accessor for ConversationManagerHost();
      v36 = swift_getObjCClassFromMetadata();
      v37 = [objc_opt_self() bundleForClass_];
      v122._object = 0xE000000000000000;
      v38._countAndFlagsBits = 0xD00000000000001BLL;
      v38._object = 0x80000001AEE34A70;
      v39.value._countAndFlagsBits = 0x6E65736572706F43;
      v39.value._object = 0xEE0065726F436563;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v122._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v122);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1AEE07B20;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v41 + 32) = v33;
      *(v41 + 40) = v35;
      v29 = 0x1E696A000;
      v113 = String.init(format:_:)();
      v27 = v42;
      v28 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
    }

    else
    {
      type metadata accessor for ConversationManagerHost();
      v53 = swift_getObjCClassFromMetadata();
      v29 = 0x1E696A000uLL;
      v28 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
      v54 = [objc_opt_self() bundleForClass_];
      v124._object = 0xE000000000000000;
      v55._countAndFlagsBits = 0xD000000000000025;
      v55._object = 0x80000001AEE34A40;
      v56.value._countAndFlagsBits = 0x6E65736572706F43;
      v56.value._object = 0xEE0065726F436563;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      v124._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v124);

      v113 = String.init(format:_:)();
      v27 = v58;
    }
  }

  else
  {
    if (v9)
    {
      v43 = [v9 localizedName];
      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      type metadata accessor for ConversationManagerHost();
      v46 = swift_getObjCClassFromMetadata();
      v47 = [objc_opt_self() bundleForClass_];
      v123._object = 0xE000000000000000;
      v48._countAndFlagsBits = 0xD000000000000015;
      v48._object = 0x80000001AEE348D0;
      v49.value._countAndFlagsBits = 0x6E65736572706F43;
      v49.value._object = 0xEE0065726F436563;
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      v123._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v123);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1AEE07B20;
      *(v51 + 56) = v10;
      v28 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
      *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v51 + 32) = v114;
      *(v51 + 40) = v45;
      v113 = String.init(format:_:)();
      v27 = v52;
      v29 = 0x1E696A000;
    }

    else
    {
      type metadata accessor for ConversationManagerHost();
      v104 = swift_getObjCClassFromMetadata();
      v29 = 0x1E696A000uLL;
      v28 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
      v105 = [objc_opt_self() bundleForClass_];
      v128._object = 0xE000000000000000;
      v106._object = 0x80000001AEE348B0;
      v106._countAndFlagsBits = 0xD000000000000012;
      v107.value._countAndFlagsBits = 0x6E65736572706F43;
      v107.value._object = 0xEE0065726F436563;
      v108._countAndFlagsBits = 0;
      v108._object = 0xE000000000000000;
      v128._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v106, v107, v105, v108, v128);

      v113 = String.init(format:_:)();
      v27 = v109;
    }
  }

LABEL_18:
  type metadata accessor for ConversationManagerHost();
  v59 = swift_getObjCClassFromMetadata();
  v60 = *(v29 + 2792);
  v61 = objc_opt_self();
  v62 = [v61 v28[62]];
  v125._object = 0xE000000000000000;
  v63._object = 0x80000001AEE34A20;
  v63._countAndFlagsBits = 0xD000000000000012;
  v64.value._countAndFlagsBits = 0x6E65736572706F43;
  v64.value._object = 0xEE0065726F436563;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  v125._countAndFlagsBits = 0;
  v66 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, v64, v62, v65, v125);
  countAndFlagsBits = v66._countAndFlagsBits;
  object = v66._object;

  if (a5)
  {
    v69 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8);
    if (v69)
    {
      countAndFlagsBits = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone);
      v70 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8);

      object = v69;
    }
  }

  v71 = [v61 bundleForClass_];
  v126._object = 0xE000000000000000;
  v72._countAndFlagsBits = 0x4F465F5452415453;
  v72._object = 0xEC000000454D5F52;
  v73.value._countAndFlagsBits = 0x6E65736572706F43;
  v73.value._object = 0xEE0065726F436563;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  v126._countAndFlagsBits = 0;
  v75 = NSLocalizedString(_:tableName:bundle:value:comment:)(v72, v73, v71, v74, v126);

  v111 = object;
  if (a5 && (v76 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8)) != 0)
  {
    v77 = countAndFlagsBits;
    v110 = *(a5 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe);

    v112 = v76;
  }

  else
  {
    v77 = countAndFlagsBits;
    v110 = v75._countAndFlagsBits;
    v112 = v75._object;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  v79 = *MEMORY[0x1E69A60A8];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v81;
  *(inited + 48) = v115;
  *(inited + 56) = v116;
  v82 = *MEMORY[0x1E69A6088];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v83;
  *(inited + 120) = v80;
  *(inited + 96) = v113;
  *(inited + 104) = v27;
  v84 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v85 = swift_initStackObject();
  *(v85 + 16) = xmmword_1AEE09B00;
  v86 = *MEMORY[0x1E69A6078];
  *(v85 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v85 + 40) = v87;
  v88 = [v61 bundleForClass_];
  v127._object = 0xE000000000000000;
  v89._countAndFlagsBits = 0x4C45434E4143;
  v89._object = 0xE600000000000000;
  v90.value._countAndFlagsBits = 0x6E65736572706F43;
  v90.value._object = 0xEE0065726F436563;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  v127._countAndFlagsBits = 0;
  v92 = NSLocalizedString(_:tableName:bundle:value:comment:)(v89, v90, v88, v91, v127);

  *(v85 + 72) = v80;
  *(v85 + 48) = v92;
  v93 = *MEMORY[0x1E69A6068];
  *(v85 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v85 + 88) = v94;
  *(v85 + 96) = v77;
  *(v85 + 104) = v111;
  *(v85 + 120) = v80;
  *(v85 + 128) = 0xD000000000000022;
  *(v85 + 168) = MEMORY[0x1E69E6810];
  *(v85 + 136) = 0x80000001AEE2F710;
  *(v85 + 144) = 1;
  v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v85);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v119 = v84;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v95, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v119);

  v97 = v119;
  if (a4)
  {
    v98 = swift_initStackObject();
    *(v98 + 16) = xmmword_1AEE07B20;
    v99 = *MEMORY[0x1E69A6090];
    *(v98 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v98 + 72) = v80;
    *(v98 + 40) = v100;
    *(v98 + 48) = v110;
    *(v98 + 56) = v112;
    v101 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v98);
    swift_setDeallocating();
    outlined destroy of NSObject?(v98 + 32, &_sSS_yptMd, &_sSS_yptMR);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v97;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v101, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v102, &v119);

    return v119;
  }

  else
  {
  }

  return v97;
}

void specialized closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR___CPActivityAuthorizationManager_lock);
    v9 = Strong;

    os_unfair_lock_lock(*(v8 + 16));
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v10[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 0;
    }

    os_unfair_lock_unlock(*(v8 + 16));
  }

  if (a2)
  {
    a2 = _convertErrorToNSError(_:)();
  }

  (*(a4 + 16))(a4, a1 & 1, a2);
}

void specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(uint64_t a1, void *a2, void *a3, int a4, void *a5, char *a6, uint64_t a7, const void *a8)
{
  v179 = a6;
  v180._countAndFlagsBits = a1;
  LODWORD(v178) = a4;
  v180._object = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v174 = *(v12 - 8);
  v13 = *(v174 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v175 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v177 = &v158 - v15;
  v172 = type metadata accessor for UUID();
  v171 = *(v172 - 8);
  v16 = v171[8];
  MEMORY[0x1EEE9AC00](v172);
  v168 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v170 = *(v169 - 8);
  v18 = *(v170 + 64);
  v19 = MEMORY[0x1EEE9AC00](v169);
  v173 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v176 = &v158 - v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a8;
  v22 = swift_allocObject();
  v22[2] = a7;
  v22[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v181 = v22;
  v22[4] = v21;
  if (a5)
  {
    v23 = *((*MEMORY[0x1E69E7D40] & *a5) + 0x98);
    _Block_copy(a8);
    _Block_copy(a8);
    _Block_copy(a8);

    if ((v23(v24) & 1) == 0)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Log.default);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      v28 = os_log_type_enabled(v26, v27);
      countAndFlagsBits = v180._countAndFlagsBits;
      object = v180._object;
      v31 = v179;
      if (!v28)
      {
        goto LABEL_32;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, confirmReplacement override is set";
LABEL_31:
      _os_log_impl(&dword_1AEB26000, v26, v27, v33, v32, 2u);
      MEMORY[0x1B27120C0](v32, -1, -1);
LABEL_32:

      v157._countAndFlagsBits = countAndFlagsBits;
      v157._object = object;
      ActivityAuthorizationManager.setAuthorization(_:for:)(1, v157);
      if ((v178 & 1) == 0)
      {
LABEL_35:
        _Block_copy(a8);
        specialized closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(1, 0, a7, a8);
        _Block_release(a8);

        goto LABEL_36;
      }

      v42 = *&v31[OBJC_IVAR___CPActivityAuthorizationManager_lock];
      os_unfair_lock_lock(*(v42 + 16));
      swift_beginAccess();

      v43 = countAndFlagsBits;
      v44 = object;
LABEL_34:
      specialized Set._Variant.insert(_:)(v183, v43, v44);
      swift_endAccess();

      os_unfair_lock_unlock(*(v42 + 16));
      goto LABEL_35;
    }
  }

  else
  {
    _Block_copy(a8);
    _Block_copy(a8);
    _Block_copy(a8);
  }

  if ([objc_opt_self() supportsMultipleActivitySessions])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.default);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v179;
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1AEB26000, v35, v36, "Skipping prompt in confirmActivityAuthorizationIfNecessary, multiple activities supported", v39, 2u);
      MEMORY[0x1B27120C0](v39, -1, -1);
    }

    v41 = v180._countAndFlagsBits;
    v40 = v180._object;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v180);
    if ((v178 & 1) == 0)
    {
      goto LABEL_35;
    }

    v42 = *&v38[OBJC_IVAR___CPActivityAuthorizationManager_lock];
    os_unfair_lock_lock(*(v42 + 16));
    swift_beginAccess();

    v43 = v41;
    v44 = v40;
    goto LABEL_34;
  }

  if (!a3)
  {
LABEL_27:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v155 = type metadata accessor for Logger();
    __swift_project_value_buffer(v155, static Log.default);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v156 = os_log_type_enabled(v26, v27);
    countAndFlagsBits = v180._countAndFlagsBits;
    object = v180._object;
    v31 = v179;
    if (!v156)
    {
      goto LABEL_32;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, no representative activity session";
    goto LABEL_31;
  }

  v167 = v21;
  v45 = a3;
  v46 = [v45 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
  v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.max(by:)(v47);
  v49 = v48;

  if (!v49)
  {

    goto LABEL_27;
  }

  v166 = v45;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v162 = v13;
  v163 = a7;
  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Log.default);
  v51 = v49;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v55 = v49;
    v56 = v51;
    _os_log_impl(&dword_1AEB26000, v52, v53, "Prompting user to replace activity: %@", v54, 0xCu);
    outlined destroy of NSObject?(v55, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v55, -1, -1);
    MEMORY[0x1B27120C0](v54, -1, -1);
  }

  v161 = v18;

  v57 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v165 = v51;
  v58 = [v51 activity];
  v59 = [v58 metadata];

  if (v59 && (v60 = [v59 title], v59, v60))
  {
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v159 = v62;

    v63 = *MEMORY[0x1E69A60A8];
    v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
    type metadata accessor for ConversationManagerHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v160 = objc_opt_self();
    v67 = [v160 bundleForClass_];
    v68.value._object = 0xEE0065726F436563;
    v186._object = 0xE000000000000000;
    v69._countAndFlagsBits = 0xD000000000000015;
    v69._object = 0x80000001AEE347D0;
    v68.value._countAndFlagsBits = 0x6E65736572706F43;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    v186._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v68, v67, v70, v186);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1AEE07B20;
    v72 = MEMORY[0x1E69E6158];
    *(v71 + 56) = MEMORY[0x1E69E6158];
    *(v71 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v73 = v159;
    *(v71 + 32) = v61;
    *(v71 + 40) = v73;
    v74 = String.init(format:_:)();
    v76 = v75;

    v185 = v72;
    v184._countAndFlagsBits = v74;
    v184._object = v76;
    outlined init with take of Any(&v184, v183);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v182 = v57;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v183, v164, v65, isUniquelyReferenced_nonNull_native);

    v78 = v182;
    v79 = *MEMORY[0x1E69A6088];
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;
    v164 = ObjCClassFromMetadata;
    v83 = [v160 bundleForClass_];
    v187._object = 0xE000000000000000;
    v84._countAndFlagsBits = 0xD000000000000017;
    v84._object = 0x80000001AEE347F0;
    v85.value._countAndFlagsBits = 0x6E65736572706F43;
    v85.value._object = 0xEE0065726F436563;
    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    v187._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v84, v85, v83, v86, v187);

    v87 = String.init(format:_:)();
    v89 = v88;

    v185 = v72;
    v184._countAndFlagsBits = v87;
    v184._object = v89;
    outlined init with take of Any(&v184, v183);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v182 = v78;
    v91 = v80;
  }

  else
  {
    v92 = *MEMORY[0x1E69A60A8];
    v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v93;
    type metadata accessor for ConversationManagerHost();
    v94 = swift_getObjCClassFromMetadata();
    v95 = objc_opt_self();
    v164 = v94;
    v96 = [v95 bundleForClass_];
    v188._object = 0xE000000000000000;
    v97._countAndFlagsBits = 0xD000000000000016;
    v97._object = 0x80000001AEE34790;
    v98.value._countAndFlagsBits = 0x6E65736572706F43;
    v98.value._object = 0xEE0065726F436563;
    v99._countAndFlagsBits = 0;
    v99._object = 0xE000000000000000;
    v188._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v98, v96, v99, v188);

    v100 = String.init(format:_:)();
    v102 = v101;

    v72 = MEMORY[0x1E69E6158];
    v185 = MEMORY[0x1E69E6158];
    v184._countAndFlagsBits = v100;
    v184._object = v102;
    outlined init with take of Any(&v184, v183);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v182 = v57;
    v91 = v160;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v183, v91, v82, v90);

  v103 = v182;
  v104 = *MEMORY[0x1E69A6078];
  v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v105;
  type metadata accessor for ConversationManagerHost();
  v160 = objc_opt_self();
  v107 = [v160 bundleForClass_];
  v189._object = 0xE000000000000000;
  v108._object = 0x80000001AEE347B0;
  v108._countAndFlagsBits = 0xD000000000000010;
  v109.value._countAndFlagsBits = 0x6E65736572706F43;
  v109.value._object = 0xEE0065726F436563;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v189._countAndFlagsBits = 0;
  v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v108, v109, v107, v110, v189);

  v185 = v72;
  v184 = v111;
  outlined init with take of Any(&v184, v183);
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v182 = v103;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v183, v159, v106, v112);

  v113 = v182;
  v114 = *MEMORY[0x1E69A6068];
  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v117 = v116;
  v118 = [v160 bundleForClass_];
  v190._object = 0xE000000000000000;
  v119._countAndFlagsBits = 0x4C45434E4143;
  v119._object = 0xE600000000000000;
  v120.value._countAndFlagsBits = 0x6E65736572706F43;
  v120.value._object = 0xEE0065726F436563;
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  v190._countAndFlagsBits = 0;
  v122 = NSLocalizedString(_:tableName:bundle:value:comment:)(v119, v120, v118, v121, v190);

  v185 = v72;
  v184 = v122;
  outlined init with take of Any(&v184, v183);
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v182 = v113;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v183, v115, v117, v123);

  v164 = v182;
  LOBYTE(v184._countAndFlagsBits) = 11;
  v124 = v180._object;

  v125 = v176;
  v126 = v180._countAndFlagsBits;
  specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)(&v184, v180._countAndFlagsBits, v124);
  v127 = [v166 groupUUID];
  v128 = v168;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v129 = v172;
  v184._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v184._object = v130;
  v131 = v171[1];
  v131(v128, v129);
  MEMORY[0x1B2710020](46, 0xE100000000000000);
  v132 = [v165 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v133 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v133);

  v131(v128, v129);
  v171 = v184._object;
  v172 = v184._countAndFlagsBits;
  v134 = v177;
  outlined init with copy of SharePlayLatencyLogger.Interval(v125, v177);
  v135 = v170 + 56;
  (*(v170 + 56))(v134, 0, 1, v169);
  v136 = v173;
  outlined init with copy of SharePlayLatencyLogger.Interval(v125, v173);
  v137 = (*(v135 + 24) + 16) & ~*(v135 + 24);
  v138 = (v161 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
  v139 = (v138 + 39) & 0xFFFFFFFFFFFFFFF8;
  v140 = swift_allocObject();
  outlined init with take of SharePlayLatencyLogger.Interval(v136, v140 + v137);
  v141 = v179;
  *(v140 + v138) = v179;
  v142 = v140 + ((v138 + 15) & 0xFFFFFFFFFFFFFFF8);
  v143 = v180._object;
  *v142 = v126;
  *(v142 + 8) = v143;
  *(v142 + 16) = v178 & 1;
  v144 = (v140 + v139);
  v145 = v181;
  *v144 = closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
  v144[1] = v145;
  v146 = *&v141[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
  v173 = *&v141[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
  v178 = __swift_project_boxed_opaque_existential_1(&v141[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v173);
  v147 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v148 = v175;
  outlined init with copy of SharePlayLatencyLogger.Interval?(v134, v175);
  v149 = (*(v174 + 80) + 24) & ~*(v174 + 80);
  v150 = (v162 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
  v151 = swift_allocObject();
  *(v151 + 16) = v147;
  outlined init with take of SharePlayLatencyLogger.Interval?(v148, v151 + v149);
  v152 = (v151 + v150);
  *v152 = partial apply for closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:);
  v152[1] = v140;
  v153 = *(v146 + 8);

  v154 = v141;

  v153(v172, v171, v180._countAndFlagsBits, v143, v164, 1, closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)partial apply, v151, v173, v146);

  outlined destroy of NSObject?(v177, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  outlined destroy of SharePlayLatencyLogger.Interval(v176);

LABEL_36:

  _Block_release(a8);
  _Block_release(a8);
}

void specialized ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5, _BYTE *a6, void (**a7)(void, void, void))
{
  LODWORD(v131) = a3;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v133 = swift_allocObject();
  *(v133 + 16) = a7;
  v18 = *&a6[OBJC_IVAR___CPActivityAuthorizationManager_queue];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  _Block_copy(a7);
  _Block_copy(a7);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v20 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE09B00;
  v22 = *MEMORY[0x1E69D8DD0];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v23;
  v24 = *MEMORY[0x1E69D8DA8];
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v25;
  v26 = *MEMORY[0x1E69D8DC8];
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v27;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    a7[2](a7, 0, 0);

    goto LABEL_33;
  }

  v132 = [Strong activityAuthorizationStatePresentAlertIfIncapable_];
  v29 = [v132 isSharePlayCapable];
  if ((v29 & 1) == 0)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    if (one-time initialization token for host == -1)
    {
LABEL_12:
      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Log.host);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1AEB26000, v40, v41, "At least one of the active participants is on an older SharePlay protocol version. Not allowing SharePlay", v42, 2u);
        MEMORY[0x1B27120C0](v42, -1, -1);
      }

      a7[2](a7, 0, 0);
      goto LABEL_15;
    }

LABEL_63:
    swift_once();
    goto LABEL_12;
  }

  v130 = a1;
  v135 = a1;
  v136 = a2;
  MEMORY[0x1EEE9AC00](v29);
  *(&v120 - 2) = &v135;
  v30 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v120 - 4), inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v30)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Log.host);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 136315138;
      v134 = v35;
      v135 = v130;
      v136 = a2;

      v36 = String.init<A>(reflecting:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v134);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1AEB26000, v32, v33, "Bypassing user authorization for activity started from %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1B27120C0](v35, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    a7[2](a7, 1, 0);
LABEL_15:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v43 = v132;
  v129 = [v132 activeConversation];
  if (([v43 hasActiveActivitySessionContainer] & 1) == 0)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Log.host);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v135 = v52;
      *v51 = 136315138;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, a2, &v135);
      _os_log_impl(&dword_1AEB26000, v49, v50, "Not allowing activation from %s because there is no active conversation or call.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x1B27120C0](v52, -1, -1);
      MEMORY[0x1B27120C0](v51, -1, -1);
    }

    a7[2](a7, 0, 0);
    goto LABEL_32;
  }

  v44 = *&a6[OBJC_IVAR___CPActivityAuthorizationManager_lock];
  os_unfair_lock_lock(*(v44 + 16));
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v130, a2);
  v46 = v45;
  swift_endAccess();
  if (v46)
  {

    os_unfair_lock_unlock(*(v44 + 16));
    v47 = a4;
    if ((v131 & 1) == 0)
    {
      a7[2](a7, 1, 0);
LABEL_32:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_33;
    }
  }

  else
  {
    os_unfair_lock_unlock(*(v44 + 16));
    v47 = a4;
  }

  os_unfair_lock_lock(*(v44 + 16));
  v53 = a6[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest];
  a6[OBJC_IVAR___CPActivityAuthorizationManager_isDisplayingAuthorizationRequest] = 1;
  os_unfair_lock_unlock(*(v44 + 16));
  if (v53 == 1)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Log.host);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v135 = v58;
      *v57 = 136315138;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, a2, &v135);
      _os_log_impl(&dword_1AEB26000, v55, v56, "Not allowing activation from %s because an authorization prompt is already being displayed", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1B27120C0](v58, -1, -1);
      MEMORY[0x1B27120C0](v57, -1, -1);
    }

    lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError();
    v59 = swift_allocError();
    *v60 = 3;
    v61 = _convertErrorToNSError(_:)();
    (a7)[2](a7, 0, v61);

    goto LABEL_32;
  }

  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = swift_allocObject();
  v63[2] = v62;
  v63[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v128 = v63;
  v63[4] = v133;
  v64 = 2;
  swift_retain_n();
  v127 = v62;

  if (v129)
  {
    v66 = v129;
    v67 = TUConversation.hasLocalActivitySession(forBundleIdentifier:)(v130, a2);

    v64 = v67 & 1;
  }

  v68 = MEMORY[0x1E69E7D40];
  if (v47)
  {
    (*((*MEMORY[0x1E69E7D40] & *v47) + 0x80))(&v135, v65);
    if (v135)
    {
      if (v135 == 1)
      {
        goto LABEL_39;
      }

      if (v64 == 2)
      {
        v79 = swift_allocObject();
        v80 = v128;
        v81 = v129;
        *(v79 + 16) = closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
        *(v79 + 24) = v80;
        v82 = v130;
        *(v79 + 32) = a6;
        *(v79 + 40) = v82;
        *(v79 + 48) = a2;
        *(v79 + 56) = v81;
        v83 = v131 & 1;
        *(v79 + 64) = v131 & 1;
        *(v79 + 72) = v20;
        *(v79 + 80) = v47;
        swift_unknownObjectRetain();

        v84 = v81;
        v85 = v47;
        v86 = v84;
        v87 = v85;

        v88 = a6;
        ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(v82, a2, v129, v83, v85, closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply, v79);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_60:

        goto LABEL_61;
      }

      if ((v64 & 1) == 0)
      {
LABEL_39:
        if (one-time initialization token for host != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        __swift_project_value_buffer(v69, static Log.host);

        v70 = v47;
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.default.getter();

        v73 = os_log_type_enabled(v71, v72);
        v126 = v47;
        v125 = v70;
        if (v73)
        {
          v122 = v72;
          v123 = v71;
          v74 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v135 = v121;
          *v74 = 136315650;
          (*((*MEMORY[0x1E69E7D40] & *v70) + 0x80))(&v134);
          v75 = String.init<A>(reflecting:)();
          v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v135);

          *(v74 + 4) = v124;
          *(v74 + 12) = 2080;
          *(v74 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, a2, &v135);
          v124 = v74;
          *(v74 + 22) = 2080;
          if (v64 == 2)
          {
            v77 = 0xE300000000000000;
            v78 = 7104878;
          }

          else
          {
            LOBYTE(v134) = v64;
            v78 = String.init<A>(reflecting:)();
            v77 = v107;
          }

          v108 = v123;
          v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v77, &v135);

          v110 = v124;
          *(v124 + 24) = v109;
          _os_log_impl(&dword_1AEB26000, v108, v122, "Prompting to start activity due to override %s; bundleID %s has existing session? %s", v110, 0x20u);
          v111 = v121;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v111, -1, -1);
          MEMORY[0x1B27120C0](v110, -1, -1);
        }

        else
        {
        }

        v112 = swift_allocObject();
        v113 = v128;
        v114 = v129;
        *(v112 + 16) = closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
        *(v112 + 24) = v113;
        v115 = v130;
        *(v112 + 32) = a6;
        *(v112 + 40) = v115;
        *(v112 + 48) = a2;
        *(v112 + 56) = v114;
        v116 = v131 & 1;
        *(v112 + 64) = v116;
        *(v112 + 72) = v20;
        v117 = v126;
        *(v112 + 80) = v126;
        swift_unknownObjectRetain();

        v86 = v114;
        v118 = v125;

        v119 = a6;
        ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(v115, a2, v129, v116, v117, closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply, v112);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_60;
      }
    }
  }

  v89 = *((*v68 & **&a6[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager]) + 0x150);
  v90 = v130;
  if ((v89(v130, a2) & 1) == 0 || ![*&a6[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] sharePlaySupported])
  {
    v98 = swift_allocObject();
    v99 = v128;
    *(v98 + 16) = closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
    *(v98 + 24) = v99;
    *(v98 + 32) = a6;
    *(v98 + 40) = v90;
    v100 = v47;
    v101 = v129;
    *(v98 + 48) = a2;
    *(v98 + 56) = v101;
    v102 = v131 & 1;
    *(v98 + 64) = v131 & 1;
    *(v98 + 72) = v20;
    *(v98 + 80) = v100;
    swift_unknownObjectRetain();

    v131 = v101;
    v103 = v100;

    v104 = a6;
    ActivityAuthorizationManager.deferAuthorizationRequestToUser(forApplicationWithBundleIdentifier:onConversation:preparing:overrides:completionHandler:)(v90, a2, v101, v102, v100, closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply, v98);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_61:

    goto LABEL_33;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  __swift_project_value_buffer(v91, static Log.host);

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v135 = v95;
    *v94 = 136315138;
    *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, a2, &v135);
    _os_log_impl(&dword_1AEB26000, v92, v93, "Skipping confirmation prompt as sharing is enabled for: %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    MEMORY[0x1B27120C0](v95, -1, -1);
    v96 = v94;
    v47 = a4;
    v97 = v130;
    MEMORY[0x1B27120C0](v96, -1, -1);
  }

  else
  {

    v97 = v130;
  }

  _Block_copy(a7);

  v105 = v127;

  v106 = v129;
  specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(v97, a2, v129, v131 & 1, v47, a6, v105, a7);
  _Block_release(a7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_33:
  _Block_release(a7);
}

uint64_t specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(uint64_t a1, void *a2, void *a3, int a4, void *a5, char *a6, uint64_t a7, uint64_t (*a8)(void, uint64_t), uint64_t a9)
{
  v181 = a6;
  v182 = a2;
  LODWORD(v180) = a4;
  v183 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v175 = *(v13 - 8);
  v14 = *(v175 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v176 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v178 = &v163 - v16;
  countAndFlagsBits = type metadata accessor for UUID();
  object = *(countAndFlagsBits - 8);
  v17 = object[8];
  MEMORY[0x1EEE9AC00](countAndFlagsBits);
  v169 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v171 = *(v170 - 8);
  v19 = *(v171 + 64);
  v20 = MEMORY[0x1EEE9AC00](v170);
  v174 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v177 = &v163 - v21;
  v22 = swift_allocObject();
  v22[2] = a7;
  v22[3] = a8;
  v179 = v22;
  v22[4] = a9;
  if (a5)
  {
    v23 = *((*MEMORY[0x1E69E7D40] & *a5) + 0x98);

    if ((v23(v24) & 1) == 0)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Log.default);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v182;
      v30 = v183;
      v31 = v181;
      if (!v28)
      {
        goto LABEL_32;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, confirmReplacement override is set";
LABEL_31:
      _os_log_impl(&dword_1AEB26000, v26, v27, v33, v32, 2u);
      MEMORY[0x1B27120C0](v32, -1, -1);
LABEL_32:

      v161._countAndFlagsBits = v30;
      v161._object = v29;
      ActivityAuthorizationManager.setAuthorization(_:for:)(1, v161);
      if ((v180 & 1) == 0)
      {
LABEL_35:
        closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(1, 0, a7, a8);
      }

      v41 = *&v31[OBJC_IVAR___CPActivityAuthorizationManager_lock];
      os_unfair_lock_lock(*(v41 + 16));
      swift_beginAccess();

LABEL_34:
      specialized Set._Variant.insert(_:)(v185, v30, v29);
      swift_endAccess();

      os_unfair_lock_unlock(*(v41 + 16));
      goto LABEL_35;
    }
  }

  else
  {
  }

  if ([objc_opt_self() supportsMultipleActivitySessions])
  {
    v34 = v181;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.default);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v29 = v182;
    v30 = v183;
    if (v38)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1AEB26000, v36, v37, "Skipping prompt in confirmActivityAuthorizationIfNecessary, multiple activities supported", v39, 2u);
      MEMORY[0x1B27120C0](v39, -1, -1);
    }

    v40._countAndFlagsBits = v30;
    v40._object = v29;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v40);
    if ((v180 & 1) == 0)
    {
      goto LABEL_35;
    }

    v41 = *&v34[OBJC_IVAR___CPActivityAuthorizationManager_lock];
    os_unfair_lock_lock(*(v41 + 16));
    swift_beginAccess();

    goto LABEL_34;
  }

  if (!a3)
  {
LABEL_27:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v159 = type metadata accessor for Logger();
    __swift_project_value_buffer(v159, static Log.default);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v160 = os_log_type_enabled(v26, v27);
    v29 = v182;
    v30 = v183;
    v31 = v181;
    if (!v160)
    {
      goto LABEL_32;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, no representative activity session";
    goto LABEL_31;
  }

  v42 = a3;
  v43 = [v42 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
  v44 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.max(by:)(v44);
  v46 = v45;

  if (!v46)
  {

    goto LABEL_27;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Log.default);
  v48 = v46;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    *(v51 + 4) = v48;
    *v52 = v46;
    v53 = v48;
    _os_log_impl(&dword_1AEB26000, v49, v50, "Prompting user to replace activity: %@", v51, 0xCu);
    outlined destroy of NSObject?(v52, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v52, -1, -1);
    MEMORY[0x1B27120C0](v51, -1, -1);
  }

  v168 = v42;

  v165 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v167 = v48;
  v54 = [v48 activity];
  v55 = [v54 metadata];

  if (v55 && (v56 = [v55 title], v55, v56))
  {
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v164 = v58;

    v59 = *MEMORY[0x1E69A60A8];
    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
    type metadata accessor for ConversationManagerHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v63 = objc_opt_self();
    v64 = [v63 &selRef:ObjCClassFromMetadata sendMessageWithDictionary:? error:? + 3];
    v188._object = 0xE000000000000000;
    v65._countAndFlagsBits = 0xD000000000000015;
    v65._object = 0x80000001AEE347D0;
    v66.value._countAndFlagsBits = 0x6E65736572706F43;
    v66.value._object = 0xEE0065726F436563;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v188._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v65, v66, v64, v67, v188);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1AEE07B20;
    v69 = MEMORY[0x1E69E6158];
    *(v68 + 56) = MEMORY[0x1E69E6158];
    *(v68 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v70 = v164;
    *(v68 + 32) = v57;
    *(v68 + 40) = v70;
    v71 = String.init(format:_:)();
    v73 = v72;

    v187 = v69;
    v186._countAndFlagsBits = v71;
    v186._object = v73;
    outlined init with take of Any(&v186, v185);
    v74 = v165;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v184 = v74;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v185, v166, v61, isUniquelyReferenced_nonNull_native);

    v76 = v184;
    v77 = *MEMORY[0x1E69A6088];
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;
    v166 = ObjCClassFromMetadata;
    v81 = [v63 bundleForClass_];
    v189._object = 0xE000000000000000;
    v82._countAndFlagsBits = 0xD000000000000017;
    v82._object = 0x80000001AEE347F0;
    v83.value._countAndFlagsBits = 0x6E65736572706F43;
    v83.value._object = 0xEE0065726F436563;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    v189._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v83, v81, v84, v189);

    v85 = String.init(format:_:)();
    v87 = v86;

    v187 = MEMORY[0x1E69E6158];
    v186._countAndFlagsBits = v85;
    v186._object = v87;
    outlined init with take of Any(&v186, v185);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v184 = v76;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v185, v78, v80, v88);
  }

  else
  {
    v89 = *MEMORY[0x1E69A60A8];
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;
    type metadata accessor for ConversationManagerHost();
    v93 = swift_getObjCClassFromMetadata();
    v94 = objc_opt_self();
    v166 = v93;
    v95 = [v94 bundleForClass_];
    v190._object = 0xE000000000000000;
    v96._countAndFlagsBits = 0xD000000000000016;
    v96._object = 0x80000001AEE34790;
    v97.value._countAndFlagsBits = 0x6E65736572706F43;
    v97.value._object = 0xEE0065726F436563;
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    v190._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v96, v97, v95, v98, v190);

    v99 = String.init(format:_:)();
    v101 = v100;

    v187 = MEMORY[0x1E69E6158];
    v186._countAndFlagsBits = v99;
    v186._object = v101;
    outlined init with take of Any(&v186, v185);
    v102 = v165;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v184 = v102;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v185, v90, v92, v103);
  }

  v104 = v184;
  v105 = *MEMORY[0x1E69A6078];
  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v107;
  type metadata accessor for ConversationManagerHost();
  v109 = objc_opt_self();
  v110 = v166;
  v111 = [v109 bundleForClass_];
  v191._object = 0xE000000000000000;
  v112._object = 0x80000001AEE347B0;
  v112._countAndFlagsBits = 0xD000000000000010;
  v113.value._countAndFlagsBits = 0x6E65736572706F43;
  v113.value._object = 0xEE0065726F436563;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v191._countAndFlagsBits = 0;
  v115 = NSLocalizedString(_:tableName:bundle:value:comment:)(v112, v113, v111, v114, v191);

  v116 = MEMORY[0x1E69E6158];
  v187 = MEMORY[0x1E69E6158];
  v186 = v115;
  outlined init with take of Any(&v186, v185);
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v184 = v104;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v185, v106, v108, v117);

  v118 = v184;
  v119 = *MEMORY[0x1E69A6068];
  v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v122 = v121;
  v123 = [v109 bundleForClass_];
  v192._object = 0xE000000000000000;
  v124._countAndFlagsBits = 0x4C45434E4143;
  v124._object = 0xE600000000000000;
  v125.value._countAndFlagsBits = 0x6E65736572706F43;
  v125.value._object = 0xEE0065726F436563;
  v126._countAndFlagsBits = 0;
  v126._object = 0xE000000000000000;
  v192._countAndFlagsBits = 0;
  v127 = NSLocalizedString(_:tableName:bundle:value:comment:)(v124, v125, v123, v126, v192);

  v187 = v116;
  v186 = v127;
  outlined init with take of Any(&v186, v185);
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v184 = v118;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v185, v120, v122, v128);

  v166 = v184;
  LOBYTE(v186._countAndFlagsBits) = 11;
  v129 = v182;

  v130 = v177;
  specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)(&v186, v183, v129);
  v131 = [v168 groupUUID];
  v132 = v169;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v133 = countAndFlagsBits;
  v186._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v186._object = v134;
  v135 = object[1];
  v135(v132, v133);
  MEMORY[0x1B2710020](46, 0xE100000000000000);
  v136 = [v167 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v137 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v137);

  v135(v132, v133);
  object = v186._object;
  countAndFlagsBits = v186._countAndFlagsBits;
  v138 = v178;
  outlined init with copy of SharePlayLatencyLogger.Interval(v130, v178);
  v139 = v171 + 56;
  (*(v171 + 56))(v138, 0, 1, v170);
  v140 = v174;
  outlined init with copy of SharePlayLatencyLogger.Interval(v130, v174);
  v141 = (*(v139 + 24) + 16) & ~*(v139 + 24);
  v142 = (v19 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v143 = swift_allocObject();
  outlined init with take of SharePlayLatencyLogger.Interval(v140, v143 + v141);
  v145 = v181;
  v144 = v182;
  *(v143 + v142) = v181;
  v146 = v143 + ((v142 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v146 = v183;
  *(v146 + 8) = v144;
  *(v146 + 16) = v180 & 1;
  v147 = (v143 + ((v142 + 39) & 0xFFFFFFFFFFFFFFF8));
  v148 = v179;
  *v147 = closure #3 in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)partial apply;
  v147[1] = v148;
  v149 = *&v145[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
  v174 = *&v145[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
  v180 = __swift_project_boxed_opaque_existential_1(&v145[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v174);
  v150 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v151 = v138;
  v152 = v176;
  outlined init with copy of SharePlayLatencyLogger.Interval?(v151, v176);
  v153 = (*(v175 + 80) + 24) & ~*(v175 + 80);
  v154 = (v14 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
  v155 = swift_allocObject();
  *(v155 + 16) = v150;
  outlined init with take of SharePlayLatencyLogger.Interval?(v152, v155 + v153);
  v156 = (v155 + v154);
  *v156 = closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)partial apply;
  v156[1] = v143;
  v157 = *(v149 + 8);

  v158 = v145;

  v157(countAndFlagsBits, object, v183, v144, v166, 1, closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)partial apply, v155, v174, v149);

  outlined destroy of NSObject?(v178, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  outlined destroy of SharePlayLatencyLogger.Interval(v177);
}

unint64_t lazy protocol witness table accessor for type ActivityAuthorizationError and conformance ActivityAuthorizationError()
{
  result = lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError;
  if (!lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError;
  if (!lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityAuthorizationError and conformance ActivityAuthorizationError);
  }

  return result;
}

uint64_t specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(uint64_t a1, void *a2, void *a3, int a4, void *a5, uint64_t (*a6)(uint64_t, void), uint64_t a7)
{
  v8 = v7;
  v172 = a7;
  LODWORD(v171) = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v167 = *(v14 - 8);
  v15 = *(v167 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v168 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v170 = &v150 - v17;
  v18 = type metadata accessor for UUID();
  object = *(v18 - 8);
  countAndFlagsBits = v18;
  v19 = object[8];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v23 = *(v22 - 8);
  v163 = v22;
  v164 = v23;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v169 = &v150 - v27;
  if (a5 && ((*((*MEMORY[0x1E69E7D40] & *a5) + 0x98))(v26) & 1) == 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Log.default);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_29;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, confirmReplacement override is set";
    goto LABEL_28;
  }

  if ([objc_opt_self() supportsMultipleActivitySessions])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.default);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_29;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, multiple activities supported";
LABEL_28:
    _os_log_impl(&dword_1AEB26000, v29, v30, v32, v31, 2u);
    MEMORY[0x1B27120C0](v31, -1, -1);
LABEL_29:

    v148._countAndFlagsBits = a1;
    v148._object = a2;
    ActivityAuthorizationManager.setAuthorization(_:for:)(1, v148);
    if (v171)
    {
      v149 = *&v8[OBJC_IVAR___CPActivityAuthorizationManager_lock];
      os_unfair_lock_lock(*(v149 + 16));
      swift_beginAccess();

      specialized Set._Variant.insert(_:)(v174, a1, a2);
      swift_endAccess();

      os_unfair_lock_unlock(*(v149 + 16));
    }

    return a6(1, 0);
  }

  if (!a3)
  {
LABEL_24:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v147 = type metadata accessor for Logger();
    __swift_project_value_buffer(v147, static Log.default);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_29;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Skipping prompt in confirmActivityAuthorizationIfNecessary, no representative activity session";
    goto LABEL_28;
  }

  v157 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v8;
  v33 = a3;
  v34 = [v33 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject();
  v35 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.max(by:)(v35);
  v37 = v36;

  if (!v37)
  {

    v8 = v162;
    goto LABEL_24;
  }

  v159 = v33;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v156 = a6;
  v160 = a1;
  v161 = a2;
  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Log.default);
  v39 = v37;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v39;
    *v43 = v37;
    v44 = v39;
    _os_log_impl(&dword_1AEB26000, v40, v41, "Prompting user to replace activity: %@", v42, 0xCu);
    outlined destroy of NSObject?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v43, -1, -1);
    MEMORY[0x1B27120C0](v42, -1, -1);
  }

  v155 = v21;

  v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v158 = v39;
  v46 = [v39 activity];
  v47 = [v46 metadata];

  v48 = 0x1E696A000uLL;
  v154 = v15;
  if (v47 && (v49 = [v47 title], v47, v49))
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v151 = v51;

    v52 = *MEMORY[0x1E69A60A8];
    v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
    type metadata accessor for ConversationManagerHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v152 = objc_opt_self();
    v56 = [v152 bundleForClass_];
    v177._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0xD000000000000015;
    v57._object = 0x80000001AEE347D0;
    v58.value._countAndFlagsBits = 0x6E65736572706F43;
    v58.value._object = 0xEE0065726F436563;
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    v177._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v177);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1AEE07B20;
    v61 = MEMORY[0x1E69E6158];
    *(v60 + 56) = MEMORY[0x1E69E6158];
    *(v60 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v62 = v151;
    *(v60 + 32) = v50;
    *(v60 + 40) = v62;
    v63 = String.init(format:_:)();
    v65 = v64;

    v176 = v61;
    v175._countAndFlagsBits = v63;
    v175._object = v65;
    outlined init with take of Any(&v175, v174);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v173 = v45;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v174, v153, v54, isUniquelyReferenced_nonNull_native);

    v67 = v173;
    v68 = *MEMORY[0x1E69A6088];
    v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;
    v71 = ObjCClassFromMetadata;
    v72 = ObjCClassFromMetadata;
    v48 = 0x1E696A000;
    v73 = [v152 bundleForClass_];
    v178._object = 0xE000000000000000;
    v74._countAndFlagsBits = 0xD000000000000017;
    v74._object = 0x80000001AEE347F0;
    v75.value._countAndFlagsBits = 0x6E65736572706F43;
    v75.value._object = 0xEE0065726F436563;
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    v178._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v75, v73, v76, v178);

    v77 = String.init(format:_:)();
    v79 = v78;

    v176 = v61;
    v175._countAndFlagsBits = v77;
    v175._object = v79;
    outlined init with take of Any(&v175, v174);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v67;
    v81 = v153;
  }

  else
  {
    v83 = *MEMORY[0x1E69A60A8];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v85;
    type metadata accessor for ConversationManagerHost();
    v71 = swift_getObjCClassFromMetadata();
    v86 = [objc_opt_self() &selRef:v71 sendMessageWithDictionary:? error:? + 3];
    v179._object = 0xE000000000000000;
    v87._countAndFlagsBits = 0xD000000000000016;
    v87._object = 0x80000001AEE34790;
    v88.value._countAndFlagsBits = 0x6E65736572706F43;
    v88.value._object = 0xEE0065726F436563;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    v179._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, v86, v89, v179);

    v90 = String.init(format:_:)();
    v92 = v91;

    v176 = MEMORY[0x1E69E6158];
    v175._countAndFlagsBits = v90;
    v175._object = v92;
    outlined init with take of Any(&v175, v174);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v45;
    v81 = v84;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v174, v81, v70, v80);

  v93 = v173;
  v94 = *MEMORY[0x1E69A6078];
  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v95;
  type metadata accessor for ConversationManagerHost();
  v97 = *(v48 + 2792);
  v153 = objc_opt_self();
  v98 = [v153 bundleForClass_];
  v180._object = 0xE000000000000000;
  v99._object = 0x80000001AEE347B0;
  v99._countAndFlagsBits = 0xD000000000000010;
  v100.value._countAndFlagsBits = 0x6E65736572706F43;
  v100.value._object = 0xEE0065726F436563;
  v101._countAndFlagsBits = 0;
  v101._object = 0xE000000000000000;
  v180._countAndFlagsBits = 0;
  v102 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, v100, v98, v101, v180);

  v103 = MEMORY[0x1E69E6158];
  v176 = MEMORY[0x1E69E6158];
  v175 = v102;
  outlined init with take of Any(&v175, v174);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v93;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v174, v152, v96, v104);

  v105 = v173;
  v106 = *MEMORY[0x1E69A6068];
  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v108 = v107;
  v109 = [v153 bundleForClass_];
  v181._object = 0xE000000000000000;
  v110._countAndFlagsBits = 0x4C45434E4143;
  v110._object = 0xE600000000000000;
  v111.value._countAndFlagsBits = 0x6E65736572706F43;
  v111.value._object = 0xEE0065726F436563;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v181._countAndFlagsBits = 0;
  v113 = NSLocalizedString(_:tableName:bundle:value:comment:)(v110, v111, v109, v112, v181);

  v176 = v103;
  v175 = v113;
  outlined init with take of Any(&v175, v174);
  v114 = swift_isUniquelyReferenced_nonNull_native();
  v173 = v105;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v174, v152, v108, v114);

  v153 = v173;
  LOBYTE(v175._countAndFlagsBits) = 11;
  v115 = v161;

  v116 = v169;
  v117 = v160;
  specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)(&v175, v160, v115);
  v118 = [v159 groupUUID];
  v119 = v155;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v120 = countAndFlagsBits;
  v175._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v175._object = v121;
  v122 = object[1];
  v122(v119, v120);
  MEMORY[0x1B2710020](46, 0xE100000000000000);
  v123 = [v158 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v124 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v124);

  v122(v119, v120);
  object = v175._object;
  countAndFlagsBits = v175._countAndFlagsBits;
  v125 = v170;
  outlined init with copy of SharePlayLatencyLogger.Interval(v116, v170);
  v126 = v164 + 56;
  (*(v164 + 56))(v125, 0, 1, v163);
  v127 = v157;
  outlined init with copy of SharePlayLatencyLogger.Interval(v116, v157);
  v128 = (*(v126 + 24) + 16) & ~*(v126 + 24);
  v129 = (v24 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = swift_allocObject();
  outlined init with take of SharePlayLatencyLogger.Interval(v127, v130 + v128);
  v131 = v162;
  *(v130 + v129) = v162;
  v132 = v130 + ((v129 + 15) & 0xFFFFFFFFFFFFFFF8);
  v133 = v161;
  *v132 = v117;
  *(v132 + 8) = v133;
  *(v132 + 16) = v171 & 1;
  v134 = (v130 + ((v129 + 39) & 0xFFFFFFFFFFFFFFF8));
  v135 = v172;
  *v134 = v156;
  v134[1] = v135;
  v136 = *&v131[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
  v164 = *&v131[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
  v171 = __swift_project_boxed_opaque_existential_1(&v131[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v164);
  v137 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v138 = v125;
  v139 = v168;
  outlined init with copy of SharePlayLatencyLogger.Interval?(v138, v168);
  v140 = (*(v167 + 80) + 24) & ~*(v167 + 80);
  v141 = (v154 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
  v142 = swift_allocObject();
  *(v142 + 16) = v137;
  outlined init with take of SharePlayLatencyLogger.Interval?(v139, v142 + v140);
  v143 = (v142 + v141);
  *v143 = closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)partial apply;
  v143[1] = v130;
  v144 = *(v136 + 8);

  v145 = v131;

  v144(countAndFlagsBits, object, v160, v133, v153, 1, closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)partial apply, v142, v164, v136);

  outlined destroy of NSObject?(v170, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  outlined destroy of SharePlayLatencyLogger.Interval(v169);
}

uint64_t outlined init with copy of SharePlayLatencyLogger.Interval(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SharePlayLatencyLogger.Interval(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SharePlayLatencyLogger.Interval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SharePlayLatencyLogger.Interval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SharePlayLatencyLogger.Interval(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized ActivityAuthorizationManager.requestAuthorizationForApplicationLaunch(withActivity:completionHandler:)(void *a1, char *a2, void (**a3)(void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v89 = *(v6 - 8);
  v7 = *(v89 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v78 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v12 = &v78 - v11;
  v13 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  v14 = *(v13 - 8);
  v86 = v13;
  v87 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v88 = (&v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v78 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = swift_allocObject();
  *(v93 + 16) = a3;
  v23 = *&a2[OBJC_IVAR___CPActivityAuthorizationManager_queue];
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  _Block_copy(a3);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v25 = [a1 bundleIdentifier];
  if (!v25)
  {
    if (one-time initialization token for host == -1)
    {
LABEL_13:
      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Log.host);
      v40 = a1;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v40;
        *v44 = v40;
        v45 = v40;
        _os_log_impl(&dword_1AEB26000, v41, v42, "Invalid bundleIdentifier for activity %@", v43, 0xCu);
        outlined destroy of NSObject?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27120C0](v44, -1, -1);
        MEMORY[0x1B27120C0](v43, -1, -1);
      }

      goto LABEL_17;
    }

LABEL_31:
    swift_once();
    goto LABEL_13;
  }

  v81 = a1;
  v26 = v25;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_17:
    a3[2](a3, 0, 0);
LABEL_18:

    return;
  }

  v31 = Strong;
  v84 = v27;
  v32 = [Strong activityAuthorizationStatePresentAlertIfIncapable_];
  v33 = [v32 activeConversation];
  v82 = v32;
  v83 = v33;
  if (([v32 hasActiveActivitySessionContainer] & 1) == 0)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Log.host);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v94 = v50;
      *v49 = 136315138;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v29, &v94);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_1AEB26000, v47, v48, "Not allowing activation from %s because there is no active conversation or call.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1B27120C0](v50, -1, -1);
      MEMORY[0x1B27120C0](v49, -1, -1);
    }

    else
    {
    }

    a3[2](a3, 0, 0);

    goto LABEL_27;
  }

  v80 = v31;
  v34 = v84;
  if (((*((*MEMORY[0x1E69E7D40] & **&a2[OBJC_IVAR___CPActivityAuthorizationManager_appPolicyManager]) + 0x150))(v84, v29) & 1) == 0 || ![*&a2[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager] sharePlaySupported])
  {
    LOBYTE(v94) = 10;

    specialized static SharePlayLatencyLogger.beginInterval(for:activityIdentifier:)(&v94, v34, v29);
    v94 = 0;
    v95 = 0xE000000000000000;
    v52 = v83;
    if (v83)
    {
      v53 = [v83 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    v55 = type metadata accessor for UUID();
    (*(*(v55 - 8) + 56))(v12, v54, 1, v55);
    v56 = String.init<A>(describing:)();
    MEMORY[0x1B2710020](v56);

    MEMORY[0x1B2710020](46, 0xE100000000000000);
    MEMORY[0x1B2710020](v84, v29);
    v85 = v94;
    v79 = v95;
    v81 = specialized static ActivityAuthorizationManager.notificationDisplayInformation(audioRoutePolicyManager:activity:conversation:)(*&a2[OBJC_IVAR___CPActivityAuthorizationManager_audioRoutePolicyManager], v81, v52);
    v58 = v91;
    v57 = v92;
    outlined init with copy of SharePlayLatencyLogger.Interval(v92, v91);
    v59 = v87 + 56;
    (*(v87 + 56))(v58, 0, 1, v86);
    v60 = v57;
    v61 = v88;
    outlined init with copy of SharePlayLatencyLogger.Interval(v60, v88);
    v62 = (*(v59 + 24) + 16) & ~*(v59 + 24);
    v63 = (v15 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    outlined init with take of SharePlayLatencyLogger.Interval(v61, v65 + v62);
    *(v65 + v63) = a2;
    v66 = (v65 + v64);
    *v66 = v84;
    v66[1] = v29;
    v67 = (v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
    v68 = v93;
    *v67 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ();
    v67[1] = v68;
    v69 = *&a2[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 32];
    v87 = *&a2[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter + 24];
    v88 = __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR___CPActivityAuthorizationManager__notificationCenter], v87);
    v70 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = v90;
    outlined init with copy of SharePlayLatencyLogger.Interval?(v58, v90);
    v72 = (*(v89 + 80) + 24) & ~*(v89 + 80);
    v73 = (v7 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 16) = v70;
    outlined init with take of SharePlayLatencyLogger.Interval?(v71, v74 + v72);
    v75 = (v74 + v73);
    *v75 = closure #1 in ActivityAuthorizationManager.confirmActivityLaunchAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:withActivity:completionHandler:)partial apply;
    v75[1] = v65;
    v76 = *(v69 + 8);

    v77 = a2;

    v76(v85, v79, v84, v29, v81, 1, closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)partial apply, v74, v87, v69);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    outlined destroy of NSObject?(v91, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    outlined destroy of SharePlayLatencyLogger.Interval(v92);

    goto LABEL_18;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Log.host);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1AEB26000, v36, v37, "Bypassing authorization since application is already authorized.", v38, 2u);
    MEMORY[0x1B27120C0](v38, -1, -1);
  }

  a3[2](a3, 1, 0);

LABEL_27:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void specialized ActivityAuthorizationManager.conversationManager(_:conversationChanged:)(void *a1)
{
  if ([a1 state] == 4)
  {
    v2 = *(v1 + OBJC_IVAR___CPActivityAuthorizationManager_lock);
    os_unfair_lock_lock(*(v2 + 16));
    v3 = OBJC_IVAR___CPActivityAuthorizationManager_preparedAuthorizedBundleIdentifiers;
    swift_beginAccess();
    v4 = *(v1 + v3);
    *(v1 + v3) = MEMORY[0x1E69E7CD0];

    os_unfair_lock_unlock(*(v2 + 16));
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t partial apply for closure #1 in promptToStart #1 () in ActivityAuthorizationManager.requestAuthorizationForApplication(withBundleIdentifier:preparing:overrides:currentScreenShareAttributes:completionHandler:)(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (a1)
  {
    v4 = *(v1 + 80);
    v5 = *(v1 + 64);
    v6 = *(v1 + 48);
    v7 = *(v1 + 56);
    v9 = v1 + 32;
    v8 = *(v1 + 32);
    return specialized ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(*(v9 + 8), v6, v7, v5, v4, v2, v3);
  }

  else
  {
    v11 = *(v1 + 24);
    return (v2)(0);
  }
}

unint64_t lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject);
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(type metadata accessor for SharePlayLatencyLogger.Interval(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v7 = *(v5 + 16);

    v8 = v6[6];
    v9 = type metadata accessor for ContinuousClock.Instant();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
    v10 = *(v5 + v6[7]);

    v11 = v6[8];
    v12 = type metadata accessor for OSSignpostID();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;

  v16 = *(v0 + v14 + 8);

  v17 = *(v0 + v15 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v15 + 16, v2 | 7);
}

uint64_t partial apply for closure #1 in ActivityAuthorizationManager.confirmActivityLaunchAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:withActivity:completionHandler:)(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SharePlayLatencyLogger.Interval(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v6);
  v9 = *(v2 + v7);
  v10 = *(v2 + v7 + 8);
  v11 = (v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return a2(a1, v2 + v5, v8, v9, v10, v12, v13);
}

uint64_t objectdestroy_71Tm()
{
  v1 = *(type metadata accessor for SharePlayLatencyLogger.Interval(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v7 = *(v5 + 16);

    v8 = v6[6];
    v9 = type metadata accessor for ContinuousClock.Instant();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
    v10 = *(v5 + v6[7]);

    v11 = v6[8];
    v12 = type metadata accessor for OSSignpostID();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 39) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;

  v16 = *(v0 + v15 + 8);

  v17 = *(v0 + v14 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 16, v2 | 7);
}

void partial apply for closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(uint64_t a1)
{
  v3 = *(type metadata accessor for SharePlayLatencyLogger.Interval(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = *(v1 + v6 + 16);
  v11 = v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  closure #1 in ActivityAuthorizationManager.confirmActivityAuthorizationIfNecessary(forApplicationWithBundleIdentifier:onConversation:preparing:currentScreenShareAttributes:overrides:completionHandler:)(a1, v1 + v4, v7, v8, v9, v10, v12);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = type metadata accessor for SharePlayLatencyLogger.Interval(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
  {
    v8 = type metadata accessor for SharePlayLatencyLogger.Interval.EnabledState(0);
    if (!(*(*(v8 - 1) + 48))(v0 + v3, 1, v8))
    {
      v9 = *(v6 + 16);

      v10 = v8[6];
      v11 = type metadata accessor for ContinuousClock.Instant();
      (*(*(v11 - 8) + 8))(v6 + v10, v11);
      v12 = *(v6 + v8[7]);

      v13 = v8[8];
      v14 = type metadata accessor for OSSignpostID();
      (*(*(v14 - 8) + 8))(v6 + v13, v14);
    }
  }

  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v0 + v15 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v15 + 16, v2 | 7);
}

void partial apply for closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  closure #1 in ActivityAuthorizationManager.postNotification(withIdentifier:bundleIdentifier:displayInformation:latencyInterval:showsIcon:completionHandler:)(a1, v5, v1 + v4, v7, v8);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_So8TUHandleCs5NeverOTg504_s14d154Core28BackgroundSessionManagerHostC39didReceiveUpdatedUnknownParticipantList010backgrounddE002onD019unknownParticipantsyAA0cdE0C_10Foundation4UUIDVShyAA17fg33CGtFyAA0cdeF10ConnectionCXEfU_So8H8CANXEfU_Tf1cn_n(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v28;
    v10 = v29;
    v12 = v30;
    specialized Set.subscript.getter(v28, v29, v30, a1);
    v14 = v13;
    v15 = *&v13[OBJC_IVAR____TtC14CopresenceCore17AddressableMember_handle];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v16 = *(v31 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy14CopresenceCore17AddressableMemberC_GMd, &_sSh5IndexVy14CopresenceCore17AddressableMemberC_GMR);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        outlined consume of Set<AddressableMember>.Index._Variant(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v11 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v11 >> 6;
      v19 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v19 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v11, v10, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v11, v10, 0);
      }

LABEL_27:
      v28 = v17;
      v29 = v10;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t BackgroundSessionManagerHost.__allocating_init(listeners:featureFlags:)(unint64_t a1, void *a2)
{
  v17 = a1;
  v18 = a2;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v2);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = objc_allocWithZone(v16);
  v13 = v18;
  v14 = specialized BackgroundSessionManagerHost.init(listeners:queue:featureFlags:)(v17, v11, v18);

  return v14;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t BackgroundSessionManagerHost.__allocating_init(listeners:queue:featureFlags:)(unint64_t a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized BackgroundSessionManagerHost.init(listeners:queue:featureFlags:)(a1, a2, a3);

  return v8;
}

uint64_t BackgroundSessionManagerHost.init(listeners:queue:featureFlags:)(unint64_t a1, void *a2, void *a3)
{
  v5 = specialized BackgroundSessionManagerHost.init(listeners:queue:featureFlags:)(a1, a2, a3);

  return v5;
}

objc_class *BackgroundSessionManagerHost.__deallocating_deinit()
{
  result = swift_getObjectType();
  v2 = result;
  v3 = *&v0[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_listeners];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v8 = *&v0[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_listeners];
    }

    result = __CocoaSet.count.getter();
    v4 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
LABEL_10:
      v9.receiver = v0;
      v9.super_class = v2;
      return objc_msgSendSuper2(&v9, sel_dealloc);
    }
  }

  if (v4 >= 1)
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B2710B10](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 invalidate];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall BackgroundSessionManagerHost.resume()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_listeners);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v1 < 0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_listeners);
  }

  v2 = __CocoaSet.count.getter();
  if (v2)
  {
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
          v4 = MEMORY[0x1B2710B10](i, v1);
        }

        else
        {
          v4 = *(v1 + 8 * i + 32);
        }

        v5 = v4;
        [v4 resume];
      }
    }
  }
}

uint64_t BackgroundSessionManagerHost.dataSource(for:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_clientIdentifierToDataSourceMap;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v11 & 1) != 0))
  {
    outlined init with copy of UserNotificationCenter(*(v9 + 56) + 40 * v10, &v20);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  if (*(&v21 + 1))
  {
    outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v18, a3);
  }

  else
  {
    v12 = type metadata accessor for BackgroundSessionManager();
    v13 = *(v4 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_queue);

    v14 = BackgroundSessionManager.__allocating_init(clientIdentifier:queue:)(a1, a2, v13);
    v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0xB0);
    v16 = swift_unknownObjectRetain();
    v15(v16, &protocol witness table for BackgroundSessionManagerHost);
    a3[3] = v12;
    a3[4] = &protocol witness table for BackgroundSessionManager;
    *a3 = v14;
    outlined destroy of NSObject?(v18, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMd, &_s14CopresenceCore34BackgroundSessionManagerDataSource_pSgMR);
  }

  swift_endAccess();
  outlined init with copy of UserNotificationCenter(a3, &v20);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(&v20, a1, a2);
  return swift_endAccess();
}

uint64_t BackgroundSessionManagerHost.withConnections(_:)(void (*a1)(id), uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_connections;
    swift_beginAccess();
    v27 = *(v2 + v12);
    if ((v27 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for BackgroundSessionManagerHostConnection();
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection and conformance NSObject, type metadata accessor for BackgroundSessionManagerHostConnection);
      Set.Iterator.init(_cocoa:)();
      result = v32;
      v13 = v33;
      v14 = v34;
      v15 = v35;
      v16 = v36;
    }

    else
    {
      v17 = -1 << *(v27 + 32);
      v13 = v27 + 56;
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

      v16 = v19 & *(v27 + 56);
      v20 = v27;
      swift_bridgeObjectRetain_n();
      v15 = 0;
      result = v20;
    }

    v26 = v14;
    v21 = (v14 + 64) >> 6;
    v30 = result;
    while (1)
    {
      if (result < 0)
      {
        v25 = __CocoaSet.Iterator.next()();
        if (!v25 || (v31 = v25, type metadata accessor for BackgroundSessionManagerHostConnection(), swift_dynamicCast(), (v22 = v37) == 0))
        {
LABEL_19:
          outlined consume of Set<String>.Iterator._Variant();
        }
      }

      else
      {
        v23 = v15;
        v24 = v16;
        if (!v16)
        {
          while (1)
          {
            v15 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v15 >= v21)
            {
              goto LABEL_19;
            }

            v24 = *(v13 + 8 * v15);
            ++v23;
            if (v24)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          break;
        }

LABEL_9:
        v16 = (v24 - 1) & v24;
        v22 = *(*(result + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v24)))));
        if (!v22)
        {
          goto LABEL_19;
        }
      }

      v28(v22);

      result = v30;
      if (v3)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return result;
}

id BackgroundSessionManagerHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t specialized EntitlementValueProviding.stableAppIdentifier.getter()
{
  v0 = NSXPCConnection.bundleIdentifier.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    if (v0 == 0x6C7070612E6D6F63 && v1 == 0xEF7365746F4E2E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000015 && 0x80000001AEE2E800 == v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 0x6C7070612E6D6F63;
    }

    if (v2 == 0xD000000000000010 && 0x80000001AEE33DF0 == v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000012 && 0x80000001AEE33E10 == v3)
    {

      return 0xD000000000000012;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 0xD000000000000012;
    }
  }

  result = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SSSgTt0B5();
  if (v6 == 1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v8 = *(v7 + 56);
    v9 = *(v7 + 64);

    return v8;
  }

  return result;
}

void closure #1 in BackgroundSessionManagerHost.didRejectKeyRecoveryRequest(backgroundSessionManager:onSession:)(uint64_t a1)
{
  v1 = [*(a1 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMd, &_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMR);
  if (swift_dynamicCast())
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v3 sessionDidRejectKeyRecoveryRequestWithSessionID_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in BackgroundSessionManagerHost.didReceiveUpdatedUnknownParticipantList(backgroundSessionManager:onSession:unknownParticipants:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMd, &_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMR);
  if (swift_dynamicCast())
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14CopresenceCore17AddressableMemberCG_So8TUHandleCs5NeverOTg504_s14d154Core28BackgroundSessionManagerHostC39didReceiveUpdatedUnknownParticipantList010backgrounddE002onD019unknownParticipantsyAA0cdE0C_10Foundation4UUIDVShyAA17fg33CGtFyAA0cdeF10ConnectionCXEfU_So8H8CANXEfU_Tf1cn_n(a3);
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v6);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v7 = Set._bridgeToObjectiveC()().super.isa;

    [v8 sessionDidReceiveUpdatedUnknownParticipantListWithSessionID:isa unknownParticipants:v7];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized BackgroundSessionManagerHost.didUpdateActivitySessions(backgroundSessionManager:activitySessions:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for host == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.host);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v39 = v2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v42[0] = v14;
      *v13 = 136315138;
      v41 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo38TUConversationActivitySessionContainerCGMd, &_sSaySo38TUConversationActivitySessionContainerCGMR);
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v42);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1AEB26000, v10, v11, "BackgroundSessionManagerHost received didUpdateActivitySessions %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1B27120C0](v14, -1, -1);
      v18 = v13;
      v2 = v39;
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

    v19 = *(v2 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_queue);
    *v8 = v19;
    (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
    v20 = v19;
    LOBYTE(v19) = _dispatchPreconditionTest(_:)();
    result = (*(v5 + 8))(v8, v4);
    if ((v19 & 1) == 0)
    {
      break;
    }

    v22 = OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_connections;
    swift_beginAccess();
    v5 = *(v2 + v22);
    if ((v5 & 0xC000000000000001) != 0)
    {
      if (v5 < 0)
      {
        v23 = *(v2 + v22);
      }

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for BackgroundSessionManagerHostConnection();
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection and conformance NSObject, type metadata accessor for BackgroundSessionManagerHostConnection);
      Set.Iterator.init(_cocoa:)();
      v24 = v42[0];
      v4 = v42[1];
      v25 = v42[2];
      v26 = v42[3];
      v8 = v42[4];
    }

    else
    {
      v27 = -1 << *(v5 + 32);
      v4 = v5 + 56;
      v25 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v8 = (v29 & *(v5 + 56));
      swift_bridgeObjectRetain_n();
      v26 = 0;
      v24 = v5;
    }

    v39 = v25;
    for (i = (v25 + 64) >> 6; v24 < 0; v8 = v33)
    {
      v35 = __CocoaSet.Iterator.next()();
      if (!v35)
      {
        goto LABEL_25;
      }

      v40 = v35;
      type metadata accessor for BackgroundSessionManagerHostConnection();
      swift_dynamicCast();
      v34 = v41;
      v2 = v26;
      v33 = v8;
      if (!v41)
      {
        goto LABEL_25;
      }

LABEL_22:
      v36 = [*&v34[direct field offset for XPCHostConnection.connection] remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMd, &_s14CopresenceCore31BackgroundSessionManagerXPCHost_pMR);
      result = swift_dynamicCast();
      if (!result)
      {
        goto LABEL_29;
      }

      v37 = v40;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v37 updateWithActivitySessions_];
      swift_unknownObjectRelease();

      v26 = v2;
    }

    v31 = v26;
    v32 = v8;
    v2 = v26;
    if (v8)
    {
LABEL_18:
      v33 = (v32 - 1) & v32;
      v34 = *(*(v24 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v32)))));
      if (v34)
      {
        goto LABEL_22;
      }

LABEL_25:
      outlined consume of Set<String>.Iterator._Variant();
    }

    while (1)
    {
      v2 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v2 >= i)
      {
        goto LABEL_25;
      }

      v32 = *(v4 + 8 * v2);
      ++v31;
      if (v32)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized BackgroundSessionManagerHost.didRejectKeyRecoveryRequest(backgroundSessionManager:onSession:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  (*(v4 + 16))(v7, a1, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20[1] = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v4 + 8))(v7, v3);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEB26000, v9, v10, "BackgroundSessionManagerHost received didRejectKeyRecoveryRequest on %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  else
  {

    v18 = (*(v4 + 8))(v7, v3);
  }

  MEMORY[0x1EEE9AC00](v18);
  v20[-2] = a1;
  return BackgroundSessionManagerHost.withConnections(_:)(partial apply for closure #1 in BackgroundSessionManagerHost.didRejectKeyRecoveryRequest(backgroundSessionManager:onSession:), &v20[-4]);
}

uint64_t specialized BackgroundSessionManagerHost.didReceiveUpdatedUnknownParticipantList(backgroundSessionManager:onSession:unknownParticipants:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  (*(v6 + 16))(v9, a1, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24[1] = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24[0] = a2;
    v16 = v15;
    v25 = v15;
    *v14 = 136315138;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v25);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v11, v12, "BackgroundSessionManagerHost received didReceiveUpdatedUnknownParticipantList on %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v21 = v16;
    a2 = v24[0];
    MEMORY[0x1B27120C0](v21, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  else
  {

    v22 = (*(v6 + 8))(v9, v5);
  }

  MEMORY[0x1EEE9AC00](v22);
  v24[-2] = a1;
  v24[-1] = a2;
  return BackgroundSessionManagerHost.withConnections(_:)(partial apply for closure #1 in BackgroundSessionManagerHost.didReceiveUpdatedUnknownParticipantList(backgroundSessionManager:onSession:unknownParticipants:), &v24[-4]);
}

uint64_t specialized BackgroundSessionManagerHost.init(listeners:queue:featureFlags:)(unint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14CopresenceCore38BackgroundSessionManagerHostConnectionC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  *&v4[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_connections] = v9;
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result >= 1)
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < 1)
  {
    goto LABEL_19;
  }

LABEL_5:
  *&v4[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_listeners] = a1;
  *&v4[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_queue] = a2;

  v11 = a2;
  *&v4[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_clientIdentifierToDataSourceMap] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14CopresenceCore34BackgroundSessionManagerDataSource_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&v4[OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_featureFlags] = a3;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v12 = a3;
  result = objc_msgSendSuper2(&v18, sel_init);
  v13 = result;
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    v14 = result;
    if (!result)
    {
      return v13;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return v13;
    }
  }

  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B2710B10](i, a1);
      }

      else
      {
        v16 = *(a1 + 8 * i + 32);
      }

      v17 = v16;
      [v16 setDelegate_];
    }

    return v13;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized BackgroundSessionManagerHost.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Asked to accept new connection from %@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v11 = *(v2 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_featureFlags);
  if (![v11 sharePlayLiteEnabled])
  {
    v27 = v5;
    v22 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v22, v28))
    {
LABEL_20:

      return 0;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v27;
    *v30 = v27;
    v31 = v27;
    v32 = "BackgroundSessionManagerHost rejecting connection because flag is not enabled: %@";
    goto LABEL_16;
  }

  v12 = specialized EntitlementValueProviding.stableAppIdentifier.getter();
  if (!v13)
  {
    v12 = NSXPCConnection.bundleIdentifier.getter();
    if (!v13)
    {
      v36 = v5;
      v22 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v22, v28))
      {
        goto LABEL_20;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v36;
      *v30 = v36;
      v37 = v36;
      v32 = "BackgroundSessionManagerHost rejecting connection because a client identifier could not be derived: %@";
LABEL_16:
      _os_log_impl(&dword_1AEB26000, v22, v28, v32, v29, 0xCu);
      outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v30, -1, -1);
LABEL_19:
      MEMORY[0x1B27120C0](v29, -1, -1);
      goto LABEL_20;
    }
  }

  v14 = v12;
  v15 = v13;
  v16 = *(v2 + OBJC_IVAR____TtC14CopresenceCore28BackgroundSessionManagerHost_queue);
  BackgroundSessionManagerHost.dataSource(for:)(v14, v15, v39);

  v17 = objc_allocWithZone(type metadata accessor for BackgroundSessionManagerHostConnection());
  v18 = v5;
  v19 = BackgroundSessionManagerHostConnection.init(connection:queue:dataSource:)(v18, v16, v39);
  if (!v19)
  {
    v20 = v18;
    v22 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v33))
    {
LABEL_21:

      return 0;
    }

    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = [v20 processIdentifier];

    _os_log_impl(&dword_1AEB26000, v22, v33, "BackgroundSessionManagerHost could not be created; rejecting connection from PID %d.", v29, 8u);
    goto LABEL_19;
  }

  v20 = v19;
  if ([v11 gameCenterFastSyncTransport])
  {
    if ((v20[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] & 1) == 0 && !v20[direct field offset for XPCHostConnection.isEntitledToUseGameCenter])
    {
      goto LABEL_12;
    }
  }

  else if ((v20[direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI] & 1) == 0)
  {
LABEL_12:
    v21 = v18;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_1AEB26000, v22, v23, "BackgroundSessionManagerHost rejecting connection %@ because client is not entitled", v24, 0xCu);
      outlined destroy of NSObject?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v25, -1, -1);
      MEMORY[0x1B27120C0](v24, -1, -1);
    }

    goto LABEL_21;
  }

  swift_beginAccess();
  v35 = v20;
  specialized Set._Variant.insert(_:)(&v38, v35);
  swift_endAccess();

  return 1;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4UUIDVG_SSs5NeverOTg5109_s14CopresenceCore27ActivityListPresenceContextV24dictionaryRepresentationSDySSypGvgSS10Foundation4UUIDVXEfU_Tf1cn_n(uint64_t a1)
{
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = UUID.uuidString.getter();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void ActivityListPresenceContext.insert(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  (*(v5 + 16))(v9, a1, v4);
  v22 = *v2;

  specialized Set._Variant.insert(_:)(v11, v9);
  (*(v5 + 8))(v11, v4);
  v12 = v22;
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
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v18 = Set.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Updating activity list context to current activities: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B27120C0](v17, -1, -1);
    MEMORY[0x1B27120C0](v16, -1, -1);
  }

  *v2 = v12;
}

void ActivityListPresenceContext.remove(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  v18 = *v1;

  specialized Set._Variant.remove(_:)(a1, v7);
  outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = v18;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.service);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v14 = Set.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Updating activity list context to current activities: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  *v2 = v8;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = *(a4 + 24);
  if (v4 >> 62)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!(v4 >> 59))
  {
    v5 = (16 * v4) & 0xFFFFFFFFFFFFFFE0;
    if (v5)
    {
      v6 = 0;
      while (v6 >> 5 < *(a4 + 16))
      {
        *(a2 + v6) = (*(a4 + 32 + 4 * (v6 >> 5)) >> v6) & 1;
        if (a3 - 1 == v6)
        {
          goto LABEL_13;
        }

        if (v5 == ++v6)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

LABEL_11:
    a3 = v5;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for UUID();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}