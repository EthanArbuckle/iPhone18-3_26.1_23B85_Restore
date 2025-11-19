uint64_t partial apply for closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall BackgroundSession.handlePresentDevicesChanged(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.service);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore13PresentDevice_pGMd, &_sSay14CopresenceCore13PresentDevice_pGMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Presence updated present devices: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  BackgroundSession.setupIDSGroupSessionIfNecessary()();
  v11 = *(**(v2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 128);
  v13 = *(v11(v12) + 16);

  v14 = v2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
  swift_beginAccess();
  outlined init with copy of UserNotificationCenter(v14, v22);
  v15 = v23;
  v16 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v17 = (*(v16 + 8))(v15, v16);
  v18 = __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (v17 < v13)
  {
    v19 = *(v11(v18) + 16);

    swift_beginAccess();
    v20 = *(v14 + 24);
    v21 = *(v14 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v14, v20);
    (*(v21 + 16))(v19, v20, v21);
    swift_endAccess();
  }
}

uint64_t BackgroundSession.updateSuspensionController(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, v6, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  v4 = v7;
  result = outlined destroy of NSObject?(v6, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of UserNotificationCenter(a1, v6);
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(v6, v1 + v3, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
    return swift_endAccess();
  }

  return result;
}

uint64_t BackgroundSession.join()()
{
  *(v1 + 32) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundSession.join(), v0, 0);
}

{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v0[6] = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v3 = *(v1 + v2);

  CurrentValueSubject.value.getter();

  v4 = v0[2];
  v0[7] = v4;
  if ((v4 >> 62) - 1 >= 2)
  {
    if (v4 >> 62 == 3)
    {
      outlined consume of BackgroundSession.State(v4);
      v15 = v0[5];
      v16 = v0[6];
      v17 = v0[4];
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
      v19 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession);
      v20 = swift_allocObject();
      v20[2] = v17;
      v20[3] = v19;
      v20[4] = v17;
      swift_retain_n();
      v21 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in BackgroundSession.join(), v20);
      v0[12] = v21;
      v22 = *(v17 + v16);
      v0[3] = v21;

      CurrentValueSubject.send(_:)();

      BackgroundSession.state.didset();
      v23 = *(MEMORY[0x1E69E86A8] + 4);
      v24 = swift_task_alloc();
      v0[13] = v24;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v24 = v0;
      v24[1] = BackgroundSession.join();
      v12 = MEMORY[0x1E69E7288];
      v14 = MEMORY[0x1E69E7CA8] + 8;
      v13 = v21;
    }

    else
    {
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Log.service);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1AEB26000, v26, v27, "Join already in progress, awaiting completion of it.", v28, 2u);
        MEMORY[0x1B27120C0](v28, -1, -1);
      }

      v29 = *(MEMORY[0x1E69E86A8] + 4);
      v30 = swift_task_alloc();
      v0[10] = v30;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v30 = v0;
      v30[1] = BackgroundSession.join();
      v12 = MEMORY[0x1E69E7288];
      v14 = MEMORY[0x1E69E7CA8] + 8;
      v13 = v4;
    }
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.service);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1AEB26000, v6, v7, "We are going to wait for our current ending task to finish...", v8, 2u);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }

    v9 = *(MEMORY[0x1E69E86A8] + 4);
    v10 = swift_task_alloc();
    v0[8] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v10 = v0;
    v10[1] = BackgroundSession.join();
    v12 = MEMORY[0x1E69E7288];
    v13 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v14 = MEMORY[0x1E69E7CA8] + 8;
  }

  return MEMORY[0x1EEE6DA10](v11, v13, v14, v11, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = v0;

  outlined consume of BackgroundSession.State(v4);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = BackgroundSession.join();
  }

  else
  {
    v7 = BackgroundSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v3;
  swift_retain_n();
  v7 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in BackgroundSession.join(), v6);
  v0[12] = v7;
  v8 = *(v3 + v2);
  v0[3] = v7;

  CurrentValueSubject.send(_:)();

  BackgroundSession.state.didset();
  v9 = *(MEMORY[0x1E69E86A8] + 4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v10 = v0;
  v10[1] = BackgroundSession.join();
  v12 = MEMORY[0x1E69E7288];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v11, v7, v13, v11, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = BackgroundSession.join();
  }

  else
  {
    v6 = BackgroundSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  outlined consume of BackgroundSession.State(v0[7]);
  v1 = v0[5];

  v2 = v0[1];

  return v2();
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = BackgroundSession.join();
  }

  else
  {
    v6 = BackgroundSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[12];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

{
  outlined consume of BackgroundSession.State(v0[7]);
  v1 = v0[11];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in BackgroundSession.join()()
{
  v1 = [*(v0[2] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled];
  v2 = v0[2];
  if (v1)
  {
    BackgroundSession.setupIDSGroupSession()();
    v3 = v0[1];

    return v3();
  }

  else
  {
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession);
    v5 = *(MEMORY[0x1E69E88F0] + 4);
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = closure #1 in BackgroundSession.join();
    v7 = v0[2];

    return MEMORY[0x1EEE6DE18]();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = closure #1 in BackgroundSession.join();
  }

  else
  {
    v6 = SKPresenceDataSource.releasePresence();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in BackgroundSession.join()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = closure #1 in closure #1 in BackgroundSession.join();

  return BackgroundSession.assertPresence()();
}

uint64_t closure #1 in closure #1 in BackgroundSession.join()()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.join(), v7, 0);
  }
}

{
  v1 = *(v0 + 16);
  BackgroundSession.setupIDSGroupSessionIfNecessary()();
  v2 = *(v0 + 8);

  return v2();
}

void closure #2 in closure #1 in BackgroundSession.join()()
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.service);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    type metadata accessor for BackgroundSession(0);

    v4 = String.init<A>(reflecting:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEB26000, oslog, v1, "Join request on %s was cancelled", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1B27120C0](v3, -1, -1);
    MEMORY[0x1B27120C0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t BackgroundSession.assertPresence()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](BackgroundSession.assertPresence(), v0, 0);
}

{
  if ([*(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled])
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.service);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEB26000, v2, v3, "Invalid function called when the fastSyncPresenceSeparationEnabled FF is enabled.", v4, 2u);
      MEMORY[0x1B27120C0](v4, -1, -1);
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[4] = __swift_project_value_buffer(v7, static Log.service);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1AEB26000, v8, v9, "Asserting presence", v10, 2u);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    v11 = v0[3];

    v12 = *(**(v11 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 192);
    v15 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[5] = v14;
    *v14 = v0;
    v14[1] = BackgroundSession.assertPresence();

    return v15();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](BackgroundSession.assertPresence(), v7, 0);
  }
}

{
  v1 = *(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);
  v0[2] = 0xC000000000000008;
  v2 = v0[4];

  CurrentValueSubject.send(_:)();

  BackgroundSession.state.didset();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Asserted presence", v5, 2u);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v6 = v0[1];

  return v6();
}

uint64_t BackgroundSession.reset()()
{
  *(v1 + 176) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundSession.reset(), v0, 0);
}

{
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v2, (v0 + 2), &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  if (v0[5])
  {
    outlined init with copy of UserNotificationCenter((v0 + 2), (v0 + 7));
    outlined destroy of NSObject?((v0 + 2), &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    v3 = v0[10];
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
    (*(v4 + 80))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  else
  {
    outlined destroy of NSObject?((v0 + 2), &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  }

  v5 = v0[22];
  v6 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (v7)
  {
    v8 = *(v0[22] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue);
    *(swift_task_alloc() + 16) = v7;
    v9 = v7;
    OS_dispatch_queue.sync<A>(execute:)();
  }

  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = BackgroundSession.reset();
  v11 = v0[22];

  return BackgroundSession.releasePresence()();
}

{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 184);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t closure #2 in BackgroundSession.reset()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](closure #2 in BackgroundSession.reset(), 0, 0);
}

uint64_t closure #2 in BackgroundSession.reset()()
{
  v1 = 0xD00000000000001DLL;
  v2 = v0[4];
  v3 = *(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter);
  _StringGuts.grow(_:)(35);

  v0[2] = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v5);

  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000001AEE31310;
  }

  v10 = (*(*v3 + 112))(0x206E6F6973736553, 0xED00007465736552, 0xD000000000000021, 0x80000001AEE36E70, v1, v9);
  v0[5] = v10;

  if (v10)
  {
    v11 = *(*v3 + 120);
    v21 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[6] = v13;
    *v13 = v0;
    v13[1] = closure #2 in BackgroundSession.reset();
    v14.n128_u64[0] = 0;

    return v21(v10, v14);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.abcReporter);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1AEB26000, v17, v18, "Failed to generate signature for session reset failure", v19, 2u);
      MEMORY[0x1B27120C0](v19, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t BackgroundSession.leave(endState:)(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundSession.leave(endState:), v1, 0);
}

uint64_t BackgroundSession.leave(endState:)()
{
  v98 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = type metadata accessor for Logger();
  v0[31] = __swift_project_value_buffer(v2, static Log.service);
  outlined copy of BackgroundSession.State(v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined consume of BackgroundSession.State(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v97[0] = v7;
    *v6 = 136315138;
    v0[27] = v5;
    outlined copy of BackgroundSession.State(v5);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v97);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Received request to leave current session with an end-desired state of: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v11 = v0[29];
  v12 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v0[32] = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v13 = *(v11 + v12);

  CurrentValueSubject.value.getter();

  v14 = v0[20];
  v0[33] = v14;
  if ((v14 >> 62) - 1 < 2)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1AEB26000, v15, v16, "We are going to wait for our current ending task to finish...", v17, 2u);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    v18 = *(MEMORY[0x1E69E86A8] + 4);
    v19 = swift_task_alloc();
    v0[34] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v19 = v0;
    v19[1] = BackgroundSession.leave(endState:);
    v21 = MEMORY[0x1E69E7288];
    v22 = v14 & 0x3FFFFFFFFFFFFFFFLL;
    v23 = MEMORY[0x1E69E7CA8] + 8;
LABEL_9:

    return MEMORY[0x1EEE6DA10](v20, v22, v23, v20, v21);
  }

  if (v14 >> 62 != 3)
  {
    outlined copy of BackgroundSession.State(v14);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    outlined consume of BackgroundSession.State(v14);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v97[0] = v27;
      *v26 = 136315138;
      v0[26] = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5Error_pGMd, &_sScTyyts5Error_pGMR);
      v28 = String.init<A>(reflecting:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v97);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1AEB26000, v24, v25, "Currently in joining state. Cancelling join request. %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v26, -1, -1);
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B2710400](v14, MEMORY[0x1E69E7CA8] + 8, v31, MEMORY[0x1E69E7288]);
    outlined consume of BackgroundSession.State(v14);
  }

  outlined consume of BackgroundSession.State(v14);
  v32 = v0[28];
  v33 = *(v0[29] + v0[32]);

  CurrentValueSubject.value.getter();

  v34 = v0[21];
  LOBYTE(v32) = specialized static BackgroundSession.State.== infix(_:_:)(v34, v32);
  outlined consume of BackgroundSession.State(v34);
  if (v32)
  {
    v35 = v0[31];
    v36 = v0[28];
    outlined copy of BackgroundSession.State(v36);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    outlined consume of BackgroundSession.State(v36);
    if (os_log_type_enabled(v37, v38))
    {
      v40 = v0[28];
      v39 = v0[29];
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v97[0] = v42;
      *v41 = 136315394;
      v43 = BackgroundSession.description.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v97);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v0[25] = v40;
      outlined copy of BackgroundSession.State(v40);
      v46 = String.init<A>(reflecting:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v97);

      *(v41 + 14) = v48;
      _os_log_impl(&dword_1AEB26000, v37, v38, "Session %s is already in desired end-state: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v42, -1, -1);
      MEMORY[0x1B27120C0](v41, -1, -1);
    }

    v49 = v0[30];

    v50 = v0[1];
  }

  else
  {
    v51 = *(v0[29] + v0[32]);

    CurrentValueSubject.value.getter();

    v52 = v0[22];
    outlined consume of BackgroundSession.State(v52);
    if (v52 != 0xC000000000000028)
    {
      v66 = v0[29];
      v65 = v0[30];
      v67 = v0[28];
      v68 = type metadata accessor for TaskPriority();
      (*(*(v68 - 8) + 56))(v65, 1, 1, v68);
      v69 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession);
      v70 = swift_allocObject();
      v70[2] = v66;
      v70[3] = v69;
      v70[4] = v66;
      v70[5] = v67;

      outlined copy of BackgroundSession.State(v67);

      v71 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v65, &async function pointer to partial apply for closure #1 in BackgroundSession.leave(endState:), v70);
      v72 = v71;
      v0[36] = v71;
      if (v67 == 0xC000000000000020)
      {
        v73 = *(v0[29] + v0[32]);
        v0[24] = v71 | 0x4000000000000000;

        CurrentValueSubject.send(_:)();

        BackgroundSession.state.didset();
      }

      else
      {
        if (([*(v0[29] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled] & 1) == 0)
        {
          v74 = [*(v0[29] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) bundleIdentifier];
          if (v74)
          {
            v75 = v0[29];
            v76 = v74;
            v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v95 = v78;
            v96 = v77;

            v79 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
            swift_beginAccess();
            outlined init with copy of UserNotificationCenter(v75 + v79, (v0 + 2));
            v80 = v0[5];
            v81 = v0[6];
            __swift_project_boxed_opaque_existential_1(v0 + 2, v80);
            v94 = UUID.uuidString.getter();
            v83 = v82;
            outlined init with copy of UserNotificationCenter(v75 + v79, (v0 + 7));
            v84 = v0[10];
            v85 = v0[11];
            __swift_project_boxed_opaque_existential_1(v0 + 7, v84);
            v86 = (*(v85 + 8))(v84, v85);
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
            outlined init with copy of UserNotificationCenter(v75 + v79, (v0 + 12));
            v88 = v0[15];
            v87 = v0[16];
            __swift_project_boxed_opaque_existential_1(v0 + 12, v88);
            v89 = (*(v87 + 8))(v88, v87);
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
            (*(v81 + 32))(v94, v83, v96, v95, v86, v89 == 33, v80, v81);

            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
          }
        }

        v90 = *(v0[29] + v0[32]);
        v0[23] = v72 | 0x8000000000000000;

        CurrentValueSubject.send(_:)();

        BackgroundSession.state.didset();
      }

      v91 = *(MEMORY[0x1E69E86A8] + 4);
      v92 = swift_task_alloc();
      v0[37] = v92;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v92 = v0;
      v92[1] = BackgroundSession.leave(endState:);
      v21 = MEMORY[0x1E69E7288];
      v23 = MEMORY[0x1E69E7CA8] + 8;
      v22 = v72;
      goto LABEL_9;
    }

    v53 = v0[31];
    v54 = v0[29];

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = v0[29];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v97[0] = v59;
      *v58 = 136315138;
      v60 = BackgroundSession.description.getter();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v97);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1AEB26000, v55, v56, "Session %s is in a fatal state and can't be transitioned out of it", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x1B27120C0](v59, -1, -1);
      MEMORY[0x1B27120C0](v58, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError();
    swift_allocError();
    *v63 = 2;
    swift_willThrow();
    v64 = v0[30];

    v50 = v0[1];
  }

  return v50();
}

