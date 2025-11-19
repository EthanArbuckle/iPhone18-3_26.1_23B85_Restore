void IDSGroupSessionProvider.registerQRPlugin()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v2)
  {

    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.service);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, oslog, v4, "IDSGroupSessionProvider. We already have a virtual participant identifier. Not re-registering QR plugin", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.service);
    v7 = v0;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315138;
      v12 = (*((*v1 & *v7) + 0xF0))();
      if (v12)
      {
        v13 = v12;
        v14 = [v12 sessionID];

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v31 = v15;
        v32 = v17;
        v18 = String.init<A>(reflecting:)();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v30);

      *(v10 + 4) = v21;
      _os_log_impl(&dword_1AEB26000, v8, v9, "Registering QR plugin on %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    v22 = (*((*v1 & *v7) + 0xF0))();
    if (v22)
    {
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AEE07B20;
      v25 = *MEMORY[0x1E69A4DA8];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v26;
      v27 = MEMORY[0x1E69E6158];
      AnyHashable.init<A>(_:)();
      *(inited + 96) = v27;
      *(inited + 72) = 0x627553627550;
      *(inited + 80) = 0xE600000000000000;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of NSObject?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v23 registerPluginWithOptions_];
    }
  }
}

uint64_t IDSGroupSessionProvider.requestParticipant(for:)(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](IDSGroupSessionProvider.requestParticipant(for:), 0, 0);
}

uint64_t IDSGroupSessionProvider.requestParticipant(for:)()
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = __swift_project_value_buffer(v1, static Log.service);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1AEB26000, v2, v3, "[Translation] Requested translated participant for id %llu", v5, 0xCu);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v6 = *(v0 + 240);

  v7 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xF0))();
  *(v0 + 264) = v7;
  if (v7)
  {
    v8 = v7;
    v9 = *(v0 + 232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AEE07B40;
    *(v10 + 32) = UInt64._bridgeToObjectiveC()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 272) = isa;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 224;
    *(v0 + 24) = IDSGroupSessionProvider.requestParticipant(for:);
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo8NSNumberCSSGs5Error_pGMd, &_sSccySDySo8NSNumberCSSGs5Error_pGMR);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [NSNumber : String];
    *(v0 + 104) = &block_descriptor_9_2;
    *(v0 + 112) = v12;
    [v8 requestURIsForParticipantIDs:isa completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v13 = *(v0 + 240);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 240);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v16;
      *v18 = v6;
      v19 = v16;
      _os_log_impl(&dword_1AEB26000, v14, v15, "No current GroupSession found on %@", v17, 0xCu);
      outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v18, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();
    v21 = *(v0 + 248);

    v22 = *(v0 + 8);

    return v22();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = IDSGroupSessionProvider.requestParticipant(for:);
  }

  else
  {
    v3 = IDSGroupSessionProvider.requestParticipant(for:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  swift_willThrow();

  v4 = v0[35];
  v5 = v0[31];

  v6 = v0[1];

  return v6();
}

void IDSGroupSessionProvider.requestParticipant(for:)()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);

  v3.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  isa = v3.super.super.isa;
  if (*(v2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3.super.super.isa), (v6 & 1) != 0))
  {
    v7 = (*(v2 + 56) + 16 * v5);
    v9 = *v7;
    v8 = v7[1];

    v10 = MEMORY[0x1B270FF70](v9, v8);
    v11 = [v10 _stripFZIDPrefix];

    if (v11)
    {
      v12 = *(v0 + 264);

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

LABEL_18:
      v36 = *(v0 + 248);

      v37 = *(v0 + 8);
      v38 = *(v0 + 232);

      v37(v38, v13, v15);
    }

    else
    {
LABEL_25:
      __break(1u);
    }
  }

  else
  {
    v16 = *(v0 + 256);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1AEB26000, v17, v18, "[Translation] Checking against stored list of participants for participant incase it is present", v19, 2u);
      MEMORY[0x1B27120C0](v19, -1, -1);
    }

    v20 = *(v0 + 240);

    v21 = MEMORY[0x1E69E7D40];
    v22 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x148))();
    v23 = 0;
    v24 = -1;
    v25 = -1 << *(v22 + 32);
    if (-v25 < 64)
    {
      v24 = ~(-1 << -v25);
    }

    v26 = v24 & *(v22 + 56);
    while (v26)
    {
      v27 = v23;
LABEL_16:
      v28 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v29 = (*(v22 + 48) + 24 * (v28 | (v27 << 6)));
      if (*v29 == *(v0 + 232))
      {
        v30 = *(v0 + 264);
        v31 = *(v0 + 240);
        v32 = *(v0 + 248);
        v13 = v29[1];
        v15 = v29[2];

        static TaskPriority.background.getter();
        v33 = type metadata accessor for TaskPriority();
        v34 = (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
        (*((*v21 & *v31) + 0x178))(v34);
        outlined init with take of ContiguousBytes((v0 + 144), v0 + 184);
        v35 = swift_allocObject();
        *(v35 + 16) = 0;
        *(v35 + 24) = 0;
        outlined init with take of ContiguousBytes((v0 + 184), v35 + 32);
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #2 in IDSGroupSessionProvider.requestParticipant(for:), v35);

        goto LABEL_18;
      }
    }

    while (1)
    {
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v27 >= ((63 - v25) >> 6))
      {
        break;
      }

      v26 = *(v22 + 56 + 8 * v27);
      ++v23;
      if (v26)
      {
        v23 = v27;
        goto LABEL_16;
      }
    }

    v39 = *(v0 + 264);

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v40 = 7;
    swift_willThrow();

    v41 = *(v0 + 248);

    v42 = *(v0 + 8);

    v42();
  }
}

uint64_t closure #2 in IDSGroupSessionProvider.requestParticipant(for:)()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x80000001AEE31310;
    v6 = 0xD00000000000001DLL;
  }

  v9 = (*(v3 + 16))(0xD000000000000016, 0x80000001AEE35E30, 0xD000000000000047, 0x80000001AEE35F50, v6, v8, v2, v3);
  v0[3] = v9;

  if (v9)
  {
    v11 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[2], v11);
    v12 = *(v10 + 24);
    v22 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[4] = v14;
    *v14 = v0;
    v14[1] = closure #2 in IDSGroupSessionProvider.requestParticipant(for:);
    v15.n128_u64[0] = 0;

    return v22(v9, v11, v10, v15);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.abcReporter);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1AEB26000, v18, v19, "[Translation] Failed to generate signature for Participant translation", v20, 2u);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    v21 = v0[1];

    return v21();
  }
}

{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

id IDSGroupSessionProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*protocol witness for IDSGroupSessionProviderProtocol.delegate.modify in conformance IDSGroupSessionProvider(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0xD0))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t protocol witness for IDSGroupSessionProviderProtocol.groupID.getter in conformance IDSGroupSessionProvider()
{
  v1 = (*v0 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t protocol witness for IDSGroupSessionProviderProtocol.init(groupID:members:localMember:service:targetQueue:abcReporter:) in conformance IDSGroupSessionProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 448))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for IDSGroupSessionProviderProtocol.requestParticipant(for:) in conformance IDSGroupSessionProvider(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & **v1) + 0x238);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for IDSGroupSessionProviderProtocol.requestParticipant(for:) in conformance IDSGroupSessionProvider;

  return v8(a1);
}

uint64_t protocol witness for IDSGroupSessionProviderProtocol.requestParticipant(for:) in conformance IDSGroupSessionProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

void IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v4[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    if (one-time initialization token for service == -1)
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
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.service);
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v23, v24))
  {

    if (!_TUIsInternalInstall())
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v51 = v11;
  v52 = v4;
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v54[0] = v27;
  *v25 = 138412802;
  *(v25 + 4) = v20;
  *v26 = v20;
  *(v25 + 12) = 2080;
  *&v53[0] = v21;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSessionParticipantUpdate, 0x1E69A52A0);
  v28 = v20;
  v29 = v21;
  v30 = String.init<A>(reflecting:)();
  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v54);

  *(v25 + 14) = v32;
  *(v25 + 22) = 2080;
  if (a3)
  {
    *&v53[0] = a3;
    v33 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
  }

  else
  {
    v36 = 0xE300000000000000;
    v34 = 7104878;
  }

  v4 = v52;
  v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v54);

  *(v25 + 24) = v37;
  _os_log_impl(&dword_1AEB26000, v23, v24, "IDSGroupSessionProvider: sessionDidJoinGroup %@ participantUpdate %s error %s", v25, 0x20u);
  outlined destroy of NSObject?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x1B27120C0](v26, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x1B27120C0](v27, -1, -1);
  MEMORY[0x1B27120C0](v25, -1, -1);

  v11 = v51;
  if (_TUIsInternalInstall())
  {
LABEL_10:
    v38 = [v21 participantDestinationURI];
    v39 = [v38 tokenFreeURI];

    v40 = [v39 unprefixedURI];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = type metadata accessor for TaskPriority();
    v45 = *(*(v44 - 8) + 56);
    v45(v11, 1, 1, v44);
    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    v46[4] = v4;
    v46[5] = v21;
    v46[6] = v41;
    v46[7] = v43;
    v47 = v21;
    v48 = v4;
    v49 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:), v46);
    (*((*MEMORY[0x1E69E7D40] & *v48) + 0x178))(v54);
    v45(v11, 1, 1, v44);
    outlined init with copy of UserNotificationCenter(v54, v53);
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v49;
    v50[5] = 0xD00000000000002FLL;
    v50[7] = 0;
    v50[8] = 0;
    v50[6] = 0x80000001AEE35CA0;
    outlined init with take of ContiguousBytes(v53, (v50 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for specialized closure #1 in Task<>.reportFailure(on:function:process:), v50);

    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

LABEL_11:
  IDSGroupSessionProvider.registerQRPlugin()();
}

uint64_t closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:), 0, 0);
}

uint64_t closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)()
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = __swift_project_value_buffer(v1, static Log.service);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "[ParticipantID Verification] Verifying that the participantDestinationURI matches the QRParticipantID we joined with", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = [v5 participantIdentifier];
  v8 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x238);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:);
  v11 = v0[2];

  return v13(v7);
}

{
  v26 = v0;
  v1 = v0[8] == v0[4] && v0[9] == v0[5];
  if (v1 || (v2 = v0[9], v3 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 = v0[9], (v3 & 1) != 0))
  {
    v5 = v0[6];

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1AEB26000, v6, v7, "[ParticipantID Verification] Successfully matched.", v8, 2u);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    v9 = v0[1];
  }

  else
  {
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[9];

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[9];
    if (v15)
    {
      v17 = v0[8];
      v19 = v0[4];
      v18 = v0[5];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 136315394;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v25);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, v25);
      _os_log_impl(&dword_1AEB26000, v13, v14, "[ParticipantID Verification] Detected invalid participantID mismatch on local join. Joined with QRParticipantID for %s when trying to join with handle: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v21, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError();
    swift_allocError();
    *v23 = 8;
    swift_willThrow();
    v9 = v0[1];
  }

  return v9();
}

uint64_t closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 56);
  v6 = *v4;
  v6[8] = a2;
  v6[9] = a3;

  if (v3)
  {
    v7 = v6[1];

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:), 0, 0);
  }
}

uint64_t @objc IDSGroupSessionProvider.session(_:participantDidJoinGroupWithInfo:)(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  specialized IDSGroupSessionProvider.session(_:participantDidJoinGroupWithInfo:)(v8, a5);
}

void IDSGroupSessionProvider.groupSessionDidTerminate(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (one-time initialization token for service == -1)
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
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.service);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v11;
    v21 = v15;
    *v14 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSession, 0x1E69A4868);
    v16 = v11;
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v12, v13, "IDSGroupSessionProvider: groupSessionDidTerminate %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }
}

void IDSGroupSessionProvider.groupSessionEnded(_:with:error:)(void *a1, int a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (one-time initialization token for service == -1)
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
  __swift_project_value_buffer(v15, static Log.service);
  v16 = a1;
  v17 = a3;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v16;
    v37 = v21;
    *v20 = 136315650;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSession, 0x1E69A4868);
    v22 = v16;
    v23 = String.init<A>(reflecting:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v37);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    LODWORD(v36) = a2;
    type metadata accessor for IDSSessionEndedReason(0);
    v26 = String.init<A>(reflecting:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v37);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2080;
    if (a3)
    {
      v36 = a3;
      v29 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v37);

    *(v20 + 24) = v33;
    _os_log_impl(&dword_1AEB26000, v18, v19, "IDSGroupSessionProvider: groupSessionEnded %s reason: %s error %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v21, -1, -1);
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

  v34 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1B0);
  if (a3)
  {
    v35 = a3;
    v34(3);
  }

  else
  {
    v34(2);
  }
}

uint64_t closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x80000001AEE31310;
    v6 = 0xD00000000000001DLL;
  }

  v9 = (*(v3 + 16))(0xD000000000000014, 0x80000001AEE35EA0, 0xD00000000000001DLL, 0x80000001AEE35EC0, v6, v8, v2, v3);
  v0[3] = v9;

  if (v9)
  {
    v11 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[2], v11);
    v12 = *(v10 + 24);
    v22 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[4] = v14;
    *v14 = v0;
    v14[1] = closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:);
    v15.n128_u64[0] = 0;

    return v22(v9, v11, v10, v15);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.abcReporter);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1AEB26000, v18, v19, "Failed to generate signature for VirtualParticipantID", v20, 2u);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t closure #2 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x80000001AEE31310;
    v6 = 0xD00000000000001DLL;
  }

  v9 = (*(v3 + 16))(0xD000000000000012, 0x80000001AEE35F10, 0xD00000000000001BLL, 0x80000001AEE35F30, v6, v8, v2, v3);
  v0[3] = v9;

  if (v9)
  {
    v11 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[2], v11);
    v12 = *(v10 + 24);
    v22 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[4] = v14;
    *v14 = v0;
    v14[1] = closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:);
    v15.n128_u64[0] = 0;

    return v22(v9, v11, v10, v15);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.abcReporter);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1AEB26000, v18, v19, "Failed to generate signature for LocalParticipantID", v20, 2u);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t IDSGroupSessionProvider.sessionDidLeaveGroup(_:error:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (one-time initialization token for service == -1)
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
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.service);
  v14 = a1;
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v14;
    v31 = v19;
    *v18 = 136315394;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSession, 0x1E69A4868);
    v20 = v14;
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v31);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    if (a2)
    {
      v30 = a2;
      v24 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v25 = String.init<A>(reflecting:)();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v31);

    *(v18 + 14) = v28;
    _os_log_impl(&dword_1AEB26000, v16, v17, "IDSGroupSessionProvider: sessionDidLeaveGroup %s, error: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v19, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0))(2);
}

uint64_t @objc IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v8);
}

uint64_t closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 60) = a5;
  *(v5 + 32) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:), 0, 0);
}