{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 232);
  outlined consume of BackgroundSession.State(v5);
  if (v0)
  {
    v7 = BackgroundSession.leave(endState:);
  }

  else
  {
    v7 = BackgroundSession.leave(endState:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v70 = v0;
  v1 = v0[28];
  v2 = *(v0[29] + v0[32]);

  CurrentValueSubject.value.getter();

  v3 = v0[21];
  LOBYTE(v1) = specialized static BackgroundSession.State.== infix(_:_:)(v3, v1);
  outlined consume of BackgroundSession.State(v3);
  if (v1)
  {
    v4 = v0[31];
    v5 = v0[28];
    outlined copy of BackgroundSession.State(v5);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    outlined consume of BackgroundSession.State(v5);
    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[28];
      v8 = v0[29];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v69[0] = v11;
      *v10 = 136315394;
      v12 = BackgroundSession.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v69);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v0[25] = v9;
      outlined copy of BackgroundSession.State(v9);
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v69);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1AEB26000, v6, v7, "Session %s is already in desired end-state: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    v18 = v0[30];

    v19 = v0[1];
LABEL_9:

    return v19();
  }

  v20 = *(v0[29] + v0[32]);

  CurrentValueSubject.value.getter();

  v21 = v0[22];
  outlined consume of BackgroundSession.State(v21);
  v22 = v0[29];
  if (v21 == 0xC000000000000028)
  {
    v23 = v0[31];
    v24 = v0[29];

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[29];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v69[0] = v29;
      *v28 = 136315138;
      v30 = BackgroundSession.description.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v69);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1AEB26000, v25, v26, "Session %s is in a fatal state and can't be transitioned out of it", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v28, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
    v34 = v0[30];

    v19 = v0[1];
    goto LABEL_9;
  }

  v36 = v0[30];
  v37 = v0[28];
  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
  v39 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession);
  v40 = swift_allocObject();
  v40[2] = v22;
  v40[3] = v39;
  v40[4] = v22;
  v40[5] = v37;

  outlined copy of BackgroundSession.State(v37);

  v41 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v36, &async function pointer to partial apply for closure #1 in BackgroundSession.leave(endState:), v40);
  v42 = v41;
  v0[36] = v41;
  if (v37 == 0xC000000000000020)
  {
    v43 = *(v0[29] + v0[32]);
    v0[24] = v41 | 0x4000000000000000;

    CurrentValueSubject.send(_:)();

    BackgroundSession.state.didset();
  }

  else
  {
    if (([*(v0[29] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled] & 1) == 0)
    {
      v44 = [*(v0[29] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) bundleIdentifier];
      if (v44)
      {
        v45 = v0[29];
        v46 = v44;
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v48;
        v68 = v47;

        v49 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
        swift_beginAccess();
        outlined init with copy of UserNotificationCenter(v45 + v49, (v0 + 2));
        v50 = v0[5];
        v51 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v50);
        v66 = UUID.uuidString.getter();
        v53 = v52;
        outlined init with copy of UserNotificationCenter(v45 + v49, (v0 + 7));
        v54 = v0[10];
        v55 = v0[11];
        __swift_project_boxed_opaque_existential_1(v0 + 7, v54);
        v56 = (*(v55 + 8))(v54, v55);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
        outlined init with copy of UserNotificationCenter(v45 + v49, (v0 + 12));
        v58 = v0[15];
        v57 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v58);
        v59 = (*(v57 + 8))(v58, v57);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
        (*(v51 + 32))(v66, v53, v68, v67, v56, v59 == 33, v50, v51);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      }
    }

    v60 = *(v0[29] + v0[32]);
    v0[23] = v42 | 0x8000000000000000;

    CurrentValueSubject.send(_:)();

    BackgroundSession.state.didset();
  }

  v61 = *(MEMORY[0x1E69E86A8] + 4);
  v62 = swift_task_alloc();
  v0[37] = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v62 = v0;
  v62[1] = BackgroundSession.leave(endState:);
  v64 = MEMORY[0x1E69E7288];
  v65 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v63, v42, v65, v63, v64);
}

{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = BackgroundSession.leave(endState:);
  }

  else
  {
    v6 = BackgroundSession.leave(endState:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[36];

  v2 = v0[30];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[35];
  v2 = v0[30];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[36];

  v2 = v0[38];
  v3 = v0[30];

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in BackgroundSession.leave(endState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = closure #1 in BackgroundSession.leave(endState:);

  return BackgroundSession.reset()();
}

uint64_t closure #1 in BackgroundSession.leave(endState:)()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = closure #1 in BackgroundSession.leave(endState:);
  }

  else
  {
    v4 = closure #1 in BackgroundSession.leave(endState:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[5];
  v2 = *(v0[4] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);
  v0[3] = v1;

  outlined copy of BackgroundSession.State(v1);
  CurrentValueSubject.send(_:)();
  outlined consume of BackgroundSession.State(v1);

  BackgroundSession.state.didset();
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[5];
  v2 = *(v0[4] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);
  v0[2] = v1;
  outlined copy of BackgroundSession.State(v1);

  CurrentValueSubject.send(_:)();
  outlined consume of BackgroundSession.State(v1);

  BackgroundSession.state.didset();
  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t BackgroundSession.end()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return BackgroundSession.leave(endState:)(0xC000000000000028);
}

Swift::Void __swiftcall BackgroundSession.setupIDSGroupSessionIfNecessary()()
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
    v46[0] = v6;
    *v5 = 136315138;
    v49 = v1;
    type metadata accessor for BackgroundSession(0);

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v46);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Evaluating if we need to setup the IDSGroupSession for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  if ([*(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled])
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1AEB26000, v10, v11, "Invalid function called when the fastSyncPresenceSeparationEnabled FF is enabled.", v12, 2u);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }

    goto LABEL_26;
  }

  v13 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v14 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

  CurrentValueSubject.value.getter();

  if (v46[0] == 0xC000000000000008)
  {
    v15 = (*(**(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 128))();
    v16 = v15;
    if (*(v15 + 16) >= 0x21uLL)
    {
      v17 = 33;
    }

    else
    {
      v17 = *(v15 + 16);
    }

    v18 = v15 + 32;
    v45 = (2 * v17) | 1;
    v19 = v17 + 1;
    v20 = v15 + 32;
    while (--v19)
    {
      v21 = v20 + 40;
      outlined init with copy of UserNotificationCenter(v20, v46);
      v22 = v47;
      v23 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v24 = (*(v23 + 32))(v22, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      v20 = v21;
      if (v24)
      {
        v25 = v17 + 1;
        v26 = v18;
        while (--v25)
        {
          v27 = v26 + 40;
          outlined init with copy of UserNotificationCenter(v26, v46);
          v28 = v47;
          v29 = v48;
          __swift_project_boxed_opaque_existential_1(v46, v47);
          v30 = (*(v29 + 32))(v28, v29);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          v26 = v27;
          if ((v30 & 1) == 0)
          {
            BackgroundSession.setupIDSGroupSession()();
            goto LABEL_24;
          }
        }

        break;
      }
    }

    v10 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v10, v39))
    {

LABEL_26:

      return;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49 = v41;
    *v40 = 136315138;
    v46[0] = v16;
    v46[1] = v18;
    v46[2] = 0;
    v47 = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVy14CopresenceCore13PresentDevice_pGMd, &_ss10ArraySliceVy14CopresenceCore13PresentDevice_pGMR);
    v42 = String.init<A>(reflecting:)();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v49);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1AEB26000, v10, v39, "Not setting up IDSGroupSession since we only have 1 device currently %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1B27120C0](v41, -1, -1);
    MEMORY[0x1B27120C0](v40, -1, -1);

LABEL_24:
  }

  else
  {
    outlined consume of BackgroundSession.State(v46[0]);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46[0] = v34;
      *v33 = 136315138;
      v35 = *(v1 + v13);

      CurrentValueSubject.value.getter();

      v36 = String.init<A>(reflecting:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v46);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1AEB26000, v31, v32, "Not setting up IDSGroupSession since our state is invalid %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1B27120C0](v34, -1, -1);
      MEMORY[0x1B27120C0](v33, -1, -1);
    }
  }
}

Swift::Void __swiftcall BackgroundSession.setupIDSGroupSession()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v109 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v108 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v106 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [*(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled];
  v17 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v18 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);
  if (v16)
  {

    CurrentValueSubject.value.getter();

    v19 = v110[0];
    outlined consume of BackgroundSession.State(v110[0]);
    if (v19 >> 62)
    {
      goto LABEL_10;
    }
  }

  else
  {

    CurrentValueSubject.value.getter();

    v20 = v110[0];
    if (v110[0] >> 62 != 3)
    {
LABEL_9:
      outlined consume of BackgroundSession.State(v20);
      goto LABEL_10;
    }

    if (v110[0] != 0xC000000000000008)
    {
LABEL_10:
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Log.service);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v110[0] = v32;
        *v31 = 136315138;
        *&v124 = v1;
        type metadata accessor for BackgroundSession(0);

        v33 = String.init<A>(reflecting:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v110);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_1AEB26000, v29, v30, "Failed to join, operation in progress %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x1B27120C0](v32, -1, -1);
        MEMORY[0x1B27120C0](v31, -1, -1);
      }

      v36 = *(v1 + v17);
      v110[0] = 0xC000000000000028;

      CurrentValueSubject.send(_:)();

      BackgroundSession.state.didset();
      return;
    }
  }

  v101 = v3;
  v102 = v2;
  v17 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v21 = *(v1 + v17);
  if (v21)
  {
    v103 = v17;
    v22 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    v24 = swift_allocObject();
    v25 = partial apply for closure #1 in BackgroundSession.setupIDSGroupSession();
    *(v24 + 16) = partial apply for closure #1 in BackgroundSession.setupIDSGroupSession();
    *(v24 + 24) = v23;
    v105 = v23;
    v112 = _sIg_Ieg_TRTA_0;
    v113 = v24;
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 1107296256;
    v110[2] = thunk for @escaping @callee_guaranteed () -> ();
    v111 = &block_descriptor_31;
    v26 = _Block_copy(v110);
    v27 = v21;

    dispatch_sync(v22, v26);

    _Block_release(v26);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  v37 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);
  Date.init()();
  v38 = objc_allocWithZone(MEMORY[0x1E69D8B58]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v40 = Date._bridgeToObjectiveC()().super.isa;
  v41 = [v38 initWithActivity:v37 uuid:isa locallyInitiated:1 timestamp:v40 isFirstJoin:1];

  (*(v12 + 8))(v15, v11);
  v42 = [v41 activity];
  v43 = [v42 bundleIdentifier];

  if (v43)
  {

    v44 = type metadata accessor for FastSyncActivitySession();

    v45 = v41;
    v46 = specialized ActivitySession.__allocating_init(activitySession:manager:)(v45, v1, v44);
    v47 = *(v1 + v17);
    v103 = v17;
    *(v1 + v17) = v46;
    v48 = v46;

    v49 = v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v50 = *(v49 + 8);
      ObjectType = swift_getObjectType();
      (*(v50 + 8))(v1, ObjectType, v50);
      swift_unknownObjectRelease();
    }

    v25 = 0;
    v105 = 0;
LABEL_19:
    v52 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
    swift_beginAccess();
    v104 = v52;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v52, &v124, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    if (v125)
    {
      outlined init with take of ContiguousBytes(&v124, v110);
    }

    else
    {
      v100 = v25;
      v53 = UUID.uuidString.getter();
      v55 = v54;
      v56 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members;
      swift_beginAccess();
      v57 = *(v1 + v56);
      v58 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember);
      v59 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember + 8);
      outlined init with copy of UserNotificationCenter(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_service, &v122);
      v60 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue);
      v61 = type metadata accessor for IDSGroupSessionProvider();
      memset(v121, 0, sizeof(v121));
      v99 = v61;
      v62 = objc_allocWithZone(v61);
      *&v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession] = 0;
      v63 = &v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults];
      *(v63 + 4) = 0;
      *v63 = 0u;
      *(v63 + 1) = 0u;
      v64 = &v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins];
      *v64 = 0;
      v65 = MEMORY[0x1E69E7CC0];
      *(v64 + 1) = MEMORY[0x1E69E7CC0];
      v66 = MEMORY[0x1E69E7CD0];
      *&v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_participants] = MEMORY[0x1E69E7CD0];
      *&v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_unknownParticipants] = v66;
      *&v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_powerAssertion] = 0;
      v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state] = 0;
      v67 = &v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID];
      *v67 = v53;
      v67[1] = v55;
      *&v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members] = v57;
      v68 = &v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember];
      *v68 = v58;
      v68[1] = v59;
      v69 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service;

      v70 = v60;
      outlined init with copy of UserNotificationCenter(&v122, &v62[v69]);
      v97[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      *&v118 = 0;
      *(&v118 + 1) = 0xE000000000000000;
      swift_unknownObjectRetain();

      _StringGuts.grow(_:)(29);
      MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE35B70);
      MEMORY[0x1B2710020](v53, v55);

      MEMORY[0x1B2710020](45, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18IDSServiceProtocol_pMd, &_s14CopresenceCore18IDSServiceProtocol_pMR);
      _print_unlocked<A, B>(_:_:)();
      v97[0] = v118;
      v98 = v70;
      static DispatchQoS.unspecified.getter();
      *&v118 = v65;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v101 + 104))(v109, *MEMORY[0x1E69E8090], v102);
      *&v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v121, &v116, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
      if (v117)
      {
        outlined init with take of ContiguousBytes(&v116, &v118);
      }

      else
      {
        v76 = type metadata accessor for ABCReporter();
        v77 = swift_allocObject();
        v77[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
        v77[3] = 0x636E795374736146;
        v77[4] = 0xE800000000000000;
        v77[5] = 0xD000000000000017;
        v77[6] = 0x80000001AEE36CF0;
        v119 = v76;
        v120 = &protocol witness table for ABCReporter;
        *&v118 = v77;
        if (v117)
        {
          outlined destroy of NSObject?(&v116, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
        }
      }

      outlined init with take of ContiguousBytes(&v118, &v62[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_abcReporter]);
      v78 = v99;
      v115.receiver = v62;
      v115.super_class = v99;
      v79 = objc_msgSendSuper2(&v115, sel_init);

      outlined destroy of NSObject?(v121, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm(&v122);
      v111 = v78;
      v112 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, type metadata accessor for IDSGroupSessionProvider);
      v110[0] = v79;
      v25 = v100;
      if (v125)
      {
        outlined destroy of NSObject?(&v124, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
      }
    }

    v80 = v111;
    v81 = v112;
    __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
    v82 = *(v81 + 24);
    v83 = swift_unknownObjectRetain();
    v82(v83, &protocol witness table for BackgroundSession, v80, v81);
    v84 = v111;
    v85 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v85 + 72))(v84, v85);
    v86 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);
    *&v124 = 0xC000000000000010;

    CurrentValueSubject.send(_:)();

    BackgroundSession.state.didset();
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, static Log.service);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v114 = v91;
      *v90 = 136315138;
      swift_beginAccess();
      outlined init with copy of UserNotificationCenter(v110, &v124);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v124, &v122, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
      if (v123)
      {
        outlined init with take of ContiguousBytes(&v122, v121);
        outlined init with copy of UserNotificationCenter(v121, &v118);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31IDSGroupSessionProviderProtocol_pMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pMR);
        v92 = String.init<A>(reflecting:)();
        v94 = v93;
        __swift_destroy_boxed_opaque_existential_1Tm(v121);
      }

      else
      {
        v94 = 0xE300000000000000;
        v92 = 7104878;
      }

      outlined destroy of NSObject?(&v124, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v114);

      *(v90 + 4) = v95;
      _os_log_impl(&dword_1AEB26000, v88, v89, "idsGroupSessionProvider %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x1B27120C0](v91, -1, -1);
      MEMORY[0x1B27120C0](v90, -1, -1);
    }

    swift_beginAccess();
    outlined init with copy of UserNotificationCenter(v110, &v124);
    v96 = v104;
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(&v124, v1 + v96, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v25);
    return;
  }

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Log.service);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_1AEB26000, v72, v73, "Failed to join, bundleIdentifier is nil", v74, 2u);
    MEMORY[0x1B27120C0](v74, -1, -1);
  }

  v75 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);
  v110[0] = 0xC000000000000028;

  CurrentValueSubject.send(_:)();

  BackgroundSession.state.didset();
}

uint64_t BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.service);
  outlined init with copy of UserNotificationCenter(a2, &aBlock);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v52 = v10;
    *v9 = 136315394;
    outlined init with copy of UserNotificationCenter(&aBlock, v51);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v51, &v49, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    if (v50)
    {
      outlined init with take of ContiguousBytes(&v49, v48);
      outlined init with copy of UserNotificationCenter(v48, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31IDSGroupSessionProviderProtocol_pMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pMR);
      v11 = String.init<A>(reflecting:)();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    outlined destroy of NSObject?(v51, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v52);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v51[0] = a1;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v52);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, v7, v8, "BackgroundSessionManager didChangeState for %s state %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  }

  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (a1)
  {
    v18 = *(v3 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);
    *&aBlock = 0xC000000000000018;

LABEL_30:
    CurrentValueSubject.send(_:)();

    return BackgroundSession.state.didset();
  }

  v19 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (!v20)
  {
    v24 = 0;
    goto LABEL_22;
  }

  v21 = *(v3 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v3;
  v23 = swift_allocObject();
  v24 = partial apply for closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:);
  *(v23 + 16) = partial apply for closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:);
  *(v23 + 24) = v22;
  v55 = thunk for @callee_guaranteed () -> ()partial apply;
  v56 = v23;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v54 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v54 + 1) = &block_descriptor_50_0;
  v25 = _Block_copy(&aBlock);
  v26 = v20;

  dispatch_sync(v21, v25);

  _Block_release(v25);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
LABEL_22:
    v55 = 0;
    aBlock = 0u;
    v54 = 0u;
    v35 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(&aBlock, v3 + v35, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    swift_endAccess();
    return _sxRi_zRi0_zlyytIseghHr_SgWOe(v24);
  }

  __break(1u);
LABEL_16:
  v55 = 0;
  aBlock = 0u;
  v54 = 0u;
  v27 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(&aBlock, v3 + v27, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  swift_endAccess();
  v28 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v29 = *(v3 + v28);
  *(v3 + v28) = 0;

  v30 = v3 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 8))(v3, ObjectType, v31);
    swift_unknownObjectRelease();
  }

  v33 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v34 = *(v3 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

  CurrentValueSubject.value.getter();

  if (v49 >> 62 == 3)
  {
    if (v49 == 0xC000000000000010)
    {
LABEL_27:

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v49 = v41;
        *v40 = 136315138;
        v42 = *(v3 + v33);

        CurrentValueSubject.value.getter();

        v43 = String.init<A>(reflecting:)();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v49);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_1AEB26000, v38, v39, "Error joining IDS group session: operation failed during state: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x1B27120C0](v41, -1, -1);
        MEMORY[0x1B27120C0](v40, -1, -1);
      }

      v46 = *(v3 + v33);
      *&v49 = 0xC000000000000028;

      goto LABEL_30;
    }
  }

  else
  {
    outlined consume of BackgroundSession.State(v49);
  }

  v37 = *(v3 + v33);

  CurrentValueSubject.value.getter();

  result = v49;
  if ((v49 >> 62) <= 2)
  {
    return outlined consume of BackgroundSession.State(v49);
  }

  if (v49 == 0xC000000000000018)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0x438))(v4);
}

uint64_t closure #1 in closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:), 0, 0);
}

uint64_t closure #1 in closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)()
{
  v1 = 0xD00000000000001DLL;
  v2 = v0[4];
  v3 = *(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter);
  _StringGuts.grow(_:)(54);
  MEMORY[0x1B2710020](0xD000000000000034, 0x80000001AEE36E30);
  v0[2] = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v5);

  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000001AEE31310;
  }

  v10 = (*(*v3 + 112))(0x206E6F6973736553, 0xEF70756E61656C43, 0, 0xE000000000000000, v1, v9);
  v0[5] = v10;

  if (v10)
  {
    v11 = *(*v3 + 120);
    v21 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[6] = v13;
    *v13 = v0;
    v13[1] = closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:);
    v14.n128_u64[0] = 0;

    return v21(v10, v14);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.abcReporter);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1AEB26000, v17, v18, "Failed to generate signature for session reset failure", v19, 2u);
      MEMORY[0x1B27120C0](v19, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }
}

void BackgroundSession.updateMembers(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.service);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = &static CP_Record._protobuf_nameMap;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21[0] = v20;
    *v8 = 136315394;
    v9 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members;
    swift_beginAccess();
    v10 = *(v2 + v9);
    type metadata accessor for AddressableMember();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);

    v11 = Set.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    v15 = Set.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v21);
    v7 = &static CP_Record._protobuf_nameMap;

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Updating members from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v18 = v7[143];
  swift_beginAccess();
  v19 = *(v2 + v18);
  *(v2 + v18) = a1;

  BackgroundSession.members.didset();
}

unint64_t BackgroundSession.description.getter()
{
  _StringGuts.grow(_:)(31);

  v1 = [*(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x1B2710020](v2, v4);

  return 0xD00000000000001DLL;
}

uint64_t static BackgroundSession.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v4 = *(a1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);
  v5 = *(a2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t BackgroundSession.releasePresence()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](BackgroundSession.releasePresence(), v0, 0);
}

{
  if ([*(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled])
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = *(**(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 200);
    v6 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = BackgroundSession.releasePresence();

    return v6();
  }
}

{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](BackgroundSession.releasePresence(), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  v18 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Error releasing presence: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v13 = v0[5];
  swift_willThrow();
  v14 = v0[1];
  v15 = v0[5];

  return v14();
}

uint64_t BackgroundSession.deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter));
  v3 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter);

  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate);
  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  v4 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_service));
  v5 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members);

  v6 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions);

  v7 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_cancellables);

  v8 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember);
  swift_unknownObjectRelease();
  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  v9 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag);
  swift_unknownObjectRelease();
  v10 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController);

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  v11 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags);
  swift_unknownObjectRelease();

  v12 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sceneObservationManager);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t BackgroundSession.__deallocating_deinit()
{
  BackgroundSession.deinit();

  return swift_defaultActor_deallocate();
}

Swift::Int BackgroundSession.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance BackgroundSession@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundSession()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundSession()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance BackgroundSession()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance BackgroundSession;

  return BackgroundSession.acquireSuspensionAssertion()();
}

uint64_t protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance BackgroundSession(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t BackgroundSession.acquireSuspensionAssertion()()
{
  v1[6] = v0;
  v2 = type metadata accessor for UUID();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v1[13] = *(v6 + 64);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundSession.acquireSuspensionAssertion(), v0, 0);
}

{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  UUID.init()();
  v8 = *(v3 + 20);
  swift_weakInit();
  (*(v5 + 16))(v4, v1, v6);
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v2, v4);
  (*(v5 + 8))(v2, v6);
  swift_endAccess();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = BackgroundSession.acquireSuspensionAssertion();
  v10 = v0[6];

  return BackgroundSession.suspend()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = BackgroundSession.acquireSuspensionAssertion();
  }

  else
  {
    v6 = BackgroundSession.acquireSuspensionAssertion();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  v6 = v0[10];
  outlined init with copy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v2, v1);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  outlined init with take of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v1, v8 + v7);
  v9 = type metadata accessor for AnyCancellable();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = AnyCancellable.init(_:)();
  outlined destroy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v2);

  v13 = v0[1];

  return v13(v12);
}

{
  v29 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v28);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Failed to suspend: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[14];
  v15 = v0[15];
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[9];
  v19 = v0[10];
  outlined init with copy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v15, v14);
  v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v21 = swift_allocObject();
  outlined init with take of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v14, v21 + v20);
  v22 = type metadata accessor for AnyCancellable();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = AnyCancellable.init(_:)();
  outlined destroy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v15);

  v26 = v0[1];

  return v26(v25);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BackgroundSession(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v4 = *(v2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);
  v5 = *(v3 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t BackgroundSession.suspend()()
{
  *(v1 + 64) = v0;
  return MEMORY[0x1EEE6DFA0](BackgroundSession.suspend(), v0, 0);
}

{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, static Log.service);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Handling request to suspend", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions;
  swift_beginAccess();
  if (!*(*(v5 + v6) + 16))
  {
    goto LABEL_7;
  }

  v7 = v0[8];
  v8 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v9 = *(v7 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state);

  CurrentValueSubject.value.getter();

  v10 = v0[5];
  outlined consume of BackgroundSession.State(v10);
  if (v10 == 0xC000000000000020)
  {
    goto LABEL_7;
  }

  v13 = *(v7 + v8);

  CurrentValueSubject.value.getter();

  v14 = v0[6];
  outlined consume of BackgroundSession.State(v14);
  if (v14 == 0xC000000000000000)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Can't suspend without idle session", v17, 2u);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
    v11 = v0[1];
    goto LABEL_8;
  }

  v19 = *(v7 + v8);

  CurrentValueSubject.value.getter();

  v20 = v0[7];
  outlined consume of BackgroundSession.State(v20);
  if (v20 >> 62 == 2)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1AEB26000, v21, v22, "Tried to suspend while leaving. Throwing away suspension request", v23, 2u);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

LABEL_7:
    v11 = v0[1];
LABEL_8:

    return v11();
  }

  v24 = swift_task_alloc();
  v0[10] = v24;
  *v24 = v0;
  v24[1] = BackgroundSession.suspend();
  v25 = v0[8];

  return BackgroundSession.leave(endState:)(0xC000000000000020);
}

{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x1EEE6DFA0](BackgroundSession.suspend(), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[9];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Suspend's leave failed.", v6, 2u);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t BackgroundSession.unsuspend()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x1EEE6DFA0](BackgroundSession.unsuspend(), v0, 0);
}

{
  v22 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.service);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Handling request to unsuspend", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v5 = v0[5];

  v6 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions;
  swift_beginAccess();
  if (*(*(v5 + v6) + 16))
  {
    v7 = v0[5];

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = *(v5 + v6);
      type metadata accessor for UUID();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);

      v13 = Set.description.getter();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v21);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_1AEB26000, v8, v9, "Not unsuspending due to active suspension assertions: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = swift_task_alloc();
    v0[6] = v19;
    *v19 = v0;
    v19[1] = BackgroundSession.unsuspend();
    v20 = v0[5];

    return BackgroundSession.join()();
  }
}

{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t BackgroundSession.releaseSuspensionAssertion(_:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundSession.releaseSuspensionAssertion(_:), v1, 0);
}

uint64_t BackgroundSession.releaseSuspensionAssertion(_:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v3, v1);
  outlined destroy of NSObject?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = BackgroundSession.releaseSuspensionAssertion(_:);
  v5 = v0[7];

  return BackgroundSession.unsuspend()();
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x1EEE6DFA0](BackgroundSession.releaseSuspensionAssertion(_:), v4, 0);
  }

  else
  {
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

{
  v18 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Failed to unsuspend: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v2 = type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  outlined init with copy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  outlined init with take of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion(), v11);
}

uint64_t closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion(), 0, 0);
}

uint64_t closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion()()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0) + 20);
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion();
    v5 = *(v0 + 24);

    return BackgroundSession.releaseSuspensionAssertion(_:)(v5);
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion(), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 32) == 0;
  return (*(v0 + 8))();
}

uint64_t closure #1 in BackgroundSession.didChangePlugins(sessionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didChangePlugins(sessionProvider:), a4, 0);
}

uint64_t closure #1 in BackgroundSession.didChangePlugins(sessionProvider:)()
{
  v1 = v0[6] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  v0[7] = swift_unknownObjectWeakLoadStrong();
  v0[8] = *(v1 + 8);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didChangePlugins(sessionProvider:), 0, 0);
}

{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v3, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v1 == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t BackgroundSession.didChangeState(sessionProvider:state:)(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  outlined init with copy of UserNotificationCenter(a1, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v2;
  *(v10 + 40) = a2;
  outlined init with take of ContiguousBytes(v13, v10 + 48);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in BackgroundSession.didChangeState(sessionProvider:state:), v10);
}

uint64_t closure #1 in BackgroundSession.didChangeState(sessionProvider:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didChangeState(sessionProvider:state:), a4, 0);
}

uint64_t closure #1 in BackgroundSession.didChangeState(sessionProvider:state:)()
{
  v1 = *(v0 + 16);
  BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(*(v0 + 32), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t BackgroundSession.didChangePlugins(sessionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, void *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;

  a4(0, 0, v10, a3, v12);
}

uint64_t closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v4[15] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v4[16] = v9;
  v10 = *(v9 - 8);
  v4[17] = v10;
  v11 = *(v10 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:), a4, 0);
}

uint64_t closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:)()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 152) = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:), 0, 0);
}

{
  v1 = v0[19];
  if (v1)
  {
    v16 = v0[18];
    v2 = v0[15];
    v19 = v0[17];
    v20 = v0[16];
    v4 = v0[13];
    v3 = v0[14];
    v18 = *(v0[12] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v0[6] = partial apply for closure #1 in closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:);
    v0[7] = v5;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[5] = &block_descriptor_189;
    v6 = _Block_copy(v0 + 2);
    v17 = v1;
    static DispatchQoS.unspecified.getter();
    v0[11] = MEMORY[0x1E69E7CC0];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v16, v2, v6);
    _Block_release(v6);

    (*(v3 + 8))(v2, v4);
    (*(v19 + 8))(v16, v20);
    v7 = v0[7];
  }

  else
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
      *v11 = 0;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Doesn't have a session to refresh the dataCryptor of", v11, 2u);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }
  }

  v12 = v0[18];
  v13 = v0[15];

  v14 = v0[1];

  return v14();
}

uint64_t BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a2;

  v10 = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), v9);
}

uint64_t closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), 0, 0);
}

uint64_t closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)()
{
  if ([*(v0[5] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncRecoveryMessageHandlingEnabled])
  {
    v1 = v0[5];
    v0[7] = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag;

    return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), v1, 0);
  }

  else
  {
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
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "Not handling key recovery request rejection due to FeatureFlag being disabled.", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }
}

{
  v0[8] = *(v0[5] + v0[7]);
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), 0, 0);
}

{
  if ([*(v0 + 64) fastSyncRecoveryMessageHandlingEnabled])
  {
    v1 = *(v0 + 40);

    return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), v1, 0);
  }

  else
  {
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
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "Not handling key recovery request rejection due to server bag disablement.", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v1 = v0[5] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  v0[9] = swift_unknownObjectWeakLoadStrong();
  v0[10] = *(v1 + 8);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), 0, 0);
}

{
  if (v0[9])
  {
    v1 = v0[10];
    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[9];
    ObjectType = swift_getObjectType();
    (*(v1 + 24))(v3, v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

uint64_t BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), v9);
}

uint64_t closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), 0, 0);
}

uint64_t closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)()
{
  if ([*(v0[5] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncRecoveryMessageHandlingEnabled])
  {
    v1 = v0[5];
    v0[7] = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag;

    return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), v1, 0);
  }

  else
  {
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
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "Not handling an updated unknown participant list due to FeatureFlag being disabled.", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }
}

{
  v0[8] = *(v0[5] + v0[7]);
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), 0, 0);
}

{
  if ([*(v0 + 64) fastSyncRecoveryMessageHandlingEnabled])
  {
    v1 = *(v0 + 40);

    return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), v1, 0);
  }

  else
  {
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
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "Not handling an updated unknown participant list due to server bag disablement.", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v1 = v0[5] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  v0[9] = swift_unknownObjectWeakLoadStrong();
  v0[10] = *(v1 + 8);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), 0, 0);
}

{
  if (v0[9])
  {
    v1 = v0[10];
    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[9];
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(v3, v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

uint64_t protocol witness for IDSGroupSessionProviderDelegate.didChangeState(sessionProvider:state:) in conformance BackgroundSession(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  outlined init with copy of UserNotificationCenter(a1, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v2;
  *(v10 + 40) = a2;
  outlined init with take of ContiguousBytes(v13, v10 + 48);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in BackgroundSession.didChangeState(sessionProvider:state:)partial apply, v10);
}

uint64_t protocol witness for IDSGroupSessionProviderDelegate.didRejectKeyRecoveryRequest(sessionProvider:from:reason:) in conformance BackgroundSession(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a2;

  v10 = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)partial apply, v9);
}

uint64_t protocol witness for IDSGroupSessionProviderDelegate.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:) in conformance BackgroundSession(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)partial apply, v9);
}

uint64_t protocol witness for IDSGroupSessionProviderDelegate.didReceiveKeyUpdate(sessionProvider:) in conformance BackgroundSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, char *, uint64_t, void *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v6;

  a6(0, 0, v12, a5, v14);
}

Swift::UInt64_optional __swiftcall BackgroundSession.localParticipantAlias(for:)(Swift::String_optional a1)
{
  v1 = 0;
  v2 = 1;
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a5;
  v17[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), v17);
}

uint64_t closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v12;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), 0, 0);
}

uint64_t closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[17];
  v4 = type metadata accessor for TaskPriority();
  v0[23] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[24] = v6;
  v0[25] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v3;

  v8 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14CopresenceCore23IDSGroupSessionProviderC11ParticipantV_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), v7);
  v9 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter;
  v0[26] = v8;
  v0[27] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), v2, 0);
}

{
  v0[28] = *(v0[16] + v0[27]);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), 0, 0);
}

{
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  *(v0 + 40) = type metadata accessor for ABCReporter();
  *(v0 + 48) = &protocol witness table for ABCReporter;
  *(v0 + 16) = v1;
  v5(v6, 1, 1, v4);
  outlined init with copy of UserNotificationCenter(v0 + 16, v0 + 56);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = 0xD000000000000039;
  v9[6] = 0x80000001AEE36DF0;
  v9[7] = v8;
  v9[8] = v7;
  outlined init with take of ContiguousBytes((v0 + 56), (v9 + 9));

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for specialized closure #1 in Task<>.reportFailure(on:function:process:), v9);

  outlined destroy of NSObject?(v6, &_sScPSgMd, &_sScPSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 232) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v11 = v0;
  v11[1] = closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
  v13 = *(v0 + 208);
  v14 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 96, v13, &type metadata for IDSGroupSessionProvider.Participant, v12, v14);
}

{
  v2 = *(*v1 + 232);
  v5 = *v1;

  if (v0)
  {

    v3 = closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
  }

  else
  {
    v3 = closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = objc_opt_self();
  v5 = MEMORY[0x1B270FF70](v2, v3);
  v6 = [v4 normalizedHandleWithDestinationID_];

  if (!v6)
  {
    v7 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
    v8 = MEMORY[0x1B270FF70](v2, v3);
    v6 = [v7 initWithDestinationID_];
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69D8B90]) initWithIdentifier:v1 handle:v6];

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.service);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    if (v11)
    {
      *(v0 + 120) = v11;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      v16 = v11;
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v26);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v12, v13, "[Translation] Received translated participant: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v21 = *(v0 + 208);
  v22 = *(v0 + 168);
  v23 = *(v0 + 176);
  (*(v0 + 160))(v11);

  v24 = *(v0 + 8);

  return v24();
}