uint64_t closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)()
{
  v1 = 0xD00000000000001DLL;
  v2 = *(v0 + 60);
  v3 = *(v0 + 32);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  _StringGuts.grow(_:)(44);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x1B2710020](0xD00000000000002ALL, 0x80000001AEE35E70);
  *(v0 + 56) = v2;
  type metadata accessor for IDSGroupSessionEncryptionControllerRejectionReason(0);
  _print_unlocked<A, B>(_:_:)();
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0x80000001AEE31310;
  }

  v12 = (*(v5 + 16))(0x766F63655279654BLL, 0xEB00000000797265, v6, v7, v1, v11, v4, v5);
  *(v0 + 40) = v12;

  if (v12)
  {
    v14 = v3[3];
    v13 = v3[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 32), v14);
    v15 = *(v13 + 24);
    v25 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 48) = v17;
    *v17 = v0;
    v17[1] = closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:);
    v18.n128_u64[0] = 0;

    return v25(v12, v14, v13, v18);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.abcReporter);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1AEB26000, v21, v22, "[KeyRecovery] Failed to generate signature for key recovery", v23, 2u);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    v24 = *(v0 + 8);

    return v24();
  }
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v28 - v8;
  v10 = *a1;
  v11 = [v10 participantURI];
  if (v11)
  {
    v12 = v11;
    v13 = [v10 participantIdentifier];
    v14 = [v12 _stripFZIDPrefix];

    if (v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      *a3 = v13;
      a3[1] = v15;
      a3[2] = v17;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.service);
    v19 = v10;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_1AEB26000, v20, v21, "Failed to fetch participantURI for %@", v22, 0xCu);
      outlined destroy of NSObject?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v23, -1, -1);
      MEMORY[0x1B27120C0](v22, -1, -1);
    }

    static TaskPriority.background.getter();
    v25 = type metadata accessor for TaskPriority();
    v26 = (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
    (*((*MEMORY[0x1E69E7D40] & *a2) + 0x178))(v29, v26);
    outlined init with take of ContiguousBytes(v29, v28);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    outlined init with take of ContiguousBytes(v28, v27 + 32);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:), v27);

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t closure #1 in closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x80000001AEE31310;
    v6 = 0xD00000000000001DLL;
  }

  v9 = (*(v3 + 16))(0xD000000000000016, 0x80000001AEE35E30, 0xD000000000000018, 0x80000001AEE35E50, v6, v8, v2, v3);
  v0[3] = v9;

  if (v9)
  {
    v11 = v1[3];
    v10 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[2], v11);
    v12 = *(v10 + 24);
    v22 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[4] = v14;
    *v14 = v0;
    v14[1] = closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:);
    v15.n128_u64[0] = 0;

    return v22(v9, v11, v10, v15);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.abcReporter);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1AEB26000, v18, v19, "Failed to generate signature for Participant translation", v20, 2u);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
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
      v10 = (*(v1 + 48) + 24 * (v9 | (v8 << 6)));
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];

      specialized Set._Variant.insert(_:)(v14, v11, v12, v13);

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
    __CocoaSet.count.getter();
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

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = __CocoaSet.count.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = __CocoaSet.count.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [IDSDestinationProtocol] and conformance [A], &_sSaySo22IDSDestinationProtocol_pGMd, &_sSaySo22IDSDestinationProtocol_pGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22IDSDestinationProtocol_pGMd, &_sSaySo22IDSDestinationProtocol_pGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22IDSDestinationProtocol_pMd, &_sSo22IDSDestinationProtocol_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [TUHandle] and conformance [A], &_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8TUHandleCGMd, &_sSaySo8TUHandleCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id specialized IDSGroupSessionProvider.init(groupID:members:localMember:service:targetQueue:abcReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v42 = a8;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v40 = *(v17 - 8);
  v41 = v17;
  v18 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v39 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_queue.Attributes();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v38[1] = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession] = 0;
  v25 = &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 4) = 0;
  v26 = &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins];
  v27 = MEMORY[0x1E69E7CC0];
  *v26 = 0;
  *(v26 + 1) = v27;
  v28 = MEMORY[0x1E69E7CD0];
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_participants] = MEMORY[0x1E69E7CD0];
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_unknownParticipants] = v28;
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_powerAssertion] = 0;
  v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state] = 0;
  v29 = &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID];
  *v29 = a1;
  v29[1] = a2;
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members] = a3;
  v30 = &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember];
  *v30 = a4;
  v30[1] = a5;
  outlined init with copy of UserNotificationCenter(a6, &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service]);
  v38[0] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  swift_unknownObjectRetain();

  _StringGuts.grow(_:)(29);
  MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE35B70);
  MEMORY[0x1B2710020](a1, a2);

  MEMORY[0x1B2710020](45, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18IDSServiceProtocol_pMd, &_s14CopresenceCore18IDSServiceProtocol_pMR);
  v43 = a6;
  _print_unlocked<A, B>(_:_:)();
  v31 = a7;
  static DispatchQoS.unspecified.getter();
  *&v47 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v32 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v40 + 104))(v39, *MEMORY[0x1E69E8090], v41);
  *&v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v32, &v45, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
  if (v46)
  {
    outlined init with take of ContiguousBytes(&v45, &v47);
  }

  else
  {
    v33 = type metadata accessor for ABCReporter();
    v34 = swift_allocObject();
    v34[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
    v34[3] = 0x636E795374736146;
    v34[4] = 0xE800000000000000;
    v34[5] = 0xD000000000000017;
    v34[6] = 0x80000001AEE17DD0;
    v48 = v33;
    v49 = &protocol witness table for ABCReporter;
    *&v47 = v34;
    if (v46)
    {
      outlined destroy of NSObject?(&v45, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
    }
  }

  outlined init with take of ContiguousBytes(&v47, &v9[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_abcReporter]);
  v35 = type metadata accessor for IDSGroupSessionProvider();
  v44.receiver = v9;
  v44.super_class = v35;
  v36 = objc_msgSendSuper2(&v44, sel_init);
  outlined destroy of NSObject?(v32, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v36;
}

unint64_t lazy protocol witness table accessor for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError()
{
  result = lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError;
  if (!lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError;
  if (!lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSGroupSessionProvider.IDSGroupSessionProviderError and conformance IDSGroupSessionProvider.IDSGroupSessionProviderError);
  }

  return result;
}

uint64_t partial apply for closure #2 in IDSGroupSessionProvider.requestParticipant(for:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in IDSGroupSessionProvider.requestParticipant(for:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(uint64_t a1)
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
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for specialized closure #1 in Task<>.reportFailure(on:function:process:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in Task<>.reportFailure(on:function:process:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return specialized closure #1 in Task<>.reportFailure(on:function:process:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

void specialized IDSGroupSessionProvider.session(_:participantDidJoinGroupWithInfo:)(uint64_t a1, const char *a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (one-time initialization token for service == -1)
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
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.service);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = a1;
    v21 = v16;
    *v15 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v13, v14, a2, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }
}

void specialized IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v65 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (one-time initialization token for service == -1)
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
  __swift_project_value_buffer(v15, static Log.service);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v68[0] = v19;
    *v18 = 136315138;
    *&v65[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v68);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1AEB26000, v16, v17, "IDSGroupSessionProvider: didRegisterPluginAllocationInfo %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1B27120C0](v19, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  v23 = *MEMORY[0x1E69A4D98];
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v24;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v68), (v26 & 1) == 0))
  {
    outlined destroy of AnyHashable(v68);
    goto LABEL_17;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v25, v65);
  outlined destroy of AnyHashable(v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v68[0] = v48;
      *v47 = 136315138;
      v49 = Dictionary.description.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v68);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1AEB26000, v45, v46, "Missing virtual participantID, read %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1B27120C0](v48, -1, -1);
      MEMORY[0x1B27120C0](v47, -1, -1);
    }

    static TaskPriority.background.getter();
    v52 = type metadata accessor for TaskPriority();
    v53 = (*(*(v52 - 8) + 56))(v7, 0, 1, v52);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))(v68, v53);
    outlined init with take of ContiguousBytes(v68, v65);
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    outlined init with take of ContiguousBytes(v65, v54 + 32);
    v55 = &async function pointer to partial apply for closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:);
    goto LABEL_20;
  }

  v27 = v66;
  v66 = 0xD000000000000023;
  v67 = 0x80000001AEE35EE0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v68), (v29 & 1) == 0))
  {
    outlined destroy of AnyHashable(v68);
    goto LABEL_22;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v28, v65);
  outlined destroy of AnyHashable(v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v68[0] = v59;
      *v58 = 136315138;
      v60 = Dictionary.description.getter();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v68);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1AEB26000, v56, v57, "Missing local participantID, read %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x1B27120C0](v59, -1, -1);
      MEMORY[0x1B27120C0](v58, -1, -1);
    }

    static TaskPriority.background.getter();
    v63 = type metadata accessor for TaskPriority();
    v64 = (*(*(v63 - 8) + 56))(v7, 0, 1, v63);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))(v68, v64);
    outlined init with take of ContiguousBytes(v68, v65);
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    outlined init with take of ContiguousBytes(v65, v54 + 32);
    v55 = &async function pointer to partial apply for closure #2 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:);
LABEL_20:
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, v55, v54);

    return;
  }

  v30 = v66;
  v31 = objc_allocWithZone(MEMORY[0x1E69D8BC0]);
  v32 = MEMORY[0x1B270FF70](0x627553627550, 0xE600000000000000);
  v33 = [v31 initWithIdentifier:v27 pluginName:v32];

  v34 = MEMORY[0x1E69E7D40];
  v35 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x138);
  v36 = v33;
  v37 = v35(v68);
  v39 = v38;
  v40 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v39 = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2) + 1, 1, v40);
    *v39 = v40;
  }

  v43 = *(v40 + 2);
  v42 = *(v40 + 3);
  if (v43 >= v42 >> 1)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
    *v39 = v40;
  }

  *(v40 + 2) = v43 + 1;
  v44 = &v40[16 * v43];
  *(v44 + 4) = v36;
  *(v44 + 5) = v30;
  v37(v68, 0);
  (*((*v34 & *v2) + 0x1B0))(1);
}

void specialized IDSGroupSessionProvider.session(_:didUnregisterPluginAllocationInfo:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v61 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (one-time initialization token for service == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_33:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Log.service);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v73[0] = v20;
    *v19 = 136315138;
    *&v70[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v73);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1AEB26000, v17, v18, "IDSGroupSessionProvider: didUnregisterPluginAllocationInfo %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  v24 = *MEMORY[0x1E69A4D98];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v25;
  AnyHashable.init<A>(_:)();
  if (!a1[2] || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v73), (v27 & 1) == 0))
  {
    outlined destroy of AnyHashable(v73);
    goto LABEL_22;
  }

  outlined init with copy of Any(a1[7] + 32 * v26, v70);
  outlined destroy of AnyHashable(v73);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v73[0] = v47;
      *v46 = 136315138;
      v48 = Dictionary.description.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v73);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1AEB26000, v44, v45, "Missing virtual participantID, read %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1B27120C0](v47, -1, -1);
      MEMORY[0x1B27120C0](v46, -1, -1);
    }

    static TaskPriority.background.getter();
    v51 = type metadata accessor for TaskPriority();
    v52 = (*(*(v51 - 8) + 56))(v7, 0, 1, v51);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))(v73, v52);
    outlined init with take of ContiguousBytes(v73, v70);
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    outlined init with take of ContiguousBytes(v70, v53 + 32);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in IDSGroupSessionProvider.session(_:didUnregisterPluginAllocationInfo:), v53);

    return;
  }

  v64 = v16;
  v28 = v71;
  v29 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x128);
  v67 = (*MEMORY[0x1E69E7D40] & *v2) + 296;
  v68 = v29;
  v30 = v29();
  v7 = v30;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v30 + 40;
    v65 = v31 - 1;
    v69 = MEMORY[0x1E69E7CC0];
    v66 = v30 + 40;
    do
    {
      v34 = (v33 + 16 * v32);
      v35 = v32;
      while (1)
      {
        if (v35 >= *(v7 + 2))
        {
          __break(1u);
          goto LABEL_33;
        }

        v36 = *v34;
        v32 = v35 + 1;
        a1 = *(v34 - 1);
        if ([a1 identifier] != v28)
        {
          break;
        }

        v34 += 2;
        ++v35;
        if (v31 == v32)
        {
          goto LABEL_27;
        }
      }

      v37 = v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v73[0] = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 16) + 1, 1);
        v69 = *&v73[0];
      }

      v40 = *(v69 + 16);
      v39 = *(v69 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v62 = *(v69 + 16);
        v63 = v40 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v40 = v62;
        v41 = v63;
        v69 = *&v73[0];
      }

      v42 = v69;
      *(v69 + 16) = v41;
      v43 = v42 + 16 * v40;
      *(v43 + 32) = a1;
      *(v43 + 40) = v36;
      v33 = v66;
    }

    while (v65 != v35);
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC0];
  }

LABEL_27:

  v54 = MEMORY[0x1E69E7D40];
  v55 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))(v69);
  v56 = *((v68)(v55) + 16);

  if (!v56 && (*((*v54 & *v2) + 0x1A8))(v57) == 1)
  {
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1AEB26000, v58, v59, "IDSGroupSessionProvider: Lost all virtualParticipants, re-registering plugin.", v60, 2u);
      MEMORY[0x1B27120C0](v60, -1, -1);
    }

    IDSGroupSessionProvider.registerQRPlugin()();
  }
}

uint64_t specialized IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v39 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (one-time initialization token for service == -1)
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
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.service);
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v40 = v22;
    *v21 = 136315394;
    *&v39[0] = v18;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSURI, 0x1E69A5428);
    v23 = v18;
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v40);

    *(v21 + 4) = v26;
    *(v21 + 12) = 1024;
    *(v21 + 14) = a2;
    _os_log_impl(&dword_1AEB26000, v19, v20, "IDSGroupSessionProvider: rejectedKeyRecoveryRequest from: %s, reason: %u", v21, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1B27120C0](v22, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  static TaskPriority.background.getter();
  v27 = type metadata accessor for TaskPriority();
  v28 = (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
  v29 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x178))(&v40, v28);
  outlined init with take of ContiguousBytes(&v40, v39);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  outlined init with take of ContiguousBytes(v39, v30 + 32);
  *(v30 + 72) = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:), v30);

  result = (*((*v29 & *v3) + 0xC0))(v31);
  if (result)
  {
    v34 = v33;
    ObjectType = swift_getObjectType();
    v41 = type metadata accessor for IDSGroupSessionProvider();
    v42 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, v36, type metadata accessor for IDSGroupSessionProvider);
    *&v40 = v3;
    v37 = *(v34 + 24);
    v38 = v3;
    v37(&v40, v18, a2, ObjectType, v34);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  }

  return result;
}

uint64_t specialized IDSGroupSessionProvider.sessiondidReceiveKeyUpdate(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for service == -1)
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
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.service);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1AEB26000, v10, v11, "IDSGroupSessionProvider: sessiondidReceiveKeyUpdate", v12, 2u);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))();
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    v21[3] = type metadata accessor for IDSGroupSessionProvider();
    v21[4] = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, v17, type metadata accessor for IDSGroupSessionProvider);
    v21[0] = v1;
    v18 = *(v15 + 16);
    v19 = v1;
    v18(v21, ObjectType, v15);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return result;
}

unint64_t specialized IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(unint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  v2 = result;
  *&v24 = MEMORY[0x1E69E7CC0];
  if (result >> 62)
  {
LABEL_18:
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
LABEL_4:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1B2710B10](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if ([v5 isKnown])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = *(v24 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v4;
      }

      while (v7 != v3);
      v9 = v24;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
LABEL_37:
    while (1)
    {
      v10 = __CocoaSet.count.getter();
      if (!v10)
      {
        goto LABEL_38;
      }

LABEL_22:
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1B2710B10](v11, v9);
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_36;
          }

          v14 = *(v9 + 8 * v11 + 32);
        }

        v15 = v14;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v26 = v14;
        closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(&v26, v22, &v24);

        v17 = v25;
        if (v25)
        {
          v23 = v24;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
          }

          v19 = *(v12 + 2);
          v18 = *(v12 + 3);
          if (v19 >= v18 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v12);
          }

          *(v12 + 2) = v19 + 1;
          v13 = &v12[24 * v19];
          *(v13 + 2) = v23;
          *(v13 + 6) = v17;
        }

        ++v11;
        if (v16 == v10)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

LABEL_20:
  if ((v9 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    goto LABEL_22;
  }

LABEL_38:
  v12 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore23IDSGroupSessionProviderC11ParticipantV_SayAHGTt0g5Tf4g_n(v12);

  v21 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x158))(&v24);
  specialized Set.formUnion<A>(_:)(v20);
  return v21(&v24, 0);
}

unint64_t lazy protocol witness table accessor for type IDSGroupSessionProvider.SessionState and conformance IDSGroupSessionProvider.SessionState()
{
  result = lazy protocol witness table cache variable for type IDSGroupSessionProvider.SessionState and conformance IDSGroupSessionProvider.SessionState;
  if (!lazy protocol witness table cache variable for type IDSGroupSessionProvider.SessionState and conformance IDSGroupSessionProvider.SessionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IDSGroupSessionProvider.SessionState and conformance IDSGroupSessionProvider.SessionState);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for IDSGroupSessionProvider(uint64_t a1, uint64_t a2)
{
  result = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance NSObject, a2, type metadata accessor for IDSGroupSessionProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of IDSGroupSessionProviderProtocol.requestParticipant(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of IDSGroupSessionProviderProtocol.requestParticipant(for:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of IDSGroupSessionProvider.requestParticipant(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x238);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of IDSGroupSessionProvider.requestParticipant(for:);

  return v8(a1);
}

uint64_t dispatch thunk of IDSGroupSessionProvider.requestParticipant(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for IDSGroupSessionProvider.Participant(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSGroupSessionProvider.Participant(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t objectdestroy_11Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t partial apply for closure #1 in closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:)(a1, v4, v5, v1 + 32, v6);
}

uint64_t partial apply for closure #1 in IDSGroupSessionProvider.session(_:didUnregisterPluginAllocationInfo:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #2 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in IDSGroupSessionProvider.session(_:didRegisterPluginAllocationInfo:)(a1, v4, v5, v1 + 32);
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for UUID() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v84 = type metadata accessor for UnencryptedAttachment(0);
  v83 = *(v84 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v77 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v5 = *(v96 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v88 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore21UnencryptedAttachmentVSgSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v75 - v20;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  v103 = *(v101 - 8);
  v21 = *(v103 + 64);
  v22 = MEMORY[0x1EEE9AC00](v101);
  v76 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v93 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v75 - v26;
  v27 = *a1;
  v87 = a1[1];
  v29 = a1[2];
  v28 = a1[3];
  v91 = v27;
  v92 = v28;
  v31 = v27 + 64;
  v30 = *(v27 + 64);
  v105 = v27;
  v32 = -1 << *(v27 + 32);
  if (-v32 < 64)
  {
    v33 = ~(-1 << -v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v30;
  v35 = a1[4];
  v75 = a1[5];
  v36 = a1[6];
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v105, v104, &_sSD6ValuesVys6UInt64V14CopresenceCore017AttachmentLedger_E10EncryptionV_GMd, &_sSD6ValuesVys6UInt64V14CopresenceCore017AttachmentLedger_E10EncryptionV_GMR);
  v79 = v32;
  v86 = (63 - v32) >> 6;
  v89 = v29;
  v90 = v5;
  v94 = (v5 + 48);
  v95 = (v5 + 56);
  v99 = (v103 + 56);
  v100 = (v103 + 48);

  v98 = v35;

  v80 = v36;

  v38 = 0;
  if (v34)
  {
    while (1)
    {
      v39 = v38;
      v40 = v97;
LABEL_13:
      v43 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(*(v91 + 56) + *(v90 + 72) * (v43 | (v39 << 6)), v40, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v44 = 0;
      v103 = v39;
LABEL_14:
      v45 = v96;
      v46 = 1;
      (*v95)(v40, v44, 1, v96);
      v47 = v40;
      v48 = v102;
      outlined init with take of UUID?(v47, v102, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
      if ((*v94)(v48, 1, v45) != 1)
      {
        v49 = v88;
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v102, v88, type metadata accessor for AttachmentLedger_AttachmentEncryption);
        v87(v49);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v49, type metadata accessor for AttachmentLedger_AttachmentEncryption);
        v46 = 0;
      }

      v50 = *v99;
      v51 = v46;
      v52 = v101;
      (*v99)(v19, v51, 1, v101);
      v53 = *v100;
      if ((*v100)(v19, 1, v52) == 1)
      {
        outlined destroy of NSObject?(v19, &_s14CopresenceCore21UnencryptedAttachmentVSgSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgSgMR);
        v58 = 1;
        v59 = v78;
        goto LABEL_23;
      }

      v54 = v31;
      v55 = v19;
      v56 = v19;
      v57 = v93;
      outlined init with take of UUID?(v56, v93, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
      if (v92(v57))
      {
        break;
      }

      result = outlined destroy of NSObject?(v57, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
      v38 = v103;
      v19 = v55;
      v31 = v54;
      if (!v34)
      {
        goto LABEL_6;
      }
    }

    v60 = v57;
    v59 = v78;
    outlined init with take of UUID?(v60, v78, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
    v58 = 0;
LABEL_23:
    v61 = 1;
    v62 = v101;
    v50(v59, v58, 1, v101);
    v63 = v82;
    outlined init with take of UUID?(v59, v82, &_s14CopresenceCore21UnencryptedAttachmentVSgSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgSgMR);
    v64 = v53(v63, 1, v62);
    v65 = v84;
    v66 = v81;
    if (v64 != 1)
    {
      v67 = v63;
      v68 = v76;
      outlined init with take of UUID?(v67, v76, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
      v75(v68);
      outlined destroy of NSObject?(v68, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
      v61 = 0;
    }

    v69 = v83;
    v70 = *(v83 + 56);
    v70(v66, v61, 1, v65);
    if ((*(v69 + 48))(v66, 1, v65) == 1)
    {
      outlined consume of Set<String>.Iterator._Variant();

      v71 = 1;
      v72 = v85;
    }

    else
    {
      v73 = v77;
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v66, v77, type metadata accessor for UnencryptedAttachment);
      outlined consume of Set<String>.Iterator._Variant();

      v74 = v73;
      v72 = v85;
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v74, v85, type metadata accessor for UnencryptedAttachment);
      v71 = 0;
    }

    return (v70)(v72, v71, 1, v65);
  }

  else
  {
LABEL_6:
    if (v86 <= v38 + 1)
    {
      v41 = v38 + 1;
    }

    else
    {
      v41 = v86;
    }

    v42 = v41 - 1;
    v40 = v97;
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v86)
      {
        v103 = v42;
        v34 = 0;
        v44 = 1;
        goto LABEL_14;
      }

      v34 = *(v31 + 8 * v39);
      ++v38;
      if (v34)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Attachment.unencryptedAttachment.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  type metadata accessor for UnencryptedAttachment(0);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t Attachment.encryptionSlots.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void default argument 2 of Attachment.MMCSMetadata.init(encryptedAssetSkeleton:assetSkeleton:status:ownerID:storageLocation:fileHash:refSignature:)(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xF000000000000000;
}

uint64_t Attachment.MMCSMetadata.init(encryptedAssetSkeleton:assetSkeleton:status:ownerID:storageLocation:fileHash:refSignature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v30 = *a4;
  v19 = *(a4 + 2);
  v20 = type metadata accessor for AES.GCM.SealedBox();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for Attachment.MMCSMetadata(0);
  v22 = (a9 + v21[5]);
  *v22 = a2;
  v22[1] = a3;
  v23 = a9 + v21[6];
  *v23 = v30;
  *(v23 + 16) = v19;
  v24 = (a9 + v21[7]);
  *v24 = a5;
  v24[1] = a6;
  v25 = v21[8];
  v26 = type metadata accessor for URL();
  result = (*(*(v26 - 8) + 32))(a9 + v25, a7, v26);
  v28 = (a9 + v21[9]);
  *v28 = a8;
  v28[1] = a10;
  v29 = (a9 + v21[10]);
  *v29 = a11;
  v29[1] = a12;
  return result;
}

uint64_t Attachment.Metadata.init(developerMetadata:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Attachment.__allocating_init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  Attachment.init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t Attachment.update(_:)(__int128 *a1)
{
  v14 = *a1;
  v2 = *(a1 + 2);
  if (one-time initialization token for attachment != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.attachment);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Attempting to update attachment %s's MMCSMetadata", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  MEMORY[0x1EEE9AC00](v12);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t Attachment.$encryptionSlots.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t Attachment.update(_:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v91 = *(v2 - 8);
  v92 = v2;
  v3 = *(v91 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v82 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v83 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = &v76 - v9;
  v10 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v85 = *(v10 - 8);
  v86 = v10;
  v11 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v89 = (&v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v76 - v15;
  v17 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v84 = *(v17 - 8);
  v18 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v87 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v90 = &v76 - v25;
  v26 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  v94 = *(v26 - 8);
  v27 = *(v94 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v95 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v76 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v76 - v32;
  if (one-time initialization token for attachment != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Log.attachment);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, v33, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v93 = a1;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, v31, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v80 = v35;
    v37 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    aBlock[0] = v77;
    *v37 = 134218242;
    v38 = *(v33 + 2);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v33, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    *(v37 + 4) = v38;
    v78 = v37;
    *(v37 + 12) = 2080;
    v39 = *(v26 + 28);
    v81 = v31;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v31[v39], v16, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    v40 = *(v84 + 48);
    v41 = v40(v16, 1, v17);
    v79 = v36;
    if (v41 == 1)
    {
      *v20 = xmmword_1AEE0C200;
      *(v20 + 2) = 0;
      v42 = &v20[*(v17 + 24)];
      UnknownStorage.init()();
      v43 = v85;
      v44 = v86;
      (*(v85 + 56))(&v20[*(v17 + 28)], 1, 1, v86);
      v45 = v40(v16, 1, v17);
      v47 = v91;
      v46 = v92;
      if (v45 != 1)
      {
        outlined destroy of NSObject?(v16, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
      }
    }

    else
    {
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v16, v20, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v47 = v91;
      v46 = v92;
      v43 = v85;
      v44 = v86;
    }

    v48 = &v20[*(v17 + 28)];
    v49 = v88;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v48, v88, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    v50 = *(v43 + 48);
    v51 = v50(v49, 1, v44);
    v52 = v90;
    if (v51 == 1)
    {
      v53 = v49;
      v54 = v89;
      *v89 = xmmword_1AEE0C200;
      v55 = v54 + *(v44 + 20);
      UnknownStorage.init()();
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v20, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      if (v50(v53, 1, v44) != 1)
      {
        outlined destroy of NSObject?(v53, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      }
    }

    else
    {
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v20, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v56 = v49;
      v54 = v89;
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v56, v89, type metadata accessor for AttachmentLedger_EncryptionID);
    }

    v57 = *v54;
    v58 = v54[1];
    outlined copy of Data._Representation(*v54, v58);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v54, type metadata accessor for AttachmentLedger_EncryptionID);
    UUID.init(data:)(v57, v58, v52);
    v59 = v87;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v52, v87, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v47 + 48))(v59, 1, v46) == 1)
    {
      v60 = 0xE300000000000000;
      v61 = 7104878;
    }

    else
    {
      v62 = v83;
      (*(v47 + 32))(v83, v59, v46);
      (*(v47 + 16))(v82, v62, v46);
      v61 = String.init<A>(reflecting:)();
      v60 = v63;
      (*(v47 + 8))(v62, v46);
    }

    outlined destroy of NSObject?(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v81, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, aBlock);

    v65 = v78;
    *(v78 + 14) = v64;
    v66 = v80;
    _os_log_impl(&dword_1AEB26000, v80, v79, "Attempting to update attachment's encryption material for participant: %llu to SKI: %s", v65, 0x16u);
    v67 = v77;
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    MEMORY[0x1B27120C0](v67, -1, -1);
    MEMORY[0x1B27120C0](v65, -1, -1);
  }

  else
  {
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v33, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v31, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  }

  v68 = v95;
  v69 = v96;
  v70 = *(v96 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v93, v95, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v71 = (*(v94 + 80) + 24) & ~*(v94 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = v69;
  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v68, v72 + v71, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full);
  v73 = swift_allocObject();
  *(v73 + 16) = partial apply for closure #1 in Attachment.update(_:);
  *(v73 + 24) = v72;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v73;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24;
  v74 = _Block_copy(aBlock);

  dispatch_sync(v70, v74);
  _Block_release(v74);
  LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

  if (v70)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnencryptedAttachment.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UnencryptedAttachment(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return outlined copy of Data?(v4, v5);
}

uint64_t UnencryptedAttachment.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + *(type metadata accessor for UnencryptedAttachment(0) + 20);
  result = outlined consume of Data?(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t UnencryptedAttachment.mmcsMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for UnencryptedAttachment(0) + 24);

  return outlined assign with take of Attachment.MMCSMetadata(a1, v3);
}

uint64_t UnencryptedAttachment.encryptionSlots.getter()
{
  v1 = *(v0 + *(type metadata accessor for UnencryptedAttachment(0) + 28));
}

uint64_t UnencryptedAttachment.encryptionSlots.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UnencryptedAttachment(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t UnencryptedAttachment.init(key:metadata:mmcsMetadata:encryptionSlots:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = type metadata accessor for SymmetricKey();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  v12 = type metadata accessor for UnencryptedAttachment(0);
  result = outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a3, a5 + v12[6], type metadata accessor for Attachment.MMCSMetadata);
  v14 = (a5 + v12[5]);
  *v14 = v9;
  v14[1] = v10;
  *(a5 + v12[7]) = a4;
  return result;
}

Swift::Int Attachment.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t Attachment.UpdatingBlob.data.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t Attachment.UpdatingBlob.data.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Attachment.UpdatingBlob.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t Attachment.UpdatingBlob.init(version:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t UnencryptedAttachment.key.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t UnencryptedAttachment.key.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t Attachment.MMCSMetadata.assetSkeleton.getter()
{
  v1 = v0 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 20);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t Attachment.MMCSMetadata.assetSkeleton.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 20);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Attachment.MMCSMetadata.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return outlined copy of Attachment.MMCSMetadata.UploadStatus(v4, v5, v6);
}

__n128 Attachment.MMCSMetadata.status.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 24);
  outlined consume of Attachment.MMCSMetadata.UploadStatus(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t Attachment.MMCSMetadata.ownerID.getter()
{
  v1 = (v0 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Attachment.MMCSMetadata.ownerID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Attachment.MMCSMetadata.storageLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Attachment.MMCSMetadata(0) + 32);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Attachment.MMCSMetadata.storageLocation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Attachment.MMCSMetadata(0) + 32);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Attachment.MMCSMetadata.fileHash.getter()
{
  v1 = v0 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 36);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t Attachment.MMCSMetadata.fileHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 36);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Attachment.MMCSMetadata.refSignature.getter()
{
  v1 = v0 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 40);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t Attachment.MMCSMetadata.refSignature.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 40);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Attachment.Metadata.developerMetadata.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t Attachment.Metadata.developerMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

double Attachment.Metadata.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AEE07B50;
  return result;
}

uint64_t Attachment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Attachment.key.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(type metadata accessor for UnencryptedAttachment(0) - 8) + 64) + 15;
  v3 = swift_task_alloc();
  v1[3] = v3;
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = Attachment.key.getter;

  return Attachment.waitForDecryption()(v3);
}

uint64_t Attachment.key.getter()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = Attachment.key.getter;
  }

  else
  {
    v3 = Attachment.key.getter;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for SymmetricKey();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v2, type metadata accessor for UnencryptedAttachment);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t Attachment.waitForDecryption()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC09EncryptedC6StatusOSgMd, &_s14CopresenceCore10AttachmentC09EncryptedC6StatusOSgMR) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedI6StatusOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedI6StatusOs5NeverOGGMR);
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR);
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Attachment.waitForDecryption(), 0, 0);
}

uint64_t Attachment.waitForDecryption()()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[8];
  v6 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v0[5] = *(v5 + v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);
  v8 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);
  MEMORY[0x1B270F520](v7, v8);
  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v9 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR);
  v10 = *(MEMORY[0x1E69E85A8] + 4);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = Attachment.waitForDecryption();
  v12 = v0[18];
  v13 = v0[16];
  v14 = v0[12];

  return MEMORY[0x1EEE6D8C8](v14, v13, v9);
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = Attachment.waitForDecryption();
  }

  else
  {
    v3 = Attachment.waitForDecryption();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](Attachment.waitForDecryption(), 0, 0);
}

{
  v1 = v0[12];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v2 = 6;
    swift_willThrow();
    goto LABEL_10;
  }

  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v1, v0[11], type metadata accessor for Attachment.EncryptedAttachmentStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = v0[15];
      v6 = v0[11];
      v5 = v0[12];
      v7 = v0[7];
      (*(v0[17] + 8))(v0[18], v0[16]);
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v6, v7, type metadata accessor for UnencryptedAttachment);

      v8 = v0[1];
LABEL_11:

      return v8();
    }

    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[16];
    v18 = v0[11];
    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v19 = 5;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v18, type metadata accessor for Attachment.EncryptedAttachmentStatus);
LABEL_10:
    v20 = v0[18];
    v21 = v0[15];
    v23 = v0[11];
    v22 = v0[12];

    v8 = v0[1];
    goto LABEL_11;
  }

  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v0[11], type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v9 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR);
  v10 = *(MEMORY[0x1E69E85A8] + 4);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = Attachment.waitForDecryption();
  v12 = v0[18];
  v13 = v0[16];
  v14 = v0[12];

  return MEMORY[0x1EEE6D8C8](v14, v13, v9);
}

{
  *(v0 + 48) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t Attachment.mmcsMetadata.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p__GMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  type metadata accessor for Attachment.MMCSMetadata(0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8790], v0);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in Attachment.mmcsMetadata.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in Attachment.mmcsMetadata.getter, v15);
}

uint64_t closure #1 in closure #1 in Attachment.mmcsMetadata.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = *(*(type metadata accessor for Attachment.MMCSMetadata(0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p__GMR);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v9 = *(v8 + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = type metadata accessor for UnencryptedAttachment(0);
  v5[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v5[17] = v12;
  v13 = *(v12 - 8);
  v5[18] = v13;
  v14 = *(v13 + 64) + 15;
  v5[19] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore10AttachmentC09EncryptedC6StatusOSgMd, &_s14CopresenceCore10AttachmentC09EncryptedC6StatusOSgMR) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedI6StatusOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedI6StatusOs5NeverOGGMR);
  v5[21] = v16;
  v17 = *(v16 - 8);
  v5[22] = v17;
  v18 = *(v17 + 64) + 15;
  v5[23] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR);
  v5[24] = v19;
  v20 = *(v19 - 8);
  v5[25] = v20;
  v21 = *(v20 + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in Attachment.mmcsMetadata.getter, 0, 0);
}

uint64_t closure #1 in closure #1 in Attachment.mmcsMetadata.getter()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[9];
  v6 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v0[5] = *(v5 + v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);
  v8 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);
  MEMORY[0x1B270F520](v7, v8);
  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v9 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR);
  v10 = *(MEMORY[0x1E69E85A8] + 4);
  v11 = swift_task_alloc();
  v0[27] = v11;
  *v11 = v0;
  v11[1] = closure #1 in closure #1 in Attachment.mmcsMetadata.getter;
  v12 = v0[26];
  v13 = v0[24];
  v14 = v0[20];

  return MEMORY[0x1EEE6D8C8](v14, v13, v9);
}

{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in Attachment.mmcsMetadata.getter;
  }

  else
  {
    v3 = closure #1 in closure #1 in Attachment.mmcsMetadata.getter;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in Attachment.mmcsMetadata.getter, 0, 0);
}

{
  v1 = v0[20];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    v2 = v0[10];
    (*(v0[25] + 8))(v0[26], v0[24]);
    v0[7] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
LABEL_11:
    AsyncThrowingStream.Continuation.finish(throwing:)();
    v26 = v0[26];
    v27 = v0[23];
    v29 = v0[19];
    v28 = v0[20];
    v30 = v0[16];
    v31 = v0[14];
    v32 = v0[11];

    v33 = v0[1];

    return v33();
  }

  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v1, v0[19], type metadata accessor for Attachment.EncryptedAttachmentStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v20 = v0[25];
      v19 = v0[26];
      v21 = v0[24];
      v22 = v0[19];
      v23 = v0[10];
      lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
      v24 = swift_allocError();
      *v25 = 5;
      swift_willThrow();
      (*(v20 + 8))(v19, v21);
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v22, type metadata accessor for Attachment.EncryptedAttachmentStatus);
      v0[8] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
      goto LABEL_11;
    }

    v5 = v0[15];
    v4 = v0[16];
    v7 = v0[13];
    v6 = v0[14];
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[10];
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v0[19], v4, type metadata accessor for UnencryptedAttachment);
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v4 + *(v5 + 24), v9, type metadata accessor for Attachment.MMCSMetadata);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v7 + 8))(v6, v8);
    v11 = type metadata accessor for UnencryptedAttachment;
    v12 = v4;
  }

  else
  {
    v12 = v0[19];
    v11 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
  }

  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v12, v11);
  v13 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOG_GMR);
  v14 = *(MEMORY[0x1E69E85A8] + 4);
  v15 = swift_task_alloc();
  v0[27] = v15;
  *v15 = v0;
  v15[1] = closure #1 in closure #1 in Attachment.mmcsMetadata.getter;
  v16 = v0[26];
  v17 = v0[24];
  v18 = v0[20];

  return MEMORY[0x1EEE6D8C8](v18, v17, v13);
}

{
  *(v0 + 48) = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t Attachment.$status.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t Attachment.metadata.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UnencryptedAttachment(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v1[4] = v4;
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = Attachment.metadata.getter;

  return Attachment.waitForDecryption()(v4);
}

uint64_t Attachment.metadata.getter()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = ConversationManagerClient.advertiseGroupActivity(_:);
  }

  else
  {
    v3 = Attachment.metadata.getter;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[4];
  v2 = v0[2];
  v3 = (v1 + *(v0[3] + 20));
  v4 = *v3;
  v5 = v3[1];
  outlined copy of Data?(*v3, v5);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v1, type metadata accessor for UnencryptedAttachment);
  *v2 = v4;
  v2[1] = v5;

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in Attachment.unencryptedAttachment.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v9 = *(a1 + v8);

  CurrentValueSubject.value.getter();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v7, a2, type metadata accessor for UnencryptedAttachment);
    }

    v11 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
  }

  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v7, v11);
  lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
  swift_allocError();
  *v13 = 3;
  return swift_willThrow();
}