{
  v13 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.service);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, &v12);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_1AEB26000, v2, v3, "[Translation] Received translated participant: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v7 = *(v0 + 208);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  (*(v0 + 160))(0);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[15] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), a4, 0);
}

uint64_t closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)()
{
  v1 = *(v0 + 128);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v2, v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), 0, 0);
}

{
  if (*(v0 + 80))
  {
    outlined init with take of ContiguousBytes((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v3 = *(v2 + 112);
    v15 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
    v6 = *(v0 + 136);

    return v15(v6, v1, v2);
  }

  else
  {
    outlined destroy of NSObject?(v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.service);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 136);
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v11;
      _os_log_impl(&dword_1AEB26000, v9, v10, "[Translation] Not able to translate participantID %llu since we don't have a session", v12, 0xCu);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  *v2 = vextq_s8(*(v0 + 168), *(v0 + 168), 8uLL);
  v2[1].i64[0] = v1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 144);
  v10 = *v4;
  *(*v4 + 152) = v3;

  if (v3)
  {
    v11 = closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
  }

  else
  {
    v8[20] = a3;
    v8[21] = a2;
    v8[22] = a1;
    v11 = closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;

  v18 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:), v17);
}

uint64_t closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v10;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:), a4, 0);
}

uint64_t closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v2, v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:), 0, 0);
}

{
  v22 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 160);
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    outlined init with take of ContiguousBytes((v0 + 56), v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    (*(v6 + 96))(v4, v3, v1, v2, v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    outlined destroy of NSObject?(v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 128);
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.service);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 128);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      *(v0 + 16) = v12;
      type metadata accessor for ActivitySession(0);
      v15 = v12;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1AEB26000, v10, v11, "Session, %s failed to fetch data cryptor, no session provider", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1B27120C0](v14, -1, -1);
      MEMORY[0x1B27120C0](v13, -1, -1);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  v11 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:), v10);
}

uint64_t closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:), a4, 0);
}

uint64_t closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v2, v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:), 0, 0);
}

{
  v19 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 136);
    outlined init with take of ContiguousBytes((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    (*(v3 + 104))(v1, v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    outlined destroy of NSObject?(v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 128);
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.service);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 128);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v0 + 16) = v9;
      type metadata accessor for ActivitySession(0);
      v12 = v9;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1AEB26000, v7, v8, "Session, %s failed to request encryption keys, no session provider", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

void BackgroundSession.session(session:stateChanged:)(void *a1, unint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - v8;
  v10 = *a2;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.service);
  v12 = a1;
  outlined copy of ActivitySession.State(v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  outlined consume of ActivitySession.State(v10);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v12;
    v37 = v17;
    *v16 = 136315394;
    type metadata accessor for ActivitySession(0);
    v18 = v12;
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v37);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v36 = v10;
    outlined copy of ActivitySession.State(v10);
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v37);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_1AEB26000, v13, v14, "Session, %s, state changed: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v17, -1, -1);
    v25 = v16;
    v3 = v35;
    MEMORY[0x1B27120C0](v25, -1, -1);
  }

  (*((*MEMORY[0x1E69E7D40] & *v12) + 0x2F8))(&v37);
  if (v37 >> 62)
  {
    if (v37 >> 62 == 1)
    {
      outlined consume of ActivitySession.State(v37);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1AEB26000, v26, v27, "ActivitySession transitioned to invalid state.", v28, 2u);
        MEMORY[0x1B27120C0](v28, -1, -1);
      }
    }
  }

  else
  {
    v30 = *(v37 + 16);
    v29 = *(v37 + 24);
    v31 = v37;
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v30;
    v33[5] = v29;
    v33[6] = v3;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in BackgroundSession.session(session:stateChanged:), v33);

    outlined consume of ActivitySession.State(v31);
  }
}

uint64_t closure #1 in BackgroundSession.session(session:stateChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:stateChanged:), 0, 0);
}

uint64_t closure #1 in BackgroundSession.session(session:stateChanged:)()
{
  v1 = v0[3];

  if (v1)
  {
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
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "Not ending BackgroundSession since the ActivitySession's invalidation was not userOriginated.", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {

    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[5] = __swift_project_value_buffer(v8, static Log.service);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Ending BackgroundSession due to ActivitySession being invalidated.", v11, 2u);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = closure #1 in BackgroundSession.session(session:stateChanged:);
    v13 = v0[4];

    return BackgroundSession.leave(endState:)(0xC000000000000028);
  }
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:stateChanged:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v16 = v0;
  v1 = v0[4];
  v2 = v0[5];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    type metadata accessor for BackgroundSession(0);

    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Error ending BackgroundSession: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
    v12 = v5;
  }

  else
  {
    v12 = v0[7];
  }

  v13 = v0[1];

  return v13();
}

uint64_t protocol witness for ActivitySessionManagerProtocol.participant(with:for:includeLocalParticipant:completion:) in conformance BackgroundSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a5;
  v17[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)partial apply, v17);
}

uint64_t protocol witness for ActivitySessionManagerProtocol.session(session:fetchDataCryptorForTopic:completion:) in conformance BackgroundSession(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;

  v18 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)partial apply, v17);
}

uint64_t protocol witness for ActivitySessionManagerProtocol.session(session:requestEncryptionKeysForParticipants:topicName:) in conformance BackgroundSession(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  v11 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)partial apply, v10);
}

char *_s14CopresenceCore15ActivitySessionC08activityD07managerACSo014TUConversationcD0C_AA0cD15ManagerProtocol_ptcfCTf4nen_nAA0cdH0C_Tt1g5(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [a1 activity];
  v13 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v14 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [a1 isLocallyInitiated];
  v16 = [a1 isLightweightPrimaryInitiated];
  v17 = [a1 isStageInitiated];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static IMUserNotificationCenter.shared;
  v19 = objc_allocWithZone(type metadata accessor for ActivitySession(0));
  v20 = specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(v12, v11, a2, v7, v15, v16, v17, v18, v19);

  v21 = v20;
  v22 = [a1 isUsingAirplay];

  v23 = OBJC_IVAR___CPActivitySession_isUsingAirplay;
  swift_beginAccess();
  v21[v23] = v22;

  return v21;
}

_BYTE *specialized ActivitySession.__allocating_init(activitySession:manager:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a1 activity];
  v14 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = a2;
  swift_unknownObjectRetain();
  v15 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [a1 isLocallyInitiated];
  v17 = [a1 isLightweightPrimaryInitiated];
  v18 = [a1 isStageInitiated];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = static IMUserNotificationCenter.shared;
  v28[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v28[4] = &protocol witness table for IMUserNotificationCenter;
  v28[0] = v19;
  v20 = *(a3 + 1200);
  v21 = v19;
  v22 = v20(v26, v13, v27, &protocol witness table for BackgroundSession, v9, v16, v17, v18, v28);
  v23 = [a1 isUsingAirplay];

  v24 = OBJC_IVAR___CPActivitySession_isUsingAirplay;
  swift_beginAccess();
  v22[v24] = v23;

  return v22;
}

uint64_t specialized static BackgroundSession.State.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  v3 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v11 = __ROR8__(a1 + 0x4000000000000000, 3);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          if (a2 != 0xC000000000000018)
          {
            return 0;
          }
        }

        else if (v11 == 4)
        {
          if (a2 != 0xC000000000000020)
          {
            return 0;
          }
        }

        else if (a2 != 0xC000000000000028)
        {
          return 0;
        }
      }

      else if (v11)
      {
        if (v11 == 1)
        {
          if (a2 != 0xC000000000000008)
          {
            return 0;
          }
        }

        else if (a2 != 0xC000000000000010)
        {
          return 0;
        }
      }

      else if (a2 != 0xC000000000000000)
      {
        return 0;
      }

      return 1;
    }

    if (a2 >> 62 != 2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v3)
  {
    if (a2 >> 62 != 1)
    {
      return 0;
    }

LABEL_9:
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = MEMORY[0x1E69E7288];
    v8 = a1 & 0x3FFFFFFFFFFFFFFFLL;
    v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v7 = MEMORY[0x1E69E7CA8] + 8;
    goto LABEL_10;
  }

  if (a2 >> 62)
  {
    return 0;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = MEMORY[0x1E69E7288];
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = a1;
  v9 = a2;
LABEL_10:

  return MEMORY[0x1EEE6DA00](v8, v9, v7, v5, v6);
}

void specialized BackgroundSession.sessionChanged(session:)(void *a1)
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    type metadata accessor for ActivitySession(0);
    v7 = v3;
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, oslog, v4, "Session changed: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  else
  {
  }
}

void specialized BackgroundSession.session(session:receivedEvent:)(void *a1, void *a2)
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.service);
  v5 = a1;
  v6 = a2;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    type metadata accessor for ActivitySession(0);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivityEvent, 0x1E69D8B40);
    v14 = v6;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, oslog, v7, "Session, %s, received event: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.join()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.join()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in BackgroundSession.reset()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in BackgroundSession.reset()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.leave(endState:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.leave(endState:)(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError()
{
  result = lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError;
  if (!lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError;
  if (!lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError);
  }

  return result;
}