uint64_t Attachment.status.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v2 = *(v0 + v1);

  CurrentValueSubject.value.getter();
}

uint64_t key path getter for Attachment.encryptionSlots : Attachment@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for Attachment.encryptionSlots : Attachment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Attachment.encryptionSlots.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*Attachment.encryptionSlots.modify(uint64_t *a1))(void *a1)
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

uint64_t key path getter for Attachment.$encryptionSlots : Attachment(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for Attachment.$encryptionSlots : Attachment(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t Attachment.$encryptionSlots.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*Attachment.$encryptionSlots.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore10Attachment__encryptionSlots;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

uint64_t key path getter for Attachment.status : Attachment(uint64_t *a1)
{
  v1 = *a1;
  v2 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v3 = *(v1 + v2);

  CurrentValueSubject.value.getter();
}

uint64_t key path setter for Attachment.status : Attachment(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, &v15 - v9, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  v11 = *a2;
  v12 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v13 = *(v11 + v12);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, v8, type metadata accessor for Attachment.EncryptedAttachmentStatus);

  CurrentValueSubject.send(_:)();
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v8, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, type metadata accessor for Attachment.EncryptedAttachmentStatus);
}

uint64_t Attachment.status.setter(uint64_t a1)
{
  v3 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v8 = *(v1 + v7);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, v6, type metadata accessor for Attachment.EncryptedAttachmentStatus);

  CurrentValueSubject.send(_:)();
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v6, type metadata accessor for Attachment.EncryptedAttachmentStatus);
}

void (*Attachment.status.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(*(type metadata accessor for Attachment.EncryptedAttachmentStatus(0) - 8) + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[4] = v7;
  v8 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v5[5] = *(v1 + v8);

  CurrentValueSubject.value.getter();
  return Attachment.status.modify;
}

void Attachment.status.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  if (a2)
  {
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(*(*a1 + 32), v5, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    CurrentValueSubject.send(_:)();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v5, type metadata accessor for Attachment.EncryptedAttachmentStatus);

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v4, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  }

  else
  {
    v6 = *(*a1 + 32);
    CurrentValueSubject.send(_:)();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v4, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  }

  free(v4);
  free(v5);

  free(v2);
}

__n128 Attachment.config.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config;
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  result = *(v2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t Attachment.cryptorCancellables.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t Attachment.cryptorCancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t Attachment.localEncryptionUpdateTask.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t Attachment.localEncryptionUpdateTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t Attachment.__allocating_init(id:attachment:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), uint64_t *a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), uint64_t *a5)
{
  v6 = v5;
  v94 = a4;
  v96 = a3;
  v114 = a2;
  v9 = *v5;
  v10 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v112 = *(v10 - 8);
  v111 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v110 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = v82 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
  v109 = *(v108 - 8);
  v15 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v107 = v82 - v16;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v104 = *(v105 - 8);
  v17 = *(v104 + 64);
  v18 = MEMORY[0x1EEE9AC00](v105);
  v103 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v97 = v82 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMR);
  v99 = *(v98 - 8);
  v21 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v95 = v82 - v22;
  v91 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v23 = *(*(v91 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v91);
  v93 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v92 = v82 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v88 = v82 - v28;
  v102 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v85 = *(v102 - 8);
  v29 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v84 = v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for OS_dispatch_queue.Attributes();
  v31 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82[1] = v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  v90 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = v82 - v38;
  v87 = *a5;
  v40 = a5[1];
  v86 = a5[2];
  v41 = a5[3];
  v42 = a5[4];
  v43 = OBJC_IVAR____TtC14CopresenceCore10Attachment__encryptionSlots;
  v44 = MEMORY[0x1E69E7CC0];
  aBlock = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore017AttachmentLedger_D10EncryptionVGMd, &_sSDys6UInt64V14CopresenceCore017AttachmentLedger_D10EncryptionVGMR);
  Published.init(initialValue:)();
  (*(v36 + 32))(v5 + v43, v39, v35);
  *(v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables) = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask) = 0;
  v113 = type metadata accessor for OS_dispatch_queue();
  aBlock = _typeName(_:qualified:)();
  v116 = v45;
  MEMORY[0x1B2710020](45, 0xE100000000000000);
  v46 = type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v101 = a1;
  v47 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v47);

  static DispatchQoS.unspecified.getter();
  aBlock = v44;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v85 + 104))(v84, *MEMORY[0x1E69E8090], v102);
  *(v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v100 = v46;
  v102 = *(v46 - 8);
  (*(v102 + 16))(v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_id, a1, v46);
  *(v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localParticipantID) = v94;
  v48 = v96;
  outlined init with copy of UserNotificationCenter(v96, v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor);
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMR) + 48);
  v94 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
  v50 = v88;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v114, v88, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  *(v50 + v49) = 0;
  swift_storeEnumTagMultiPayload();
  v51 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v52 = v92;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v50, v92, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v52, v93, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = CurrentValueSubject.init(_:)();
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v52, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v50, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  *(v6 + v51) = v56;
  swift_endAccess();
  v57 = (v6 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config);
  *v57 = v87;
  v57[1] = v40;
  v57[2] = v86;
  v57[3] = v41;
  v57[4] = v42;
  aBlock = v56;
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);

  v58 = v95;
  Publisher.compactMap<A>(_:)();

  swift_beginAccess();
  v59 = v97;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>, [UInt64 : AttachmentLedger_AttachmentEncryption]> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMR);
  v60 = v98;
  Publisher<>.assign(to:)();
  (*(v99 + 8))(v58, v60);
  v61 = v104;
  v62 = v105;
  (*(v104 + 16))(v103, v59, v105);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v61 + 8))(v59, v62);
  v63 = v48[3];
  v64 = v48[4];
  __swift_project_boxed_opaque_existential_1(v48, v63);
  aBlock = (*(v64 + 16))(v63, v64);
  v65 = OBJC_IVAR____TtC14CopresenceCore10Attachment_queue;
  v66 = v48;
  v121 = *(v6 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  v67 = v121;
  v68 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v69 = v106;
  (*(*(v68 - 8) + 56))(v106, 1, 1, v68);
  v70 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<UUID, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
  v71 = v107;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v69, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
  v72 = v108;
  Publisher<>.sink(receiveValue:)();

  (*(v109 + 8))(v71, v72);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v73 = *(v6 + v65);
  v74 = v114;
  v75 = v110;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v114, v110, v94);
  outlined init with copy of UserNotificationCenter(v66, &v121);
  v76 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v77 = (v111 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v75, v78 + v76, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  *(v78 + v77) = v6;
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(&v121, v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8));
  v79 = swift_allocObject();
  *(v79 + 16) = partial apply for closure #3 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:);
  *(v79 + 24) = v78;
  v119 = thunk for @callee_guaranteed () -> ()partial apply;
  v120 = v79;
  aBlock = MEMORY[0x1E69E9820];
  v116 = 1107296256;
  v117 = thunk for @escaping @callee_guaranteed () -> ();
  v118 = &block_descriptor_26_0;
  v80 = _Block_copy(&aBlock);

  dispatch_sync(v73, v80);
  _Block_release(v80);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v74, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  (*(v102 + 8))(v101, v100);
  LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

  if (v73)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v66);

    return v6;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Attachment.updateLocalEncryption()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (one-time initialization token for attachment == -1)
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
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.attachment);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v30);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Attempting to update local encryption for attachment %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B27120C0](v17, -1, -1);
    MEMORY[0x1B27120C0](v16, -1, -1);
  }

  v21 = OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask;
  swift_beginAccess();
  v22 = *(v1 + v21);
  if (v22)
  {
    v23 = *(v1 + v21);

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B2710400](v22, MEMORY[0x1E69E7CA8] + 8, v24, MEMORY[0x1E69E7288]);

    v22 = *(v1 + v21);
  }

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v22;
  v26[5] = v1;

  v27 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in Attachment.updateLocalEncryption(), v26);
  v28 = *(v1 + v21);
  *(v1 + v21) = v27;
}

void closure #3 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32[3] = v32 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMR);
  v35 = *(v33 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v32 - v7;
  v8 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v32 - v12;
  if (one-time initialization token for attachment != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Log.attachment);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v20 = Message.debugDescription.getter();
    v32[2] = v15;
    v21 = a1;
    v23 = v22;
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v38);
    a1 = v21;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1AEB26000, v16, v17, "Attempting to unpack attachment %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1B27120C0](v19, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v13, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  Attachment.unpack(attachment:)(a1);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136315138;
    v29 = Attachment.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v38);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1AEB26000, v25, v26, "Successfully unpacked attachment %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1B27120C0](v28, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }
}

uint64_t Attachment.unpack(attachment:)(uint64_t a1)
{
  v2 = v1;
  v72 = a1;
  v62 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v3 = *(*(v62 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v62);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - v7;
  v9 = type metadata accessor for UnencryptedAttachment(0);
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - v16;
  v61 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v64 = *(v61 - 8);
  v18 = *(v64 + 64);
  v19 = MEMORY[0x1EEE9AC00](v61);
  v65 = v20;
  v66 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8020], v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    if (one-time initialization token for attachment == -1)
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
  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Log.attachment);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v72, v22, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v60 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v59 = v17;
    v35 = v34;
    v58 = swift_slowAlloc();
    v70 = v58;
    *v35 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v36 = Message.debugDescription.getter();
    v37 = v2;
    v38 = v8;
    v39 = v6;
    v41 = v40;
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v22, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v41, &v70);
    v6 = v39;
    v8 = v38;
    v2 = v37;

    *(v35 + 4) = v42;
    _os_log_impl(&dword_1AEB26000, v32, v33, "Attempting to unpack attachment %s", v35, 0xCu);
    v43 = v58;
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x1B27120C0](v43, -1, -1);
    v44 = v35;
    v17 = v59;
    MEMORY[0x1B27120C0](v44, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v22, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  v45 = *(v72 + 16);
  v46 = v66;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v72, v66, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v47 = (*(v64 + 80) + 24) & ~*(v64 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v2;
  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v46, v48 + v47, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v71[0] = v45;
  v71[1] = partial apply for closure #1 in Attachment.unpack(attachment:);
  v71[2] = v48;
  v71[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v71[4] = 0;
  v71[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  v71[6] = 0;

  specialized Sequence.first(where:)(v71, v17);

  v49 = v67;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v17, v67, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  if ((*(v68 + 48))(v49, 1, v69) == 1)
  {
    outlined destroy of NSObject?(v49, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1AEB26000, v50, v51, "Failed to decrypt attachment", v52, 2u);
      MEMORY[0x1B27120C0](v52, -1, -1);
    }

    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v53 = 0;
    swift_willThrow();
    return outlined destroy of NSObject?(v17, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  }

  else
  {
    v55 = v63;
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v49, v63, type metadata accessor for UnencryptedAttachment);
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v55, v8, type metadata accessor for UnencryptedAttachment);
    swift_storeEnumTagMultiPayload();
    v56 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
    swift_beginAccess();
    v57 = *(v2 + v56);
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v8, v6, type metadata accessor for Attachment.EncryptedAttachmentStatus);

    CurrentValueSubject.send(_:)();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v6, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v8, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v55, type metadata accessor for UnencryptedAttachment);
    outlined destroy of NSObject?(v17, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  }
}

uint64_t closure #1 in closure #3 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)()
{
  v0 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(result + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
    *v12 = v15;
    (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    result = (*(v9 + 8))(v12, v8);
    if (v15)
    {
      v17 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
      swift_beginAccess();
      v18 = *(v14 + v17);

      CurrentValueSubject.value.getter();

      if (swift_getEnumCaseMultiPayload())
      {

        v19 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
        v20 = v7;
      }

      else
      {
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v7, v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        Attachment.unpackAndRetry(attachment:)(v3);

        v19 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
        v20 = v3;
      }

      return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v20, v19);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Attachment.unpackAndRetry(attachment:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchTime();
  v75 = *(v83 - 8);
  v9 = *(v75 + 64);
  v10 = MEMORY[0x1EEE9AC00](v83);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v69 - v12;
  v13 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v80 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v81 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v69 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21);
  v74 = v26;
  v27 = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if (v27)
  {
    return Attachment.unpack(attachment:)(a1);
  }

  __break(1u);
  swift_once();
  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Log.attachment);

  v31 = v27;
  v71 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v70 = v4;
    v36 = v35;
    aBlock[0] = v35;
    *v34 = 136315394;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, aBlock);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    aBlock[6] = v27;
    v40 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v41 = String.init<A>(reflecting:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, aBlock);

    *(v34 + 14) = v43;
    _os_log_impl(&dword_1AEB26000, v32, v33, "Failed to unpack attachment %s, reason: %s", v34, 0x16u);
    swift_arrayDestroy();
    v44 = v36;
    v4 = v70;
    MEMORY[0x1B27120C0](v44, -1, -1);
    MEMORY[0x1B27120C0](v34, -1, -1);
  }

  v45 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v46 = *(v2 + v45);

  CurrentValueSubject.value.getter();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = v84;
  if (EnumCaseMultiPayload)
  {

    return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v20, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMR);
    v50 = *&v20[*(v49 + 48)];
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v20, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v51 = v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config;
    if (v50 >= *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config + 16))
    {
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_1AEB26000, v63, v64, "Exceeded retry attempts.", v65, 2u);
        MEMORY[0x1B27120C0](v65, -1, -1);
      }

      v66 = v81;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v48, v81, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      swift_storeEnumTagMultiPayload();
      v67 = *(v2 + v45);
      v68 = v80;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v66, v80, type metadata accessor for Attachment.EncryptedAttachmentStatus);

      CurrentValueSubject.send(_:)();

      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v68, type metadata accessor for Attachment.EncryptedAttachmentStatus);
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v66, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    }

    else
    {
      v52 = *(v49 + 48);
      v53 = v81;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v48, v81, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      *(v53 + v52) = v50 + 1;
      swift_storeEnumTagMultiPayload();
      v54 = *(v2 + v45);
      v55 = v80;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v53, v80, type metadata accessor for Attachment.EncryptedAttachmentStatus);

      CurrentValueSubject.send(_:)();
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v55, type metadata accessor for Attachment.EncryptedAttachmentStatus);
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v53, type metadata accessor for Attachment.EncryptedAttachmentStatus);

      v56 = v73;
      static DispatchTime.now()();
      v57 = *(v51 + 24);
      + infix(_:_:)();
      v84 = *(v75 + 8);
      v84(v56, v83);
      v58 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in Attachment.unpackAndRetry(attachment:);
      aBlock[5] = v58;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_37;
      v59 = _Block_copy(aBlock);

      v60 = v76;
      static DispatchQoS.unspecified.getter();
      v85 = MEMORY[0x1E69E7CC0];
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v61 = v78;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v62 = v82;
      MEMORY[0x1B2710670](v82, v60, v61, v59);
      _Block_release(v59);

      (*(v72 + 8))(v61, v4);
      (*(v77 + 8))(v60, v79);
      v84(v62, v83);
    }
  }
}