uint64_t outlined init with copy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in BackgroundSession.acquireSuspensionAssertion()()
{
  v1 = *(type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in BackgroundSession.acquireSuspensionAssertion()(v2);
}

uint64_t outlined destroy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v2 = type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in BackgroundSession.didChangePlugins(sessionProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.didChangePlugins(sessionProvider:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.didChangeState(sessionProvider:state:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.didChangeState(sessionProvider:state:)(a1, v4, v5, v6, v7, v1 + 48);
}

uint64_t partial apply for closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t partial apply for closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t partial apply for closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)(uint64_t a1)
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

  return closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in BackgroundSession.session(session:stateChanged:)(uint64_t a1)
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

  return closure #1 in BackgroundSession.session(session:stateChanged:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type BackgroundSession.State and conformance BackgroundSession.State()
{
  result = lazy protocol witness table cache variable for type BackgroundSession.State and conformance BackgroundSession.State;
  if (!lazy protocol witness table cache variable for type BackgroundSession.State and conformance BackgroundSession.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSession.State and conformance BackgroundSession.State);
  }

  return result;
}

uint64_t keypath_get_99Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t type metadata completion function for BackgroundSession()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of BackgroundSession.join()()
{
  v2 = *(*v0 + 536);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t dispatch thunk of BackgroundSession.reset()()
{
  v2 = *(*v0 + 552);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t dispatch thunk of BackgroundSession.leave(endState:)(uint64_t a1)
{
  v4 = *(*v1 + 560);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v8(a1);
}

uint64_t dispatch thunk of BackgroundSession.end()()
{
  v2 = *(*v0 + 568);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6();
}

uint64_t getEnumTagSinglePayload for BackgroundSession.BackgroundSessionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BackgroundSession.BackgroundSessionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_14CopresenceCore17BackgroundSessionC5StateO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for BackgroundSession.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for BackgroundSession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for BackgroundSession.State(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

uint64_t type metadata completion function for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroy_84Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_80Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_76Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_68Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_60Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t objectdestroy_13Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v4 = *(type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion()(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_2Tm_2(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  a1(v1[5]);

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSession.join()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in BackgroundSession.join()(a1, v1);
}

char *specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, _BYTE *a9)
{
  v123 = a7;
  v124 = a6;
  v131 = a5;
  v132 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v120 = &v115 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v129 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v115 - v21;
  v140[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v140[4] = &protocol witness table for IMUserNotificationCenter;
  v140[0] = a8;
  DateInterval.init()();
  *&a9[OBJC_IVAR___CPActivitySession_terminatingHandle] = 0;
  a9[OBJC_IVAR___CPActivitySession_isFirstJoin] = 1;
  a9[OBJC_IVAR___CPActivitySession_persistentSceneIsEligibleForAutoClose] = 0;
  v22 = &a9[OBJC_IVAR___CPActivitySession_audioSessionID];
  *v22 = 0;
  v22[4] = 1;
  v23 = OBJC_IVAR___CPActivitySession_domainAssertion;
  v24 = type metadata accessor for ActivitySession.DomainAssertionWrapper(0);
  (*(*(v24 - 8) + 56))(&a9[v23], 1, 1, v24);
  *&a9[OBJC_IVAR___CPActivitySession_invalidateAssertionsWorkItem] = 0;
  *&a9[OBJC_IVAR___CPActivitySession_distributionCount] = 0;
  a9[OBJC_IVAR___CPActivitySession_isLocalParticipantActive] = 0;
  *&a9[OBJC_IVAR___CPActivitySession_activeParticipantIDs] = MEMORY[0x1E69E7CD0];
  *&a9[OBJC_IVAR___CPActivitySession_applicationState] = 1;
  v25 = OBJC_IVAR___CPActivitySession_foregroundPresentationSubject;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *&a9[v25] = PassthroughSubject.init()();
  *&a9[OBJC_IVAR___CPActivitySession_capabilities] = 0;
  v29 = OBJC_IVAR___CPActivitySession_reportDictionary;
  v30 = MEMORY[0x1E69E7CC0];
  *&a9[v29] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  Date.init()();
  v31 = OBJC_IVAR___CPActivitySession_permittedJoinTimestamp;
  v32 = type metadata accessor for Date();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v119 = v33 + 56;
  v118 = v34;
  v34(&a9[v31], 1, 1, v32);
  *&a9[OBJC_IVAR___CPActivitySession_activeParticipantsUpdateItem] = 0;
  v35 = OBJC_IVAR___CPActivitySession_activeParticipants;
  *&a9[v35] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_So25TUConversationParticipantCTt0g5Tf4g_n(v30);
  v36 = &a9[OBJC_IVAR___CPActivitySession_sessionManager];
  *(v36 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&a9[OBJC_IVAR___CPActivitySession_rtcReporter] = 0;
  *&a9[OBJC_IVAR___CPActivitySession_connection] = 0;
  *&a9[OBJC_IVAR___CPActivitySession_unaliasedNearbyParticipantIDs] = 0;
  v130 = v17;
  v37 = *(v17 + 16);
  v133 = a2;
  v134 = v16;
  v128 = v37;
  v37(&a9[OBJC_IVAR___CPActivitySession_id], a2, v16);
  v38 = OBJC_IVAR___CPActivitySession_activity;
  *&a9[OBJC_IVAR___CPActivitySession_activity] = a1;
  v39 = a1;
  v40 = [v39 metadata];
  [v40 saveImageToDisk];

  swift_beginAccess();
  *(v36 + 1) = &protocol witness table for ActivitySessionManager;
  swift_unknownObjectWeakAssign();
  v125 = a3;
  v41 = *(a3 + OBJC_IVAR___CPActivitySessionManager_queue);
  v121 = OBJC_IVAR___CPActivitySession_queue;
  *&a9[OBJC_IVAR___CPActivitySession_queue] = v41;
  v126 = v33;
  v42 = v33;
  v43 = v123;
  v44 = *(v42 + 16);
  v127 = v32;
  v44(&a9[OBJC_IVAR___CPActivitySession_timestamp], v132, v32);
  v45 = objc_opt_self();
  v46 = v41;
  v47 = [v45 anonymousListener];
  *&a9[OBJC_IVAR___CPActivitySession_listener] = v47;
  v48 = [v47 endpoint];
  *&a9[OBJC_IVAR___CPActivitySession_endpoint] = v48;
  if (v131 & 1) == 0 || (v43)
  {
    swift_beginAccess();
    v49 = 0x8000000000000010;
  }

  else
  {
    swift_beginAccess();
    v49 = 0x8000000000000000;
  }

  v138 = v49;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v50 = [*&a9[v38] isScreenSharingActivity];
  v51 = &static ConversationManagerInterface.identity;
  v52 = MEMORY[0x1E69E7CC0];
  if (v50)
  {
    v53 = OBJC_IVAR___CPActivitySession__state;
    swift_beginAccess();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMd, &_s7Combine9PublishedVy14CopresenceCore15ActivitySessionC5StateOGMR);
    (*(*(v54 - 8) + 8))(&a9[v53], v54);
    v136[0] = 0x8000000000000000;
    Published.init(initialValue:)();
    swift_endAccess();
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Log.host);
    v56 = v117;
    v57 = v134;
    v128(v117, v133, v134);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v122 = v39;
      v61 = v60;
      v116 = swift_slowAlloc();
      v138 = v116;
      *v61 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (*(v130 + 8))(v56, v57);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v138);
      v51 = &static ConversationManagerInterface.identity;

      *(v61 + 4) = v65;
      _os_log_impl(&dword_1AEB26000, v58, v59, "Setting initial ActivitySession(%s) state to waiting for screen sharing activity", v61, 0xCu);
      v66 = v116;
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      MEMORY[0x1B27120C0](v66, -1, -1);
      v67 = v61;
      v39 = v122;
      MEMORY[0x1B27120C0](v67, -1, -1);
    }

    else
    {

      (*(v130 + 8))(v56, v57);
    }

    v52 = MEMORY[0x1E69E7CC0];
  }

  a9[OBJC_IVAR___CPActivitySession_isLocallyInitiated] = v131 & 1;
  a9[OBJC_IVAR___CPActivitySession_isLightweightPrimaryInitiated] = v124 & 1;
  a9[OBJC_IVAR___CPActivitySession_isStageInitiated] = v43 & 1;
  outlined init with copy of UserNotificationCenter(v140, &a9[OBJC_IVAR___CPActivitySession_notificationCenter]);
  a9[OBJC_IVAR___CPActivitySession_isUsingAirplay] = 0;
  v68 = *(v125 + OBJC_IVAR___CPActivitySessionManager_sceneObservationManager);
  if (v68)
  {
    v69 = v128;
    v128(v129, v133, v134);
    swift_unknownObjectRetain();
    v70 = [v39 metadata];
    v122 = v39;
    v71 = v134;
    if (v70)
    {
      v72 = v70;
      v73 = [v70 sceneAssociationBehavior];
    }

    else
    {
      v73 = 0;
    }

    v77 = *&a9[v121];
    v78 = type metadata accessor for ActivitySession.SceneAssociationCoordinator();
    v79 = objc_allocWithZone(v78);
    v80 = &v79[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_associatedScenesChanged];
    *v80 = 0;
    v80[1] = 0;
    v79[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_didAssociateScene] = 0;
    *&v79[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator__associatedBranch] = -1;
    v81 = &v79[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_systemAssociatedBranch];
    *v81 = 0;
    v81[8] = 1;
    *&v79[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_groupActivityAssociations] = v52;
    v82 = OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sessionID;
    v83 = v77;
    v84 = &v79[v82];
    v85 = v129;
    v69(v84, v129, v71);
    *&v79[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_queue] = v83;
    *&v79[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneAssociationBehavior] = v73;
    *&v79[OBJC_IVAR____TtCC14CopresenceCore15ActivitySession27SceneAssociationCoordinator_sceneObservationManager] = v68;
    v135.receiver = v79;
    v135.super_class = v78;
    v76 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
    swift_unknownObjectRetain();
    v86 = v83;
    v87 = v73;
    v74 = objc_msgSendSuper2(&v135, sel_init);
    [v68 addDelegate_];

    swift_unknownObjectRelease();
    v75 = v130;
    v88 = v85;
    v52 = MEMORY[0x1E69E7CC0];
    (*(v130 + 8))(v88, v71);
    v39 = v122;
    v51 = &static ConversationManagerInterface.identity;
  }

  else
  {
    v74 = 0;
    v75 = v130;
    v76 = &_OBJC_LABEL_PROTOCOL___SKPresenceDelegate;
  }

  *&a9[OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator] = v74;
  if (v52 >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo21TUExternalParticipantC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v89 = MEMORY[0x1E69E7CD0];
  }

  *&a9[OBJC_IVAR___CPActivitySession_externalParticipants] = v89;
  v90 = type metadata accessor for ActivitySession(0);
  v139.receiver = a9;
  v139.super_class = v90;
  v91 = objc_msgSendSuper2(&v139, v76[31]);
  v92 = *&v91[OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator];
  if (v92)
  {
    v93 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v94 = v92;

    ActivitySession.SceneAssociationCoordinator.setAssociatedScenesChangedHandler(_:)(partial apply for closure #1 in ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:), v93);
  }

  v95 = OBJC_IVAR___CPActivitySession_listener;
  v96 = *&v91[OBJC_IVAR___CPActivitySession_listener];
  v97 = v91;
  [v96 setDelegate_];
  [*&v91[v95] resume];
  type metadata accessor for RTCReporter();
  swift_allocObject();
  v98 = RTCReporter.init(session:)(v97);
  v99 = OBJC_IVAR___CPActivitySession_rtcReporter;
  swift_beginAccess();
  v100 = *&v97[v99];
  *&v97[v99] = v98;

  (*((*MEMORY[0x1E69E7D40] & *v97) + 0x2F8))(v136, v101);
  v137 = 0x8000000000000000;
  LOBYTE(v98) = static ActivitySession.State.== infix(_:_:)(v136, &v137);
  outlined consume of ActivitySession.State(v136[0]);
  v102 = v127;
  if (v98)
  {
    v103 = v120;
    Date.init()();
    v118(v103, 0, 1, v102);
    v104 = OBJC_IVAR___CPActivitySession_permittedJoinTimestamp;
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(v103, &v97[v104], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
  }

  if (*(v51 + 233) != -1)
  {
    swift_once();
  }

  v105 = type metadata accessor for Logger();
  __swift_project_value_buffer(v105, static Log.host);
  v106 = v39;
  v107 = v97;
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v110 = 138412546;
    *(v110 + 4) = v107;
    *(v110 + 12) = 2112;
    *(v110 + 14) = v106;
    *v111 = v91;
    v111[1] = v106;
    v112 = v106;
    v113 = v107;
    _os_log_impl(&dword_1AEB26000, v108, v109, "Initialized %@ activity: %@", v110, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v111, -1, -1);
    MEMORY[0x1B27120C0](v110, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v140);
  (*(v126 + 8))(v132, v102);
  (*(v75 + 8))(v133, v134);
  return v107;
}

uint64_t NSXPCConnection.isEntitledToUseNearbyInvitations.getter()
{
  v0 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v0 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v1 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v0 = *(v1 + 72);
  }

  return v0 & 1;
}

double protocol witness for EntitlementValueProviding.value(forEntitlement:) in conformance NSXPCConnection@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = MEMORY[0x1B270FF70]();
  v5 = [v3 valueForEntitlement_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned PresenceSessionConnectionInfo?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

char *BackgroundSessionManagerHostConnection.init(connection:queue:dataSource:)(void *a1, void *a2, uint64_t *a3)
{
  outlined init with copy of UserNotificationCenter(a3, v3 + direct field offset for BackgroundSessionManagerHostConnection.dataSource);
  v7 = type metadata accessor for ABCReporter();
  v8 = swift_allocObject();
  v8[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v8[3] = 0x636E795374736146;
  v8[4] = 0xE800000000000000;
  v8[5] = 0x65636976726553;
  v8[6] = 0xE700000000000000;
  v9 = (v3 + direct field offset for BackgroundSessionManagerHostConnection.abcReporter);
  v9[3] = v7;
  v9[4] = &protocol witness table for ABCReporter;
  *v9 = v8;
  v10 = specialized XPCHostConnection.init(connection:queue:)(a1, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v10;
}

uint64_t BackgroundSessionManagerHostConnection.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for BackgroundSessionManagerHostConnection.dataSource));
  v1 = (v0 + direct field offset for BackgroundSessionManagerHostConnection.abcReporter);

  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

id BackgroundSessionManagerHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc BackgroundSessionManagerHostConnection.__ivar_destroyer(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + direct field offset for BackgroundSessionManagerHostConnection.dataSource));
  v2 = (a1 + direct field offset for BackgroundSessionManagerHostConnection.abcReporter);

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

Swift::Int BackgroundSessionManagerHostConnection.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

uint64_t BackgroundSessionManagerHostConnection.begin(request:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for TaskPriority();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v14 = v3;
  v15 = a1;

  v16 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:), v13);
  v17 = direct field offset for BackgroundSessionManagerHostConnection.abcReporter;
  v19 = *&v14[direct field offset for XPCHostConnection.bundleIdentifier];
  v18 = *&v14[direct field offset for XPCHostConnection.bundleIdentifier + 8];
  v12(v10, 1, 1, v11);
  outlined init with copy of UserNotificationCenter(&v14[v17], v23);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v16;
  v20[5] = 0xD00000000000001ALL;
  v20[6] = 0x80000001AEE36F00;
  v20[7] = v19;
  v20[8] = v18;
  outlined init with take of ContiguousBytes(v23, (v20 + 9));

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in Task<>.reportFailure(on:function:process:), v20);

  return outlined destroy of TaskPriority?(v10);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:), 0, 0);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD00000000000001ALL, 0x80000001AEE36F00, partial apply for closure #1 in closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:), v1, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:);
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  v5 = v1;
  v4(v1);

  swift_willThrow();
  v6 = v0[1];
  v7 = v0[8];

  return v6();
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)(uint64_t a1)
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

  return closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t closure #1 in closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 24);
  v11 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 32);
  v19 = __swift_project_boxed_opaque_existential_1((a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource), v10);
  v12 = *(a2 + direct field offset for XPCHostConnection.bundleIdentifier);
  v18 = *(a2 + direct field offset for XPCHostConnection.bundleIdentifier + 8);
  v13 = [*(a2 + direct field offset for XPCHostConnection.connection) processIdentifier];
  (*(v6 + 16))(v9, a1, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, v9, v5);
  (*(v11 + 32))(v20, v12, v18, v13, partial apply for closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:), v15, v10, v11);
}

uint64_t BackgroundSessionManagerHostConnection.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v25[0] = *(v14 + 56);
  v25[1] = v14 + 56;
  (v25[0])(v12, 1, 1, v13);
  (*(v7 + 16))(v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v3;
  (*(v7 + 32))(&v16[v15], v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v17 = &v16[(v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = v26;
  *(v17 + 1) = a3;
  v18 = v3;

  v19 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:), v16);
  v20 = direct field offset for BackgroundSessionManagerHostConnection.abcReporter;
  v22 = *&v18[direct field offset for XPCHostConnection.bundleIdentifier];
  v21 = *&v18[direct field offset for XPCHostConnection.bundleIdentifier + 8];
  (v25[0])(v12, 1, 1, v13);
  outlined init with copy of UserNotificationCenter(&v18[v20], v27);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  v23[5] = 0xD00000000000001DLL;
  v23[6] = 0x80000001AEE36F20;
  v23[7] = v22;
  v23[8] = v21;
  outlined init with take of ContiguousBytes(v27, (v23 + 9));

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v12, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v23);

  return outlined destroy of TaskPriority?(v12);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:), 0, 0);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:)()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:);
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD00000000000001DLL, 0x80000001AEE36F20, partial apply for closure #1 in closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:), v1, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:);
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t closure #1 in closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 24);
  v12 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 32);
  __swift_project_boxed_opaque_existential_1((a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource), v11);
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  (*(v12 + 40))(a3, partial apply for closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.leave(identifier:completion:), v14, v11, v12);
}

void BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v48 = a1;
  v49 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v44 - v13;
  v15 = specialized Sequence.compactMap<A>(_:)(a2);
  v16 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v15);

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = __CocoaSet.count.getter();
    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v17 == *(a2 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = *(v16 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v17 == __CocoaSet.count.getter())
  {
LABEL_4:
    v46 = type metadata accessor for TaskPriority();
    v18 = *(v46 - 8);
    v45 = *(v18 + 56);
    v47 = v18 + 56;
    v45(v14, 1, 1, v46);
    (*(v8 + 16))(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v7);
    v19 = *(v8 + 80);
    v48 = v14;
    v20 = (v19 + 40) & ~v19;
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = v4;
    (*(v8 + 32))(&v22[v20], v10, v7);
    *&v22[v21] = v16;
    v23 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v23 = v49;
    v23[1] = a4;
    v24 = v4;

    v25 = v48;
    v26 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v48, &async function pointer to partial apply for closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:), v22);
    v27 = direct field offset for BackgroundSessionManagerHostConnection.abcReporter;
    v29 = *&v24[direct field offset for XPCHostConnection.bundleIdentifier];
    v28 = *&v24[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v45(v25, 1, 1, v46);
    outlined init with copy of UserNotificationCenter(&v24[v27], v50);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v26;
    v30[5] = 0xD00000000000002DLL;
    v30[6] = 0x80000001AEE36F40;
    v30[7] = v29;
    v30[8] = v28;
    outlined init with take of ContiguousBytes(v50, (v30 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v25, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v30);

    outlined destroy of TaskPriority?(v25);
    return;
  }

LABEL_7:
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Log.service);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v50[0] = v35;
    *v34 = 136315394;
    type metadata accessor for AddressableMember();
    lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);
    v36 = Set.description.getter();
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v50);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    type metadata accessor for TUHandle();
    lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
    v40 = Set.description.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v50);

    *(v34 + 14) = v42;
    _os_log_impl(&dword_1AEB26000, v32, v33, "Lost members in conversion. convertedMembers %s vs members: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v35, -1, -1);
    MEMORY[0x1B27120C0](v34, -1, -1);
  }

  else
  {
  }

  lazy protocol witness table accessor for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors();
  v43 = swift_allocError();
  v49();
}

uint64_t closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:), 0, 0);
}

uint64_t closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD00000000000002DLL, 0x80000001AEE36F40, partial apply for closure #1 in closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:), v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 48);
  (*(v0 + 40))(0);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v5 = v1;
  v4(v1);

  swift_willThrow();
  v6 = v0[1];
  v7 = v0[9];

  return v6();
}

uint64_t closure #1 in closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = (a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource);
  v13 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 24);
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v8 + 32))(v16 + v15, v11, v7);
  (*(v14 + 48))(a3, v19, partial apply for closure #1 in closure #1 in closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:), v16, v13, v14);
}

uint64_t closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.begin(request:completion:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v16 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v4;
  *(v17 + 5) = a1;
  (*(v9 + 32))(&v17[v16], &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v18 = &v17[(v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v23;
  *(v18 + 1) = a4;
  v19 = v4;
  v20 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:), v17);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:), 0, 0);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)()
{
  v1 = (v0[2] + direct field offset for BackgroundSessionManagerHostConnection.dataSource);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 56);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:);
  v8 = v0[3];
  v7 = v0[4];

  return v10(v8, v7, v2, v3);
}

{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:);
  }

  else
  {
    v3 = closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 48);
  (*(v0 + 40))(0);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for TaskPriority();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v14 = v3;
  v15 = a1;

  v16 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:), v13);
  v17 = direct field offset for BackgroundSessionManagerHostConnection.abcReporter;
  v19 = *&v14[direct field offset for XPCHostConnection.bundleIdentifier];
  v18 = *&v14[direct field offset for XPCHostConnection.bundleIdentifier + 8];
  v12(v10, 1, 1, v11);
  outlined init with copy of UserNotificationCenter(&v14[v17], v23);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v16;
  v20[5] = 0xD000000000000027;
  v20[6] = 0x80000001AEE36F70;
  v20[7] = v19;
  v20[8] = v18;
  outlined init with take of ContiguousBytes(v23, (v20 + 9));

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v10, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v20);

  return outlined destroy of TaskPriority?(v10);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:), 0, 0);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = type metadata accessor for PresenceSessionConnectionInfo();
  *v3 = v0;
  v3[1] = closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000027, 0x80000001AEE36F70, partial apply for closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:), v1, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = v3;
  v2(v3, 0);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v5 = v1;
  v4(0, v1);

  swift_willThrow();
  v6 = v0[1];
  v7 = v0[9];

  return v6();
}

uint64_t closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 24);
  v11 = *(a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource + 32);
  v19 = __swift_project_boxed_opaque_existential_1((a2 + direct field offset for BackgroundSessionManagerHostConnection.dataSource), v10);
  v12 = *(a2 + direct field offset for XPCHostConnection.bundleIdentifier);
  v18 = *(a2 + direct field offset for XPCHostConnection.bundleIdentifier + 8);
  v13 = [*(a2 + direct field offset for XPCHostConnection.connection) processIdentifier];
  (*(v6 + 16))(v9, a1, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, v9, v5);
  (*(v11 + 64))(v20, v12, v18, v13, partial apply for closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:), v15, v10, v11);
}