uint64_t Attachment.init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v8 = v7;
  v151 = a6;
  v166 = a5;
  v167 = a2;
  v162 = a3;
  v165 = a1;
  v11 = *v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v143 = &v127 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
  v145 = *(v146 - 8);
  v15 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v127 - v16;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v140 = *(v141 - 8);
  v17 = *(v140 + 64);
  v18 = MEMORY[0x1EEE9AC00](v141);
  v138 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v127 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMR);
  v136 = *(v137 - 8);
  v21 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v127 - v22;
  v23 = type metadata accessor for Attachment.MMCSMetadata(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v156 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SymmetricKey();
  v163 = *(v26 - 8);
  v164 = v26;
  v27 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v154 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v29 = *(*(v131 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v131);
  v133 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v134 = &v127 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v132 = &v127 - v34;
  v35 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v159 = *(v35 - 8);
  v160 = v35;
  v36 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v157 = &v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for OS_dispatch_queue.Attributes();
  v38 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v127 - v45;
  v47 = a4[1];
  v152 = *a4;
  v153 = v47;
  v150 = *a7;
  v48 = a7[1];
  v149 = a7[2];
  v49 = a7[3];
  v50 = a7[4];
  v51 = OBJC_IVAR____TtC14CopresenceCore10Attachment__encryptionSlots;
  v52 = MEMORY[0x1E69E7CC0];
  v169 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore017AttachmentLedger_D10EncryptionVGMd, &_sSDys6UInt64V14CopresenceCore017AttachmentLedger_D10EncryptionVGMR);
  Published.init(initialValue:)();
  v130 = v43;
  v53 = *(v43 + 32);
  v128 = v51;
  v158 = v42;
  v53(&v8[v51], v46, v42);
  *&v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables] = MEMORY[0x1E69E7CD0];
  *&v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask] = 0;
  v161 = type metadata accessor for OS_dispatch_queue();
  v142 = v11;
  v169 = _typeName(_:qualified:)();
  v170 = v54;
  MEMORY[0x1B2710020](45, 0xE100000000000000);
  v55 = type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v56 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v56);

  static DispatchQoS.unspecified.getter();
  v169 = v52;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v159 + 104))(v157, *MEMORY[0x1E69E8090], v160);
  v57 = v151;
  v58 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v148 = OBJC_IVAR____TtC14CopresenceCore10Attachment_queue;
  *&v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_queue] = v58;
  v157 = *(v55 - 8);
  v59 = *(v157 + 2);
  v127 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v159 = v55;
  v59(&v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_id], v165, v55);
  *&v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_localParticipantID] = v57;
  v147 = OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor;
  v60 = v166;
  outlined init with copy of UserNotificationCenter(v166, &v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor]);
  v160 = v8;
  v61 = &v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_config];
  v62 = v60;
  *v61 = v150;
  *(v61 + 1) = v48;
  *(v61 + 2) = v149;
  *(v61 + 3) = v49;
  *(v61 + 4) = v50;
  v63 = v60[3];
  v64 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v65 = v155;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v66 = v169;
  v67 = v170;
  v68 = (*(v64 + 56))(v169, v170, 0, v63, v64);
  v70 = v69;
  outlined consume of Data._Representation(v66, v67);
  v155 = v70;
  if (v70 >> 60 == 15)
  {
    v72 = v163;
    v71 = v164;
    v73 = v162;
    v74 = v167;
    outlined consume of Data?(v152, v153);
    if (one-time initialization token for attachment != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Log.attachment);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v160;
    if (v78)
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_1AEB26000, v76, v77, "Failed to encrypt the asset's key", v80, 2u);
      MEMORY[0x1B27120C0](v80, -1, -1);
    }

    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v81 = 2;
    swift_willThrow();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v73, type metadata accessor for Attachment.MMCSMetadata);
    (*(v72 + 8))(v74, v71);
    v82 = *(v157 + 1);
    v83 = v159;
    v82(v165, v159);
    v82(v79 + v127, v83);
    (*(v130 + 8))(v79 + v128, v158);

    __swift_destroy_boxed_opaque_existential_1Tm(&v147[v79]);
    v84 = *(v79 + OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables);

    v85 = *(v79 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask);

    v86 = *(*v79 + 48);
    v87 = *(*v79 + 52);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v166);
    return v79;
  }

  (*(v163 + 16))(v154, v167, v164);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v162, v156, type metadata accessor for Attachment.MMCSMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V_14CopresenceCore017AttachmentLedger_G10EncryptionVtGMd, &_ss23_ContiguousArrayStorageCys6UInt64V_14CopresenceCore017AttachmentLedger_G10EncryptionVtGMR);
  v88 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_14CopresenceCore017AttachmentLedger_D10EncryptionVtMd, &_ss6UInt64V_14CopresenceCore017AttachmentLedger_D10EncryptionVtMR) - 8);
  v89 = *(*v88 + 72);
  v90 = (*(*v88 + 80) + 32) & ~*(*v88 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1AEE07B20;
  v92 = (v91 + v90);
  v93 = v88[14];
  *v92 = v57;
  v94 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  MEMORY[0x1EEE9AC00](v94);
  *(&v127 - 4) = v166;
  *(&v127 - 3) = v68;
  v150 = v68;
  *(&v127 - 2) = v155;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  static Message.with(_:)();
  v151 = v65;
  if (!v65)
  {
    v95 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(v91);
    swift_setDeallocating();
    outlined destroy of NSObject?(v92, &_ss6UInt64V_14CopresenceCore017AttachmentLedger_D10EncryptionVtMd, &_ss6UInt64V_14CopresenceCore017AttachmentLedger_D10EncryptionVtMR);
    swift_deallocClassInstance();
    v96 = v132;
    (*(v163 + 32))(v132, v154, v164);
    v97 = type metadata accessor for UnencryptedAttachment(0);
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v156, v96 + v97[6], type metadata accessor for Attachment.MMCSMetadata);
    v98 = (v96 + v97[5]);
    v99 = v153;
    *v98 = v152;
    v98[1] = v99;
    *(v96 + v97[7]) = v95;
    swift_storeEnumTagMultiPayload();
    v100 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
    v79 = v160;
    swift_beginAccess();
    v101 = v134;
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v96, v134, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v101, v133, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);
    v103 = *(v102 + 48);
    v104 = *(v102 + 52);
    swift_allocObject();
    v105 = CurrentValueSubject.init(_:)();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v101, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v96, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    *(v79 + v100) = v105;
    swift_endAccess();
    v169 = v105;
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);

    v106 = v135;
    Publisher.compactMap<A>(_:)();

    swift_beginAccess();
    v107 = v139;
    Published.projectedValue.getter();
    swift_endAccess();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>, [UInt64 : AttachmentLedger_AttachmentEncryption]> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMR);
    v108 = v137;
    Publisher<>.assign(to:)();
    (*(v136 + 8))(v106, v108);
    v109 = v140;
    v110 = v141;
    (*(v140 + 16))(v138, v107, v141);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    (*(v109 + 8))(v107, v110);
    v111 = v166;
    v112 = v166[3];
    v113 = v166[4];
    __swift_project_boxed_opaque_existential_1(v166, v112);
    v114 = (*(v113 + 16))(v112, v113);
    v168 = *(v79 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
    v115 = v168;
    v169 = v114;
    v116 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v117 = v143;
    (*(*(v116 - 8) + 56))(v143, 1, 1, v116);
    v118 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<UUID, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
    v119 = v144;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v117, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
    v120 = v146;
    Publisher<>.sink(receiveValue:)();

    (*(v145 + 8))(v119, v120);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
    outlined consume of Data?(v150, v155);

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v162, type metadata accessor for Attachment.MMCSMetadata);
    (*(v163 + 8))(v167, v164);
    (*(v157 + 1))(v165, v159);
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    return v79;
  }

  v122 = v160;
  (*(v157 + 1))(v160 + v127, v159);
  (*(v130 + 8))(v122 + v128, v158);

  __swift_destroy_boxed_opaque_existential_1Tm(&v147[v122]);
  v123 = *(v122 + OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables);

  v124 = *(v122 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask);

  v125 = *(*v122 + 48);
  v126 = *(*v122 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t closure #1 in Attachment.init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a2;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  static Message.with(_:)();
  v13 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  outlined destroy of NSObject?(a1 + v13, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v12, a1 + v13, type metadata accessor for AttachmentLedger_EncryptionID);
  (*(v9 + 56))(a1 + v13, 0, 1, v8);
  v14 = *a1;
  v15 = a1[1];
  outlined copy of Data._Representation(a3, a4);
  result = outlined consume of Data._Representation(v14, v15);
  *a1 = a3;
  a1[1] = a4;
  return result;
}

uint64_t closure #1 in closure #1 in Attachment.init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 8))(v9, v10);
  v18[0] = UUID.uuid.getter();
  v18[1] = v11;
  v12 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v18, &v19);
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v12;
  *(a1 + 8) = v14;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #1 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UnencryptedAttachment(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, v11, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v11, v7, type metadata accessor for UnencryptedAttachment);
    v16 = *&v7[*(v4 + 28)];

    v17 = type metadata accessor for UnencryptedAttachment;
    v18 = v7;
  }

  else
  {
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v11, v15, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v16 = *(v15 + 2);

    v17 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
    v18 = v15;
  }

  result = outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v18, v17);
  *a2 = v16;
  return result;
}

void closure #2 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v47 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - v15;
  if (one-time initialization token for attachment != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Log.attachment);
  v19 = *(v8 + 16);
  v19(v16, a1, v7);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v52 = v21;
  if (os_log_type_enabled(v20, v21))
  {
    v48 = v20;
    v49 = v18;
    v22 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56[0] = v47;
    *v22 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = v53;
      v19(v53, Strong + OBJC_IVAR____TtC14CopresenceCore10Attachment_id, v7);

      v25 = 0;
    }

    else
    {
      v25 = 1;
      v24 = v53;
    }

    (*(v8 + 56))(v24, v25, 1, v7);
    v26 = v51;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v8 + 48))(v26, 1, v7) == 1)
    {
      v27 = 0xE300000000000000;
      v28 = 7104878;
    }

    else
    {
      (*(v8 + 32))(v14, v26, v7);
      v19(v50, v14, v7);
      v28 = String.init<A>(reflecting:)();
      v27 = v29;
      (*(v8 + 8))(v14, v7);
    }

    outlined destroy of NSObject?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v56);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v8 + 8))(v16, v7);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v56);

    *(v22 + 14) = v34;
    v35 = v48;
    _os_log_impl(&dword_1AEB26000, v48, v52, "%s observed local encryptionID updated to %s", v22, 0x16u);
    v36 = v47;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v36, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v16, v7);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Attachment.updateLocalEncryption()();
    if (v37)
    {

      v38 = v37;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v54 = v37;
        v55 = v42;
        *v41 = 136315138;
        v43 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v44 = String.init<A>(reflecting:)();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v55);

        *(v41 + 4) = v46;
        _os_log_impl(&dword_1AEB26000, v39, v40, "Failed to update localEncryption, error=%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x1B27120C0](v42, -1, -1);
        MEMORY[0x1B27120C0](v41, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t closure #1 in Attachment.unpackAndRetry(attachment:)()
{
  v0 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
    swift_beginAccess();
    v11 = *(v9 + v10);

    CurrentValueSubject.value.getter();

    if (swift_getEnumCaseMultiPayload())
    {

      v12 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
      v13 = v7;
    }

    else
    {
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v7, v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v14 = *(v9 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 24);
      v15 = *(v9 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 32);
      v16 = __swift_project_boxed_opaque_existential_1((v9 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor), v14);
      v17 = *(v3 + 2);
      v18 = *(v17 + 16);
      if (v18)
      {
        v20[1] = v16;
        v21 = v15;
        v22 = v14;
        v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5(v18, 0);
        v23 = specialized Sequence._copySequenceContents(initializing:)(&v24, v19 + 4, v18, v17);

        result = outlined consume of Set<String>.Iterator._Variant();
        if (v23 != v18)
        {
          __break(1u);
          return result;
        }

        v15 = v21;
        v14 = v22;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      (*(v15 + 72))(v19, v14, v15);

      v12 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
      v13 = v3;
    }

    return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v13, v12);
  }

  return result;
}

uint64_t closure #1 in Attachment.unpack(attachment:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v348 = a3;
  v360 = a2;
  v368 = a1;
  v364 = a4;
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v361 = *(v4 - 8);
  v5 = *(v361 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v356 = &v310 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v357 = &v310 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v358 = &v310 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v363 = &v310 - v12;
  v346 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v13 = *(*(v346 - 8) + 64);
  MEMORY[0x1EEE9AC00](v346);
  v329 = &v310 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v340 = (&v310 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v352 = &v310 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v359 = &v310 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v362 = &v310 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v314 = &v310 - v25;
  v26 = type metadata accessor for BinaryDecodingOptions();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v320 = &v310 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata();
  v29 = *(*(v321 - 8) + 64);
  MEMORY[0x1EEE9AC00](v321);
  v323 = &v310 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for Attachment.MMCSMetadata(0);
  v31 = *(*(v319 - 8) + 64);
  MEMORY[0x1EEE9AC00](v319);
  v324 = &v310 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v331 = &v310 - v35;
  v336 = type metadata accessor for URL();
  v334 = *(v336 - 8);
  v36 = *(v334 + 64);
  v37 = MEMORY[0x1EEE9AC00](v336);
  v327 = &v310 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v333 = &v310 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v342 = &v310 - v42;
  v347 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v351 = *(v347 - 8);
  v43 = v351[8];
  MEMORY[0x1EEE9AC00](v347);
  v343 = (&v310 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v326 = &v310 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v325 = &v310 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v317 = &v310 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v316 = &v310 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v335 = &v310 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v350 = &v310 - v57;
  v354 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v353 = *(v354 - 1);
  v58 = *(v353 + 64);
  v59 = MEMORY[0x1EEE9AC00](v354);
  v322 = (&v310 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = MEMORY[0x1EEE9AC00](v59);
  v318 = (&v310 - v62);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v328 = &v310 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v315 = (&v310 - v66);
  v67 = MEMORY[0x1EEE9AC00](v65);
  v330 = (&v310 - v68);
  MEMORY[0x1EEE9AC00](v67);
  v341 = (&v310 - v69);
  v338 = type metadata accessor for AES.GCM.SealedBox();
  v339 = *(v338 - 8);
  v70 = *(v339 + 64);
  v71 = MEMORY[0x1EEE9AC00](v338);
  v332 = &v310 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v337 = &v310 - v74;
  MEMORY[0x1EEE9AC00](v73);
  v349 = &v310 - v75;
  v344 = type metadata accessor for SymmetricKey();
  v345 = *(v344 - 8);
  v76 = *(v345 + 64);
  MEMORY[0x1EEE9AC00](v344);
  v355 = &v310 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78 - 8);
  v81 = &v310 - v80;
  v82 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v83 = *(v82 - 8);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v86 = (&v310 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v90 = &v310 - v89;
  v365 = type metadata accessor for UUID();
  v367 = *(v365 - 8);
  v91 = *(v367 + 64);
  v92 = MEMORY[0x1EEE9AC00](v365);
  v94 = &v310 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x1EEE9AC00](v92);
  v97 = &v310 - v96;
  MEMORY[0x1EEE9AC00](v95);
  v369 = &v310 - v98;
  v366 = v4;
  v99 = *(v4 + 28);
  v100 = v368;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v368 + v99, v81, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v101 = *(v83 + 48);
  if (v101(v81, 1, v82) == 1)
  {
    *v86 = xmmword_1AEE0C200;
    v102 = v86 + *(v82 + 20);
    UnknownStorage.init()();
    if (v101(v81, 1, v82) != 1)
    {
      outlined destroy of NSObject?(v81, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v81, v86, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  v103 = *v86;
  v104 = v86[1];
  outlined copy of Data._Representation(*v86, v104);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v86, type metadata accessor for AttachmentLedger_EncryptionID);
  UUID.init(data:)(v103, v104, v90);
  v105 = v367;
  v106 = v365;
  v107 = &type metadata singleton initialization cache for ActivitySessionManager;
  if ((*(v367 + 48))(v90, 1, v365) == 1)
  {
    outlined destroy of NSObject?(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    v108 = swift_allocError();
    *v109 = 1;
    swift_willThrow();
    v110 = v366;
  }

  else
  {
    v111 = v369;
    (*(v105 + 32))(v369, v90, v106);
    v112 = *(v360 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 24);
    v113 = *(v360 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 32);
    v313 = (v360 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor);
    __swift_project_boxed_opaque_existential_1((v360 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor), v112);
    v114 = (*(v113 + 24))(v112, v113);
    LOBYTE(v112) = specialized Sequence<>.contains(_:)(v111, v114);

    if (v112)
    {
      if (one-time initialization token for attachment != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      v116 = __swift_project_value_buffer(v115, static Log.attachment);
      (*(v105 + 16))(v97, v369, v106);
      v312 = v116;
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&v370 = v120;
        *v119 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v121 = dispatch thunk of CustomStringConvertible.description.getter();
        v122 = v105;
        v124 = v123;
        v311 = *(v122 + 8);
        v311(v97, v106);
        v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v124, &v370);

        *(v119 + 4) = v125;
        _os_log_impl(&dword_1AEB26000, v117, v118, "Attempting to decrypt attachment with SKI: %s", v119, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        MEMORY[0x1B27120C0](v120, -1, -1);
        MEMORY[0x1B27120C0](v119, -1, -1);
      }

      else
      {

        v311 = *(v105 + 8);
        v311(v97, v106);
      }

      v137 = v313[3];
      v138 = v313[4];
      __swift_project_boxed_opaque_existential_1(v313, v137);
      v140 = (*(v138 + 64))(*v100, v100[1], v369, 0, v137, v138);
      v142 = v141;
      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v143, v144))
      {
        v146 = swift_slowAlloc();
        *v146 = 0;
        _os_log_impl(&dword_1AEB26000, v143, v144, "Attempting to create and unpack MMCSMetadata box", v146, 2u);
        MEMORY[0x1B27120C0](v146, -1, -1);
      }

      *&v370 = v140;
      *(&v370 + 1) = v142;
      v352 = v140;
      v356 = v142;
      outlined copy of Data._Representation(v140, v142);
      SymmetricKey.init<A>(data:)();
      v310 = *(v346 + 36);
      v147 = v350;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v348 + v310, v350, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
      v149 = v353 + 48;
      v148 = *(v353 + 48);
      v150 = v354;
      v151 = v148(v147, 1, v354);
      v353 = v149;
      v340 = v148;
      if (v151 == 1)
      {
        v152 = v341;
        *v341 = 0;
        v152[1] = 0xE000000000000000;
        v152[2] = 0;
        v152[3] = 0xE000000000000000;
        *(v152 + 2) = xmmword_1AEE0C200;
        *(v152 + 3) = xmmword_1AEE0C200;
        v153 = v152 + *(v150 + 32);
        UnknownStorage.init()();
        v154 = v351[7];
        v155 = v347;
        v154(v152 + *(v150 + 36), 1, 1, v347);
        v154(v152 + v354[10], 1, 1, v155);
        v156 = v350;
        v150 = v354;
        v157 = v148(v350, 1, v354);
        v158 = v342;
        if (v157 != 1)
        {
          outlined destroy of NSObject?(v156, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
        }
      }

      else
      {
        v152 = v341;
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v147, v341, type metadata accessor for AttachmentLedger_MMCSMetadata);
        v155 = v347;
        v158 = v342;
      }

      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v152 + *(v150 + 36), v158, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
      v159 = v351[6];
      if (v159(v158, 1, v155) == 1)
      {
        v160 = v343;
        *v343 = 0;
        v160[1] = 0;
        v160[2] = 0xC000000000000000;
        v161 = v160 + *(v155 + 24);
        UnknownStorage.init()();
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v152, type metadata accessor for AttachmentLedger_MMCSMetadata);
        if (v159(v158, 1, v155) != 1)
        {
          outlined destroy of NSObject?(v158, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
        }
      }

      else
      {
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v152, type metadata accessor for AttachmentLedger_MMCSMetadata);
        v160 = v343;
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v158, v343, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      }

      v162 = v160;
      v163 = v160[1];
      v164 = *(v162 + 16);
      outlined copy of Data._Representation(v163, v164);
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v162, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(v163, v164);
      v343 = static AES.GCM.open(_:using:)();
      v350 = v188;
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&dword_1AEB26000, v189, v190, "Attempting to create and unpack Attachment box", v191, 2u);
        MEMORY[0x1B27120C0](v191, -1, -1);
      }

      v192 = v348;
      v193 = v348[5];
      v194 = v348[6];
      outlined copy of Data._Representation(v193, v194);
      v195 = v337;
      _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(v193, v194);
      v196 = v338;
      v197 = v340;
      v341 = static AES.GCM.open(_:using:)();
      v342 = v198;
      v199 = v335;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v192 + v310, v335, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
      v200 = v354;
      if (v197(v199, 1, v354) == 1)
      {
        v201 = v330;
        *v330 = 0;
        v201[1] = 0xE000000000000000;
        v201[2] = 0;
        v201[3] = 0xE000000000000000;
        *(v201 + 2) = xmmword_1AEE0C200;
        *(v201 + 3) = xmmword_1AEE0C200;
        v202 = v201 + *(v200 + 32);
        UnknownStorage.init()();
        v203 = v351[7];
        v204 = v201 + *(v200 + 36);
        v205 = v347;
        v203(v204, 1, 1, v347);
        v206 = v205;
        v200 = v354;
        v203(v201 + v354[10], 1, 1, v206);
        v207 = v335;
        if (v197(v335, 1, v200) != 1)
        {
          outlined destroy of NSObject?(v207, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
        }
      }

      else
      {
        v201 = v330;
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v199, v330, type metadata accessor for AttachmentLedger_MMCSMetadata);
      }

      v208 = v201[2];
      v209 = v201[3];

      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v201, type metadata accessor for AttachmentLedger_MMCSMetadata);
      v210 = v331;
      URL.init(string:)();

      v211 = v334;
      v212 = v336;
      if ((*(v334 + 48))(v210, 1, v336) == 1)
      {
        outlined destroy of NSObject?(v210, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v213 = v329;
        outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v192, v329, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v214 = Logger.logObject.getter();
        v215 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v214, v215))
        {
          v216 = v200;
          v217 = swift_slowAlloc();
          v360 = swift_slowAlloc();
          *&v370 = v360;
          *v217 = 136315138;
          v218 = v326;
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v213 + *(v346 + 36), v326, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
          v219 = v340;
          if (v340(v218, 1, v200) == 1)
          {
            v220 = v322;
            *v322 = 0;
            v220[1] = 0xE000000000000000;
            v220[2] = 0;
            v220[3] = 0xE000000000000000;
            *(v220 + 2) = xmmword_1AEE0C200;
            *(v220 + 3) = xmmword_1AEE0C200;
            v221 = v220 + v216[8];
            UnknownStorage.init()();
            outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v213, type metadata accessor for AttachmentLedger_AttachmentMetadata);
            v222 = v216[9];
            v354 = v217;
            v223 = v351[7];
            v224 = v347;
            v223(v220 + v222, 1, 1, v347);
            v225 = v224;
            v226 = v326;
            v223(v220 + v216[10], 1, 1, v225);
            v217 = v354;
            if (v219(v226, 1, v216) != 1)
            {
              outlined destroy of NSObject?(v226, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
            }
          }

          else
          {
            outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v213, type metadata accessor for AttachmentLedger_AttachmentMetadata);
            v220 = v322;
            outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v218, v322, type metadata accessor for AttachmentLedger_MMCSMetadata);
          }

          v241 = v220[2];
          v242 = v220[3];

          outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v220, type metadata accessor for AttachmentLedger_MMCSMetadata);
          v243 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v241, v242, &v370);

          *(v217 + 4) = v243;
          _os_log_impl(&dword_1AEB26000, v214, v215, "Failed to convert %s to URL", v217, 0xCu);
          v244 = v360;
          __swift_destroy_boxed_opaque_existential_1Tm(v360);
          MEMORY[0x1B27120C0](v244, -1, -1);
          MEMORY[0x1B27120C0](v217, -1, -1);

          v195 = v337;
        }

        else
        {

          outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v213, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        }

        lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
        v108 = swift_allocError();
        *v245 = 1;
        swift_willThrow();
        outlined consume of Data._Representation(v343, v350);
        outlined consume of Data._Representation(v341, v342);
        outlined consume of Data._Representation(v352, v356);
        v246 = *(v339 + 8);
        v246(v195, v196);
        v247 = v349;
        v248 = v196;
      }

      else
      {
        v346 = *(v211 + 32);
        (v346)(v333, v210, v212);
        (*(v339 + 16))(v332, v349, v196);
        AttachmentLedger_AttachmentMetadata.uploadStatus.getter(&v370);
        v329 = v211 + 32;
        v331 = *(&v370 + 1);
        v335 = v370;
        v330 = v371;
        v227 = v316;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v192 + v310, v316, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
        v228 = v354;
        v229 = v340;
        if (v340(v227, 1, v354) == 1)
        {
          v230 = v315;
          *v315 = 0;
          v230[1] = 0xE000000000000000;
          v230[2] = 0;
          v230[3] = 0xE000000000000000;
          *(v230 + 2) = xmmword_1AEE0C200;
          *(v230 + 3) = xmmword_1AEE0C200;
          v231 = v230 + *(v228 + 32);
          UnknownStorage.init()();
          v232 = *(v228 + 36);
          v233 = v351[7];
          v234 = v347;
          v233(v230 + v232, 1, 1, v347);
          v233(v230 + v354[10], 1, 1, v234);
          v228 = v354;
          v235 = v229;
          v236 = v229(v227, 1, v354);
          v237 = v334;
          v238 = v327;
          v239 = v317;
          v240 = v328;
          if (v236 != 1)
          {
            outlined destroy of NSObject?(v227, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
          }
        }

        else
        {
          v235 = v229;
          v230 = v315;
          outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v227, v315, type metadata accessor for AttachmentLedger_MMCSMetadata);
          v237 = v334;
          v238 = v327;
          v239 = v317;
          v240 = v328;
        }

        v249 = v230[1];
        v322 = *v230;
        v326 = v249;

        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v230, type metadata accessor for AttachmentLedger_MMCSMetadata);
        (*(v237 + 16))(v238, v333, v336);
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v348 + v310, v239, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
        if (v235(v239, 1, v228) == 1)
        {
          *v240 = 0;
          *(v240 + 8) = 0xE000000000000000;
          *(v240 + 16) = 0;
          *(v240 + 24) = 0xE000000000000000;
          *(v240 + 32) = xmmword_1AEE0C200;
          *(v240 + 48) = xmmword_1AEE0C200;
          v250 = v240 + *(v228 + 32);
          UnknownStorage.init()();
          v251 = *(v228 + 36);
          v252 = v228;
          v253 = v351[7];
          v254 = v347;
          v253(&v328[v251], 1, 1, v347);
          v253(&v328[*(v252 + 40)], 1, 1, v254);
          v255 = v252;
          v240 = v328;
          v256 = v235;
          if (v235(v239, 1, v255) != 1)
          {
            outlined destroy of NSObject?(v239, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
          }
        }

        else
        {
          v256 = v235;
          outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v239, v240, type metadata accessor for AttachmentLedger_MMCSMetadata);
        }

        v257 = *(v240 + 32);
        v258 = *(v240 + 40);
        outlined copy of Data._Representation(v257, v258);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v240, type metadata accessor for AttachmentLedger_MMCSMetadata);
        v259 = v325;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v348 + v310, v325, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
        v260 = v354;
        if (v256(v259, 1, v354) == 1)
        {
          v261 = v318;
          *v318 = 0;
          v261[1] = 0xE000000000000000;
          v261[2] = 0;
          v261[3] = 0xE000000000000000;
          *(v261 + 2) = xmmword_1AEE0C200;
          *(v261 + 3) = xmmword_1AEE0C200;
          v262 = v261 + v260[8];
          UnknownStorage.init()();
          v263 = v351[7];
          v264 = v347;
          v263(v261 + v260[9], 1, 1, v347);
          v263(v261 + v260[10], 1, 1, v264);
          v265 = v325;
          if (v256(v325, 1, v260) != 1)
          {
            outlined destroy of NSObject?(v265, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
          }
        }

        else
        {
          v261 = v318;
          outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v259, v318, type metadata accessor for AttachmentLedger_MMCSMetadata);
        }

        v267 = v261[6];
        v266 = v261[7];
        outlined copy of Data._Representation(v267, v266);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v261, type metadata accessor for AttachmentLedger_MMCSMetadata);
        v268 = v324;
        (*(v339 + 32))(v324, v332, v338);
        v269 = v319;
        v270 = (v268 + *(v319 + 20));
        v271 = v350;
        *v270 = v343;
        v270[1] = v271;
        v272 = (v268 + v269[6]);
        v273 = v331;
        *v272 = v335;
        v272[1] = v273;
        v272[2] = v330;
        v274 = (v268 + v269[7]);
        v275 = v326;
        *v274 = v322;
        v274[1] = v275;
        (v346)(v268 + v269[8], v327, v336);
        v276 = (v268 + v269[9]);
        *v276 = v257;
        v276[1] = v258;
        v277 = (v268 + v269[10]);
        *v277 = v267;
        v277[1] = v266;
        v372 = 0;
        v370 = 0u;
        v371 = 0u;
        outlined copy of Data._Representation(v341, v342);
        BinaryDecodingOptions.init()();
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
        v278 = v323;
        v279 = v321;
        Message.init(serializedData:extensions:partial:options:)();
        v280 = (v278 + *(v279 + 20));
        v281 = *v280;
        v282 = v280[1];
        if (v282 >> 60 == 15)
        {
          v283 = 0;
        }

        else
        {
          v283 = *v280;
        }

        v284 = 0xC000000000000000;
        if (v282 >> 60 != 15)
        {
          v284 = v282;
        }

        v354 = v284;
        v285 = v313[3];
        v286 = v313[4];
        __swift_project_boxed_opaque_existential_1(v313, v285);
        v287 = *(v286 + 56);
        outlined copy of Data?(v281, v282);
        v288 = v287(v352, v356, 0, v285, v286);
        if (v289 >> 60 != 15)
        {
          *&v370 = v348[2];
          v295 = *(v360 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localParticipantID);
          v296 = MEMORY[0x1EEE9AC00](v288);
          *(&v310 - 4) = v297;
          *(&v310 - 3) = v296;
          *(&v310 - 2) = v298;
          v299 = v296;
          v300 = v298;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);

          v301 = v314;
          v302 = v366;
          static Message.with(_:)();
          (*(v361 + 56))(v301, 0, 1, v302);
          specialized Dictionary.subscript.setter(v301, v295);
          outlined consume of Data?(v299, v300);
          outlined consume of Data._Representation(v341, v342);
          outlined consume of Data._Representation(v352, v356);
          outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v323, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
          (*(v334 + 8))(v333, v336);
          v303 = *(v339 + 8);
          v304 = v338;
          v303(v337, v338);
          v303(v349, v304);
          v311(v369, v365);
          v305 = v364;
          (*(v345 + 32))(v364, v355, v344);
          v306 = type metadata accessor for UnencryptedAttachment(0);
          outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v324, v305 + v306[6], type metadata accessor for Attachment.MMCSMetadata);
          v307 = v370;
          v308 = (v305 + v306[5]);
          v309 = v354;
          *v308 = v283;
          v308[1] = v309;
          *(v305 + v306[7]) = v307;
          return (*(*(v306 - 1) + 56))(v305, 0, 1, v306);
        }

        v290 = Logger.logObject.getter();
        v291 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v290, v291))
        {
          v292 = swift_slowAlloc();
          *v292 = 0;
          _os_log_impl(&dword_1AEB26000, v290, v291, "Failed to encrypt the asset's key", v292, 2u);
          MEMORY[0x1B27120C0](v292, -1, -1);
        }

        lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
        v108 = swift_allocError();
        *v293 = 2;
        swift_willThrow();
        outlined consume of Data._Representation(v283, v354);
        outlined consume of Data._Representation(v341, v342);
        outlined consume of Data._Representation(v352, v356);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v323, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v324, type metadata accessor for Attachment.MMCSMetadata);
        (*(v334 + 8))(v333, v336);
        v246 = *(v339 + 8);
        v294 = v338;
        v246(v337, v338);
        v247 = v349;
        v248 = v294;
      }

      v246(v247, v248);
      (*(v345 + 8))(v355, v344);
      v311(v369, v365);
      v110 = v366;
    }

    else
    {
      if (one-time initialization token for attachment != -1)
      {
        swift_once();
      }

      v126 = type metadata accessor for Logger();
      __swift_project_value_buffer(v126, static Log.attachment);
      (*(v105 + 16))(v94, v369, v106);
      v127 = Logger.logObject.getter();
      v128 = v106;
      v129 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v127, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *&v370 = v131;
        *v130 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v132 = dispatch thunk of CustomStringConvertible.description.getter();
        v134 = v133;
        v135 = *(v105 + 8);
        v135(v94, v128);
        v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v370);

        *(v130 + 4) = v136;
        _os_log_impl(&dword_1AEB26000, v127, v129, "remoteSKI %s is not known, skipping.", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        MEMORY[0x1B27120C0](v131, -1, -1);
        MEMORY[0x1B27120C0](v130, -1, -1);
      }

      else
      {

        v135 = *(v105 + 8);
        v135(v94, v128);
      }

      v110 = v366;
      lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
      v108 = swift_allocError();
      *v139 = 0;
      swift_willThrow();
      v135(v369, v128);
    }

    v100 = v368;
    v107 = &type metadata singleton initialization cache for ActivitySessionManager;
  }

  if (v107[256] != -1)
  {
    swift_once();
  }

  v165 = type metadata accessor for Logger();
  __swift_project_value_buffer(v165, static Log.attachment);
  v166 = v363;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v100, v363, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v167 = v108;
  v168 = Logger.logObject.getter();
  v169 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    *&v370 = v171;
    *v170 = 136315394;
    v172 = v362;
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v166, v362, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v173 = v361;
    (*(v361 + 56))(v172, 0, 1, v110);
    v174 = v172;
    v175 = v359;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v174, v359, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    if ((*(v173 + 48))(v175, 1, v110) == 1)
    {
      v176 = 7104878;
      v177 = 0xE300000000000000;
    }

    else
    {
      v178 = v175;
      v179 = v358;
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v178, v358, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v179, v357, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v176 = String.init<A>(reflecting:)();
      v177 = v180;
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v179, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    }

    outlined destroy of NSObject?(v362, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v166, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v177, &v370);

    *(v170 + 4) = v181;
    *(v170 + 12) = 2080;
    v373 = v108;
    v182 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v183 = String.init<A>(reflecting:)();
    v185 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v184, &v370);

    *(v170 + 14) = v185;
    _os_log_impl(&dword_1AEB26000, v168, v169, "Failed to decrypt symmetricKey with: %s, reason: %s", v170, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v171, -1, -1);
    MEMORY[0x1B27120C0](v170, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v166, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  v186 = type metadata accessor for UnencryptedAttachment(0);
  return (*(*(v186 - 8) + 56))(v364, 1, 1, v186);
}

uint64_t _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x1E6969080];
      v30[4] = MEMORY[0x1E6969078];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x1E6969080]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = __DataStorage._bytes.getter();
        if (v18)
        {
          v19 = __DataStorage._offset.getter();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        closure #1 in Data.init<A>(_:)(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        result = AES.GCM.SealedBox.init(combined:)();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
LABEL_25:
          v24 = MEMORY[0x1B270E950]();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = __DataStorage._offset.getter();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  outlined consume of Data._Representation(a1, a2);
  v7 = type metadata accessor for CryptoKitError();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x1E6966370]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E6966368], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #1 in Attachment.updateLocalEncryption()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(type metadata accessor for UnencryptedAttachment(0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Attachment.updateLocalEncryption(), 0, 0);
}

uint64_t closure #1 in Attachment.updateLocalEncryption()()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *(MEMORY[0x1E69E86A8] + 4);
    v3 = swift_task_alloc();
    v0[5] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v3 = v0;
    v3[1] = closure #1 in Attachment.updateLocalEncryption();
    v5 = MEMORY[0x1E69E7288];
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v4, v1, v6, v4, v5);
  }

  else
  {
    static Task<>.checkCancellation()();
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = closure #1 in Attachment.updateLocalEncryption();
    v9 = v0[3];
    v8 = v0[4];

    return Attachment.waitForDecryption()(v8);
  }
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {

    v3 = closure #1 in Attachment.updateLocalEncryption();
  }

  else
  {
    v3 = closure #1 in Attachment.updateLocalEncryption();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[6];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[4];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = closure #1 in Attachment.updateLocalEncryption();
    v7 = v0[3];
    v6 = v0[4];

    return Attachment.waitForDecryption()(v6);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = closure #1 in Attachment.updateLocalEncryption();
  }

  else
  {
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(*(v2 + 32), type metadata accessor for UnencryptedAttachment);
    v4 = closure #1 in Attachment.updateLocalEncryption();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[8];
  static Task<>.checkCancellation()();
  if (!v1)
  {
    v2 = *(v0[3] + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

{
  static Task<>.checkCancellation()();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = closure #1 in Attachment.updateLocalEncryption();
  v3 = v0[3];
  v2 = v0[4];

  return Attachment.waitForDecryption()(v2);
}

{
  v1 = v0[8];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in closure #1 in Attachment.updateLocalEncryption()(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for UnencryptedAttachment(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v32 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  result = static Task<>.checkCancellation()();
  if (!v1)
  {
    v33 = 0;
    v22 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
    swift_beginAccess();
    v32 = v22;
    v23 = *(a1 + v22);

    CurrentValueSubject.value.getter();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v20, v10, type metadata accessor for UnencryptedAttachment);
        v26 = *(a1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localParticipantID);
        v27 = v33;
        Attachment.localEncryptionSlot.getter(v6);
        v33 = v27;
        if (v27)
        {
          return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, type metadata accessor for UnencryptedAttachment);
        }

        v29 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
        (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
        v30 = &v10[*(v7 + 28)];
        specialized Dictionary.subscript.setter(v6, v26);
        outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, v18, type metadata accessor for UnencryptedAttachment);
        swift_storeEnumTagMultiPayload();
        v31 = *(a1 + v32);
        outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v18, v15, type metadata accessor for Attachment.EncryptedAttachmentStatus);

        CurrentValueSubject.send(_:)();
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v15, type metadata accessor for Attachment.EncryptedAttachmentStatus);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v18, type metadata accessor for Attachment.EncryptedAttachmentStatus);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, type metadata accessor for UnencryptedAttachment);
      }

      v25 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
    }

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v20, v25);
    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v28 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t Attachment.localEncryptionSlot.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for UnencryptedAttachment(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v19 = *(v2 + v18);

  CurrentValueSubject.value.getter();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
  if (!EnumCaseMultiPayload)
  {
LABEL_10:
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, v21);
    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v34 = 3;
    return swift_willThrow();
  }

  if (EnumCaseMultiPayload != 1)
  {
    v21 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
    goto LABEL_10;
  }

  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, v6, type metadata accessor for UnencryptedAttachment);
  v22 = *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 24);
  v23 = *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor), v22);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v25 = v38;
  v24 = v39;
  v26 = (*(v23 + 56))(v38, v39, 0, v22, v23);
  v28 = v27;
  outlined consume of Data._Representation(v25, v24);
  if (v28 >> 60 == 15)
  {
    if (one-time initialization token for attachment == -1)
    {
LABEL_6:
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Log.attachment);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1AEB26000, v30, v31, "Failed to encrypt the asset's key", v32, 2u);
        MEMORY[0x1B27120C0](v32, -1, -1);
      }

      lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
      swift_allocError();
      *v33 = 2;
      swift_willThrow();
      return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v6, type metadata accessor for UnencryptedAttachment);
    }

LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  v36 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  MEMORY[0x1EEE9AC00](v36);
  *(&v37 - 4) = v2;
  *(&v37 - 3) = v26;
  *(&v37 - 2) = v28;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  static Message.with(_:)();
  outlined consume of Data?(v26, v28);
  return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v6, type metadata accessor for UnencryptedAttachment);
}

uint64_t closure #1 in closure #1 in Attachment.unpack(attachment:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  static Message.with(_:)();
  v12 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  outlined destroy of NSObject?(a1 + v12, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v11, a1 + v12, type metadata accessor for AttachmentLedger_EncryptionID);
  (*(v8 + 56))(a1 + v12, 0, 1, v7);
  v13 = *a1;
  v14 = a1[1];
  outlined copy of Data._Representation(a3, a4);
  result = outlined consume of Data._Representation(v13, v14);
  *a1 = a3;
  a1[1] = a4;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in Attachment.unpack(attachment:)(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 24);
  v10 = *(a2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor), v9);
  (*(v10 + 8))(v9, v10);
  v18[0] = UUID.uuid.getter();
  v18[1] = v11;
  v12 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v18, &v19);
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v12;
  *(a1 + 8) = v14;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #1 in Attachment.update(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v5 = type metadata accessor for UnencryptedAttachment(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  v19 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v20 = *(a1 + v19);

  CurrentValueSubject.value.getter();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = v8;
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v18, v8, type metadata accessor for UnencryptedAttachment);
      v23 = *(v5 + 24);
      v24 = &v8[v23 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 24)];
      v25 = v24[1];
      v35 = *v24;
      v26 = v24[2];
      v27 = v39;
      v37 = a1;
      v38 = v13;
      v28 = v40;
      v29 = v41;
      outlined copy of Attachment.MMCSMetadata.UploadStatus(v39, v40, v41);
      outlined consume of Attachment.MMCSMetadata.UploadStatus(v35, v25, v26);
      *v24 = v27;
      v24[1] = v28;
      v24[2] = v29;
      v30 = v36;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v36, v16, type metadata accessor for UnencryptedAttachment);
      swift_storeEnumTagMultiPayload();
      v31 = *(v37 + v19);
      v32 = v38;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v16, v38, type metadata accessor for Attachment.EncryptedAttachmentStatus);

      CurrentValueSubject.send(_:)();
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v32, type metadata accessor for Attachment.EncryptedAttachmentStatus);
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v16, type metadata accessor for Attachment.EncryptedAttachmentStatus);

      return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v30, type metadata accessor for UnencryptedAttachment);
    }

    v22 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
  }

  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v18, v22);
  lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
  swift_allocError();
  *v34 = 3;
  return swift_willThrow();
}

uint64_t closure #1 in Attachment.update(_:)(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v71 = type metadata accessor for UnencryptedAttachment(0);
  v3 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v70 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - v16;
  v18 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v74 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v70 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v70 - v29;
  v31 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v75 = a1;
  v72 = v31;
  v32 = *(a1 + v31);

  CurrentValueSubject.value.getter();

  v73 = v22;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMR);
    v47 = *&v30[*(v46 + 48)];
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v30, v21, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v48 = v76;
    v77 = *(v76 + 16);
    v49 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v48 + *(v49 + 28), v15, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    v50 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
    v51 = *(v50 - 8);
    v52 = *(v51 + 48);
    if (v52(v15, 1, v50) == 1)
    {
      *v17 = xmmword_1AEE0C200;
      *(v17 + 2) = 0;
      v53 = &v17[*(v50 + 24)];
      UnknownStorage.init()();
      v76 = v46;
      v54 = v47;
      v55 = v21;
      v56 = *(v50 + 28);
      v57 = type metadata accessor for AttachmentLedger_EncryptionID(0);
      v58 = &v17[v56];
      v21 = v55;
      v47 = v54;
      v46 = v76;
      (*(*(v57 - 8) + 56))(v58, 1, 1, v57);
      v59 = v52(v15, 1, v50);
      v60 = v72;
      if (v59 != 1)
      {
        outlined destroy of NSObject?(v15, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
      }
    }

    else
    {
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v15, v17, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v60 = v72;
    }

    (*(v51 + 56))(v17, 0, 1, v50);
    specialized Dictionary.subscript.setter(v17, v77);
    v67 = *(v46 + 48);
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v21, v28, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    *&v28[v67] = v47;
    swift_storeEnumTagMultiPayload();
    v68 = *(v75 + v60);
    v69 = v74;
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v28, v74, type metadata accessor for Attachment.EncryptedAttachmentStatus);

    CurrentValueSubject.send(_:)();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v69, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v28, type metadata accessor for Attachment.EncryptedAttachmentStatus);

    Attachment.unpack(attachment:)(v21);
    v61 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
    v62 = v21;
    return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v62, v61);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v61 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
    v62 = v30;
    return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v62, v61);
  }

  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v30, v77, type metadata accessor for UnencryptedAttachment);
  v34 = v76;
  v70 = *(v76 + 16);
  v35 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v34 + *(v35 + 28), v9, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v36 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if (v38(v9, 1, v36) == 1)
  {
    *v12 = xmmword_1AEE0C200;
    *(v12 + 2) = 0;
    v39 = &v12[*(v36 + 24)];
    UnknownStorage.init()();
    v40 = *(v36 + 28);
    v41 = type metadata accessor for AttachmentLedger_EncryptionID(0);
    (*(*(v41 - 8) + 56))(&v12[v40], 1, 1, v41);
    v42 = v38(v9, 1, v36);
    v44 = v74;
    v43 = v75;
    v45 = v72;
    if (v42 != 1)
    {
      outlined destroy of NSObject?(v9, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v9, v12, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v44 = v74;
    v43 = v75;
    v45 = v72;
  }

  (*(v37 + 56))(v12, 0, 1, v36);
  v63 = v77;
  v64 = v77 + *(v71 + 28);
  specialized Dictionary.subscript.setter(v12, v70);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v63, v28, type metadata accessor for UnencryptedAttachment);
  swift_storeEnumTagMultiPayload();
  v65 = *(v43 + v45);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v28, v44, type metadata accessor for Attachment.EncryptedAttachmentStatus);

  CurrentValueSubject.send(_:)();
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v44, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v28, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v63, type metadata accessor for UnencryptedAttachment);
}

uint64_t Attachment.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v13 = v11;
  v14 = v12;
  MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE35FC0);
  v11 = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v6);

  MEMORY[0x1B2710020](0x737574617473202CLL, 0xEA0000000000203ALL);
  v7 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v8 = *(v1 + v7);

  CurrentValueSubject.value.getter();

  _print_unlocked<A, B>(_:_:)();
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v5, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return v13;
}

uint64_t Attachment.deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment__encryptionSlots;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment__status);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor));
  v6 = *(v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables);

  v7 = *(v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask);

  return v0;
}

uint64_t Attachment.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment__encryptionSlots;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment__status);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor));
  v6 = *(v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables);

  v7 = *(v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance Attachment@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t partial apply for closure #1 in Attachment.update(_:)()
{
  return closure #1 in Attachment.update(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

{
  v1 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in Attachment.update(_:)(v2, v3);
}

uint64_t outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Attachment.MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment.MMCSMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors()
{
  result = lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors;
  if (!lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors;
  if (!lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors);
  }

  return result;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v10 - v6, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  v8 = type metadata accessor for UnencryptedAttachment(0);
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (result != 1)
  {
    return outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v7, a2, type metadata accessor for UnencryptedAttachment);
  }

  __break(1u);
  return result;
}

void partial apply for closure #3 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)()
{
  v1 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #3 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(v0 + v2, v3);
}

uint64_t partial apply for closure #1 in Attachment.updateLocalEncryption()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in Attachment.updateLocalEncryption()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in Attachment.unpack(attachment:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  return closure #1 in Attachment.unpack(attachment:)(a1, v6, v7, a2);
}

void type metadata completion function for UnencryptedAttachment()
{
  type metadata accessor for SymmetricKey();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Attachment.MMCSMetadata(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [UInt64 : AttachmentLedger_AttachmentEncryption]();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Attachment()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<[UInt64 : AttachmentLedger_AttachmentEncryption]>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for Attachment.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Attachment.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Attachment.UpdatingBlob(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Attachment.UpdatingBlob(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata completion function for Attachment.MMCSMetadata()
{
  result = type metadata accessor for AES.GCM.SealedBox();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Attachment.MMCSMetadata.UploadStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 24))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 16) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Attachment.MMCSMetadata.UploadStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for Attachment.MMCSMetadata.UploadStatus(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 13;
  }

  else if (a2)
  {
    result[1] = 0;
    result[2] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Attachment.Metadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Attachment.Metadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void type metadata completion function for Attachment.EncryptedAttachmentStatus()
{
  type metadata accessor for (AttachmentLedger_AttachmentMetadata, attempt: Int)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnencryptedAttachment(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_AttachmentMetadata(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (AttachmentLedger_AttachmentMetadata, attempt: Int)()
{
  if (!lazy cache variable for type metadata for (AttachmentLedger_AttachmentMetadata, attempt: Int))
  {
    type metadata accessor for AttachmentLedger_AttachmentMetadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttachmentLedger_AttachmentMetadata, attempt: Int));
    }
  }
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in closure #1 in Attachment.mmcsMetadata.getter(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in Attachment.mmcsMetadata.getter(a1, v6, v7, v8, v1 + v5);
}

uint64_t PresenceSessionClientConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PresenceSessionClientConnection.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for PresenceSessionClientConnection.handleServerDisconnectClosure : PresenceSessionClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
}

uint64_t key path setter for PresenceSessionClientConnection.handleServerDisconnectClosure : PresenceSessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
}

Swift::Void __swiftcall PresenceSessionClientConnection.handleServerDisconnect()()
{
  v1 = v0 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v2);
  }
}

uint64_t key path getter for PresenceSessionClientConnection.handleUpdatedPresentDevices : PresenceSessionClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [TUExternalParticipant]) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
}

uint64_t key path setter for PresenceSessionClientConnection.handleUpdatedPresentDevices : PresenceSessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMGroupActivitySessionEvent) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
}

uint64_t PresenceSessionClientConnection.handleServerDisconnectClosure.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t PresenceSessionClientConnection.handleServerDisconnectClosure.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

Swift::Void __swiftcall PresenceSessionClientConnection.updatePresentDevices(devices:)(Swift::OpaquePointer devices)
{
  v3 = v1 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices;
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);

    v4(devices._rawValue);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v4);
  }
}

uint64_t @objc PresenceSessionClientConnection.updatePresentDevices(devices:)(char *a1)
{
  type metadata accessor for PresenceSessionParticipant();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = &a1[direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices];
  swift_beginAccess();
  v4 = *v3;
  if (!*v3)
  {
  }

  v5 = *(v3 + 1);
  v6 = a1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4);
  v4(v2);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v4);
}

id PresenceSessionClientConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenceSessionClientConnection.init()()
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v2 = &v0[direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices];
  *v3 = 0;
  *(v3 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id @objc PresenceSessionClientConnection.init()(char *a1)
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v3 = &a1[direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &a1[direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices];
  *v4 = 0;
  *(v4 + 1) = 0;
  v6.receiver = a1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t PresenceSessionClientConnection.__ivar_destroyer()
{
  v1 = direct field offset for PresenceSessionClientConnection.id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure));
  v4 = *(v0 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices);
  v5 = *(v0 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices + 8);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v4);
}

id PresenceSessionClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc PresenceSessionClientConnection.__ivar_destroyer(uint64_t a1)
{
  v2 = direct field offset for PresenceSessionClientConnection.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure + 8);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure));
  v5 = *(a1 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices);
  v6 = *(a1 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices + 8);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v5);
}

uint64_t type metadata accessor for PresenceSessionClientConnection()
{
  result = type metadata singleton initialization cache for PresenceSessionClientConnection;
  if (!type metadata singleton initialization cache for PresenceSessionClientConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PresenceSessionClientConnection()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _sytIegr_Ieg_TRTA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t ForegroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](ForegroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
}

uint64_t ForegroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = ForegroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:);
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v2, v3);
}

{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for ApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:) in conformance ForegroundApplicationLaunchBehavior(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 88);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for ApplicationLaunchBehavior.revokeBackgroundAuthorization(for:) in conformance ForegroundApplicationLaunchBehavior()
{
  (*(*v0 + 96))();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t dispatch thunk of ForegroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 88);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v12(a1, a2, a3);
}

uint64_t CPManagedConfigurationObserver.allowed.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver____lazy_storage___allowed;
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver____lazy_storage___allowed);
  if (v2 == 2)
  {
    LOBYTE(v2) = [*(v0 + OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_profileConnection) isGroupActivityAllowed];
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t (*CPManagedConfigurationObserver.allowed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = CPManagedConfigurationObserver.allowed.getter() & 1;
  return CPManagedConfigurationObserver.allowed.modify;
}

uint64_t CPManagedConfigurationObserver.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t CPManagedConfigurationObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CPManagedConfigurationObserver.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_delegate;
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

id CPManagedConfigurationObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CPManagedConfigurationObserver.init()()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver____lazy_storage___allowed] = 2;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_profileConnection] = result;
    *&v0[OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.default);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1AEB26000, v4, v5, "Initializing CPManagedConfigurationObserver", v6, 2u);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }

    v16.receiver = v1;
    v16.super_class = type metadata accessor for CPManagedConfigurationObserver();
    v7 = objc_msgSendSuper2(&v16, sel_init);
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 defaultCenter];
    v11 = *MEMORY[0x1E69ADD68];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15[4] = partial apply for closure #1 in CPManagedConfigurationObserver.init();
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v15[3] = &block_descriptor_25;
    v13 = _Block_copy(v15);

    v14 = [v10 addObserverForName:v11 object:0 queue:0 usingBlock:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in CPManagedConfigurationObserver.init()()
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
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "CPManagedConfigurationObserver got MCEffectiveSettingsChangedNotification notification", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = [*(v1 + OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_profileConnection) isGroupActivityAllowed];
    v7 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))(v6);
    if ((*((*v7 & *v1) + 0x80))(v8))
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      v12 = (*((*v7 & *v1) + 0x68))();
      (*(v10 + 8))(v12 & 1, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

id CPManagedConfigurationObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPManagedConfigurationObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for CPManagedConfigurationObserverProtocol.delegate.modify in conformance CPManagedConfigurationObserver(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

void one-time initialization function for hostObjectInterface(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

uint64_t DatagramEndpoint.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if ((v0[4] & 1) == 0)
  {
    strcpy(v16, "Direct(");
    v16[1] = 0xE700000000000000;
    swift_getObjectType();
    v4 = dispatch thunk of NWGroupDescriptor.members.getter();
    v5 = type metadata accessor for NWEndpoint();
    v6 = MEMORY[0x1B2710180](v4, v5);
    v8 = v7;

    MEMORY[0x1B2710020](v6, v8);

    goto LABEL_5;
  }

  v3 = v0[3];
  if (v3 >> 60 == 15)
  {
    _StringGuts.grow(_:)(16);

    strcpy(v16, "RelaySession(");
    HIWORD(v16[1]) = -4864;
    MEMORY[0x1B2710020](v2, v1);
LABEL_5:
    MEMORY[0x1B2710020](41, 0xE100000000000000);
    return v16[0];
  }

  v9 = v0[2];
  outlined copy of Data._Representation(v9, v3);
  _StringGuts.grow(_:)(20);

  strcpy(v16, "RelaySession(");
  HIWORD(v16[1]) = -4864;
  MEMORY[0x1B2710020](v2, v1);
  MEMORY[0x1B2710020](8236, 0xE200000000000000);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = String.init<A>(reflecting:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x1B2710020](v12, v14);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  outlined consume of Data?(v9, v3);
  return v16[0];
}

uint64_t getEnumTagSinglePayload for DatagramEndpoint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DatagramEndpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

Swift::Int UnreliableMessengerError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t UnreliableMessenger.Message.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t UnreliableMessenger.Message.init(data:fromParticipantID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t UnreliableMessenger.SendItem.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t UnreliableMessenger.SendItem.completion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v1);
  return v1;
}

uint64_t UnreliableMessenger.SendItem.sentAt.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  outlined copy of Data?(v1, *(v0 + 64));
  return v1;
}

uint64_t UnreliableMessenger.SendItem.sentAt.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return outlined consume of Data?(v5, v6);
}

double UnreliableMessenger.SendItem.__allocating_init(data:toParticipantIDs:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  result = 0.0;
  *(v10 + 56) = xmmword_1AEE07B50;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  return result;
}

uint64_t UnreliableMessenger.SendItem.init(data:toParticipantIDs:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = xmmword_1AEE07B50;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

void *UnreliableMessenger.SendItem.deinit()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v0[5]);
  outlined consume of Data?(v0[7], v0[8]);
  return v0;
}