void *closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(void *result, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else if (result)
  {
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc BackgroundSessionManagerHostConnection.begin(request:completion:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

unint64_t lazy protocol witness table accessor for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors()
{
  result = lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors;
  if (!lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors;
  if (!lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors);
  }

  return result;
}

unint64_t type metadata accessor for TUHandle()
{
  result = lazy cache variable for type metadata for TUHandle;
  if (!lazy cache variable for type metadata for TUHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUHandle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AddressableMember and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(uint64_t a1)
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

  return closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t type metadata accessor for BackgroundSessionManagerHostConnection()
{
  result = type metadata singleton initialization cache for BackgroundSessionManagerHostConnection;
  if (!type metadata singleton initialization cache for BackgroundSessionManagerHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)partial apply(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t specialized BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void))
{
  v48 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v47 - v13;
  v49 = swift_allocObject();
  *(v49 + 16) = a4;
  _Block_copy(a4);
  v15 = specialized Sequence.compactMap<A>(_:)(a2);
  v16 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v15);

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = __CocoaSet.count.getter();
    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v17 == *(a2 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = *(v16 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v17 == __CocoaSet.count.getter())
  {
LABEL_4:
    v18 = type metadata accessor for TaskPriority();
    v19 = *(v18 - 8);
    v47[0] = *(v19 + 56);
    v47[1] = v19 + 56;
    (v47[0])(v14, 1, 1, v18);
    (*(v8 + 16))(v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v7);
    v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = v14;
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 4) = a3;
    (*(v8 + 32))(&v22[v20], v10, v7);
    *&v22[v21] = v16;
    v23 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
    v24 = v49;
    *v23 = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
    *(v23 + 1) = v24;
    v25 = a3;

    v26 = v48;
    v27 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v48, &closure #2 in BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)partial apply, v22);
    v28 = direct field offset for BackgroundSessionManagerHostConnection.abcReporter;
    v30 = *&v25[direct field offset for XPCHostConnection.bundleIdentifier];
    v29 = *&v25[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    (v47[0])(v26, 1, 1, v18);
    outlined init with copy of UserNotificationCenter(&v25[v28], v50);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v27;
    v31[5] = 0xD00000000000002DLL;
    v31[6] = 0x80000001AEE36F40;
    v31[7] = v30;
    v31[8] = v29;
    outlined init with take of ContiguousBytes(v50, (v31 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v26, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v31);

    outlined destroy of TaskPriority?(v26);
  }

LABEL_7:
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.service);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v50[0] = v37;
    *v36 = 136315394;
    type metadata accessor for AddressableMember();
    lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);
    v38 = Set.description.getter();
    v40 = v39;

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v50);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    type metadata accessor for TUHandle();
    lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
    v42 = Set.description.getter();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v50);

    *(v36 + 14) = v44;
    _os_log_impl(&dword_1AEB26000, v34, v35, "Lost members in conversion. convertedMembers %s vs members: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v36, -1, -1);
  }

  else
  {
  }

  lazy protocol witness table accessor for type BackgroundSessionManagerHostConnection.Errors and conformance BackgroundSessionManagerHostConnection.Errors();
  v45 = swift_allocError();
  v46 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v46);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

void *partial apply for closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMd, &_sScCy14CopresenceCore29PresenceSessionConnectionInfoCs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in closure #1 in BackgroundSessionManagerHostConnection.createPresenceSession(with:completion:)(a1, a2);
}

uint64_t specialized Publisher.sinkOnce(_:onError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneShotCancellationBox();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a3;
  v10[4] = a4;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a1;
  v11[4] = a2;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore36AttachmentLedger_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore36AttachmentLedger_CreateTopicResponseVAD14PluginRpcErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AttachmentLedger_CreateTopicResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore36AttachmentLedger_CreateTopicResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore36AttachmentLedger_CreateTopicResponseVAD14PluginRpcErrorOGMR);
  v12 = Publisher.sink(receiveCompletion:receiveValue:)();

  OneShotCancellationBox.store(_:)(v12);
}

{
  v5 = v4;
  v10 = *v5;
  type metadata accessor for OneShotCancellationBox();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a3;
  v13[4] = a4;
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = a1;
  v14[4] = a2;
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<PluginAttachmentLedgerTopic.Configuration?, Error> and conformance Future<A, B>, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicC13ConfigurationVSgs5Error_pGMd, &_s7Combine6FutureCy14CopresenceCore27PluginAttachmentLedgerTopicC13ConfigurationVSgs5Error_pGMR);
  swift_retain_n();

  v15 = Publisher.sink(receiveCompletion:receiveValue:)();

  OneShotCancellationBox.store(_:)(v15);
}

{
  type metadata accessor for OneShotCancellationBox();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a3;
  v10[4] = a4;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a1;
  v11[4] = a2;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVAD14PluginRpcErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AttachmentLedger_GetAuthTokenResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVAD14PluginRpcErrorOGMR);
  v12 = Publisher.sink(receiveCompletion:receiveValue:)();

  OneShotCancellationBox.store(_:)(v12);
}

{
  type metadata accessor for OneShotCancellationBox();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a3;
  v10[4] = a4;
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a1;
  v11[4] = a2;
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore023AttachmentLedger_UpdateF8ResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore023AttachmentLedger_UpdateF8ResponseVAD14PluginRpcErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AttachmentLedger_UpdateAttachmentResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore023AttachmentLedger_UpdateF8ResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore023AttachmentLedger_UpdateF8ResponseVAD14PluginRpcErrorOGMR);
  v12 = Publisher.sink(receiveCompletion:receiveValue:)();

  OneShotCancellationBox.store(_:)(v12);
}

uint64_t specialized closure #1 in Publisher.sinkOnce(_:onError:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PluginRpcError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Subscribers.Completion<PluginRpcError>(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  }

  outlined init with take of PluginRpcError(v8, v13);
  if (OneShotCancellationBox.cancel()())
  {
    a3(v13);
  }

  return outlined destroy of PluginRpcError(v13);
}

uint64_t PluginAttachmentLedgerServiceProvider.__allocating_init(client:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AttachmentLedgerServiceProvider.updateAttachment(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](AttachmentLedgerServiceProvider.updateAttachment(input:), 0, 0);
}

uint64_t AttachmentLedgerServiceProvider.updateAttachment(input:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  *v5 = v0;
  v5[1] = AsyncSerialQueue.performAndWaitFor<A>(_:);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000018, 0x80000001AEE32480, partial apply for closure #1 in AttachmentLedgerServiceProvider.updateAttachment(input:), v3, updated);
}

uint64_t AttachmentLedgerServiceProvider.getAuthToken(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](AttachmentLedgerServiceProvider.getAuthToken(input:), 0, 0);
}

uint64_t AttachmentLedgerServiceProvider.getAuthToken(input:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  *v5 = v0;
  v5[1] = AttachmentLedgerServiceProvider.getAuthToken(input:);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000014, 0x80000001AEE36FE0, partial apply for closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:), v3, AuthTokenResponse);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AttachmentLedgerServiceProvider.getAuthToken(input:), 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVs5Error_pGMd, &_sScCy14CopresenceCore37AttachmentLedger_GetAuthTokenResponseVs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v20[1] = (*(a5 + 40))(a3, a4, a5);
  v14 = *(v10 + 16);
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v17 = *(v10 + 32);
  v17(v16 + v15, v13, v9);
  v14(v13, v20[0], v9);
  v18 = swift_allocObject();
  v17(v18 + v15, v13, v9);
  specialized Publisher.sinkOnce(_:onError:)(partial apply for closure #1 in closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:), v16, partial apply for closure #2 in closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:), v18);
}

uint64_t closure #1 in AttachmentLedgerServiceProvider.updateAttachment(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMd, &_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v20[1] = (*(a5 + 48))(a3, a4, a5);
  v14 = *(v10 + 16);
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v17 = *(v10 + 32);
  v17(v16 + v15, v13, v9);
  v14(v13, v20[0], v9);
  v18 = swift_allocObject();
  v17(v18 + v15, v13, v9);
  specialized Publisher.sinkOnce(_:onError:)(partial apply for closure #1 in closure #1 in AttachmentLedgerServiceProvider.updateAttachment(input:), v16, partial apply for closure #2 in closure #1 in AttachmentLedgerServiceProvider.updateAttachment(input:), v18);
}

uint64_t closure #1 in closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(a1, &v14 - v12, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #2 in closure #1 in AttachmentLedgerServiceProvider.getAuthToken(input:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  type metadata accessor for PluginRpcError();
  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type PluginRpcError and conformance PluginRpcError, type metadata accessor for PluginRpcError);
  swift_allocError();
  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(a1, v7, type metadata accessor for PluginRpcError);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t *PluginAttachmentLedgerServiceProvider.Rpc.CreateTopic.unsafeMutableAddressor()
{
  if (one-time initialization token for CreateTopic != -1)
  {
    swift_once();
  }

  return &static PluginAttachmentLedgerServiceProvider.Rpc.CreateTopic;
}

uint64_t *PluginAttachmentLedgerServiceProvider.Rpc.SubscribeToTopic.unsafeMutableAddressor()
{
  if (one-time initialization token for SubscribeToTopic != -1)
  {
    swift_once();
  }

  return &static PluginAttachmentLedgerServiceProvider.Rpc.SubscribeToTopic;
}

uint64_t *PluginAttachmentLedgerServiceProvider.Rpc.GetAuthToken.unsafeMutableAddressor()
{
  if (one-time initialization token for GetAuthToken != -1)
  {
    swift_once();
  }

  return &static PluginAttachmentLedgerServiceProvider.Rpc.GetAuthToken;
}

uint64_t *PluginAttachmentLedgerServiceProvider.Rpc.UpdateAttachment.unsafeMutableAddressor()
{
  if (one-time initialization token for UpdateAttachment != -1)
  {
    swift_once();
  }

  return &static PluginAttachmentLedgerServiceProvider.Rpc.UpdateAttachment;
}

uint64_t PluginAttachmentLedgerServiceProvider.createTopic(input:)(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v47 - v5;
  TopicRequest = type metadata accessor for AttachmentLedger_CreateTopicRequest(0);
  v7 = *(*(TopicRequest - 8) + 64);
  MEMORY[0x1EEE9AC00](TopicRequest);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore35AttachmentLedger_CreateTopicRequestVGMd, &_s7Combine4JustVy14CopresenceCore35AttachmentLedger_CreateTopicRequestVGMR);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v47 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  UUID.init()();
  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.attachmentLedgerService);
  v50 = *(v13 + 16);
  v50(v17, v19, v12);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = v19;
    v24 = v23;
    v25 = swift_slowAlloc();
    v49 = v6;
    v26 = v25;
    v59[0] = v25;
    *v24 = 136315138;
    v27 = UUID.uuidString.getter();
    v48 = v2;
    v29 = v28;
    v30 = *(v13 + 8);
    v51 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v30;
    v30(v17, v12);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v59);
    v2 = v48;

    *(v24 + 4) = v31;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Creating CreateTopic RPC request, traceID=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v32 = v26;
    v6 = v49;
    MEMORY[0x1B27120C0](v32, -1, -1);
    v33 = v24;
    v19 = v47;
    MEMORY[0x1B27120C0](v33, -1, -1);
  }

  else
  {

    v34 = *(v13 + 8);
    v51 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v34;
    v34(v17, v12);
  }

  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(v57, v53, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  v35 = v54;
  v36 = TopicRequest;
  Just.init(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Just<AttachmentLedger_CreateTopicRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore35AttachmentLedger_CreateTopicRequestVGMd, &_s7Combine4JustVy14CopresenceCore35AttachmentLedger_CreateTopicRequestVGMR);
  v37 = v56;
  v38 = Publisher.eraseToAnyPublisher()();
  (*(v55 + 8))(v35, v37);
  v39 = *(v2 + 16);
  v59[0] = 0xD00000000000002ELL;
  v59[1] = 0x80000001AEE37000;
  v50(v6, v19, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  v40 = *(*v39 + 272);
  TopicResponse = type metadata accessor for AttachmentLedger_CreateTopicResponse(0);
  v42 = v19;
  TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicRequest and conformance AttachmentLedger_CreateTopicRequest, type metadata accessor for AttachmentLedger_CreateTopicRequest);
  v44 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_CreateTopicResponse and conformance AttachmentLedger_CreateTopicResponse, type metadata accessor for AttachmentLedger_CreateTopicResponse);
  v45 = v40(v59, v38, v6, v36, TopicResponse, TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0, v44);

  outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v52(v42, v12);
  return v45;
}

uint64_t PluginAttachmentLedgerServiceProvider.subscribe(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v40 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  UUID.init()();
  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.attachmentLedgerService);
  v44 = *(v8 + 16);
  v44(v12, v14, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = v14;
    v21 = v20;
    v48[0] = v20;
    *v19 = 136315138;
    v22 = UUID.uuidString.getter();
    v41 = v2;
    v24 = v23;
    v25 = *(v8 + 8);
    v45 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v25;
    v25(v12, v7);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v48);
    v2 = v41;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_1AEB26000, v16, v17, "Creating SubscribeToTopic RPC request, traceID=%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v27 = v21;
    v14 = v42;
    MEMORY[0x1B27120C0](v27, -1, -1);
    v28 = v19;
    a1 = v43;
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  else
  {

    v29 = *(v8 + 8);
    v45 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v46 = v29;
    v29(v12, v7);
  }

  v30 = *(v2 + 16);
  v48[0] = 0xD000000000000033;
  v48[1] = 0x80000001AEE37030;
  v31 = v47;
  v44(v47, v14, v7);
  (*(v8 + 56))(v31, 0, 1, v7);
  v32 = *(*v30 + 272);
  v33 = v14;
  v34 = type metadata accessor for AttachmentLedger_SubscribeRequest(0);
  v35 = type metadata accessor for AttachmentLedger_SubscribeResponse(0);
  TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest);
  v37 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse and conformance AttachmentLedger_SubscribeResponse, type metadata accessor for AttachmentLedger_SubscribeResponse);
  v38 = v32(v48, a1, v31, v34, v35, TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0, v37);
  outlined destroy of NSObject?(v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v46(v33, v7);
  return v38;
}