uint64_t UnreliableMessenger.SendItem.__deallocating_deinit()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v0[5]);
  outlined consume of Data?(v0[7], v0[8]);

  return swift_deallocClassInstance();
}

uint64_t UnreliableMessenger.State.description.getter(unsigned __int8 a1)
{
  v1 = 0x6C616974696E49;
  v2 = 0x63656E6E6F636552;
  v3 = 0x676E697474756853;
  if (a1 != 4)
  {
    v3 = 0x6E776F6474756853;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x676E697472617453;
  if (a1 != 1)
  {
    v4 = 0x7964616552;
  }

  if (a1)
  {
    v1 = v4;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UnreliableMessenger.State()
{
  v1 = *v0;
  v2 = 0x6C616974696E49;
  v3 = 0x63656E6E6F636552;
  v4 = 0x676E697474756853;
  if (v1 != 4)
  {
    v4 = 0x6E776F6474756853;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E697472617453;
  if (v1 != 1)
  {
    v5 = 0x7964616552;
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

Swift::Int UnreliableMessenger.BufferFull.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

uint64_t UnreliableMessenger.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

double UnreliableMessenger.config.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 56);
  v4 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  return result;
}

uint64_t UnreliableMessenger.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 88);
  return result;
}

uint64_t UnreliableMessenger.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 88) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*UnreliableMessenger.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 88);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return UnreliableMessenger.delegate.modify;
}

void UnreliableMessenger.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 88) = *(*a1 + 32);
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

uint64_t UnreliableMessenger.serviceProvider.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t UnreliableMessenger.activeReliableSubscribers.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for UnreliableMessenger.activeReliableSubscribers : UnreliableMessenger@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for UnreliableMessenger.activeReliableSubscribers : UnreliableMessenger(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t UnreliableMessenger.activeReliableSubscribers.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*UnreliableMessenger.activeReliableSubscribers.modify(uint64_t *a1))(void *a1)
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

uint64_t UnreliableMessenger.$activeReliableSubscribers.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for UnreliableMessenger.$activeReliableSubscribers : UnreliableMessenger(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for UnreliableMessenger.$activeReliableSubscribers : UnreliableMessenger(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t UnreliableMessenger.$activeReliableSubscribers.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*UnreliableMessenger.$activeReliableSubscribers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore19UnreliableMessenger__activeReliableSubscribers;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

uint64_t UnreliableMessenger.__allocating_init(name:config:localParticipantID:delegate:dataCryptorProvider:retainRefOnStart:serviceProvider:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72 = a8;
  v70 = a7;
  v60 = a6;
  v73 = a5;
  v59 = a4;
  v58 = a1;
  v71 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v15 = *(v14 - 8);
  v68 = v14;
  v69 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v53 - v17;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v65 = *(v18 - 8);
  v66 = v18;
  v19 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OS_dispatch_queue.Attributes();
  v21 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v57 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  v56 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v53 - v29;
  v55 = *a3;
  v54 = *(a3 + 2);
  v31 = *(a3 + 3);
  v53 = *(a3 + 4);
  v32 = swift_allocObject();
  *(v32 + 16) = a10;
  *(v32 + 24) = a11;
  v61 = a11;
  v33 = *(v11 + 48);
  v34 = *(v11 + 52);
  v35 = swift_allocObject();
  *(v35 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v35 + 152) = 0;
  *(v35 + 136) = 0u;
  *(v35 + 120) = 0u;
  *(v35 + 168) = 0u;
  *(v35 + 184) = 0u;
  v36 = MEMORY[0x1E69E7CC8];
  *(v35 + 200) = 0;
  *(v35 + 208) = v36;
  *(v35 + 216) = v36;
  *(v35 + 224) = v36;
  v37 = MEMORY[0x1E69E7CC0];
  *(v35 + 232) = MEMORY[0x1E69E7CC0];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMR);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  *(v35 + 240) = PassthroughSubject.init()();
  *(v35 + 248) = 0;
  *(v35 + 256) = v36;
  *(v35 + 264) = 0;
  v41 = OBJC_IVAR____TtC14CopresenceCore19UnreliableMessenger__activeReliableSubscribers;
  v76 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
  Published.init(initialValue:)();
  (*(v27 + 32))(v35 + v41, v30, v26);
  v42 = v58;
  *(v35 + 16) = v58;
  *(v35 + 24) = a2;
  *(v35 + 32) = v55;
  *(v35 + 48) = v54;
  *(v35 + 56) = v31;
  v43 = v59;
  *(v35 + 64) = v53;
  *(v35 + 72) = v43;
  swift_beginAccess();
  *(v35 + 88) = v60;
  swift_unknownObjectWeakAssign();
  v44 = *(v35 + 184);
  v45 = *(v35 + 192);
  v47 = v71;
  v46 = v72;
  *(v35 + 184) = v72;
  *(v35 + 192) = v47;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v46);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v44);
  *(v35 + 96) = partial apply for implicit closure #1 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:retainRefOnStart:serviceProvider:);
  *(v35 + 104) = v32;
  type metadata accessor for OS_dispatch_queue();
  v74 = 0xD000000000000014;
  v75 = 0x80000001AEE361E0;

  MEMORY[0x1B2710020](v42, a2);

  static DispatchQoS.unspecified.getter();
  v74 = v37;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v65 + 104))(v64, *MEMORY[0x1E69E8090], v66);
  *(v35 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v35 + 160) = 0;
  swift_beginAccess();
  v48 = v67;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v49 = v68;
  v50 = Publisher<>.sink(receiveValue:)();

  swift_unknownObjectRelease();

  _sxRi_zRi0_zlyytIseghHr_SgWOe(v72);

  (*(v69 + 8))(v48, v49);
  v51 = *(v35 + 264);
  *(v35 + 264) = v50;

  outlined destroy of NSObject?(v70, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  return v35;
}

uint64_t UnreliableMessenger.__allocating_init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v75 = a8;
  v76 = a7;
  v65 = a6;
  v80 = a5;
  v64 = a4;
  v63 = a1;
  v78 = a9;
  v79 = a10;
  v77 = a12;
  v66 = a11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v74 = *(v73 - 8);
  v16 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v61 - v17;
  v71 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v70 = *(v71 - 8);
  v18 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for OS_dispatch_queue.Attributes();
  v20 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v62 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v61 - v28;
  v30 = *(v13 + 48);
  v31 = *(v13 + 52);
  v32 = swift_allocObject();
  v61 = *a3;
  v33 = *(a3 + 2);
  v34 = *(a3 + 3);
  v35 = *(a3 + 4);
  *(v32 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v32 + 152) = 0;
  *(v32 + 136) = 0u;
  *(v32 + 120) = 0u;
  *(v32 + 168) = 0u;
  *(v32 + 184) = 0u;
  v36 = MEMORY[0x1E69E7CC8];
  *(v32 + 200) = 0;
  *(v32 + 208) = v36;
  *(v32 + 216) = v36;
  *(v32 + 224) = v36;
  v37 = MEMORY[0x1E69E7CC0];
  *(v32 + 232) = MEMORY[0x1E69E7CC0];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMR);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *(v32 + 240) = PassthroughSubject.init()();
  *(v32 + 248) = 0;
  *(v32 + 256) = v36;
  *(v32 + 264) = 0;
  v41 = OBJC_IVAR____TtC14CopresenceCore19UnreliableMessenger__activeReliableSubscribers;
  aBlock = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
  Published.init(initialValue:)();
  (*(v26 + 32))(v32 + v41, v29, v25);
  v42 = v63;
  *(v32 + 16) = v63;
  *(v32 + 24) = a2;
  *(v32 + 32) = v61;
  *(v32 + 48) = v33;
  *(v32 + 56) = v34;
  v43 = v64;
  *(v32 + 64) = v35;
  *(v32 + 72) = v43;
  swift_beginAccess();
  *(v32 + 88) = v65;
  swift_unknownObjectWeakAssign();
  v44 = *(v32 + 184);
  v45 = *(v32 + 192);
  v47 = v78;
  v46 = v79;
  *(v32 + 184) = v78;
  *(v32 + 192) = v46;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v47);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v44);
  v48 = v77;
  *(v32 + 96) = v66;
  *(v32 + 104) = v48;
  type metadata accessor for OS_dispatch_queue();
  aBlock = 0xD000000000000014;
  v82 = 0x80000001AEE361E0;

  MEMORY[0x1B2710020](v42, a2);

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v70 + 104))(v69, *MEMORY[0x1E69E8090], v71);
  *(v32 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v32 + 160) = 0;
  swift_beginAccess();
  v49 = v72;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v50 = v73;
  v51 = Publisher<>.sink(receiveValue:)();

  (*(v74 + 8))(v49, v50);
  v52 = *(v32 + 264);
  *(v32 + 264) = v51;

  if ((v75 & 1) == 0)
  {
    goto LABEL_4;
  }

  v53 = *(v32 + 112);
  v54 = v76;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v76, v87, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v55 = swift_allocObject();
  v56 = v87[1];
  *(v55 + 16) = v87[0];
  *(v55 + 32) = v56;
  *(v55 + 48) = v88;
  *(v55 + 56) = v32;
  v57 = swift_allocObject();
  *(v57 + 16) = partial apply for closure #2 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:);
  *(v57 + 24) = v55;
  v85 = _sIg_Ieg_TRTA_0;
  v86 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = thunk for @escaping @callee_guaranteed () -> ();
  v84 = &block_descriptor_26;
  v58 = _Block_copy(&aBlock);

  dispatch_sync(v53, v58);
  _Block_release(v58);

  swift_unknownObjectRelease();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v78);
  outlined destroy of NSObject?(v54, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_4:
    outlined destroy of NSObject?(v76, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);

    _sxRi_zRi0_zlyytIseghHr_SgWOe(v78);
    swift_unknownObjectRelease();
  }

  return v32;
}

uint64_t UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v72 = a8;
  v73 = a7;
  v62 = a6;
  v77 = a5;
  v61 = a4;
  v60 = a1;
  v75 = a9;
  v76 = a10;
  v74 = a12;
  v63 = a11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v71 = *(v70 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v58 - v17;
  v68 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v67 = *(v68 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for OS_dispatch_queue.Attributes();
  v20 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v59 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v58 - v28;
  v58 = *a3;
  v30 = *(a3 + 2);
  v31 = *(a3 + 3);
  v32 = *(a3 + 4);
  *(v13 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 152) = 0;
  *(v13 + 136) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 184) = 0u;
  v33 = MEMORY[0x1E69E7CC8];
  *(v13 + 200) = 0;
  *(v13 + 208) = v33;
  *(v13 + 216) = v33;
  *(v13 + 224) = v33;
  v34 = MEMORY[0x1E69E7CC0];
  *(v13 + 232) = MEMORY[0x1E69E7CC0];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMR);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  *(v13 + 240) = PassthroughSubject.init()();
  *(v13 + 248) = 0;
  *(v13 + 256) = v33;
  *(v13 + 264) = 0;
  v38 = OBJC_IVAR____TtC14CopresenceCore19UnreliableMessenger__activeReliableSubscribers;
  aBlock = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
  Published.init(initialValue:)();
  (*(v26 + 32))(v13 + v38, v29, v25);
  v39 = v60;
  *(v13 + 16) = v60;
  *(v13 + 24) = a2;
  *(v13 + 32) = v58;
  *(v13 + 48) = v30;
  *(v13 + 56) = v31;
  v40 = v61;
  *(v13 + 64) = v32;
  *(v13 + 72) = v40;
  swift_beginAccess();
  *(v13 + 88) = v62;
  swift_unknownObjectWeakAssign();
  v41 = *(v13 + 184);
  v42 = *(v13 + 192);
  v44 = v75;
  v43 = v76;
  *(v13 + 184) = v75;
  *(v13 + 192) = v43;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v44);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v41);
  v45 = v74;
  *(v13 + 96) = v63;
  *(v13 + 104) = v45;
  type metadata accessor for OS_dispatch_queue();
  aBlock = 0xD000000000000014;
  v79 = 0x80000001AEE361E0;

  MEMORY[0x1B2710020](v39, a2);

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v67 + 104))(v66, *MEMORY[0x1E69E8090], v68);
  *(v13 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v13 + 160) = 0;
  swift_beginAccess();
  v46 = v69;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v47 = v70;
  v48 = Publisher<>.sink(receiveValue:)();

  (*(v71 + 8))(v46, v47);
  v49 = *(v13 + 264);
  *(v13 + 264) = v48;

  if ((v72 & 1) == 0)
  {
    goto LABEL_4;
  }

  v50 = *(v13 + 112);
  v51 = v73;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v73, v84, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v52 = swift_allocObject();
  v53 = v84[1];
  *(v52 + 16) = v84[0];
  *(v52 + 32) = v53;
  *(v52 + 48) = v85;
  *(v52 + 56) = v13;
  v54 = swift_allocObject();
  *(v54 + 16) = closure #2 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:)partial apply;
  *(v54 + 24) = v52;
  v82 = thunk for @callee_guaranteed () -> ()partial apply;
  v83 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = thunk for @escaping @callee_guaranteed () -> ();
  v81 = &block_descriptor_29_1;
  v55 = _Block_copy(&aBlock);

  dispatch_sync(v50, v55);
  _Block_release(v55);

  swift_unknownObjectRelease();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v75);
  outlined destroy of NSObject?(v51, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_4:
    outlined destroy of NSObject?(v73, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);

    _sxRi_zRi0_zlyytIseghHr_SgWOe(v75);
    swift_unknownObjectRelease();
  }

  return v13;
}

uint64_t partial apply for implicit closure #1 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:retainRefOnStart:serviceProvider:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void closure #1 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVys6UInt64VGMd, &_ss20CollectionDifferenceVys6UInt64VGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v67 - v5;
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v69 = v7;
    v70 = v3;
    v77 = v7;
    swift_beginAccess();
    v10 = *(v9 + 256);
    v11 = *(v10 + 16);
    v73 = v9;
    v71 = v6;
    if (!v11)
    {
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_10;
    }

    v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5(v11, 0);
    v13 = specialized Sequence._copySequenceContents(initializing:)(v75, v12 + 4, v11, v10);

    outlined consume of Set<String>.Iterator._Variant();
    if (v13 == v11)
    {
      v9 = v73;
LABEL_10:
      v75[0] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [UInt64] and conformance [A], &_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
      BidirectionalCollection<>.difference<A>(from:)();

      v68 = v2;
      v18 = CollectionDifference.removals.getter();
      v20 = *(v18 + 16);
      v67[1] = v18;
      if (v20)
      {
        v21 = (v18 + 57);
        v22 = MEMORY[0x1E69E7CC0];
        *&v19 = 136315138;
        v72 = v19;
        do
        {
          v23 = *(v21 - 17);
          if (*v21)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
            }

            v25 = *(v22 + 2);
            v24 = *(v22 + 3);
            if (v25 >= v24 >> 1)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
            }

            *(v22 + 2) = v25 + 1;
            *&v22[8 * v25 + 32] = v23;
          }

          else
          {
            v26 = *(v21 - 25);
            v27 = *(v21 - 9);
            v28 = *(v21 - 1);
            if (one-time initialization token for log != -1)
            {
              swift_once();
            }

            v29 = type metadata accessor for Logger();
            __swift_project_value_buffer(v29, log);
            v30 = Logger.logObject.getter();
            v31 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v74 = v22;
              v33 = v32;
              v34 = swift_slowAlloc();
              v77 = v34;
              *v33 = v72;
              v75[0] = v26;
              v75[1] = v23;
              v75[2] = v27;
              LOWORD(v76) = v28;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceV6ChangeOys6UInt64V_GMd, &_ss20CollectionDifferenceV6ChangeOys6UInt64V_GMR);
              v35 = String.init<A>(reflecting:)();
              v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v77);

              *(v33 + 4) = v37;
              _os_log_impl(&dword_1AEB26000, v30, v31, "Learned about insertion when looking at removals: %s", v33, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v34);
              v38 = v34;
              v9 = v73;
              MEMORY[0x1B27120C0](v38, -1, -1);
              v39 = v33;
              v22 = v74;
              MEMORY[0x1B27120C0](v39, -1, -1);
            }
          }

          v21 += 32;
          --v20;
        }

        while (v20);
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, log);
      v41 = v69;

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      v44 = v22;
      if (os_log_type_enabled(v42, v43))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v75[0] = v46;
        *v45 = 136315394;
        v47 = MEMORY[0x1E69E76D8];
        v48 = MEMORY[0x1B2710180](v41, MEMORY[0x1E69E76D8]);
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v75);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = MEMORY[0x1B2710180](v44, v47);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v75);
        v22 = v44;

        *(v45 + 14) = v53;
        _os_log_impl(&dword_1AEB26000, v42, v43, "[UnreliableMessenger] Learned about new subscribers list: %s, removedParticipants: %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v46, -1, -1);
        MEMORY[0x1B27120C0](v45, -1, -1);
      }

      v54 = *(v22 + 2);
      if (v54)
      {
        v55 = (v44 + 32);
        do
        {
          v59 = *v55++;
          swift_beginAccess();
          v60 = *(v9 + 256);
          v61 = specialized __RawDictionaryStorage.find<A>(_:)(v59);
          if (v62)
          {
            v63 = v61;
            v64 = *(v9 + 256);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v66 = *(v9 + 256);
            v77 = v66;
            *(v9 + 256) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v66 = v77;
            }

            v56 = (*(v66 + 56) + 24 * v63);
            v58 = *v56;
            v57 = v56[1];

            specialized _NativeDictionary._delete(at:)(v63, v66);
            *(v9 + 256) = v66;
          }

          swift_endAccess();
          --v54;
        }

        while (v54);
      }

      (*(v70 + 8))(v71, v68);
      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (one-time initialization token for log != -1)
  {
LABEL_38:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, log);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1AEB26000, v15, v16, "[UnreliableMessenger] Can't clear seqNumBuffers since we lost refernce to self.", v17, 2u);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }
}