uint64_t PluginAttachmentLedgerServiceProvider.getAuthToken(input:)(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v47 - v5;
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  v7 = *(*(AuthTokenRequest - 8) + 64);
  MEMORY[0x1EEE9AC00](AuthTokenRequest);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore36AttachmentLedger_GetAuthTokenRequestVGMd, &_s7Combine4JustVy14CopresenceCore36AttachmentLedger_GetAuthTokenRequestVGMR);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v47 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  UUID.init()();
  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.attachmentLedgerService);
  v50 = *(v13 + 16);
  v50(v17, v19, v12);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = v19;
    v24 = v23;
    v25 = swift_slowAlloc();
    v49 = v6;
    v26 = v25;
    v59[0] = v25;
    *v24 = 136315138;
    v27 = UUID.uuidString.getter();
    v48 = v2;
    v29 = v28;
    v30 = *(v13 + 8);
    v51 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v30;
    v30(v17, v12);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v59);
    v2 = v48;

    *(v24 + 4) = v31;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Creating GetAuthToken RPC request, traceID=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v32 = v26;
    v6 = v49;
    MEMORY[0x1B27120C0](v32, -1, -1);
    v33 = v24;
    v19 = v47;
    MEMORY[0x1B27120C0](v33, -1, -1);
  }

  else
  {

    v34 = *(v13 + 8);
    v51 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v34;
    v34(v17, v12);
  }

  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(v57, v53, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  v35 = v54;
  v36 = AuthTokenRequest;
  Just.init(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Just<AttachmentLedger_GetAuthTokenRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore36AttachmentLedger_GetAuthTokenRequestVGMd, &_s7Combine4JustVy14CopresenceCore36AttachmentLedger_GetAuthTokenRequestVGMR);
  v37 = v56;
  v38 = Publisher.eraseToAnyPublisher()();
  (*(v55 + 8))(v35, v37);
  v39 = *(v2 + 16);
  v59[0] = 0xD00000000000002FLL;
  v59[1] = 0x80000001AEE37070;
  v50(v6, v19, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  v40 = *(*v39 + 272);
  AuthTokenResponse = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  v42 = v19;
  TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  v44 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenResponse and conformance AttachmentLedger_GetAuthTokenResponse, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
  v45 = v40(v59, v38, v6, v36, AuthTokenResponse, TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0, v44);

  outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v52(v42, v12);
  return v45;
}

uint64_t PluginAttachmentLedgerServiceProvider.updateAttachment(input:)(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v47 - v5;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore023AttachmentLedger_UpdateE7RequestVGMd, &_s7Combine4JustVy14CopresenceCore023AttachmentLedger_UpdateE7RequestVGMR);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v47 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  UUID.init()();
  if (one-time initialization token for attachmentLedgerService != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.attachmentLedgerService);
  v50 = *(v13 + 16);
  v50(v17, v19, v12);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = v19;
    v24 = v23;
    v25 = swift_slowAlloc();
    v49 = v6;
    v26 = v25;
    v59[0] = v25;
    *v24 = 136315138;
    v27 = UUID.uuidString.getter();
    v48 = v2;
    v29 = v28;
    v30 = *(v13 + 8);
    v51 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v30;
    v30(v17, v12);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v59);
    v2 = v48;

    *(v24 + 4) = v31;
    _os_log_impl(&dword_1AEB26000, v21, v22, "Creating UpdateAttachment RPC request, traceID=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v32 = v26;
    v6 = v49;
    MEMORY[0x1B27120C0](v32, -1, -1);
    v33 = v24;
    v19 = v47;
    MEMORY[0x1B27120C0](v33, -1, -1);
  }

  else
  {

    v34 = *(v13 + 8);
    v51 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v34;
    v34(v17, v12);
  }

  _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(v57, v53, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v35 = v54;
  v36 = updated;
  Just.init(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Just<AttachmentLedger_UpdateAttachmentRequest> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore023AttachmentLedger_UpdateE7RequestVGMd, &_s7Combine4JustVy14CopresenceCore023AttachmentLedger_UpdateE7RequestVGMR);
  v37 = v56;
  v38 = Publisher.eraseToAnyPublisher()();
  (*(v55 + 8))(v35, v37);
  v39 = *(v2 + 16);
  v59[0] = 0xD000000000000033;
  v59[1] = 0x80000001AEE370A0;
  v50(v6, v19, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  v40 = *(*v39 + 272);
  v41 = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v42 = v19;
  TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v44 = _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentResponse and conformance AttachmentLedger_UpdateAttachmentResponse, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  v45 = v40(v59, v38, v6, v36, v41, TopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0, v44);

  outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v52(v42, v12);
  return v45;
}

uint64_t PluginAttachmentLedgerServiceProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PluginAttachmentLedgerServiceProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of Subscribers.Completion<PluginRpcError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PluginRpcError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginRpcError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PluginRpcError(uint64_t a1)
{
  v2 = type metadata accessor for PluginRpcError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14CopresenceCore35AttachmentLedger_CreateTopicRequestVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized closure #1 in Publisher.sinkOnce(_:onError:)(void **a1, uint64_t a2, void (*a3)(void **))
{
  v3 = *a1;
  if (*a1)
  {
    v6 = *a1;
    v5 = v3;
    if (OneShotCancellationBox.cancel()())
    {
      a3(&v6);
    }
  }
}

uint64_t specialized closure #2 in Publisher.sinkOnce(_:onError:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v4;
  v10 = v5;
  result = OneShotCancellationBox.cancel()();
  if (result)
  {
    return a3(v8);
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in Publisher.sinkOnce(_:onError:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  return specialized closure #2 in Publisher.sinkOnce(_:onError:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  result = OneShotCancellationBox.cancel()();
  if (result)
  {
    return v3(a1);
  }

  return result;
}

char *ActivitySessionHostConnection.__allocating_init(connection:queue:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  v6 = &v5[direct field offset for ActivitySessionHostConnection.__isAppProcess];
  *v6 = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
  *(v6 + 1) = 0;
  return specialized XPCHostConnection.init(connection:queue:)(a1, a2);
}

uint64_t ActivitySessionHostConnection.isAppProcess.getter()
{
  v1 = v0 + direct field offset for ActivitySessionHostConnection.__isAppProcess;
  swift_beginAccess();
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier + 8);
  v7[0] = *(v0 + direct field offset for XPCHostConnection.bundleIdentifier);
  v7[1] = v4;

  v3(&v6, v7);

  return v6;
}

char *specialized XPCHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  *(v3 + direct field offset for XPCHostConnection.hasScheduledInvalidation) = 0;
  v7 = direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks;
  *(v3 + direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks) = MEMORY[0x1E69E7CD0];
  v8 = direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
  *(v3 + direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier) = MEMORY[0x1E69E7CC8];
  v93 = direct field offset for XPCHostConnection.connection;
  *(v3 + direct field offset for XPCHostConnection.connection) = a1;
  v9 = direct field offset for XPCHostConnection.queue;
  *(v3 + direct field offset for XPCHostConnection.queue) = a2;
  v10 = a1;
  v11 = a2;
  v12 = NSXPCConnection.bundleIdentifier.getter();
  if (!v13)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.host);
    v20 = v10;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v91 = v9;
      v24 = v6;
      v25 = v7;
      v26 = v8;
      v27 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v27 = v20;
      v28 = v20;
      _os_log_impl(&dword_1AEB26000, v21, v22, "Denying connection %@ because it does not have a valid bundle identifier.", v23, 0xCu);
      outlined destroy of NSObject?(v27);
      v29 = v27;
      v8 = v26;
      v7 = v25;
      v6 = v24;
      v9 = v91;
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_75;
  }

  v14 = v12;
  v15 = v13;
  v90 = v8;
  v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v16 == 2)
  {
    v17 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v18 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v30 = v16;
    v18 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v30)
    {
      goto LABEL_16;
    }
  }

  if (v18 != 2 && (v18 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v31 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v31)
  {
    goto LABEL_16;
  }

  v76 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v76 == 2)
  {
    if ((v31[1] & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if ((v76 & 1) == 0)
  {
LABEL_69:

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Log.host);
    v78 = v10;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v78;
      *v82 = v78;
      v83 = v78;
      _os_log_impl(&dword_1AEB26000, v79, v80, "Denying connection %@ because it does not have valid entitlements.", v81, 0xCu);
      outlined destroy of NSObject?(v82);
      MEMORY[0x1B27120C0](v82, -1, -1);
      MEMORY[0x1B27120C0](v81, -1, -1);
    }

    else
    {
    }

    v8 = v90;
LABEL_75:
    v84 = type metadata accessor for UUID();
    (*(*(v84 - 8) + 8))(v3 + v6, v84);

    v85 = *(v3 + v7);

    v86 = *(v3 + v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA24ActivitySessionInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA24ActivitySessionInterfaceOGMR);
    v87 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v88 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_16:
  v32 = (v3 + direct field offset for XPCHostConnection.bundleIdentifier);
  *v32 = v14;
  v32[1] = v15;
  v33 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v33 == 2)
  {
    v34 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  else
  {
    v34 = v33;
  }

  v35 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v34 & 1) != 0 || v35 != 2 && (v35)
  {
    v36 = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v36 = *v37;
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePublicAPI) = v36;
  v38 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v38 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v39 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v38 = *(v39 + 1);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI) = v38 & 1;
  v40 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v40 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v40 = *(v41 + 24);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessAllSessions) = v40 & 1;
  v42 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v42 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v42 = *(v43 + 25);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToForWebFallback) = v42 & 1;
  v44 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v44)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v46 = *(v45 + 32);
  }

  *(v3 + direct field offset for XPCHostConnection.definedSystemActivityIdentifiers) = v44;
  v47 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v47)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v48 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v49 = *(v48 + 40);
  }

  *(v3 + direct field offset for XPCHostConnection.definedAccessActivityIdentifiers) = v47;
  v50 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v50 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v51 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v50 = *(v51 + 48);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers) = v50 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToUseGameCenter) = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v52 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  v92 = v11;
  if (v52 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v53 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v52 = *(v53 + 50);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) = v52 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction) = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5() & 1;
  v100.receiver = v3;
  v100.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA24ActivitySessionInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA24ActivitySessionInterfaceOGMR);
  v54 = objc_msgSendSuper2(&v100, sel_init);
  v55 = direct field offset for XPCHostConnection.connection;
  v56 = *&v54[direct field offset for XPCHostConnection.connection];
  v57 = v54;
  [v56 setExportedObject_];
  v58 = one-time initialization token for hostObjectInterface;
  v59 = *&v54[v55];
  if (v58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v59 setExportedInterface_];

  v60 = one-time initialization token for clientObjectInterface;
  v61 = *&v54[v55];
  if (v60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v61 setRemoteObjectInterface_];

  [*&v54[v55] _setQueue_];
  v62 = *&v54[v55];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = partial apply for specialized closure #1 in XPCHostConnection.init(connection:queue:);
  v99 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v97 = &block_descriptor_195;
  v64 = _Block_copy(&aBlock);
  v65 = v62;

  [v65 setInterruptionHandler_];
  _Block_release(v64);

  v66 = *&v54[v55];
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = partial apply for specialized closure #2 in XPCHostConnection.init(connection:queue:);
  v99 = v67;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v97 = &block_descriptor_199;
  v68 = _Block_copy(&aBlock);
  v69 = v57;
  v70 = v66;

  [v70 setInvalidationHandler_];
  _Block_release(v68);

  [*&v54[v55] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Log.host);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412290;
    *(v74 + 4) = v69;
    *v75 = v54;
    _os_log_impl(&dword_1AEB26000, v72, v73, "Created %@", v74, 0xCu);
    outlined destroy of NSObject?(v75);
    MEMORY[0x1B27120C0](v75, -1, -1);
    MEMORY[0x1B27120C0](v74, -1, -1);
  }

  else
  {
  }

  return v54;
}

{
  v3 = v2;
  v6 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  *(v3 + direct field offset for XPCHostConnection.hasScheduledInvalidation) = 0;
  v7 = direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks;
  *(v3 + direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks) = MEMORY[0x1E69E7CD0];
  v8 = direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
  *(v3 + direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier) = MEMORY[0x1E69E7CC8];
  v93 = direct field offset for XPCHostConnection.connection;
  *(v3 + direct field offset for XPCHostConnection.connection) = a1;
  v9 = direct field offset for XPCHostConnection.queue;
  *(v3 + direct field offset for XPCHostConnection.queue) = a2;
  v10 = a1;
  v11 = a2;
  v12 = NSXPCConnection.bundleIdentifier.getter();
  if (!v13)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.host);
    v20 = v10;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v91 = v9;
      v24 = v6;
      v25 = v7;
      v26 = v8;
      v27 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v27 = v20;
      v28 = v20;
      _os_log_impl(&dword_1AEB26000, v21, v22, "Denying connection %@ because it does not have a valid bundle identifier.", v23, 0xCu);
      outlined destroy of NSObject?(v27);
      v29 = v27;
      v8 = v26;
      v7 = v25;
      v6 = v24;
      v9 = v91;
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_75;
  }

  v14 = v12;
  v15 = v13;
  v90 = v8;
  v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v16 == 2)
  {
    v17 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v18 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v30 = v16;
    v18 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v30)
    {
      goto LABEL_16;
    }
  }

  if (v18 != 2 && (v18 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v31 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v31)
  {
    goto LABEL_16;
  }

  v76 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v76 == 2)
  {
    if ((v31[1] & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if ((v76 & 1) == 0)
  {
LABEL_69:

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Log.host);
    v78 = v10;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v78;
      *v82 = v78;
      v83 = v78;
      _os_log_impl(&dword_1AEB26000, v79, v80, "Denying connection %@ because it does not have valid entitlements.", v81, 0xCu);
      outlined destroy of NSObject?(v82);
      MEMORY[0x1B27120C0](v82, -1, -1);
      MEMORY[0x1B27120C0](v81, -1, -1);
    }

    else
    {
    }

    v8 = v90;
LABEL_75:
    v84 = type metadata accessor for UUID();
    (*(*(v84 - 8) + 8))(v3 + v6, v84);

    v85 = *(v3 + v7);

    v86 = *(v3 + v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA33BackgroundSessionManagerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA33BackgroundSessionManagerInterfaceOGMR);
    v87 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v88 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_16:
  v32 = (v3 + direct field offset for XPCHostConnection.bundleIdentifier);
  *v32 = v14;
  v32[1] = v15;
  v33 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v33 == 2)
  {
    v34 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  else
  {
    v34 = v33;
  }

  v35 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v34 & 1) != 0 || v35 != 2 && (v35)
  {
    v36 = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v36 = *v37;
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePublicAPI) = v36;
  v38 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v38 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v39 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v38 = *(v39 + 1);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI) = v38 & 1;
  v40 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v40 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v40 = *(v41 + 24);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessAllSessions) = v40 & 1;
  v42 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v42 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v42 = *(v43 + 25);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToForWebFallback) = v42 & 1;
  v44 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v44)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v46 = *(v45 + 32);
  }

  *(v3 + direct field offset for XPCHostConnection.definedSystemActivityIdentifiers) = v44;
  v47 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v47)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v48 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v49 = *(v48 + 40);
  }

  *(v3 + direct field offset for XPCHostConnection.definedAccessActivityIdentifiers) = v47;
  v50 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v50 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v51 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v50 = *(v51 + 48);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers) = v50 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToUseGameCenter) = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v52 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  v92 = v11;
  if (v52 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v53 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v52 = *(v53 + 50);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) = v52 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction) = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5() & 1;
  v100.receiver = v3;
  v100.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA33BackgroundSessionManagerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA33BackgroundSessionManagerInterfaceOGMR);
  v54 = objc_msgSendSuper2(&v100, sel_init);
  v55 = direct field offset for XPCHostConnection.connection;
  v56 = *&v54[direct field offset for XPCHostConnection.connection];
  v57 = v54;
  [v56 setExportedObject_];
  v58 = one-time initialization token for hostObjectInterface;
  v59 = *&v54[v55];
  if (v58 != -1)
  {
    swift_once();
  }

  [v59 setExportedInterface_];

  v60 = one-time initialization token for clientObjectInterface;
  v61 = *&v54[v55];
  if (v60 != -1)
  {
    swift_once();
  }

  [v61 setRemoteObjectInterface_];

  [*&v54[v55] _setQueue_];
  v62 = *&v54[v55];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = partial apply for specialized closure #1 in XPCHostConnection.init(connection:queue:);
  v99 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v97 = &block_descriptor_185;
  v64 = _Block_copy(&aBlock);
  v65 = v62;

  [v65 setInterruptionHandler_];
  _Block_release(v64);

  v66 = *&v54[v55];
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = partial apply for specialized closure #2 in XPCHostConnection.init(connection:queue:);
  v99 = v67;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v97 = &block_descriptor_189_0;
  v68 = _Block_copy(&aBlock);
  v69 = v57;
  v70 = v66;

  [v70 setInvalidationHandler_];
  _Block_release(v68);

  [*&v54[v55] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Log.host);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412290;
    *(v74 + 4) = v69;
    *v75 = v54;
    _os_log_impl(&dword_1AEB26000, v72, v73, "Created %@", v74, 0xCu);
    outlined destroy of NSObject?(v75);
    MEMORY[0x1B27120C0](v75, -1, -1);
    MEMORY[0x1B27120C0](v74, -1, -1);
  }

  else
  {
  }

  return v54;
}

{
  v3 = v2;
  v6 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  *(v3 + direct field offset for XPCHostConnection.hasScheduledInvalidation) = 0;
  v7 = direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks;
  *(v3 + direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks) = MEMORY[0x1E69E7CD0];
  v8 = direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
  *(v3 + direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier) = MEMORY[0x1E69E7CC8];
  v93 = direct field offset for XPCHostConnection.connection;
  *(v3 + direct field offset for XPCHostConnection.connection) = a1;
  v9 = direct field offset for XPCHostConnection.queue;
  *(v3 + direct field offset for XPCHostConnection.queue) = a2;
  v10 = a1;
  v11 = a2;
  v12 = NSXPCConnection.bundleIdentifier.getter();
  if (!v13)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.host);
    v20 = v10;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v91 = v9;
      v24 = v6;
      v25 = v7;
      v26 = v8;
      v27 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v27 = v20;
      v28 = v20;
      _os_log_impl(&dword_1AEB26000, v21, v22, "Denying connection %@ because it does not have a valid bundle identifier.", v23, 0xCu);
      outlined destroy of NSObject?(v27);
      v29 = v27;
      v8 = v26;
      v7 = v25;
      v6 = v24;
      v9 = v91;
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_75;
  }

  v14 = v12;
  v15 = v13;
  v90 = v8;
  v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v16 == 2)
  {
    v17 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v18 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v30 = v16;
    v18 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v30)
    {
      goto LABEL_16;
    }
  }

  if (v18 != 2 && (v18 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v31 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v31)
  {
    goto LABEL_16;
  }

  v76 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v76 == 2)
  {
    if ((v31[1] & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if ((v76 & 1) == 0)
  {
LABEL_69:

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Log.host);
    v78 = v10;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v78;
      *v82 = v78;
      v83 = v78;
      _os_log_impl(&dword_1AEB26000, v79, v80, "Denying connection %@ because it does not have valid entitlements.", v81, 0xCu);
      outlined destroy of NSObject?(v82);
      MEMORY[0x1B27120C0](v82, -1, -1);
      MEMORY[0x1B27120C0](v81, -1, -1);
    }

    else
    {
    }

    v8 = v90;
LABEL_75:
    v84 = type metadata accessor for UUID();
    (*(*(v84 - 8) + 8))(v3 + v6, v84);

    v85 = *(v3 + v7);

    v86 = *(v3 + v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA28ConversationManagerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA28ConversationManagerInterfaceOGMR);
    v87 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v88 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_16:
  v32 = (v3 + direct field offset for XPCHostConnection.bundleIdentifier);
  *v32 = v14;
  v32[1] = v15;
  v33 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v33 == 2)
  {
    v34 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  else
  {
    v34 = v33;
  }

  v35 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v34 & 1) != 0 || v35 != 2 && (v35)
  {
    v36 = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v36 = *v37;
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePublicAPI) = v36;
  v38 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v38 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v39 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v38 = *(v39 + 1);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI) = v38 & 1;
  v40 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v40 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v40 = *(v41 + 24);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessAllSessions) = v40 & 1;
  v42 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v42 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v42 = *(v43 + 25);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToForWebFallback) = v42 & 1;
  v44 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v44)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v46 = *(v45 + 32);
  }

  *(v3 + direct field offset for XPCHostConnection.definedSystemActivityIdentifiers) = v44;
  v47 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v47)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v48 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v49 = *(v48 + 40);
  }

  *(v3 + direct field offset for XPCHostConnection.definedAccessActivityIdentifiers) = v47;
  v50 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v50 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v51 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v50 = *(v51 + 48);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers) = v50 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToUseGameCenter) = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v52 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  v92 = v11;
  if (v52 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v53 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v52 = *(v53 + 50);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) = v52 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction) = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5() & 1;
  v100.receiver = v3;
  v100.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA28ConversationManagerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA28ConversationManagerInterfaceOGMR);
  v54 = objc_msgSendSuper2(&v100, sel_init);
  v55 = direct field offset for XPCHostConnection.connection;
  v56 = *&v54[direct field offset for XPCHostConnection.connection];
  v57 = v54;
  [v56 setExportedObject_];
  v58 = one-time initialization token for hostObjectInterface;
  v59 = *&v54[v55];
  if (v58 != -1)
  {
    swift_once();
  }

  [v59 setExportedInterface_];

  v60 = one-time initialization token for clientObjectInterface;
  v61 = *&v54[v55];
  if (v60 != -1)
  {
    swift_once();
  }

  [v61 setRemoteObjectInterface_];

  [*&v54[v55] _setQueue_];
  v62 = *&v54[v55];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = partial apply for specialized closure #1 in XPCHostConnection.init(connection:queue:);
  v99 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v97 = &block_descriptor_152;
  v64 = _Block_copy(&aBlock);
  v65 = v62;

  [v65 setInterruptionHandler_];
  _Block_release(v64);

  v66 = *&v54[v55];
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = partial apply for specialized closure #2 in XPCHostConnection.init(connection:queue:);
  v99 = v67;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v97 = &block_descriptor_156;
  v68 = _Block_copy(&aBlock);
  v69 = v57;
  v70 = v66;

  [v70 setInvalidationHandler_];
  _Block_release(v68);

  [*&v54[v55] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Log.host);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412290;
    *(v74 + 4) = v69;
    *v75 = v54;
    _os_log_impl(&dword_1AEB26000, v72, v73, "Created %@", v74, 0xCu);
    outlined destroy of NSObject?(v75);
    MEMORY[0x1B27120C0](v75, -1, -1);
    MEMORY[0x1B27120C0](v74, -1, -1);
  }

  else
  {
  }

  return v54;
}

{
  v3 = v2;
  v6 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  *(v3 + direct field offset for XPCHostConnection.hasScheduledInvalidation) = 0;
  v7 = direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks;
  *(v3 + direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks) = MEMORY[0x1E69E7CD0];
  v8 = direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
  *(v3 + direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier) = MEMORY[0x1E69E7CC8];
  v93 = direct field offset for XPCHostConnection.connection;
  *(v3 + direct field offset for XPCHostConnection.connection) = a1;
  v9 = direct field offset for XPCHostConnection.queue;
  *(v3 + direct field offset for XPCHostConnection.queue) = a2;
  v10 = a1;
  v11 = a2;
  v12 = NSXPCConnection.bundleIdentifier.getter();
  if (!v13)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.host);
    v20 = v10;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v91 = v9;
      v24 = v6;
      v25 = v7;
      v26 = v8;
      v27 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v27 = v20;
      v28 = v20;
      _os_log_impl(&dword_1AEB26000, v21, v22, "Denying connection %@ because it does not have a valid bundle identifier.", v23, 0xCu);
      outlined destroy of NSObject?(v27);
      v29 = v27;
      v8 = v26;
      v7 = v25;
      v6 = v24;
      v9 = v91;
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_75;
  }

  v14 = v12;
  v15 = v13;
  v90 = v8;
  v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v16 == 2)
  {
    v17 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v18 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v30 = v16;
    v18 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v30)
    {
      goto LABEL_16;
    }
  }

  if (v18 != 2 && (v18 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v31 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v31)
  {
    goto LABEL_16;
  }

  v76 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v76 == 2)
  {
    if ((v31[1] & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if ((v76 & 1) == 0)
  {
LABEL_69:

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Log.host);
    v78 = v10;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v78;
      *v82 = v78;
      v83 = v78;
      _os_log_impl(&dword_1AEB26000, v79, v80, "Denying connection %@ because it does not have valid entitlements.", v81, 0xCu);
      outlined destroy of NSObject?(v82);
      MEMORY[0x1B27120C0](v82, -1, -1);
      MEMORY[0x1B27120C0](v81, -1, -1);
    }

    else
    {
    }

    v8 = v90;
LABEL_75:
    v84 = type metadata accessor for UUID();
    (*(*(v84 - 8) + 8))(v3 + v6, v84);

    v85 = *(v3 + v7);

    v86 = *(v3 + v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA24PresenceSessionInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA24PresenceSessionInterfaceOGMR);
    v87 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v88 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_16:
  v32 = (v3 + direct field offset for XPCHostConnection.bundleIdentifier);
  *v32 = v14;
  v32[1] = v15;
  v33 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v33 == 2)
  {
    v34 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  else
  {
    v34 = v33;
  }

  v35 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v34 & 1) != 0 || v35 != 2 && (v35)
  {
    v36 = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v36 = *v37;
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePublicAPI) = v36;
  v38 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v38 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v39 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v38 = *(v39 + 1);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI) = v38 & 1;
  v40 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v40 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v40 = *(v41 + 24);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessAllSessions) = v40 & 1;
  v42 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v42 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v42 = *(v43 + 25);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToForWebFallback) = v42 & 1;
  v44 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v44)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v46 = *(v45 + 32);
  }

  *(v3 + direct field offset for XPCHostConnection.definedSystemActivityIdentifiers) = v44;
  v47 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v47)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v48 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v49 = *(v48 + 40);
  }

  *(v3 + direct field offset for XPCHostConnection.definedAccessActivityIdentifiers) = v47;
  v50 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v50 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v51 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v50 = *(v51 + 48);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers) = v50 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToUseGameCenter) = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v52 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  v92 = v11;
  if (v52 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v53 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v52 = *(v53 + 50);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) = v52 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction) = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5() & 1;
  v100.receiver = v3;
  v100.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA24PresenceSessionInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA24PresenceSessionInterfaceOGMR);
  v54 = objc_msgSendSuper2(&v100, sel_init);
  v55 = direct field offset for XPCHostConnection.connection;
  v56 = *&v54[direct field offset for XPCHostConnection.connection];
  v57 = v54;
  [v56 setExportedObject_];
  v58 = one-time initialization token for hostObjectInterface;
  v59 = *&v54[v55];
  if (v58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v59 setExportedInterface_];

  v60 = one-time initialization token for clientObjectInterface;
  v61 = *&v54[v55];
  if (v60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [v61 setRemoteObjectInterface_];

  [*&v54[v55] _setQueue_];
  v62 = *&v54[v55];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = partial apply for specialized closure #1 in XPCHostConnection.init(connection:queue:);
  v99 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v97 = &block_descriptor_162;
  v64 = _Block_copy(&aBlock);
  v65 = v62;

  [v65 setInterruptionHandler_];
  _Block_release(v64);

  v66 = *&v54[v55];
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = partial apply for specialized closure #2 in XPCHostConnection.init(connection:queue:);
  v99 = v67;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v97 = &block_descriptor_166_0;
  v68 = _Block_copy(&aBlock);
  v69 = v57;
  v70 = v66;

  [v70 setInvalidationHandler_];
  _Block_release(v68);

  [*&v54[v55] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Log.host);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412290;
    *(v74 + 4) = v69;
    *v75 = v54;
    _os_log_impl(&dword_1AEB26000, v72, v73, "Created %@", v74, 0xCu);
    outlined destroy of NSObject?(v75);
    MEMORY[0x1B27120C0](v75, -1, -1);
    MEMORY[0x1B27120C0](v74, -1, -1);
  }

  else
  {
  }

  return v54;
}

{
  v3 = v2;
  v6 = direct field offset for XPCHostConnection.id;
  UUID.init()();
  *(v3 + direct field offset for XPCHostConnection.hasScheduledInvalidation) = 0;
  v7 = direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks;
  *(v3 + direct field offset for XPCHostConnection.identifiersWithPendingCoalescingBlocks) = MEMORY[0x1E69E7CD0];
  v8 = direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier;
  *(v3 + direct field offset for XPCHostConnection.blockToExecuteAfterPendingCoalescingBlocksByIdentifier) = MEMORY[0x1E69E7CC8];
  v93 = direct field offset for XPCHostConnection.connection;
  *(v3 + direct field offset for XPCHostConnection.connection) = a1;
  v9 = direct field offset for XPCHostConnection.queue;
  *(v3 + direct field offset for XPCHostConnection.queue) = a2;
  v10 = a1;
  v11 = a2;
  v12 = NSXPCConnection.bundleIdentifier.getter();
  if (!v13)
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.host);
    v20 = v10;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v91 = v9;
      v24 = v6;
      v25 = v7;
      v26 = v8;
      v27 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v27 = v20;
      v28 = v20;
      _os_log_impl(&dword_1AEB26000, v21, v22, "Denying connection %@ because it does not have a valid bundle identifier.", v23, 0xCu);
      outlined destroy of NSObject?(v27);
      v29 = v27;
      v8 = v26;
      v7 = v25;
      v6 = v24;
      v9 = v91;
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_75;
  }

  v14 = v12;
  v15 = v13;
  v90 = v8;
  v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v16 == 2)
  {
    v17 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    v18 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v30 = v16;
    v18 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v30)
    {
      goto LABEL_16;
    }
  }

  if (v18 != 2 && (v18 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v31 = static EntitlementTestingOverrides.default;
  swift_beginAccess();
  if (*v31)
  {
    goto LABEL_16;
  }

  v76 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v76 == 2)
  {
    if ((v31[1] & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if ((v76 & 1) == 0)
  {
LABEL_69:

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Log.host);
    v78 = v10;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v78;
      *v82 = v78;
      v83 = v78;
      _os_log_impl(&dword_1AEB26000, v79, v80, "Denying connection %@ because it does not have valid entitlements.", v81, 0xCu);
      outlined destroy of NSObject?(v82);
      MEMORY[0x1B27120C0](v82, -1, -1);
      MEMORY[0x1B27120C0](v81, -1, -1);
    }

    else
    {
    }

    v8 = v90;
LABEL_75:
    v84 = type metadata accessor for UUID();
    (*(*(v84 - 8) + 8))(v3 + v6, v84);

    v85 = *(v3 + v7);

    v86 = *(v3 + v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA21PeoplePickerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA21PeoplePickerInterfaceOGMR);
    v87 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v88 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_16:
  v32 = (v3 + direct field offset for XPCHostConnection.bundleIdentifier);
  *v32 = v14;
  v32[1] = v15;
  v33 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v33 == 2)
  {
    v34 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
  }

  else
  {
    v34 = v33;
  }

  v35 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v34 & 1) != 0 || v35 != 2 && (v35)
  {
    v36 = 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v36 = *v37;
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePublicAPI) = v36;
  v38 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v38 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v39 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v38 = *(v39 + 1);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToUsePrivateAPI) = v38 & 1;
  v40 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v40 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v40 = *(v41 + 24);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessAllSessions) = v40 & 1;
  v42 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v42 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v43 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v42 = *(v43 + 25);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToForWebFallback) = v42 & 1;
  v44 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v44)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v45 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v46 = *(v45 + 32);
  }

  *(v3 + direct field offset for XPCHostConnection.definedSystemActivityIdentifiers) = v44;
  v47 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SaySSGTt0B5();
  if (!v47)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v48 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v49 = *(v48 + 40);
  }

  *(v3 + direct field offset for XPCHostConnection.definedAccessActivityIdentifiers) = v47;
  v50 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v50 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v51 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v50 = *(v51 + 48);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToAccessUnaliasedIdentifiers) = v50 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToUseGameCenter) = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter() & 1;
  v52 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  v92 = v11;
  if (v52 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v53 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    v52 = *(v53 + 50);
  }

  *(v3 + direct field offset for XPCHostConnection.isEntitledToProvideCustomEndpoint) = v52 & 1;
  *(v3 + direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction) = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5() & 1;
  v100.receiver = v3;
  v100.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17XPCHostConnectionCyAA21PeoplePickerInterfaceOGMd, &_s14CopresenceCore17XPCHostConnectionCyAA21PeoplePickerInterfaceOGMR);
  v54 = objc_msgSendSuper2(&v100, sel_init);
  v55 = direct field offset for XPCHostConnection.connection;
  v56 = *&v54[direct field offset for XPCHostConnection.connection];
  v57 = v54;
  [v56 setExportedObject_];
  v58 = one-time initialization token for hostObjectInterface;
  v59 = *&v54[v55];
  if (v58 != -1)
  {
    swift_once();
  }

  [v59 setExportedInterface_];

  v60 = one-time initialization token for clientObjectInterface;
  v61 = *&v54[v55];
  if (v60 != -1)
  {
    swift_once();
  }

  [v61 setRemoteObjectInterface_];

  [*&v54[v55] _setQueue_];
  v62 = *&v54[v55];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = partial apply for specialized closure #1 in XPCHostConnection.init(connection:queue:);
  v99 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v97 = &block_descriptor_142;
  v64 = _Block_copy(&aBlock);
  v65 = v62;

  [v65 setInterruptionHandler_];
  _Block_release(v64);

  v66 = *&v54[v55];
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = partial apply for specialized closure #2 in XPCHostConnection.init(connection:queue:);
  v99 = v67;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v97 = &block_descriptor_146_0;
  v68 = _Block_copy(&aBlock);
  v69 = v57;
  v70 = v66;

  [v70 setInvalidationHandler_];
  _Block_release(v68);

  [*&v54[v55] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Log.host);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412290;
    *(v74 + 4) = v69;
    *v75 = v54;
    _os_log_impl(&dword_1AEB26000, v72, v73, "Created %@", v74, 0xCu);
    outlined destroy of NSObject?(v75);
    MEMORY[0x1B27120C0](v75, -1, -1);
    MEMORY[0x1B27120C0](v74, -1, -1);
  }

  else
  {
  }

  return v54;
}

void specialized closure #1 in XPCHostConnection.init(connection:queue:)()
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

void specialized closure #2 in XPCHostConnection.init(connection:queue:)()
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

void ActivitySessionHostConnection.delegate.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ActivitySessionHostConnection.delegate.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = direct field offset for ActivitySessionHostConnection.delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return ActivitySessionHostConnection.delegate.modify;
}

void ActivitySessionHostConnection.delegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

Swift::Void __swiftcall ActivitySessionHostConnection.handleHostConnectionInvalidated()()
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
    _os_log_impl(&dword_1AEB26000, v3, v4, "activitySessionHostConnectionInvalidated: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong resetSession];
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v11 = [v10 sharePlayCanEndWhenInitiatorLeaves];

  if (v11)
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      (*((*MEMORY[0x1E69E7D40] & *v12) + 0x4A0))();
    }
  }
}

uint64_t (*ActivitySessionHostConnection._isAppProcess.getter())(uint64_t a1, uint64_t a2)
{
  v1 = (v0 + direct field offset for ActivitySessionHostConnection.__isAppProcess);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out Bool);
}

void specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  *a2 = 1;
}

uint64_t key path setter for ActivitySessionHostConnection._isAppProcess : ActivitySessionHostConnection(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *a2;

  specialized ActivitySessionHostConnection._isAppProcess.setter(thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out Bool)partial apply, v5);
}

uint64_t ActivitySessionHostConnection._isAppProcess.setter(uint64_t a1, uint64_t a2)
{
  specialized ActivitySessionHostConnection._isAppProcess.setter(a1, a2);
}

void (*ActivitySessionHostConnection._isAppProcess.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = direct field offset for ActivitySessionHostConnection.__isAppProcess;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v4 + 24) = thunk for @escaping @callee_guaranteed (@in_guaranteed String) -> (@out Bool)partial apply;
  *(v4 + 32) = v9;

  return ActivitySessionHostConnection._isAppProcess.modify;
}